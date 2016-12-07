/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;

/**
 * 生产日志表Entity
 * @author zjy
 * @version 2016-12-07
 */
public class ProductLog extends DataEntity<ProductLog> {
	
	private static final long serialVersionUID = 1L;
	private String content;		// 内容
	private BigDecimal cost;		// 花费
	private String productOrderId;		// 生产订单id
	
	public ProductLog() {
		super();
	}

	public ProductLog(String id){
		super(id);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public BigDecimal getCost() {
		return cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	
	@Length(min=0, max=64, message="生产订单id长度必须介于 0 和 64 之间")
	public String getProductOrderId() {
		return productOrderId;
	}

	public void setProductOrderId(String productOrderId) {
		this.productOrderId = productOrderId;
	}
	
}