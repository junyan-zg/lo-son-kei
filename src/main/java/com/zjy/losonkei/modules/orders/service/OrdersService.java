/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.zjy.losonkei.modules.act.service.ActivitiService;
import com.zjy.losonkei.modules.act.utils.ActivitiUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.entity.MemberAccount;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.service.MemberAccountService;
import com.zjy.losonkei.modules.member.service.MemberNoteService;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.sys.service.SystemService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.runtime.Job;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.dao.OrdersDao;
import com.zjy.losonkei.modules.orders.entity.OrdersDetails;
import com.zjy.losonkei.modules.orders.dao.OrdersDetailsDao;

import javax.servlet.http.HttpServletRequest;

/**
 * 订单Service
 * @author zjy
 * @version 2017-02-11
 */
@Service
@Transactional(readOnly = true)
public class OrdersService extends CrudService<OrdersDao, Orders> {

	@Autowired
	private ActivitiService activitiService;
	@Autowired
	private OrdersDetailsDao ordersDetailsDao;
	@Autowired
	private ShoppingCartService shoppingCartService;
	@Autowired
	private MemberNoteService memberNoteService;
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private SystemService systemService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberAccountService memberAccountService;


	public Orders get(String id) {
		Orders orders = super.get(id);

		if (orders != null){
			List<OrdersDetails> list = ordersDetailsDao.findList(new OrdersDetails(orders));
			orders.setOrdersDetailsList(list);
			for (OrdersDetails o : list){
				GoodsAll goodAll = GoodsAllUtils.getGoodAllById(o.getGoodsNo());
				goodAll.setGoods(goodsService.get(goodAll.getGoodsId()));

				o.setGoodsId(goodAll.getGoodsId());
				o.setGoodsAll(goodAll);
			}

		}

		return orders;
	}

	public List<Orders> findList(Orders orders) {
		return super.findList(orders);
	}
	
	public Page<Orders> findPage(Page<Orders> page, Orders orders) {
		return super.findPage(page, orders);
	}
	
	@Transactional(readOnly = false)
	public void save(Orders orders) {
		super.save(orders);
		for (OrdersDetails ordersDetails : orders.getOrdersDetailsList()){
			if (ordersDetails.getId() == null){
				continue;
			}
			if (OrdersDetails.DEL_FLAG_NORMAL.equals(ordersDetails.getDelFlag())){
				if (StringUtils.isBlank(ordersDetails.getId())){
					ordersDetails.setOrdersId(orders.getId());
					ordersDetails.preInsert();
					ordersDetailsDao.insert(ordersDetails);
				}else{
					ordersDetails.preUpdate();
					ordersDetailsDao.update(ordersDetails);
				}
			}else{
				ordersDetailsDao.delete(ordersDetails);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(Orders orders) {
		super.delete(orders);
		ordersDetailsDao.delete(new OrdersDetails(orders));
	}

	@Transactional(readOnly = false)
	public void update(Orders orders) {
		orders.preUpdate();
		dao.update(orders);
	}

	@Transactional(readOnly = false)
	public String createOrders(String goodsNo,String amountStr,MemberAddress memberAddress){
		String memberId = UserUtils.getPrincipal().getId();

		GoodsAll goodsAll = GoodsAllUtils.getGoodAllById(goodsNo);

		if (GoodsAllUtils.isValid(goodsAll)) {  //商品有效

			int amount = 1;

			//处理价格
			if (StringUtils.isNotBlank(amountStr)) {
				try {
					amount = Integer.valueOf(amountStr);
					if (amount > goodsAll.getStock()) {
						amount = goodsAll.getStock();
					} else if (amount <= 0) {
						amount = 1;
					}
				} catch (Exception e) {
				}
			}

			Orders orders = ordersBuilder(memberAddress);
			orders.preInsert();
			//保存details
			OrdersDetails ordersDetails = goodsAllToOrdersDetails(goodsAll, amount, orders.getId());
			ordersDetails.preInsert();
			ordersDetailsDao.insert(ordersDetails);

			orders.setCostAll(ordersDetails.getCost().multiply(new BigDecimal(ordersDetails.getGoodsAmount())));
			orders.setPriceAll(ordersDetails.getPriceAll());

			//流程信息
			ProcessInstance processInstance = activitiService.startShoppingProcess(memberId, orders.getId());
			orders.setProcessInstanceId(processInstance.getId());
			orders.setProcessState(activitiService.getCurrentTaskByInstanceId(processInstance.getId()).getName());

			dao.insert(orders);

			memberNoteService.save(new MemberNote(memberId,"您刚下了一个订单，请在15分钟内完成支付。",orders.getId()));

			return orders.getId();
		}
		return null;
	}


	@Transactional(readOnly = false)
	public String createOrdersShoppingCart(HttpServletRequest request, MemberAddress memberAddress){
		String memberId = UserUtils.getPrincipal().getId();

		ShoppingCart shoppingCart = new ShoppingCart();
		shoppingCart.setMemberId(memberId);
		List<ShoppingCart> shoppingCarts = shoppingCartService.findList(shoppingCart);
		if (shoppingCart != null && !shoppingCarts.isEmpty()){

			Orders orders = ordersBuilder(memberAddress);

			//先获取id
			orders.preInsert();

			BigDecimal priceAll = new BigDecimal(0);
			BigDecimal costAll = new BigDecimal(0);

			for (ShoppingCart cart : shoppingCarts){
				String amountStr = request.getParameter("cart-amount-" + cart.getId());
				GoodsAll goodsAll = GoodsAllUtils.getGoodAllById(cart.getGoodsNo());

				if (GoodsAllUtils.isValid(goodsAll)) {  //商品有效

					//处理更改过的价格
					if (StringUtils.isNotBlank(amountStr)) {
						try {
							int amount = Integer.valueOf(amountStr);
							if (amount > goodsAll.getStock()) {
								amount = goodsAll.getStock();
							} else if (amount <= 0) {
								amount = 1;
							}
							//修改过的价格
							if (amount != cart.getGoodsAmount()) {
								cart.setGoodsAmount(amount);
								shoppingCartService.save(cart);
							}
						} catch (Exception e) {
						}
					}
					//保存details
					OrdersDetails ordersDetails = goodsAllToOrdersDetails(goodsAll, cart.getGoodsAmount(), orders.getId());
					costAll = costAll.add(ordersDetails.getCost().multiply(new BigDecimal(ordersDetails.getGoodsAmount())));
					priceAll = priceAll.add(ordersDetails.getPriceAll());

					ordersDetails.preInsert();
					ordersDetailsDao.insert(ordersDetails);

				}
				//清空购物车
				shoppingCartService.delete(cart);
			}

			ProcessInstance processInstance = activitiService.startShoppingProcess(memberId, orders.getId());
			orders.setProcessInstanceId(processInstance.getId());
			orders.setProcessState(activitiService.getCurrentTaskByInstanceId(processInstance.getId()).getName());
			orders.setPriceAll(priceAll);
			orders.setCostAll(costAll);
			//插入orders
			dao.insert(orders);

			memberNoteService.save(new MemberNote(memberId,"您刚下了一个订单，请在15分钟内完成支付。",orders.getId()));

			return orders.getId();
		}

		return null;
	}


	public static OrdersDetails goodsAllToOrdersDetails(GoodsAll goodsAll,int amount,String ordersId){
		OrdersDetails ordersDetails = new OrdersDetails();
		ordersDetails.setGoodsNo(goodsAll.getId());
		ordersDetails.setCost(goodsAll.getCostPrice());
		ordersDetails.setOrdersId(ordersId);

		BigDecimal price = goodsAll.getPrice();
		ordersDetails.setPrice(price);
		ordersDetails.setGoodsAmount(amount);

		ordersDetails.setPriceAll(price.multiply(new BigDecimal(amount)));

		GoodsAllUtils.fillProperty(goodsAll,true);

		ordersDetails.setRemarks(goodsAll.getGoods().getGoodsName() + " " + GoodsAllUtils.getAllSpecificationDesc(goodsAll));

		return ordersDetails;
	}


	public static Orders ordersBuilder(MemberAddress memberAddress){
		String memberId = UserUtils.getPrincipal().getId();

		Orders orders = new Orders();
		orders.setMemberId(memberId);

		orders.setAddress(memberAddress.getAddress());
		orders.setArea(memberAddress.getArea());
		orders.setCity(memberAddress.getCity());
		orders.setProvince(memberAddress.getProvince());
		orders.setPhone(memberAddress.getPhone());
		orders.setTrueName(memberAddress.getTrueName());

		orders.setPayState(Orders.PAY_STATE1);
		orders.setFlag(Orders.FLAG_DOING);
		orders.setGoodsState("");
		orders.setOrdersState("");

		return orders;
	}

	//取得支付剩余时间
	public Job getPayOrdersLastTime(String processInstanceId){
		Task task = activitiService.getCurrentTaskByInstanceId(processInstanceId);
		if (task != null){
			String executionId = task.getExecutionId();
			if (StringUtils.isNotBlank(executionId)){
				Job job = activitiService.getTheEndTime(executionId);
				return job;
			}
		}
		return null;
	}

	@Transactional(readOnly = false)
	public String payOrders(String ordersId,String payPwd){
		String memberId = UserUtils.getPrincipal().getId();

		Member member = memberService.get(UserUtils.getPrincipal().getId());
		if (MemberUtils.validatePassword(payPwd, member.getMemberPaypwd())){

		}else{
			return "支付密码错误，请重试！";
		}

		Orders orders = get(ordersId);
		if (orders == null || !memberId.equals(orders.getMemberId())){   //订单不存在或非本人
			return null;
		}

		if (Orders.FLAG_DOING.equals(orders.getFlag()) && Orders.PAY_STATE1.equals(orders.getPayState())){
			Task task = activitiService.getCurrentTaskByInstanceId(orders.getProcessInstanceId());
			if (task != null && memberId.equals(task.getAssignee())){
				BigDecimal balance = member.getMemberBalance().subtract(orders.getPriceAll());
				if (balance.compareTo(BigDecimal.ZERO) == -1){	//小于0
					return "余额不足！请充值后再支付！";
				}

				//更新积分
				member.setMemberPoints(member.getMemberPoints() + orders.getPriceAll().intValue());
				//更新余额
				member.setMemberBalance(balance);
				memberService.save(member);

				//更新账户
				MemberAccount memberAccount = new MemberAccount();
				memberAccount.setMemberId(memberId);
				memberAccount.setProcessType(MemberAccount.PROCESS_TYPE_PAY);
				memberAccount.setAmount(orders.getPriceAll().negate());
				memberAccountService.save(memberAccount);


				//随机设置一个销售员
				String salerId = systemService.getUserIdListByRoleNameRandom(1);
				Map<String,Object> map = new HashMap<String,Object>();
				map.put(ActivitiUtils.VAR_SALERS,salerId);
				activitiService.getTaskService().complete(task.getId(),map);

				orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
				orders.setPayState(Orders.PAY_STATE2);
				update(orders);

				memberNoteService.save(new MemberNote(memberId,"支付成功，您的订单已被受理，请耐心等待。",ordersId));
				return "ok";
			}else{
				return "页面已过期，请刷新";
			}
		}
		return "页面已过期，请刷新";
	}
}