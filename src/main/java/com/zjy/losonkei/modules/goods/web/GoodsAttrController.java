/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsAttr;
import com.zjy.losonkei.modules.goods.service.GoodsAttrService;

/**
 * 商品属性Controller
 * @author zjy
 * @version 2016-09-29
 */
@Controller
@RequestMapping(value = "${adminPath}/goods/goodsAttr")
public class GoodsAttrController extends BaseController {

	@Autowired
	private GoodsAttrService goodsAttrService;
	
	@ModelAttribute
	public GoodsAttr get(@RequestParam(required=false) String id) {
		GoodsAttr entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goodsAttrService.get(id);
		}
		if (entity == null){
			entity = new GoodsAttr();
		}
		return entity;
	}
	
	@RequiresPermissions("goods:goodsAttr:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoodsAttr goodsAttr, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoodsAttr> page = goodsAttrService.findPage(new Page<GoodsAttr>(request, response), goodsAttr); 
		model.addAttribute("page", page);
		return "modules/goods/goodsAttrList";
	}

	@RequiresPermissions("goods:goodsAttr:view")
	@RequestMapping(value = "form")
	public String form(GoodsAttr goodsAttr, Model model) {
		model.addAttribute("goodsAttr", goodsAttr);
		return "modules/goods/goodsAttrForm";
	}

	@RequiresPermissions("goods:goodsAttr:edit")
	@RequestMapping(value = "save")
	public String save(GoodsAttr goodsAttr, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goodsAttr)){
			return form(goodsAttr, model);
		}
		goodsAttrService.save(goodsAttr);
		addMessage(redirectAttributes, "保存商品属性成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsAttr/?repage";
	}
	
	@RequiresPermissions("goods:goodsAttr:edit")
	@RequestMapping(value = "delete")
	public String delete(GoodsAttr goodsAttr, RedirectAttributes redirectAttributes) {
		goodsAttrService.delete(goodsAttr);
		addMessage(redirectAttributes, "删除商品属性成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsAttr/?repage";
	}

}