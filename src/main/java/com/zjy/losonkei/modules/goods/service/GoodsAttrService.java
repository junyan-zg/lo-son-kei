/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.goods.dao.GoodsAttrDao;
import com.zjy.losonkei.modules.goods.entity.GoodsAttr;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 商品属性Service
 * @author zjy
 * @version 2016-09-29
 */
@Service
@Transactional(readOnly = true)
public class GoodsAttrService extends CrudService<GoodsAttrDao, GoodsAttr> {

	public GoodsAttr get(String id) {
		return super.get(id);
	}
	
	public List<GoodsAttr> findList(GoodsAttr goodsAttr) {
		return super.findList(goodsAttr);
	}
	
	public Page<GoodsAttr> findPage(Page<GoodsAttr> page, GoodsAttr goodsAttr) {
		return super.findPage(page, goodsAttr);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsAttr goodsAttr) {
		super.save(goodsAttr);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsAttr goodsAttr) {
		super.delete(goodsAttr);
	}
}