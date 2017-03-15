package com.zjy.losonkei.modules.analysis.service;

import com.zjy.losonkei.common.persistence.Page;
import com.zjy.losonkei.modules.analysis.dao.SaleAnalysisDao;
import com.zjy.losonkei.modules.analysis.entity.Analysis;
import com.zjy.losonkei.modules.analysis.utils.DateUtils;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.SearchRecord;
import com.zjy.losonkei.modules.goods.service.SearchRecordService;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.*;

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

    /**
     * 只要付款即可
     */
    public Map<String,Object> getAnalysis(String method,String type, Date date) throws ParseException {
        List list = new ArrayList();
        List<String> names = new ArrayList<String>();
        List<DateUtils.DescDate> descDates = DateUtils.getCloseDate(type,date);
        for(int i = 0; i < descDates.size();i++){
            DateUtils.DescDate descDate = descDates.get(i);
            names.add(descDate.getName());
            if ("1".equals(method)){
                Integer count = saleAnalysisDao.getOrdersCount(new Analysis(DateUtils.getBetweenDate(type, descDate.getDate())));
                list.add(count);
            }else if ("2".equals(method)){
                BigDecimal count = saleAnalysisDao.getPriceAllCount(new Analysis(DateUtils.getBetweenDate(type, descDate.getDate())));
                list.add(count);
            }else if ("3".equals(method)){
                Integer count = saleAnalysisDao.getGoodsSaleCount(new Analysis(DateUtils.getBetweenDate(type, descDate.getDate())));
                list.add(count);
            }else if ("4".equals(method)){
                BigDecimal count = saleAnalysisDao.getProfitCount(new Analysis(DateUtils.getBetweenDate(type, descDate.getDate())));
                list.add(count);
            }else{
                return new HashMap<String, Object>();
            }
        }
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("names",names);
        map.put("value",list);
        return map;
    }

    public List<Map<String,Object>> getTop50GoodsSaleCount(String type, Date date) throws ParseException {
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();

        DateUtils.DescDate descDate = DateUtils.getCloseDate(type,date,1).get(0);
        List<GoodsAll> goodsAlls = saleAnalysisDao.getTop50GoodsSaleCount(new Analysis(DateUtils.getBetweenDate(type, descDate.getDate())));
        for (GoodsAll goodsAll:goodsAlls){
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("amount",goodsAll.getStock());//借用stock字段
            map.put("id",goodsAll.getId());
            map.put("sales",goodsAll.getPrice());//借用price字段

            try {
                goodsAll = GoodsAllUtils.getGoodAllById(goodsAll.getId());
                GoodsAllUtils.fillProperty(goodsAll,true);

                map.put("goodsName",goodsAll.getGoods().getGoodsName());
                map.put("spec",GoodsAllUtils.getAllSpecificationDesc(goodsAll));
            }catch (Exception e){}

            list.add(map);
        }
        return list;
    }
}
