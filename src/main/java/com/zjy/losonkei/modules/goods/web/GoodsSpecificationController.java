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
import com.zjy.losonkei.modules.goods.entity.GoodsSpecification;
import com.zjy.losonkei.modules.goods.service.GoodsSpecificationService;

/**
 * 商品规格值表(参与购买)Controller
 * @author zjy
 * @version 2016-10-03
 */
@Controller
@RequestMapping(value = "${adminPath}/goods/goodsSpecification")
public class GoodsSpecificationController extends BaseController {

	@Autowired
	private GoodsSpecificationService goodsSpecificationService;
	
	@ModelAttribute
	public GoodsSpecification get(@RequestParam(required=false) String id) {
		GoodsSpecification entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goodsSpecificationService.get(id);
		}
		if (entity == null){
			entity = new GoodsSpecification();
		}
		return entity;
	}
	
	@RequiresPermissions("goods:goodsSpecification:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoodsSpecification goodsSpecification, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoodsSpecification> page = goodsSpecificationService.findPage(new Page<GoodsSpecification>(request, response), goodsSpecification); 
		model.addAttribute("page", page);
		return "modules/goods/goodsSpecificationList";
	}

	@RequiresPermissions("goods:goodsSpecification:view")
	@RequestMapping(value = "form")
	public String form(GoodsSpecification goodsSpecification, Model model) {
		model.addAttribute("goodsSpecification", goodsSpecification);
		return "modules/goods/goodsSpecificationForm";
	}

	@RequiresPermissions("goods:goodsSpecification:edit")
	@RequestMapping(value = "save")
	public String save(GoodsSpecification goodsSpecification, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goodsSpecification)){
			return form(goodsSpecification, model);
		}
		goodsSpecificationService.save(goodsSpecification);
		addMessage(redirectAttributes, "保存商品规格值成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsSpecification/?repage";
	}
	
	@RequiresPermissions("goods:goodsSpecification:edit")
	@RequestMapping(value = "delete")
	public String delete(GoodsSpecification goodsSpecification, RedirectAttributes redirectAttributes) {
		goodsSpecificationService.delete(goodsSpecification);
		addMessage(redirectAttributes, "删除商品规格值成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsSpecification/?repage";
	}

}