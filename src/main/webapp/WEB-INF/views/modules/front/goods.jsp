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

            <div class="options" style="font-size: 15px!important;">
                <div class="show">
                    我想要
                    <select>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                        <option>9</option>
                        <option>10</option>
                        <option>11</option>
                        <option>12</option>
                    </select>
                </div><!-- .show -->

                <div class="sort">
                    排序
                    <select>
                        <option>价格</option>
                        <option>销量</option>
                    </select>

                    <a class="sort_up" href="#">&#8593;</a>
                </div><!-- .sort -->

                <div>
                    价格
                    <input type="text" placeholder="￥" style="margin-left:10px;width: 50px;height: 30px;"> -
                    <input type="text" placeholder="￥" style="width: 50px;height: 30px;">
                    <button style="display: inline-block;margin-left: 10px; height: 26px;width: 50px;">确定</button>
                </div>

                <%--<div class="grid-list">
                    <a class="grid current" href="index.html"><span></span></a>
                    <a class="list" href="catalog_list.html"><span></span></a>
                </div><!-- .grid-list -->--%>

            </div><!-- .options -->
            <div class="clear"></div>

            <div class="products catalog">
                <article class="grid_3 article">
                    <img class="sale" src="img/sale.png" alt="Sale">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product1.png" alt="Product 1" title=""></a>
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
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product2.png" alt="Product 2" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">beautiful Valentine And Engagement</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <img class="sale" src="img/new.png" alt="New">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product3.png" alt="Product 3" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Emerald Cut Emerald Ring</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product4.png" alt="Product 4" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Diamond Necklaces and Pendants</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product5.png" alt="Product 5" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Emerald Diamond Solitaire</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product6.png" alt="Product 6" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Diamond Necklaces and Pendants</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <img class="sale" src="img/top.png" alt="Top">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product7.png" alt="Product 7" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Gold Pearl Bracelet</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product8.png" alt="Product 8" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">beautiful Valentine And Engagement</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $550.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product9.png" alt="Product 9" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Golden Charm Cluster Necklace</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $1,750.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product10.png" alt="Product 10" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">HandMade Pearl Necklace</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $2,300.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product11.png" alt="Product 11" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Valentine And Engagement Charm Cluster </h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $1,350.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

                <article class="grid_3 article">
                    <div class="prev">
                        <a href="product_page.html"><img src="img/content/product12.png" alt="Product 12" title=""></a>
                    </div><!-- .prev -->

                    <h3 class="title">Gold Bangle Bracelets Brooch</h3>
                    <div class="cart">
                        <div class="price">
                            <div class="vert">
                                $930.00
                            </div>
                        </div>
                        <a href="#" class="obn"></a>
                        <a href="#" class="like"></a>
                        <a href="#" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                    </div><!-- .cart -->
                </article><!-- .grid_3.article -->

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
                        <c:forEach items="${goodsCategoryList}" var="gcl">
                            <li><a href="#">${gcl.categoryName}</a></li>
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
