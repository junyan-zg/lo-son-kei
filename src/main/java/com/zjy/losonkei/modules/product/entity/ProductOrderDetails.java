/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 生产订单详情Entity
 * @author zjy
 * @version 2016-11-23
 */
public class ProductOrderDetails extends DataEntity<ProductOrderDetails> {
	
	private static final long serialVersionUID = 1L;
	private Integer productAmount;		// 生产数量
	private String goodsNo;		// goods_all的goods_no
	private String productOrderId;		// 生产订单表
	private String state;		// 状态0待研发1进行中2成功3失败
	
	public ProductOrderDetails() {
		super();
	}

	public ProductOrderDetails(String id){
		super(id);
	}

	public ProductOrderDetails(String goodsAllId,Integer productAmount,String productOrderId){
		super();
		this.goodsNo = goodsAllId;
		this.productAmount = productAmount;
		this.productOrderId = productOrderId;
		this.state = ProductOrder.PRODUCT_STATE_INIT;
	}


	@Length(min=0, max=11, message="生产数量长度必须介于 0 和 11 之间")
	public Integer getProductAmount() {
		return productAmount;
	}

	public void setProductAmount(Integer productAmount) {
		this.productAmount = productAmount;
	}
	
	@Length(min=0, max=64, message="goods_all的goods_no长度必须介于 0 和 64 之间")
	public String getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(String goodsNo) {
		this.goodsNo = goodsNo;
	}
	
	@Length(min=0, max=64, message="生产订单表长度必须介于 0 和 64 之间")
	public String getProductOrderId() {
		return productOrderId;
	}

	public void setProductOrderId(String productOrderId) {
		this.productOrderId = productOrderId;
	}
	
	@Length(min=0, max=1, message="状态0进行中1成功2失败长度必须介于 0 和 1 之间")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}