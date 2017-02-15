<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">orders</content>
<meta name="decorator" content="front"/>
<head>
    <title>购物车</title>
    <style>
        .font15 {
            font-size: 15px !important;
        }
    </style>
</head>
<body>

<content tag="nav">
    <ul>
        <li style="margin-right: 30px;"><a href="${ctxFront}/home">个人中心</a></li>
        <li><a href="catalog_grid.html">订 单</a></li>
        <li><a href="catalog_grid.html">消 息</a></li>
        <li class="curent"><a href="${ctxFront}/shoppingCart">购物车</a></li>
    </ul>
</content>

<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_12">
            <c:if test="${fn:length(shoppingCartList) == 0}">
                <div style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                    <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom:50px;margin-top: 10px;">
                        <div class="cart-ico"></div>
                        <h2><b style="color: #eb6447;">购 物 车</b></h2>
                    </div>
                    <div style="padding-left: 220px;">
                        <img src="${ctxStaticFront}/orders/images/shoppingCart.jpg" style="float: left; width: 15%;height: 15%;">
                        <div style="padding-top: 50px; font-size: 22px; color:#eb6447;font-weight: bold;">您的购物车空空如也，
                        <a href="${ctx}/goods" class="continue" style="font-size: 22px; text-decoration: none;">
                            去购物 ></a></div>
                        <div class="clear"></div>
                    </div>
                    <div style="height: 60px;"></div>
                </div>
            </c:if>
            <c:if test="${fn:length(shoppingCartList) > 0}">
            <form id="myForm" method="post" class="registed registed2"
                  style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                <div style="/*border-bottom: 2px dashed #bdd1e9;*/margin-bottom: 20px;margin-top: 10px;">
                    <div class="cart-ico"></div>
                    <h2><b style="color: #eb6447;">购 物 车</b></h2>
                </div>

                <article>
                    <table class="cart_product">
                        <tr class="bg">
                            <th class="images"></th>
                            <th class="name">宝贝名称</th>
                            <th class="edit"></th>
                            <th class="price">单价</th>
                            <th class="qty">数量</th>
                            <th class="subtotal">总价</th>
                            <th class="close"></th>
                        </tr>
                        <c:forEach items="${shoppingCartList}" var="cart">
                            <tr class="font15">
                                <td class="images"><a href="${ctx}/goodsDetails/${cart.goodsAll.goods.id}"><img
                                        src="${cart.goodsAll.goods.thumbImgUrl}"></a></td>
                                <td class="name">${cart.goodsAll.goods.goodsName}${cart.goodsAll.remarks}</td>
                                <td class="edit"><a title="Edit" href="#">Edit</a></td>
                                <td class="price">${cart.goodsAll.price}</td>
                                <td class="qty"><input type="text" name="" value="${cart.goodsAmount}"
                                                       placeholder="1000"></td>
                                <td class="subtotal">${cart.goodsAmount * cart.goodsAll.price}</td>
                                <td class="close"><a title="close" class="close" href="#"></a></td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="7" class="cart_but">
                                <a href="#" class="continue"><img src="${ctxStaticFront}/common/img/cont.png"> 继续购物</a>
                                <a href="#" class="update"><img src="${ctxStaticFront}/common/img/update.png"> 更新购物车</a>
                            </td>
                        </tr>
                    </table>

                    <div>
                        <div class="grid_6" style="width:550px;">
                            <div class="bottom_block estimate">
                                <h1 style="color:#7698c1;">请选择收货地址</h1>
                                <c:forEach var="address" items="${memberAddressList}" varStatus="status">
                                    <p onclick="changeRadio($(this).find('span'));">
                                        <input type="radio" class="niceRadio" name="addressId" <c:if test="${status.index == 0}">checked</c:if>/>
                                        ${address.address}<b style="margin: 0 20px;">收件人：${address.trueName}</b> 电话：${address.phone}
                                    </p>
                                </c:forEach>

                            </div><!-- .estimate -->
                        </div><!-- .grid_4 -->


                        <div class="grid_4">
                            <div class="bottom_block total">
                                <div style="font-size: 20px;text-align: center;margin-top: 30px;margin-bottom: 20px; color:#eb6447; ">
                                    <div class="grid_1" style=""><b>总价:</b></div>
                                    <div class="grid_2" style="font-size: 30px;">￥<span>1111.00</span></div>
                                    <div class="clear"></div>
                                </div>
                                <button class="checkout" style="font-size: 20px; letter-spacing:18px;">马上下单</button>
                            </div><!-- .total -->
                        </div><!-- .grid_4 -->

                        <div class="clear"></div>
                    </div><!-- #cart_forms -->
                </article>

            </form>
            </c:if>
            <div class="clear"></div>
        </div><!-- #content -->

        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
</body>
</html>
