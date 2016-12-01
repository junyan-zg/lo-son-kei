package com.zjy.losonkei.modules.product.web;

/**
 * Created by zjy on 2016/11/13.
 */

import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.product.service.ActivitiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * 新产品研发Controller
 */
@Controller
@RequestMapping("${adminPath}/product/act/")
public class ActController {

    //taskName,forward
    private static final Map<String,String> rounter = new HashMap<String, String>();

    static {
        rounter.put("","");
    }

    @Autowired
    private ActivitiService activitiService;

    @RequestMapping("ready/todo/list")
    public String currentInventList(Act act,Model model){
        model.addAttribute("list",activitiService.todoList(act));
        return "modules/product/invent/actCurrentInventList";
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
