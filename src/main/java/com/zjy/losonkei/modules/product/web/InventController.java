package com.zjy.losonkei.modules.product.web;

/**
 * Created by zjy on 2016/11/13.
 */

import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.product.service.ActivitiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 新产品研发Controller
 */
@Controller
@RequestMapping("${adminPath}/product")
public class InventController {

    @Autowired
    private ActivitiService activitiService;

    @RequestMapping("/act/current/invent/list")
    public String currentInventList(Act act,Model model){
        model.addAttribute("list",activitiService.todoList(act));
        return "modules/product/invent/actCurrentInventList";
    }
}
