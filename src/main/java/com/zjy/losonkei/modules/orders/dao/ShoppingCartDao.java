/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;

/**
 * 购物车DAO接口
 * @author zjy
 * @version 2017-02-09
 */
@MyBatisDao
public interface ShoppingCartDao extends CrudDao<ShoppingCart> {
	
}