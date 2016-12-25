package com.zjy.losonkei.modules.sys.security;

import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.shiro.SecurityUtils;

import java.io.Serializable;
import java.security.Security;

/**
 * 授权用户信息
 */
public class Principal implements Serializable {

    private static final long serialVersionUID = 1L;

    private String id; // 编号
    private String loginName; // 登录名
    private String name; // 姓名
    private boolean mobileLogin; // 是否手机登录
    private boolean isCompanyUser = true;//是公司员工

//		private Map<String, Object> cacheMap;

    public Principal() {
    }

    public Principal(User user) {
        this.id = user.getId();
        this.loginName = user.getLoginName();
        this.name = user.getName();
        isCompanyUser = false;
    }

    public Principal(User user, boolean mobileLogin) {
        this.id = user.getId();
        this.loginName = user.getLoginName();
        this.name = user.getName();
        this.mobileLogin = mobileLogin;
    }

    public String getId() {
        return id;
    }

    public String getLoginName() {
        return loginName;
    }

    public String getName() {
        return name;
    }

    public boolean isMobileLogin() {
        return mobileLogin;
    }

    @Override
    public String toString() {
        return id;
    }


    /**
     * 获取SESSIONID
     */
    public String getSessionid() {
        try {
            return (String) SecurityUtils.getSubject().getSession().getId();
        } catch (Exception e) {
            return "";
        }
    }

    public boolean isCompanyUser() {
        return isCompanyUser;
    }

}