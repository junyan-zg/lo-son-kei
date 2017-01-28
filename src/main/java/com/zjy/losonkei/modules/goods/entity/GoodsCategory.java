/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import org.hibernate.validator.constraints.Length;
import com.fasterxml.jackson.annotation.JsonBackReference;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.zjy.losonkei.common.persistence.TreeEntity;

/**
 * 商品分类Entity
 * @author zjy
 * @version 2016-09-28
 */
public class GoodsCategory extends TreeEntity<GoodsCategory> {
	
	private static final long serialVersionUID = 1L;
	private String categoryName;		// 分类名称
	private GoodsCategory parent;		// 商品分类id上级
	private String parentIds;		// 商品分类id所有上级
	private Integer sort;		// 排序，根据分级排序
	
	public GoodsCategory() {
		super();
	}

	public GoodsCategory(String id){
		super(id);
	}

	public GoodsCategory(String pid,Object obj){
		super();
		this.parent = new GoodsCategory(pid);
	}

	public GoodsCategory(GoodsCategory parent){
		super();
		this.parent = parent;
	}

	@Length(min=1, max=32, message="分类名称长度必须介于 1 和 32 之间")
	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	@JsonBackReference
	public GoodsCategory getParent() {
		return parent;
	}

	public void setParent(GoodsCategory parent) {
		this.parent = parent;
	}
	
	@Length(min=0, max=2000, message="商品分类id所有上级长度必须介于 0 和 2000 之间")
	public String getParentIds() {
		return parentIds;
	}

	public void setParentIds(String parentIds) {
		this.parentIds = parentIds;
	}
	
	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}
	
	public String getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : "0";
	}
}