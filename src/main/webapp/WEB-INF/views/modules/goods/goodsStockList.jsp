<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品库存</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			if(n) $("#pageNo").val(n);
			if(s) $("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/goods/goods/stock">商品列表</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="goodsAll" action="${ctx}/goods/goods/stock" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
		<ul class="ul-form">
			<li><label>商品编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goods.goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品分类：</label>
				<sys:treeselect id="par" name="goods.goodsCategory.id" value="${goodsAll.goods.goodsCategory.id}" labelName="goods.goodsCategory.categoryName"
								labelValue="${goodsAll.goods.goodsCategory.categoryName}"
								title="商品分类" url="/goods/goodsCategory/treeData"  cssStyle="width:100px;"
								allowClear="true"/><%--extId="${goods.goodsCategory.id}"--%>
			</li>
			<li><label>标记：</label>
				<form:select path="goods.flag" class="input-small">
					<form:option value="" label="所有"/>
					<form:options items="${fns:getDictList('goods_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>库存：</label>
				<form:input path="beginStock" htmlEscape="false" class="input-small"/> -
				<form:input path="endStock" htmlEscape="false" class="input-small"/>
			</li>
			<li><label>关键词：</label>
				<form:input path="goods.keywords" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>

			<li><label>状态：</label>
				<form:select path="goods.state" class="input-small">
					<form:option value="" label="所有"/>
					<form:options items="${fns:getDictList('goods_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
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
				<th>商品编号</th>
				<th>商品编号(主)</th>
				<th>商品名称</th>
				<th>商品分类</th>
				<th>状态</th>
				<th>标记</th>
				<th class="sort-column a.stock">库存</th>
				<th>规格</th>
				<th>更新时间</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="ga">
			<tr>
				<td>
					${ga.id}
				</td>
				<td>
					${ga.goods.id}
				</td>
				<td>
					${ga.goods.goodsName}
				</td>
				<td>
					${ga.goods.goodsCategory.categoryName}
				</td>
				<td>
					${fns:getDictLabel(ga.goods.state, 'goods_state', '')}
				</td>
				<td>
					${fns:getDictLabel(ga.goods.flag, 'goods_flag', '')}
				</td>
				<td>
					${ga.stock}
				</td>
				<td>
					${ga.remarks}
				</td>
				<td>
					<fmt:formatDate value="${ga.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>