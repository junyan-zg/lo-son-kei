package com.zjy.losonkei.modules.act.utils;

import com.alibaba.druid.support.spring.stat.annotation.Stat;
import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.act.entity.ActFlowInfo;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/8.
 */
public class ActivitiUtils {

    public final static String PROCESS_KEY_PRODUCT = "product";//新产品研发流程key

    public final static String VAR_STARTER = "starter";

    public final static String VAR_PRODUCERS = "producers";

    public final static String VAR_AUDITORS = "auditors";


    public final static String PROCESS_KEY_SHOPPING = "shopping";
    //超时支付 15分钟
    public final static String VAR_TIMEOUT_PAY = "payTimeOut";
    public final static String TIME_TIMEOUT_PAY = "PT15M";
    //确认收货 10天
    public final static String VAR_TIMEOUT_GET = "confirmGetGoodsTimeOut";
    public final static String TIME_TIMEOUT_GET = "P10D";
    //申请退货 7天
    public final static String VAR_TIMEOUT_BACK = "backGoodsTimeOut";
    public final static String TIME_TIMEOUT_BACK = "P7D";

    //memberId
    public final static String VAR_MEMBER = "member";

    //销售员
    public final static String VAR_SALERS = "salers";

    //仓库员
    public final static String VAR_WAREHOUSE_STAFFS = "warehouseStaff";

    //审核员见上面

    private static final Map<String,ActFlowInfo> ordersFlowMap = new HashMap<String, ActFlowInfo>();

    static {
        ordersFlowMap.put("确认订单",new ActFlowInfo("valid","确认订单",
               new ActFlowInfo.Detail("1","有效",true),new ActFlowInfo.Detail("0","无效",false)
        ));
        ordersFlowMap.put("检查库存",new ActFlowInfo("enough","检查库存",
                new ActFlowInfo.Detail("1","有货",true),new ActFlowInfo.Detail("0","缺货",false)
        ));
        ordersFlowMap.put("待发货",new ActFlowInfo("","马上发货"));
        ordersFlowMap.put("审核退货",new ActFlowInfo("r","审核退货",
                new ActFlowInfo.Detail("1","不能退货"),new ActFlowInfo.Detail("2","不需寄回")
                ,new ActFlowInfo.Detail("3","需要寄回")
        ));
        ordersFlowMap.put("退货退款",new ActFlowInfo("","退货退款"));
        ordersFlowMap.put("确认寄回商品",new ActFlowInfo("","确认寄回商品"));
        ordersFlowMap.put("寄回退款",new ActFlowInfo("","寄回退款"));
    }

    public static ActFlowInfo getOrdersFlow(String taskName){
        return ordersFlowMap.get(taskName);
    }


}
