package com.zjy.losonkei.modules.act.servicetask;

import com.zjy.losonkei.common.utils.SpringContextHolder;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.service.MemberNoteService;
import com.zjy.losonkei.modules.orders.entity.Orders;
import com.zjy.losonkei.modules.orders.service.OrdersService;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;

import java.math.BigDecimal;

/**
 * Created by zjy on 2017/2/5.
 *
 * activiti shopping.bpmn的结束订单service task
 */
public class EndOrderTask implements JavaDelegate {

    private static OrdersService ordersService = SpringContextHolder.getBean(OrdersService.class);
    private static MemberNoteService memberNoteService = SpringContextHolder.getBean(MemberNoteService.class);

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        String ordersId = execution.getProcessBusinessKey();
        Orders orders = ordersService.get(ordersId);
        orders.setFlag(Orders.FLAG_FAILED);
        orders.setProcessState(execution.getCurrentActivityId());

        memberNoteService.save(new MemberNote(orders.getMemberId(),"您未在15分钟内完成支付，订单已被取消。",ordersId));

        ordersService.update(orders);
    }
}
