/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.List;
import com.google.common.collect.Lists;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品规格值表(参与购买)Entity
 * @author zjy
 * @version 2016-10-03
 */
public class GoodsSpecification extends DataEntity<GoodsSpecification> {
	
	private static final long serialVersionUID = 1L;
	private String specificationName;		// 规格名称
	private String required = Goods.REQUIRED_NO;		// 0非必须1必须
	private Integer sort;		// 排序

	public GoodsSpecification() {
		super();
	}

	public GoodsSpecification(String id){
		super(id);
	}

	@Length(min=0, max=32, message="规格名称长度必须介于 0 和 32 之间")
	public String getSpecificationName() {
		return specificationName;
	}

	public void setSpecificationName(String specificationName) {
		this.specificationName = specificationName;
	}
	
	@Length(min=1, max=1, message="0非必须1必须长度必须介于 1 和 1 之间")
	public String getRequired() {
		return required;
	}

	public void setRequired(String required) {
		this.required = required;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

}