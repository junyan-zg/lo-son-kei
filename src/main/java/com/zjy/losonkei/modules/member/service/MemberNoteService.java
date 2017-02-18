/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.member.entity.MemberNote;
import com.zjy.losonkei.modules.member.dao.MemberNoteDao;

/**
 * 会员消息Service
 * @author zjy
 * @version 2017-02-18
 */
@Service
@Transactional(readOnly = true)
public class MemberNoteService extends CrudService<MemberNoteDao, MemberNote> {

	public MemberNote get(String id) {
		return super.get(id);
	}
	
	public List<MemberNote> findList(MemberNote memberNote) {
		return super.findList(memberNote);
	}
	
	public Page<MemberNote> findPage(Page<MemberNote> page, MemberNote memberNote) {
		return super.findPage(page, memberNote);
	}
	
	@Transactional(readOnly = false)
	public void save(MemberNote memberNote) {
		super.save(memberNote);
	}
	
	@Transactional(readOnly = false)
	public void delete(MemberNote memberNote) {
		super.delete(memberNote);
	}
	
}