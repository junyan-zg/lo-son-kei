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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public String form(Orders orders, Model model, HttpSession session) {
		model.addAttribute("orders", orders);

		if (session.getAttribute("message") != null){
			model.addAttribute("message",session.getAttribute("message"));
			session.removeAttribute("message");
		}

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
		return "redirect:"+Global.getAdminPath()+"/orders/orders/"+(Orders.FLAG_DOING.equals(orders.getFlag()) ? "" : "listOld")+"?repage";
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
	public String doTask(String ordersId,String taskId,String comment,HttpServletRequest request) {
		/*if (!beanValidator(model, orders)){
			return form(orders, model);
		}*/
		try{
			ordersService.compileTask(ordersId, taskId, comment, request);
			request.getSession().setAttribute("message","操作成功！");
		}catch (Exception e){
			e.printStackTrace();
			request.getSession().setAttribute("message","操作失败，请稍后重试！");
		}

		return "redirect:"+Global.getAdminPath()+"/orders/orders/form?id=" + ordersId + "&time=" + new Date().getTime();
	}
}