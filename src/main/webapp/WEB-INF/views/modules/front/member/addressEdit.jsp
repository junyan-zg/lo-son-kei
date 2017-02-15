<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>管理收货地址</title>
</head>
<body>

<content tag="nav">
    <ul>
        <li class="curent" style="margin-right: 30px;"><a href="${ctxFront}/home">个人中心</a></li>
        <li><a href="catalog_grid.html">订 单</a></li>
        <li><a href="catalog_grid.html">消 息</a></li>
        <li><a href="javascript:;">购物车</a></li>
    </ul>
</content>


<script>
    $(window).scroll(function(){
        if($(window).scrollTop()>200){    //垂直滚动条钓offset 大于90时。
            $("#sidebar").css({
                "top":"70px",       //修改相关div样式
                "position":"fixed"
            });
        }else{
            $("#sidebar").css({
               "top":"auto",     //修改相关div样式
                "position":"relative"
            });
        }
    });
</script>
<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_10">
            <div class="products catalog" style="width: 810px;">
                    <form:form id="myForm" modelAttribute="memberAddress" method="post" action="${ctxFront}/address/save" onsubmit="return saveForm();" class="registed registed2" style="text-align: left;margin-bottom: 20px;padding: 30px;">
                        <form:hidden path="id"/>
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2><b style="color: #eb6447;"><c:if test="${not empty memberAddress.id}">修 改 </c:if><c:if test="${empty memberAddress.id}">新 增 </c:if>收 货 地 址</b></h2>
                        </div>
                        <div>
                            <b style="margin-right: 20px;">省 份</b>
                            <form:select path="province" items="${provinceList}" itemValue="id" itemLabel="name" cssStyle="width: 120px;" onchange="changeCity(this.value);">
                            </form:select>
                            <b style="margin-left: 40px;margin-right: 20px;">县 市</b>
                            <form:select path="city"  items="${cityList}" itemValue="id" itemLabel="name"  cssStyle="width: 120px;" onchange="changeArea(this.value);">
                            </form:select>
                            <b style="margin-left: 40px; margin-right: 20px;">地 区</b>
                            <form:select path="area" items="${areaList}" itemValue="id" itemLabel="name"  cssStyle="width: 120px;">
                            </form:select>
                            <c:if test="${empty areaList || fn:length(areaList)==0}">
                                <script>
                                    setTimeout(function () {
                                        $('#area').selectBox("destroy");
                                        $("#area").hide();
                                    },400);
                                </script>
                            </c:if>
                        </div>
                        <div style="padding-top: 30px;">
                            <strong>收 货 人 姓 名</strong>
                            <form:input path="trueName" placeholder="请输入真实姓名" class="required" />
                            <sup>*</sup>
                            <span style="color:#eb6447;margin-left: 5px;" id="tips-trueName"></span>
                        </div>
                        <div style="padding-top: 30px;">
                            <strong>电 话 号 码</strong>
                            <form:input path="phone" placeholder="请输入您的电话号码" class="required" />
                            <sup>*</sup>
                            <span style="color:#eb6447;margin-left: 5px;" id="tips-phone"></span>
                        </div>
                        <div style="padding-top: 30px;">
                            <strong>地 址</strong>
                            <form:input path="address" placeholder="请输入详细地址" class="required" />
                            <sup>*</sup>
                            <span style="color:#eb6447;margin-left: 5px;" id="tips-address"></span>
                        </div>
                        <div class="submit">
                            <input type="submit" value="保 存" style="width: 545px;">
                        </div>
                        <div class="clear"></div>
                    </form:form>

                <div class="clear"></div>
            </div>

            <div class="clear"></div>
        </div><!-- #content -->

        <div id="sidebar" class="grid_2" >
            <aside id="categories_nav">
                <header class="aside_title">
                    <h3 style="font-size: 20px;color: #444;"><%--个人中心--%>&nbsp;</h3>
                </header>

                <nav class="right_menu">
                    <ul>
                        <li><a href="${ctxFront}/home">个人信息</a></li>
                        <li class="current"><a href="${ctxFront}/address">收货地址</a></li>
                        <li><a href="${ctxFront}/account">账单</a></li>
                    </ul>
                </nav><!-- .right_menu -->
            </aside><!-- #categories_nav -->

        </div><!-- .sidebar -->
        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
<div style="height: 50px;"></div>
<script>
    $(".required").each(function(){
        $(this).change(function(){
            $("#tips-" + $(this).attr("name")).html($(this).val().trim()==""?"必填信息":"");
        });
    });
    function saveForm(){
        var subFlag = true;
        $(".required").each(function(){
            if($(this).val().trim()==""){
                if(subFlag){
                    $(this).focus();    //只对第一个获取焦点
                }
                subFlag = false;
                var tipId = "#tips-" + $(this).attr("name");
                $(tipId).html("必填信息");
            }
        });
        return subFlag;
    }
    function changeCity(id){
        $.get("${ctxFront}/cityList?id=" + id,function(data){
            //console.log(data)
            var str = "";
            for (var i in data){
                str += "<option value=\""+data[i].id+"\">" + data[i].name+ "</option>";
            }
            $("#city").html(str);
            $('#city').selectBox("destroy");
            $('#city').selectBox();
            changeArea(data[0].id);
        });
    }
    function changeArea(id){
        $.get("${ctxFront}/areaList?id=" + id,function(data){
            //console.log(data)
            var str = "";
            for (var i in data){
                str += "<option value=\""+data[i].id+"\">" + data[i].name+ "</option>";
            }
            $("#area").html(str);
            $('#area').show();
            $('#area').selectBox("destroy");
            if(str==''){
                $('#area').val('');
                $('#area').hide();
            }else{
                $('#area').selectBox();
            }
        });
    }
</script>
</body>
</html>
