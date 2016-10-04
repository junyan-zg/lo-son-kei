<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>商品管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            //$("#name").focus();
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
    <li><a href="${ctx}/goods/goods/">商品列表</a></li>
    <li class="active"><a href="${ctx}/goods/goods/form?id=${goods.id}">商品<shiro:hasPermission
            name="goods:goods:edit">${not empty goods.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="goods:goods:edit">查看</shiro:lacksPermission></a></li>
</ul>
<form:form id="inputForm" modelAttribute="goods" action="${ctx}/goods/goods/save" method="post"
           class="form-horizontal form-search">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <%--  <div class="control-group row-fluid">
          <div class="span6">
              <label class="control-label">商品分类：</label>
              <div class="controls">
                  <sys:treeselect id="parent" name="parent.id" value="${goodsCategory.parent.id}" labelName="parent.categoryName"
                                  labelValue="${goodsCategory.parent.categoryName}"
                                  title="商品分类id上级" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
                                  allowClear="true"/>
              </div>
          </div>
          <div class="span6">
              <label class="control-label">商品名称：</label>
              <div class="controls">
                  <form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-xlarge required"/><span class="help-inline"><font color="red">*</font> </span>
              </div>
          </div>
      </div>--%>
    <ul class="ul-form">
        <li>
            <label>商品分类：</label>
            <sys:treeselect id="parent" name="goodsCategory.id" value="${goodsCategory.id}"
                            labelName="parent.categoryName"
                            labelValue="${goodsCategory.categoryName}"
                            title="商品分类" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
                            allowClear="true"/>
        </li>
        <li><label>商品名称：</label>
            <form:input path="goodsName" htmlEscape="false" maxlength="128" class="input-xxlarge"/>
        </li>
        <li class="clearfix" style="border-bottom: 1px dotted #dddddd;padding: 5px 0px;margin-bottom: 5px;">
        </li>
        <li><label>季节：</label>
            <form:select path="season" class="input-medium">
                <form:option value="" label="不限"/>
                <form:options items="${fns:getDictList('season')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </li>
        <li><label>推荐人群：</label>
            <form:select path="sex" class="input-medium ">
                <form:option value="" label="不限"/>
                <form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </li>
        <li><label>状态：</label>
            <form:select path="state" class="input-medium ">
                <form:options items="${fns:getDictList('goods_state')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </li>

        <li><label title="当前时间超过上架时间，且状态为“在售”时自动上架" data-placement="bottom" data-toggle="tooltip">上架时间：</label>
            <input name="onShelfTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
                   value="<fmt:formatDate value="${goods.onShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
                   onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
        </li>
        <li class="clearfix" style="border-bottom: 1px dotted #dddddd;padding: 5px 0px;margin-bottom: 5px;">

        <li><label>关键词：</label>
            <form:input path="keywords" placeholder="多个用逗号 , 隔开" htmlEscape="false" maxlength="128" class="input-xxlarge"/>
        </li>
        <li>
            <label title="自动生成，取决于下面第一个具体商品原价" data-placement="bottom" data-toggle="tooltip">原价：</label>
            <form:input path="srcPrice" htmlEscape="false" class="input-small " disabled="true"/>
        </li>

        <li>
            <label title="自动生成，取决于下面第一个具体商品现价" data-placement="bottom" data-toggle="tooltip">现价：</label>
            <form:input path="price" htmlEscape="false" class="input-small " disabled="true"/>
        </li>
        <li class="clearfix" style="border-bottom: 1px dotted #dddddd;padding: 5px 0px;margin-bottom: 5px;">
        <li>
            <label>缩略图：</label>
            <form:input path="thumbImgUrl" htmlEscape="false" maxlength="512" class="input-xlarge "/>
        </li>
        <li class="clearfix" style="border-bottom: 1px dotted #dddddd;padding: 5px 0px;margin-bottom: 5px;">
        <li style="height: auto;">
            <label>备注：</label>
            <form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="255" class="input-xxlarge "/>
        </li>
        <li class="clearfix" style="border-bottom: 1px dotted #dddddd;height: auto;padding: 5px 0px;margin-bottom: 5px;">
    </ul>
    <div class="form-actions">
        <shiro:hasPermission name="goods:goods:edit"><input id="btnSubmit" class="btn btn-primary" type="submit"
                                                            value="保 存"/>&nbsp;</shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
<script>
    $("[data-toggle='tooltip']").tooltip();
</script>
</body>
</html>