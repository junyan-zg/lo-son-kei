package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.orders.entity.Orders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zjy on 2017/2/5.
 * 订单中心
 */
@Controller
@RequestMapping(value="${frontPath}/")
public class OrderCenterController extends BaseController {

    @RequestMapping("shoppingCart")
    public String shoppingCart(){

        return "modules/front/orders/shoppingCart";
    }

    @RequestMapping("quicklyBuy")
    public String quicklyBuy(){

        return "";
    }

    @RequestMapping("orders")
    public String ordersList(){

        return "";
    }

    @RequestMapping("orders/{id}")
    public String viewOrders(){

        return "";
    }

}
