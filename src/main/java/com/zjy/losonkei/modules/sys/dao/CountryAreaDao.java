/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.sys.entity.CountryArea;

/**
 * 国家地区DAO接口
 * @author zjy
 * @version 2017-01-01
 */
@MyBatisDao
public interface CountryAreaDao extends CrudDao<CountryArea> {
	
}