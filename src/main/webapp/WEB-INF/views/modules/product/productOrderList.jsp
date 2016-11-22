<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生产订单管理</title>
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
		<li class="active"><a href="${ctx}/product/productOrder/">生产订单列表</a></li>
		<shiro:hasPermission name="product:productOrder:edit"><li><a href="${ctx}/product/productOrder/form">生产订单添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="productOrder" action="${ctx}/product/productOrder/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>生产订单id：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>生产订单名称：</label>
				<form:input path="orderName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品id：</label>
				<form:input path="goodsId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>流程实例id：</label>
				<form:input path="processInstanceId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>状态0进行中1成功2失败：</label>
				<form:input path="state" htmlEscape="false" maxlength="1" class="input-medium"/>
			</li>
			<li><label>0已有产品生产，1新产品生产：</label>
				<form:input path="productType" htmlEscape="false" maxlength="1" class="input-medium"/>
			</li>
			<li><label>创建者：</label>
				<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>生产订单名称</th>
				<th>商品名称</th>
				<th>当前流程状态</th>
				<th>预算</th>
				<th>实际花费：根据product_log更新</th>
				<th>状态0进行中1成功2失败</th>
				<th>备注</th>
				<th>创建者</th>
				<th>更新时间</th>
				<shiro:hasPermission name="product:productOrder:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="productOrder">
			<tr>
				<td><a href="${ctx}/product/productOrder/form?id=${productOrder.id}">
					${productOrder.orderName}
				</a></td>
				<td>
					${productOrder.goodsName}
				</td>
				<td>
					${productOrder.processState}
				</td>
				<td>
					${productOrder.budget}
				</td>
				<td>
					${productOrder.costAll}
				</td>
				<td>
					${productOrder.state}
				</td>
				<td>
					${productOrder.remarks}
				</td>
				<td>
					${productOrder.createBy.id}
				</td>
				<td>
					<fmt:formatDate value="${productOrder.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="product:productOrder:edit"><td>
    				<a href="${ctx}/product/productOrder/form?id=${productOrder.id}">修改</a>
					<a href="${ctx}/product/productOrder/delete?id=${productOrder.id}" onclick="return confirmx('确认要删除该生产订单吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>