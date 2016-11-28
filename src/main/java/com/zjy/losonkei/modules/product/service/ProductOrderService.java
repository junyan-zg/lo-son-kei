/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.product.dao.ProductOrderDao;
import com.zjy.losonkei.modules.product.dao.ProductOrderDetailsDao;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.product.entity.ProductOrderDetails;
import com.zjy.losonkei.modules.product.utils.ActivitiUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.runtime.ProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

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
			ProcessInstance processInstance = activitiService.startInventProcess(UserUtils.getUser().getId(), productOrder.getId(),
					Arrays.asList(productOrder.getProductorsIds().split(",")),
					Arrays.asList(productOrder.getAuditorsIds().split(",")));
			productOrder.setProcessInstanceId(processInstance.getId());
			productOrder.setProcessState(activitiService.getCurrentTaskByInstanceId(processInstance.getId()).getName());
			dao.insert(productOrder);
		}else {
			productOrder.preUpdate();
			dao.update(productOrder);
			activitiService.updateVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),
					ActivitiUtils.VAR_PRODUCTERS, Arrays.asList(productOrder.getProductorsIds().split(",")));
			activitiService.updateVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),
					ActivitiUtils.VAR_AUDITORS, Arrays.asList(productOrder.getAuditorsIds().split(",")));
		}
	}

	
	@Transactional(readOnly = false)
	public void delete(ProductOrder productOrder) {
		super.delete(productOrder);
	}

	public void loadEntity(ProductOrder productOrder) {
		productOrder.setManagerId((String) activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_MANAGER).getValue());

		List<String> productors = (List<String>) activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_PRODUCTERS).getValue();
		String[] infos = fillUserInfo(productors);
		productOrder.setProductorsIds(infos[0]);
		productOrder.setProductorsNames(infos[1]);
		
		List<String> auditors = (List<String>) activitiService.getVariablesByProcessInstanceId(productOrder.getProcessInstanceId(),ActivitiUtils.VAR_AUDITORS).getValue();
		infos = fillUserInfo(auditors);
		productOrder.setAuditorsIds(infos[0]);
		productOrder.setAuditorsNames(infos[1]);

		ProductOrderDetails productOrderDetails = new ProductOrderDetails();
		productOrderDetails.setProductOrderId(productOrder.getId());
		productOrder.setProductOrderDetailses(productOrderDetailsDao.findList(productOrderDetails));

		StringBuffer goodsAllIds = new StringBuffer();
		StringBuffer productsAmounts = new StringBuffer();
		for (ProductOrderDetails p:productOrder.getProductOrderDetailses()){
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
}