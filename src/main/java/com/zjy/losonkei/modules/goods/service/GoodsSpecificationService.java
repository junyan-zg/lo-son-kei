/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecification;
import com.zjy.losonkei.modules.goods.dao.GoodsSpecificationDao;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import com.zjy.losonkei.modules.goods.dao.GoodsSpecificationValueDao;

/**
 * 商品规格值表(参与购买)Service
 * @author zjy
 * @version 2016-10-03
 */
@Service
@Transactional(readOnly = true)
public class GoodsSpecificationService extends CrudService<GoodsSpecificationDao, GoodsSpecification> {

	public GoodsSpecification get(String id) {
		GoodsSpecification goodsSpecification = super.get(id);
		return goodsSpecification;
	}
	
	public List<GoodsSpecification> findList(GoodsSpecification goodsSpecification) {
		return super.findList(goodsSpecification);
	}
	
	public Page<GoodsSpecification> findPage(Page<GoodsSpecification> page, GoodsSpecification goodsSpecification) {
		return super.findPage(page, goodsSpecification);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsSpecification goodsSpecification) {
		super.save(goodsSpecification);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsSpecification goodsSpecification) {
		super.delete(goodsSpecification);
	}
	
}