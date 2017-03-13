package com.zjy.losonkei.modules.analysis.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.modules.analysis.dao.SaleAnalysisDao;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.SearchRecord;
import com.zjy.losonkei.modules.goods.service.SearchRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by zjy on 2017/3/12.
 */
@Transactional(readOnly = true)
@Service
public class SaleAnalysisService {

    @Autowired
    private SaleAnalysisDao saleAnalysisDao;
    @Autowired
    private SearchRecordService searchRecordService;

    public Page<Goods> goodsCount(Page<Goods> pages, Goods goods){
        goods.setPage(pages);
        pages.setList(saleAnalysisDao.goodsCount(goods));
        return pages;
    }

    public Page<SearchRecord> searchRecord(Page<SearchRecord> pages, SearchRecord searchRecord){
        searchRecord.setPage(pages);
        pages.setList(searchRecordService.count(searchRecord));
        return pages;
    }
}
