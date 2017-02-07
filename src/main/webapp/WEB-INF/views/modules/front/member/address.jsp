<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>收货地址</title>
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
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2><b style="color: #eb6447;">收 货 地 址</b></h2>
                        </div>
                        <c:forEach var="list" items="${memberAddressList}" varStatus="status">
                            <div style="margin-bottom: 20px;">
                                <strong>地址 ${status.index + 1}</strong>
                                <span style="width:500px;display: inline-block;">
                                <span style="margin-left: 20px;">${list.province.name}</span>
                                <span style="margin-left: 20px;">${list.city.name}</span>
                                <span style="margin-left: 20px;">${list.area.name}</span>
                                <span style="margin-left: 20px;">${list.address}</span>
                                </span>
                                <c:if test="${list.defaultFlag == '0'}">
                                    <span style="color: #eb6447;margin-left: 100px;"><a href="${ctxFront}/address/default?id=${list.id}" style="color: #eb6447;text-decoration: none;">设为默认</a></span>
                                </c:if>
                                <c:if test="${list.defaultFlag == '1'}">
                                    <span style="color: #eb6447;margin-left: 126px;"><b>默认</b></span>
                                </c:if>
                                <span style="color: #eb6447;margin-left: 10px;"><a href="${ctxFront}/address/edit?id=${list.id}" style="color: #eb6447;text-decoration: none;">修改</a></span>
                                <span style="margin-left: 10px;"><a href="${ctxFront}/address/del?id=${list.id}" onclick="return confirm('您确认要删除吗？');" style="color: #eb6447;text-decoration: none;">删除</a></span>
                            </div>
                            <hr style="margin-bottom: 20px;"/>
                        </c:forEach>
                        <div style="margin-top: 20px;">
                            <input type="submit" value="新 增" style="width: 90px;height: 25px;" onclick="window.location.href = '${ctxFront}/address/edit';" />
                        </div>
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
                        <li><a href="#">账单</a></li>
                    </ul>
                </nav><!-- .right_menu -->
            </aside><!-- #categories_nav -->

        </div><!-- .sidebar -->
        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
<div style="height: 50px;"></div>
</body>
</html>
