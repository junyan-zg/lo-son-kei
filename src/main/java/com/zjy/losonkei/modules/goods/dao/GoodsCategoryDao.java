/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.dao;

import com.zjy.losonkei.common.persistence.TreeDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;

import java.util.List;

/**
 * 商品分类DAO接口
 * @author zjy
 * @version 2016-09-28
 */
@MyBatisDao
public interface GoodsCategoryDao extends TreeDao<GoodsCategory> {
    public List<GoodsCategory> getCategoryListBySearchKey(Goods goods);
}