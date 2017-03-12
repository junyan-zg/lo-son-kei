package com.zjy.losonkei.modules.analysis.web;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.analysis.service.ProductAnalysisService;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zjy on 2017/3/12.
 */
@Controller
@RequestMapping(value = "${adminPath}/analysis/")
public class ProductAnalysisController extends BaseController {

    @Autowired
    private ProductAnalysisService productAnalysisService;

    @RequiresPermissions("analysis:product")
    @RequestMapping("product")
    public String product(Analysis analysis, Model model){
        if (analysis.getBeginDate() == null && analysis.getEndDate() == null){
            addMessage(model,"查询失败，请选择一个时间。");
        }else{
            productAnalysisService.count(analysis,model);
        }

        return "modules/analysis/product";
    }
}
