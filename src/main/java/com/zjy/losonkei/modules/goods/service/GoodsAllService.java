/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.dao.GoodsAllDao;

/**
 * 所有商品Service
 * @author zjy
 * @version 2016-10-09
 */
@Service
@Transactional(readOnly = true)
public class GoodsAllService extends CrudService<GoodsAllDao, GoodsAll> {

	public GoodsAll get(String id) {
		return super.get(id);
	}
	
	public List<GoodsAll> findList(GoodsAll goodsAll) {
		return super.findList(goodsAll);
	}
	
	public Page<GoodsAll> findPage(Page<GoodsAll> page, GoodsAll goodsAll) {
		return super.findPage(page, goodsAll);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsAll goodsAll) {
		super.save(goodsAll);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsAll goodsAll) {
		super.delete(goodsAll);
	}

	@Transactional(readOnly = false)
	public void trueDelete(String id){
		dao.trueDelete(id);
	}

}