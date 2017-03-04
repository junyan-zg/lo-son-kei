/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.goods.entity.GoodsArticle;

/**
 * 商品文章DAO接口
 * @author zjy
 * @version 2017-03-05
 */
@MyBatisDao
public interface GoodsArticleDao extends CrudDao<GoodsArticle> {
	
}