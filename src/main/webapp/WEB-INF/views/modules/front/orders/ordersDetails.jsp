<%@ page import="com.zjy.losonkei.modules.orders.entity.Orders" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<c:set var="FLAG_DOING"><%=Orders.FLAG_DOING%></c:set>
<c:set var="PAY_STATE1"><%=Orders.PAY_STATE1%></c:set>
<%--
   所有在flag=doing中

   1、PAY_STATE1时支付
   2、orders_states为空或为1时可取消
   3、goods_states为空或为1或为6时可取消
--%>
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
        <li><a href="${ctxFront}/notes">消 息</a></li>
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

                    <%--<div style="border: 2px dashed #bdd1e9;margin-bottom: 20px;padding: 10px;" >
                        <div class="circle-info">
                            <div class="circle-red"><p>已下单</p></div>
                            <p>2016-12-22<br>10:22:22</p>
                        </div>
                        <div class="direction-left">next</div>
                        <div class="circle-info">
                            <div class="circle-red"><p>在线支付</p></div>
                        </div>
                        <div class="direction-left">next</div>
                        <div class="circle-info">
                            <div class="circle-red"><p>待发货</p></div>
                        </div>
                        <div class="direction-left">next</div>
                        <div class="circle-info">
                            <div class="circle-gray"><p>待收货</p></div>
                        </div>
                        <div class="direction-left">next</div>
                        <div class="circle-info">
                            <div class="circle-gray"><p>确认收货</p></div>
                        </div>

                        <div class="clear"></div>
                    </div>--%>

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
                                <c:if test="${FLAG_DOING eq orders.flag}">
                                    <c:choose>
                                    <c:when test="${PAY_STATE1 eq orders.payState}">
                                    <div class="grid_4" style="border: 4px dashed #eed3d7;padding-left: 8px;padding-top: 15px;">
                                        <form onsubmit="return false;" id="payForm">
                                        <input type="hidden" name="ordersId" value="${orders.id}"/>
                                        <p>待支付：<span style="color: #EB6447;font-size: 20px;">￥${orders.priceAll}</span></p>
                                        <p><label>支付密码：</label><input type="password" name="payPwd"/></p>
                                        <p><a href="javascript:subPayForm();" class="btn" style="letter-spacing:10px;font-size: 18px;">立刻支付</a></p>
                                        <p>请在<fmt:formatDate value="${job.duedate}" pattern="yyyy-MM-dd HH:mm:ss"/>前完成支付.</p>
                                        </form>
                                        <script>
                                            var flag = true;
                                            function subPayForm(){
                                                if (flag){
                                                    flag = false;
                                                    $.post("${ctxFront}/payOrders",$("#payForm").serialize(),function(data){
                                                        if(data == "ok"){
                                                            alert("支付成功！");
                                                            window.location.reload();
                                                        }else{
                                                            flag = true;
                                                            alert(data);
                                                        }
                                                    });
                                                }
                                            }
                                        </script>
                                    </div>
                                    </c:when>
                                    <c:when test="${not empty task}">
                                        <div class="grid_4" style="border: 4px dashed #eed3d7;padding-left: 8px;padding-top: 15px;">
                                            <form onsubmit="return false;" id="ordersForm">
                                                <input type="hidden" name="id" value="${orders.id}"/>
                                                <c:if test="${'待收货' ne task.name}">
                                                    <p><label>申请理由：</label><br><textarea name="reason" id="reason"></textarea></p>
                                                    <p><a onclick="dealOrders();" class="btn" style="cursor:pointer;letter-spacing:10px;font-size: 18px;">${task.name}</a></p>
                                                </c:if>
                                                <c:if test="${'待收货' eq task.name}">
                                                    <p><a onclick="dealOrders();" class="btn" style="cursor: pointer; letter-spacing:10px;font-size: 18px;">确认收货</a></p>
                                                </c:if>
                                            </form>
                                            <script>
                                                var flag = true;
                                                function dealOrders(){
                                                    if (flag){
                                                        flag = false;
                                                        <c:if test="${'待收货' ne task.name}">
                                                            if ($("#reason").val().trim() == ''){
                                                                alert('请填写申请理由');
                                                                $("#reason").focus();
                                                                return false;
                                                            }
                                                        </c:if>
                                                        $.post("${ctxFront}/dealOrders",$("#ordersForm").serialize(),function(data){
                                                            if(data == "ok"){
                                                                alert("操作成功！");
                                                                window.location.reload();
                                                            }else{
                                                                alert("操作失败！");
                                                                window.location.reload();
                                                            }
                                                        });
                                                    }
                                                }
                                            </script>
                                        </div>
                                    </c:when>
                                    </c:choose>
                                </c:if>
                                <div class="clear"></div>
                            </div><!-- .estimate -->
                        </div>

                        <div class="clear"></div>
                    </div><!-- #cart_forms -->


                    <div>
                        <div class="grid_11">
                            <h1 class="red" style="margin-top: 10px; padding-bottom: 20px; border-bottom: 2px dashed #bdd1e9;">订单跟踪</h1>

                            <ol style="margin-left: -20px;margin-top: -20px;">
                                <c:forEach items="${notes}" var="note">
                                <li style="margin-bottom: 10px;">${note.content}<span style="color: grey;"><fmt:formatDate value="${note.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/> </span></li>
                                </c:forEach>
                            </ol>
                        </div>
                        <div class="clear"></div>
                    </div>
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
