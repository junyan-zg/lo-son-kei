package com.zjy.losonkei.modules.analysis.web;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.analysis.service.ProductAnalysisService;
import com.zjy.losonkei.modules.analysis.service.SaleAnalysisService;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.SearchRecord;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.util.Date;
import java.util.Map;

/**
 * Created by zjy on 2017/3/12.
 */
@Controller
@RequestMapping(value = "${adminPath}/analysis/")
public class AnalysisController extends BaseController {

    @Autowired
    private ProductAnalysisService productAnalysisService;
    @Autowired
    private SaleAnalysisService saleAnalysisService;

    @RequiresPermissions("analysis:product")
    @RequestMapping("product")
    public String product(Analysis analysis, Model model, HttpServletRequest request){
        if (analysis.getBeginDate() == null && analysis.getEndDate() == null){
            if ("post".equalsIgnoreCase(request.getMethod())){
                addMessage(model,"查询失败，请选择一个时间。");
            }
        }else{
            productAnalysisService.count(analysis,model);
        }

        return "modules/analysis/product";
    }

    @RequiresPermissions("analysis:sale")
    @RequestMapping("goodsCount")
    public String goodsCount(Goods goods, Model model, HttpServletRequest request, HttpServletResponse response){

        saleAnalysisService.goodsCount(new Page<Goods>(request,response),goods);

        model.addAttribute("page",goods.getPage());

        return "modules/analysis/saleGoodsCount";
    }

    @RequiresPermissions("analysis:sale")
    @RequestMapping("searchRecord")
    public String searchRecord(SearchRecord searchRecord, Model model, HttpServletRequest request, HttpServletResponse response){

        saleAnalysisService.searchRecord(new Page<SearchRecord>(request,response),searchRecord);

        model.addAttribute("page",searchRecord.getPage());

        return "modules/analysis/searchRecord";
    }


    @RequiresPermissions("analysis:sale")
    @RequestMapping("sale")
    public String sale(){
        return "modules/analysis/sale";
    }

    @RequiresPermissions("analysis:sale")
    @RequestMapping("sale/{method}")
    @ResponseBody
    public Map<String,Object> sale(@PathVariable("method") String method, String type, Date date) throws ParseException {
        return saleAnalysisService.getAnalysis(method, type, date);
    }


}
