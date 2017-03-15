package com.zjy.losonkei.modules.analysis.dao;

import com.zjy.losonkei.common.persistence.annotation.MyBatisDao;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by zjy on 2017/3/12.
 */
@MyBatisDao
public interface SaleAnalysisDao {

    public List<Goods> goodsCount(Goods goods);

    public Integer getOrdersCount(Analysis analysis);

    public BigDecimal getPriceAllCount(Analysis analysis);

    public BigDecimal getProfitCount(Analysis analysis);

    public Integer getGoodsSaleCount(Analysis analysis);

    public List<GoodsAll> getTop50GoodsSaleCount(Analysis analysis);

}
