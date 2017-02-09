<%@ page import="com.zjy.losonkei.modules.goods.entity.Goods" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib-front.jsp" %>
<html>
<content tag="moduleName">home</content>
<meta name="decorator" content="front"/>
<head>
    <title>修改密码</title>
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
            <div class="products catalog" style="width: 810px;">
                    <form id="myForm" method="post" action="${ctxFront}/home/save/${type}Pwd" onsubmit="return saveForm();" class="registed registed2" style="text-align: left;margin-bottom: 20px;padding: 30px;">
                        <input type="hidden" value="${type}" name="type">
                        <div style="border-bottom: 2px dashed #bdd1e9;margin-bottom: 20px;">
                            <h2><b style="color: #eb6447;">修 改 <c:if test="${not empty type}">支 付 </c:if>密 码</b></h2>
                        </div>
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
                        <li><a href="${ctxFront}/account">账单</a></li>
                    </ul>
                </nav><!-- .right_menu -->
            </aside><!-- #categories_nav -->


        </div><!-- .sidebar -->
        <div class="clear"></div>
    </div><!-- .container_12 -->
</section><!-- #main -->
<div class="clear"></div>
<div style="height: 50px;"></div>
<script>
    $(".required").each(function(){
        $(this).change(function(){
            $("#tips-" + $(this).attr("name")).html($(this).val().trim()==""?"必填信息":"");
        });
    });
    function saveForm(){
        var subFlag = true;
        $(".required").each(function(){
            if($(this).val().trim()==""){
                if(subFlag){
                    $(this).focus();    //只对第一个获取焦点
                }
                subFlag = false;
                var tipId = "#tips-" + $(this).attr("name");
                $(tipId).html("必填信息");
            }
        });
        if(!subFlag){
            return subFlag;
        }
        if($("#newPwd").val() != $("#newPwdAgain").val()){
            subFlag = false;
            $("#tips-newPwdAgain").html("密码不一致");
        }

        if(subFlag){
            $.post("${ctxFront}/home/save/${type}Pwd",$("#myForm").serialize(),function(data){
                if (data=="ok"){
                    alert("修改成功！");
                    window.location.href = "${ctxFront}/home";
                }else{
                    $("#tips-oldPwd").html("旧密码有误");
                    $("#oldPwd").focus();
                }
            });
        }
        return false;
    }

</script>
</body>
</html>
