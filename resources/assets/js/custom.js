(function($) {
    "use strict";
    /*===================================================================================*/
/*	OWL CAROUSEL
/*===================================================================================*/
$(document).ready(function () {
    $('.btn-add-cart').click(function(){

        var product_id = $(this).attr('alt');

        $.ajax
        ({
            url: '/shop/shoppingCart/create',
            data: {"product_id": product_id, "amount": 1},
            type: 'post',
            success: function(result)
            {
                console.log("result", result);
                window.location.replace("/shop/shoppingCart/view");
            }
        });
    });
    $('.search-button').click(function(){
        var keyword = $('.search-field').val();
        window.location.href="/shop/products/list?search[name]=" + keyword;
    });

    $('.product-discount.lightSlider').lightSlider({
        auto:true,
        gallery: false,
        vertical: true,
        item: 2,
        loop: true,
        slideMargin: 0,
        thumbItem: 9
    });

    $('.product-highlight.lightSlider').lightSlider({
        auto:true,
        gallery: false,
        vertical: false,
        item: 1,
        mode: 'fade',
        speed: '2000',
        loop: true,
        slideMargin: 0,
        thumbItem: 9
    });

    // Mai cuoi js
    $('.cate_mobi').click(function () {
        $('.menu_mobi').slideDown();
        $(this).hide();
        $('.close_menu').show();
    });
    $('.close_menu').click(function () {
        $('.menu_mobi').slideUp();
        $(this).hide();
        $('.cate_mobi').show();

    });

    $(".content-tb1").niceScroll({
        zindex: 1000000,

        cursorborderradius: "4px", // Làm cong các góc của scroll bar

        cursorcolor: "#ED9D21", // Màu của scroll bar

        cursorwidth:"8px", // Kích thước bề ngang của scroll bar

        autohidemode:true   //Tắt chế độ tự ẩn của scroll bar

    });
    $('.bxslider').bxSlider({
        responsive: true,
        pager: true,
        auto: true
    });
});

})(jQuery);