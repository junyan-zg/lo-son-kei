<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>商品分类管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#name").focus();
            $("#inputForm").validate({
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
    <li><a href="${ctx}/goods/goodsCategory/">商品分类列表</a></li>
    <li class="active"><a
            href="${ctx}/goods/goodsCategory/form?id=${goodsCategory.id}&parent.id=${goodsCategoryparent.id}">商品分类<shiro:hasPermission
            name="goods:goodsCategory:edit">${not empty goodsCategory.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="goods:goodsCategory:edit">查看</shiro:lacksPermission></a></li>
</ul>
<br/>
<form:form id="inputForm" modelAttribute="goodsCategory" action="${ctx}/goods/goodsCategory/save" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">上级分类:</label>

        <div class="controls">
            <sys:treeselect id="parent" name="parent.id" value="${goodsCategory.parent.id}" labelName="parent.categoryName"
                            labelValue="${goodsCategory.parent.categoryName}"
                            title="商品分类id上级" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
                            allowClear="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">分类名称：</label>

        <div class="controls">
            <form:input path="categoryName" htmlEscape="false" maxlength="32" class="input-xlarge required"/>
            <span class="help-inline"><font color="red">*</font> </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">排序：</label>

        <div class="controls">
            <form:input path="sort" htmlEscape="false" maxlength="11" class="input-xlarge  digits"/>
        </div>
    </div>
    <c:if test="${not empty goodsCategory.id}">
    <div class="control-group" id="ol-thumb-img">
        <label class="control-label">缩略图：<br>(首页展示)</label>
        <div class="controls">
            <form:hidden path="thumbImgUrl" htmlEscape="false" maxlength="255" class="input-xlarge"/>
            <sys:ckfinder input="thumbImgUrl" type="images" uploadPath="/goodsCategory/${goodsCategory.id}" selectMultiple="false" maxWidth="100" maxHeight="100"/>
        </div>
        <style>
            #ol-thumb-img li{
                list-style: none;
            }
        </style>
    </div>
    </c:if>

    <div class="control-group">
        <label class="control-label">备注：</label>

        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
        </div>
    </div>
    <div class="form-actions">
        <shiro:hasPermission name="goods:goodsCategory:edit"><input id="btnSubmit" class="btn btn-primary" type="submit"
                                                                    value="保 存"/>&nbsp;</shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
</body>
</html>