/**
 * 菜单高亮
 */
function hoverMenu() {
    var links1 = $(".menu1").children("li").find("a");
    links1.click(function (e) {
        var ul = $(this).parent().parent("ul");
        var href = "";
        if (ul.attr("class") == "second-nav") {
            href = ul.prev().attr("href")
        } else {
            href = $(this).attr("href")
        }
        console.log(href);
        localStorage.setItem("__top_href", href);
        localStorage.setItem("__left_href", "_____")
    });
    var lh1 = localStorage.getItem("__top_href");
    var links11 = $(".menu1").children("li").children("a");
    links11.each(function (i, n) {
        if ($(this).attr("href") == lh1) {
            $(n).parent("li").css("background", "url({% static 'images/nav_bg.png' %})no-repeat top center")
        }
    });
    var links = $("#accordion").children("li").children("a");
    links.click(function () {
        var href = $(this).attr("href");
        localStorage.setItem("__left_href", href);
    });
    var lh = localStorage.getItem("__left_href"), _wh = window.location.href,
        wh = _wh.substring(_wh.lastIndexOf("/") + 1, _wh.indexOf("#"));
    links.each(function (i, n) {
        if ($(this).attr("href").indexOf(lh) != -1) {
            $(n).children("div").css("background", "rgb(207,56,54)")
        }
    })
}

/**
 * 博客搜索
 * @constructor
 */
function SendForm() {
    document.search.submit();
}

/**
 * 下拉菜单
 */
function subMenu() {
    var _this1 = null;
    $('.menu1>li').hover(function () {
        _this1 = $(this);
        _this1.find('.second-nav').show();
        var _this2 = null;
        _this1.find('.second-nav').find('li').hover(function () {
            _this2 = $(this);
            _this2.find('.third-nav').show();
            _this2.find('.third-nav').hover(function () {
                $(this).show();
            }, function () {
                $(this).hide();
            });
        }, function () {
            _this2.find('.third-nav').hide();
        });
    }, function () {
        _this1.find('.second-nav').hide();
    });
}

$(function () {
    hoverMenu();
    // subMenu();
    $('#slider').miniSlider();
});

var swiper = new Swiper('.scoll', {
    loop: true,
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
        delay: 5500,
        disableOnInteraction: false,
    },
    pagination: {
        el: '.pation',
        clickable: true,
    },
    navigation: {
        nextEl: '.next',
        prevEl: '.prev',
    },
});

var viewSwiper = new Swiper('.view .swiper-container', {
    onSlideChangeStart: function () {
        updateNavPosition()
    }
});

$('.view .arrow-left,.preview .arrow-left').on('click', function (e) {
    e.preventDefault()
    if (viewSwiper.activeIndex == 0) {
        viewSwiper.slideTo(viewSwiper.slides.length - 1, 1000);
        return
    }
    viewSwiper.slidePrev()
});

$('.view .arrow-right,.preview .arrow-right').on('click', function (e) {
    e.preventDefault()
    if (viewSwiper.activeIndex == viewSwiper.slides.length - 1) {
        viewSwiper.slideTo(0, 1000);
        return
    }
    viewSwiper.slideNext()
});

var previewSwiper = new Swiper('.preview .swiper-container', {
    //visibilityFullFit: true,
    slidesPerView: 'auto',
    allowTouchMove: false,
    onTap: function () {
        viewSwiper.slideTo(previewSwiper.clickedIndex)
    }
});

function updateNavPosition() {
    $('.preview .active-nav').removeClass('active-nav')
    var activeNav = $('.preview .swiper-slide').eq(viewSwiper.activeIndex).addClass('active-nav');
    if (!activeNav.hasClass('swiper-slide-visible')) {
        if (activeNav.index() > previewSwiper.activeIndex) {
            var thumbsPerNav = Math.floor(previewSwiper.width / activeNav.width()) - 1;
            previewSwiper.slideTo(activeNav.index() - thumbsPerNav)
        } else {
            previewSwiper.slideTo(activeNav.index())
        }
    }
}