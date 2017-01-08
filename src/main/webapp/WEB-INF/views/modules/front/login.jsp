<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">login</content>
<meta name="decorator" content="front"/>
<head>
    <title>登录</title>
</head>
<body>
<content tag="nav">
    <ul class="tab_menu">
        <li<c:if test="${not empty isLogin}"> class="current"</c:if>>登 录</li>
        <li<c:if test="${empty isLogin}"> class="current"</c:if>>注 册</li>
        <div class="clear"></div>
    </ul>
</content>
<section id="main" class="page-login">
    <div class="container_12">

        <div class="grid_12">
            <%--<header></header>--%>
            <article>
                <div class="tabs">
                    <div class="tab_box">
                        <div class="grid_12 registed_form<c:if test="${empty isLogin}"> hide</c:if>">
                            <form class="registed" method="post" action="${ctx}/login" onsubmit="return loginForm();" style="text-align: left;padding-left: 210px;margin-bottom: 20px;">
                                <c:if test="${not empty message}">
                                    <div style="text-align: left;padding-left: 140px;">
                                        <h2 style="color: #eb6447;font-weight: bolder;">${message}</h2>
                                    </div>
                                </c:if>
                                <div>
                                    <strong>账 户</strong>
                                    <input type="text" name="username" placeholder="请输入您的账号" value="${username}" class="required0">
                                    <sup>*</sup>
                                    <span style="color: #eb6447;margin-left: 5px;" id="tips-username" ></span>
                                </div>
                                <div>
                                    <strong>密 码</strong>
                                    <input type="password" name="password" placeholder="请输入您的密码" class="required0">
                                    <sup>*</sup>
                                    <span style="color: #eb6447;margin-left: 5px;" id="tips-password"></span>
                                </div>
                                <div class="remember">
                                    <input class="niceCheck" type="checkbox" name="rememberMe" ${rememberMe ? 'checked' : ''}/>
                                    <span class="rem"<%--onclick="$('#remember').attr('checked', !$('#remember').attr('checked'));"--%>>记 住 我</span>
                                </div>
                                <div class="submit">
                                    <input type="submit" value="登 录" style="width: 500px;">
                                </div>
                                <div class="clear"></div>
                            </form>
                        </div>
                        <div class="<c:if test="${not empty isLogin}">hide</c:if>">
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

                        </div>
                    </div>
                </div>


            </article>

        </div><!-- #content -->

        <div class="clear"></div>

    </div><!-- .container_12 -->
</section><!-- #main -->

</body>
</html>
