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
        console.log($('.search-field').val());
        window.location.href="/shop/products/list?search[name]=".$('.search-field').val();
    });

    $('#lightSlider').lightSlider({
        auto:true,
        gallery: false,
        vertical: true,
        item: 2,
        loop: true,
        slideMargin: 0,
        thumbItem: 9
    });
});

})(jQuery);