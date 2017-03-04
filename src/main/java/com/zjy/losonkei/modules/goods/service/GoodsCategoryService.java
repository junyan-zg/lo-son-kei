/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.List;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.modules.goods.entity.Goods;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.service.TreeService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;
import com.zjy.losonkei.modules.goods.dao.GoodsCategoryDao;

/**
 * 商品分类Service
 * @author zjy
 * @version 2016-09-28
 */
@Service
@Transactional(readOnly = true)
public class GoodsCategoryService extends TreeService<GoodsCategoryDao, GoodsCategory> {

	public GoodsCategory get(String id) {
		return super.get(id);
	}
	
	public List<GoodsCategory> findList(GoodsCategory goodsCategory) {
		if (StringUtils.isNotBlank(goodsCategory.getParentIds())){
			goodsCategory.setParentIds(","+goodsCategory.getParentIds()+",");
		}
		return super.findList(goodsCategory);
	}

	public List<GoodsCategory> findListForIndex() {
		GoodsCategory goodsCategory = new GoodsCategory("0",null);
		return super.findList(goodsCategory);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsCategory goodsCategory) {
		super.save(goodsCategory);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsCategory goodsCategory) {
		goodsCategory.setParentIds("%," + goodsCategory.getId() + ",%");
		super.delete(goodsCategory);
	}

	public List<GoodsCategory> getCategoryListBySearchKey(String key){
		Goods goods = new Goods();
		goods.setState(Goods.STATE_ON_SALE);
		goods.setKeywords(key);
		return dao.getCategoryListBySearchKey(goods);
	}
}