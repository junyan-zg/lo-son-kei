<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>搜索排行</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#searchForm").validate({
				submitHandler: function (form) {
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function (error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox") || element.is(":radio") || element.parent().is(".input-append")) {
						error.appendTo(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		});
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/analysis/sale">销售情况</a></li>
		<li class="active"><a href="${ctx}/analysis/searchRecord">搜索排行</a></li>
		<li><a href="${ctx}/analysis/goodsCount">商品总计</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="searchRecord" action="${ctx}/analysis/searchRecord" method="post" class="breadcrumb form-search">
		<div>
			<label>时间：</label>
			<input name="beginSearchTime" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${searchRecord.beginSearchTime}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
				　--　
			<input name="endDate" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${searchRecord.endSearchTime}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
			&nbsp;
			<input class="btn btn-primary" type="button" onclick="$('#searchForm').submit();" value="查询"/>
		</div>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<th>搜索词</th>
			<th>搜索次数</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="record">
			<tr>
				<td>${record.content}</td>
				<td>${record.amount}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>
