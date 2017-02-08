<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>会员资金流动管理</title>
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
	<%--<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/member/memberAccount/">会员资金流动列表</a></li>
		<shiro:hasPermission name="member:memberAccount:edit"><li><a href="${ctx}/member/memberAccount/form">会员资金流动添加</a></li></shiro:hasPermission>
	</ul>--%>
	<form:form id="searchForm" modelAttribute="memberAccount" action="${ctx}/member/memberAccount/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>类型：</label>
				<form:select path="processType" class="input-medium">
					<form:option value="" label="全部"/>
					<form:options items="${fns:getDictList('account_process_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<form:hidden path="memberId"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th style="width:40px;">类型</th>
				<th style="width:100px;">数目</th>
				<th>备注</th>
				<th style="width:160px;">时间</th>
				<%--<shiro:hasPermission name="member:memberAccount:edit"><th>操作</th></shiro:hasPermission>--%>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="memberAccount">
			<tr>
				<td><a href="${ctx}/member/memberAccount/form?id=${memberAccount.id}">
					${fns:getDictLabel(memberAccount.processType, 'account_process_type', '')}
				</a></td>
				<td>
					${memberAccount.amount}
				</td>
				<td title="${memberAccount.remarks}">
					${memberAccount.remarks}
				</td>
				<td>
					<fmt:formatDate value="${memberAccount.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<%--<shiro:hasPermission name="member:memberAccount:edit"><td>
    				<a href="${ctx}/member/memberAccount/form?id=${memberAccount.id}">修改</a>
					<a href="${ctx}/member/memberAccount/delete?id=${memberAccount.id}" onclick="return confirmx('确认要删除该会员资金流动吗？', this.href)">删除</a>
				</td></shiro:hasPermission>--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>