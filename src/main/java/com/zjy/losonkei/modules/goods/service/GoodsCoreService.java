package com.zjy.losonkei.modules.goods.service;

import com.zjy.losonkei.common.persistence.BaseEntity;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.goods.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

/**
 * Created by zjy on 2016/11/11.
 */
@Transactional(readOnly = true)
@Service
public class GoodsCoreService{
    @Autowired
    private GoodsSpecificationValueService goodsSpecificationValueService;
    @Autowired
    private GoodsSpecificationService goodsSpecificationService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private GoodsAttrService goodsAttrService;
    @Autowired
    private GoodsAttrValueService goodsAttrValueService;
    @Autowired
    private GoodsAllService goodsAllService;

    @Transactional(readOnly = false)
    public void save(Goods goods, HttpServletRequest request){

        //保存goods
        goods.setDelFlag(Goods.DEL_FLAG_NORMAL);
        goodsService.save(goods);

        Map<String, String[]> parameterMap = request.getParameterMap();

        //获取规格List
        List<GoodsSpecification> goodsSpecificationList = goodsSpecificationService.findList(new GoodsSpecification());
        //规格值数组，第一维度下标对应规格list下标
        String[][] goodsSpecificationValuesStringArray = new String[goodsSpecificationList.size()][];
        for (int i = 0;i < goodsSpecificationList.size();i++){
            goodsSpecificationValuesStringArray[i] = parameterMap.get("goodsSpecification" + goodsSpecificationList.get(i).getId());
        }

        String[] goodsAllIds = parameterMap.get("goodsAllId");
        String[] srcPrices = parameterMap.get("m-srcPrice");
        String[] prices = parameterMap.get("m-price");
        String[] costPrices = parameterMap.get("costPrice");
        String[] stocks = parameterMap.get("stock");
        String[] specificationGroups = parameterMap.get("specificationGroup");
        String[] srcSpecificationGroups = parameterMap.get("srcSpecificationGroup");
        String[] delFlags = parameterMap.get("delFlag");

        for (int i = 0;i < goodsAllIds.length;i++){
            GoodsAll goodsAll = new GoodsAll();
            goodsAll.setId(goodsAllIds[i]);
            goodsAll.setGoodsId(goods.getId());
            goodsAll.setSrcPrice(StringUtils.isNotBlank(srcPrices[i]) ? new BigDecimal(srcPrices[i]) : null);
            goodsAll.setCostPrice(StringUtils.isNotBlank(costPrices[i]) ? new BigDecimal(costPrices[i]) : null);
            goodsAll.setPrice(StringUtils.isNotBlank(prices[i]) ? new BigDecimal(prices[i]) : null);
            goodsAll.setStock(StringUtils.isNotBlank(stocks[i]) ? Integer.valueOf(stocks[i]) : null);
            goodsAll.setSpecificationGroup(Integer.valueOf(specificationGroups[i]));
            goodsAll.setDelFlag(StringUtils.isBlank(goodsAllIds[i]) ? BaseEntity.DEL_FLAG_NORMAL : delFlags[i]);

            //是否新纪录
            boolean isNewRecord = StringUtils.isBlank(goodsAll.getId());

            if (Goods.DEL_FLAG_TURE_DELETE.equals(goodsAll.getDelFlag())){
                goodsAllService.trueDelete(goodsAll.getId());
            }else{
                goodsAllService.save(goodsAll);
            }

            for (int j = 0 ;j < goodsSpecificationList.size();j++){
                String value = goodsSpecificationValuesStringArray[j][i];
                GoodsSpecificationValue goodsSpecificationValue = new GoodsSpecificationValue();
                goodsSpecificationValue.setGoodsId(goods.getId());  //该goodsId取决于是否新纪录
                goodsSpecificationValue.setGoodsSpecification(goodsSpecificationList.get(j));
                if (!isNewRecord){
                    goodsSpecificationValue.setSpecificationGroup(Integer.valueOf(srcSpecificationGroups[i]));
                    //goodsId  goodsSpecificationid  specificationGroup确定唯一一个goodsSpecificationValue
                    List<GoodsSpecificationValue> valuesList = goodsSpecificationValueService.findList(goodsSpecificationValue);
                    if (!valuesList.isEmpty()){
                        goodsSpecificationValue = valuesList.get(0);
                    }
                }
                goodsSpecificationValue.setSpecificationGroup(Integer.valueOf(specificationGroups[i]));
                goodsSpecificationValue.setSpecificationValue(value);
                if (Goods.DEL_FLAG_TURE_DELETE.equals(goodsAll.getDelFlag())){
                    goodsSpecificationValueService.trueDelete(goodsSpecificationValue.getId());
                }else{
                    goodsSpecificationValueService.save(goodsSpecificationValue);
                }
            }
        }
        //属性值
        List<GoodsAttr> goodsAttrs = goodsAttrService.findList(new GoodsAttr());
        for (GoodsAttr goodsAttr:goodsAttrs){
            GoodsAttrValue goodsAttrValue = new GoodsAttrValue();
            goodsAttrValue.setGoodsId(goods.getId());
            goodsAttrValue.setGoodsAttr(goodsAttr);
            List<GoodsAttrValue> goodsAttrValueList = goodsAttrValueService.findList(goodsAttrValue);
            if (!goodsAttrValueList.isEmpty()){
                goodsAttrValue = goodsAttrValueList.get(0);
            }
            String value = request.getParameter("goodsAttrValues"+goodsAttr.getId());
            goodsAttrValue.setAttrValue(value);
            goodsAttrValueService.save(goodsAttrValue);
        }
    }
}
