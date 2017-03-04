/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.dao.GoodsDao;

/**
 * 商品Service
 * @author zjy
 * @version 2016-09-29
 */
@Service
@Transactional(readOnly = true)
public class GoodsService extends CrudService<GoodsDao, Goods> {

	public Goods get(String id) {
		return super.get(id);
	}
	
	public List<Goods> findList(Goods goods) {
		return super.findList(goods);
	}
	
	public Page<Goods> findPage(Page<Goods> page, Goods goods) {
		return super.findPage(page, goods);
	}

	public Page<Goods> findPageFront(Page<Goods> page, Goods goods) {
		goods.setPage(page);
		page.setList(dao.findListFront(goods));
		return page;
	}

	@Transactional(readOnly = false)
	public void save(Goods goods) {
		super.save(goods);
	}
	
	@Transactional(readOnly = false)
	public void delete(Goods goods) {
		super.delete(goods);
	}

	@Transactional(readOnly = false)
	public void updateVisit(String goodsId){
		dao.updateVisit(goodsId);
	}


	public List<Goods> findListForIndex() {
		Goods goods = new Goods();
		goods.setState(Goods.STATE_ON_SALE);
		Page<Goods> page = new Page<>();
		page.setPageNo(1);
		page.setPageSize(8);
		goods.setPage(page);
		return dao.findListFront(goods);
	}
	
}