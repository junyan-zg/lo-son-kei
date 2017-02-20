/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.entity;

import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;

/**
 * 订单Entity
 * @author zjy
 * @version 2017-02-11
 */
public class OrdersDetails extends DataEntity<OrdersDetails> {
	
	private static final long serialVersionUID = 1L;
	private String ordersId;		// 订单id 父类
	private String goodsNo;		// goods_all goods_no
	private Integer goodsAmount;		// 购买数量
	private BigDecimal cost;		// 单个成本
	private BigDecimal price;		// 单个售价，直接等于商品售价
	private BigDecimal priceAll;		// amount个商品的总售价

	private String goodsId;

	private GoodsAll goodsAll;
	
	public OrdersDetails() {
		super();
	}

	public OrdersDetails(String id){
		super(id);
	}

	public OrdersDetails(Orders orders){
		this.ordersId = orders.getId();
	}

	@Length(min=0, max=64, message="订单id长度必须介于 0 和 64 之间")
	public String getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(String ordersId) {
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
	
	public BigDecimal getCost() {
		return cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	
	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public BigDecimal getPriceAll() {
		return priceAll;
	}

	public void setPriceAll(BigDecimal priceAll) {
		this.priceAll = priceAll;
	}


	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public GoodsAll getGoodsAll() {
		return goodsAll;
	}

	public void setGoodsAll(GoodsAll goodsAll) {
		this.goodsAll = goodsAll;
	}
}