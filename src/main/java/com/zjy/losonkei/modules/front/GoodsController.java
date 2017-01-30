package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsCategory;
import com.zjy.losonkei.modules.goods.entity.GoodsSearch;
import com.zjy.losonkei.modules.goods.service.GoodsCategoryService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;

/**
 * Created by zjy on 2017/1/9.
 */
@Controller("com.zjy.losonkei.modules.front.GoodsController")
public class GoodsController extends BaseController{

    @Autowired
    private GoodsCategoryService goodsCategoryService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/goods")
    public String list(Model model, GoodsSearch goodsSearch, HttpServletRequest request) throws UnsupportedEncodingException {
        if (request.getQueryString() != null && request.getQueryString().contains("keywords")) {
           goodsSearch.setKeywords(new String(request.getParameter("keywords").getBytes("ISO-8859-1"), "UTF-8"));
           //goodsSearch.setKeywords(URLDecoder.decode(request.getParameter("keywords"), "UTF-8"));
        }

        //右侧分类UI
        GoodsCategory firstLevelCategory = new GoodsCategory("0",null);  //设上级为root
        List<GoodsCategory> firstLevelCategoryList = goodsCategoryService.findList(firstLevelCategory);
        model.addAttribute("firstLevelCategoryList",firstLevelCategoryList);

        GoodsCategory firstGC = null;
        GoodsCategory secondGC = null;
        if(StringUtils.isBlank(goodsSearch.getKeywords())){     //关键字为空

            if (StringUtils.isNotBlank(goodsSearch.getFirstLevelCategoryId())){ //第一分类不为空    情况是直接从超链接进入
                if((firstGC = goodsCategoryService.get(goodsSearch.getFirstLevelCategoryId())) != null){    //未篡改url
                    goodsSearch.setCategories(goodsCategoryService.findList(new GoodsCategory(firstGC)));
                }else{
                    goodsSearch.setFirstLevelCategoryId(null);  //错误的url等于null，交给下一步
                }
            }

            if (StringUtils.isBlank(goodsSearch.getFirstLevelCategoryId())){    //第一分类为空    情况是第一次是关键字，去掉，然后选我想要，或者接上篡改了url
                firstGC = firstLevelCategoryList.isEmpty() ? null : firstLevelCategoryList.get(0);
                if (StringUtils.isNotBlank(goodsSearch.getCategoryId())){   //第二分类不为空
                    if((secondGC = goodsCategoryService.get(goodsSearch.getCategoryId()))==null){   //找不到第二分类   篡改了url
                        goodsSearch.setCategoryId("");//设为空，下次界面回显全部
                        if(firstGC != null)
                            goodsSearch.setCategories(goodsCategoryService.findList(new GoodsCategory(firstGC)));
                    }else{
                        firstGC = goodsCategoryService.get(secondGC.getParent());   //找到第二分类后直接给第一分类
                        goodsSearch.setCategories(goodsCategoryService.findList(new GoodsCategory(firstGC)));
                    }
                }else{  //第二分类是空，情况是第一次关键字，去掉关键字，选了我想要的全部
                    if(firstGC != null)
                        goodsSearch.setCategories(goodsCategoryService.findList(new GoodsCategory(firstGC)));
                }
            }

            if (firstGC != null){
                goodsSearch.setFirstLevelCategoryId(firstGC.getId());
            }

        }else{
            //关键字不为空，搜商品，group by 得到我想要。
            goodsSearch.setFirstLevelCategoryId(null);
            goodsSearch.setCategories(goodsCategoryService.getCategoryListBySearchKey(goodsSearch.getKeywords()));
        }

        model.addAttribute("goodsSearch",goodsSearch);


        //search goods start
        Goods goods;
        if (StringUtils.isNotBlank(goodsSearch.getCategoryId())){
            goods = new Goods(new GoodsCategory(goodsSearch.getCategoryId()));
        }else{
            goods = new Goods();
            List<GoodsCategory> categories = goodsSearch.getCategories();
            if (categories != null && !categories.isEmpty()){
                if (categories.size() == 1){
                    goods.setGoodsCategory(new GoodsCategory(categories.get(0)));
                }else{
                    String[] cIds = new String[categories.size()];
                    for (int i = 0; i < cIds.length; i++){
                        cIds[i] = categories.get(i).getId();
                    }
                    goods.setCategoryIds(cIds);
                }
            }
        }
        goods.setKeywords(goodsSearch.getKeywords());
        goods.setState(Goods.STATE_ON_SALE);
        try{
            goods.setBeginPrice(new BigDecimal(goodsSearch.getPriceB()));
        }catch (Exception e){goodsSearch.setPriceB(null);}
        try{
            goods.setEndPrice(new BigDecimal(goodsSearch.getPriceE()));
        }catch (Exception e){goodsSearch.setPriceE(null);}

        int pageNo = 1;
        try {
            String pageNoStr = goodsSearch.getPageNo();
            if(StringUtils.isNotBlank(pageNoStr)){
                pageNo = Integer.valueOf(pageNoStr);
                if (pageNo < 1){
                    pageNo = 1;
                }
            }
        }catch (Exception e){goodsSearch.setPageNo(1+"");}
        Page<Goods> page = new Page<Goods>();
        page.setPageSize(12);
        page.setPageNo(pageNo);
        page.setOrderBy(goodsSearch.getOrderBy());
        goodsService.findPageFront(page,goods);
        model.addAttribute("page",page);
        //search goods end
        System.out.println(page.getCount());
        return "modules/front/goods";
    }

    @RequestMapping("/goods/details")
    public String goodsDetails(){
        return "modules/front/goods";
    }
}
