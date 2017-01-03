package com.zjy.losonkei.modules.front;

import com.zjy.losonkei.common.web.BaseController;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.sys.security.Principal;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zjy on 2016/12/19.
 */
@Controller("com.zjy.losonkei.modules.front.LoginController")
public class LoginController extends BaseController{

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login(Model model,Member member){
        model.addAttribute("isLogin","yes");
        return "modules/front/login";
    }

    @RequestMapping(value="/register")
    public String register(Member member){
        return "modules/front/login";
    }


    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String loginCheck(Model model,HttpServletRequest request,Member member){
        Subject subject = SecurityUtils.getSubject();
        Principal principal = (Principal)subject.getPrincipal();
        if(principal == null){
            System.out.println("loginFail");
            model.addAttribute("isLogin","yes");

            String username = WebUtils.getCleanParam(request,FormAuthenticationFilter.DEFAULT_USERNAME_PARAM);
            boolean rememberMe = WebUtils.isTrue(request, FormAuthenticationFilter.DEFAULT_REMEMBER_ME_PARAM);

            model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, username);
            model.addAttribute(FormAuthenticationFilter.DEFAULT_REMEMBER_ME_PARAM, rememberMe);
            return "modules/front/login";
        }else{
            System.out.println("loginSuccess");
            return "redirect:/";
        }
    }

    @RequestMapping(value="${frontPath}/success")
    public String success(HttpServletResponse response) throws IOException {
        System.out.println("page success");
        return "modules/front/success";
    }

}
