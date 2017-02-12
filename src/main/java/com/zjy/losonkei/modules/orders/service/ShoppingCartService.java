/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.orders.dao.ShoppingCartDao;

/**
 * 购物车Service
 * @author zjy
 * @version 2017-02-09
 */
@Service
@Transactional(readOnly = true)
public class ShoppingCartService extends CrudService<ShoppingCartDao, ShoppingCart> {

	public ShoppingCart get(String id) {
		return super.get(id);
	}
	
	public List<ShoppingCart> findList(ShoppingCart shoppingCart) {
		return super.findList(shoppingCart);
	}
	
	public Page<ShoppingCart> findPage(Page<ShoppingCart> page, ShoppingCart shoppingCart) {
		return super.findPage(page, shoppingCart);
	}
	
	@Transactional(readOnly = false)
	public void save(ShoppingCart shoppingCart) {
		super.save(shoppingCart);
	}
	
	@Transactional(readOnly = false)
	public void delete(ShoppingCart shoppingCart) {
		super.delete(shoppingCart);
	}
	
}