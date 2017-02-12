<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>订单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/orders/orders/">订单列表</a></li>
		<shiro:hasPermission name="orders:orders:edit"><li><a href="${ctx}/orders/orders/form">订单添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="orders" action="${ctx}/orders/orders/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>会员id：</label>
				<form:input path="memberId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>真实姓名：</label>
				<form:input path="trueName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>流程实例id：</label>
				<form:input path="processInstanceId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>总售价</label>
				<form:input path="priceAll" htmlEscape="false" class="input-medium"/>
			</li>
			<%--<li><label>所在地区id：</label>
				<sys:treeselect id="area" name="area.id" value="${orders.area.id}" labelName="" labelValue="${orders.}"
					title="区域" url="/sys/area/treeData" cssClass="input-small" allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>所在城市id：</label>
				<form:input path="city.id" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li><label>所在省份id：</label>
				<form:input path="province.id" htmlEscape="false" maxlength="32" class="input-medium"/>--%>
			</li>
			<li><label>订单状态</label>
				<form:select path="ordersState" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>商品状态</label>
				<form:select path="goodsState" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('goods_send_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>支付状态</label>
				<form:select path="payState" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('pay_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>标记</label>
				<form:select path="flag" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>收益</label>
				<form:input path="income" htmlEscape="false" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>真实姓名</th>
				<th>订单状态</th>
				<th>商品状态</th>
				<th>支付状态</th>
				<th>标记</th>
				<th>更新时间</th>
				<th>退款</th>
				<th>收益</th>
				<shiro:hasPermission name="orders:orders:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="orders">
			<tr>
				<td><a href="${ctx}/orders/orders/form?id=${orders.id}">
					${orders.trueName}
				</a></td>
				<td>
					${fns:getDictLabel(orders.ordersState, 'orders_state', '')}
				</td>
				<td>
					${fns:getDictLabel(orders.goodsState, 'goods_send_state', '')}
				</td>
				<td>
					${fns:getDictLabel(orders.payState, 'pay_state', '')}
				</td>
				<td>
					${fns:getDictLabel(orders.flag, 'orders_flag', '')}
				</td>
				<td>
					<fmt:formatDate value="${orders.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${orders.refund}
				</td>
				<td>
					${orders.income}
				</td>
				<shiro:hasPermission name="orders:orders:edit"><td>
    				<a href="${ctx}/orders/orders/form?id=${orders.id}">修改</a>
					<a href="${ctx}/orders/orders/delete?id=${orders.id}" onclick="return confirmx('确认要删除该订单吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>