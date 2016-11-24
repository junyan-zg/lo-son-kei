/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.web;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.web.GoodsController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 设置新商品Controller
 * @author zjy
 * @version 2016-11-21
 */
@Controller
@RequestMapping(value = "${adminPath}/product/newGoodsSetting")
public class NewGoodsSettingController extends GoodsController {

	@ModelAttribute
	public Goods get(@RequestParam(required=false) String id) {
		Goods goods = super.get(id);
		//state 4 待研发
		goods.setState(Goods.STATE_INVENTING);
		return goods;
	}

	@RequiresPermissions("product:newGoodsSetting:view")
	@RequestMapping(value = {"list", ""})
	public String list(Goods goods, HttpServletRequest request, HttpServletResponse response, Model model) {
		super.list(goods,request,response,model);
		return "modules/product/goodsSetting/goodsList";
	}

	@RequiresPermissions("product:newGoodsSetting:view")
	@RequestMapping(value = "form")
	public String form(Goods goods, Model model) {
		super.form(goods,model);
		return "modules/product/goodsSetting/goodsForm";
	}

	@RequiresPermissions("product:newGoodsSetting:view")
	@RequestMapping(value = "view")
	public String view(Goods goods, Model model) {
		super.view(goods,model);
		return "modules/product/goodsSetting/goodsView";
	}

	@RequiresPermissions("product:newGoodsSetting:edit")
	@RequestMapping(value = "save")
	public String save(Goods goods,RedirectAttributes redirectAttributes,HttpServletRequest request) {
		super.save(goods,redirectAttributes,request);
		return "redirect:"+Global.getAdminPath()+"/product/newGoodsSetting/?repage";
	}

	@RequiresPermissions("product:newGoodsSetting:edit")
	@RequestMapping(value = "delete")
	public String delete(Goods goods, RedirectAttributes redirectAttributes) {
		super.delete(goods,redirectAttributes);
		return "redirect:"+Global.getAdminPath()+"/product/newGoodsSetting/?repage";
	}


}