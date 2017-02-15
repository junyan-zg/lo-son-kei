package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.service.MemberAddressService;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.orders.service.ShoppingCartService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by zjy on 2017/2/5.
 * 订单中心
 */
@Controller
@RequestMapping(value="${frontPath}/")
public class OrderCenterController extends BaseController {

    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private MemberAddressService memberAddressService;

    @RequestMapping("shoppingCart")
    public String shoppingCart(Model model){
        String memberId = UserUtils.getPrincipal().getId();

        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setMemberId(memberId);
        List<ShoppingCart> shoppingCarts = shoppingCartService.findList(shoppingCart);
        for (ShoppingCart cart:shoppingCarts) {
            //获取goodsAll，已填充goods
            GoodsAll goodsAll = GoodsAllUtils.fillProperty(GoodsAllUtils.getGoodAllById(cart.getGoodsNo()), true);
            //把规格写到goodsAll.remarks字段
            goodsAll.setRemarks(GoodsAllUtils.getAllSpecificationDesc(goodsAll));

            cart.setGoodsAll(goodsAll);
        }

        model.addAttribute("shoppingCartList",shoppingCarts);

        //收货地址
        model.addAttribute("memberAddressList",memberAddressService.findListByMemberId(memberId));

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
