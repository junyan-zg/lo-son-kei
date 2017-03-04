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
import com.zjy.losonkei.modules.goods.entity.GoodsArticle;
import com.zjy.losonkei.modules.goods.service.GoodsArticleService;

import java.util.List;

/**
 * 商品文章Controller
 * @author zjy
 * @version 2017-03-05
 */
@Controller
@RequestMapping(value = "${adminPath}/goods/goodsArticle")
public class GoodsArticleController extends BaseController {

	@Autowired
	private GoodsArticleService goodsArticleService;
	
	@ModelAttribute
	public GoodsArticle get(@RequestParam(required=false) String goodsId) {
		GoodsArticle entity = null;
		if (StringUtils.isNotBlank(goodsId)){
			entity = goodsArticleService.getByGoodsId(goodsId);
		}
		if (entity == null){
			entity = new GoodsArticle();
			entity.setGoodsId(goodsId);
		}
		return entity;
	}
	
	/*@RequiresPermissions("goods:goodsArticle:view")
	@RequestMapping(value = {"list", ""})
	public String list(GoodsArticle goodsArticle, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GoodsArticle> page = goodsArticleService.findPage(new Page<GoodsArticle>(request, response), goodsArticle); 
		model.addAttribute("page", page);
		return "modules/goods/goodsArticleList";
	}*/

	@RequiresPermissions("goods:goodsArticle:view")
	@RequestMapping(value = "form")
	public String form(GoodsArticle goodsArticle, Model model) {
		model.addAttribute("goodsArticle", goodsArticle);
		return "modules/goods/goodsArticleForm";
	}

	@RequiresPermissions("goods:goodsArticle:edit")
	@RequestMapping(value = "save")
	public String save(GoodsArticle goodsArticle, Model model, RedirectAttributes redirectAttributes) {
		/*if (!beanValidator(model, goodsArticle)){
			return form(goodsArticle, model);
		}*/
		goodsArticleService.save(goodsArticle);
		addMessage(redirectAttributes, "保存商品文章成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsArticle/form?goodsId=" + goodsArticle.getGoodsId() + "&repage";
	}
	
/*	@RequiresPermissions("goods:goodsArticle:edit")
	@RequestMapping(value = "delete")
	public String delete(GoodsArticle goodsArticle, RedirectAttributes redirectAttributes) {
		goodsArticleService.delete(goodsArticle);
		addMessage(redirectAttributes, "删除商品文章成功");
		return "redirect:"+Global.getAdminPath()+"/goods/goodsArticle/?repage";
	}
*/
}