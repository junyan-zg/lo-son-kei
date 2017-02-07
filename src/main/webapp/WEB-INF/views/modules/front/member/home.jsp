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
           <%-- <h1 class="page_title">&nbsp;</h1>--%>


            <div class="clear"></div>

            <div class="products catalog" style="width: 810px;">
                    <form:form modelAttribute="member" method="post" action="${ctxFront}/home/saveBasic" class="registed registed2" style="text-align: left;margin-bottom: 20px;padding: 30px;">
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2><b style="color: #eb6447;">个 人 资 料</b></h2>
                        </div>
                        <div>
                            <strong>账 户</strong> ${member.memberAccount}
                            <span style="color: #eb6447;margin-left: 20px;"><b>请牢记您的登陆凭据，不可修改</b></span>
                        </div>
                        <div style="margin-top: 20px;">
                            <strong>昵 称</strong>
                            <form:input path="memberName" placeholder="会员昵称" cssClass="required" />
                            <sup>*</sup>
                            <span style="color: #eb6447;margin-left: 5px;" id="tips-memberName"></span>
                        </div>
                        <div style="padding-top: 10px;">
                            <strong>登 录 密 码</strong>
                            <span style="color:#eb6447;margin-left: 5px;"><b>密</b><a href="${ctxFront}/home/go/pwd" style="margin-left: 30px;">修改</a></span>
                        </div>
                        <div style="margin-top: 10px;">
                            <strong>支 付 密 码</strong>
                            <span style="color:#eb6447;margin-left: 5px;"><b>密</b><a href="${ctxFront}/home/go/paypwd" style="margin-left: 30px;">修改</a></span>
                        </div>

                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 10px;padding-top:20px;margin-top: 20px;">
                            <h2><b style="color: #eb6447;">详 细 信 息</b></h2>
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
                            <input type="submit" value="保 存" style="width: 545px;">
                        </div>
                        <div class="clear"></div>
                    </form:form>

                <div class="clear"></div>
            </div>

            <div class="clear"></div>
        </div><!-- #content -->

        <div id="sidebar" class="grid_2" >
            <aside id="categories_nav">
                <header class="aside_title">
                    <h3 style="font-size: 20px;color: #444;"><%--个人中心--%>&nbsp;</h3>
                </header>

                <nav class="right_menu">
                    <ul>
                        <li class="current"><a href="${ctxFront}/home">个人信息</a></li>
                        <li><a href="${ctxFront}/address">收货地址</a></li>
                        <li><a href="#">账单</a></li>
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
