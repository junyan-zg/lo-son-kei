package com.zjy.losonkei.modules.analysis.service;

import com.zjy.losonkei.modules.analysis.dao.ProductAnalysisDao;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

/**
 * Created by zjy on 2017/3/12.
 */
@Service
public class ProductAnalysisService {

    @Autowired
    private ProductAnalysisDao productAnalysisDao;

    public void count(Analysis analysis, Model model){
        analysis.setProductOrder(new ProductOrder());

        ProductOrder productOrder = analysis.getProductOrder();

        //发布
        productOrder.setState(null);
        List<Analysis> countAll = productAnalysisDao.count(analysis);

        //生产
        productOrder.setState(ProductOrder.PRODUCT_STATE_PRODUCTING);
        List<Analysis> countProduct = productAnalysisDao.count(analysis);

        //审核
        productOrder.setState(ProductOrder.PRODUCT_STATE_AUDITING);
        List<Analysis> countAudit = productAnalysisDao.count(analysis);


        //成功
        productOrder.setState(ProductOrder.PRODUCT_STATE_FINISHED);
        List<Analysis> countSuccess = productAnalysisDao.countSuccess(analysis);

        model.addAttribute("countAll",countAll);
        model.addAttribute("countProduct",countProduct);
        model.addAttribute("countAudit",countAudit);
        model.addAttribute("countSuccess",countSuccess);
    }
}
