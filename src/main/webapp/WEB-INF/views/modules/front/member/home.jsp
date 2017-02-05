<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>个人中心</title>
    <script>
        function page(n){
            $("#pageNo").val(n);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>

<content tag="nav">
    <ul>
        <li class="curent" style="margin-right: 30px;"><a href="${ctxFront}/home">个人中心</a></li>
        <li><a href="catalog_grid.html">订 单</a></li>
        <li><a href="catalog_grid.html">消 息</a></li>
        <li><a href="javascript:;">购物车</a></li>
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


            <div class="clear"></div>

            <div class="products catalog">
                    <form:form modelAttribute="member" method="post" action="${ctx}/doRegister" class="registed registed2" onsubmit="return registerForm();" style="text-align: left;margin-bottom: 20px;padding: 30px;">
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2><b style="color: #eb6447;">必 填 信 息</b></h2>
                        </div>
                        <div>
                            <strong>账 户</strong>
                            <form:input path="memberAccount" placeholder="登录账号" cssClass="required"/>
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberAccount">${errorRegister}</span>
                        </div>
                        <div>
                            <strong>昵 称</strong>
                            <form:input path="memberName" placeholder="会员昵称" cssClass="required" />
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberName"></span>
                        </div>
                        <div>
                            <strong>登 录 密 码</strong>
                            <form:password path="memberPwd" placeholder="登录密码" cssClass="required"/>
                            <sup>*</sup>
                            <span style="color:#eb6447;margin-left: 5px;" id="tips-memberPwd"></span>
                        </div>
                        <div>
                            <strong>确 认 密 码</strong>
                            <form:password path="memberPwdAgain" placeholder="确认登录密码" cssClass="required"/>
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberPwdAgain"></span>
                        </div>
                        <div>
                            <strong>支 付 密 码</strong>
                            <form:password path="memberPaypwd" placeholder="支付密码" cssClass="required"/>
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberPaypwd"></span>
                        </div>
                        <div>
                            <strong>确 认 密 码</strong>
                            <form:password path="memberPaypwdAgain" placeholder="确认支付密码" cssClass="required"/>
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberPaypwdAgain"></span>
                        </div>

                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 10px;padding-top: 20px;">
                            <h2><b style="color: #eb6447;">其 他 信 息</b></h2>
                        </div>

                        <div>
                            <strong>真 实 姓 名</strong>
                            <form:input path="memberTruename" placeholder="真实姓名"/>
                        </div>

                        <div style="margin-top: 8px;margin-bottom: 17px;">
                            <strong>性 别</strong>
                                <%--<input type="text" name="account" placeholder="性别"/>--%>
                            <form:select path="memberDetails.memberSex" cssClass="selectBox" cssStyle="width: 420px;">
                                <form:option value="" label="请选择"/>
                                <form:options items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
                            </form:select>
                        </div>

                        <div>
                            <strong>生 日</strong>
                            <input name="memberDetails.memberBirthday" placeholder="生日" class="Wdate" readonly type="text"
                                   value="<fmt:formatDate value="${member.memberDetails.memberBirthday}" pattern="yyyy-MM-dd"/>"
                                   onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true,isShowToday:false});" />
                        </div>

                        <div>
                            <strong>手 机 号 码</strong>
                            <form:input path="memberDetails.memberMobile" placeholder="手机号码"/>
                        </div>

                        <div>
                            <strong>Q Q 号 码</strong>
                            <form:input path="memberDetails.memberQq" placeholder="QQ号码"/>
                        </div>

                        <div>
                            <strong>电 子 邮 箱</strong>
                            <form:input path="memberDetails.memberEmail" placeholder="电子邮箱"/>
                        </div>

                        <div class="submit">
                            <input type="submit" value="注 册" style="width: 545px;">
                        </div>
                        <div class="clear"></div>
                    </form:form>

                <div class="clear"></div>
            </div><!-- .products -->
            <div class="clear"></div>

            <div class="pagination">
                ${page.frontHtml}
            </div>

            <%--<div class="pagination">
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
            </div><!-- .pagination -->--%>

            <div class="clear"></div>
        </div><!-- #content -->

        <div id="sidebar" class="grid_2" >
            <aside id="categories_nav">
                <header class="aside_title">
                    <h3 style="font-size: 20px;color: #444;"><%--个人中心--%>&nbsp;</h3>
                </header>

                <nav class="right_menu">
                    <ul>
                        <li class="current"><a href="#">个人信息</a></li>
                        <li><a href="#">收货地址</a></li>
                        <li><a href="#">账单</a></li>
                        <c:forEach items="${firstLevelCategoryList}" var="gcl">
                            <li<c:if test="${gcl.id eq goodsSearch.firstLevelCategoryId}"> class="current"</c:if>><a href="${ctx}/goods?firstLevelCategoryId=${gcl.id}">${gcl.categoryName}</a></li>
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
