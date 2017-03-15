package com.zjy.losonkei.modules.analysis.entity;

import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.product.entity.ProductOrder;

import java.util.Date;

/**
 * Created by zjy on 2017/3/12.
 */
public class Analysis {

    private Date beginDate;

    private Date endDate;

    private Integer count;//总数

    private ProductOrder productOrder;

    private Goods goods;

    private Orders orders;

    public Analysis(){}

    public Analysis(Date[] dates){
        this.beginDate = dates[0];
        this.endDate = dates[1];
        orders = new Orders();
    }


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

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
