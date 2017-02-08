/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.member.entity.MemberAccount;
import com.zjy.losonkei.modules.member.dao.MemberAccountDao;

/**
 * 会员资金流动表Service
 * @author zjy
 * @version 2017-02-08
 */
@Service
@Transactional(readOnly = true)
public class MemberAccountService extends CrudService<MemberAccountDao, MemberAccount> {

	public MemberAccount get(String id) {
		return super.get(id);
	}
	
	public List<MemberAccount> findList(MemberAccount memberAccount) {
		return super.findList(memberAccount);
	}
	
	public Page<MemberAccount> findPage(Page<MemberAccount> page, MemberAccount memberAccount) {
		return super.findPage(page, memberAccount);
	}
	
	@Transactional(readOnly = false)
	public void save(MemberAccount memberAccount) {
		super.save(memberAccount);
	}
	
	@Transactional(readOnly = false)
	public void delete(MemberAccount memberAccount) {
		super.delete(memberAccount);
	}
	
}