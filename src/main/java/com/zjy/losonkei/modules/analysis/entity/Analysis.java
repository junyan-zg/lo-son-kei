package com.zjy.losonkei.modules.analysis.entity;

import com.zjy.losonkei.modules.product.entity.ProductOrder;

import java.util.Date;

/**
 * Created by Administrator on 2017/3/12.
 */
public class Analysis {

    private Date beginDate;

    private Date endDate;

    private Integer count;//总数

    private ProductOrder productOrder;

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public ProductOrder getProductOrder() {
        return productOrder;
    }

    public void setProductOrder(ProductOrder productOrder) {
        this.productOrder = productOrder;
    }
}
