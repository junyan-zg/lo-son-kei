<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品文章管理</title>
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
	<%--<ul class="nav nav-tabs">
		<li><a href="${ctx}/goods/goodsArticle/">商品文章列表</a></li>
		<li class="active"><a href="${ctx}/goods/goodsArticle/form?id=${goodsArticle.id}">商品文章<shiro:hasPermission name="goods:goodsArticle:edit">${not empty goodsArticle.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="goods:goodsArticle:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>--%><br/>
	<form:form id="inputForm" modelAttribute="goodsArticle" action="${ctx}/goods/goodsArticle/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>
		<form:hidden path="goodsId" htmlEscape="false" maxlength="64" class="input-xlarge "/>
		<div class="control-group">
			<div>
				<form:textarea htmlEscape="false" path="content" rows="4" maxlength="200" class="input-xxlarge"/>
				<sys:ckeditor replace="content" uploadPath="/goods/${goodsArticle.goodsId}/article" />
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="goods:goodsArticle:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>