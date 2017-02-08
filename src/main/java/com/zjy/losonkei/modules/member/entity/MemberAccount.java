/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.entity;

import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;

/**
 * 会员资金流动表Entity
 * @author zjy
 * @version 2017-02-08
 */
public class MemberAccount extends DataEntity<MemberAccount> {
	
	private static final long serialVersionUID = 1L;
	private String memberId;		// 会员id
	private String processType;		// 流动类型0充值1付款2退款
	private BigDecimal amount;		// 资金变化数目，正为增，负为减
	private String payment = "0";		// 支付方式
	
	public MemberAccount() {
		super();
	}

	public MemberAccount(String id){
		super(id);
	}

	@Length(min=0, max=64, message="会员id长度必须介于 0 和 64 之间")
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	@Length(min=0, max=4, message="流动类型0充值1付款2退款长度必须介于 0 和 4 之间")
	public String getProcessType() {
		return processType;
	}

	public void setProcessType(String processType) {
		this.processType = processType;
	}
	
	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	
	@Length(min=0, max=4, message="支付方式长度必须介于 0 和 4 之间")
	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}
	
}