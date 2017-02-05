package com.zjy.losonkei.modules.act.utils;

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
    //确认收货 15天
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
}
