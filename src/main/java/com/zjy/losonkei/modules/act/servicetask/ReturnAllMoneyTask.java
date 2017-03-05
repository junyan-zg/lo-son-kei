package com.zjy.losonkei.modules.act.servicetask;

import com.zjy.losonkei.common.utils.SpringContextHolder;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.entity.MemberAccount;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.service.MemberAccountService;
import com.zjy.losonkei.modules.member.service.MemberNoteService;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.service.OrdersService;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;

/**
 * Created by zjy on 2017/2/5.
 *
 * activiti shopping.bpmn的全额退款service task
 */
public class ReturnAllMoneyTask implements JavaDelegate {

    private static OrdersService ordersService = SpringContextHolder.getBean(OrdersService.class);

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        Thread.sleep(10 * 1000);
        ordersService.returnAllMoneyTask(execution);
    }
}
