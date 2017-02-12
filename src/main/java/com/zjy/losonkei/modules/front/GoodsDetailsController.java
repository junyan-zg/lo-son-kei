package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.*;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.goods.service.GoodsAttrValueService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.goods.service.GoodsSpecificationValueService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.orders.service.ShoppingCartService;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.security.Principal;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zjy on 2017/01/31.
 */
@Controller
public class GoodsDetailsController extends BaseController{

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private GoodsSpecificationValueService goodsSpecificationValueService;
    @Autowired
    private GoodsAttrValueService goodsAttrValueService;
    @Autowired
    private GoodsAllService goodsAllService;
    @Autowired
    private ShoppingCartService shoppingCartService;

    @RequestMapping("/goodsDetails/{id}")
    public String goodsDetails(@PathVariable("id")String goodsId, Model model){
        Goods goods = goodsService.get(goodsId);
        if(goods == null){
            return "redirect:/goods";
        }
        model.addAttribute("goods",goods);

        //url
        String imgUrls = goods.getImgUrl();
        List<String> imgUrlList = new ArrayList<String>();
        for (String s : imgUrls.split("\\|")){
            if (!"".equals(s.trim())){
                imgUrlList.add(s);
            }
        }
        model.addAttribute("imgUrlList",imgUrlList);


        //规格
        Map<GoodsSpecification, List<String>> goodsSpecificationValueList = goodsSpecificationValueService.getGoodsSpecificationValueListByGoodsId(goodsId);
        model.addAttribute("goodsSpecificationMap",goodsSpecificationValueList);
        //属性
        GoodsAttrValue goodsAttrValue = new GoodsAttrValue();
        goodsAttrValue.setGoodsId(goodsId);
        List<GoodsAttrValue> goodsAttrValueList = goodsAttrValueService.findList(goodsAttrValue);
        model.addAttribute("goodsAttrValueList",goodsAttrValueList);

        return "modules/front/goodsDetails";
    }

    @ResponseBody
    @RequestMapping(value = "/goodsPriceInfo",method = RequestMethod.POST)
    public Map<String,Object> getGoodsAllInfo(HttpServletRequest request){
        Map<String,Object> map = new HashMap<String,Object>();


        String[] specificationIds = request.getParameterValues("specificationIds");

        GoodsAll goodsAllForGroup = new GoodsAll();
        goodsAllForGroup.setGoodsId(request.getParameter("goodsId"));
        goodsAllForGroup.setGoodsSpecificationValues(new ArrayList<GoodsSpecificationValue>());

        GoodsAll goodsAllSearch = new GoodsAll();
        goodsAllSearch.setGoodsId(request.getParameter("goodsId"));
        goodsAllSearch.setDelFlag(GoodsAll.DEL_FLAG_NORMAL);


        GoodsAll goodsAll;

        if (specificationIds == null){  //未设置规格，只有一个goodsAll
            List<GoodsAll> goodsAllList = goodsAllService.findList(goodsAllSearch);
            if (goodsAllList != null && !goodsAllList.isEmpty()){
                goodsAll = goodsAllList.get(0);
            }else{
                goodsAll = new GoodsAll();
            }
        }else{
            //左连接
            for (String sId : specificationIds){
                GoodsSpecificationValue goodsSpecificationValue = new GoodsSpecificationValue(new GoodsSpecification(sId));
                goodsSpecificationValue.setSpecificationValue(request.getParameter("spec-" + sId));
                goodsAllForGroup.getGoodsSpecificationValues().add(goodsSpecificationValue);
            }
            Integer specificationGroup = goodsSpecificationValueService.getSpecificationGroup(goodsAllForGroup);

            if(specificationGroup != null){
                goodsAllSearch.setSpecificationGroup(specificationGroup);
                List<GoodsAll> goodsAllList = goodsAllService.findList(goodsAllSearch);
                if (goodsAllList != null && !goodsAllList.isEmpty()){
                    goodsAll = goodsAllList.get(0);
                }else{
                    goodsAll = new GoodsAll();
                }
            }else{
                goodsAll = new GoodsAll();
            }
        }

        map.put("srcPrice",goodsAll.getSrcPrice());
        map.put("price",goodsAll.getPrice());
        map.put("stock",goodsAll.getStock());
        map.put("goodsNo",goodsAll.getId());
        return map;
    }


    @RequestMapping("addShoppingCart")
    @ResponseBody
    public String addShoppingCart(String goodsNo,@RequestParam("amount")String amountStr){
        Principal principal = UserUtils.getPrincipal();
        if (principal == null || StringUtils.isBlank(principal.getId()) || principal.isCompanyUser()){
            return "login";
        }
        if (StringUtils.isBlank(goodsNo)){
            return "error";
        }

        int amount = 0;
        try {
            amount = Integer.valueOf(amountStr);
            if (amount <= 0){
                return "error";
            }
        }catch (Exception e){
            return "error";
        }

        GoodsAll goodsAll = goodsAllService.get(goodsNo);
        if (goodsAll == null){
            return "error";
        }
        if (GoodsAll.DEL_FLAG_NORMAL.equals(goodsAll.getDelFlag()) && Goods.STATE_ON_SALE.equals(goodsService.get(goodsAll.getGoodsId()).getState())){
            if (amount > goodsAll.getStock()){
                return "error";
            }
            ShoppingCart shoppingCart = new ShoppingCart();
            shoppingCart.setMemberId(principal.getId());
            shoppingCart.setGoodsNo(goodsNo);
            //购物车已存在该商品，叠加
            List<ShoppingCart> list = shoppingCartService.findList(shoppingCart);
            if (list != null && !list.isEmpty()){
                shoppingCart = list.get(0);
            }
            Integer goodsAmountDB = shoppingCart.getGoodsAmount();
            if (goodsAmountDB == null){
                goodsAmountDB = 0;
            }
            shoppingCart.setGoodsAmount(amount + goodsAmountDB);
            shoppingCartService.save(shoppingCart);
            return "ok";
        }else {
            return "error";
        }


    }
}
