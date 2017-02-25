<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page import="com.zjy.losonkei.modules.orders.entity.Orders" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<c:set var="FLAG_DOING"><%=Orders.FLAG_DOING%></c:set>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>我的订单</title>
    <script>
        function page(n){
            $("#pageNum").val(n);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>

<content tag="nav">
    <ul>
        <li style="margin-right: 30px;"><a href="${ctxFront}/home">个人中心</a></li>
        <li class="curent"><a href="${ctxFront}/orders">订 单</a></li>
        <li><a href="${ctxFront}/notes">消 息</a></li>
        <li><a href="${ctxFront}/shoppingCart">购物车</a></li>
    </ul>
</content>

<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_12">
            <div>
                        <div style="margin-top: 30px; border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2 style="display: inline-block;"><b style="color: #eb6447;">我 的 订 单</b></h2>
                        </div>
                        <div style="margin-bottom: 10px;font-size: 15px; color: #eb6447;" class="container_12">
                            <div class="grid_3"><b>订单号</b></div>
                            <div class="grid_5"><b>宝贝信息</b></div>
                            <div class="grid_1"><b>状态</b></div>
                            <div class="grid_2"><b>更新时间</b></div>
                            <div class="grid_1"><b>详情</b></div>
                            <div class="clear"></div>
                        </div>
                        <hr style="margin-bottom: 10px;"/>
                        <form method="get" id="searchForm" action="${ctxFront}/orders"><input type="hidden" id="pageNum" name="pageNum" value="${page.pageNo}"></form>
                        <c:forEach var="list" items="${page.list}" varStatus="status">
                            <div style="margin-bottom:6px;margin-top: 5px;" class="container_12">
                                <div class="grid_3">${status.index + 1}. ${list.id}</div>
                                <div class="grid_5">${list.ordersDetailsList[0].remarks} 等${fn:length(list.ordersDetailsList)}件宝贝</div>
                                <div class="grid_1">
                                    <c:choose>
                                        <c:when test="${FLAG_DOING eq list.flag}">
                                            进行中
                                        </c:when>
                                        <c:otherwise>
                                            已完成
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="grid_2"><fmt:formatDate value="${list.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                <div class="grid_1"><a style="text-decoration: none;" href="${ctxFront}/orders/${list.id}" target="_blank">查看</a></div>
                                <div class="clear"></div>
                            </div>
                            <hr style="margin-bottom: 10px;"/>
                        </c:forEach>
                <div class="clear"></div>
                <div class="pagination" style="margin-top: 30px;">
                    ${page.frontHtml}
                </div>
            </div>

            <div class="clear"></div>
        </div><!-- #content -->


        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
<div style="height:125px;"></div>
</body>
</html>
