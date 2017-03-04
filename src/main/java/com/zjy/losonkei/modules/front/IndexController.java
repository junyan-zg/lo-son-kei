package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;
import com.zjy.losonkei.modules.goods.service.GoodsCategoryService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.sys.security.Principal;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by zjy on 2016/12/19.
 */
@Controller
public class IndexController extends BaseController{

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private GoodsCategoryService goodsCategoryService;

    @RequestMapping("/index")
    public String index(Model model){

        List<Goods> goodsList = goodsService.findListForIndex();
        model.addAttribute("goodsList",goodsList);

        List<GoodsCategory> goodsCategoryList = goodsCategoryService.findListForIndex();
        model.addAttribute("goodsCategoryList",goodsCategoryList);


        return "modules/front/index";
    }
}
