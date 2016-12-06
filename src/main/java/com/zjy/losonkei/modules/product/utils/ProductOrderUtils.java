package com.zjy.losonkei.modules.product.utils;

import com.zjy.losonkei.common.utils.SpringContextHolder;
import com.zjy.losonkei.modules.product.entity.ProductOrder;
import com.zjy.losonkei.modules.product.service.ProductOrderService;

/**
 * Created by zjy on 2016/12/4.
 */
public class ProductOrderUtils {

    private static ProductOrderService productOrderService = SpringContextHolder.getBean(ProductOrderService.class);

    public static ProductOrder getProductOrderById(String id){
        return productOrderService.get(id);
    }
}
