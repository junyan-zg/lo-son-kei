<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">index</content>
<meta name="decorator" content="front"/>
<head>
    <title>首页</title>
</head>
<body>

<content tag="nav">
    <ul>
        <li class="curent"><a href="${ctx}/index">首 页</a></li>
        <li><a href="${ctx}/goods/hot">热 销</a></li>
        <li><a href="${ctx}/goods/new">新 品</a></li>
        <li><a href="${ctx}/goods/discount">优惠</a></li>
        <li><a href="${ctx}/goods">更 多</a></li>
        <%--<li class="parent">
                <a href="catalog_grid.html">新 品</a>
                <ul class="sub">
                    <li><a href="catalog_grid.html">For home</a></li>
                    <li><a href="catalog_grid.html">For Garden</a></li>
                    <li><a href="catalog_grid.html">For Car</a></li>
                    <li><a href="catalog_grid.html">Other spray</a></li>
                </ul>
            </li>--%>
    </ul>
</content>

<div id="slider_body">
    <div class="sections">
        <div class="section"><img src="${ctxStaticFront}/index/img/slider/slider0.png"/></div>
        <div class="section"><img src="${ctxStaticFront}/index/img/slider/slider1.png"/></div>
        <div class="section"><img src="${ctxStaticFront}/index/img/slider/slider2.png"/></div>
        <div class="section"><img src="${ctxStaticFront}/index/img/slider/slider3.png"/></div>
    </div>
</div><!-- #slider_body -->

<%-- <div id="home_banners">
     <div class="container_12">
         <div class="grid_6">
             <a href="#" class="banner banner1"><strong>Free shipping</strong> on orders over $500</a>
         </div><!-- .grid_6 -->

         <div class="grid_6">
             <a href="#" class="banner banner2"><strong>Insane discounts</strong> on new collection!</a>
         </div><!-- .grid_6 -->
     </div>
 </div><!-- #home_banners -->--%>

<section id="main" class="home">
    <div class="container_12">
        <div id="content">
            <div class="grid_12">
                <h2 class="product-title">特色产品</h2>
            </div><!-- .grid_12 -->

            <div class="clear"></div>

            <div class="products">
                <c:set var="FLAG_NEW" value="<%=Goods.FLAG_NEW%>"/>
                <c:set var="FLAG_HOT" value="<%=Goods.FLAG_HOT%>"/>
                <c:set var="FLAG_DISCOUNT" value="<%=Goods.FLAG_DISCOUNT%>"/>
                <c:forEach items="${goodsList}" var="goods">
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
                            <a href="${ctx}/goodsDetails/${goods.id}"><img src="${goods.thumbImgUrl}"></a>
                        </div><!-- .prev -->

                        <h3 class="title">${goods.goodsName}</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    <c:if test="${not empty goods.price}">
                                        ￥${goods.price}
                                    </c:if>
                                    <div class="price_old">
                                       <%-- <div style="position: absolute;font-size: 13px;color: #eb6447; margin-left: -60px;">销量 ${goods.salesAmount}</div>--%>
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
        </div><!-- #content -->

        <div class="clear"></div>

        <div id="brands" name="brands">
            <div class="c_header">
                <div class="grid_10">
                    <h2 style="font-size: 30px;">产品分类</h2>
                </div><!-- .grid_10 -->

                <div class="grid_2">
                    <a id="next_c1" class="next arows" href="#"><span>Next</span></a>
                    <a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
                </div><!-- .grid_2 -->
            </div><!-- .c_header -->

            <div class="brands_list">
                <ul id="listing">
                    <c:forEach items="${goodsCategoryList}" var="gc">
                    <li>
                        <div class="grid_2">
                            <a href="${ctx}/goods?firstLevelCategoryId=${gc.id}">
                                <div><img src="<c:if test="${not empty gc.thumbImgUrl}">${gc.thumbImgUrl}</c:if><c:if test="${empty gc.thumbImgUrl}">${ctxStaticFront}/index/img/defaultGC.jpg</c:if>">
                                </div>
                                <p>${gc.categoryName}</p>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    </c:forEach>
                </ul><!-- #listing -->
            </div><!-- .brands_list -->
        </div><!-- #brands -->


    </div><!-- .container_12 -->
</section><!-- #main.home -->


</body>
</html>
