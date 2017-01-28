<%@ page contentType="text/html;charset=UTF-8"
         import="com.zjy.losonkei.modules.goods.entity.Goods,com.zjy.losonkei.common.persistence.BaseEntity" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<c:set var="requiredYes" value="<%=Goods.REQUIRED_YES%>"></c:set>
<c:set var="DEL_FLAG_NORMAL" value="<%=BaseEntity.DEL_FLAG_NORMAL%>"></c:set>
<c:set var="DEL_FLAG_DELETE" value="<%=BaseEntity.DEL_FLAG_DELETE%>"></c:set>
<c:set var="DEL_FLAG_TURE_DELETE" value="<%=Goods.DEL_FLAG_TURE_DELETE%>"></c:set>
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
            $.validator.prototype.elements = function () {
                return $(this.currentForm)
                        .find("input, select, textarea")
                        .not(":submit, :reset, :image, [disabled]")
                        .not(this.settings.ignore);
            };

            $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
               //     console.log($("#inputForm").serialize());

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
            if (tagIndex == 0) {
                addRow();
            }
        });
        function addRow() {
            var html = template('row-tmp', {index: tagIndex});
            $("#tr-btn").before(html);
            tagIndex++;
        }
        function delRow(id) {
            $(id).remove();
        }
        function goodsAllDisabled(id) {
            $(id).val('${DEL_FLAG_TURE_DELETE}');
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/product/newGoodsSetting/">商品列表</a></li>
    <li class="active"><a href="${ctx}/product/newGoodsSetting/form?id=${goods.id}">商品<shiro:hasPermission
            name="product:newGoodsSetting:edit">${not empty goods.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="product:newGoodsSetting:edit">查看</shiro:lacksPermission></a></li>
</ul>
<form:form id="inputForm" modelAttribute="goods" action="${ctx}/product/newGoodsSetting/save" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">商品分类：</label>

        <div class="controls">
            <sys:treeselect id="goodsCategory" name="goodsCategory.id" value="${goods.goodsCategory.id}"
                            labelName="goodsCategory.categoryName"
                            labelValue="${goods.goodsCategory.categoryName}"
                            title="商品分类" url="/goods/goodsCategory/treeData"  notAllowSelectParent="true" cssClass=""
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
                <form:option value="2" label="不限"/>
                <form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <form:hidden path="state" value="<%=Goods.STATE_INVENTING%>"/>
    <c:if test="${not empty goodsAttrList && fn:length(goodsAttrList) > 0}">
        <c:forEach var="list" items="${goodsAttrList}" varStatus="status">
            <div class="control-group">
                <label class="control-label">${list.attrName}：</label>

                <div class="controls">
                    <input id="attr${status.index}" data-attrId="${list.id}" name="goodsAttrValues${list.id}"
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
            <form:input path="srcPrice" htmlEscape="false" class="number input-small "/><span
                style="color: #9f9f9f;">（可不填）</span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">现价：</label>

        <div class="controls">
            <form:input path="price" htmlEscape="false" class="number input-small"/>
        </div>
    </div>
    <c:if test="${not empty goods.id}">
    <div class="control-group" id="ol-thumb-img">
        <label class="control-label">缩略图：</label>

        <div class="controls">
            <form:hidden path="thumbImgUrl" htmlEscape="false" maxlength="255" class="input-xlarge"/>
            <sys:ckfinder input="thumbImgUrl" type="images" uploadPath="/goods/${goods.id}" selectMultiple="false" maxWidth="100" maxHeight="100"/>
        </div>
        <style>
            #ol-thumb-img li{
                list-style: none;
            }
        </style>
    </div>
    <div class="control-group" id="ol-img">
        <label class="control-label">画廊图：</label>

        <div class="controls">
            <form:hidden path="imgUrl" htmlEscape="false" maxlength="255" class="input-xlarge"/>
            <sys:ckfinder input="imgUrl" type="images" uploadPath="/goods/${goods.id}" selectMultiple="true" maxWidth="100" maxHeight="100"/>
        </div>
        <style>
            #ol-img li{
                list-style: none;
                float: left;
            }
            #ol-img ol:after{
                display: table; content: ""; width: 0; clear: both;
            }
        </style>
    </div>
    </c:if>
    <div class="control-group">
        <label class="control-label">描述：</label>

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
            <th>排序<span class="help-inline"><font color="red">*</font></span></th>
            <shiro:hasPermission name="product:newGoodsSetting:edit">
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
                    <td><input name="m-price" class="number l-width" value="${goodsAll.price}">
                    </td>
                    <td><input name="m-srcPrice" class="number l-width" value="${goodsAll.srcPrice}">
                    </td>
                    <td><input name="costPrice" class="number l-width" value="${goodsAll.costPrice}">
                    </td>
                    <td><input name="stock" class="number l-width" value="${goodsAll.stock}">
                    </td>
                    <td><input name="srcSpecificationGroup" type="hidden" value="${goodsAll.specificationGroup}">
                        <input name="specificationGroup" class="number required l-width"
                               value="${goodsAll.specificationGroup}" id="specificationGroup${status.index}"></td>
                    <td>
                        <input name="goodsAllId" value="${goodsAll.id}" type="hidden"/>
                        <input name="delFlag" value="${goodsAll.delFlag}" type="hidden" id="delFlag${goodsAll.id}">
                        <input type="button" class="btn btn-danger" onclick="goodsAllDisabled('#delFlag${goodsAll.id}');$('#no-tag-${status.index}').hide();" value="删除">
                    </td>
                </tr>
            </c:forEach>
        </c:if>

        <tr id="tr-btn">
            <td colspan="${fn:length(goodsSpecificationList) + 6}"><a href="javascript:"
                               onclick="addRow();"
                               class="btn btn-primary">新增一行</a></td>
        </tr>
        </tbody>
    </table>
    <div class="form-actions">
        <shiro:hasPermission name="product:newGoodsSetting:edit"><input id="btnSubmit" class="btn btn-primary" type="submit"
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
        <td><input name="m-srcPrice" class="number l-width">
        </td>
        <td><input name="m-price" class="number l-width">
        </td>
        <td><input name="costPrice" class="number l-width">
        </td>
        <td><input name="stock" class="digits l-width">
        </td>
        <td><input name="srcSpecificationGroup" type="hidden" value="">
            <input name="specificationGroup" id="specificationGroup{{index}}"  class="digits required l-width">
        </td>
        <td>
            <input name="goodsAllId" value="" type="hidden"/>
            <input name="delFlag" value="${DEL_FLAG_NORMAL}" type="hidden"/>
            {{ if index != 0 }}
            <input type="button" class="btn btn-danger" onclick="delRow('#no-tag-{{index}}');" value="删除">
            {{ /if }}
        </td>
    </tr>
</script>
</body>
</html>