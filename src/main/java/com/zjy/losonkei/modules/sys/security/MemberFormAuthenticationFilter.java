/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.security;

import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 * 前端表单验证（不包含验证码）过滤类
 * @author zjy
 * @version 2016-12-19
 */
@Service
public class MemberFormAuthenticationFilter extends org.apache.shiro.web.filter.authc.FormAuthenticationFilter {

	public static final String DEFAULT_MESSAGE_PARAM = "message";

	private final String SUCCESS_URL = "";

	private final String LOGIN_URL = "/login";

	@Autowired
	private MemberService memberService;

	protected AuthenticationToken createToken(ServletRequest request, ServletResponse response) {
		System.out.println("createToken");
		String username = getUsername(request);
		String password = getPassword(request);
		if (password == null){
			password = "";
		}
		boolean rememberMe = isRememberMe(request);
		String host = StringUtils.getRemoteAddr((HttpServletRequest)request);
		return new org.apache.shiro.authc.UsernamePasswordToken(username, password.toCharArray(), rememberMe, host);
	}

	@Override
	public String getLoginUrl() {
		return LOGIN_URL;
	}

	/**
	 * 登录成功之后跳转URL
	 */
	public String getSuccessUrl() {
		return SUCCESS_URL;
	}


	/**
	 * 登录失败调用事件
	 */
	@Override
	protected boolean onLoginFailure(AuthenticationToken token,
			AuthenticationException e, ServletRequest request, ServletResponse response) {
		System.out.println("onLoginFailure");
		String className = e.getClass().getName(), message = "";
		if (IncorrectCredentialsException.class.getName().equals(className)
				|| UnknownAccountException.class.getName().equals(className)){
			message = "账号或密码错误，请重试.";
		}
		else if (e.getMessage() != null && StringUtils.startsWith(e.getMessage(), "msg:")){
			message = StringUtils.replace(e.getMessage(), "msg:", "");
		}
		else if(AuthenticationException.class.getName().equals(className)){
			message = "账号或密码错误，请重试.";
		}
		else{
			message = "系统出现点问题，请稍后再试！";
			e.printStackTrace(); // 输出到控制台
		}
        request.setAttribute(getFailureKeyAttribute(), className);
        request.setAttribute(DEFAULT_MESSAGE_PARAM, message);
        return true;
	}

	@Override
	protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request, ServletResponse response) throws Exception {
		memberService.updateLoginNum(UserUtils.getPrincipal().getId());
		return super.onLoginSuccess(token, subject, request, response);
	}
}