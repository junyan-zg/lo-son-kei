/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.product.entity.ProductOrder;

/**
 * 生产订单DAO接口
 * @author zjy
 * @version 2016-11-21
 */
@MyBatisDao
public interface ProductOrderDao extends CrudDao<ProductOrder> {
	
}