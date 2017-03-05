package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.service.MemberAddressService;
import com.zjy.losonkei.modules.member.service.MemberNoteService;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.entity.ShoppingCart;
import com.zjy.losonkei.modules.orders.service.OrdersService;
import com.zjy.losonkei.modules.orders.service.ShoppingCartService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.runtime.Job;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
public class OrdersCenterController extends BaseController {

    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private MemberAddressService memberAddressService;
    @Autowired
    private MemberNoteService memberNoteService;
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private ActivitiService activitiService;

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

            boolean valid = GoodsAllUtils.isValid(goodsAll, goodsAll.getGoods());
            goodsAll.setValid(valid);
            if (!valid){
                shoppingCartService.delete(cart);

                memberNoteService.save(new MemberNote(memberId,"您的购物车商品　" +
                goodsAll.getGoods().getGoodsName() + " " + goodsAll.getRemarks() +
                        " 已失效并移除。"
                ));
            }
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

            if (GoodsAllUtils.isValid(goodsAll)) {  //商品有效

                //处理更改过的价格
                if (StringUtils.isNotBlank(amountStr)) {
                    try {
                        int amount = Integer.valueOf(amountStr);
                        if (amount > goodsAll.getStock()) {
                            amount = goodsAll.getStock();
                        } else if (amount <= 0) {
                            amount = 1;
                        }
                        //修改过的价格
                        if (amount != cart.getGoodsAmount()) {
                            cart.setGoodsAmount(amount);
                            shoppingCartService.save(cart);
                        }
                    } catch (Exception e) {
                    }
                }
                //
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("id", cart.getId());
                map.put("amount", cart.getGoodsAmount());
                map.put("stock", goodsAll.getStock());

                BigDecimal priceTotal = goodsAll.getPrice().multiply(new BigDecimal(cart.getGoodsAmount()));
                total = total.add(priceTotal);
                map.put("total", priceTotal);

                list.add(map);
            }
        }

        obj[1] = total;

        return obj;
    }


    @RequestMapping("quicklyBuy/{id}/{amount}")
    public String quicklyBuy(Model model,@PathVariable("id")String goodNo,@PathVariable("amount") String amountStr){
        String memberId = UserUtils.getPrincipal().getId();

        GoodsAll goodsAll = GoodsAllUtils.getGoodAllById(goodNo);
        if (goodsAll == null){
            model.addAttribute("error","抱歉，商品不存在");
        }else{
            GoodsAllUtils.fillProperty(goodsAll, true);
            goodsAll.setRemarks(GoodsAllUtils.getAllSpecificationDesc(goodsAll));

            if(!GoodsAllUtils.isValid(goodsAll,goodsAll.getGoods())){
               model.addAttribute("error","抱歉，该商品不存在");
            }else if (goodsAll.getStock() <= 0){
                model.addAttribute("error","抱歉，该商品暂不供货");
            }else {
                int amount = 1;
                try {
                    amount = Integer.valueOf(amountStr);
                }catch (Exception e){}
                if (amount > goodsAll.getStock()){
                    amount = goodsAll.getStock();
                }else if(amount < 1){
                    amount = 1;
                }

                ShoppingCart shoppingCart = new ShoppingCart();
                shoppingCart.setGoodsAll(goodsAll);
                shoppingCart.setGoodsAmount(amount);
                shoppingCart.setMemberId(memberId);
                shoppingCart.setGoodsNo(goodsAll.getId());

                model.addAttribute("shoppingCart",shoppingCart);
            }
        }

        //收货地址
        model.addAttribute("memberAddressList",memberAddressService.findListByMemberId(memberId));

        return "modules/front/orders/quicklyBuy";
    }

    @RequestMapping("payOrders")
    @ResponseBody
    public String payOrders(String ordersId,String payPwd){
        String result = "参数不合法！";
        if (StringUtils.isBlank(ordersId)){
            return result;
        }
        String s = ordersService.payOrders(ordersId, payPwd);
        if (s != null){
            result = s;
        }
        return result;
    }

    @RequestMapping("createOrders")
    @ResponseBody
    public Map<String,String> createOrders(String goodsNo,@RequestParam(value = "cart-amount",required = false) String amountStr,String addressId,HttpServletRequest request){

        String memberId = UserUtils.getPrincipal().getId();
        Map<String,String> map = new HashMap<String,String>();

        MemberAddress memberAddress;

        if(StringUtils.isBlank(addressId)){
            map.put("error","请先填写收货地址");
            return map;
        }else{
            memberAddress = memberAddressService.get(addressId);
            if (memberAddress == null || !memberId.equals(memberAddress.getMemberId())) {     //为空或不是自己的地址
                map.put("error","请先填写收货地址");
                return map;
            }
        }

        if (StringUtils.isNotBlank(goodsNo)){   //马上下单
            String result = ordersService.createOrders(goodsNo,amountStr, memberAddress);
            if (result == null){
                map.put("error","页面已过期");
            }else{
                map.put("goodsNo",result);
            }
        }else {     //清空购物车
            String result = ordersService.createOrdersShoppingCart(request, memberAddress);
            if (result == null){
                map.put("error","页面已过期");
            }else{
                map.put("goodsNo",result);
            }
        }
        return map;
    }



    @RequestMapping("orders")
    public String ordersList(HttpServletRequest request, String pageNum){
        String memberId = UserUtils.getPrincipal().getId();
        Orders orders = new Orders();
        orders.setIgnoreFlag(null);
        orders.setMemberId(memberId);

        int pageNo = 1;
        try {
            if(StringUtils.isNotBlank(pageNum)){
                pageNo = Integer.valueOf(pageNum);
                if (pageNo < 1){
                    pageNo = 1;
                }
            }
        }catch (Exception e){}
        Page<Orders> page = new Page<Orders>();
        page.setPageSize(20);
        page.setPageNo(pageNo);

        ordersService.findPage(page,orders);
        List<Orders> list = page.getList();

        if (list != null){
            for (Orders o : list){
                o.setOrdersDetailsList(ordersService.get(o.getId()).getOrdersDetailsList());
            }
        }

        request.setAttribute("page",page);
        return "modules/front/orders/orders";
    }

    @RequestMapping("orders/{id}")
    public String viewOrders(@PathVariable("id") String ordersId,Model model){
        String memberId = UserUtils.getPrincipal().getId();

        Orders orders = ordersService.get(ordersId);

        if (orders == null || !memberId.equals(orders.getMemberId())){

            return "redirect:" + Global.getFrontPath() + "/orders";
        }

        MemberNote memberNote = new MemberNote();
        memberNote.setOrdersId(ordersId);
        Page page = new Page();
        page.setOrderBy("create_date asc");
        memberNote.setPage(page);
        model.addAttribute("notes",memberNoteService.findList(memberNote));

        if (Orders.FLAG_DOING.equals(orders.getFlag()) && Orders.PAY_STATE1.equals(orders.getPayState())){      //获取剩下时间
            Job job = ordersService.getPayOrdersLastTime(orders.getProcessInstanceId());
            model.addAttribute("job",job);
        }else{
            Task task = activitiService.getTaskService().createTaskQuery().processInstanceId(orders.getProcessInstanceId()).taskAssignee(memberId).singleResult();
            model.addAttribute("task",task);
        }

        model.addAttribute("orders",orders);

        return "modules/front/orders/ordersDetails";
    }

    @RequestMapping("dealOrders")
    @ResponseBody
    public String dealOrder(@RequestParam("id") String ordersId, String reason){
        ordersService.dealOrder(ordersId,reason);
        return "ok";
    }

}
