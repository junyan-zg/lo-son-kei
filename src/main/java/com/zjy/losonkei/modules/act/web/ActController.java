package com.zjy.losonkei.modules.act.web;

/**
 * Created by zjy on 2016/11/13.
 */

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.act.service.ActivitiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;

/**
 * Act Controller
 */
@Controller
@RequestMapping("${adminPath}/act/")
public class ActController extends BaseController{

    @Autowired
    private ActivitiService activitiService;

    @RequestMapping("ready/todo/list")
    public String readyTodoList(Act act,Model model){
        model.addAttribute("list",activitiService.todoList(act));
        return "modules/activiti/readyToDoList";
    }

    @RequestMapping("history/list")
    public String historyList(Act act, Model model, HttpServletRequest request,HttpServletResponse response){
        act.setPage(new Page<Act>(request,response));
        act.getPage().setList(activitiService.historyList(act));
        return "modules/activiti/historyList";
    }

    /**
     * 读取带跟踪的图片
     */
    @RequestMapping(value = "trace/photo/{procDefId}/{execId}")
    public void tracePhoto(@PathVariable("procDefId") String procDefId, @PathVariable("execId") String execId, HttpServletResponse response) throws Exception {
        InputStream imageStream = activitiService.tracePhoto(procDefId, execId);
        // 输出资源内容到相应对象
        byte[] b = new byte[1024];
        int len;
        while ((len = imageStream.read(b, 0, 1024)) != -1) {
            response.getOutputStream().write(b, 0, len);
        }
    }

}
