<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生产日志管理</title>
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

<c:if test="${not empty nextStepBelongsMe && nextStepBelongsMe == 'yes'}">
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/product/productLog?productOrderId=${productLog.productOrderId}">生产日志列表</a></li>
			<shiro:hasPermission name="product:productLog:edit"><li><a href="${ctx}/product/productLog/form?productOrderId=${productLog.productOrderId}">生产日志添加</a></li></shiro:hasPermission>
	</ul>
</c:if>

	<form:form id="searchForm" modelAttribute="productLog" action="${ctx}/product/productLog/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<form:hidden path="productOrderId"/>
			<li><label>记录人：</label>
				<form:select path="createBy.id" class="input-medium" itemLabel="create.name">
					<form:option value="" label="所有"/>
					<c:forEach items="${createUsersList}" var="userid">
						<form:option value="${userid}" label="${fns:getUserById(userid).name}"/>
					</c:forEach>
				</form:select>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>内容</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="productLog">
			<tr>
				<td><a href="${ctx}/product/productLog/form?id=${productLog.id}">
					${productLog.content}
				</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>