/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品属性Entity
 * @author zjy
 * @version 2016-09-29
 */
public class GoodsAttr extends DataEntity<GoodsAttr> {
	
	private static final long serialVersionUID = 1L;
	private String attrName;		// 属性名称
	private Integer sort;		// 排序

	private GoodsAttrValue goodsAttrValue;

	public GoodsAttr() {
		super();
	}

	public GoodsAttr(String id){
		super(id);
	}

	@Length(min=0, max=32, message="属性名称长度必须介于 0 和 32 之间")
	public String getAttrName() {
		return attrName;
	}

	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}


	public GoodsAttrValue getGoodsAttrValue() {
		return goodsAttrValue;
	}

	public void setGoodsAttrValue(GoodsAttrValue goodsAttrValue) {
		this.goodsAttrValue = goodsAttrValue;
	}
}