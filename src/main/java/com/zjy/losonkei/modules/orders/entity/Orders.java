/**
 * Copyright &copy; 2016-2017 <a>ZhangJunYan</a> All rights reserved.
 */
package com.zjy.losonkei.modules.orders.entity;

import org.hibernate.validator.constraints.Length;
import com.zjy.losonkei.modules.sys.entity.CountryArea;
import java.util.List;
import com.google.common.collect.Lists;

import com.zjy.losonkei.common.persistence.DataEntity;

/**
 * 订单Entity
 * @author zjy
 * @version 2017-02-11
 */
public class Orders extends DataEntity<Orders> {
	
	private static final long serialVersionUID = 1L;
	private String memberId;		// 会员id
	private String trueName;		// 真实姓名
	private String processInstanceId;		// 流程实例id
	private String processState;		// 当前流程状态
	private Double priceAll;		// 总售价，该字段用于会员付款，付款前可以调整售价，例如打个折
	private Double costAll;		// 总成本价
	private CountryArea area;		// 所在地区id
	private CountryArea city;		// 所在城市id
	private CountryArea province;		// 所在省份id
	private String address;		// 地址
	private String ordersState;		// 1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单
	private String goodsState;		// 1待发货，2已发货，3已取消，4已退回，5无货
	private String payState;		// 1未付款，2已付款，3已退款
	private String flag;		// 0进行中1交易成功2交易失败,待发货前全额退款都是失败
	private Double refund;		// 退款
	private Double income;		// 收益，交易成功时price_all-cost_all-refund
	private Double beginPriceAll;		// 开始 总售价，该字段用于会员付款，付款前可以调整售价，例如打个折
	private Double endPriceAll;		// 结束 总售价，该字段用于会员付款，付款前可以调整售价，例如打个折
	private Double beginIncome;		// 开始 收益，交易成功时price_all-cost_all-refund
	private Double endIncome;		// 结束 收益，交易成功时price_all-cost_all-refund
	private List<OrdersDetails> ordersDetailsList = Lists.newArrayList();		// 子表列表
	
	public Orders() {
		super();
	}

	public Orders(String id){
		super(id);
	}

	@Length(min=0, max=64, message="会员id长度必须介于 0 和 64 之间")
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	@Length(min=0, max=64, message="真实姓名长度必须介于 0 和 64 之间")
	public String getTrueName() {
		return trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
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
	
	public Double getPriceAll() {
		return priceAll;
	}

	public void setPriceAll(Double priceAll) {
		this.priceAll = priceAll;
	}
	
	public Double getCostAll() {
		return costAll;
	}

	public void setCostAll(Double costAll) {
		this.costAll = costAll;
	}
	
	public CountryArea getArea() {
		return area;
	}

	public void setArea(CountryArea area) {
		this.area = area;
	}
	
	public CountryArea getCity() {
		return city;
	}

	public void setCity(CountryArea city) {
		this.city = city;
	}
	
	public CountryArea getProvince() {
		return province;
	}

	public void setProvince(CountryArea province) {
		this.province = province;
	}
	
	@Length(min=0, max=64, message="地址长度必须介于 0 和 64 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=1, message="1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单长度必须介于 0 和 1 之间")
	public String getOrdersState() {
		return ordersState;
	}

	public void setOrdersState(String ordersState) {
		this.ordersState = ordersState;
	}
	
	@Length(min=0, max=1, message="1待发货，2已发货，3已取消，4已退回，5无货，与order_action同步更新长度必须介于 0 和 1 之间")
	public String getGoodsState() {
		return goodsState;
	}

	public void setGoodsState(String goodsState) {
		this.goodsState = goodsState;
	}
	
	@Length(min=0, max=1, message="1未付款，2已付款，3已退款，与order_action同步更新长度必须介于 0 和 1 之间")
	public String getPayState() {
		return payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
	}
	
	@Length(min=0, max=1, message="0进行中1交易成功2交易失败,待发货前全额退款都是失败长度必须介于 0 和 1 之间")
	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	public Double getRefund() {
		return refund;
	}

	public void setRefund(Double refund) {
		this.refund = refund;
	}
	
	public Double getIncome() {
		return income;
	}

	public void setIncome(Double income) {
		this.income = income;
	}
	
	public Double getBeginPriceAll() {
		return beginPriceAll;
	}

	public void setBeginPriceAll(Double beginPriceAll) {
		this.beginPriceAll = beginPriceAll;
	}
	
	public Double getEndPriceAll() {
		return endPriceAll;
	}

	public void setEndPriceAll(Double endPriceAll) {
		this.endPriceAll = endPriceAll;
	}
		
	public Double getBeginIncome() {
		return beginIncome;
	}

	public void setBeginIncome(Double beginIncome) {
		this.beginIncome = beginIncome;
	}
	
	public Double getEndIncome() {
		return endIncome;
	}

	public void setEndIncome(Double endIncome) {
		this.endIncome = endIncome;
	}
		
	public List<OrdersDetails> getOrdersDetailsList() {
		return ordersDetailsList;
	}

	public void setOrdersDetailsList(List<OrdersDetails> ordersDetailsList) {
		this.ordersDetailsList = ordersDetailsList;
	}
}