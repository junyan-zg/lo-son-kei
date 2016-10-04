/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.goods.entity.GoodsAttr;

/**
 * 商品分类DAO接口
 * @author zjy
 * @version 2016-09-28
 */
@MyBatisDao
public interface GoodsAttrDao extends CrudDao<GoodsAttr> {
	
}