/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.zjy.losonkei.common.utils.StringUtils;
import com.zjy.losonkei.modules.member.dao.MemberDetailsDao;
import com.zjy.losonkei.modules.member.entity.MemberDetails;
import com.zjy.losonkei.modules.member.utils.MemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
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

	@Autowired
	private MemberDetailsDao memberDetailsDao;

	public Member get(String id) {
		return super.get(id);
	}

	public Member getByAccount(String account) {
		return dao.getByAccount(account);
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

	@Transactional(readOnly = false)
	public String doRegister(Member member){
		Member memberDB = getByAccount(member.getMemberAccount());
		if (memberDB != null){
			System.out.println("该账号已存在");
			return "该账号已存在";
		}

		//注册会员默认为启用，默认有2000余额
		member.setMemberState(Member.STATE_ENABLED);
		member.setMemberBalance(new BigDecimal(2000));
		member.setMemberPoints(0);
		member.setMemberAddtime(new Date());
		member.setMemberPwd(MemberUtils.entryptPassword(member.getMemberPwd()));
		member.setMemberPaypwd(MemberUtils.entryptPassword(member.getMemberPaypwd()));

		super.save(member);

		MemberDetails memberDetails = member.getMemberDetails();
		memberDetails.preInsert();
		memberDetails.setId(member.getId());
		if(StringUtils.isBlank(memberDetails.getMemberSex())){
			memberDetails.setMemberSex(null);
		}
		memberDetailsDao.insert(memberDetails);

		return "OK";
	}
}