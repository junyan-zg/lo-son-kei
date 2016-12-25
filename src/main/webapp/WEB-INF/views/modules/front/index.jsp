<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp"%>
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
                        <li><a href="#" style="width:170px;">欢迎光临罗信记商城！</a></li>
                    </ul>
                </div><!-- .lang -->

            </div>

            <div class="grid_7">
                <nav>
                    <ul>
                        <li class="current"><a href="#">购物车</a></li>
                        <li><a href="#">我的订单</a></li>
                        <li><a href="login.html">登录</a></li>
                        <li><a href="login.html">注册</a></li>
                    </ul>
                </nav>
            </div><!-- .grid_9 -->
        </div>
    </div><!-- #top -->

    <header>
        <div class="container_12">
            <div class="grid_3">
                <hgroup>
                    <h1 id="site_logo"><a href="index.html" title="">
                        <img src="${ctxStaticFront}/common/img/logo.png" alt="Online Store Theme Logo"></a>
                    </h1>
                    <%--<h2 id="site_description">Online Store Theme</h2>--%>
                </hgroup>
            </div><!-- .grid_3 -->

            <div class="grid_9">
                <div class="top_header">
                    <div class="welcome">
                        Welcome visitor you can <a href="login.html">login</a> or <a href="login.html">create an account</a>.
                    </div><!-- .welcome -->

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
                                    <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="${ctxStaticFront}/common/img/content/cart_img.png" alt="Product 1" title=""></div></a>
                                    <div class="cont_cart">
                                        <h4>Faddywax Fragrance Diffuser Set <br>Gardenia</h4>
                                        <div class="price">1 x <span>$399.00</span></div>
                                    </div>
                                    <a title="close" class="close" href="#"></a>
                                    <div class="clear"></div>
                                </li>

                                <li>
                                    <a href="product_page.html" class="prev_cart"><div class="cart_vert"><img src="${ctxStaticFront}/common/img/content/cart_img2.png" alt="Product 2" title=""></div></a>
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
                        <input type="text" name="search" class="search_form" value="" placeholder="Search entire store here...">
                    </form><!-- .search -->
                </div><!-- .top_header -->

                <nav class="primary">
                    <ul>
                        <li class="curent"><a href="${ctx}/index">Home</a></li>
                        <li><a href="catalog_grid.html">Solids</a></li>
                        <li><a href="catalog_grid.html">Liquids</a></li>
                        <li class="parent">
                            <a href="catalog_grid.html">Spray</a>
                            <ul class="sub">
                                <li><a href="catalog_grid.html">For home</a></li>
                                <li><a href="catalog_grid.html">For Garden</a></li>
                                <li><a href="catalog_grid.html">For Car</a></li>
                                <li><a href="catalog_grid.html">Other spray</a></li>
                            </ul>
                        </li>
                        <li><a href="catalog_grid.html">Electric</a></li>
                        <li><a href="catalog_grid.html">For cars</a></li>
                        <li class="parent">
                            <a href="#">All pages</a>
                            <ul class="sub">
                                <li><a href="${ctx}/index">Home</a></li>
                                <li><a href="typography_page.html">Typography and basic styles</a></li>
                                <li><a href="catalog_grid.html">Catalog (grid view)</a></li>
                                <li><a href="catalog_list.html">Catalog (list type view)</a></li>
                                <li><a href="product_page.html">Product view</a></li>
                                <li><a href="shopping_cart.html">Shoping cart</a></li>
                                <li><a href="checkout.html">Proceed to checkout</a></li>
                                <li><a href="compare.html">Products comparison</a></li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="contact_us.html">Contact us</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="blog.html">Blog posts</a></li>
                                <li><a href="blog_post.html">Blog post view</a></li>
                            </ul>
                        </li>
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

    <div id="home_banners">
        <div class="container_12">
            <div class="grid_6">
                <a href="#" class="banner banner1"><strong>Free shipping</strong> on orders over $500</a>
            </div><!-- .grid_6 -->

            <div class="grid_6">
                <a href="#" class="banner banner2"><strong>Insane discounts</strong> on new collection!</a>
            </div><!-- .grid_6 -->
        </div>
    </div><!-- #home_banners -->

    <section id="main" class="home" >
        <div class="container_12" >
            <div id="content" >
                <div class="grid_12">
                    <h2 class="product-title">Featured Products</h2>
                </div><!-- .grid_12 -->

                <div class="clear"></div>

                <div class="products">
                    <article class="grid_3 article">
                        <img class="sale" src="${ctxStaticFront}/common/img/sale.png" alt="Sale">
                        <div class="prev">
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product1.png" alt="Product 1" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product2.png" alt="Product 2" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product3.png" alt="Product 3" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product4.png" alt="Product 4" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product5.png" alt="Product 5" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product6.png" alt="Product 6" title=""></a>
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
                        <img class="sale" src="img/top.png" alt="Top">
                        <div class="prev">
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product7.png" alt="Product 7" title=""></a>
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
                            <a href="product_page.html"><img src="${ctxStaticFront}/common/img/content/product8.png" alt="Product 8" title=""></a>
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
                        <h2>Shop by brands</h2>
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
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand1.png" alt="Brand 1" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand2.png" alt="Brand 2" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand3.png" alt="Brand 3" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand4.png" alt="Brand 4" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand5.png" alt="Brand 5" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand6.png" alt="Brand 6" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="${ctxStaticFront}/common/img/content/brand7.png" alt="Brand 7" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                    </ul><!-- #listing -->
                </div><!-- .brands_list -->
            </div><!-- #brands -->

            <div id="content_bottom">
                <div class="grid_6">
                    <div class="bottom_block about_as">
                        <h3>About Us</h3>
                        <p>Lorem ipsum, libero et luctus molestie, turpis mi sagittis nisl, a scelerisque leo nulla et lectus pendisse dictum posuere elit, in congue nisl varius lentesque a tellus eget quam varius aliquet.</p>
                        <p>Pellentesque tristique, libero et luctus molestie, turpis a scelerisque leo nulla et lectus pendisse dictum posuere elit. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        <p>In congue nisl varius quis lentesque a tellus eget quam varius aliquet. Vel lobortis gravida.  Many desktop publishing packages and web page .</p>
                    </div><!-- .about_as -->
                </div><!-- .grid_6 -->

                <div class="grid_6">
                    <div class="bottom_block news">
                        <h3>News</h3>
                        <ul>
                            <li>
                                <time datetime="2012-03-03">3 january 2012</time>
                                <a href="#">Fermentum parturient lacus tristique habitant nullam morbi et odio nibh mus dictum tellus erat.</a>
                            </li>

                            <li>
                                <time datetime="2012-02-03">2 january 2012</time>
                                <a href="#">Cras ac hendrerit dui. Duis lacus ligula, luctus ac tristique eget, posuere id erat. Many desktop publishing packages and web page editors now use.</a>
                            </li>

                            <li>
                                <time datetime="2012-01-03">1 january 2012</time>
                                <a href="#">Lorem ipsum, libero et luctus molestie, turpis mi sagittis nisl, a scelerisque leo nulla et lectus.</a>
                            </li>
                        </ul>
                    </div><!-- .news -->
                </div><!-- .grid_6 -->
                <div class="clear"></div>
            </div><!-- #content_bottom -->
        </div><!-- .container_12 -->
    </section><!-- #main.home -->

    <footer>
        <div class="footer_navigation">
            <div class="container_12">
                <div class="grid_3">
                     <h3>Contact Us</h3>
                    <ul class="f_contact">
                        <li>49 Archdale, 2B Charlestone</li>
                        <li>+777 (100) 1234</li>
                        <li>mail@example.com</li>
                    </ul><!-- .f_contact -->
                </div><!-- .grid_3 -->

                <div class="grid_3">
                    <h3>Information</h3>
                    <nav class="f_menu">
                        <ul>
                            <li><a href="#">About As</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Secure payment</a></li>
                        </ul>
                    </nav><!-- .private -->
                </div><!-- .grid_3 -->

                <div class="grid_3">
                    <h3>Costumer Servise</h3>
                    <nav class="f_menu">
                        <ul>
                            <li><a href="#">Contact As</a></li>
                            <li><a href="#">Return</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Site Map</a></li>
                        </ul>
                    </nav><!-- .private -->
                </div><!-- .grid_3 -->

                <div class="grid_3">
                    <h3>My Account</h3>
                    <nav class="f_menu">
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Wish List</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </nav><!-- .private -->
                </div><!-- .grid_3 -->

                <div class="grid_12 newsletter-payments">
                    <div class="newsletter">
                        <div class="icon-mail">Newsletter</div>
                        <p>Subscribe to notifications about discounts from our store</p>
                        <form>
                            <input type="submit" value="">
                            <input type="email" name="newsletter" value="" placeholder="Enter your email address...">
                        </form>
                    </div><!-- .newsletter -->

                    <div class="payments">
                        <img src="img/payments.png" alt="Payments">
                    </div><!-- .payments -->
                </div><!-- .grid_12.newsletter-payments -->

                <div class="clear"></div>
            </div><!-- .container_12 -->
        </div><!-- .footer_navigation -->

        <div class="footer_info">
            <div class="container_12">
                <div class="grid_6">
                    <p class="copyright">? Diamond Store Theme, 2013.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
                </div><!-- .grid_6 -->

                <div class="grid_6">
                    <div class="soc">
                        <a class="google" href="#"></a>
                        <a class="twitter" href="#"></a>
                        <a class="facebook" href="#"></a>
                    </div><!-- .soc -->
                </div><!-- .grid_6 -->

                <div class="clear"></div>
            </div><!-- .container_12 -->
        </div><!-- .footer_info -->
    </footer>
</body>
</html>
