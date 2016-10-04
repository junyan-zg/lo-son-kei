/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品规格值表(参与购买)Entity
 * @author zjy
 * @version 2016-10-03
 */
public class GoodsSpecificationValue extends DataEntity<GoodsSpecificationValue> {
	
	private static final long serialVersionUID = 1L;
	private GoodsSpecification specificationId;		// 规格id 父类
	private String specificationValue;		// 规格值
	private String goodsId;		// 商品id
	private Integer specificationGroup;		// 多个规格值为一组，一个goods对应多个组
	private String imgUrl;		// 图片url，点击某个规格后可以根据此url替换画册图片
	
	public GoodsSpecificationValue() {
		super();
	}

	public GoodsSpecificationValue(String id){
		super(id);
	}

	public GoodsSpecificationValue(GoodsSpecification specificationId){
		this.specificationId = specificationId;
	}

	@Length(min=0, max=64, message="规格id长度必须介于 0 和 64 之间")
	public GoodsSpecification getSpecificationId() {
		return specificationId;
	}

	public void setSpecificationId(GoodsSpecification specificationId) {
		this.specificationId = specificationId;
	}
	
	@Length(min=0, max=64, message="规格值长度必须介于 0 和 64 之间")
	public String getSpecificationValue() {
		return specificationValue;
	}

	public void setSpecificationValue(String specificationValue) {
		this.specificationValue = specificationValue;
	}
	
	@Length(min=0, max=64, message="商品id长度必须介于 0 和 64 之间")
	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	public Integer getSpecificationGroup() {
		return specificationGroup;
	}

	public void setSpecificationGroup(Integer specificationGroup) {
		this.specificationGroup = specificationGroup;
	}
	
	@Length(min=0, max=512, message="图片url，点击某个规格后可以根据此url替换画册图片长度必须介于 0 和 512 之间")
	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	
}