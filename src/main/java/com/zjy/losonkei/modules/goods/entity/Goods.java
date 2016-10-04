/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonBackReference;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品Entity
 * @author zjy
 * @version 2016-10-03
 */
public class Goods extends DataEntity<Goods> {
	
	private static final long serialVersionUID = 1L;
	private String goodsName;		// 商品名称
	private Date onShelfTime;		// 上架时间
	private String season;		// 季节
	private String sex;		// 推荐人群
	private String keywords;		// 关键词
	private GoodsCategory goodsCategory;		// 商品分类 父类
	private Goods parent;		// 父商品id,字段不为空时该商品作为配件
	private String price;		// 现价
	private String srcPrice;		// 原价
	private String state;		// 状态
	private String thumbImgUrl;		// 缩略图url


	//SEACH
	private Date beginOnShelfTime;		// 开始 上架时间
	private Date endOnShelfTime;		// 结束 上架时间
	private String beginPrice;		// 开始 现价
	private String endPrice;		// 结束 现价
	private String beginSrcPrice;		// 开始 原价
	private String endSrcPrice;		// 结束 原价

	public static final String STATE_ONSALE = "0";	//在售
	public static final String STATE_OFFSALE = "1";	//下架
	public static final String STATE_NOPUSH = "2";	//未上市

	public static final String SEASON_SPRING = "0";
	public static final String STATE_SUMMER = "1";
	public static final String STATE_AUTUMN = "2";
	public static final String STATE_WINTER = "3";

	public static final String SEX_WOMAN = "0";
	public static final String SEX_MAN = "1";

	public static final String REQUIRED_NO = "0";
	public static final String REQUIRED_YES = "1";

	public Goods() {
		super();
	}

	public Goods(String id){
		super(id);
	}

	public Goods(GoodsCategory goodsCategory){
		this.goodsCategory = goodsCategory;
	}

	@Length(min=0, max=128, message="商品名称长度必须介于 0 和 128 之间")
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getOnShelfTime() {
		return onShelfTime;
	}

	public void setOnShelfTime(Date onShelfTime) {
		this.onShelfTime = onShelfTime;
	}
	
	@Length(min=0, max=2, message="季节长度必须介于 0 和 2 之间")
	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}
	
	@Length(min=0, max=4, message="推荐人群长度必须介于 0 和 4 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Length(min=0, max=50, message="关键词长度必须介于 0 和 50 之间")
	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	@Length(min=0, max=6, message="商品分类长度必须介于 0 和 6 之间")
	public GoodsCategory getGoodsCategory() {
		return goodsCategory;
	}

	public void setGoodsCategory(GoodsCategory goodsCategory) {
		this.goodsCategory = goodsCategory;
	}
	
	@JsonBackReference
	public Goods getParent() {
		return parent;
	}

	public void setParent(Goods parent) {
		this.parent = parent;
	}
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getSrcPrice() {
		return srcPrice;
	}

	public void setSrcPrice(String srcPrice) {
		this.srcPrice = srcPrice;
	}
	
	@Length(min=0, max=1, message="状态长度必须介于 0 和 1 之间")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	@Length(min=0, max=512, message="缩略图url长度必须介于 0 和 512 之间")
	public String getThumbImgUrl() {
		return thumbImgUrl;
	}

	public void setThumbImgUrl(String thumbImgUrl) {
		this.thumbImgUrl = thumbImgUrl;
	}

	public Date getBeginOnShelfTime() {
		return beginOnShelfTime;
	}

	public void setBeginOnShelfTime(Date beginOnShelfTime) {
		this.beginOnShelfTime = beginOnShelfTime;
	}
	
	public Date getEndOnShelfTime() {
		return endOnShelfTime;
	}

	public void setEndOnShelfTime(Date endOnShelfTime) {
		this.endOnShelfTime = endOnShelfTime;
	}
		
	public String getBeginPrice() {
		return beginPrice;
	}

	public void setBeginPrice(String beginPrice) {
		this.beginPrice = beginPrice;
	}
	
	public String getEndPrice() {
		return endPrice;
	}

	public void setEndPrice(String endPrice) {
		this.endPrice = endPrice;
	}
		
	public String getBeginSrcPrice() {
		return beginSrcPrice;
	}

	public void setBeginSrcPrice(String beginSrcPrice) {
		this.beginSrcPrice = beginSrcPrice;
	}
	
	public String getEndSrcPrice() {
		return endSrcPrice;
	}

	public void setEndSrcPrice(String endSrcPrice) {
		this.endSrcPrice = endSrcPrice;
	}
		
}