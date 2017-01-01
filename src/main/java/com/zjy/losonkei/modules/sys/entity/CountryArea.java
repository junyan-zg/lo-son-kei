/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 国家地区Entity
 * @author zjy
 * @version 2017-01-01
 */
public class CountryArea extends DataEntity<CountryArea> {
	
	private static final long serialVersionUID = 1L;
	private String code;		// code
	private String name;		// name
	private String parentId;		// parent_id
	private String firstLetter;		// first_letter
	private String level;		// level
	
	public CountryArea() {
		super();
	}

	public CountryArea(String id){
		super(id);
	}

	@Length(min=0, max=32, message="code长度必须介于 0 和 32 之间")
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	@Length(min=0, max=32, message="name长度必须介于 0 和 32 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=32, message="parent_id长度必须介于 0 和 32 之间")
	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	@Length(min=0, max=1, message="first_letter长度必须介于 0 和 1 之间")
	public String getFirstLetter() {
		return firstLetter;
	}

	public void setFirstLetter(String firstLetter) {
		this.firstLetter = firstLetter;
	}
	
	@Length(min=0, max=4, message="level长度必须介于 0 和 4 之间")
	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}
	
}