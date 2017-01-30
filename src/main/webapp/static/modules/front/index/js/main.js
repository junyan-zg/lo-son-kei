$(document).ready(function(){
    $("#slider_body").PageSwitch({
        direction:'horizontal',
        easing:'ease-in',
        duration:1000,
        autoPlay:'true',
        mouseWheel:'false',
        loop:'false'
    });
});
/*
 duration:600,           //int 页面过渡时间
 direction:1,            //int 页面切换方向，0横向，1纵向
 start:0,                //int 默认显示页面
 loop:false,             //bool 是否循环切换
 ease:'ease',            //string|function 过渡曲线动画，详见下方说明
 transition:'slide',     //string|function转场方式，详见下方说明
 mousewheel:false,       //bool 是否启用鼠标滚轮切换
 arrowkey:false,         //bool 是否启用键盘方向切换
 autoplay:false,         //bool 是否自动播放幻灯 新增
 interval:int            //bool 幻灯播放时间间隔 新增
 */