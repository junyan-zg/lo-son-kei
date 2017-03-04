/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.entity;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 搜索记录Entity
 * @author zjy
 * @version 2017-03-02
 */
public class SearchRecord extends DataEntity<SearchRecord> {
	
	private static final long serialVersionUID = 1L;
	private Date searchTime;		// 搜索日期
	private String content;		// 搜索内容
	private Integer amount;		// 日搜索次数
	private Date beginSearchTime;		// 开始 搜索日期
	private Date endSearchTime;		// 结束 搜索日期
	
	public SearchRecord() {
		super();
	}

	public SearchRecord(String id){
		super(id);
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getSearchTime() {
		return searchTime;
	}

	public void setSearchTime(Date searchTime) {
		this.searchTime = searchTime;
	}
	
	@Length(min=0, max=100, message="搜索内容长度必须介于 0 和 100 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=11, message="日搜索次数长度必须介于 0 和 11 之间")
	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	public Date getBeginSearchTime() {
		return beginSearchTime;
	}

	public void setBeginSearchTime(Date beginSearchTime) {
		this.beginSearchTime = beginSearchTime;
	}
	
	public Date getEndSearchTime() {
		return endSearchTime;
	}

	public void setEndSearchTime(Date endSearchTime) {
		this.endSearchTime = endSearchTime;
	}
		
}