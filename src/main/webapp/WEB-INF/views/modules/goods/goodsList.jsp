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
		<li class="active"><a href="${ctx}/goods/goods/">商品列表</a></li>
		<shiro:hasPermission name="goods:goods:edit"><li><a href="${ctx}/goods/goods/form">商品添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="goods" action="${ctx}/goods/goods/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>商品编号：</label>
				<form:input path="id" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>商品分类：</label>
				<sys:treeselect id="par" name="goodsCategory.id" value="${goods.goodsCategory.id}" labelName="goodsCategory.categoryName"
								labelValue="${goods.goodsCategory.categoryName}"
								title="商品分类" url="/goods/goodsCategory/treeData"  cssStyle="width:100px;"
								allowClear="true"/><%--extId="${goods.goodsCategory.id}"--%>
			</li>
			<li><label>标记：</label>
				<form:select path="flag" class="input-small">
					<form:option value="" label="所有"/>
					<form:options items="${fns:getDictList('goods_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>现价：</label>
				<form:input path="beginPrice" htmlEscape="false" class="input-small"/> -
				<form:input path="endPrice" htmlEscape="false" class="input-small"/>
			</li>
			<%--<li><label>季节：</label>
				<form:select path="season" class="input-small">
					<form:option value="" label="所有"/>
					<form:options items="${fns:getDictList('season')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>推荐人群：</label>
				<form:select path="sex" class="input-small">
					<form:option value="" label="所有"/>
					<form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>--%>

			<li><label>关键词：</label>
				<form:input path="keywords" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>

			<li><label>状态：</label>
				<form:select path="state" class="input-small">
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
				<th>商品名称</th>
				<%--<th>季节</th>
				<th>推荐人群</th>--%>
				<th>关键词</th>
				<th>商品分类</th>
				<th>现价</th>
				<th>原价</th>
				<th>状态</th>
				<th>描述</th>
				<th>更新时间</th>
				<shiro:hasPermission name="goods:goods:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="goods">
			<tr>
				<td><a href="${ctx}/goods/goods/view?id=${goods.id}">
					${goods.id}
				</a></td>
				<td>
					${goods.goodsName}
				</td>
				<%--<td>
					${fns:getDictLabel(goods.season, 'season', '')}
				</td>
				<td>
					${fns:getDictLabel(goods.sex, 'sex', '')}
				</td>--%>
				<td>
					${goods.keywords}
				</td>
				<td>
					${goods.goodsCategory.categoryName}
				</td>
				<td>
					${goods.price}
				</td>
				<td>
					${goods.srcPrice}
				</td>
				<td>
					${fns:getDictLabel(goods.state, 'goods_state', '')}
				</td>
				<td>
					${goods.remarks}
				</td>
				<td>
					<fmt:formatDate value="${goods.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="goods:goods:edit"><td>
					<a href="${ctx}/goods/goods/view?id=${goods.id}">查看</a>
    				<a href="${ctx}/goods/goods/form?id=${goods.id}">修改</a>
					<a href="${ctx}/goods/goods/delete?id=${goods.id}" onclick="return confirmx('确认要删除该商品吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>