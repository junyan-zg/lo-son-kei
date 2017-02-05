/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.member.dao.MemberDetailsDao;
import com.zjy.losonkei.modules.member.entity.MemberDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 会员详细Service
 * @author zjy
 * @version 2017-02-06
 */
@Service
@Transactional(readOnly = true)
public class MemberDetailsService extends CrudService<MemberDetailsDao, MemberDetails> {

	public MemberDetails get(String id) {
		return super.get(id);
	}
	
	public List<MemberDetails> findList(MemberDetails MemberDetails) {
		return super.findList(MemberDetails);
	}
	
	public Page<MemberDetails> findPage(Page<MemberDetails> page, MemberDetails MemberDetails) {
		return super.findPage(page, MemberDetails);
	}
	
	@Transactional(readOnly = false)
	public void save(MemberDetails MemberDetails) {
		super.save(MemberDetails);
	}
	
	@Transactional(readOnly = false)
	public void delete(MemberDetails MemberDetails) {
		super.delete(MemberDetails);
	}
	
}