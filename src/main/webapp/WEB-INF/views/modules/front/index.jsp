<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">index</content>
<meta name="decorator" content="front"/>
<head>
    <title>首页</title>
</head>
<body>
<div id="top">
    <div class="container_12">
        <div class="grid_5">
            <div class="lang">
                <ul>
                    <li><a style="width:170px;cursor: default;">欢迎光临罗信记商城！</a></li>
                </ul>
            </div><!-- .lang -->

        </div>

        <div class="grid_7">
            <nav>
                <ul>
                    <li class="current"><a href="${ctx}/index">商城首页</a></li>
                    <li><a href="">个人中心</a></li>
                    <li><a href="#">购物车</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="login.html">登录</a></li>
                    <li><a href="login.html">注册</a></li>
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
            <div class="top_header">
                <ul id="cart_nav">
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
                </ul><!-- .cart_nav -->

                <form class="search">
                    <input type="submit" class="search_button" value="">
                    <input type="text" name="search" class="search_form" value="" placeholder="请输入要查找的商品...">
                </form><!-- .search -->
            </div><!-- .top_header -->

            <nav class="primary">
                <ul>
                    <li class="curent"><a href="${ctx}/index">首 页</a></li>
                    <li><a href="catalog_grid.html">新 品</a></li>
                    <li><a href="catalog_grid.html">热 销</a></li>
                    <li><a href="javascript:;"onclick="
		                $('html,body').animate({scrollTop:$('#brands').offset().top}, 800);
	                    ">分 类</a>
                    </li>
                    <li><a href="catalog_grid.html">更 多</a></li>
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
            </nav><!-- .primary -->
        </div><!-- .grid_9 -->
    </div>
</header>

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
                <article class="grid_3 article">
                    <img class="sale" src="${ctxStaticFront}/common/img/sale.png" alt="Sale">

                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product1.png"
                                                         alt="Product 1" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">handmade Emerald Cut<br> Emerald Ring</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product2.png"
                                                         alt="Product 2" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">beautiful Valentine And Engagement</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <img class="sale" src="${ctxStaticFront}/common/img/new.png" alt="New">

                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product3.png"
                                                         alt="Product 3" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Emerald Cut Emerald Ring</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product4.png"
                                                         alt="Product 4" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Diamond Necklaces and Pendants</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product5.png"
                                                         alt="Product 5" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Emerald Diamond Solitaire</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product6.png"
                                                         alt="Product 6" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Diamond Necklaces and Pendants</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <img class="sale" src="${ctxStaticFront}/common/img/top.png" alt="Top">

                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product7.png"
                                                         alt="Product 7" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Gold Pearl Bracelet</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product8.png"
                                                         alt="Product 8" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">beautiful Valentine And Engagement</h3>

                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                                <div class="price_old">$725.00</div>
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="${ctxStaticFront}/common/img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->

                </article><!-- .grid_3.article -->

                <div class="clear"></div>
            </div><!-- .products -->
            <div class="clear"></div>
        </div><!-- #content -->

        <div class="clear"></div>

        <div id="brands">
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
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand1.png" alt="Brand 1" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand2.png" alt="Brand 2" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand3.png" alt="Brand 3" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand4.png" alt="Brand 4" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand5.png" alt="Brand 5" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand6.png" alt="Brand 6" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                    <li>
                        <div class="grid_2">
                            <a href="#">
                                <div><img src="${ctxStaticFront}/common/img/content/brand7.png" alt="Brand 7" title="">
                                </div>
                            </a>
                        </div><!-- .grid_2 -->
                    </li>
                </ul><!-- #listing -->
            </div><!-- .brands_list -->
        </div><!-- #brands -->


    </div><!-- .container_12 -->
</section><!-- #main.home -->

<footer>
    <div class="footer_navigation">
        <div class="container_12">
            <div class="grid_12" style="text-align: center;">
                <div>Copyright © 2016-2017 罗信记网上商城. All Rights Reserved</div>

                <span style="padding-top: 12px; display: inline-block;">联系我们</span>
                <span class="f_contact">+888 (100) 1234</span>
                <span class="f_contact f_contact2">mail@losonkei.com</span>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
