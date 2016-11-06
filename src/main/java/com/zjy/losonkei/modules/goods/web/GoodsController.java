/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.web;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.*;
import com.zjy.losonkei.modules.goods.service.GoodsAttrService;
import com.zjy.losonkei.modules.goods.service.GoodsAttrValueService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.goods.service.GoodsSpecificationService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * 商品Controller
 * @author zjy
 * @version 2016-09-29
 */
@Controller
@RequestMapping(value = "${adminPath}/goods/goods")
public class GoodsController extends BaseController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private GoodsAttrService goodsAttrService;
	@Autowired
	private GoodsAttrValueService goodsAttrValueService;
	@Autowired
	private GoodsSpecificationService goodsSpecificationService;

	
	@ModelAttribute
	public Goods get(@RequestParam(required=false) String id) {
		Goods entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goodsService.get(id);
		}
		if (entity == null){
			entity = new Goods();
		}
		return entity;
	}
	
	@RequiresPermissions("goods:goods:view")
	@RequestMapping(value = {"list", ""})
	public String list(Goods goods, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Goods> page = goodsService.findPage(new Page<Goods>(request, response), goods); 
		model.addAttribute("page", page);
		return "modules/goods/goodsList";
	}

	@RequiresPermissions("goods:goods:view")
	@RequestMapping(value = "form")
	public String form(Goods goods, Model model) {
		List<GoodsAttr> goodsAttrs = goodsAttrService.findList(new GoodsAttr());
		Map<String,GoodsAttrValue> goodsAttrValuesMap = goodsAttrValueService.findMapByGoodId(goods.getId());
		if (!Objects.equals(goodsAttrs,null)){
			for (GoodsAttr goodsAttr:goodsAttrs){
				goodsAttr.setGoodsAttrValue(goodsAttrValuesMap.get(goodsAttr.getId()));
			}
		}
		model.addAttribute("goodsAttrList",goodsAttrs);
		model.addAttribute("goodsSpecificationList",goodsSpecificationService.findList(new GoodsSpecification()));

		if (StringUtils.isNotBlank(goods.getId())){
			goods = goodsService.get(goods.getId());
			List<GoodsAll> goodsAlls = GoodsAllUtils.getGoodsAllByGoodsId(goods.getId());
			for(GoodsAll goodsAll:goodsAlls){
				GoodsAllUtils.fillProperty(goodsAll,false);
			}
			goods.setGoodsAlls(goodsAlls);
		}

		model.addAttribute("goods", goods);
		return "modules/goods/goodsForm";
	}

	@RequiresPermissions("goods:goods:edit")
	@RequestMapping(value = "save")
	public String save(Goods goods, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goods)){
			return form(goods, model);
		}
		goodsService.save(goods);
		addMessage(redirectAttributes, "保存商品成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goods/?repage";
	}
	
	@RequiresPermissions("goods:goods:edit")
	@RequestMapping(value = "delete")
	public String delete(Goods goods, RedirectAttributes redirectAttributes) {
		goodsService.delete(goods);
		addMessage(redirectAttributes, "删除商品成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goods/?repage";
	}

}