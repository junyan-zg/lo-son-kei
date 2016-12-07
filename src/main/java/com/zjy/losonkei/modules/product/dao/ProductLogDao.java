/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.product.entity.ProductLog;

import java.math.BigDecimal;
import java.util.List;

/**
 * 生产日志表DAO接口
 * @author zjy
 * @version 2016-12-07
 */
@MyBatisDao
public interface ProductLogDao extends CrudDao<ProductLog> {

	public List<String> getRecordUsers(ProductLog productLog);

    public BigDecimal countCost(ProductLog productLog);
}