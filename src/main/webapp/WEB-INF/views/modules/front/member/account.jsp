<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>我的账单</title>
</head>
<body>

<content tag="nav">
    <ul>
        <li class="curent" style="margin-right: 30px;"><a href="${ctxFront}/home">个人中心</a></li>
        <li><a href="${ctxFront}/orders">订 单</a></li>
        <li><a href="${ctxFront}/notes">消 息</a></li>
        <li><a href="${ctxFront}/shoppingCart">购物车</a></li>
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

    function page(n){
        $("#pageNum").val(n);
        $("#searchForm").submit();
        return false;
    }
</script>
<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_10">
            <div class="products catalog" style="width: 810px;">
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2 style="display: inline-block;"><b style="color: #eb6447;">我 的 账 单</b></h2>
                            <b style="color: #eb6447;font-size: 15px;margin-left: 30px;">我的余额：${member.memberBalance}元<span style="display:inline-block;width: 30px;">&nbsp;</span>我的积分：${member.memberPoints}</b>
                        </div>
                        <div style="margin-bottom: 10px;font-size: 15px; color: #eb6447;" class="container_12">
                            <div class="grid_1"><b>类型</b></div>
                            <div class="grid_1"><b>金额</b></div>
                            <div class="grid_5" style="padding-left: 20px;width: 460px"><b>备注</b></div>
                            <div class="grid_2"><b>时间</b></div>
                            <div class="clear"></div>
                        </div>
                        <hr style="margin-bottom: 10px;"/>
                        <form method="get" id="searchForm" action="${ctxFront}/account"><input type="hidden" id="pageNum" name="pageNum" value="${page.pageNo}"></form>
                        <c:forEach var="list" items="${page.list}" varStatus="status">
                            <div style="margin-bottom: 10px;" class="container_12">
                                <div class="grid_1">${fns:getDictLabel(list.processType, 'account_process_type', '')}</div>
                                <div class="grid_1">${list.amount}</div>
                                <div class="grid_5" style="padding-left: 20px;width: 460px">&nbsp;${list.remarks}</div>
                                <div class="grid_2"><fmt:formatDate value="${list.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
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

        <div id="sidebar" class="grid_2" >
            <aside id="categories_nav">
                <header class="aside_title">
                    <h3 style="font-size: 20px;color: #444;"><%--个人中心--%>&nbsp;</h3>
                </header>

                <nav class="right_menu">
                    <ul>
                        <li><a href="${ctxFront}/home">个人信息</a></li>
                        <li><a href="${ctxFront}/address">收货地址</a></li>
                        <li class="current"><a href="${ctxFront}/account">账单</a></li>
                    </ul>
                </nav><!-- .right_menu -->
            </aside><!-- #categories_nav -->

        </div><!-- .sidebar -->
        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
<div style="height:125px;"></div>
</body>
</html>
