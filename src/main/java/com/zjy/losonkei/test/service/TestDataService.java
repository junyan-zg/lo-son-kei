/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.test.service;

import java.util.List;

import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.test.entity.TestData;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.test.dao.TestDataDao;

/**
 * 单表生成Service
 * @author ThinkGem
 * @version 2015-04-06
 */
@Service
@Transactional(readOnly = true)
public class TestDataService extends CrudService<TestDataDao, TestData> {

	public TestData get(String id) {
		return super.get(id);
	}
	
	public List<TestData> findList(TestData testData) {
		return super.findList(testData);
	}
	
	public Page<TestData> findPage(Page<TestData> page, TestData testData) {
		return super.findPage(page, testData);
	}
	
	@Transactional(readOnly = false)
	public void save(TestData testData) {
		super.save(testData);
	}
	
	@Transactional(readOnly = false)
	public void delete(TestData testData) {
		super.delete(testData);
	}
	
}