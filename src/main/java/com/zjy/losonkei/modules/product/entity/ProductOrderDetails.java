/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.entity;

import com.zjy.losonkei.modules.goods.entity.GoodsAll;
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
	private Integer successAmount;		// 状态0待研发1进行中2成功3失败

	private GoodsAll goodsAll;
	
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
	
	public Integer getSuccessAmount() {
		return successAmount;
	}

	public void setSuccessAmount(Integer successAmount) {
		this.successAmount = successAmount;
	}

	public GoodsAll getGoodsAll() {
		return goodsAll;
	}

	public void setGoodsAll(GoodsAll goodsAll) {
		this.goodsAll = goodsAll;
	}
}