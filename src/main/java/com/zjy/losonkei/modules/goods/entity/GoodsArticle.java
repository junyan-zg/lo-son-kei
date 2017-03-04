/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 商品文章Entity
 * @author zjy
 * @version 2017-03-05
 */
public class GoodsArticle extends DataEntity<GoodsArticle> {
	
	private static final long serialVersionUID = 1L;
	private String goodsId;		// 商品id
	private String content;		// content
	
	public GoodsArticle() {
		super();
	}

	public GoodsArticle(String id){
		super(id);
	}

	@Length(min=0, max=64, message="商品id长度必须介于 0 和 64 之间")
	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}