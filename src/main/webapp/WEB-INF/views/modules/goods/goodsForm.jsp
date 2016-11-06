<%@ page contentType="text/html;charset=UTF-8" import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<c:set var="requiredYes" value="<%=Goods.REQUIRED_YES%>"></c:set>
<html>
<head>
    <title>商品管理</title>
    <meta name="decorator" content="default"/>
    <style>
        .l-width {
            width: 50px;
        }
    </style>
    <script type="text/javascript">
        var tagIndex;
        $(document).ready(function () {
           $.validator.prototype.elements = function() {
                    return $(this.currentForm)
                            .find("input, select, textarea")
                            .not(":submit, :reset, :image, [disabled]")
                            .not(this.settings.ignore);
            };

            $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
                    console.log($("#inputForm").serialize());

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
            tagIndex = $('tbody tr').length - 1;//有一个tr按钮
            if(tagIndex == 0){
                addRow();
            }
        });
        function addRow() {
            var html = template('row-tmp', {index: tagIndex});
            $("#tr-btn").before(html);
            tagIndex ++;
        }
        function delRow(id) {
            $(id).remove();
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/goods/goods/">商品列表</a></li>
    <li class="active"><a href="${ctx}/goods/goods/form?id=${goods.id}">商品<shiro:hasPermission
            name="goods:goods:edit">${not empty goods.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="goods:goods:edit">查看</shiro:lacksPermission></a></li>
</ul>
<form:form id="inputForm" modelAttribute="goods" action="${ctx}/goods/goods/save1" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">商品分类：</label>

        <div class="controls">
            <sys:treeselect id="goodsCategory" name="goodsCategory.id" value="${goodsCategory.id}"
                            labelName="goodsCategory.categoryName"
                            labelValue="${goodsCategory.categoryName}"
                            title="商品分类" url="/goods/goodsCategory/treeData" extId="${goodsCategory.id}" cssClass=""
                            allowClear="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">商品名称：</label>

        <div class="controls">
            <form:input path="goodsName" htmlEscape="false" maxlength="128" cssClass="input-xxlarge required"/>
            <span class="help-inline"><font color="red">*</font></span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">季节：</label>

        <div class="controls">
            <form:select path="season" class="input-medium">
                <form:option value="" label="不限"/>
                <form:options items="${fns:getDictList('season')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">推荐人群：</label>

        <div class="controls">
            <form:select path="sex" class="input-medium ">
                <form:option value="" label="不限"/>
                <form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">状态：</label>

        <div class="controls">
            <form:select path="state" class="input-medium ">
                <form:options items="${fns:getDictList('goods_state')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">上架时间：</label>

        <div class="controls">
            <input name="onShelfTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate "
                   value="<fmt:formatDate value="${goods.onShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
                   onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
            <span style="color: #9f9f9f;margin-left: 10px;">当前时间超过上架时间，且状态为“在售”时自动上架</span>
        </div>
    </div>

    <c:if test="${not empty goodsAttrList && fn:length(goodsAttrList) > 0}">
        <c:forEach var="list" items="${goodsAttrList}" varStatus="status">
            <div class="control-group">
                <label class="control-label">${list.attrName}：</label>

                <div class="controls">
                    <input id="attr${status.index}" data-attrId="${list.id}" name="goodsAttrValues"
                           value="${list.goodsAttrValue.attrValue}" class="input-medium"/><span style="color: #9f9f9f;">（无此属性请留空）</span>
                </div>
            </div>
        </c:forEach>
    </c:if>

    <div class="control-group">
        <label class="control-label">关键词：</label>

        <div class="controls">
            <form:input path="keywords" placeholder="多个用逗号 , 隔开" htmlEscape="false" maxlength="128"
                        class="input-xxlarge"/>
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">原价：</label>

        <div class="controls">
            <form:input path="srcPrice" htmlEscape="false" class="input-small " readonly="true"/><span
                style="color: #9f9f9f;margin-left: 10px;">自动生成，取决于下面第一个具体商品原价</span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">现价：</label>

        <div class="controls">
            <form:input path="price" htmlEscape="false" class="input-small " readonly="true"/><span
                style="color: #9f9f9f;margin-left: 10px;">自动生成，取决于下面第一个具体商品现价</span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">缩略图：</label>

        <div class="controls">
            <form:input path="thumbImgUrl" htmlEscape="false" maxlength="512" class="input-xlarge "/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">备注：</label>

        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" rows="2" maxlength="255" class="input-xxlarge "/>
        </div>
    </div>
    <table id="contentTable" class="table table-striped table-bordered table-condensed">
        <thead>
        <tr>
            <c:forEach var="list" items="${goodsSpecificationList}">
                <th>${list.specificationName}
                    <c:if test="${list.required eq requiredYes}">
                        <span class="help-inline"><font color="red">*</font></span>
                    </c:if>
                </th>
            </c:forEach>
            <th>现价</th>
            <th>原价</th>
            <th>成本价</th>
            <th>库存</th>
                <%--<th>备注</th>--%>
            <shiro:hasPermission name="goods:goods:edit">
                <th>操作</th>
            </shiro:hasPermission>
        </tr>
        </thead>
        <tbody>
        <c:if test="${not empty goods.goodsAlls}">
            <c:forEach varStatus="status" var="goodsAll" items="${goods.goodsAlls}">
                <tr id="no-tag-${status.index}">
                    <c:forEach var="list" items="${goodsSpecificationList}">
                        <td>
                            <input id="${list.id}${status.index}" name="goodsSpecification${list.id}"
                                   class="l-width <c:if test="${list.required eq requiredYes}">required</c:if>"
                                   value="<c:forEach items="${goodsAll.goodsSpecificationValues}" var="val"><c:if test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>">
                        </td>
                    </c:forEach>
                    <td><input name="price" class="number l-width" <c:if test="${status.index == 0}">onchange="$('#price').val(this.value);"</c:if> >
                    </td>
                    <td><input name="srcPrice" class="number l-width" <c:if test="${status.index == 0}">onchange="$('#srcPrice').val(this.value);"</c:if> >
                    </td>
                    <td><input name="costPrice" class="number l-width">
                    </td>
                    <td><input name="stock" class="number l-width">
                    </td>
                        <%--<td><input name="" class="required" style="width: auto;">
                    </td>--%>
                    <td>
                        <c:if test="${status.index != 0}">
                            <a href="javascript:;" onclick="delRow('#no-tag-${status.index}')">删除</a>
                        </c:if>
                        <input type="hidden" name="specificationGroup">
                    </td>
                </tr>
            </c:forEach>
        </c:if>

        <tr id="tr-btn">
            <td colspan="9"><a href="javascript:"
                               onclick="addRow();"
                               class="btn btn-primary">新增一行</a></td>
        </tr>
        </tbody>
    </table>
    <div class="form-actions">
        <shiro:hasPermission name="goods:goods:edit"><input id="btnSubmit" class="btn btn-primary" type="submit"
                                                            value="保 存"/>&nbsp;</shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>

<script type="text/html" id="row-tmp">
    <tr id="no-tag-{{index}}">
        <c:forEach var="list" items="${goodsSpecificationList}">
            <td>
                <c:if test="${list.required eq requiredYes}">
                    <input id="${list.id}{{index}}" name="goodsSpecification${list.id}" class="l-width required">
                </c:if>
                <c:if test="${!(list.required eq requiredYes)}">
                    <input id="${list.id}{{index}}" name="goodsSpecification${list.id}" class="l-width">
                </c:if>
            </td>
        </c:forEach>
        {{if index == 0 }}
        <td><input name="price" class="number l-width" onchange="$('#price').val(this.value);">
        </td>
        <td><input name="srcPrice" class="number l-width" onchange="$('#srcPrice').val(this.value);">
        </td>
        {{/if}}
        {{if index != 0 }}
        <td><input name="srcPrice" class="number l-width">
        </td>
        <td><input name="price" class="number l-width">
        </td>
        {{/if}}
        <td><input name="costPrice" class="number l-width">
        </td>
        <td><input name="stock" class="number l-width">
        </td>
        <%--<td><input name="" class="required" style="width: auto;">
        </td>--%>
        <td>
            {{ if index != 0 }}
            <a href="javascript:;" onclick="delRow('#no-tag-{{index}}')">删除</a>
            {{ /if }}
            <input type="hidden" name="specificationGroup">
        </td>
    </tr>
</script>
</body>
</html>