/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.orders.entity.Orders;

import java.util.List;

/**
 * 订单DAO接口
 * @author zjy
 * @version 2017-02-11
 */
@MyBatisDao
public interface OrdersDao extends CrudDao<Orders> {

    public void updateRemarks(Orders orders);

    //////////////////////////////////////////////////////////////////////////////////////
    public List<Orders> auditList(Orders orders);
    public List<Orders> auditOldList(Orders orders);
    public List<Orders> sendList(Orders orders);
    public List<Orders> sendOldList(Orders orders);
    public List<Orders> backList(Orders orders);
    public List<Orders> backOldList(Orders orders);
    //////////////////////////////////////////////////////////////////////////////////////
}