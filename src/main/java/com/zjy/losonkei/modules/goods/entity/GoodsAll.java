/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 所有商品Entity
 * @author zjy
 * @version 2016-10-09
 */
public class GoodsAll extends DataEntity<GoodsAll> {
	
	private static final long serialVersionUID = 1L;
	private BigDecimal price;		// 当前价格
	private BigDecimal costPrice;		// 成本价
	private BigDecimal srcPrice;		// 原价
	private Integer stock;		// 库存
	private String goodsId;		// 商品id
	private Integer specificationGroup;		// 规格值分组，该值可以与goods_id唯一确定几个规格

	private List<GoodsSpecificationValue> goodsSpecificationValues;

	private Goods goods;

	public GoodsAll() {
		super();
	}

	public GoodsAll(String id){
		super(id);
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public BigDecimal getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(BigDecimal costPrice) {
		this.costPrice = costPrice;
	}
	
	public BigDecimal getSrcPrice() {
		return srcPrice;
	}

	public void setSrcPrice(BigDecimal srcPrice) {
		this.srcPrice = srcPrice;
	}
	
	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
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

	public List<GoodsSpecificationValue> getGoodsSpecificationValues() {
		return goodsSpecificationValues;
	}

	public void setGoodsSpecificationValues(List<GoodsSpecificationValue> goodsSpecificationValues) {
		this.goodsSpecificationValues = goodsSpecificationValues;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	@Override
	public void preInsert() {
		if (!this.isNewRecord){
			setId(GoodsAllUtils.createId("GA"));
		}
		User user = UserUtils.getUser();
		if (StringUtils.isNotBlank(user.getId())){
			this.updateBy = user;
			this.createBy = user;
		}
		this.updateDate = new Date();
		this.createDate = this.updateDate;
	}
}