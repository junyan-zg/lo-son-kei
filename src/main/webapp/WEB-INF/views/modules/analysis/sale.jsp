<%@ page import="com.zjy.losonkei.modules.product.entity.ProductOrder" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品总计</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript" src="${ctxStatic}/echarts/echarts.min.js"></script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/analysis/sale">销售情况</a></li>
		<li><a href="${ctx}/analysis/searchRecord">搜索排行</a></li>
		<li><a href="${ctx}/analysis/goodsCount">商品总计</a></li>
	</ul>
	<form id="searchForm" onsubmit="return false;" class="breadcrumb form-search">
		<div>
			<label>选择时间：</label>
			<select name="type" id="type" class="input-small" onchange="$('#time').html($('#input-' + this.value).html());">
				<option value="1">日</option>
				<option value="2">月</option>
				<option value="3">年</option>
			</select>
			<span id="time"><input class="Wdate input-medium" name="date" type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false,readOnly:true,maxDate:'%y-%M-%d'});"/></span>
			<input class="btn btn-primary" type="button" onclick="subForm();" value="查询"/>
		</div>
		<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
	</form>
	<sys:message content="${message}"/>
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
	<fieldset><legend>商品销量Top50</legend></fieldset>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<th>商品号</th>
			<th>商品名称</th>
			<th>规格</th>
			<th class="sort-column">销售量</th>
			<th class="sort-column">销售额</th>
		</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>
<script>
	var xAisName = '日';
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
			name:xAisName,
			data: ['', '', '', '', '']
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
	myChart2.setOption({title: { text: '销售额(元)', textStyle:{color:'#c23531'}}});
	myChart3.setOption({title: { text: '商品总销量(个)', textStyle:{color:'#c23531'}}});
	myChart4.setOption({title: { text: '盈利额(元)', textStyle:{color:'#c23531'}}});

	var count = 0;
	function setData(chart,xAxisData,data){
		count++;
		if (count == 4){
			closeTip();
			count = 0;
		}
		chart.setOption({
			xAxis: {
				name:xAisName,
				data: xAxisData
			},
			series: [{
				data: data
			}]
		});
	}
	function subForm(){
		if ($("#time input").val() == ''){
			alertx('日期不能为空！');
			return false;
		}
		var val = $("#type").val();
		if (val == 1) { xAisName = '日';}
		else if (val == 2) { xAisName = '月';}
		else if (val == 3) { xAisName = '年';$("#time input").val($("#time input").val() + "-01");}
		loading('正在提交，请稍等...');

		var form = $('#searchForm').serialize();

		if (val == 3){
			$("#time input").val($("#time input").val().split("-")[0]);
		}

		sendRequest(myChart1,1,form);
		sendRequest(myChart2,2,form);
		sendRequest(myChart3,3,form);
		sendRequest(myChart4,4,form);
		saleTop50(form);
	}
	function sendRequest(chart,method,form){
		$.post('${ctx}/analysis/sale/' + method,form,function(data){
			setData(chart,data.names,data.value);
		});
	}
	function saleTop50(form){
		$.post('${ctx}/analysis/sale/saleTop50',form,function(data){
			var html = template('row-tmp',{list:data});
			$("#tbody").html(html);
		});
	}
</script>
<script type="text/html" id="row-tmp">
	{{each list as value index}}
		<tr>
			<td>{{value.id}}</td>
			<td>{{value.goodsName}}</td>
			<td>{{value.spec}}</td>
			<td>{{value.amount}}</td>
			<td>{{value.sales}}</td>
		</tr>
	{{/each}}
</script>
<div style="display: none">
	<div id="input-1">
		<input class="Wdate input-medium" name="date" type="text" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false,readOnly:true,maxDate:'%y-%M-%d'});"/>
	</div>
	<div id="input-2">
		<input class="Wdate input-medium" name="date" type="text" onclick="WdatePicker({dateFmt:'yyyy-MM',isShowClear:false,readOnly:true,maxDate:'%y-%M-%d'});"/>
	</div>
	<div id="input-3">
		<input class="Wdate input-medium" name="date" type="text" onclick="WdatePicker({dateFmt:'yyyy',isShowClear:false,readOnly:true,maxDate:'%y-%M-%d'});"/>
	</div>
</div>
</body>
</html>
