/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 订单Entity
 * @author zjy
 * @version 2017-02-11
 */
public class OrdersDetails extends DataEntity<OrdersDetails> {
	
	private static final long serialVersionUID = 1L;
	private Orders ordersId;		// 订单id 父类
	private String goodsNo;		// goods_all goods_no
	private Integer goodsAmount;		// 购买数量
	private Double cost;		// 单个成本
	private Double price;		// 单个售价，直接等于商品售价
	private Double priceAll;		// amount个商品的总售价
	
	public OrdersDetails() {
		super();
	}

	public OrdersDetails(String id){
		super(id);
	}

	public OrdersDetails(Orders ordersId){
		this.ordersId = ordersId;
	}

	@Length(min=0, max=64, message="订单id长度必须介于 0 和 64 之间")
	public Orders getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(Orders ordersId) {
		this.ordersId = ordersId;
	}
	
	@Length(min=0, max=64, message="goods_all goods_no长度必须介于 0 和 64 之间")
	public String getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(String goodsNo) {
		this.goodsNo = goodsNo;
	}
	
	public Integer getGoodsAmount() {
		return goodsAmount;
	}

	public void setGoodsAmount(Integer goodsAmount) {
		this.goodsAmount = goodsAmount;
	}
	
	public Double getCost() {
		return cost;
	}

	public void setCost(Double cost) {
		this.cost = cost;
	}
	
	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}
	
	public Double getPriceAll() {
		return priceAll;
	}

	public void setPriceAll(Double priceAll) {
		this.priceAll = priceAll;
	}
	
}