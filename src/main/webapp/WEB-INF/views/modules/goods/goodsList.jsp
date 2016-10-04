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
			<li><label>商品名称：</label>
				<form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-medium"/>
			</li>
			<li><label>上架时间：</label>
				<input name="beginOnShelfTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${goods.beginOnShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> - 
				<input name="endOnShelfTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${goods.endOnShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li><label>季节：</label>
				<form:select path="season" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('season')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>推荐人群：</label>
				<form:select path="sex" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<li><label>关键词：</label>
				<form:input path="keywords" htmlEscape="false" maxlength="50" class="input-medium"/>
			</li>
			<li><label>商品分类：</label>
				<sys:treeselect id="parent" name="parent.id" value="${goodsCategory.parent.id}" labelName="parent.categoryName"
								labelValue="${goodsCategory.parent.categoryName}"
								title="商品分类id上级" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
								allowClear="true"/>
			</li>
			<li><label>现价：</label>
				<form:input path="price" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>原价：</label>
				<form:input path="srcPrice" htmlEscape="false" class="input-medium"/>
			</li>
			<li><label>状态：</label>
				<form:select path="state" class="input-medium">
					<form:option value="" label=""/>
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
				<th>商品名称</th>
				<th>上架时间</th>
				<th>季节</th>
				<th>推荐人群</th>
				<th>关键词</th>
				<th>商品分类</th>
				<th>现价</th>
				<th>原价</th>
				<th>状态</th>
				<th>备注</th>
				<th>更新时间</th>
				<shiro:hasPermission name="goods:goods:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="goods">
			<tr>
				<td><a href="${ctx}/goods/goods/form?id=${goods.id}">
					${goods.goodsName}
				</a></td>
				<td>
					<fmt:formatDate value="${goods.onShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${fns:getDictLabel(goods.season, 'season', '')}
				</td>
				<td>
					${fns:getDictLabel(goods.sex, 'sex', '')}
				</td>
				<td>
					${goods.keywords}
				</td>
				<td>
					${goods.goodsCategoryId}
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