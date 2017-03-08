/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zjy.losonkei.modules.act.entity.ActFlowInfo;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import com.zjy.losonkei.modules.act.utils.ActivitiUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.task.Task;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.service.OrdersService;

import java.util.Date;
import java.util.List;

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
	@Autowired
	private ActivitiService activitiService;
	@Autowired
	private GoodsAllService goodsAllService;
	
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
	@RequestMapping("getStock")
	@ResponseBody
	public Integer getStock(String goodsNo){
		GoodsAll goodsAll = goodsAllService.get(goodsNo);
		if (goodsAll != null){
			return goodsAll.getStock();
		}else{
			return 0;
		}
	}
	
	@RequiresPermissions("orders:orders:view")
	@RequestMapping(value = {"list", ""})
	public String list(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		orders.setFlag(Orders.FLAG_DOING);
		Page<Orders> page = ordersService.findPage(new Page<Orders>(request, response), orders); 
		model.addAttribute("page", page);
		return "modules/orders/ordersList";
	}

	@RequiresPermissions("orders:orders:view")
	@RequestMapping("listOld")
	public String listOld(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		orders.setFlag(null);
		Page<Orders> page = ordersService.findPage(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		return "modules/orders/ordersListOld";
	}

	@RequiresPermissions("orders:orders:view")
	@RequestMapping(value = "form")
	public String form(Orders orders, Model model) {
		model.addAttribute("orders", orders);

		if (Orders.FLAG_DOING.equals(orders.getFlag())){
			String processInstanceId = orders.getProcessInstanceId();
			Task task = activitiService.getTaskService().createTaskQuery().processInstanceId(processInstanceId).taskCandidateUser(UserUtils.getPrincipal().getId()).singleResult();
			if (task != null) {
				ActFlowInfo ordersFlow = ActivitiUtils.getOrdersFlow(task.getName());
				if (ordersFlow != null) {
					model.addAttribute("ordersFlow",ordersFlow);
				}
				model.addAttribute("task", task);
			}
		}
		model.addAttribute("histoicFlowList",activitiService.histoicFlowList(orders.getProcessInstanceId()));

		return "modules/orders/ordersForm";
	}

	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = "save")
	public String save(Orders orders, Model model, RedirectAttributes redirectAttributes) {
		/*if (!beanValidator(model, orders)){
			return form(orders, model);
		}*/
		ordersService.updateRemarks(orders);
		addMessage(redirectAttributes, "保存订单成功");
		return "redirect:"+Global.getAdminPath()+"/orders/orders/form?id="+orders.getId() + "&time=" + new Date().getTime();
	}
	
	/*@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = "delete")
	public String delete(Orders orders, RedirectAttributes redirectAttributes) {
		ordersService.delete(orders);
		addMessage(redirectAttributes, "删除订单成功");
		return "redirect:"+Global.getAdminPath()+"/orders/orders/?repage";
	}*/


	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = "doTask")
	public String doTask(String ordersId,String taskId,String comment,HttpServletRequest request,RedirectAttributes redirectAttributes) {
		/*if (!beanValidator(model, orders)){
			return form(orders, model);
		}*/
		try{
			ordersService.compileTask(ordersId, taskId, comment, request);
			addMessage(redirectAttributes,"操作成功！");
		}catch (Exception e){
			e.printStackTrace();
			addMessage(redirectAttributes,"操作失败，请稍后重试！");
		}

		return "redirect:"+Global.getAdminPath()+"/orders/orders/form?id=" + ordersId + "&time=" + new Date().getTime();
	}


    /**
	 *
	 * audit 审核
	 * send	退货
	 * back 入库
	 *
     */

/////////////////////////////////////////////////////////////////////////////////////////////////
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("audit/list")
	public String auditList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.auditList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("auditOld/list")
	public String auditOldList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.auditOldList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
/////////////////////////////////////////////////////////////////////////////////////////////////
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("send/list")
	public String sendList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.sendList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("sendOld/list")
	public String sendOldList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.sendOldList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
/////////////////////////////////////////////////////////////////////////////////////////////////
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("back/list")
	public String backList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.backList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
	@RequiresPermissions("orders:orders:view")
	@RequestMapping("backOld/list")
	public String backOldList(Orders orders, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Orders> page = ordersService.backOldList(new Page<Orders>(request, response), orders);
		model.addAttribute("page", page);
		getRole(request);
		return "modules/orders/role/ordersList";
	}
/////////////////////////////////////////////////////////////////////////////////////////////////



	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = {"audit/doTask","send/doTask","back/doTask"})
	public String roleDoTask(String ordersId,String taskId,String comment,HttpServletRequest request,RedirectAttributes redirectAttributes) {
		doTask(ordersId,taskId,comment,request,redirectAttributes);
		return "redirect:"+Global.getAdminPath()+"/orders/orders/" + getRole(request) + "/form?id=" + ordersId + "&time=" + new Date().getTime();
	}


	@RequiresPermissions("orders:orders:view")
	@RequestMapping(value = {"audit{old}/form","send{old}/form","back{old}/form"})
	public String roleForm(Orders orders, Model model, HttpServletRequest request) {
		form(orders,model);
		getRole(request);
		return "modules/orders/role/ordersForm";
	}

	@RequiresPermissions("orders:orders:edit")
	@RequestMapping(value = {"audit{old}/save","send{old}/save","back{old}/save"})
	public String save(Orders orders, RedirectAttributes redirectAttributes, HttpServletRequest request) {
		ordersService.updateRemarks(orders);
		addMessage(redirectAttributes, "保存订单成功");
		return "redirect:"+Global.getAdminPath()+"/orders/orders/"+ getRole(request) + "/ordersForm?id=" + orders.getId() + "&time=" + new Date().getTime();
	}

	private String getRole(HttpServletRequest request){
		String uri = request.getRequestURI();
		String role = "back";
		if (uri.indexOf("auditOld") != -1){
			role = "auditOld";
		}else if (uri.indexOf("sendOld") != -1){
			role = "sendOld";
		}else if (uri.indexOf("backOld") != -1){
			role = "backOld";
		}else if (uri.indexOf("audit") != -1){
			role = "audit";
		}else if (uri.indexOf("send") != -1){
			role = "send";
		}
		request.setAttribute("role",role);
		return role;
	}
}