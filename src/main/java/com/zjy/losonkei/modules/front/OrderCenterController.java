package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping("delCart")
    @ResponseBody
    public String delShoppingCart(@RequestParam("id")String cartId){
        String memberId = UserUtils.getPrincipal().getId();
        ShoppingCart shoppingCart = shoppingCartService.get(cartId);
        if (shoppingCart != null && memberId.equals(shoppingCart.getMemberId())){
            shoppingCartService.delete(shoppingCart);
        }
        return "ok";
    }

    @RequestMapping("dealCart")
    @ResponseBody
    public Object[] countShoppingCart(HttpServletRequest request){
        Object[] obj = new Object[2];   //[0]是集合list<map>,[1]是总价

        List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
        BigDecimal total = new BigDecimal(0);

        obj[0] = list;

        String memberId = UserUtils.getPrincipal().getId();

        ShoppingCart shoppingCart = new ShoppingCart();
        shoppingCart.setMemberId(memberId);
        List<ShoppingCart> shoppingCarts = shoppingCartService.findList(shoppingCart);
        for (ShoppingCart cart : shoppingCarts){
            String amountStr = request.getParameter("cart-amount-" + cart.getId());
            GoodsAll goodsAll = GoodsAllUtils.getGoodAllById(cart.getGoodsNo());
            //处理更改过的价格
            if (StringUtils.isNotBlank(amountStr)){
                try{
                    int amount = Integer.valueOf(amountStr);
                    if (amount > goodsAll.getStock()){
                        amount = goodsAll.getStock();
                    }else if (amount < 0){
                        amount = 0;
                    }
                    //修改过的价格
                    if(amount != cart.getGoodsAmount()){
                        cart.setGoodsAmount(amount);
                        shoppingCartService.save(cart);
                    }
                }catch (Exception e){}
            }
            //
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("id",cart.getId());
            map.put("amount",cart.getGoodsAmount());
            map.put("stock",goodsAll.getStock());

            BigDecimal priceTotal = goodsAll.getPrice().multiply(new BigDecimal(cart.getGoodsAmount()));
            total = total.add(priceTotal);
            map.put("total",priceTotal);

            list.add(map);

        }

        obj[1] = total;

        return obj;
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
