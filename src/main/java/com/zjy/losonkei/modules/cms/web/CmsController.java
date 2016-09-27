/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.cms.web;

import com.zjy.losonkei.modules.cms.service.CategoryService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjy.losonkei.common.web.BaseController;

/**
 * 内容管理Controller
 * @author ThinkGem
 * @version 2013-4-21
 */
@Controller
@RequestMapping(value = "${adminPath}/cms")
public class CmsController extends BaseController {

	@Autowired
	private CategoryService categoryService;
	
	@RequiresPermissions("cms:view")
	@RequestMapping(value = "")
	public String index() {
		return "modules/cms/cmsIndex";
	}
	
	@RequiresPermissions("cms:view")
	@RequestMapping(value = "tree")
	public String tree(Model model) {
		model.addAttribute("categoryList", categoryService.findByUser(true, null));
		return "modules/cms/cmsTree";
	}
	
	@RequiresPermissions("cms:view")
	@RequestMapping(value = "none")
	public String none() {
		return "modules/cms/cmsNone";
	}

}
