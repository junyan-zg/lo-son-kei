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
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/product/newGoodsSetting/">商品列表</a></li>
		<shiro:hasPermission name="product:newGoodsSetting:edit"><li><a href="${ctx}/product/newGoodsSetting/form">商品添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="goods" action="${ctx}/product/newGoodsSetting/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>商品分类：</label>
				<sys:treeselect id="goodsCategory" name="goodsCategory.id" value="${goodsCategory.id}" labelName="goodsCategory.categoryName"
								labelValue="${goods.goodsCategory.categoryName}"
								title="商品分类" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
								allowClear="true" notAllowSelectParent="true"/>
			</li>
			<li><label>商品编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
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
				<th>商品名称</th>
				<th>季节</th>
				<th>推荐人群</th>
				<th>商品分类</th>
				<th>状态</th>
				<th>描述</th>
				<th>更新时间</th>
				<shiro:hasPermission name="product:newGoodsSetting:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="goods">
			<tr>
				<td><a href="${ctx}/product/newGoodsSetting/view?id=${goods.id}">
						${goods.id}
				</a></td>
				<td>
						${goods.goodsName}
				</td>
				<td>
					${fns:getDictLabel(goods.season, 'season', '')}
				</td>
				<td>
					${fns:getDictLabel(goods.sex, 'sex', '')}
				</td>
				<td>
					${goods.goodsCategory.categoryName}
				</td>
				<td>
					待研发
				</td>
				<td title="${goods.remarks}">
					${fns:abbr(goods.remarks,8)}
				</td>
				<td>
					<fmt:formatDate value="${goods.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="product:newGoodsSetting:edit"><td>
					<a href="${ctx}/product/newGoodsSetting/view?id=${goods.id}">查看</a>
    				<a href="${ctx}/product/newGoodsSetting/form?id=${goods.id}">修改</a>
					<a href="${ctx}/product/newGoodsSetting/delete?id=${goods.id}" onclick="return confirmx('确认要删除该商品吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>