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
            $("#div-goods-details").css("padding-top", $("#contentTable").height() - 20 + "px");

            $("#inputForm").validate({
                submitHandler: function (form) {
                    if ($("#inputForm").attr("action") == "${ctx}/product/productOrder/save") {
                        preSubmit();
                        if ($("#goodsAllIds").val() == "") {
                            alertx("至少选择一件商品！");
                            return;
                        }
                        loading('正在提交，请稍等...');
                    }
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
        function chooseGoods(url) {
            <c:if test="${not empty flagNewInvent}">
            url += '<%=ProductOrder.PRODUCT_TYPE_NEW%>';
            </c:if>
            <c:if test="${empty flagNewInvent}">
            url += '<%=ProductOrder.PRODUCT_TYPE_OLD%>';
            </c:if>
            top.$.jBox("iframe:" + url, {
                title: "商品选择",
                width: 600,
                height: 500,
                buttons: {"确定": "ok", "关闭": true},
                submit: function (v, h, f) {
                    if (v == 'ok') {
                        h.find("iframe")[0].contentWindow.iframeChoose($("#goodsId"), $("#goodsName"));

                        $(".required").each(function () {
                            $(this).removeClass("required");
                        });
                        $(".number").each(function () {
                            $(this).removeClass("number");
                        });
                        $(".digits").each(function () {
                            $(this).removeClass("digits");
                        });
                        $('#inputForm').attr('action', '${ctx}/product/productOrder/form<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>').submit();
                    }
                }, loaded: function (h) {
                    $(".jbox-content", top.document).css("overflow-y", "hidden");
                }
            });
        }
    </script>
</head>
<body>
<ul class="nav nav-tabs">
    <li>
        <a href="${ctx}/product/productOrder/list<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>">生产订单列表</a>
    </li>
    <li class="active"><a
            href="${ctx}/product/productOrder/form<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>?id=${productOrder.id}">生产订单<shiro:hasPermission
            name="product:productOrder:edit">${not empty productOrder.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission
            name="product:productOrder:edit">查看</shiro:lacksPermission></a></li>
</ul>
<br/>
<form:form id="inputForm" modelAttribute="productOrder" action="${ctx}/product/productOrder/save" method="post"
           class="form-horizontal">
    <form:hidden path="id"/>
    <sys:message content="${message}"/>
    <div class="control-group">
        <label class="control-label">生产订单名称：</label>

        <div class="controls">
            <form:input path="orderName" htmlEscape="false" maxlength="128" class="input-xlarge required"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">商品名称：</label>

        <div class="controls">
            <div class="input-append ">
                <form:hidden path="goodsId"/>
                <form:input path="goodsName" readonly="true" cssClass="required"/>
                <a href="javascript:chooseGoods('${ctx}/goods/goods/iframe/list/');" class="btn"
                   style="padding:4px 10px;">&nbsp;<i class="icon-search"></i>&nbsp;</a>&nbsp;&nbsp;
                <span class="help-inline" style="color: red">*</span>
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
                                <th style="width: 20px;"><input id="productDetailsAll"
                                                                <c:if test="${not empty goodsAlls && not empty productOrder.productOrderDetailsList && fn:length(productOrder.productOrderDetailsList) == fn:length(goodsAlls)}">checked="true"</c:if>
                                                                onclick="selectAll(this);" type="checkbox"></th>
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
                                        <td><input onclick="selectSingle();"
                                                   <c:if test="${not empty productOrder.productOrderDetailsList}">
                                                   <c:forEach var="pod" items="${productOrder.productOrderDetailsList}">
                                                   <c:if test="${pod.goodsNo == i.id}">checked="true"</c:if>
                                        </c:forEach>
                                        </c:if> data-name="productDetails" type="checkbox" data-good-all-id="${i.id}"
                                                   data-stock-id="stock-${status.index}"></td>
                                        <c:forEach var="list" items="${goodsSpecificationList}">
                                            <td>
                                                <c:forEach items="${i.goodsSpecificationValues}" var="val"><c:if
                                                        test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>
                                            </td>
                                        </c:forEach>
                                        <td><input style="width: 50px;"
                                                   <c:if test="${not empty productOrder.productOrderDetailsList}">
                                                   <c:forEach var="pod" items="${productOrder.productOrderDetailsList}">
                                                   <c:if test="${pod.goodsNo == i.id}">value="${pod.productAmount}"</c:if>
                                        </c:forEach>
                                        </c:if> data-css="required digits" name="stock-${status.index}"
                                                   id="stock-${status.index}"></td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                    <div class="span4" id="div-goods-details"><a class="btn btn-mini btn-primary"
                                                                 href="javascript:openDetails();">详情</a></div>
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
                    function selectAll(ele) {
                        var val = ele.checked;
                        $("input[data-name='productDetails']").each(function () {
                            this.checked = val;
                            var stockId = $(this).attr("data-stock-id");
                            if (val) {
                                $('#' + stockId).attr("class", $('#' + stockId).attr("data-css"));
                            } else {
                                $('#' + stockId).attr("class", "");
                            }
                        });
                    }
                    function selectSingle() {
                        var all = true;
                        $("input[data-name='productDetails']").each(function () {
                            var stockId = $(this).attr("data-stock-id");
                            if (this.checked) {
                                $('#' + stockId).attr("class", $('#' + stockId).attr("data-css"));
                            } else {
                                $('#' + stockId).attr("class", "");
                                all = false;
                            }
                        });
                        document.getElementById("productDetailsAll").checked = all;
                    }

                    function preSubmit() {
                        var goodsAllIds = "";
                        var productsAmounts = "";
                        $("input[data-name='productDetails']").each(function () {
                            if (this.checked) {
                                goodsAllIds += $(this).attr("data-good-all-id") + ",";
                                var stockId = $(this).attr("data-stock-id");
                                productsAmounts += $("#" + stockId).val() + ",";
                            }
                        });
                        $("#goodsAllIds").val(goodsAllIds != "" ? goodsAllIds.substring(0, goodsAllIds.length - 1) : "");
                        $("#productsAmounts").val(productsAmounts != "" ? productsAmounts.substring(0, productsAmounts.length - 1) : "");
                    }
                </script>
            </div>
        </div>
    </c:if>
    <form:hidden path="processInstanceId"/>
    <c:if test="${not empty productOrder.id}">
        <div class="control-group">
            <label class="control-label">当前环节：</label>

            <div class="controls">
                <form:input path="processState" readonly="true" htmlEscape="false" maxlength="32" class="input-xlarge "/>
            </div>
        </div>
    </c:if>
    <div class="control-group">
        <label class="control-label">生产人员：</label>

        <div class="controls" title="${productOrder.producersNames}">
            <sys:treeselect id="producersIds" name="producersIds" value="${productOrder.producersIds}"
                            labelName="producersNames" labelValue="${productOrder.producersNames}"
                            title="生产人员" url="/sys/office/treeData?type=3"
                            checked="true" dataMsgRequired="至少选择一个用户"
                            cssClass="required input-xxlarge" allowClear="true" notAllowSelectParent="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">审核人员：</label>

        <div class="controls" title="${productOrder.auditorsNames}">
            <sys:treeselect id="auditorsIds" name="auditorsIds" value="${productOrder.auditorsIds}"
                            labelName="auditorsNames" labelValue="${productOrder.auditorsNames}"
                            title="审核人员" url="/sys/office/treeData?type=3" checked="true" dataMsgRequired="至少选择一个用户"
                            cssClass="required input-xxlarge" allowClear="true" notAllowSelectParent="true"/>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">预算：</label>

        <div class="controls">
            <form:input path="budget" htmlEscape="false" class="number"/>
        </div>
    </div>
    <c:if test="${not empty productOrder.id}">
        <%--<div class="control-group">
            <label class="control-label">实际花费：</label>

            <div class="controls">--%>
                <form:hidden path="costAll" htmlEscape="false"/>
            <%--</div>
        </div>--%>
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
    <c:if test="${empty productOrder.id}">
        <input type="hidden" name="state" value="<%=ProductOrder.PRODUCT_STATE_INIT%>">
    </c:if>
    <input type="hidden" name="productType"
           value="<c:if test="${not empty flagNewInvent}"><%=ProductOrder.PRODUCT_TYPE_NEW%></c:if><c:if test="${empty flagNewInvent}"><%=ProductOrder.PRODUCT_TYPE_OLD%></c:if>"/>

    <div class="control-group">
        <label class="control-label">备注：</label>

        <div class="controls">
            <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
        </div>
    </div>
    <div class="form-actions">
        <shiro:hasPermission name="product:productOrder:edit"><input id="btnSubmit" class="btn btn-primary"
                                                                     type="submit"
                                                                     value="保 存"/>&nbsp;</shiro:hasPermission>
        <input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
    </div>
</form:form>
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