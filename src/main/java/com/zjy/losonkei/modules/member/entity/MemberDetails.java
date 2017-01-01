/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 会员详细Entity
 * @author zjy
 * @version 2017-01-01
 */
public class MemberDetails extends DataEntity<MemberDetails> {
	
	private static final long serialVersionUID = 1L;
	private String memberSex;		// 会员性别：0为女，男为1
	private Date memberBirthday;		// 生日
	private String memberEmail;		// 邮箱
	private String memberMobile;		// 移动电话
	private String memberQq;		// QQ号码
	
	public MemberDetails() {
		super();
	}

	public MemberDetails(String id){
		super(id);
	}

	@Length(min=0, max=4, message="会员性别：0为女，男为1长度必须介于 0 和 4 之间")
	public String getMemberSex() {
		return memberSex;
	}

	public void setMemberSex(String memberSex) {
		this.memberSex = memberSex;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(Date memberBirthday) {
		this.memberBirthday = memberBirthday;
	}
	
	@Length(min=0, max=100, message="邮箱长度必须介于 0 和 100 之间")
	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	
	@Length(min=0, max=20, message="移动电话长度必须介于 0 和 20 之间")
	public String getMemberMobile() {
		return memberMobile;
	}

	public void setMemberMobile(String memberMobile) {
		this.memberMobile = memberMobile;
	}
	
	@Length(min=0, max=20, message="QQ号码长度必须介于 0 和 50 之间")
	public String getMemberQq() {
		return memberQq;
	}

	public void setMemberQq(String memberQq) {
		this.memberQq = memberQq;
	}
	
}