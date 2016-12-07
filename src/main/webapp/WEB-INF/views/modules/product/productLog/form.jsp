<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生产日志管理</title>
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
		<li><a href="${ctx}/product/productLog?productOrderId=${productLog.productOrderId}">生产日志列表</a></li>
		<li class="active"><a href="${ctx}/product/productLog/form?productOrderId=${productLog.productOrderId}">生产日志添加</a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="productLog" action="${ctx}/product/productLog/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">内容：</label>
			<div class="controls">
				<form:textarea path="content" htmlEscape="false" rows="4" class="input-xxlarge required"/>
				<span class="help-inline" style="color: red">*</span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">花费：</label>
			<div class="controls">
				<form:input path="cost" htmlEscape="false" class="input-medium  number"/>
			</div>
		</div>
		<%--<div class="control-group">
			<label class="control-label">生产订单id：</label>
			<div class="controls">--%>
				<form:hidden path="productOrderId"/>
			<%--</div>
		</div>--%>
		<div class="form-actions">
			<shiro:hasPermission name="product:productLog:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>