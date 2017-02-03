function selectSpec(dom,id){
    if($(dom).hasClass("spec-select")){     //已选中

    }else{
        $("#"+id).val($(dom).html());
        $(dom).siblings(".spec-select").removeClass("spec-select").addClass("spec-no-select");  //取消已选中
        $(dom).removeClass("spec-no-select").addClass("spec-select");
        ajaxGetPrice();
    }
    return;
}

function checkBuyAmount(){
    var v = $('#amount').val().trim();
    $('#amount').val(v);
    if(isNaN(v) || v==''){   //不是数字
        $("#errMsg").html("* 请填写数字");
        $("#amount").focus();
        return false;
    }
    v = parseInt(v);
    var stork = parseInt($('#stock').html().trim());
    if(v > stork){
        $("#errMsg").html("* 购买数量不能超过库存量");
        $("#amount").focus();
        return false;
    }
    if(v <= 0){
        $("#errMsg").html("* 请填写大于0的数字");
        $("#amount").focus();
        return false;
    }
    $("#errMsg").html("");
    return true;
}
