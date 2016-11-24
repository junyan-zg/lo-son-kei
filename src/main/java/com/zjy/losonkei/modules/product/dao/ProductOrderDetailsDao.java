/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.product.entity.ProductOrderDetails;

/**
 * 生产订单详情DAO接口
 * @author zjy
 * @version 2016-11-23
 */
@MyBatisDao
public interface ProductOrderDetailsDao extends CrudDao<ProductOrderDetails> {
	
}