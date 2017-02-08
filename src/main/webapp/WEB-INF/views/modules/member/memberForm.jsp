<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>会员管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
				errorContainer: "#messageBox",
				errorPlacement: function(error, element) {
					$("#messageBox").text("输入有误，请先更正。");
					if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
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
		<li><a href="${ctx}/member/member/">会员列表</a></li>
		<li class="active"><a href="${ctx}/member/member/form?id=${member.id}">会员<shiro:hasPermission name="member:member:edit">${not empty member.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="member:member:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="member" action="${ctx}/member/member/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">会员名称：</label>
			<div class="controls">
				<form:input path="memberName" htmlEscape="false" disabled="true" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">真实姓名：</label>
			<div class="controls">
				<form:input path="memberTruename" htmlEscape="false" disabled="true" maxlength="20" class="input-xlarge "/>
			</div>
		</div>
		<%--<div class="control-group">
			<label class="control-label">会员密码：</label>
			<div class="controls">
				<form:input path="memberPwd" htmlEscape="false" maxlength="64" class="input-xlarge required"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">支付密码：</label>
			<div class="controls">
				<form:input path="memberPaypwd" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>--%>
		<div class="control-group">
			<label class="control-label">会员积分：</label>
			<div class="controls">
				<form:input path="memberPoints" htmlEscape="false" disabled="true" maxlength="11" class="input-xlarge required digits"/>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">登录次数：</label>
			<div class="controls">
				<form:input path="memberLoginnum" htmlEscape="false" disabled="true" maxlength="10" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">会员余额：</label>
			<div class="controls">
				<form:input path="memberBalance" htmlEscape="false" disabled="true" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">性别：</label>
			<div class="controls">
				<input type="text" disabled="disabled" class="input-xlarge" value="${fns:getDictLabel(member.memberDetails.memberSex,'sex',null)}"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">生日：</label>
			<div class="controls">
				<input type="text" disabled="disabled" class="input-xlarge" value="<fmt:formatDate value="${member.memberDetails.memberBirthday}" pattern="yyyy-MM-dd"/>"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">手机号码：</label>
			<div class="controls">
				<input type="text" disabled="disabled" class="input-xlarge" value="${member.memberDetails.memberMobile}"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">QQ号码：</label>
			<div class="controls">
				<input type="text" disabled="disabled" class="input-xlarge" value="${member.memberDetails.memberQq}"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">电子邮箱：</label>
			<div class="controls">
				<input type="text" disabled="disabled" class="input-xlarge" value="${member.memberDetails.memberEmail}"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">账单：</label>
			<div class="controls">
				<input type="button" class="btn btn-mini btn-primary" value="查看" onclick="openAccount('${ctx}/member/memberAccount?memberId=${member.id}');"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">启用状态：</label>
			<div class="controls">
				<form:select path="memberState" class="input-xlarge required">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('member_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="member:member:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>

	<script>
		function openAccount(url){
			top.$.jBox("iframe:" + url, {
				title: "${member.memberName} —— 账号资金流动情况",
				width: 800,
				height: 500,
				buttons: {"关闭": true},
				loaded: function (h) {
					$(".jbox-content", top.document).css("overflow-y", "hidden");
				}
			});
		}
	</script>
</body>
</html>