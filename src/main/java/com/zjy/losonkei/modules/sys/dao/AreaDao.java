/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.dao;

import com.zjy.losonkei.common.persistence.TreeDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
