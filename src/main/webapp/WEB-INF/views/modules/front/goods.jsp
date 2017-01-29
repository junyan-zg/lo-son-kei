<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">goods</content>
<meta name="decorator" content="front"/>
<head>
    <title>商品</title>
    <script>
        //浏览器出现滚动条时变化
        /*$(window).resize(function(){
            if($(window).width()<1150){     //浏览器宽度小于1150时
                $(".left-nav").css({
                    "position":"absolute"           //样式变成absolute
                });
            }else{
                $(".left-nav").css({
                    "position":"fixed",     //样式变成fixed
                });
            }

        });
        //浏览器滚动条位置

        $(window).scroll(function(){
            if($(window).scrollTop()>90){    //垂直滚动条钓offset 大于90时。
                $(".left-nav").css({
                    "top":"0",       //修改相关div样式
                });
            }else{
                $(".left-nav").css({
                    "top":"92px",     //修改相关div样式
                });
            }
        });*/

    </script>
</head>
<body>

<content tag="nav">
    <ul>
        <li><a href="${ctx}/index">首 页</a></li>
        <li><a href="catalog_grid.html">热 销</a></li>
        <li><a href="catalog_grid.html">新 品</a></li>
        <li><a href="javascript:;">优惠</a></li>
        <li class="curent"><a href="${ctx}/goods">更 多</a></li>
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
            <h1 class="page_title">&nbsp;</h1>

            <form:form modelAttribute="goodsSearch" action="${ctx}/goods" method="get" id="searchForm" onsubmit="$('#keywordsHidden').val($('#keywords').val());">
                <input type="hidden" name="keywords" id="keywordsHidden" value="${goodsSearch.keywords}">
                <form:hidden path="firstLevelCategoryId" />
                <div class="options" style="font-size: 15px!important;">
                <div class="show">
                    我想要
                    <form:select path="categoryId" onchange="$('#searchForm').submit();" cssStyle="width:120px!important;">
                        <form:option value="" label="全部"/>
                        <form:options items="${goodsSearch.categories}" itemValue="id" itemLabel="categoryName"/>
                    </form:select>
                </div><!-- .show -->

                <div class="sort">
                    排序
                    <form:select path="sortBy" onchange="$('#searchForm').submit();">
                        <form:option value="0" label="综合"/>
                        <form:option value="1" label="价格"/>
                        <form:option value="2" label="销量"/>
                    </form:select>
                    <form:hidden path="sort"/>
                    <c:if test="${empty goodsSearch.sort || goodsSearch.sort eq 'asc'}">
                        <a class="sort_up" href="javascript:$('#sort').val('desc');$('#searchForm').submit();">&#8593;</a>
                    </c:if>
                    <c:if test="${not empty goodsSearch.sort && goodsSearch.sort eq 'desc'}">
                        <a class="sort_up" href="javascript:$('#sort').val('asc');$('#searchForm').submit();">&#8595;</a>
                    </c:if>
                </div><!-- .sort -->

                <div>
                    价格
                    <form:input path="priceB" placeholder="￥" style="margin-left:10px;width: 50px;height: 30px;"/> -
                    <form:input path="priceE" placeholder="￥" style="width: 50px;height: 30px;"/>
                    <button style="display: inline-block;margin-left: 10px; height: 26px;width: 50px;">确定</button>
                </div>

                <%--<div class="grid-list">
                    <a class="grid current" href="index.html"><span></span></a>
                    <a class="list" href="catalog_list.html"><span></span></a>
                </div><!-- .grid-list -->--%>

            </div><!-- .options -->
            </form:form>
            <div class="clear"></div>

            <div class="products catalog">
                <c:set var="FLAG_NEW" value="<%=Goods.FLAG_NEW%>"/>
                <c:set var="FLAG_HOT" value="<%=Goods.FLAG_HOT%>"/>
                <c:set var="FLAG_DISCOUNT" value="<%=Goods.FLAG_DISCOUNT%>"/>
                <c:forEach items="${page.list}" var="goods">
                    <article class="grid_3 article">
                        <c:if test="${FLAG_NEW eq goods.flag}">
                            <img class="sale" src="${ctxStaticFront}/common/img/new.png" alt="Sale">
                        </c:if>
                        <c:if test="${FLAG_HOT eq goods.flag}">
                            <img class="sale" src="${ctxStaticFront}/common/img/sale.png" alt="Sale">
                        </c:if>
                        <c:if test="${FLAG_DISCOUNT eq goods.flag}">
                            <img class="sale" src="${ctxStaticFront}/common/img/top.png" alt="Sale">
                        </c:if>
                        <div class="prev">
                            <a href="product_page.html"><img src="${goods.thumbImgUrl}"></a>
                        </div><!-- .prev -->

                        <h3 class="title">${goods.goodsName}</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    <c:if test="${not empty goods.price}">
                                        ￥${goods.price}
                                    </c:if>
                                    <div class="price_old">
                                        <c:if test="${not empty goods.srcPrice}">
                                            ￥${goods.srcPrice}
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <%--<a href="#" class="obn"></a>
                            <a href="#" class="like"></a>--%>
                            <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                        </div><!-- .cart -->
                    </article><!-- .grid_3.article -->
                </c:forEach>


                <div class="clear"></div>
            </div><!-- .products -->
            <div class="clear"></div>

            <div class="pagination">
                <ul>
                    <li class="prev"><span>&#8592;</span></li>
                    <li class="curent"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><span>...</span></li>
                    <li><a href="#">100</a></li>
                    <li class="next"><a href="#">&#8594;</a></li>
                </ul>
            </div><!-- .pagination -->

            <div class="clear"></div>
        </div><!-- #content -->

        <div id="sidebar" class="grid_2" >
            <aside id="categories_nav">
                <header class="aside_title">
                    <h3 style="font-size: 20px;color: #444;">分类</h3>
                </header>

                <nav class="right_menu">
                    <ul>
                        <c:forEach items="${firstLevelCategoryList}" var="gcl">
                            <li<c:if test="${gcl.id eq goodsSearch.firstLevelCategoryId}"> class="current"</c:if>><a href="${ctx}/goods?firstLevelCategoryId=${gcl.id}">${gcl.categoryName}</a></li>
                        </c:forEach>
                        <%--<li><a href="#">Home</a></li>
                        <li><a href="#">Wedding</a></li>
                        <li class="current"><a href="#">Rings</a></li>
                        <li><a href="#">Necklaces</a></li>
                        <li><a href="#">Earrings</a></li>
                        <li><a href="#">Bracelets</a></li>--%>
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
