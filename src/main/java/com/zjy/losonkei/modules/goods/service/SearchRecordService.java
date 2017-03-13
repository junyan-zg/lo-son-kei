/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.goods.entity.SearchRecord;
import com.zjy.losonkei.modules.goods.dao.SearchRecordDao;

/**
 * 搜索记录Service
 * @author zjy
 * @version 2017-03-02
 */
@Service
@Transactional(readOnly = true)
public class SearchRecordService extends CrudService<SearchRecordDao, SearchRecord> {

	public SearchRecord get(String id) {
		return super.get(id);
	}
	
	public List<SearchRecord> findList(SearchRecord searchRecord) {
		return super.findList(searchRecord);
	}
	
	public Page<SearchRecord> findPage(Page<SearchRecord> page, SearchRecord searchRecord) {
		return super.findPage(page, searchRecord);
	}

	public List<SearchRecord> count(SearchRecord searchRecord){
		return dao.count(searchRecord);
	}

	@Transactional(readOnly = false)
	public void save(SearchRecord searchRecord) {
		super.save(searchRecord);
	}
	
	@Transactional(readOnly = false)
	public void delete(SearchRecord searchRecord) {
		super.delete(searchRecord);
	}

	@Transactional(readOnly = false)
	public void saveRecord(String content) {
		SearchRecord searchRecord = new SearchRecord();
		searchRecord.setSearchTime(new Date());
		searchRecord.setContent(content);
		List<SearchRecord> list = this.findList(searchRecord);
		if (list != null && !list.isEmpty()){
			searchRecord = list.get(0);
		}else {
			searchRecord.setAmount(1);
		}
		super.save(searchRecord);
	}
}