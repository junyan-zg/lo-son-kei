<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">orders</content>
<meta name="decorator" content="front"/>
<head>
    <title>订单详情</title>
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
        <li class="curent"><a href="${ctxFront}/orders">订 单</a></li>
        <li><a href="catalog_grid.html">消 息</a></li>
        <li><a href="${ctxFront}/shoppingCart">购物车</a></li>
    </ul>
</content>

<section id="main1">
    <div class="container_12">
        <div id="content" class="grid_12">
            <div class="registed registed2" style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                <div style="/*border-bottom: 2px dashed #bdd1e9;*/margin-bottom: 20px;margin-top: 10px;">
                    <h2><b style="color: #eb6447;">订 单 详 情</b></h2>
                </div>

                <article>
                    <table class="cart_product">
                        <tr class="bg">
                            <th class="images"></th>
                            <th class="name">宝贝名称</th>
                            <th class="price">单价</th>
                            <th class="qty">购买数量</th>
                            <th class="subtotal">总价</th>
                        </tr>
                        <c:set var="total">0.00</c:set>
                        <c:forEach items="${orders.ordersDetailsList}" var="details">
                            <tr class="font15">
                                <td class="images"><a href="${ctx}/goodsDetails/${details.goodsAll.goods.id}">
                                    <img src="${details.goodsAll.goods.thumbImgUrl}"></a></td>
                                <td class="name">${details.remarks}</td>
                                <td class="price">${details.price}</td>
                                <td class="price">${details.goodsAmount}</td>
                                <td class="subtotal" style="color: #EB6447;">${details.priceAll}</td>
                            </tr>
                        </c:forEach>
                        <tr class="font15">
                            <td class="name" colspan="4">合计：</td>
                            <td class="subtotal" style="font-size: 20px; color: #EB6447;">${orders.priceAll}</td>
                        </tr>
                    </table>

                    <div>
                        <div class="grid_11">
                            <div class="bottom_block estimate">
                                <div class="grid_6">
                                    <h1 style="color:#7698c1;">基本信息</h1>
                                    <p>订单号：${orders.id}</p>
                                    <p>收货人：${orders.trueName}</p>
                                    <p>收货地址：${orders.province.name} ${orders.city.name} ${orders.area.name} ${orders.address}</p>
                                    <p>下单日期：<fmt:formatDate value="${orders.createDate}" pattern="yyyy年MM月dd日 HH:mm:ss"/></p>
                                </div>
                                <div class="grid_4" style="border: 4px dashed #eed3d7;padding-left: 8px;padding-top: 15px;">
                                    <p>待支付：<span style="color: #EB6447;font-size: 20px;">￥${orders.priceAll}</span></p>
                                    <p><label>支付密码：</label><input type="password"/></p>
                                    <p><a href="" class="btn" style="letter-spacing:10px;font-size: 18px;">立刻支付</a></p>
                                </div>
                                <div class="clear"></div>
                            </div><!-- .estimate -->
                        </div>

                        <div class="clear"></div>
                    </div><!-- #cart_forms -->
                </article>

            </div>

            <div class="clear"></div>
        </div><!-- #content -->

        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
</body>
</html>
