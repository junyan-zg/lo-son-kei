/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.goods.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;
import com.zjy.losonkei.modules.goods.service.GoodsCategoryService;

/**
 * 商品分类Controller
 * @author zjy
 * @version 2016-09-28
 */
@Controller
@RequestMapping(value = "${adminPath}/goods/goodsCategory")
public class GoodsCategoryController extends BaseController {

	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	@ModelAttribute
	public GoodsCategory get(@RequestParam(required=false) String id) {
		GoodsCategory entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = goodsCategoryService.get(id);
		}
		if (entity == null){
			entity = new GoodsCategory();
		}
		return entity;
	}
	
	@RequiresPermissions("goods:goodsCategory:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoodsCategory goodsCategory, HttpServletRequest request, HttpServletResponse response, Model model) {
		List<GoodsCategory> list = goodsCategoryService.findList(goodsCategory); 
		model.addAttribute("list", list);
		return "modules/goods/goodsCategoryList";
	}

	@RequiresPermissions("goods:goodsCategory:view")
	@RequestMapping(value = "form")
	public String form(GoodsCategory goodsCategory, Model model) {
		if (goodsCategory.getParent()!=null && StringUtils.isNotBlank(goodsCategory.getParent().getId())){
			goodsCategory.setParent(goodsCategoryService.get(goodsCategory.getParent().getId()));
			// 获取排序号，最末节点排序号+30
			if (StringUtils.isBlank(goodsCategory.getId())){
				GoodsCategory goodsCategoryChild = new GoodsCategory();
				goodsCategoryChild.setParent(new GoodsCategory(goodsCategory.getParent().getId()));
				List<GoodsCategory> list = goodsCategoryService.findList(goodsCategory); 
				if (list.size() > 0){
					goodsCategory.setSort(list.get(list.size()-1).getSort());
					if (goodsCategory.getSort() != null){
						goodsCategory.setSort(goodsCategory.getSort() + 30);
					}
				}
			}
		}
		if (goodsCategory.getSort() == null){
			goodsCategory.setSort(30);
		}
		model.addAttribute("goodsCategory", goodsCategory);
		return "modules/goods/goodsCategoryForm";
	}

	@RequiresPermissions("goods:goodsCategory:edit")
	@RequestMapping(value = "save")
	public String save(GoodsCategory goodsCategory, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, goodsCategory)){
			return form(goodsCategory, model);
		}
		goodsCategoryService.save(goodsCategory);
		addMessage(redirectAttributes, "保存商品分类成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsCategory/?repage";
	}
	
	@RequiresPermissions("goods:goodsCategory:edit")
	@RequestMapping(value = "delete")
	public String delete(GoodsCategory goodsCategory, RedirectAttributes redirectAttributes) {
		goodsCategoryService.delete(goodsCategory);
		addMessage(redirectAttributes, "删除商品分类成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsCategory/?repage";
	}

	@RequiresPermissions("user")
	@ResponseBody
	@RequestMapping(value = "treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<GoodsCategory> list = goodsCategoryService.findList(new GoodsCategory());
		for (int i=0; i<list.size(); i++){
			GoodsCategory e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentIds().indexOf(","+extId+",")==-1)){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParent().getId());
				map.put("name", e.getCategoryName());
				mapList.add(map);
			}
		}
		return mapList;
	}
	
}