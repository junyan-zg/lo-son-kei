<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">orders</content>
<meta name="decorator" content="front"/>
<head>
    <title>购物车</title>
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
                    <form id="myForm" method="post" action="${ctxFront}/home/save/${type}Pwd" class="registed registed2" style="text-align: left;margin-bottom: 20px;padding: 30px;margin-top: 10px;">
                        <div style="/*border-bottom: 2px dashed #bdd1e9;*/margin-bottom: 20px;margin-top: 10px;">
                            <div style="background: url(${ctxStaticFront}/common/img/bg_cart.png) no-repeat 50% 50% #eb6447;
                                    border-radius: 19px;
                                    -moz-border-radius: 19px;
                                    -khtml-border-radius: 19px;
                                    display: block;
                                    float: left;
                                    height: 38px;
                                    margin-top: -8px;
                                    margin-right: 10px;
                                    width: 38px;">
                            </div><h2><b style="color: #eb6447;">购 物 车</b></h2>
                        </div>

                        <article>
                            <table class="cart_product">
                                <tr class="bg">
                                    <th class="images"></th>
                                    <th class="name">Product Name</th>
                                    <th class="edit"> </th>
                                    <th class="price">Unit Price</th>
                                    <th class="qty">Qty</th>
                                    <th class="subtotal">Subtotal</th>
                                    <th class="close"> </th>
                                </tr>
                                <tr>
                                    <td class="images"><a href="product_page.html"><img src="img/content/product12.png" alt="Product 12" title=""></a></td>
                                    <td class="name">Paddywax Fragrance Diffuser Set, Gardenia Tuberose, Jasmine, 4-Ounces</td>
                                    <td class="edit"><a title="Edit" href="#">Edit</a></td>
                                    <td class="price">$75.00</td>
                                    <td class="qty"><input type="text" name="" value="" placeholder="1000"></td>
                                    <td class="subtotal">$750.00</td>
                                    <td class="close"><a title="close" class="close" href="#"></a></td>
                                </tr>
                                <tr>
                                    <td class="images"><a href="product_page.html"><img src="img/content/product10.png" alt="Product 10" title=""></a></td>
                                    <td class="name">California Scents Spillproof Organic Air Fresheners, Coronado Cherry, 1.5 Ounce Cannister </td>
                                    <td class="edit"><a title="Edit" href="#">Edit</a></td>
                                    <td class="price">$75.00</td>
                                    <td class="qty"><input type="text" name="" value="" placeholder="1000"></td>
                                    <td class="subtotal">$750.00</td>
                                    <td class="close"><a title="close" class="close" href="#"></a></td>
                                </tr>
                                <tr>
                                    <td colspan="7" class="cart_but">
                                        <a href="#" class="continue"><img src="img/cont.png" alt="" title=""> Continue Shopping</a>
                                        <a href="#" class="update"><img src="img/update.png" alt="" title=""> Update Shopping Cart</a>
                                    </td>
                                </tr>
                            </table>

                            <div id="cart_forms">
                                <div class="grid_4">
                                    <div class="bottom_block estimate">
                                        <h3>Estimate Shipping and Tax</h3>
                                        <p>Enter your destination to get a shipping estimate.</p>
                                        <form>
                                            <p>
                                                <strong>Country:</strong><sup>*</sup><br>
                                                <select>
                                                    <option>United States</option>
                                                    <option>United States</option>
                                                </select>
                                            </p>
                                            <p>
                                                <strong>State/Province:</strong><br>
                                                <select class="bottom-index">
                                                    <option>Please select region, state or province</option>
                                                    <option>Please select region, state or province</option>
                                                </select>
                                            </p>
                                            <p>
                                                <strong>Zip/Postal Code</strong><br>
                                                <input type="text" name="" value="">
                                            </p>
                                            <input type="submit" id="get_estimate" value="Get a Quote">
                                        </form>

                                    </div><!-- .estimate -->
                                </div><!-- .grid_4 -->

                                <div class="grid_4">
                                    <div class="bottom_block discount">
                                        <h3>Discount Codes</h3>
                                        <p>Enter your coupon code if you have one.</p>
                                        <form>
                                            <p><input type="text" name="" value=""></p>
                                            <input type="submit" id="apply_coupon" value="Apply Coupon">
                                        </form>
                                    </div><!-- .discount -->
                                </div><!-- .grid_4 -->

                                <div class="grid_4">
                                    <div class="bottom_block total">
                                        <table class="subtotal">
                                            <tr>
                                                <td>Subtotal</td><td class="price">$1, 500.00</td>
                                            </tr>
                                            <tr class="grand_total">
                                                <td>Grand Total</td><td class="price">$1, 500.00</td>
                                            </tr>
                                        </table>
                                        <button class="checkout">PROCEED TO CHECKOUT <img src="img/checkout.png" alt="" title=""></button>
                                        <a href="#">Checkout with Multiple Addresses</a>
                                    </div><!-- .total -->
                                </div><!-- .grid_4 -->

                                <div class="clear"></div>
                            </div><!-- #cart_forms -->
                            <div class="clear"></div>
                        </article>


                        <div>
                            <strong>旧 密 码</strong>
                            <input type="password" name="oldPwd" id="oldPwd" placeholder="请输入旧密码" class="required" />
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-oldPwd"></span>
                        </div>
                        <div style="margin-top: 20px;">
                            <strong>新 密 码</strong>
                            <input type="password" name="newPwd" id="newPwd" placeholder="请输入新密码" class="required" />
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-newPwd"></span>
                        </div>
                        <div style="padding-top: 10px;">
                            <strong>确 认 密 码</strong>
                            <input type="password" id="newPwdAgain" placeholder="请再次输入密码" class="required" />
                            <sup>*</sup>
                            <span style="color:#eb6447;margin-left: 5px;" id="tips-newPwdAgain"></span>
                        </div>
                        <div class="submit">
                            <input type="submit" value="修 改" style="width: 545px;">
                        </div>
                        <div class="clear"></div>
                    </form>

            <div class="clear"></div>
        </div><!-- #content -->

        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
</body>
</html>
