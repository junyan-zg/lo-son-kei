<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="top">
    <div class="container_12">
        <div class="grid_5">
            <div class="lang">
                <ul>
                    <c:set value="${fns:getMember()}" var="currMember"/>
                    <li><a style="width:370px;cursor: default;text-align: left;margin-left: 10px;">
                        <c:if test="${not empty currMember && not empty currMember.memberName}">
                            您好！尊敬的<b>${currMember.memberName}</b>，
                        </c:if>欢迎光临罗信记网上商城！</a></li>

                </ul>
            </div><!-- .lang -->
        </div>

        <div class="grid_7">
            <nav>
                <ul>
                    <li class="current"><a href="${ctx}/index">商城首页</a></li>
                    <li><a href="${ctxFront}/home">个人中心</a></li>
                    <li><a href="#">购物车</a></li>
                    <li><a href="#">我的订单</a></li>
                    <c:if test="${not empty currMember}">
                    <li><a href="${ctxFront}/logout">登出</a></li>
                    </c:if>
                    <c:if test="${empty currMember}">
                        <li><a href="${ctx}/login">登录</a></li>
                        <li><a href="${ctx}/register">注册</a></li>
                    </c:if>
                </ul>
            </nav>
        </div><!-- .grid_9 -->
    </div>
</div><!-- #top -->
<div style="height: 30px;"></div>
<header>
    <div class="container_12">
        <div class="grid_2">
            <hgroup>
                <h1 id="site_logo"><a href="${ctx}/index">
                    <img src="${ctxStaticFront}/common/img/logo.png" alt="Online Store Theme Logo"></a>
                </h1>
            </hgroup>
        </div><!-- .grid_3 -->

        <div class="grid_10">
            <div class="top_header" style="padding-right: 100px;">
                <%--<ul id="cart_nav">
                    <li>
                        <a class="cart_li" href="#">
                            <div class="cart_ico"></div>
                            Cart
                            <span>$0.00</span>
                        </a>
                        <ul class="cart_cont">
                            <li class="no_border recently">Recently added item(s)</li>
                            <li>
                                <a href="product_page.html" class="prev_cart">
                                    <div class="cart_vert"><img src="${ctxStaticFront}/common/img/content/cart_img.png"
                                                                alt="Product 1" title=""></div>
                                </a>

                                <div class="cont_cart">
                                    <h4>Faddywax Fragrance Diffuser Set <br>Gardenia</h4>

                                    <div class="price">1 x <span>$399.00</span></div>
                                </div>
                                <a title="close" class="close" href="#"></a>

                                <div class="clear"></div>
                            </li>

                            <li>
                                <a href="product_page.html" class="prev_cart">
                                    <div class="cart_vert"><img src="${ctxStaticFront}/common/img/content/cart_img2.png"
                                                                alt="Product 2" title=""></div>
                                </a>

                                <div class="cont_cart">
                                    <h4>Caldrea Linen and Room Spray</h4>

                                    <div class="price">1 x <span>$123.00</span></div>
                                </div>
                                <a title="close" class="close" href="#"></a>

                                <div class="clear"></div>
                            </li>
                            <li class="no_border">
                                <a href="shopping_cart.html" class="view_cart">View shopping cart</a>
                                <a href="checkout.html" class="checkout">Procced to Checkout</a>
                            </li>
                        </ul>
                    </li>
                </ul><!-- .cart_nav -->--%>

                <form class="search" action="${ctx}/goods" method="get">
                    <input type="submit" class="search_button" value="">
                    <input type="text" name="keywords" id="keywords" class="search_form" value="${goodsSearch.keywords}" placeholder="请输入要查找的商品...">
                </form><!-- .search -->
            </div><!-- .top_header -->

            <nav class="primary" style="margin-top: 20px;">
                ${nav}
            </nav><!-- .primary -->

        </div><!-- .grid_9 -->
    </div>
</header>