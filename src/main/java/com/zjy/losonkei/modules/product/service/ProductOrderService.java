/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.product.dao.ProductOrderDao;

/**
 * 生产订单Service
 * @author zjy
 * @version 2016-11-21
 */
@Service
@Transactional(readOnly = true)
public class ProductOrderService extends CrudService<ProductOrderDao, ProductOrder> {

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
	
	@Transactional(readOnly = false)
	public void delete(ProductOrder productOrder) {
		super.delete(productOrder);
	}
	
}