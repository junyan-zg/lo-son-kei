package com.zjy.losonkei.modules.goods.utils;

import com.zjy.losonkei.common.utils.SpringContextHolder;
import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.entity.GoodsAll;
import com.zjy.losonkei.modules.goods.entity.GoodsSpecificationValue;
import com.zjy.losonkei.modules.goods.service.GoodsAllService;
import com.zjy.losonkei.modules.goods.service.GoodsService;
import com.zjy.losonkei.modules.goods.service.GoodsSpecificationValueService;

import java.util.List;

/**
 * Created by zjy on 2016/10/28.
 */
public class GoodsAllUtils {

    private static GoodsSpecificationValueService goodsSpecificationValueService = SpringContextHolder.getBean(GoodsSpecificationValueService.class);

    private static GoodsService goodsService = SpringContextHolder.getBean(GoodsService.class);

    private static GoodsAllService goodsAllService = SpringContextHolder.getBean(GoodsAllService.class);

    /**
     * 填充实体GoodsAll的属性
     * @param goodsAll
     * @param fillGoods
     * @return
     */
    public static GoodsAll fillProperty(GoodsAll goodsAll,boolean fillGoods){
        GoodsSpecificationValue goodsSpecificationValue = new GoodsSpecificationValue();
        goodsSpecificationValue.setGoodsId(goodsAll.getGoodsId());
        goodsSpecificationValue.setSpecificationGroup(goodsAll.getSpecificationGroup());
        goodsAll.setGoodsSpecificationValues(goodsSpecificationValueService.findList(goodsSpecificationValue));
        if (fillGoods){
            goodsAll.setGoods(goodsService.get(goodsAll.getGoodsId()));
        }
        return goodsAll;
    }

    public static List<GoodsAll> getGoodsAllByGoodsId(String goodsId){
        GoodsAll goodsAll = new GoodsAll();
        goodsAll.setGoodsId(goodsId);
        return goodsAllService.findList(goodsAll);
    }
}
