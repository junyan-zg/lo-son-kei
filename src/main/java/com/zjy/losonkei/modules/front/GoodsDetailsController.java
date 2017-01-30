package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by zjy on 2017/01/31.
 */
@Controller
public class GoodsDetailsController extends BaseController{

    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/goodsDetails")
    public String goodsDetails(Model model){
        Goods goods = goodsService.get("GD170128223724368888");

        //url
        String imgUrls = goods.getImgUrl();
        List<String> imgUrlList = new ArrayList<String>();
        for (String s : imgUrls.split("\\|")){
            if (!"".equals(s.trim())){
                imgUrlList.add(s);
            }
        }
        model.addAttribute("imgUrlList",imgUrlList);
        model.addAttribute("goods",goods);
        return "modules/front/goodsDetails";
    }

}
