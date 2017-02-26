/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.orders.entity.Orders;

/**
 * 订单DAO接口
 * @author zjy
 * @version 2017-02-11
 */
@MyBatisDao
public interface OrdersDao extends CrudDao<Orders> {

    public void updateRemarks(Orders orders);
}