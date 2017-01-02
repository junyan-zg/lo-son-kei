/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.member.entity.Member;

/**
 * 会员DAO接口
 * @author zjy
 * @version 2016-12-29
 */
@MyBatisDao
public interface MemberDao extends CrudDao<Member> {

    public Member getByAccount(String memberAccount);
}