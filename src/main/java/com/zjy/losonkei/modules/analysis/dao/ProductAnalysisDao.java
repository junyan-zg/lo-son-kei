package com.zjy.losonkei.modules.analysis.dao;

import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.analysis.entity.Analysis;

import java.util.List;

/**
 * Created by zjy on 2017/3/12.
 */
@MyBatisDao
public interface ProductAnalysisDao {

    List<Analysis> count(Analysis analysis);
    List<Analysis> countSuccess(Analysis analysis);
}
