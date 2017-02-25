<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>我的消息</title>
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
        <li><a href="${ctxFront}/orders">订 单</a></li>
        <li class="curent"><a href="${ctxFront}/notes">消 息</a></li>
        <li><a href="${ctxFront}/shoppingCart">购物车</a></li>
    </ul>
</content>

<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_12">
            <div>
                        <div style="margin-top: 30px; border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2 style="display: inline-block;"><b style="color: #eb6447;">我 的 消 息</b></h2>
                        </div>
                        <div style="margin-bottom: 10px;font-size: 15px; color: #eb6447;" class="container_12">
                            <div class="grid_8"><b>内容</b></div>
                            <div class="grid_2"><b>时间</b></div>
                            <div class="grid_2"><b>详情</b></div>
                            <div class="clear"></div>
                        </div>
                        <hr style="margin-bottom: 10px;"/>
                        <form method="get" id="searchForm" action="${ctxFront}/notes"><input type="hidden" name="pageNum" id="pageNum" value="${page.pageNo}"></form>
                        <c:forEach var="list" items="${page.list}" varStatus="status">
                            <div style="margin-bottom:6px;margin-top: 5px;" class="container_12">
                                <div class="grid_8">${status.index + 1}. ${list.content}</div>
                                <div class="grid_2"><fmt:formatDate value="${list.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                <div class="grid_1"><c:if test="${not empty list.ordersId}"><a style="text-decoration: none;" href="${ctxFront}/orders/${list.ordersId}" target="_blank">查看</a></c:if></div>
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
