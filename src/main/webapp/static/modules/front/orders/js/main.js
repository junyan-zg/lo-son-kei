function checkBuyAmount(){
    $(".amount").each(function(){
        var v = $(this).val().trim();
        var id = $(this).attr("id");
        $(this).val(v);
        if(isNaN(v) || v==''){   //不是数字
            $(this).val(0);
        }
        v = parseInt(v);

        var stock = parseInt($('#stock-' + id).html());
        if(v > stock){
            $(this).val(stock);
        }else if(v < 0){
            $(this).val(0);
        }else{
            $(this).val(v);
        }
    });
}