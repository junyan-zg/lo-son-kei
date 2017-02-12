/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 购物车Entity
 * @author zjy
 * @version 2017-02-09
 */
public class ShoppingCart extends DataEntity<ShoppingCart> {
	
	private static final long serialVersionUID = 1L;
	private String memberId;		// 会员id
	private String goodsNo;		// good_all	goods_no
	private Integer goodsAmount;		// 商品购买数量，在购物车时，不能减少实际库存
	
	public ShoppingCart() {
		super();
	}

	public ShoppingCart(String id){
		super(id);
	}

	@Length(min=1, max=64, message="会员id长度必须介于 1 和 64 之间")
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	@Length(min=1, max=64, message="good_all	goods_no长度必须介于 1 和 64 之间")
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
	
}