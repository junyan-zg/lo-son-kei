<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品管理</title>
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
	<form:form id="searchForm" modelAttribute="goods" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>商品编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li class="clearfix"></li>
			<li><label>商品分类：</label>
				<sys:treeselect id="goodsCategory" name="goodsCategory.id" value="${goodsCategory.id}" labelName="goodsCategory.categoryName"
								labelValue="${goods.goodsCategory.categoryName}"
								title="商品分类" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
								allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th style="width: 20px;"></th>
				<th style="width: 150px;">商品编号</th>
				<th>商品名称</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="goods" varStatus="status">
			<tr onclick="$('#choose-${status.index}').attr('checked','checked');">
				<td>
					<input type="radio" name="choose" id="choose-${status.index}" data-id="${goods.id}" data-name="${goods.goodsName}">
				</td>
				<td>
					${goods.id}
				</td>
				<td>
					${goods.goodsName}
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<script>
		function iframeChoose(id,name) {
			id.val($("input[name='choose']:checked").attr("data-id"));
			name.val($("input[name='choose']:checked").attr("data-name"));
		}
	</script>
</body>
</html>