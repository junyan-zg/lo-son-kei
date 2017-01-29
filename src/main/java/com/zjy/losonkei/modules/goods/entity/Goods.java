/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import com.zjy.losonkei.common.utils.IdGen;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

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
	private String season;		// 季节
	private String sex;		// 推荐人群
	private String keywords;		// 关键词
	private GoodsCategory goodsCategory;		// 商品分类 父类
	private BigDecimal price;		// 现价
	private BigDecimal srcPrice;		// 原价
	private String state;		// 状态
	private String thumbImgUrl;		// 缩略图url
	private String imgUrl;		// 图片展示url
	private Integer sort;		// 排序
	private Long salesAmount;	//销售总量,由定时任务更新
	private String flag;		//1新品2热销3优惠

	private List<GoodsAll> goodsAlls;

	private String[] categoryIds;

	//SEACH
	private BigDecimal beginPrice;		// 开始 现价
	private BigDecimal endPrice;		// 结束 现价

	public static final String STATE_ON_SALE = "0";	//在售
	public static final String STATE_OFF_SALE = "1";	//下架
	public static final String STATE_NO_PUSH = "2";	//未上市
	public static final String STATE_OUT_OF_STOCK = "3";	//暂不供货
	public static final String STATE_INVENTING = "4";	//待研发

	public static final String SEASON_SPRING = "0";
	public static final String SEASON_SUMMER = "1";
	public static final String SEASON_AUTUMN = "2";
	public static final String SEASON_WINTER = "3";

	public static final String SEX_WOMAN = "0";
	public static final String SEX_MAN = "1";

	public static final String REQUIRED_NO = "0";
	public static final String REQUIRED_YES = "1";

	public static final String DEL_FLAG_TURE_DELETE = "3";

	public static final String FLAG_NEW = "1";
	public static final String FLAG_HOT = "2";
	public static final String FLAG_DISCOUNT = "3";

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

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
	public BigDecimal getSrcPrice() {
		return srcPrice;
	}

	public void setSrcPrice(BigDecimal srcPrice) {
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
		
	public BigDecimal getBeginPrice() {
		return beginPrice;
	}

	public void setBeginPrice(BigDecimal beginPrice) {
		this.beginPrice = beginPrice;
	}
	
	public BigDecimal getEndPrice() {
		return endPrice;
	}

	public void setEndPrice(BigDecimal endPrice) {
		this.endPrice = endPrice;
	}

	public List<GoodsAll> getGoodsAlls() {
		return goodsAlls;
	}

	public void setGoodsAlls(List<GoodsAll> goodsAlls) {
		this.goodsAlls = goodsAlls;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	@Override
	public void preInsert() {
		super.preInsert();
		if (!this.isNewRecord){
			setId(GoodsAllUtils.createId("GD"));
		}
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Long getSalesAmount() {
		return salesAmount;
	}

	public void setSalesAmount(Long salesAmount) {
		this.salesAmount = salesAmount;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String[] getCategoryIds() {
		return categoryIds;
	}

	public void setCategoryIds(String[] categoryIds) {
		this.categoryIds = categoryIds;
	}
}