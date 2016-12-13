/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecification;
import com.zjy.losonkei.modules.goods.service.GoodsSpecificationService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import org.apache.shiro.authz.annotation.Logical;
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

import java.util.List;

/**
 * 生产订单Controller
 * @author zjy
 * @version 2016-11-21
 */
@Controller
@RequestMapping(value = "${adminPath}/product/productOrder")
public class ProductOrderController extends BaseController {

	@Autowired
	private GoodsSpecificationService goodsSpecificationService;

	@Autowired
	private ProductOrderService productOrderService;

	@Autowired
	private ActivitiService activitiService;
	
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
	
	@RequiresPermissions("product:productOrder:viewNew")
	@RequestMapping("listNew")
	public String listNew(ProductOrder productOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
		productOrder.setProductType(ProductOrder.PRODUCT_TYPE_NEW);
		Page<ProductOrder> page = productOrderService.findPage(new Page<ProductOrder>(request, response), productOrder);
		model.addAttribute(ProductOrder.FLAG_NEW_INVENT,ProductOrder.FLAG_NEW_INVENT);
		model.addAttribute("page", page);
		return "modules/product/productOrderList";
	}

	@RequiresPermissions("product:productOrder:viewOld")
	@RequestMapping("listOld")
	public String listOld(ProductOrder productOrder, HttpServletRequest request, HttpServletResponse response, Model model) {
		productOrder.setProductType(ProductOrder.PRODUCT_TYPE_OLD);
		Page<ProductOrder> page = productOrderService.findPage(new Page<ProductOrder>(request, response), productOrder);
		model.addAttribute("page", page);
		return "modules/product/productOrderList";
	}

	@RequiresPermissions("product:productOrder:viewNew")
	@RequestMapping(value = "formNew")
	public String formNew(ProductOrder productOrder, Model model) {
		model.addAttribute(ProductOrder.FLAG_NEW_INVENT,ProductOrder.FLAG_NEW_INVENT);
		return formOld(productOrder,model);
	}

	@RequiresPermissions("product:productOrder:viewOld")
	@RequestMapping(value = "formOld")
	public String formOld(ProductOrder productOrder, Model model) {
		model.addAttribute("productOrder", productOrder);
		showGoodsSpecification(productOrder,model);
		if (StringUtils.isNotBlank(productOrder.getId())){
			productOrderService.loadEntity(productOrder);
		}
		if(StringUtils.isNotBlank(productOrder.getProcessInstanceId())){
			model.addAttribute("histoicFlowList",activitiService.histoicFlowList(productOrder.getProcessInstanceId()));
		}
		return "modules/product/productOrderForm";
	}

	@RequiresPermissions(value = {"product:productOrder:viewNew","product:productOrder:viewOld"}, logical = Logical.OR)
	@RequestMapping(value = "view")
	public String view(ProductOrder productOrder, Model model) {
		if (ProductOrder.PRODUCT_TYPE_NEW.equals(productOrder.getProductType())){
			formNew(productOrder,model);
		}else {
			formOld(productOrder,model);
		}
		return "modules/product/productOrderView";
	}

	private void showGoodsSpecification(ProductOrder productOrder, Model model){
		if (StringUtils.isNotBlank(productOrder.getGoodsId())){
			model.addAttribute("goodsSpecificationList",goodsSpecificationService.findList(new GoodsSpecification()));
			List<GoodsAll> goodsAlls = GoodsAllUtils.getGoodsAllByGoodsId(productOrder.getGoodsId());
			for(GoodsAll goodsAll:goodsAlls){
				GoodsAllUtils.fillProperty(goodsAll,false);
			}
			model.addAttribute("goodsAlls", goodsAlls);
		}
	}

	@RequiresPermissions("product:productOrder:edit")
	@RequestMapping(value = "save")
	public String save(ProductOrder productOrder,HttpServletRequest request, Model model, RedirectAttributes redirectAttributes) {
		/*if (!beanValidator(model, productOrder)){
			return form(productOrder, model);
		}*/
		productOrderService.save(productOrder,request);
		addMessage(redirectAttributes, "保存生产订单成功");
		if(ProductOrder.PRODUCT_TYPE_NEW.equals(productOrder.getProductType())){
			return "redirect:"+Global.getAdminPath()+"/product/productOrder/listNew?repage";
		}
		return "redirect:"+Global.getAdminPath()+"/product/productOrder/listOld?repage";
	}
	
	@RequiresPermissions("product:productOrder:edit")
	@RequestMapping(value = "delete")
	public String delete(ProductOrder productOrder, RedirectAttributes redirectAttributes) {
		productOrderService.delete(productOrder);
		addMessage(redirectAttributes, "删除生产订单成功");
		return "redirect:"+Global.getAdminPath()+"/product/productOrder/?repage";
	}

	@RequestMapping(value = "doTask")
	public String doTask(ProductOrder productOrder,String taskId,String comment,HttpServletRequest request) {
		productOrderService.doTask(productOrder,taskId,comment,request);
		return "redirect:"+Global.getAdminPath()+"/product/productOrder/view?id="+ productOrder.getId() +"&repage";
	}

}