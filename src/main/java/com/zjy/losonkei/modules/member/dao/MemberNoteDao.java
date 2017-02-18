/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.member.entity.MemberNote;

/**
 * 会员消息DAO接口
 * @author zjy
 * @version 2017-02-18
 */
@MyBatisDao
public interface MemberNoteDao extends CrudDao<MemberNote> {
	
}