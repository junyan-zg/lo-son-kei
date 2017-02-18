/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.entity;

import com.zjy.losonkei.modules.member.entity.Member;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 会员消息Entity
 * @author zjy
 * @version 2017-02-18
 */
public class MemberNote extends DataEntity<MemberNote> {
	
	private static final long serialVersionUID = 1L;
	private String content;		// 消息内容
	private Member member;		// 会员id
	private String ordersId;		// 订单id，有时填写

	public MemberNote(String memberId,String content){
		super();
		this.member = new Member(memberId);
		this.content = content;
	}

	public MemberNote(String memberId,String content,String ordersId){
		this(memberId,content);
		this.ordersId = ordersId;
	}

	public MemberNote() {
		super();
	}

	public MemberNote(String id){
		super(id);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	@Length(min=0, max=64, message="订单id，有时填写长度必须介于 0 和 64 之间")
	public String getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(String ordersId) {
		this.ordersId = ordersId;
	}
	
}