package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;
import com.zjy.losonkei.modules.goods.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zjy on 2017/1/9.
 */
@Controller("com.zjy.losonkei.modules.front.GoodsController")
public class GoodsController extends BaseController{

    @Autowired
    private GoodsCategoryService goodsCategoryService;

    @RequestMapping("/goods")
    public String list(Model model){

        GoodsCategory rootGoodsCategory = new GoodsCategory();
        rootGoodsCategory.setParent(new GoodsCategory("0"));
        model.addAttribute("goodsCategoryList",goodsCategoryService.findList(rootGoodsCategory));

        return "modules/front/goods";
    }

    @RequestMapping("/goods/details")
    public String goodsDetails(){
        return "modules/front/goods";
    }
}
