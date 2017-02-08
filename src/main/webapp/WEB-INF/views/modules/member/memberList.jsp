<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>会员管理</title>
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
		<li class="active"><a href="${ctx}/member/member/">会员列表</a></li>
		<%--<shiro:hasPermission name="member:member:edit"><li><a href="${ctx}/member/member/form">会员添加</a></li></shiro:hasPermission>--%>
	</ul>
	<form:form id="searchForm" modelAttribute="member" action="${ctx}/member/member/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>会员账号：</label>
				<form:input path="memberAccount" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>会员名称：</label>
				<form:input path="memberName" htmlEscape="false" maxlength="64" class="input-medium"/>
			</li>
			<li><label>真实姓名：</label>
				<form:input path="memberTruename" htmlEscape="false" maxlength="20" class="input-medium"/>
			</li>
			<li><label>注册时间：</label>
				<input name="beginMemberAddtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${member.beginMemberAddtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> - 
				<input name="endMemberAddtime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${member.endMemberAddtime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<%--<li><label>会员积分：</label>
				<form:input path="memberPoints" htmlEscape="false" maxlength="11" class="input-medium"/>
			</li>--%>
			<li><label>启用状态：</label>
				<form:select path="memberState" class="input-medium">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('member_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</li>
			<%--<li><label>登录次数：</label>
				<form:input path="memberLoginnum" htmlEscape="false" maxlength="10" class="input-medium"/>
			</li>--%>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>会员账号</th>
				<th>会员名称</th>
				<th>真实姓名</th>
				<th>注册时间</th>
				<th>会员积分</th>
				<th>启用状态</th>
				<th>登录次数</th>
				<%--<shiro:hasPermission name="member:member:edit"><th>操作</th></shiro:hasPermission>--%>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="member">
			<tr>
				<td><a href="${ctx}/member/member/form?id=${member.id}">
					${member.memberAccount}
				</a></td>
				<td>
					${member.memberName}
				</td>
				<td>
					${member.memberTruename}
				</td>
				<td>
					<fmt:formatDate value="${member.memberAddtime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${member.memberPoints}
				</td>
				<td>
					${fns:getDictLabel(member.memberState, 'member_state', '')}
				</td>
				<td>
					${member.memberLoginnum}
				</td>
				<%--<shiro:hasPermission name="member:member:edit"><td>
    				<a href="${ctx}/member/member/form?id=${member.id}">修改</a>
					<a href="${ctx}/member/member/delete?id=${member.id}" onclick="return confirmx('确认要删除该会员吗？', this.href)">删除</a>
				</td></shiro:hasPermission>--%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>