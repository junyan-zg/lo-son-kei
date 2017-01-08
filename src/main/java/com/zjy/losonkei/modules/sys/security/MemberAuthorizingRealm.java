/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.sys.security;

import com.zjy.losonkei.common.config.Global;
import com.zjy.losonkei.common.security.shiro.session.SessionDAO;
import com.zjy.losonkei.common.utils.Encodes;
import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.service.MemberService;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.service.SystemService;
import org.apache.shiro.authc.*;
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
	private MemberService memberService;

	/**
	 * 认证回调函数, 登录时调用
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) {
		System.out.println("认证");

		if(authcToken instanceof UsernamePasswordToken){
			return null;
		}
		System.out.println("认证2");

		org.apache.shiro.authc.UsernamePasswordToken token = (org.apache.shiro.authc.UsernamePasswordToken) authcToken;

		// 校验用户名密码
		Member member = memberService.getByAccount(token.getUsername());
		if (member != null) {
			if (Member.STATE_DISABLED.equals(member.getMemberState())){
				throw new LockedAccountException("msg:该帐号已禁止登录.");
			}
			User user = new User();
			user.setId(member.getId());
			byte[] salt = Encodes.decodeHex(member.getMemberPwd().substring(0,16));
			return new SimpleAuthenticationInfo(new Principal(user),member.getMemberPwd().substring(16), ByteSource.Util.bytes(salt), getName());
		} else {
			return null;
		}
		//createToken不要加密
		//info要加密
	}

	/**
	 * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("授权");

		Principal principal = (Principal) getAvailablePrincipal(principals);

		if(principal.isCompanyUser()){
			return null;
		}

		Member member = memberService.get(principal.getId());

		if(member != null){
			SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
			info.addRole("member");
			System.out.println("添加角色member");
			return info;
		}else{
			return null;
		}

		// 添加用户权限
		//info.addStringPermission("");
		//info.addStringPermission("member");
		// 添加用户角色信息
//		if (!principal.isCompanyUser()){
//			info.addRole("member");
//		}

	}

	/**
	 * 设定密码校验的Hash算法与迭代次数
	 */
	@PostConstruct
	public void initCredentialsMatcher() {
		HashedCredentialsMatcher matcher = new HashedCredentialsMatcher(MemberUtils.HASH_ALGORITHM);
		matcher.setHashIterations(MemberUtils.HASH_INTERATIONS);
		setCredentialsMatcher(matcher);
	}


}
