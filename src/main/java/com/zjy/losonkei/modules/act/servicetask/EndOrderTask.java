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

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        ordersService.endOrderTask(execution);
    }
}
