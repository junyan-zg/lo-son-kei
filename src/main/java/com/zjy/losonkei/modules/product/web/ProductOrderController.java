/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.web;

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
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.product.service.ProductOrderService;

/**
 * 生产订单Controller
 * @author zjy
 * @version 2016-11-21
 */
@Controller
@RequestMapping(value = "${adminPath}/product/productOrder")
public class ProductOrderController extends BaseController {

	@Autowired
	private ProductOrderService productOrderService;
	
	@ModelAttribute
	public ProductOrder get(@RequestParam(required=false) String id) {
		ProductOrder entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = productOrderService.get(id);
		}
		if (entity == null){
			entity = new ProductOrder();
		}
		return entity;
	}
	
	@RequiresPermissions("product:productOrder:view")
	@RequestMapping(value = {"list", ""})
	public String list(ProductOrder productOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<ProductOrder> page = productOrderService.findPage(new Page<ProductOrder>(request, response), productOrder); 
		model.addAttribute("page", page);
		return "modules/product/productOrderList";
	}

	@RequiresPermissions("product:productOrder:view")
	@RequestMapping(value = "form")
	public String form(ProductOrder productOrder, Model model) {
		model.addAttribute("productOrder", productOrder);
		return "modules/product/productOrderForm";
	}

	@RequiresPermissions("product:productOrder:edit")
	@RequestMapping(value = "save")
	public String save(ProductOrder productOrder, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, productOrder)){
			return form(productOrder, model);
		}
		productOrderService.save(productOrder);
		addMessage(redirectAttributes, "保存生产订单成功");
		return "redirect:"+Global.getAdminPath()+"/product/productOrder/?repage";
	}
	
	@RequiresPermissions("product:productOrder:edit")
	@RequestMapping(value = "delete")
	public String delete(ProductOrder productOrder, RedirectAttributes redirectAttributes) {
		productOrderService.delete(productOrder);
		addMessage(redirectAttributes, "删除生产订单成功");
		return "redirect:"+Global.getAdminPath()+"/product/productOrder/?repage";
	}

}