/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.member.entity.Member;
import com.zjy.losonkei.modules.member.dao.MemberDao;

/**
 * 会员Service
 * @author zjy
 * @version 2016-12-29
 */
@Service
@Transactional(readOnly = true)
public class MemberService extends CrudService<MemberDao, Member> {

	public Member get(String id) {
		return super.get(id);
	}
	
	public List<Member> findList(Member member) {
		return super.findList(member);
	}
	
	public Page<Member> findPage(Page<Member> page, Member member) {
		return super.findPage(page, member);
	}
	
	@Transactional(readOnly = false)
	public void save(Member member) {
		super.save(member);
	}
	
	@Transactional(readOnly = false)
	public void delete(Member member) {
		super.delete(member);
	}
	
}