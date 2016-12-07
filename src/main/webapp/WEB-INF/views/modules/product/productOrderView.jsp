<%@ page contentType="text/html;charset=UTF-8" import="com.zjy.losonkei.modules.product.entity.ProductOrder" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<c:set var="DEL_FLAG_NORMAL" value="<%=ProductOrder.DEL_FLAG_NORMAL%>"></c:set>
<c:set var="DEL_FLAG_DELETE" value="<%=ProductOrder.DEL_FLAG_DELETE%>"></c:set>
<html>
<head>
    <title>生产订单管理</title>
    <meta name="decorator" content="default"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#div-goods-details").css("padding-top",$("#contentTable").height()-20 + "px");
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
    <li>
        <a href="${ctx}/product/productOrder/list<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>">生产订单列表</a>
    </li>
    <li class="active"><a
            href="${ctx}/product/productOrder/view?id=${productOrder.id}">生产订单查看</a>
    </li>
</ul>
<br/>
<sys:message content="${message}"/>
<form:form id="inputForm" modelAttribute="productOrder" method="post" class="form-horizontal">
    <form:hidden path="id"/>
    <div class="control-group">
        <label class="control-label">生产订单名称：</label>

        <div class="controls">
            <form:input path="orderName" readonly="true" htmlEscape="false" cssClass="input-xlarge"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">商品名称：</label>

        <div class="controls">
            <div class="input-append ">
                <form:hidden path="goodsId"/>
                <form:input path="goodsName" readonly="true" cssClass="input-xlarge"/>
            </div>
        </div>
    </div>
    <c:if test="${not empty productOrder.goodsId}">
        <div class="control-group">
            <label class="control-label">选择生产：</label>
            <form:hidden path="goodsAllIds"/>
            <form:hidden path="productsAmounts"/>
            <div class="controls">
                <div class="row-fluid">
                    <div class="span8">

                        <table id="contentTable" class="table table-striped table-bordered table-condensed">
                            <thead>
                            <tr>
                                <th style="width: 20px;"><input disabled="true"
                                                                <c:if test="${not empty goodsAlls && not empty productOrder.productOrderDetailsList && fn:length(productOrder.productOrderDetailsList) == fn:length(goodsAlls)}">checked="true"</c:if>
                                                                type="checkbox"></th>
                                <c:forEach var="list" items="${goodsSpecificationList}">
                                    <th>
                                            ${list.specificationName}
                                    </th>
                                </c:forEach>
                                <th class="sort-column">生产数量</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${not empty goodsAlls}">
                                <c:forEach varStatus="status" var="i" items="${goodsAlls}">
                                    <tr>
                                        <td><input disabled="true"
                                        <c:if test="${not empty productOrder.productOrderDetailsList}">
                                        <c:forEach var="pod" items="${productOrder.productOrderDetailsList}">
                                                   <c:if test="${pod.goodsNo == i.id}">checked="true"</c:if>
                                        </c:forEach>
                                        </c:if> type="checkbox"></td>
                                        <c:forEach var="list" items="${goodsSpecificationList}">
                                            <td>
                                                <c:forEach items="${i.goodsSpecificationValues}" var="val"><c:if
                                                        test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>
                                            </td>
                                        </c:forEach>
                                        <td><c:if test="${not empty productOrder.productOrderDetailsList}"><c:forEach
                                                var="pod" items="${productOrder.productOrderDetailsList}"><c:if
                                                test="${pod.goodsNo == i.id}">${pod.productAmount}</c:if></c:forEach></c:if></td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                    <div class="span4" id="div-goods-details"><a class="btn btn-mini btn-primary" href="javascript:openDetails();">详情</a></div>
                </div>
                <script>
                    function openDetails() {
                        $.jBox($('#showGoodsDetails').html(), {
                            title: '商品详情',
                            width: 800,
                            height: 350,
                            buttons: {'关闭': true}
                        });
                    }
                </script>
            </div>
        </div>
    </c:if>
    <form:hidden path="processInstanceId"/>
    <div class="control-group">
        <label class="control-label">当前环节：</label>

        <div class="controls">
            <form:input readonly="true" path="processState" htmlEscape="false" maxlength="32" class="input-xlarge "/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">生产人员：</label>

        <div class="controls" title="${productOrder.producersNames}">
            <input readonly="true" value="${productOrder.producersNames}" type="text" class="input-xxlarge">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">审核人员：</label>

        <div class="controls" title="${productOrder.auditorsNames}">
            <input readonly="true" value="${productOrder.auditorsNames}" type="text" class="input-xxlarge">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">预算：</label>

        <div class="controls">
            <form:input path="budget" readonly="true" htmlEscape="false" class="number"/>
        </div>
    </div>
    <c:if test="${not empty productOrder.id}">
        <div class="control-group">
            <label class="control-label">实际花费：</label>

            <div class="controls">
                <form:input path="costAll" readonly="true" htmlEscape="false"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">订单状态：</label>

            <div class="controls">
                <form:select path="state" class="input-medium" disabled="true">
                    <form:options items="${fns:getDictList('product_order_state')}" itemLabel="label" itemValue="value"
                                  htmlEscape="false"/>
                </form:select>
            </div>
        </div>
    </c:if>
    <%--<c:if test="${empty productOrder.id}">
        <input type="hidden" name="state" value="<%=ProductOrder.PRODUCT_STATE_INIT%>">
    </c:if>--%>
    <div class="control-group">
        <label class="control-label">备注：</label>

        <div class="controls">
            <form:textarea readonly="true" path="remarks" htmlEscape="false" rows="4" maxlength="255"
                           class="input-xxlarge "/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">生产日志：</label>
        <div class="controls">
           <a class="btn btn-primary btn-mini" onclick="openLog('${ctx}/product/productLog?productOrderId=${productOrder.id}');">查看</a>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">流转信息：</label>
        <div class="controls">
            <div class="row-fluid">
                <div class="span11">
                    <%@include file="/WEB-INF/views/modules/include/actTaskHistoricFlow.jsp"%>
                </div>
            </div>
        </div>
    </div>
</form:form>

    <div class="form-actions">
        <c:if test="${productOrder.nextStepBelongsMe && not empty productOrder.nextStep}">
            <input style="margin-right: 20px;" type="button" class="btn btn-primary" value="${productOrder.nextStep}"/>
        </c:if>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>

<script>
    function openLog(url){
        top.$.jBox("iframe:" + url, {
            title: "生产日志",
            width: 800,
            height: 500,
            buttons: {"关闭": true},
            loaded: function (h) {
                $(".jbox-content", top.document).css("overflow-y", "hidden");
            }
        });
    }
</script>

<c:if test="${not empty productOrder.goodsId}">
    <script type="text/template" id="showGoodsDetails">
        <table class="table table-striped table-bordered table-condensed">
            <thead>
            <tr>
                <c:forEach var="list" items="${goodsSpecificationList}">
                    <th>
                            ${list.specificationName}
                    </th>
                </c:forEach>
                <th>现价</th>
                <th>原价</th>
                <th>成本价</th>
                <th>库存</th>
                <th>排序</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${not empty goodsAlls}">
                <c:forEach varStatus="status" var="i" items="${goodsAlls}">
                    <tr>
                        <c:forEach var="list" items="${goodsSpecificationList}">
                            <td>
                                <c:forEach items="${i.goodsSpecificationValues}" var="val"><c:if
                                        test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>
                            </td>
                        </c:forEach>
                        <td>${i.price}
                        </td>
                        <td>${i.srcPrice}
                        </td>
                        <td>${i.costPrice}
                        </td>
                        <td>${i.stock}
                        </td>
                        <td>${i.specificationGroup}</td>
                        <td>
                            <c:if test="${i.delFlag == DEL_FLAG_NORMAL}">
                                <a class="btn btn-mini btn-warning" disabled="true">启用</a>
                            </c:if>
                            <c:if test="${i.delFlag == DEL_FLAG_DELETE}">
                                <a class="btn btn-mini btn-info" disabled="true">禁用</a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
    </script>
</c:if>
</body>
</html>