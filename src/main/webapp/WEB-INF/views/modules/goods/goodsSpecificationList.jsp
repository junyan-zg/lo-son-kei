<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品规格值管理</title>
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
		<li class="active"><a href="${ctx}/goods/goodsSpecification/">商品规格列表</a></li>
		<shiro:hasPermission name="goods:goodsSpecification:edit"><li><a href="${ctx}/goods/goodsSpecification/form">商品规格添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="goodsSpecification" action="${ctx}/goods/goodsSpecification/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>规格名称：</label>
				<form:input path="specificationName" htmlEscape="false" maxlength="32" class="input-medium"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>规格名称</th>
				<th>是否必需</th>
				<th>排序</th>
				<th>备注</th>
				<shiro:hasPermission name="goods:goodsSpecification:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="goodsSpecification">
			<tr>
				<td><a href="${ctx}/goods/goodsSpecification/form?id=${goodsSpecification.id}">
					${goodsSpecification.specificationName}
				</a></td>
				<td>
					${fns:getDictLabel(goodsSpecification.required,"required" ,"" )}
				</td>
				<td>
					${goodsSpecification.sort}
				</td>
				<td>
					${goodsSpecification.remarks}
				</td>
				<shiro:hasPermission name="goods:goodsSpecification:edit"><td>
    				<a href="${ctx}/goods/goodsSpecification/form?id=${goodsSpecification.id}">修改</a>
					<a href="${ctx}/goods/goodsSpecification/delete?id=${goodsSpecification.id}" onclick="return confirmx('确认要删除该商品规格值吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>