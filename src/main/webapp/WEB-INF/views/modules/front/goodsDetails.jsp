<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>

<c:set var="STATE_ON_SALE" value="<%=Goods.STATE_ON_SALE%>"/>
<c:set var="STATE_OFF_SALE" value="<%=Goods.STATE_OFF_SALE%>"/>
<c:set var="STATE_OUT_OF_STOCK" value="<%=Goods.STATE_OUT_OF_STOCK%>"/>
<c:set var="STATE_NO_PUSH" value="<%=Goods.STATE_NO_PUSH%>"/>
<html>
<content tag="moduleName">goodsDetails</content>
<meta name="decorator" content="front"/>
<head>
    <title>${goods.goodsName}</title>

    <script>
        function ajaxGetPrice(){
            $.post("${ctx}/goodsPriceInfo",$('#specForm').serialize(),function(data){
               console.log(data);
            });
        }
        $(document).ready(function(){
            ajaxGetPrice();
        });
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

<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_12">
            <header>
                <h1 class="page_title" style="font-size: 26px;margin-top: 27px;">${goods.goodsName}</h1>
            </header>

            <article class="product_page">
                <div class="grid_5 img_slid" id="products">
                    <c:set var="FLAG_NEW" value="<%=Goods.FLAG_NEW%>"/>
                    <c:set var="FLAG_HOT" value="<%=Goods.FLAG_HOT%>"/>
                    <c:set var="FLAG_DISCOUNT" value="<%=Goods.FLAG_DISCOUNT%>"/>
                    <c:if test="${FLAG_NEW eq goods.flag}">
                        <img class="sale" src="${ctxStaticFront}/common/img/new.png" alt="Sale">
                    </c:if>
                    <c:if test="${FLAG_HOT eq goods.flag}">
                        <img class="sale" src="${ctxStaticFront}/common/img/sale.png" alt="Sale">
                    </c:if>
                    <c:if test="${FLAG_DISCOUNT eq goods.flag}">
                        <img class="sale" src="${ctxStaticFront}/common/img/top.png" alt="Sale">
                    </c:if>
                    <div class="preview slides_container">
                        <div class="prev_bg">
                            <a href="${imgUrlList[0]}" class="jqzoom" rel='gal1'>
                                <img src="${imgUrlList[0]}">
                            </a>
                        </div>
                    </div><!-- .preview -->

                    <div class="next_prev">
                        <a id="img_prev" class="arows" href="#"><span>Prev</span></a>
                        <a id="img_next" class="arows" href="#"><span>Next</span></a>
                    </div><!-- .next_prev -->

                    <ul class="small_img clearfix" id="thumblist">
                        <c:forEach items="${imgUrlList}" var="imgUrl" varStatus="status">
                            <c:if test="${status.index == 0}">
                                <li><a class="zoomThumbActive" href='javascript:void(0);'
                                       rel="{gallery: 'gal1', smallimage: '${imgUrl}',largeimage: '${imgUrl}'}"><img
                                        src="${imgUrl}"></a></li>
                            </c:if>
                            <c:if test="${status.index > 0}">
                                <li><a href='javascript:void(0);'
                                       rel="{gallery: 'gal1', smallimage: '${imgUrl}',largeimage: '${imgUrl}'}"><img
                                        src="${imgUrl}"></a></li>
                            </c:if>
                        </c:forEach>
                    </ul><!-- .small_img -->

                    <div id="pagination"></div>
                </div><!-- .grid_5 -->

                <div class="grid_7">
                    <div class="entry_content" style="padding-left: 50px;padding-right: 30px;">
                        <%-- <div class="soc">
                             <img src="${ctxStaticFront}/common/img/soc.png" alt="Soc">
                         </div><!-- .soc -->

                         <div class="review">
                             <a class="plus" href="#"></a>
                             <a class="plus" href="#"></a>
                             <a class="plus" href="#"></a>
                             <a href="#"></a>
                             <a href="#"></a>
                             <span><strong>3</strong> REVIEW(S)</span>
                             <span class="separator">|</span>
                             <a class="add_review" href="#">ADD YOUR REVIEW</a>
                         </div>--%>

                        <p style="color:#ee7b62;font-size: 14px;">${goods.remarks}</p>
                            <div class="ava_price">
                                <div class="price">
                                    <div class="price_old"><c:if
                                            test="${not empty goods.srcPrice}">￥${goods.srcPrice}</c:if></div>
                                    <c:if test="${not empty goods.price}">￥${goods.price}</c:if>
                                </div><!-- .price -->

                                <div class="availability_sku">
                                    <%--<div class="availability">
                                        Availability: <span>In stock</span>
                                    </div>
                                    <div class="sku">
                                        SKU: <span>Candles OV</span>
                                    </div>--%>
                                    <div>交易成功</div>
                                    <div style="margin-top: 10px; font-size: 30px; color:#ee7b62;">
                                        ${goods.salesAmount}
                                    </div>
                                </div><!-- .availability_sku -->
                                <div class="clear"></div>
                            </div>
                            <!-- .ava_price -->
                        <c:if test="${goods.state eq STATE_ON_SALE}">
                            <div class="parameter_selection">
                                <form action="" id="specForm" onsubmit="return checkBuyAmount();" method="post">
                                    <input type="hidden" name="goodsId" value="${goods.id}">
                                <c:forEach var="item" items="${goodsSpecificationMap}" varStatus="status">
                                    <div style="margin-bottom: 30px;">
                                        <span style="font-size: 13px;">${item.key.specificationName}</span>
                                        <input type="hidden" name="specificationIds" value="${item.key.id}"/>
                                        <input type="hidden" name="spec-${item.key.id}" id="spec-${item.key.id}"
                                               value="${item.value[0]}">
                                        <c:forEach items="${item.value}" var="v" varStatus="st">
                                            <c:if test="${st.index == 0}">
                                            <span class="spec-select"
                                                  onclick="selectSpec(this,'spec-${item.key.id}');">${v}</span>
                                            </c:if>
                                            <c:if test="${st.index != 0}">
                                            <span class="spec-no-select"
                                                  onclick="selectSpec(this,'spec-${item.key.id}');">${v}</span>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </c:forEach>

                                <input type="text" name="amount" onchange="checkBuyAmount();" id="amount" style="margin-bottom: 5px;margin-right: 5px;"/>(库存 <span id="stock">1</span> 件)<br>
                                <span id="errMsg" style="color:#ee7b62;"></span>
                                </form>
                            </div>
                            <!-- .parameter_selection -->

                            <div class="cart">
                                <a href="javascript:;" class="bay" style="padding-left: 10px;width: 100px;"><img src="${ctxStaticFront}/common/img/bg_cart.png">加入购物车</a>
                                <button style="width: 120px;margin-left: 200px;"><img src="${ctxStaticFront}/common/img/bg_cart.png">立即购买</button>

                                    <%--
                                <a href="#" class="like"><img src="${ctxStaticFront}/common/img/like.png" alt=""
                                                              title="">
                                    Add to Compare</a>
                                <a href="#" class="obn"><img src="${ctxStaticFront}/common/img/obl.png" alt="" title="">Add
                                    to Compare</a>--%>
                            </div>
                            <!-- .cart -->
                        </c:if>
                        <c:if test="${goods.state ne STATE_ON_SALE}">
                            <h1 style="margin-top: 100px;margin-left: 40px; font-weight: bolder;font-family: '黑体';font-stretch: expanded;font-style: italic;">
                            <c:if test="${goods.state eq STATE_NO_PUSH}">
                                该商品尚未上市！
                            </c:if>
                            <c:if test="${goods.state eq STATE_OUT_OF_STOCK}">
                                该商品暂不供货！
                            </c:if>
                            <c:if test="${goods.state eq STATE_OFF_SALE}">
                                该商品已下架！
                            </c:if>
                            </h1>
                        </c:if>
                    </div><!-- .entry_content -->
                </div><!-- .grid_7 -->
                <div class="clear"></div>

                <div class="grid_12">
                    <div id="wrapper_tab" class="tab1">
                        <a href="#" class="tab1 tab_link">商品详情</a>
                        <a href="#" class="tab2 tab_link">商品规格</a>

                        <div class="clear"></div>

                        <div class="tab1 tab_body">
                            <h4>About This Item</h4>

                            <p>Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas
                                tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis
                                lobortis dictum. Etiam mollis volutpat odio, id euismod justo gravida a. Aliquam erat
                                volutpat. Phasellus faucibus venenatis lorem, vitae commodo elit pretium et. Duis
                                rhoncus lobortis congue. Vestibulum et purus dui, vel porta lectus. Sed vulputate
                                pulvinar adipiscing.</p>
                            <ul>
                                <li>She was walking to the mall.</li>
                                <li>Ted might eat the cake.</li>
                                <li>You must go right now.</li>
                                <li>Words were spoken.</li>
                                <li>The teacher is writing a report.</li>
                            </ul>

                            <p>Here are some verb phrase examples where the verb phrase is the predicate of a sentence.
                                In this case, the verb phrase consists of the main verb plus any auxiliary, or helping,
                                verbs. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta
                                nec, tempus vitae, iaculis semper, pede.</p>
                            <ol>
                                <li>Shipping & Delivery.</li>
                                <li>Privacy & Security.</li>
                                <li>Returns & Replacements.</li>
                                <li>Payment, Pricing & Promotions.</li>
                                <li>Viewing Orders.</li>
                            </ol>
                            <p>Next are some verb phrase examples of verb phrases where the phrase has a single function
                                which means it can act like an adverb or an adjective. The phrase would include the verb
                                and any modifiers, complements, or objects. Lorem ipsum dolor sit amet, consectetuer
                                adipiscing elit. Morbi luctus. Duis lobortis. Lorem ipsum dolor sit amet, consectetur
                                adipiscing elit. Curabitur nec posuere odio. Proin vel ultrices erat.</p>

                            <div class="clear"></div>
                        </div><!-- .tab1 .tab_body -->

                        <div class="tab2 tab_body">
                            <div style="padding-left: 30px;">
                                <c:forEach items="${goodsAttrValueList}" var="goodsAttrValue">
                                    <c:if test="${not empty goodsAttrValue.attrValue}">
                                        <p>${goodsAttrValue.goodsAttr.attrName}：${goodsAttrValue.attrValue}</p>
                                    </c:if>
                                </c:forEach>
                            </div>
                            <%--<h4>Customer reviews</h4>

                            <ul class="comments">
                                <li>
                                    <div class="autor">Mike Example</div>
                                    ,
                                    <time datetime="2012-11-03">03.11.2012</time>

                                    <div class="evaluation">
                                        <div class="quality">
                                            <span>Quality</span>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a href="#"></a>
                                            <a href="#"></a>
                                        </div>
                                        <div class="price">
                                            <span>Price</span>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus_minus" href="#"></a>
                                            <a href="#"></a>
                                        </div>
                                        <div class="clear"></div>
                                    </div><!-- .evaluation -->

                                    <p>Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet.
                                        Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum
                                        adipiscing, eros quis lobortis dictum. It enim ad minim veniam, quis nostrud
                                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </li>

                                <li>
                                    <div class="autor">Mike Example</div>
                                    ,
                                    <time datetime="2012-11-03">01.11.2012</time>

                                    <div class="evaluation">
                                        <div class="quality">
                                            <span>Quality</span>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus_minus" href="#"></a>
                                        </div>
                                        <div class="price">
                                            <span>Price</span>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a class="plus" href="#"></a>
                                            <a href="#"></a>
                                        </div>
                                        <div class="clear"></div>
                                    </div><!-- .evaluation -->

                                    <p>Etiam mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat.
                                        Phasellus faucibus venenatis lorem, vitae commodo elit pretium et. Duis rhoncus
                                        lobortis congue. Vestibulum et purus dui, vel porta lectus. Sed vulputate
                                        pulvinar adipiscing. It enim ad minim veniam, quis nostrud exercitation ullamco
                                        laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </li>
                            </ul><!-- .comments -->

                            <form class="add_comments">
                                <h4>Write Your Own Review</h4>

                                <div class="evaluation">
                                    <div class="quality">
                                        Quality<sup>*</sup>
                                        <input class="niceRadio" type="radio" name="quality" value="1"><span
                                            class="eva_num">1</span>
                                        <input class="niceRadio" type="radio" name="quality" value="2"><span
                                            class="eva_num">2</span>
                                        <input class="niceRadio" type="radio" name="quality" value="3"><span
                                            class="eva_num">3</span>
                                        <input class="niceRadio" type="radio" name="quality" value="4"><span
                                            class="eva_num">4</span>
                                        <input class="niceRadio" type="radio" name="quality" value="5"><span
                                            class="eva_num">5</span>
                                    </div>
                                    <div class="price">
                                        Price<sup>*</sup>
                                        <input class="niceRadio" type="radio" name="price" value="1"><span
                                            class="eva_num">1</span>
                                        <input class="niceRadio" type="radio" name="price" value="2"><span
                                            class="eva_num">2</span>
                                        <input class="niceRadio" type="radio" name="price" value="3"><span
                                            class="eva_num">3</span>
                                        <input class="niceRadio" type="radio" name="price" value="4"><span
                                            class="eva_num">4</span>
                                        <input class="niceRadio" type="radio" name="price" value="5"><span
                                            class="eva_num">5</span>
                                    </div>
                                    <div class="clear"></div>
                                </div><!-- .evaluation -->

                                <div class="text_review">
                                    <strong>Review</strong><sup>*</sup><br>
                                    <textarea name="text"></textarea><br>
                                    <i>Note: HTML is not translated!</i>
                                </div><!-- .text_review -->

                                <div class="nickname">
                                    <strong>Nickname</strong><sup>*</sup><br>
                                    <input type="text" name="" class="" value="">
                                </div><!-- .nickname -->

                                <div class="your_review">
                                    <strong>Summary of Your Review</strong><sup>*</sup><br>
                                    <input type="text" name="" class="" value="">
                                </div><!-- .your_review -->

                                <div class="clear"></div>


                                <input type="submit" value="Submit Review">
                            </form><!-- .add_comments -->--%>
                            <div class="clear"></div>
                        </div><!-- .tab2 .tab_body -->

                        <div class="clear"></div>
                    </div><!-- #content -->

                    <div class="clear"></div>
                </div>
                <!-- #wrapper_tab -->
                <div class="clear"></div>

            </article><!-- .product_page -->

        </div><!-- .grid_12 -->

        <div class="clear"></div>

    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
</body>
</html>
