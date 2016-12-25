/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.security;

import com.zjy.losonkei.common.security.shiro.session.SessionDAO;
import com.zjy.losonkei.common.utils.Encodes;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.service.SystemService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.io.Serializable;

/**
 * 会员安全认证实现类
 * @author ThinkGem
 * @version 2014-7-5
 */
@Service
public class MemberAuthorizingRealm extends AuthorizingRealm {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private SessionDAO sessionDao;

	/**
	 * 认证回调函数, 登录时调用
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) {
		System.out.println("认证");
		org.apache.shiro.authc.UsernamePasswordToken token = (org.apache.shiro.authc.UsernamePasswordToken) authcToken;
		
		int activeSessionSize = sessionDao.getActiveSessions(false).size();
		if (logger.isDebugEnabled()){
			logger.debug("login submit, active session size: {}, username: {}", activeSessionSize, token.getUsername());
		}

		if (!"mm".equals(token.getUsername())){
			throw new AuthenticationException();
		}

		// 校验用户名密码

		User user = new User();
		//throw new AuthenticationException("msg:该已帐号禁止登录.");
		user.setId("hszgihwgaiu");
		user.setLoginName(token.getUsername());
		user.setName(token.getUsername());
		user.setPassword(String.valueOf(token.getPassword()));
		byte[] salt = Encodes.decodeHex("02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032".substring(0,16));
		return new SimpleAuthenticationInfo(new Principal(user),
					"02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032".substring(16), ByteSource.Util.bytes(salt), getName());

		//createToken不要加密
		//info加密
	}

	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("授权");

		Object availablePrincipal = getAvailablePrincipal(principals);

		Principal principal = (Principal) availablePrincipal;

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		// 添加用户权限
		//info.addStringPermission("");
		//info.addStringPermission("member");
		// 添加用户角色信息
		if (!principal.isCompanyUser()){
			info.addRole("member");
		}
		// 更新登录IP和时间
		//getSystemService().updateUserLoginInfo(user);
		// 记录登录日志
		//LogUtils.saveLog(Servlets.getRequest(), "系统登录");
		return info;

	}

	/**
	 * 设定密码校验的Hash算法与迭代次数
	 */
	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(SystemService.HASH_ALGORITHM);
		matcher.setHashIterations(SystemService.HASH_INTERATIONS);
		setCredentialsMatcher(matcher);
	}


}
