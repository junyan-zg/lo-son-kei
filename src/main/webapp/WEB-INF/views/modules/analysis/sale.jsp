<%@ page import="com.zjy.losonkei.modules.product.entity.ProductOrder" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品总计</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript" src="${ctxStatic}/echarts/echarts.min.js"></script>
	<script type="text/javascript">
		function page(n,s){
			if(n) $("#pageNo").val(n);
			if(s) $("#pageSize").val(s);
			$("#searchForm").submit();
			return false;
		}
		$(document).ready(function() {
			$("#searchForm").validate({
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
		<li class="active"><a href="${ctx}/analysis/sale">销售情况</a></li>
		<li><a href="${ctx}/analysis/searchRecord">搜索排行</a></li>
		<li><a href="${ctx}/analysis/goodsCount">商品总计</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="goods" action="${ctx}/analysis/goodsCount" method="post" class="breadcrumb form-search">
		<div>
			<label>选择商品：</label>
			<form:hidden path="id"/>
			<form:input path="goodsName" readonly="true"/>
			<a href="javascript:chooseGoods('${ctx}/goods/goods/iframe/list/<%=ProductOrder.PRODUCT_TYPE_OLD%>');" class="btn"
			   style="padding:4px 10px;">&nbsp;<i class="icon-search"></i>&nbsp;</a>&nbsp;&nbsp;
			<input class="btn btn-primary" type="button" onclick="$('#searchForm').submit();" value="查询"/>
		</div>
		<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
	</form:form>
	<script>
		function chooseGoods(url) {
			top.$.jBox("iframe:" + url, {
				title: "商品选择",
				width: 600,
				height: 500,
				buttons: {"确定": "ok","清除":"clear", "关闭": true},
				submit: function (v, h, f) {
					if (v == 'ok') {
						h.find("iframe")[0].contentWindow.iframeChoose($("#id"), $("#goodsName"));

						$(".required").each(function () {
							$(this).removeClass("required");
						});
						$(".number").each(function () {
							$(this).removeClass("number");
						});
						$(".digits").each(function () {
							$(this).removeClass("digits");
						});
					}else if(v == 'clear'){
						$("#id").val('');
						$('#goodsName').val('');
					}
				}, loaded: function (h) {
					$(".jbox-content", top.document).css("overflow-y", "hidden");
				}
			});
		}
	</script>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>商品号</th>
				<th>商品名称</th>
				<th class="sort-column visit_amount">浏览量</th>
				<th class="sort-column sales_amount">销售量</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${page.list}" var="goods">
				<tr>
					<td>${goods.id}</td>
					<td>${goods.goodsName}</td>
					<td>${goods.visitAmount}</td>
					<td>${goods.salesAmount}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<div class="row-fluid">
		<div class="span6" id="main1" style="height: 300px;padding-left: 15px;">
		</div>
		<div class="span6" id="main2" style="height: 300px;padding-left: 15px;">
		</div>
	</div>
	<div class="row-fluid">
		<div class="span6" id="main3" style="height: 300px;padding-left: 15px;">
		</div>
		<div class="span6" id="main4" style="height: 300px;padding-left: 15px;">
		</div>
	</div>
<script>
	var commonOption =  {
		title: {
			padding:[5,20]
		},
		tooltip: {
			trigger: 'axis',
			formatter: function (params) {
				return params[0].value;
			},
			axisPointer: {
				animation: false
			}
		},
		xAxis: {
			type: 'category',
			splitLine: {
				show: false
			},
			name:'日',
			data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
		},
		yAxis: {
			type: 'value',
			splitLine: {
				show: true
			}
		},
		series: [{
			type: 'line',
			showSymbol: true,
			hoverAnimation: false
		}]
	};


	var myChart1 = echarts.init(document.getElementById('main1'));
	var myChart2 = echarts.init(document.getElementById('main2'));
	var myChart3 = echarts.init(document.getElementById('main3'));
	var myChart4 = echarts.init(document.getElementById('main4'));

	myChart1.setOption(commonOption);
	myChart2.setOption(commonOption);
	myChart3.setOption(commonOption);
	myChart4.setOption(commonOption);

	myChart1.setOption({title: { text: '订单交易量(笔)', textStyle:{color:'#c23531'}}});
	myChart2.setOption({title: { text: '商品总销量(个)', textStyle:{color:'#c23531'}}});
	myChart3.setOption({title: { text: '销售额(元)', textStyle:{color:'#c23531'}}});
	myChart4.setOption({title: { text: '盈利额(元)', textStyle:{color:'#c23531'}}});

	function randomData() {
		value = value + Math.random() * 21 - 10;
		return {
			value:Math.round(value)

		}
	}

	var data = [];

	var value = Math.random() * 1000;

	option = {
		title: {
			text: '订单交易量',
			textStyle:{color:'#c23531'},
			padding:[10,20]
		},
		tooltip: {
			trigger: 'axis',
			formatter: function (params) {
				return params[0].value;
			},
			axisPointer: {
				animation: false
			}
		},
		xAxis: {
			type: 'category',
			splitLine: {
				show: false
			},
			name:'日',
			data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
		},
		yAxis: {
			type: 'value',
			splitLine: {
				show: true
			}
		},
		series: [{
			type: 'line',
			showSymbol: true,
			hoverAnimation: false,
			data: data
		}]
	};
//	myChart1.setOption(option)
//	myChart2.setOption(option)
//	myChart3.setOption(option)
//	myChart4.setOption(option)

	for (var i = 0; i < 7; i++) {
	//	data.shift();
		data.push(randomData());
	}

	myChart1.setOption({
		series: [{
			data: data
		}]
	});
	myChart2.setOption({
		series: [{
			data: data
		}]
	});
	myChart3.setOption({
		series: [{
			data: data
		}]
	});
	myChart4.setOption({
		series: [{
			data: data
		}]
	});

</script>
</body>
</html>
