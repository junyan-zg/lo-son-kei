package com.zjy.losonkei.modules.goods.entity;

import com.zjy.losonkei.common.utils.StringUtils;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by zjy on 2017/1/18.
 */
public class GoodsSearch implements Serializable {

    private String categoryId;

    private String keywords;

    private String sort;

    private String sortBy;//如果为空，则按更新排序

    private String priceB;

    private String priceE;

    private String firstLevelCategoryId;//一般是一级分类，如果categoryId本身是一级分类，则两者相同

    private List<GoodsCategory> categories;

    private String pageNo;

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String getSortBy() {
        return sortBy;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public String getPriceB() {
        return priceB;
    }

    public void setPriceB(String priceB) {
        this.priceB = priceB;
    }

    public String getPriceE() {
        return priceE;
    }

    public void setPriceE(String priceE) {
        this.priceE = priceE;
    }

    public List<GoodsCategory> getCategories() {
        return categories;
    }

    public void setCategories(List<GoodsCategory> categories) {
        this.categories = categories;
    }

    public String getFirstLevelCategoryId() {
        return firstLevelCategoryId;
    }

    public void setFirstLevelCategoryId(String firstLevelCategoryId) {
        this.firstLevelCategoryId = firstLevelCategoryId;
    }


    public String getOrderBy(){
        if (this.sort == null){
            this.sort = "asc";
        }else {
            this.sort = this.sort.toLowerCase().trim();
            if (!"asc".equals(this.sort) &&  !"desc".equals(this.sort)){
                this.sort = "asc";
            }
        }
        String result;
        if ("1".equals(this.sortBy)){
            result = "a.price " + this.sort + ", a.sort desc";
        }else if ("2".equals(this.sortBy)){
            result = "a.sales_amount " + this.sort + ", a.sort desc";
        }else{
            this.sortBy = "0";
            result = "a.sort desc";
        }
        return result;
    }

    public String getPageNo() {
        return pageNo;
    }

    public void setPageNo(String pageNo) {
        this.pageNo = pageNo;
    }
}
//规则
//先查询分类id，如果是一级分类，一级分类置为current，我想要显示该一级分类的二级分类

//该分类id如果是二级分类，则如果keyword为空，返回时一级分类置为current，显示当前二级分类
//如果keyword不为空，一级分类不要显示，返回商品对应的分类id
