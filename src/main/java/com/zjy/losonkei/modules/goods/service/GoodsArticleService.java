/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.goods.entity.GoodsArticle;
import com.zjy.losonkei.modules.goods.dao.GoodsArticleDao;

/**
 * 商品文章Service
 * @author zjy
 * @version 2017-03-05
 */
@Service
@Transactional(readOnly = true)
public class GoodsArticleService extends CrudService<GoodsArticleDao, GoodsArticle> {

	public GoodsArticle get(String id) {
		return super.get(id);
	}

	public GoodsArticle getByGoodsId(String goodsId) {
		GoodsArticle goodsArticle = new GoodsArticle();
		goodsArticle.setGoodsId(goodsId);
		List<GoodsArticle> list = this.findList(goodsArticle);
		if (!list.isEmpty()){
			return list.get(0);
		}
		return null;
	}


	public List<GoodsArticle> findList(GoodsArticle goodsArticle) {
		return super.findList(goodsArticle);
	}
	
	public Page<GoodsArticle> findPage(Page<GoodsArticle> page, GoodsArticle goodsArticle) {
		return super.findPage(page, goodsArticle);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsArticle goodsArticle) {
		super.save(goodsArticle);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsArticle goodsArticle) {
		super.delete(goodsArticle);
	}
	
}