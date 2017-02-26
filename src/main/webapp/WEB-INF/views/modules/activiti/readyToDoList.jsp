<%@ page contentType="text/html;charset=UTF-8" import="com.zjy.losonkei.modules.act.utils.ActivitiUtils" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<c:set value="<%=ActivitiUtils.PROCESS_KEY_PRODUCT%>" var="PROCESS_KEY_PRODUCT"/>
<html>
<head>
	<title>待办任务</title>
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
		function tracePhoto(url){
			$("#tmp-trace-photo img").attr("src",url);
			top.$.jBox($("#tmp-trace-photo").html(), {
				title: "查看进度",
				width: 800,
				height: 500,
				buttons:{"确定":"ok","关闭":true},
				loaded:function(h){
					$(".jbox-content",top.document).css("overflow-y","hidden");
				}
			});
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/act/ready/todo/list">待办任务</a></li>
		<li><a href="${ctx}/act/history/list">已办任务</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="act" action="${ctx}/act/ready/todo/list" method="post" class="breadcrumb form-search">
		<div>
			<label>流程类型：&nbsp;</label>
			<form:select path="procDefKey" class="input-medium">
				<form:option value="" label="全部流程"/>
				<form:options items="${fns:getDictList('act_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
			</form:select>
			<label>创建时间：</label>
			<input name="beginDate" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${act.beginDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
				　--　
			<input name="endDate" type="text" readonly="true" class="input-medium Wdate" style="width:163px;"
				value="<fmt:formatDate value="${act.endDate}" pattern="yyyy-MM-dd"/>" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'});"/>
			&nbsp;
			<input class="btn btn-primary" type="button" onclick="$('#searchForm').submit();" value="查询"/>
		</div>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>任务类型</th>
				<th>订单编号</th>
				<th>订单名称</th>
				<th>当前环节</th>
				<th>发起人</th>
				<th>执行人</th>
				<th>创建时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="act">
				<c:set var="task" value="${act.task}" />
				<tr>
					<c:if test="${act.procDef.key == PROCESS_KEY_PRODUCT}">
						<c:set var="productOrder" value="${fns:getProductOrderById(act.procIns.businessKey)}" />
						<td>生产</td>
						<td>${productOrder.id}</td>
						<td>${productOrder.orderName}</td>
						<td><a href="javascript:;" onclick="tracePhoto('${ctx}/act/trace/photo/${task.processDefinitionId}/${task.executionId}');">${task.name}</a></td>
						<td>${fns:getUserById(act.startUserId).name}</td>
					</c:if>
					<c:if test="${act.procDef.key != PROCESS_KEY_PRODUCT}">
						<td>销售</td>
						<td>${act.procIns.businessKey}</td>
						<td></td>
						<td><a href="${ctx}/act/trace/photo/${task.processDefinitionId}/${task.executionId}" target="_blank">${task.name}</a></td>
						<td>${fns:getMemberById(act.startUserId).memberAccount}</td>
					</c:if>

						<%--<td><a target="_blank" href="${pageContext.request.contextPath}/act/rest/diagram-viewer?processDefinitionId=${task.processDefinitionId}&processInstanceId=${task.processInstanceId}">${task.name}</a></td>--%>

					<td>
						<c:forEach items="${act.candidateUsers}" var="candidateUser" varStatus="status">
							${fns:getUserById(candidateUser).name}<c:if test="${status.index < fn:length(act.candidateUsers)-1}">,</c:if>
						</c:forEach>
					</td>
					<td><fmt:formatDate value="${task.createTime}" type="both"/></td>
					<td>
							<%--<c:if test="${empty task.executionId}">
								<a href="${ctx}/act/task/deleteTask?taskId=${task.id}&reason=" onclick="return promptx('删除任务','删除原因',this.href);">删除任务</a>
						</c:if>--%>
						<c:if test="${act.procDef.key == PROCESS_KEY_PRODUCT}">
							<a href="${ctx}/product/productOrder/view?id=${act.procIns.businessKey}" onclick="top.addTab($(this),true);return false;">办理任务</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div style="display:none;" id="tmp-trace-photo">
		<div style="background-color:whitesmoke;padding: 49px;">
			<img src=""/>
		</div>
	</div>

</body>
</html>
