/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.member.dao;

import com.zjy.losonkei.common.persistence.CrudDao;
import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.member.entity.MemberAccount;

/**
 * 会员资金流动表DAO接口
 * @author zjy
 * @version 2017-02-08
 */
@MyBatisDao
public interface MemberAccountDao extends CrudDao<MemberAccount> {
	
}