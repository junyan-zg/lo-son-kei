/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品属性值表Entity
 * @author zjy
 * @version 2016-10-03
 */
public class GoodsAttrValue extends DataEntity<GoodsAttrValue> {
	
	private static final long serialVersionUID = 1L;
	private String goodsId;		// 商品id
	private GoodsAttr attrId;		// 属性id 父类
	private String attrValue;		// 属性值
	
	public GoodsAttrValue() {
		super();
	}

	public GoodsAttrValue(String id){
		super(id);
	}

	public GoodsAttrValue(GoodsAttr attrId){
		this.attrId = attrId;
	}

	@Length(min=0, max=64, message="商品id长度必须介于 0 和 64 之间")
	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	@Length(min=0, max=64, message="属性id长度必须介于 0 和 64 之间")
	public GoodsAttr getAttrId() {
		return attrId;
	}

	public void setAttrId(GoodsAttr attrId) {
		this.attrId = attrId;
	}
	
	@Length(min=0, max=64, message="属性值长度必须介于 0 和 64 之间")
	public String getAttrValue() {
		return attrValue;
	}

	public void setAttrValue(String attrValue) {
		this.attrValue = attrValue;
	}

	
}