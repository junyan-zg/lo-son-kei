/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.service;

import java.util.List;

import com.zjy.losonkei.modules.product.dao.ProductOrderDao;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.product.entity.ProductLog;
import com.zjy.losonkei.modules.product.dao.ProductLogDao;

/**
 * 生产日志表Service
 * @author zjy
 * @version 2016-12-07
 */
@Service
@Transactional(readOnly = true)
public class ProductLogService extends CrudService<ProductLogDao, ProductLog> {

	@Autowired
	private ProductOrderDao productOrderDao;

	public ProductLog get(String id) {
		return super.get(id);
	}
	
	public List<ProductLog> findList(ProductLog productLog) {
		return super.findList(productLog);
	}
	
	public Page<ProductLog> findPage(Page<ProductLog> page, ProductLog productLog) {
		return super.findPage(page, productLog);
	}
	
	@Transactional(readOnly = false)
	public void save(ProductLog productLog) {
		super.save(productLog);

		ProductOrder productOrder = productOrderDao.get(productLog.getProductOrderId());
		productOrder.setCostAll(dao.countCost(productLog));
		productOrderDao.updateCostAll(productOrder);
	}
	
	@Transactional(readOnly = false)
	public void delete(ProductLog productLog) {
		super.delete(productLog);
	}

	public List<String> getRecordUsers(String productOrderId){
		ProductLog productLog = new ProductLog();
		productLog.setProductOrderId(productOrderId);
		return dao.getRecordUsers(productLog);
	}

}