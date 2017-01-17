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
        <li><a href="catalog_grid.html">热 销</a></li>
        <li><a href="catalog_grid.html">新 品</a></li>
        <li><a href="javascript:;">优惠</a></li>
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


</body>
</html>
