<%@ page contentType="text/html;charset=UTF-8"
         import="com.zjy.losonkei.modules.goods.entity.Goods,com.zjy.losonkei.common.persistence.BaseEntity" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<c:set var="requiredYes" value="<%=Goods.REQUIRED_YES%>"></c:set>
<c:set var="DEL_FLAG_NORMAL" value="<%=BaseEntity.DEL_FLAG_NORMAL%>"></c:set>
<c:set var="DEL_FLAG_DELETE" value="<%=BaseEntity.DEL_FLAG_DELETE%>"></c:set>
<html>
<head>
    <title>商品管理</title>
    <meta name="decorator" content="default"/>
    <style>
        td{
            width: 50px;
        }
        .controls{
            padding-top: 3px;
        }
    </style>
</head>
<body>
<ul class="nav nav-tabs">
    <li><a href="${ctx}/goods/goods/">商品列表</a></li>
    <li class="active"><a href="${ctx}/goods/goods/view?id=${goods.id}">商品查看</a></li>
</ul>
<form:form id="inputForm" modelAttribute="goods" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">商品分类：</label>

        <div class="controls">
            ${goods.goodsCategory.categoryName}
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">商品名称：</label>

        <div class="controls">
            ${goods.goodsName}
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">季节：</label>

        <div class="controls">
            <form:select path="season" class="input-medium" disabled="true">
                <form:option value="" label="不限"/>
                <form:options items="${fns:getDictList('season')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">推荐人群：</label>

        <div class="controls">
            <form:select path="sex" class="input-medium" disabled="true">
                <form:option value="2" label="不限"/>
                <form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">状态：</label>

        <div class="controls">
            <form:select path="state" class="input-medium " disabled="true">
                <form:options items="${fns:getDictList('goods_state')}" itemLabel="label" itemValue="value"
                              htmlEscape="false"/>
            </form:select>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">上架时间：</label>

        <div class="controls">
            <fmt:formatDate value="${goods.onShelfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
            <span style="color: #9f9f9f;margin-left: 10px;">当前时间超过上架时间，且状态为“在售”时自动上架</span>
        </div>
    </div>

    <c:if test="${not empty goodsAttrList && fn:length(goodsAttrList) > 0}">
        <c:forEach var="list" items="${goodsAttrList}" varStatus="status">
            <c:if test="${not empty list.goodsAttrValue.attrValue}">
            <div class="control-group">
                <label class="control-label">${list.attrName}：</label>
                <div class="controls">
                    ${list.goodsAttrValue.attrValue}
                </div>
            </div>
            </c:if>
        </c:forEach>
    </c:if>

    <div class="control-group">
        <label class="control-label">关键词：</label>
        <div class="controls">
            ${goods.keywords}
        </div>
    </div>

    <div class="control-group">
        <label class="control-label">原价：</label>
        <div class="controls">
            ${goods.srcPrice}
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">现价：</label>
        <div class="controls">
            ${goods.price}
        </div>
    </div>
    <c:if test="${not empty goods.id}">
    <div class="control-group" id="ol-thumb-img">
        <label class="control-label">缩略图：</label>

        <div class="controls">
            <form:hidden path="thumbImgUrl" htmlEscape="false" maxlength="255" class="input-xlarge"/>
            <sys:ckfinder input="thumbImgUrl" readonly="true" type="images" uploadPath="/goods/${goods.id}" selectMultiple="false" maxWidth="100" maxHeight="100"/>
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
            <sys:ckfinder input="imgUrl" readonly="true" type="images" uploadPath="/goods/${goods.id}" selectMultiple="true" maxWidth="100" maxHeight="100"/>
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
        <label class="control-label">备注：</label>

        <div class="controls">
            <form:textarea path="remarks" readonly="true" htmlEscape="false" rows="2" maxlength="255" class="input-xxlarge "/>
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
            <th>状态</th>
        </tr>
        </thead>
        <tbody>
        <c:if test="${not empty goods.goodsAlls}">
            <c:forEach varStatus="status" var="goodsAll" items="${goods.goodsAlls}">
                <tr>
                    <c:forEach var="list" items="${goodsSpecificationList}">
                        <td>
                          <c:forEach items="${goodsAll.goodsSpecificationValues}" var="val"><c:if test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>
                        </td>
                    </c:forEach>
                    <td>${goodsAll.price}
                    </td>
                    <td>${goodsAll.srcPrice}
                    </td>
                    <td>${goodsAll.costPrice}
                    </td>
                    <td>${goodsAll.stock}
                    </td>
                    <td>${goodsAll.specificationGroup}</td>
                    <td>
                        <c:if test="${goodsAll.delFlag == DEL_FLAG_NORMAL}">
                            <input type="button" class="btn btn-warning btn-mini" disabled="true" value="启用">
                        </c:if>
                        <c:if test="${goodsAll.delFlag == DEL_FLAG_DELETE}">
                            <input type="button" class="btn btn-info btn-mini" disabled="true" value="禁用">
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
        </tbody>
    </table>
    <div class="form-actions">
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>

</body>
</html>