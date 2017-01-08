/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.entity;

import org.hibernate.validator.constraints.Length;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 会员Entity
 * @author zjy
 * @version 2016-12-29
 */
public class Member extends DataEntity<Member> {
	
	private static final long serialVersionUID = 1L;
	private String memberAccount;		// 会员账号
	private String memberName;		// 会员名称
	private String memberTruename;		// 真实姓名
	private String memberPwd;		// 会员密码
	private String memberPaypwd;		// 支付密码
	private Date memberAddtime;		// 注册时间
	private Integer memberPoints;		// 会员积分
	private String memberState;		// 启用状态
	private String memberLoginnum;		// 登录次数
	private BigDecimal memberBalance;		// 会员余额


	private String memberPwdAgain;
	private String memberPaypwdAgain;

	private Date beginMemberAddtime;		// 开始 注册时间
	private Date endMemberAddtime;		// 结束 注册时间
	private Integer beginMemberPoints;		// 开始 会员积分
	private Integer endMemberPoints;		// 结束 会员积分
	private String beginMemberLoginnum;		// 开始 登录次数
	private String endMemberLoginnum;		// 结束 登录次数

	public final static String STATE_ENABLED = "1";	//启用
	public final static String STATE_DISABLED = "0";	//禁用

	private MemberDetails memberDetails;
	
	public Member() {
		super();
	}

	public Member(String id){
		super(id);
	}

	@Length(min=1, max=64, message="会员账号长度必须介于 1 和 64 之间")
	public String getMemberAccount() {
		return memberAccount;
	}

	public void setMemberAccount(String memberAccount) {
		this.memberAccount = memberAccount;
	}
	
	@Length(min=1, max=64, message="会员名称长度必须介于 1 和 64 之间")
	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	@Length(min=0, max=20, message="真实姓名长度必须介于 0 和 20 之间")
	public String getMemberTruename() {
		return memberTruename;
	}

	public void setMemberTruename(String memberTruename) {
		this.memberTruename = memberTruename;
	}
	
	@Length(min=1, max=64, message="会员密码长度必须介于 1 和 64 之间")
	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}
	
	@Length(min=0, max=64, message="支付密码长度必须介于 0 和 64 之间")
	public String getMemberPaypwd() {
		return memberPaypwd;
	}

	public void setMemberPaypwd(String memberPaypwd) {
		this.memberPaypwd = memberPaypwd;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="注册时间不能为空")
	public Date getMemberAddtime() {
		return memberAddtime;
	}

	public void setMemberAddtime(Date memberAddtime) {
		this.memberAddtime = memberAddtime;
	}
	
	@NotNull(message="会员积分不能为空")
	public Integer getMemberPoints() {
		return memberPoints;
	}

	public void setMemberPoints(Integer memberPoints) {
		this.memberPoints = memberPoints;
	}
	
	@Length(min=1, max=4, message="启用状态长度必须介于 1 和 4 之间")
	public String getMemberState() {
		return memberState;
	}

	public void setMemberState(String memberState) {
		this.memberState = memberState;
	}
	
	@Length(min=0, max=10, message="登录次数长度必须介于 0 和 10 之间")
	public String getMemberLoginnum() {
		return memberLoginnum;
	}

	public void setMemberLoginnum(String memberLoginnum) {
		this.memberLoginnum = memberLoginnum;
	}
	
	public BigDecimal getMemberBalance() {
		return memberBalance;
	}

	public void setMemberBalance(BigDecimal memberBalance) {
		this.memberBalance = memberBalance;
	}
	
	public Date getBeginMemberAddtime() {
		return beginMemberAddtime;
	}

	public void setBeginMemberAddtime(Date beginMemberAddtime) {
		this.beginMemberAddtime = beginMemberAddtime;
	}
	
	public Date getEndMemberAddtime() {
		return endMemberAddtime;
	}

	public void setEndMemberAddtime(Date endMemberAddtime) {
		this.endMemberAddtime = endMemberAddtime;
	}
		
	public Integer getBeginMemberPoints() {
		return beginMemberPoints;
	}

	public void setBeginMemberPoints(Integer beginMemberPoints) {
		this.beginMemberPoints = beginMemberPoints;
	}
	
	public Integer getEndMemberPoints() {
		return endMemberPoints;
	}

	public void setEndMemberPoints(Integer endMemberPoints) {
		this.endMemberPoints = endMemberPoints;
	}
		
	public String getBeginMemberLoginnum() {
		return beginMemberLoginnum;
	}

	public void setBeginMemberLoginnum(String beginMemberLoginnum) {
		this.beginMemberLoginnum = beginMemberLoginnum;
	}
	
	public String getEndMemberLoginnum() {
		return endMemberLoginnum;
	}

	public void setEndMemberLoginnum(String endMemberLoginnum) {
		this.endMemberLoginnum = endMemberLoginnum;
	}

	public String getMemberPwdAgain() {
		return memberPwdAgain;
	}

	public void setMemberPwdAgain(String memberPwdAgain) {
		this.memberPwdAgain = memberPwdAgain;
	}

	public String getMemberPaypwdAgain() {
		return memberPaypwdAgain;
	}

	public void setMemberPaypwdAgain(String memberPaypwdAgain) {
		this.memberPaypwdAgain = memberPaypwdAgain;
	}

	public MemberDetails getMemberDetails() {
		return memberDetails;
	}

	public void setMemberDetails(MemberDetails memberDetails) {
		this.memberDetails = memberDetails;
	}
}