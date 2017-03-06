<%@ page import="com.zjy.losonkei.modules.orders.entity.Orders" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<c:set var="FLAG_DOING"><%=Orders.FLAG_DOING%></c:set>

<html>
<head>
	<title>订单管理</title>
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
			$("#act-form").validate({
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
		function addRow(list, idx, tpl, row){
			$(list).append(Mustache.render(tpl, {
				idx: idx, delBtn: true, row: row
			}));
			$(list+idx).find("select").each(function(){
				$(this).val($(this).attr("data-value"));
			});
			$(list+idx).find("input[type='checkbox'], input[type='radio']").each(function(){
				var ss = $(this).attr("data-value").split(',');
				for (var i=0; i<ss.length; i++){
					if($(this).val() == ss[i]){
						$(this).attr("checked","checked");
					}
				}
			});
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/orders/orders/<c:if test="${FLAG_DOING ne orders.flag}">listOld</c:if>">订单列表</a></li>
		<li class="active"><a href="${ctx}/orders/orders/form?id=${orders.id}">订单<shiro:hasPermission name="orders:orders:edit">${not empty orders.id?'处理':'添加'}</shiro:hasPermission><shiro:lacksPermission name="orders:orders:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>

	<div class="form-actions" style="margin-top: -28px;">
		<h3>基本信息</h3>
	</div>
	<sys:message content="${message}"/>
	<form:form id="inputForm" modelAttribute="orders" action="${ctx}/orders/orders/save" method="post" class="form-horizontal">
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">订单号：</label>
			<div class="controls">
				<form:input path="id" htmlEscape="false" maxlength="64" class="input-xlarge " readonly="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">收货人：</label>
			<div class="controls">
				<form:input path="trueName" htmlEscape="false" maxlength="64" class="input-xlarge " disabled="true"/>
			</div>
		</div>
		<%--<div class="control-group">
			<label class="control-label">流程实例id：</label>
			<div class="controls">
				<form:input path="processInstanceId" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>--%>
		<div class="control-group">
			<label class="control-label">总价</label>
			<div class="controls">
				<form:input path="priceAll" htmlEscape="false" class="input-xlarge  number" disabled="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">总成本价：</label>
			<div class="controls">
				<form:input path="costAll" htmlEscape="false" class="input-xlarge  number" disabled="true"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">所在省份：</label>
			<div class="controls">
				<form:input path="province.name" htmlEscape="false" maxlength="32" class="input-xlarge " disabled="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所在城市：</label>
			<div class="controls">
				<form:input path="city.name" htmlEscape="false" maxlength="32" class="input-xlarge " disabled="true"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">所在地区：</label>
			<div class="controls">
				<form:input path="area.name" htmlEscape="false" maxlength="32" class="input-xlarge " disabled="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">地址：</label>
			<div class="controls">
				<form:input path="address" htmlEscape="false" maxlength="64" class="input-xlarge " disabled="true"/>
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">流程状态：</label>
			<div class="controls">
				<form:input path="processState" htmlEscape="false" maxlength="32" class="input-xlarge " disabled="true"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">付款状态：</label>
			<div class="controls">
				<form:select path="payState" class="input-xlarge " disabled="true">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('pay_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">订单状态：</label>
			<div class="controls">
				<form:select path="ordersState" class="input-xlarge " disabled="true">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">商品状态：</label>
			<div class="controls">
				<form:select path="goodsState" class="input-xlarge " disabled="true">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('goods_send_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">完成情况：</label>
			<div class="controls">
				<form:select path="flag" class="input-xlarge " disabled="true">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">收益：<br>（总售价 - 成本价 - 退款）</label>
			<div class="controls">
				<form:input path="income" htmlEscape="false" class="input-xlarge  number" disabled="true"/>
			</div>
		</div>
		<c:if test="${not empty orders.refund}">
			<div class="control-group">
				<label class="control-label">退款：</label>
				<div class="controls">
					<form:input path="refund" htmlEscape="false" class="input-xlarge  number" disabled="true"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">退款原因：</label>
				<div class="controls">
					<form:textarea path="reason" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge " disabled="true"/>
				</div>
			</div>
		</c:if>
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
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
				<shiro:hasPermission name="orders:orders:edit">
					<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
				<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
			</div>
		</div>

		<%--<div class="form-actions">
			<shiro:hasPermission name="orders:orders:edit">
				<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>--%>
	</form:form>
	<div class="form-actions">
		<h3>购买情况</h3>
	</div>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<th>序号</th>
			<th class="sort-column">库存</th>
			<th>商品号</th>
			<th>商品名</th>
			<th>购买数量</th>
			<th>成本价（个）</th>
			<th>单价</th>
			<th>总价</th>
			<th>退回数量</th>
			<th>退回合格数量</th>
			<%--<th>备注</th>--%>
			<th>查看</th>
		</tr>
		</thead>
		<tbody id="ordersDetailsList">
		<c:forEach items="${orders.ordersDetailsList}" var="details" varStatus="status">
			<tr>
				<td data-id="${details.goodsAll.id}">${status.index + 1}</td>
				<td class="data-stock" data-id="${details.goodsAll.id}">${details.goodsAll.stock}</td>
				<td>${details.goodsNo}</td>
				<td>${details.remarks}</td>
				<td>${details.goodsAmount}</td>
				<td>${details.cost}</td>
				<td>${details.price}</td>
				<td>${details.priceAll}</td>
				<td>${details.backAmount}</td>
				<td>${details.backQualifiedAmount}</td>
				<td><a href="${pageContext.request.contextPath}/goodsDetails/${details.goodsId}" target="_blank">访问</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<c:if test="${not empty task}">
		<div class="form-actions">
			<h3>处理订单（${task.name}）</h3>
		</div>
		<form class="form-horizontal" method="post" action="${ctx}/orders/orders/doTask" id="act-form">
			<input type="hidden" name="taskId" value="${task.id}">
			<input type="hidden" name="ordersId" value="${orders.id}">
			<div class="control-group">
				<label class="control-label">提交意见：</label>
				<div class="controls">
					<textarea id="comment" name="comment" rows="4" class="input-xxlarge"></textarea>
				</div>
			</div>
			<c:if test="${'退货入库' eq task.name}">
				<div class="control-group">
					<label class="control-label">入库信息：</label>
					<div class="controls">
						<div class="row-fluid">
							<div class="span5">
								<table class="table table-striped table-bordered table-condensed">
									<thead>
										<tr>
											<th>序号</th>
											<th>寄回数量</th>
											<th>可重用数量</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${orders.ordersDetailsList}" var="details" varStatus="status">
											<tr>
												<td>${status.index + 1}</td>
												<td><input type="text" name="back-${details.id}" class="input-medium digits required"></td>
												<td><input type="text" name="back-q-${details.id}" class="input-medium digits required"></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</c:if>
			<c:if test="${'寄回退款' eq task.name || '退货退款' eq task.name}">
				<div class="control-group">
					<label class="control-label">退款金额：</label>
					<div class="controls">
						<input type="text" name="back-money" class="input-medium number required">
					</div>
				</div>
			</c:if>
			<div class="form-actions">
				<shiro:hasPermission name="orders:orders:edit">
					<c:if test="${'检查库存' eq task.name || '待发货' eq task.name}">
						<input value="刷新库存" type="button" onclick="reFreshStock();" class=" btn-warning btn" style="margin-right: 50px;">
						<script>
							function reFreshStock(){
								$(".data-stock").each(function(){
									var id = $(this).attr("data-id");
									$(this).html("");
									var $tmp = $(this);
									$.get("${ctx}/orders/orders/getStock?goodsNo="+id,function(data){
										$tmp.append(data);
									});
								});
							}
						</script>
					</c:if>
					<c:if test="${not empty ordersFlow.formName}">
						<input type="hidden" name="${ordersFlow.formName}" id="flow-parm"/>
						<c:forEach var="d" items="${ordersFlow.details}">
							<input onclick="$('#flow-parm').val('${d.formValue}');$('#act-form').submit();" class="btn btn-primary" type="button" value="${d.formLabel}"/>&nbsp;&nbsp;&nbsp;
						</c:forEach>
					</c:if>
					<c:if test="${empty ordersFlow.formName}">
						<input id="btnSubmit" class="btn btn-primary" type="submit" value="${ordersFlow.taskName}"/>&nbsp;&nbsp;
					</c:if></shiro:hasPermission>
				<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
			</div>
		</form>
	</c:if>
</body>
</html>