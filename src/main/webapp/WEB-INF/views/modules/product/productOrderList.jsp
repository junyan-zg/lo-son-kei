<%@ page import="com.zjy.losonkei.modules.product.entity.ProductOrder" %>
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
		<li class="active"><a href="${ctx}/product/productOrder/list<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>">生产订单列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="productOrder" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>生产订单号：</label>
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>订单名称：</label>
				<form:input path="orderName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品号：</label>
				<form:input path="goodsId" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>状态：</label>
				<form:select path="state" class="input-medium">
					<form:options items="${fns:getDictList('product_order_state')}" itemLabel="label" itemValue="value"
								  htmlEscape="false"/>
				</form:select>
			</li>
			<%--<li><label>创建者：</label>
				<form:input path="createBy.id" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>--%>
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
				<th>当前环节</th>
				<th>预算</th>
				<th>实际花费</th>
				<th>状态</th>
				<%--<th>备注</th>--%>
				<th>创建者</th>
				<th>更新时间</th>
				<shiro:hasPermission name="product:productOrder:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="productOrder">
			<tr>
				<td><a href="${ctx}/product/productOrder/view?id=${productOrder.id}">
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
					${fns:getDictLabel(productOrder.state,"product_order_state","")}
				</td>
				<%--<td>
					${productOrder.remarks}
				</td>--%>
				<td>
					${fns:getUserById(productOrder.createBy.id).name}
				</td>
				<td>
					<fmt:formatDate value="${productOrder.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="product:productOrder:edit"><td>
					<c:choose>
						<c:when test="${fns:getUser().id ne productOrder.createBy.id}">
							<a href="${ctx}/product/productOrder/view?id=${productOrder.id}">查看</a>
						</c:when>
						<c:otherwise>
							<c:set var="INIT"><%=ProductOrder.PRODUCT_STATE_INIT%></c:set>
							<c:choose>
								<c:when test="${INIT eq productOrder.state}">
									<a href="${ctx}/product/productOrder/form<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>?id=${productOrder.id}">修改</a>
									<a href="${ctx}/product/productOrder/delete?id=${productOrder.id}" onclick="return confirmx('确认要删除该生产订单吗？', this.href)">删除</a>
									<a href="${ctx}/product/productOrder/view?id=${productOrder.id}">发布</a>
								</c:when>
								<c:otherwise>
									<a href="${ctx}/product/productOrder/view?id=${productOrder.id}">查看</a>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>

					<c:if test="${fns:getUser().id eq productOrder.createBy.id}">

					</c:if>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>