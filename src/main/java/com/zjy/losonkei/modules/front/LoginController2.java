package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.sys.security.Principal;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/12/19.
 */
@Controller
public class LoginController2 extends BaseController{

    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String loginCheck(){
        System.out.println("login success");
        Subject subject = SecurityUtils.getSubject();
        Principal principal = (Principal)subject.getPrincipal();
        return "redirect:/";
    }

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login(){
        System.out.println("go to login");
        return "modules/front/login";
    }

    @RequestMapping(value="${frontPath}/success")
    public String success(){
        System.out.println("page success");
        return "modules/front/success";
    }
}
