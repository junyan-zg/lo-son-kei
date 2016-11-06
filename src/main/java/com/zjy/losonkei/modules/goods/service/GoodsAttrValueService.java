/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.common.utils.Collections3;
import com.zjy.losonkei.common.utils.IdGen;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.dao.GoodsAttrValueDao;
import com.zjy.losonkei.modules.goods.entity.GoodsAttrValue;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * 商品属性Service
 * @author zjy
 * @version 2016-09-29
 */
@Service
@Transactional(readOnly = true)
public class GoodsAttrValueService extends CrudService<GoodsAttrValueDao, GoodsAttrValue> {

	public GoodsAttrValue get(String id) {
		return super.get(id);
	}
	
	public List<GoodsAttrValue> findList(GoodsAttrValue GoodsAttrValue) {
		return super.findList(GoodsAttrValue);
	}
	
	public Page<GoodsAttrValue> findPage(Page<GoodsAttrValue> page, GoodsAttrValue GoodsAttrValue) {
		return super.findPage(page, GoodsAttrValue);
	}
	
	@Transactional(readOnly = false)
	public void save(GoodsAttrValue GoodsAttrValue) {
		super.save(GoodsAttrValue);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoodsAttrValue GoodsAttrValue) {
		super.delete(GoodsAttrValue);
	}

	public  List<GoodsAttrValue> findListByGoodId(String goodsId){
		return super.findList(new GoodsAttrValue(StringUtils.isBlank(goodsId)? IdGen.uuid():goodsId));
	}

	public Map<String,GoodsAttrValue> findMapByGoodId(String goodsId){
		Map<String,GoodsAttrValue> map = new HashMap<String, GoodsAttrValue>();
		if (StringUtils.isNotBlank(goodsId)){
			List<GoodsAttrValue> list = super.findList(new GoodsAttrValue(goodsId));
			if (!Objects.equals(list,null)){
				for (GoodsAttrValue val : list){
					map.put(val.getGoodsAttr().getId(),val);
				}
			}
		}
		return map;
	}
}