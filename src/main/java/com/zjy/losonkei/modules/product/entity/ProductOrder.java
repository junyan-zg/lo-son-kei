/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.entity;

import com.zjy.losonkei.modules.goods.entity.Goods;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 生产订单Entity
 * @author zjy
 * @version 2016-11-21
 */
public class ProductOrder extends DataEntity<ProductOrder> {
	
	private static final long serialVersionUID = 1L;
	private String orderName;		// 生产订单名称
	private String goodsName;		// 商品名称
	private String goodsId;		// 商品id
	private String processInstanceId;		// 流程实例id
	private String processState;		// 当前流程状态
	private BigDecimal budget;		// 预算
	private BigDecimal costAll;		// 实际花费：根据product_log更新
	private String state;		// 状态0进行中1成功2失败
	private String productType;		// 0已有产品生产，1新产品生产

	public final static String PRODUCT_TYPE_OLD = "0";
	public final static String PRODUCT_TYPE_NEW = "1";

	public final static String PRODUCT_STATE_INIT = "0";
	public final static String PRODUCT_STATE_ING = "1";
	public final static String PRODUCT_STATE_SUCCESS = "2";
	public final static String PRODUCT_STATE_FAILED = "3";

	public final static String FLAG_NEW_INVENT = "flagNewInvent";

	public ProductOrder() {
		super();
	}

	public ProductOrder(String id){
		super(id);
	}

	@Length(min=0, max=128, message="生产订单名称长度必须介于 0 和 128 之间")
	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	
	@Length(min=0, max=128, message="商品名称长度必须介于 0 和 128 之间")
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	
	@Length(min=0, max=64, message="商品id长度必须介于 0 和 64 之间")
	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}
	
	@Length(min=0, max=64, message="流程实例id长度必须介于 0 和 64 之间")
	public String getProcessInstanceId() {
		return processInstanceId;
	}

	public void setProcessInstanceId(String processInstanceId) {
		this.processInstanceId = processInstanceId;
	}
	
	@Length(min=0, max=32, message="当前流程状态长度必须介于 0 和 32 之间")
	public String getProcessState() {
		return processState;
	}

	public void setProcessState(String processState) {
		this.processState = processState;
	}
	
	public BigDecimal getBudget() {
		return budget;
	}

	public void setBudget(BigDecimal budget) {
		this.budget = budget;
	}
	
	public BigDecimal getCostAll() {
		return costAll;
	}

	public void setCostAll(BigDecimal costAll) {
		this.costAll = costAll;
	}
	
	@Length(min=0, max=1, message="状态0进行中1成功2失败长度必须介于 0 和 1 之间")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	@Length(min=0, max=1, message="0已有产品生产，1新产品生产长度必须介于 0 和 1 之间")
	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	@Override
	public void preInsert() {
		if (!this.isNewRecord){
			setId(GoodsAllUtils.createId("PO"));
		}
		User user = UserUtils.getUser();
		if (StringUtils.isNotBlank(user.getId())){
			this.updateBy = user;
			this.createBy = user;
		}
		this.updateDate = new Date();
		this.createDate = this.updateDate;
	}
}