/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.dao.OrdersDao;
import com.zjy.losonkei.modules.orders.entity.OrdersDetails;
import com.zjy.losonkei.modules.orders.dao.OrdersDetailsDao;

/**
 * 订单Service
 * @author zjy
 * @version 2017-02-11
 */
@Service
@Transactional(readOnly = true)
public class OrdersService extends CrudService<OrdersDao, Orders> {

	@Autowired
	private OrdersDetailsDao ordersDetailsDao;
	
	public Orders get(String id) {
		Orders orders = super.get(id);
		orders.setOrdersDetailsList(ordersDetailsDao.findList(new OrdersDetails(orders)));
		return orders;
	}
	
	public List<Orders> findList(Orders orders) {
		return super.findList(orders);
	}
	
	public Page<Orders> findPage(Page<Orders> page, Orders orders) {
		return super.findPage(page, orders);
	}
	
	@Transactional(readOnly = false)
	public void save(Orders orders) {
		super.save(orders);
		for (OrdersDetails ordersDetails : orders.getOrdersDetailsList()){
			if (ordersDetails.getId() == null){
				continue;
			}
			if (OrdersDetails.DEL_FLAG_NORMAL.equals(ordersDetails.getDelFlag())){
				if (StringUtils.isBlank(ordersDetails.getId())){
					ordersDetails.setOrdersId(orders);
					ordersDetails.preInsert();
					ordersDetailsDao.insert(ordersDetails);
				}else{
					ordersDetails.preUpdate();
					ordersDetailsDao.update(ordersDetails);
				}
			}else{
				ordersDetailsDao.delete(ordersDetails);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(Orders orders) {
		super.delete(orders);
		ordersDetailsDao.delete(new OrdersDetails(orders));
	}
	
}