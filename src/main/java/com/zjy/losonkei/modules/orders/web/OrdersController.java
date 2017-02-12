/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.web;

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
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.service.OrdersService;

/**
 * 订单Controller
 * @author zjy
 * @version 2017-02-11
 */
@Controller
@RequestMapping(value = "${adminPath}/orders/orders")
public class OrdersController extends BaseController {

	@Autowired
	private OrdersService ordersService;
	
	@ModelAttribute
	public Orders get(@RequestParam(required=false) String id) {
		Orders entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = ordersService.get(id);
		}
		if (entity == null){
			entity = new Orders();
		}
		return entity;
	}
	
	@RequiresPermissions("orders:orders:view")
	@RequestMapping(value = {"list", ""})
	public String list(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.findPage(new Page<Orders>(request, response), orders); 
		model.addAttribute("page", page);
		return "modules/orders/ordersList";
	}

	@RequiresPermissions("orders:orders:view")
	@RequestMapping(value = "form")
	public String form(Orders orders, Model model) {
		model.addAttribute("orders", orders);
		return "modules/orders/ordersForm";
	}

	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = "save")
	public String save(Orders orders, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, orders)){
			return form(orders, model);
		}
		ordersService.save(orders);
		addMessage(redirectAttributes, "保存订单成功");
		return "redirect:"+Global.getAdminPath()+"/orders/orders/?repage";
	}
	
	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = "delete")
	public String delete(Orders orders, RedirectAttributes redirectAttributes) {
		ordersService.delete(orders);
		addMessage(redirectAttributes, "删除订单成功");
		return "redirect:"+Global.getAdminPath()+"/orders/orders/?repage";
	}

}