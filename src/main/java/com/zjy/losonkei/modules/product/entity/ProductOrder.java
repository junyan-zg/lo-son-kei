/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.product.entity;

import com.zjy.losonkei.modules.act.entity.Act;
import com.zjy.losonkei.modules.goods.utils.GoodsAllUtils;
import com.zjy.losonkei.modules.sys.entity.User;
import com.zjy.losonkei.modules.sys.utils.UserUtils;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import com.zjy.losonkei.common.persistence.DataEntity;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 生产订单Entity
 * @author zjy
 * @version 2016-12-3
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
	private String state;		// 状态0待发布1生产中2审核中3已完成
	private BigDecimal successRate;//成功率
	private String productType;		// 0已有产品生产，1新产品生产

	public final static String PRODUCT_TYPE_OLD = "0";
	public final static String PRODUCT_TYPE_NEW = "1";

	public final static String PRODUCT_STATE_INIT = "0";
	public final static String PRODUCT_STATE_PRODUCTING = "1";
	public final static String PRODUCT_STATE_AUDITING = "2";
	public final static String PRODUCT_STATE_FINISHED = "3";

	public final static String FLAG_NEW_INVENT = "flagNewInvent";


	private Act act;

	//form字段
	private String goodsAllIds;

	private String productsAmounts;

	private boolean belongsMe = false;

	private boolean nextStepBelongsMe = false;

	private String nextStep;

	private String startUserId;

	private String producersIds;
	private String producersNames;

	private String auditorsIds;
	private String auditorsNames;

	private List<ProductOrderDetails> productOrderDetailsList;

	public final static Map<String,String> nextStepMap = new HashMap<String,String>();

	static {
		nextStepMap.put(PRODUCT_STATE_INIT,PRODUCT_STATE_PRODUCTING);
		nextStepMap.put(PRODUCT_STATE_PRODUCTING,PRODUCT_STATE_AUDITING);
		nextStepMap.put(PRODUCT_STATE_AUDITING,PRODUCT_STATE_FINISHED);
	}

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
		super.preInsert();
		if (!this.isNewRecord){
			setId(GoodsAllUtils.createId("PO"));
		}
	}


	public String getGoodsAllIds() {
		return goodsAllIds;
	}

	public void setGoodsAllIds(String goodsAllIds) {
		this.goodsAllIds = goodsAllIds;
	}

	public String getProductsAmounts() {
		return productsAmounts;
	}

	public void setProductsAmounts(String productsAmounts) {
		this.productsAmounts = productsAmounts;
	}

	public String getProducersIds() {
		return producersIds;
	}

	public void setProducersIds(String producersIds) {
		this.producersIds = producersIds;
	}

	public String getAuditorsIds() {
		return auditorsIds;
	}

	public void setAuditorsIds(String auditorsIds) {
		this.auditorsIds = auditorsIds;
	}

	public String getProducersNames() {
		return producersNames;
	}

	public void setProducersNames(String producersNames) {
		this.producersNames = producersNames;
	}

	public String getAuditorsNames() {
		return auditorsNames;
	}

	public void setAuditorsNames(String auditorsNames) {
		this.auditorsNames = auditorsNames;
	}

	public List<ProductOrderDetails> getProductOrderDetailsList() {
		return productOrderDetailsList;
	}

	public void setProductOrderDetailsList(List<ProductOrderDetails> productOrderDetailsList) {
		this.productOrderDetailsList = productOrderDetailsList;
	}

	public String getStartUserId() {
		return startUserId;
	}

	public void setStartUserId(String startUserId) {
		this.startUserId = startUserId;
	}

	public boolean getBelongsMe() {
		User user = UserUtils.getUser();
		String id = user.getId();
		return belongsMe = (id.equals(startUserId) ||
				belongsUtils(id,producersIds) || belongsUtils(id,auditorsIds));
	}

	private boolean belongsUtils(String userId,String ids){
		if(StringUtils.isNotBlank(ids)){
			for (String id : ids.split(","))
				if (userId.equals(id))
					return true;
		}
		return false;
	}

	public BigDecimal getSuccessRate() {
		return successRate;
	}

	public void setSuccessRate(BigDecimal successRate) {
		this.successRate = successRate;
	}

	public Act getAct() {
		return act;
	}

	public void setAct(Act act) {
		this.act = act;
	}

	public String getNextStep() {
		return nextStep;
	}

	public void setNextStep(String nextStep) {
		this.nextStep = nextStep;
	}

	public boolean isNextStepBelongsMe() {
		return nextStepBelongsMe;
	}

	public void setNextStepBelongsMe(boolean nextStepBelongsMe) {
		this.nextStepBelongsMe = nextStepBelongsMe;
	}
}