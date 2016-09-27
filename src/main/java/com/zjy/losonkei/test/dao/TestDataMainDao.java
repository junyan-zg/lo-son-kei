/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.test.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.test.entity.TestDataMain;

/**
 * 主子表生成DAO接口
 * @author ThinkGem
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestDataMainDao extends CrudDao<TestDataMain> {
	
}