/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.act.entity.ActFlowInfo;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import com.zjy.losonkei.modules.act.utils.ActivitiUtils;
import com.zjy.losonkei.modules.goods.entity.Goods;
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
import com.zjy.losonkei.modules.orders.dao.OrdersDao;
import com.zjy.losonkei.modules.orders.dao.OrdersDetailsDao;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.entity.OrdersDetails;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.sys.service.SystemService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.runtime.Job;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @Autowired
    private GoodsAllService goodsAllService;


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
	public void updateRemarks(Orders orders){
		orders.preUpdate();
		dao.updateRemarks(orders);
	}

	/**
	 * 本方法实用于会员
	 */
	@Transactional(readOnly = false)
	public void dealOrder(String ordersId,String reason){
		Orders orders = this.get(ordersId);
		String memberId = UserUtils.getPrincipal().getId();
		if (!memberId.equals(orders.getMemberId())){
			return;
		}

		if(Orders.FLAG_DOING.equals(orders.getFlag())){
			Task task = activitiService.getTaskService().createTaskQuery().processInstanceId(orders.getProcessInstanceId()).taskAssignee(memberId).singleResult();
			if (task != null){
				Map<String,Object> map = new HashMap<String,Object>();
				if ("取消订单".equals(task.getName())){
					orders.setReason(reason);
					orders.setOrdersState(Orders.ORDERS_STATE3);
					orders.setGoodsState(Orders.GOODS_STATE3);
					memberNoteService.save(new MemberNote(memberId,"您已取消订单成功！稍后将进行退款。",ordersId));
				}else if ("确认收货".equals(task.getName())){
					map.put(ActivitiUtils.VAR_TIMEOUT_BACK,ActivitiUtils.TIME_TIMEOUT_BACK);
					orders.setGoodsState(Orders.GOODS_STATE6);
					memberNoteService.save(new MemberNote(memberId,"您已确认收货！如需退货，请在7个自然日内进行申请。",ordersId));
				}else if ("申请退货".equals(task.getName())){
					orders.setReason(reason);
					orders.setOrdersState(Orders.ORDERS_STATE4);
					map.put(ActivitiUtils.VAR_AUDITORS,systemService.getUserIdListByRoleNameRandom(3));
					memberNoteService.save(new MemberNote(memberId,"您的退货请求已提交，请耐心等待。",ordersId));
				}
				this.update(orders);
				activitiService.complete(task.getId(),orders.getProcessInstanceId(),reason,map);
			}
		}
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


	/**
	 * 处理订单流程的dispatch
	 */
	@Transactional(readOnly = false)
	public void compileTask(String ordersId,String taskId,String comment,HttpServletRequest request) {
		if (activitiService.nextStepBelongsMe(null,taskId)){
			Task task = activitiService.getTask(taskId);
			Map<String,Object> map = new HashMap<String,Object>();
			String value = null;
			ActFlowInfo ordersFlow = ActivitiUtils.getOrdersFlow(task.getName());
			if (StringUtils.isNotBlank(ordersFlow.getFormName())){	//需要设置变量
				value = request.getParameter(ordersFlow.getFormName());
				map.put(ordersFlow.getFormName(),value);
			}
			dispatch(task.getName(),value,ordersId,task,comment,map,request);
		}
	}


	private void dispatch(String taskName,String value,String ordersId,Task task,String comment,Map<String,Object> map,HttpServletRequest request){
		Orders orders = get(ordersId);
		if (orders == null || !Orders.FLAG_DOING.equals(orders.getFlag())){
			throw new IllegalArgumentException();
		}
		if ("确认订单".equals(taskName)){
			confirmOrders(value,orders);
		}else if ("检查库存".equals(taskName)){
			checkStock(value,orders,map);
		}else if ("待发货".equals(taskName)){
			sendGoods(orders,map);
		}else if ("审核退货".equals(taskName)){
			auditBack(value,orders,map);
		}else if ("确认寄回商品".equals(taskName)){
			confirmBack(orders);
		}else if ("退货退款".equals(taskName)){
			backMoney(orders,request);
		}else if ("寄回退款".equals(taskName)){
			backMoney(orders,request);
		}else if ("退货入库".equals(taskName)){
            backInStock(orders,request);
		}

		activitiService.complete(task.getId(),task.getProcessInstanceId(),comment,null,map);
	}

	/**
	 * 确认订单
	 */
	private void confirmOrders(String value,Orders orders){
		if ("1".equals(value)){		//有效
			orders.setOrdersState(Orders.ORDERS_STATE1);
		}else if ("0".equals(value)){	//无效
			orders.setOrdersState(Orders.ORDERS_STATE2);
			memberNoteService.save(new MemberNote(orders.getMemberId(),"抱歉，您的订单被确认为无效，稍后将会退款。",orders.getId()));
		}else{
			throw new IllegalArgumentException();
		}
		orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
		this.update(orders);
	}

	/**
	 * 检查库存
	 */
	private void checkStock(String value,Orders orders,Map<String,Object> map){
		if ("1".equals(value)){		//有货
			orders.setGoodsState(Orders.GOODS_STATE1);
			//设置库存员
			map.put(ActivitiUtils.VAR_WAREHOUSE_STAFFS,systemService.getUserIdListByRoleNameRandom(2));
		}else if ("0".equals(value)){	//缺货
			orders.setOrdersState(Orders.ORDERS_STATE5);
			orders.setGoodsState(Orders.GOODS_STATE5);
			memberNoteService.save(new MemberNote(orders.getMemberId(),"抱歉，您的订单缺货了，稍后将会退款。",orders.getId()));
		}else{
			throw new IllegalArgumentException();
		}
		orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
		this.update(orders);
	}

	/**
	 * 待发货
	 */
	private void sendGoods(Orders orders,Map<String,Object> map){
		orders.setGoodsState(Orders.GOODS_STATE2);
        List<OrdersDetails> ordersDetailsList = orders.getOrdersDetailsList();
        for (OrdersDetails o: ordersDetailsList) {
            GoodsAll goodsAll = o.getGoodsAll();
            goodsAll.setStock(goodsAll.getStock() - o.getGoodsAmount());
            goodsAllService.save(goodsAll);
        }

        orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
		this.update(orders);
		map.put(ActivitiUtils.VAR_TIMEOUT_GET,ActivitiUtils.TIME_TIMEOUT_GET);
		memberNoteService.save(new MemberNote(orders.getMemberId(),"您的订单发货啦！请耐心等待。",orders.getId()));
	}

	/**
	 * 审核退货
	 */
	private void auditBack(String value,Orders orders,Map<String,Object> map){
		if ("1".equals(value)){		//不能退货
			orders.setGoodsState(Orders.GOODS_STATE1);
			memberNoteService.save(new MemberNote(orders.getMemberId(),"抱歉，您的退货请求审核不通过，请联系客服人员。",orders.getId()));
		}else if ("2".equals(value)){	//不需退回
			orders.setOrdersState(Orders.ORDERS_STATE4);
			memberNoteService.save(new MemberNote(orders.getMemberId(),"恭喜！您的退货请求已审核通过，稍后将会退款。",orders.getId()));
		}else if ("3".equals(value)){	//需要寄回
			map.put(ActivitiUtils.VAR_TIMEOUT_BACK,ActivitiUtils.TIME_TIMEOUT_BACK);
            orders.setGoodsState(Orders.GOODS_STATE7);
			memberNoteService.save(new MemberNote(orders.getMemberId(),"您的退货请求已审核通过，请于7天内寄回，预期作废。",orders.getId()));
		}else{
			throw new IllegalArgumentException();
		}
		orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
		this.update(orders);
	}


	/**
	 * 确认寄回商品
	 */
	private void confirmBack(Orders orders){
		orders.setGoodsState(Orders.GOODS_STATE4);
		orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
        memberNoteService.save(new MemberNote(orders.getMemberId(),"您的订单已收到，确认后将退款。",orders.getId()));
		this.update(orders);
	}

    /**
     * 退货入库
     * @param orders
     */
    private void backInStock(Orders orders,HttpServletRequest request){
        List<OrdersDetails> ordersDetailsList = orders.getOrdersDetailsList();
        for (OrdersDetails o : ordersDetailsList){
            o.setBackAmount(Integer.valueOf(request.getParameter("back-"+o.getId())));
            o.setBackQualifiedAmount(Integer.valueOf(request.getParameter("back-q-"+o.getId())));

            o.preUpdate();
            ordersDetailsDao.update(o);

            GoodsAll goodsAll = o.getGoodsAll();
            goodsAll.setStock(goodsAll.getStock() + o.getBackQualifiedAmount());
            goodsAllService.save(goodsAll);
        }
        orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));
        this.update(orders);
    }

	/**
	 * 寄回退款 || 退货退款
	 * @param orders
	 */
	private void backMoney(Orders orders,HttpServletRequest request){
		BigDecimal backMoney = new BigDecimal(request.getParameter("back-money")).abs();

		orders.setRefund(backMoney);//设置退款
		orders.setPayState(Orders.PAY_STATE3);//已退回

		Member member = memberService.get(orders.getMemberId());
		member.setMemberBalance(member.getMemberBalance().add(backMoney));//增加余额
		member.setMemberPoints(member.getMemberPoints() - backMoney.intValue());//减少积分

		MemberAccount memberAccount = new MemberAccount();
		memberAccount.setAmount(backMoney);
		memberAccount.setMemberId(orders.getMemberId());
		memberAccount.setProcessType(MemberAccount.PROCESS_TYPE_BACK);
		memberAccountService.save(memberAccount);//保存账户流动

		orders.setProcessState(activitiService.getCurrentStateByInstanceId(orders.getProcessInstanceId()));

		memberNoteService.save(new MemberNote(orders.getMemberId(),"您的退款已到账，请查收！",orders.getId()));
		this.update(orders);
	}








	@Transactional(readOnly = false)
	public void endOrderTask(DelegateExecution execution){
		String ordersId = execution.getProcessBusinessKey();
		Orders orders = this.get(ordersId);
		orders.setFlag(Orders.FLAG_FAILED);
		orders.setProcessState(execution.getCurrentActivityId());

		if(Orders.PAY_STATE1.equals(orders.getPayState())){      //来自超时未支付
			memberNoteService.save(new MemberNote(orders.getMemberId(),"您未在15分钟内完成支付，订单已被取消。",ordersId));
		}

		this.update(orders);
	}


	@Transactional(readOnly = false)
	public void returnAllMoneyTask(DelegateExecution execution){
		String ordersId = execution.getProcessBusinessKey();
		Orders orders = this.get(ordersId);
		orders.setPayState(Orders.PAY_STATE3);
		orders.setFlag(Orders.FLAG_FAILED);
		orders.setProcessState(execution.getCurrentActivityId());
		this.update(orders);


		Member member = memberService.get(orders.getMemberId());
		member.setMemberBalance(member.getMemberBalance().add(orders.getPriceAll()));
		member.setMemberPoints(member.getMemberPoints() - orders.getPriceAll().intValue());
		memberService.save(member);

		//账单
		MemberAccount memberAccount = new MemberAccount();
		memberAccount.setMemberId(orders.getMemberId());
		memberAccount.setProcessType(MemberAccount.PROCESS_TYPE_BACK);
		memberAccount.setAmount(orders.getPriceAll());
		memberAccountService.save(memberAccount);

		memberNoteService.save(new MemberNote(orders.getMemberId(),"您的退款已到账，请查收！。",ordersId));

	}


	@Transactional(readOnly = false)
	public void getGoodsTask(DelegateExecution execution){
		String ordersId = execution.getProcessBusinessKey();
		Orders orders = this.get(ordersId);
		orders.setGoodsState(Orders.GOODS_STATE6);
		orders.setProcessState(execution.getCurrentActivityId());
		this.update(orders);

		//设置退货超时
		Map<String,Object> map = new HashMap<String, Object>();
		map.put(ActivitiUtils.VAR_TIMEOUT_BACK,ActivitiUtils.TIME_TIMEOUT_BACK);
		execution.setVariables(map);

		memberNoteService.save(new MemberNote(orders.getMemberId(),"您的订单长时间未处理，系统自动确认收货。如需退货，请在7个自然日内进行申请。",ordersId));

	}

	@Transactional(readOnly = false)
	public void finishOrderTask(DelegateExecution execution){
		String ordersId = execution.getProcessBusinessKey();
		Orders orders = this.get(ordersId);

		BigDecimal income = orders.getPriceAll().subtract(orders.getCostAll());
		if (orders.getRefund() != null){
			income = income.subtract(orders.getRefund());
		}

		List<OrdersDetails> ordersDetailsList = orders.getOrdersDetailsList();

		//更新交易成功量
		for (OrdersDetails o: ordersDetailsList) {
			int backAmount = o.getBackAmount() == null ? 0 : o.getBackAmount();
			int count = o.getGoodsAmount() - backAmount;
			if (count > 0){
				Goods goods = o.getGoodsAll().getGoods();
				goods.setSalesAmount(goods.getSalesAmount() + count);
				goodsService.save(goods);
			}
			//如果有退回，计算合格数量。乘以成本价，加到income
			int backQuaAmount = o.getBackQualifiedAmount() == null ? 0 : o.getBackQualifiedAmount();
			if (backQuaAmount > 0){
				BigDecimal multiply = o.getCost().multiply(new BigDecimal(backQuaAmount));
				income = income.add(multiply);
			}
		}

		orders.setIncome(income);

		orders.setFlag(income.compareTo(BigDecimal.ZERO) == 1 ? Orders.FLAG_SUCCESS : Orders.FLAG_FAILED);

        if(Orders.GOODS_STATE7.equals(orders.getOrdersState())) { //退回中设为逾期退回
            orders.setGoodsState(Orders.GOODS_STATE8);
        }



		orders.setProcessState(execution.getCurrentActivityId());
		this.update(orders);
	}
}