$(document).ready(function() {
    var navbtn = $('.navbtn');
    nav = $('.nav');
    box = $('.allpage');
    navbtn.click(function() {
        if(navbtn.hasClass('clicked')){
            navbtn.removeClass('clicked');
            box.animate({right:'0'},'500');
            return;
        }else{
            navbtn.addClass('clicked');
            box.animate({right:'220px'},'500');
            return;
        }
    });
    $('.searchbtn').click(
        function(){$('.search').fadeToggle();}
    );
    $('.classbtn').click(
        function(){$('.class').slideToggle();}
    );
    $('.con1ul li:last').css('background','none')
});