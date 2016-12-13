/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import com.zjy.losonkei.modules.product.service.ProductOrderService;
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
import com.zjy.losonkei.modules.product.entity.ProductLog;
import com.zjy.losonkei.modules.product.service.ProductLogService;

/**
 * 生产日志表Controller
 * @author zjy
 * @version 2016-12-07
 */
@Controller
@RequestMapping(value = "${adminPath}/product/productLog")
public class ProductLogController extends BaseController {

	@Autowired
	private ProductLogService productLogService;

	@Autowired
	private ProductOrderService productOrderService;

	@Autowired
	private ActivitiService activitiService;
	
	@ModelAttribute
	public ProductLog get(@RequestParam(required=false) String id) {
		ProductLog entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = productLogService.get(id);
		}
		if (entity == null){
			entity = new ProductLog();
		}
		return entity;
	}
	
	@RequiresPermissions("product:productLog:view")
	@RequestMapping(value = {"list", ""})
	public String list(ProductLog productLog, HttpServletRequest request, HttpServletResponse response, Model model) {
		ProductOrder productOrder;
		if((productOrder = productOrderService.get(productLog.getProductOrderId())) == null){
			throw new IllegalArgumentException();
		}
		//研发阶段并且是我的任务
		if (ProductOrder.PRODUCT_STATE_PRODUCTING.equals(productOrder.getState())){
			if (activitiService.nextStepBelongsMe(productOrder.getProcessInstanceId(),null)) {
				model.addAttribute("nextStepBelongsMe", "yes");
			}
		}
		model.addAttribute("createUsersList",productLogService.getRecordUsers(productLog.getProductOrderId()));

		Page<ProductLog> page = productLogService.findPage(new Page<ProductLog>(request, response), productLog);
		model.addAttribute("page", page);
		return "modules/product/productLog/list";
	}

	@RequiresPermissions("product:productLog:view")
	@RequestMapping(value = "form")
	public String form(ProductLog productLog, Model model) {
		if (StringUtils.isBlank(productLog.getProductOrderId())){
			throw new RuntimeException("参数不合法");
		}
		model.addAttribute("productLog", productLog);
		return "modules/product/productLog/form";
	}

	@RequiresPermissions("product:productLog:edit")
	@RequestMapping(value = "save")
	public String save(ProductLog productLog, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, productLog)){
			return form(productLog, model);
		}
		ProductOrder productOrder;
		if((productOrder = productOrderService.get(productLog.getProductOrderId())) == null){
			throw new IllegalArgumentException();
		}
		if (ProductOrder.PRODUCT_STATE_PRODUCTING.equals(productOrder.getState())){
			if (activitiService.nextStepBelongsMe(productOrder.getProcessInstanceId(),null)){
				productLogService.save(productLog);
				addMessage(redirectAttributes, "保存生产日志成功");
			}else {
				addMessage(redirectAttributes,"保存生产日志失败,你没有权限操作。");
			}
		}else {
			addMessage(redirectAttributes,"保存生产日志失败,当前阶段不能操作。");
		}
		return "redirect:"+Global.getAdminPath()+"/product/productLog/?productOrderId=" + productLog.getProductOrderId() + "&repage";
	}

}