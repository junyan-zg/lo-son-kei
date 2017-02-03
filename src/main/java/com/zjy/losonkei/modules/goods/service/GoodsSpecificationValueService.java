/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.dao.GoodsSpecificationValueDao;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecification;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * 商品规格值表(参与购买)Service
 * @author zjy
 * @version 2016-10-03
 */
@Service
@Transactional(readOnly = true)
public class GoodsSpecificationValueService extends CrudService<GoodsSpecificationValueDao, GoodsSpecificationValue> {

	public GoodsSpecificationValue get(String id) {
		GoodsSpecificationValue goodsSpecificationValue = super.get(id);
		return goodsSpecificationValue;
	}
	
	public List<GoodsSpecificationValue> findList(GoodsSpecificationValue goodsSpecificationValue) {
		return super.findList(goodsSpecificationValue);
	}
	
	public Page<GoodsSpecificationValue> findPage(Page<GoodsSpecificationValue> page, GoodsSpecificationValue goodsSpecificationValue) {
		return super.findPage(page, goodsSpecificationValue);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsSpecificationValue goodsSpecificationValue) {
		super.save(goodsSpecificationValue);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsSpecificationValue goodsSpecificationValue) {
		super.delete(goodsSpecificationValue);
	}

	@Transactional(readOnly = false)
	public void trueDelete(String id){
		dao.trueDelete(id);
	}


	//找到某商品所有规格选项
	public Map<GoodsSpecification,List<String>> getGoodsSpecificationValueListByGoodsId(String goodsId){
		List<GoodsSpecificationValue> list = dao.getGoodsSpecificationValueListByGoodsId(new Goods(goodsId));
		Map<GoodsSpecification,List<String>> map = new LinkedHashMap<GoodsSpecification, List<String>>();
		for (GoodsSpecificationValue value : list){
			if (StringUtils.isNotBlank(value.getSpecificationValue())){
				List<String> valuesList = map.get(value.getGoodsSpecification());
				if (valuesList == null){
					valuesList = new ArrayList<String>();
					map.put(value.getGoodsSpecification(),valuesList);
				}
				valuesList.add(value.getSpecificationValue());
			}
		}
		return map;
	}

	public Integer getSpecificationGroup(GoodsAll goodsAll){
		return dao.getSpecificationGroup(goodsAll);
	}
}