/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.member.entity.MemberAddress;
import com.zjy.losonkei.modules.member.dao.MemberAddressDao;

/**
 * 会员收货地址Service
 * @author zjy
 * @version 2017-01-01
 */
@Service
@Transactional(readOnly = true)
public class MemberAddressService extends CrudService<MemberAddressDao, MemberAddress> {

	public MemberAddress get(String id) {
		return super.get(id);
	}
	
	public List<MemberAddress> findList(MemberAddress memberAddress) {
		return super.findList(memberAddress);
	}

	public List<MemberAddress> findListByMemberId(String memberId) {
		MemberAddress memberAddress = new MemberAddress();
		memberAddress.setMemberId(memberId);
		return super.findList(memberAddress);
	}
	
	public Page<MemberAddress> findPage(Page<MemberAddress> page, MemberAddress memberAddress) {
		return super.findPage(page, memberAddress);
	}
	
	@Transactional(readOnly = false)
	public void save(MemberAddress memberAddress) {
		super.save(memberAddress);
	}
	
	@Transactional(readOnly = false)
	public void delete(MemberAddress memberAddress) {
		super.delete(memberAddress);
	}
	
}