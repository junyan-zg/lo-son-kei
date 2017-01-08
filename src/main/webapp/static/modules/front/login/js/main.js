/**
 * Created by zjy on 2017/1/2.
 */

$(function () {
    $('.tabs').Tabs({
        event: 'click'
    });

    $(".required").each(function(){
       $(this).change(function(){
           $("#tips-" + $(this).attr("name")).html($(this).val().trim()==""?"必填信息":"");
       });
    });
    $(".required0").each(function(){
        $(this).change(function(){
            $("#tips-" + $(this).attr("name")).html($(this).val().trim()==""?"不能为空":"");
        });
    });
});
function loginForm(){
    var subFlag = true;
    $(".required0").each(function(){
        if($(this).val().trim()==""){
            if(subFlag){
                $(this).focus();    //只对第一个获取焦点
            }
            subFlag = false;
            var tipId = "#tips-" + $(this).attr("name");
            $(tipId).html("不能为空");
        }
    });
    return subFlag;
}
function registerForm(){
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
    if($("#memberPwd").val() != $("#memberPwdAgain").val()){
        subFlag = false;
        $("#tips-memberPwdAgain").html("密码不一致");
    }
    if($("#memberPaypwd").val() != $("#memberPaypwdAgain").val()){
        subFlag = false;
        $("#tips-memberPaypwdAgain").html("密码不一致");
    }
    return subFlag;
}