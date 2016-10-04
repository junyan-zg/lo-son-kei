package com.zjy.losonkei.modules.sys.security;

import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.session.SessionException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by ZhangJunYan on 2016/10/3.
 */
public class LogoutFilter extends org.apache.shiro.web.filter.authc.LogoutFilter{
    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        //在这里执行退出系统前需要清空的数据
        Subject subject = getSubject(request, response);
        String redirectUrl = getRedirectUrl(request, response, subject);

        try{
            UserUtils.clearCache(UserUtils.getUser());
        }catch (Exception e){

        }

        try {
            subject.logout();
        } catch (Exception e) {
            e.printStackTrace();
        }

        issueRedirect(request, response, redirectUrl);

        //返回false表示不执行后续的过滤器，直接返回跳转到登录页面

        return false;

    }
}
