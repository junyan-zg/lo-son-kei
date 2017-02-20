<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">orders</content>
<meta name="decorator" content="front"/>
<head>
    <title>一键购买</title>
    <style>
        .font15 {
            font-size: 15px !important;
        }
    </style>
    <script>

        function updatePrice(){

            var v = $("#cart-amount").val().trim();
            $("#cart-amount").val(v);
            if(isNaN(v) || v==''){   //不是数字
                $("#cart-amount").val(1);
            }
            v = parseInt(v);

            var stock = parseInt($('#stock').html());
            if(v > stock){
                $("#cart-amount").val(stock);
            }else if(v < 1){
                $("#cart-amount").val(1);
            }

            var price = $("#price").html() * v;
            $("#total").html(price);
            $("#total-price").html(price);
        }
    </script>
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
            <c:if test="${not empty error}">
                <div style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                    <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom:50px;margin-top: 10px;">
                        <div class="cart-ico"></div>
                        <h2><b style="color: #eb6447;">一 键 购 买</b></h2>
                    </div>
                    <div style="padding-left: 220px;">
                        <img src="${ctxStaticFront}/orders/images/shoppingCart.jpg" style="float: left; width: 15%;height: 15%;">
                        <div style="padding-top: 50px; font-size: 22px; color:#eb6447;font-weight: bold;">${error}，
                        <a href="${ctx}/goods" class="continue" style="font-size: 22px; text-decoration: none;">
                            去购物 ></a></div>
                        <div class="clear"></div>
                    </div>
                    <div style="height: 60px;"></div>
                </div>
            </c:if>
            <c:if test="${empty error}">
            <form id="myForm" class="registed registed2" onsubmit="return false;" style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                <div style="/*border-bottom: 2px dashed #bdd1e9;*/margin-bottom: 20px;margin-top: 10px;">
                    <div class="cart-ico"></div>
                    <h2><b style="color: #eb6447;">一 键 购 买</b></h2>
                </div>

                <article>
                    <table class="cart_product">
                        <tr class="bg">
                            <th class="images"></th>
                            <th class="name">宝贝名称</th>
                            <th class="edit">规格</th>
                            <th class="price">单价</th>
                            <th class="qty">数量</th>
                            <th class="price">库存</th>
                            <th class="subtotal">总价</th>
                        </tr>
                            <tr class="font15">
                                <td class="images"><a href="${ctx}/goodsDetails/${shoppingCart.goodsAll.goods.id}"><img
                                        src="${shoppingCart.goodsAll.goods.thumbImgUrl}"></a></td>
                                <td class="name">${shoppingCart.goodsAll.goods.goodsName}</td>
                                <td class="edit"><%--<a title="Edit" href="#">Edit</a>--%>${shoppingCart.goodsAll.remarks}</td>
                                <td class="price" id="price">${shoppingCart.goodsAll.price}</td>
                                <td class="qty">
                                    <input class="font15 amount" type="text" onchange="updatePrice();" name="cart-amount" id="cart-amount" value="${shoppingCart.goodsAmount}">
                                    <input type="hidden" name="goodsNo" value="${shoppingCart.goodsAll.id}">
                                </td>
                                <td class="price" id="stock">${shoppingCart.goodsAll.stock}</td>
                                <td class="subtotal" style="color: #EB6447;" id="total">${shoppingCart.goodsAmount * shoppingCart.goodsAll.price}</td>
                            </tr>
                        <tr>
                            <td colspan="7" class="cart_but">
                                <a href="${ctx}/goods" class="continue"><img src="${ctxStaticFront}/common/img/cont.png"> 继续购物</a>
                                <a href="javascript:updatePrice();" class="update"><img src="${ctxStaticFront}/common/img/update.png"> 更新订单</a>
                            </td>
                        </tr>
                    </table>

                    <div>
                        <div class="grid_6" style="width:550px;">
                            <div class="bottom_block estimate" style="min-height: auto;">
                                <h1 style="color:#7698c1;">请选择收货地址</h1>
                                <c:choose>
                                    <c:when test="${fn:length(memberAddressList) == 0}">
                                        <p style="font-size: 20px;padding-left: 30px;">请先在完成下单前先填写一个收货地址！</p>
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach var="address" items="${memberAddressList}" varStatus="status">
                                            <p onclick="changeRadio($(this).find('span'));">
                                                <input type="radio" class="niceRadio" name="addressId" value="${address.id}" <c:if test="${status.index == 0}">checked</c:if>/>
                                                    ${address.address}<b style="margin: 0 20px;">收件人：${address.trueName}</b> 电话：${address.phone}
                                            </p>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                                <p><a href="${ctxFront}/address" style="text-decoration: none;color:#EB6447;"><b>&lt;&lt;管理收货地址</b></a></p>

                            </div><!-- .estimate -->
                        </div><!-- .grid_4 -->


                        <div class="grid_4">
                            <div class="bottom_block total">
                                <div style="font-size: 20px;text-align: center;margin-top: 30px;margin-bottom: 20px; color:#eb6447; ">
                                    <div class="grid_1"><b>总价:</b></div>
                                    <div class="grid_2" style="font-size: 30px;">￥<span id="total-price">${shoppingCart.goodsAmount * shoppingCart.goodsAll.price}</span></div>
                                    <div class="clear"></div>
                                </div>
                                <button onclick="subForm();" class="checkout" style="font-size: 20px; letter-spacing:18px;">马上下单</button>
                            </div><!-- .total -->
                        </div><!-- .grid_4 -->

                        <c:choose>
                            <c:when test="${fn:length(memberAddressList) == 0}">
                                <script>
                                    function subForm(){
                                        updatePrice();
                                        alert('请先填写一个收货地址');
                                        return false;
                                    };
                                </script>
                            </c:when>
                            <c:otherwise>
                                <script>
                                    function subForm(){
                                        updatePrice();
                                        $.post("${ctxFront}/createOrders",$("#myForm").serialize(),function(data){
                                            if(data.error){
                                                alert(data.error);
                                            }else{
                                                alert(data.goodsNo);
                                            }
                                        });
                                    };
                                </script>
                            </c:otherwise>
                        </c:choose>

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
