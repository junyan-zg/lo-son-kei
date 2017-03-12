<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生产分析</title>
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
		<li class="active"><a href="${ctx}/analysis/product">生产分析</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="analysis" action="${ctx}/analysis/product" method="post" class="breadcrumb form-search">
		<div>
			<label>时间：</label>
			<input name="beginDate" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${analysis.beginDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
				　--　
			<input name="endDate" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${analysis.endDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
			&nbsp;
			<input class="btn btn-primary" type="button" onclick="$('#searchForm').submit();" value="查询"/>
		</div>
	</form:form>
	<sys:message content="${message}"/>
	<c:if test="${not empty countAll}">
	<div class="breadcrumb form-search">
		在 <fmt:formatDate value="${analysis.beginDate}" pattern="yyyy-MM-dd"/> 至 <fmt:formatDate value="${analysis.endDate}" pattern="yyyy-MM-dd"/>：<br><br/>
		<c:forEach items="${countAll}" var="c" varStatus="status">
			${status.index + 1}.
			<c:choose>
				<c:when test="${status.index == 0}">新产品研发</c:when>
				<c:when test="${status.index == 1}">存货生产</c:when>
				<c:when test="${status.index == 2}">总</c:when>
			</c:choose>
			<c:set var="success" value="${countSuccess[status.index]}"/>
			订单中：共发布 ${c.count} 个，其中，生产中为 ${countProduct[status.index].count} 个，审核中为 ${countAudit[status.index].count} 个，
			生产完成为 ${countSuccess[status.index].count} 个，总预算为 ${success.productOrder.budget} 元，实际支出为 ${success.productOrder.costAll} 元，
			成功率为 ${success.productOrder.successRate}% 。
			<br/><br/>
		</c:forEach>
	</div>
	</c:if>

</body>
</html>
