<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
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
		function delRow(obj, prefix){
			var id = $(prefix+"_id");
			var delFlag = $(prefix+"_delFlag");
			if (id.val() == ""){
				$(obj).parent().parent().remove();
			}else if(delFlag.val() == "0"){
				delFlag.val("1");
				$(obj).html("&divide;").attr("title", "撤销删除");
				$(obj).parent().parent().addClass("error");
			}else if(delFlag.val() == "1"){
				delFlag.val("0");
				$(obj).html("&times;").attr("title", "删除");
				$(obj).parent().parent().removeClass("error");
			}
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li><a href="${ctx}/orders/orders/">订单列表</a></li>
		<li class="active"><a href="${ctx}/orders/orders/form?id=${orders.id}">订单<shiro:hasPermission name="orders:orders:edit">${not empty orders.id?'修改':'添加'}</shiro:hasPermission><shiro:lacksPermission name="orders:orders:edit">查看</shiro:lacksPermission></a></li>
	</ul><br/>
	<form:form id="inputForm" modelAttribute="orders" action="${ctx}/orders/orders/save" method="post" class="form-horizontal">
		<form:hidden path="id"/>
		<sys:message content="${message}"/>		
		<div class="control-group">
			<label class="control-label">真实姓名：</label>
			<div class="controls">
				<form:input path="trueName" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">流程实例id：</label>
			<div class="controls">
				<form:input path="processInstanceId" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">当前流程状态：</label>
			<div class="controls">
				<form:input path="processState" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">总售价，该字段用于会员付款，付款前可以调整售价，例如打个折：</label>
			<div class="controls">
				<form:input path="priceAll" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">总成本价：</label>
			<div class="controls">
				<form:input path="costAll" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所在地区id：</label>
			<div class="controls">
				<form:input path="area.id" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所在城市id：</label>
			<div class="controls">
				<form:input path="city.id" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">所在省份id：</label>
			<div class="controls">
				<form:input path="province.id" htmlEscape="false" maxlength="32" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">地址：</label>
			<div class="controls">
				<form:input path="address" htmlEscape="false" maxlength="64" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单：</label>
			<div class="controls">
				<form:select path="ordersState" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">1待发货，2已发货，3已取消，4已退回，5无货，与order_action同步更新：</label>
			<div class="controls">
				<form:select path="goodsState" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('goods_send_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">1未付款，2已付款，3已退款，与order_action同步更新：</label>
			<div class="controls">
				<form:select path="payState" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('pay_state')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">0进行中1交易成功2交易失败,待发货前全额退款都是失败：</label>
			<div class="controls">
				<form:select path="flag" class="input-xlarge ">
					<form:option value="" label=""/>
					<form:options items="${fns:getDictList('orders_flag')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
				</form:select>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="input-xxlarge "/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">退款：</label>
			<div class="controls">
				<form:input path="refund" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">收益，交易成功时price_all-cost_all-refund：</label>
			<div class="controls">
				<form:input path="income" htmlEscape="false" class="input-xlarge  number"/>
			</div>
		</div>
			<div class="control-group">
				<label class="control-label">订单详情表：</label>
				<div class="controls">
					<table id="contentTable" class="table table-striped table-bordered table-condensed">
						<thead>
							<tr>
								<th class="hide"></th>
								<th>goods_all goods_no</th>
								<th>购买数量</th>
								<th>单个成本</th>
								<th>单个售价，直接等于商品售价</th>
								<th>amount个商品的总售价</th>
								<th>备注</th>
								<shiro:hasPermission name="orders:orders:edit"><th width="10">&nbsp;</th></shiro:hasPermission>
							</tr>
						</thead>
						<tbody id="ordersDetailsList">
						</tbody>
						<shiro:hasPermission name="orders:orders:edit"><tfoot>
							<tr><td colspan="8"><a href="javascript:" onclick="addRow('#ordersDetailsList', ordersDetailsRowIdx, ordersDetailsTpl);ordersDetailsRowIdx = ordersDetailsRowIdx + 1;" class="btn">新增</a></td></tr>
						</tfoot></shiro:hasPermission>
					</table>
					<script type="text/template" id="ordersDetailsTpl">//<!--
						<tr id="ordersDetailsList{{idx}}">
							<td class="hide">
								<input id="ordersDetailsList{{idx}}_id" name="ordersDetailsList[{{idx}}].id" type="hidden" value="{{row.id}}"/>
								<input id="ordersDetailsList{{idx}}_delFlag" name="ordersDetailsList[{{idx}}].delFlag" type="hidden" value="0"/>
							</td>
							<td>
								<input id="ordersDetailsList{{idx}}_goodsNo" name="ordersDetailsList[{{idx}}].goodsNo" type="text" value="{{row.goodsNo}}" maxlength="64" class="input-small "/>
							</td>
							<td>
								<input id="ordersDetailsList{{idx}}_goodsAmount" name="ordersDetailsList[{{idx}}].goodsAmount" type="text" value="{{row.goodsAmount}}" maxlength="11" class="input-small  digits"/>
							</td>
							<td>
								<input id="ordersDetailsList{{idx}}_cost" name="ordersDetailsList[{{idx}}].cost" type="text" value="{{row.cost}}" class="input-small  number"/>
							</td>
							<td>
								<input id="ordersDetailsList{{idx}}_price" name="ordersDetailsList[{{idx}}].price" type="text" value="{{row.price}}" class="input-small  number"/>
							</td>
							<td>
								<input id="ordersDetailsList{{idx}}_priceAll" name="ordersDetailsList[{{idx}}].priceAll" type="text" value="{{row.priceAll}}" class="input-small  number"/>
							</td>
							<td>
								<textarea id="ordersDetailsList{{idx}}_remarks" name="ordersDetailsList[{{idx}}].remarks" rows="4" maxlength="255" class="input-small ">{{row.remarks}}</textarea>
							</td>
							<shiro:hasPermission name="orders:orders:edit"><td class="text-center" width="10">
								{{#delBtn}}<span class="close" onclick="delRow(this, '#ordersDetailsList{{idx}}')" title="删除">&times;</span>{{/delBtn}}
							</td></shiro:hasPermission>
						</tr>//-->
					</script>
					<script type="text/javascript">
						var ordersDetailsRowIdx = 0, ordersDetailsTpl = $("#ordersDetailsTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
						$(document).ready(function() {
							var data = ${fns:toJson(orders.ordersDetailsList)};
							for (var i=0; i<data.length; i++){
								addRow('#ordersDetailsList', ordersDetailsRowIdx, ordersDetailsTpl, data[i]);
								ordersDetailsRowIdx = ordersDetailsRowIdx + 1;
							}
						});
					</script>
				</div>
			</div>
		<div class="form-actions">
			<shiro:hasPermission name="orders:orders:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form:form>
</body>
</html>