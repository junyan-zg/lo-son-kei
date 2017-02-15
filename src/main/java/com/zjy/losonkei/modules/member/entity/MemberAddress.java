/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.entity;

import com.zjy.losonkei.modules.sys.entity.CountryArea;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 会员收货地址Entity
 * @author zjy
 * @version 2017-01-01
 */
public class MemberAddress extends DataEntity<MemberAddress> {
	
	private static final long serialVersionUID = 1L;
	private CountryArea area;		// 所在地区id
	private CountryArea city;		// 所在城市id
	private CountryArea province;		// 所在省份id
	private String address;		// 地址
	private String trueName;		// 真实姓名
	private String phone;
	private String defaultFlag;		// 是否默认地址，0否，1是
	private String memberId;		// 会员id

	public MemberAddress() {
		super();
	}

	public MemberAddress(String id){
		super(id);
	}

	public CountryArea getArea() {
		return area;
	}

	public void setArea(CountryArea area) {
		this.area = area;
	}
	
	public CountryArea getCity() {
		return city;
	}

	public void setCity(CountryArea city) {
		this.city = city;
	}
	
	public CountryArea getProvince() {
		return province;
	}

	public void setProvince(CountryArea province) {
		this.province = province;
	}
	
	@Length(min=0, max=128, message="地址长度必须介于 0 和 128 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=1, max=1, message="是否默认地址，0默认，1非默认长度必须介于 1 和 1 之间")
	public String getDefaultFlag() {
		return defaultFlag;
	}

	public void setDefaultFlag(String defaultFlag) {
		this.defaultFlag = defaultFlag;
	}
	
	@Length(min=0, max=64, message="会员id长度必须介于 0 和 64 之间")
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}