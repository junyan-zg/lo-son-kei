package com.zjy.losonkei.modules.analysis.dao;

import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.goods.entity.Goods;

import java.util.List;

/**
 * Created by zjy on 2017/3/12.
 */
@MyBatisDao
public interface SaleAnalysisDao {

    public List<Goods> goodsCount(Goods goods);
}
