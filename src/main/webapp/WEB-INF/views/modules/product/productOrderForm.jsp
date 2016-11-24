<%@ page contentType="text/html;charset=UTF-8" import="com.zjy.losonkei.modules.product.entity.ProductOrder" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<c:set var="DEL_FLAG_NORMAL" value="<%=ProductOrder.DEL_FLAG_NORMAL%>"></c:set>
<c:set var="DEL_FLAG_DELETE" value="<%=ProductOrder.DEL_FLAG_DELETE%>"></c:set>
<html>
<head>
	<title>生产订单管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
					if($("#inputForm").attr("action") == "${ctx}/product/productOrder/save"){
						loading('正在提交，请稍等...');
					}
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
		function chooseGoods(url){
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
				buttons:{"确定":"ok","关闭":true},
				submit:function(v, h, f) {
					if(v=='ok'){
						h.find("iframe")[0].contentWindow.iframeChoose($("#goodsId"),$("#goodsName"));

						$(".required").each(function () {
							$(this).removeClass("required");
						});
						$(".number").each(function () {
							$(this).removeClass("number");
						});
						$('#inputForm').attr('action','${ctx}/product/productOrder/form<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>').submit();
					}
				},loaded:function(h){
					$(".jbox-content",top.document).css("overflow-y","hidden");
				}
			});
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/product/productOrder/list<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>">生产订单列表</a></li>
		<li class="active"><a href="${ctx}/product/productOrder/form<c:if test="${not empty flagNewInvent}">New</c:if><c:if test="${empty flagNewInvent}">Old</c:if>?id=${productOrder.id}">生产订单<shiro:hasPermission name="product:productOrder:edit">${not empty productOrder.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="product:productOrder:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="productOrder" action="${ctx}/product/productOrder/save" method="post" class="form-horizontal">
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
				<a href="javascript:chooseGoods('${ctx}/goods/goods/iframe/list/');" class="btn" style="padding:4px 10px;">&nbsp;<i class="icon-search"></i>&nbsp;</a>&nbsp;&nbsp;
					<span class="help-inline" style="color: red">*</span>
				</div>
			</div>
		</div>
		<c:if test="${not empty productOrder.goodsId}">
		<div class="control-group">
			<table id="contentTable" class="table table-striped table-bordered table-condensed">
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
									<c:forEach items="${i.goodsSpecificationValues}" var="val"><c:if test="${val.goodsSpecification.id eq list.id}">${val.specificationValue}</c:if></c:forEach>
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
									<input type="button" class="btn btn-info" value="禁用">
								</c:if>
								<c:if test="${i.delFlag == DEL_FLAG_DELETE}">
									<input type="button" class="btn btn-warning" value="启用">
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</c:if>
				</tbody>
			</table>
		</div>
		</c:if>
		<form:hidden path="processInstanceId"/>
		<c:if test="${not empty id}">
		<div class="control-group">
			<label class="control-label">当前环节：</label>
			<div class="controls">
				<form:input path="processState" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		</c:if>
		<div class="control-group">
			<label class="control-label">预算：</label>
			<div class="controls">
				<form:input path="budget" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<c:if test="${not empty id}">
		<div class="control-group">
			<label class="control-label">实际花费：</label>
			<div class="controls">
				<form:input path="costAll" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">状态0进行中1成功2失败：</label>
			<div class="controls">
				<form:input path="state" htmlEscape="false" maxlength="1" class="input-xlarge "/>
			</div>
		</div>
		</c:if>
		<c:if test="${empty id}">
			<input type="hidden" name="state" value="<%=ProductOrder.PRODUCT_STATE_ING%>">
		</c:if>
		<input type="hidden" name="productType" value="<c:if test="${not empty flagNewInvent}"><%=ProductOrder.PRODUCT_TYPE_NEW%></c:if><c:if test="${empty flagNewInvent}"><%=ProductOrder.PRODUCT_TYPE_OLD%></c:if>"/>

		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="form-actions">
			<shiro:hasPermission name="product:productOrder:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>