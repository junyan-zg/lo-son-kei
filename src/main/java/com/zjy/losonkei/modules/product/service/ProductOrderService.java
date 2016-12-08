/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.service;

import com.google.common.collect.Lists;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.product.dao.ProductOrderDao;
import com.zjy.losonkei.modules.product.dao.ProductOrderDetailsDao;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.product.entity.ProductOrderDetails;
import com.zjy.losonkei.modules.product.utils.ActivitiUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.IdentityLink;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 生产订单Service
 * @author zjy
 * @version 2016-11-21
 */
@Service
@Transactional(readOnly = true)
public class ProductOrderService extends CrudService<ProductOrderDao, ProductOrder> {

	@Autowired
	private ProductOrderDetailsDao productOrderDetailsDao;

	@Autowired
	private ActivitiService activitiService;

	@Autowired
	private GoodsService goodsService;

	@Autowired
	private GoodsAllService goodsAllService;

	public ProductOrder get(String id) {
		return super.get(id);
	}
	
	public List<ProductOrder> findList(ProductOrder productOrder) {
		return super.findList(productOrder);
	}
	
	public Page<ProductOrder> findPage(Page<ProductOrder> page, ProductOrder productOrder) {
		return super.findPage(page, productOrder);
	}
	
	@Transactional(readOnly = false)
	public void save(ProductOrder productOrder) {
		super.save(productOrder);
	}


	/**
	 * 发布前允许修改，修改details时先删除所有details
	 * @param productOrder
	 * @param request
     */
	@Transactional(readOnly = false)
	public void save(ProductOrder productOrder, HttpServletRequest request) {
		boolean isNewRecord = StringUtils.isBlank(productOrder.getId());
		if (isNewRecord){
			productOrder.preInsert();
		}else {
			//非初始化状态不可修改
			if(!ProductOrder.PRODUCT_STATE_INIT.equals(productOrder.getState())){
				return;
			}

			for (ProductOrderDetails productOrderDetailsDelete : productOrderDetailsDao.findList(new ProductOrderDetails(null,null, productOrder.getId()))){
				productOrderDetailsDao.delete(productOrderDetailsDelete);
			}
		}
		String[] goodsAllIds = productOrder.getGoodsAllIds().split(",");
		String[] productsAmounts = productOrder.getProductsAmounts().split(",");

		for(int i = 0; i < goodsAllIds.length; i++){
			ProductOrderDetails productOrderDetails = new ProductOrderDetails(goodsAllIds[i], Integer.valueOf(productsAmounts[i]), productOrder.getId());;
			if(isNewRecord){
				productOrderDetails.preInsert();
				productOrderDetailsDao.insert(productOrderDetails);
			}else{
				ProductOrderDetails productOrderDetailsDB = productOrderDetailsDao.getByGoodsNoAndOrderId(productOrderDetails);
				if (productOrderDetailsDB != null){
					productOrderDetailsDB.setProductAmount(Integer.valueOf(productsAmounts[i]));
					productOrderDetailsDB.setDelFlag(ProductOrderDetails.DEL_FLAG_NORMAL);
					productOrderDetailsDB.preUpdate();
					productOrderDetailsDao.update(productOrderDetailsDB);
				}else{
					productOrderDetails.preInsert();
					productOrderDetailsDao.insert(productOrderDetails);
				}
			}
		}

		if (isNewRecord){
			ProcessInstance processInstance = activitiService.startProductProcess(UserUtils.getUser().getId(), productOrder.getId(),
					Arrays.asList(productOrder.getProducersIds().split(",")),
					Arrays.asList(productOrder.getAuditorsIds().split(",")));
			productOrder.setProcessInstanceId(processInstance.getId());
			productOrder.setProcessState(activitiService.getCurrentTaskByInstanceId(processInstance.getId()).getName());
			dao.insert(productOrder);
		}else {
			productOrder.preUpdate();
			dao.update(productOrder);
			activitiService.updateVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),
					ActivitiUtils.VAR_PRODUCERS, Arrays.asList(productOrder.getProducersIds().split(",")));
			activitiService.updateVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),
					ActivitiUtils.VAR_AUDITORS, Arrays.asList(productOrder.getAuditorsIds().split(",")));
		}
	}

	
	@Transactional(readOnly = false)
	public void delete(ProductOrder productOrder) {
		super.delete(productOrder);
	}

	public void loadEntity(ProductOrder productOrder) {
		productOrder.setStartUserId(activitiService.getStartUserIdByProcessInstanceId(productOrder.getProcessInstanceId()));

		//activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_STARTER).getValue();

		List<String> producers = (List<String>) activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_PRODUCERS).getValue();
		String[] infos = fillUserInfo(producers);
		productOrder.setProducersIds(infos[0]);
		productOrder.setProducersNames(infos[1]);

		List<String> auditors = (List<String>) activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_AUDITORS).getValue();
		infos = fillUserInfo(auditors);
		productOrder.setAuditorsIds(infos[0]);
		productOrder.setAuditorsNames(infos[1]);

		ProductOrderDetails productOrderDetails = new ProductOrderDetails();
		productOrderDetails.setProductOrderId(productOrder.getId());
		productOrder.setProductOrderDetailsList(productOrderDetailsDao.findList(productOrderDetails));

		StringBuffer goodsAllIds = new StringBuffer();
		StringBuffer productsAmounts = new StringBuffer();
		for (ProductOrderDetails p:productOrder.getProductOrderDetailsList()){
			p.setGoodsAll(GoodsAllUtils.fillProperty(GoodsAllUtils.getGoodAllById(p.getGoodsNo()),false));
			goodsAllIds.append(p.getGoodsNo() + ",");
			productsAmounts.append(p.getProductAmount() + ",");
		}
		if (goodsAllIds.length() > 0){
			productOrder.setGoodsAllIds(goodsAllIds.substring(0,goodsAllIds.length()-1));
		}
		if (productsAmounts.length() > 0){
			productOrder.setProductsAmounts(productsAmounts.substring(0,productsAmounts.length()-1));
		}
		if (!ProductOrder.PRODUCT_STATE_FINISHED.equals(productOrder.getState())){
			Task task = activitiService.getCurrentTaskByInstanceId(productOrder.getProcessInstanceId());
			if (task != null){
				Act act = new Act();
				act.setTask(task);
				productOrder.setAct(act);

				productOrder.setNextStep(activitiService.getOutGoingTransNamesSingleResult(task.getId()));

				productOrder.setNextStepBelongsMe(activitiService.nextStepBelongsMe(null,task.getId()));
			}
		}
	}

	private String[] fillUserInfo(List<String> idsList){
		StringBuffer ids = new StringBuffer();
		StringBuffer names = new StringBuffer();
		for (String id : idsList){
			User user = UserUtils.get(id);
			ids.append(user.getId());
			ids.append(",");
			names.append(user.getName());
			names.append(",");
		}
		return new String[]{ids.substring(0,ids.length()-1),names.substring(0,names.length()-1)};
	}

	@Transactional(readOnly = false)
	public void doTask(ProductOrder productOrder,String taskId,String comment,HttpServletRequest request){
		if(activitiService.nextStepBelongsMe(null,taskId)){
			if(StringUtils.isNotBlank(comment)) {
				activitiService.getTaskService().addComment(taskId, productOrder.getProcessInstanceId(), comment);
			}
			activitiService.getTaskService().complete(taskId);

			productOrder.setState(ProductOrder.nextStepMap.get(productOrder.getState()));
			//已完成
			if(ProductOrder.PRODUCT_STATE_FINISHED.equals(productOrder.getState())){
				//设置成功数量
				ProductOrderDetails productOrderDetails = new ProductOrderDetails();
				productOrderDetails.setProductOrderId(productOrder.getId());
				List<ProductOrderDetails> detailsList = productOrderDetailsDao.findList(productOrderDetails);
				int amount_all = 0;
				int success_all = 0;
				for(ProductOrderDetails pod : detailsList){
					String id = pod.getId();
					Integer successAmount = Integer.valueOf(request.getParameter(id + "Amount"));
					amount_all += pod.getProductAmount();
					pod.setSuccessAmount(successAmount);
					success_all += successAmount;
					pod.preUpdate();
					productOrderDetailsDao.update(pod);

					//加入库存
					GoodsAll goodsAll = goodsAllService.get(pod.getGoodsNo());
					goodsAll.setStock((goodsAll.getStock() == null ? 0 : goodsAll.getStock()) + successAmount);
					goodsAllService.save(goodsAll);
				}
				//计算成功率
				productOrder.setSuccessRate(new BigDecimal((double)success_all/amount_all));
				//设置流程环节
				productOrder.setProcessState("已完成");
				//新产品就上线
				if(ProductOrder.PRODUCT_TYPE_NEW.equals(productOrder.getProductType())){
					Goods goods = goodsService.get(productOrder.getGoodsId());
					goods.setState(Goods.STATE_NO_PUSH);
					goodsService.save(goods);
				}
			}else{
				//设置流程环节
				productOrder.setProcessState(activitiService.getCurrentTaskByInstanceId(productOrder.getProcessInstanceId()).getName());
			}
			save(productOrder);
		}
	}
}