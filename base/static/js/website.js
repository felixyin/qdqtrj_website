$(function () {
    // 图片切换
    $('#slider').miniSlider();
    // QQ 聊天位置
    $("#hhService").fix({float: 'right', minStatue: false, skin: 'green', durationTime: 1000})
});

// 监听事件
window.addEventListener('scroll', function () {
    var t = $('body, html').scrollTop();   // 目前监听的是整个body的滚动条距离
    var nav = $('.nav');
    var bh = $('body').height();
    if (t > 130) {
        if (bh < 1300) return; // fixme 临界点，会闪屏
        if (!nav.hasClass('header-menu-active')) nav.hide().addClass('header-menu-active').fadeIn(300);
    } else {
        if (nav.hasClass('header-menu-active')) nav.removeClass('header-menu-active');
    }
});
// window.onbeforeunload = onbeforeunload_handler;
// window.onload = onunload_handler;

function onbeforeunload_handler() {
    //跳转之前
    var scrollPos = $(document).scrollTop();
    localStorage.setItem('scrollTop-' + location.pathname, scrollPos);
    console.log(scrollPos)
}

function onunload_handler() {
    //跳转之后
    var scrollPos = localStorage.getItem('scrollTop-' + location.pathname);
    var bh = $('body').height();
    if (scrollPos > 130 && bh > 1500) {
        // $(document).scrollTop(scrollPos);
        var body = $("html, body");
        body.stop().animate({scrollTop: scrollPos}, scrollPos / 3, 'swing', function () {
            console.log("Finished animating");
        });
    }
}

