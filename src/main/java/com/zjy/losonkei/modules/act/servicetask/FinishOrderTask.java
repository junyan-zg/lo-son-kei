package com.zjy.losonkei.modules.act.servicetask;

import com.zjy.losonkei.common.utils.SpringContextHolder;
import com.zjy.losonkei.modules.orders.service.OrdersService;
import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;

/**
 * Created by zjy on 2017/2/5.
 *
 * activiti shopping.bpmn的完成订单service task
 */
public class FinishOrderTask implements JavaDelegate {

    private static OrdersService ordersService = SpringContextHolder.getBean(OrdersService.class);

    @Override
    public void execute(DelegateExecution execution) throws Exception {
        new MyThread(execution.getProcessBusinessKey(),execution.getCurrentActivityId()){
            @Override
            public void run() {
                try {
                    Thread.sleep(15 * 1000);
                } catch (InterruptedException e) {}
                ordersService.finishOrderTask(this.getB(),this.getA());
            }
        }.start();
    }
}
