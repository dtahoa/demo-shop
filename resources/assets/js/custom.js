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
        $('#btnSearch').click(function() {
            setTimeout(function(){
                var keyword = $('.search-field').val();
                window.location.href="/shop/products/list?search[name]=" + keyword;
            }, 300);
        });

        $('.product-discount.lightSlider').lightSlider({
            auto:true,
            gallery: false,
            vertical: true,
            item: 2,
            loop: true,
            pauseOnHover: true,
            slideMargin: 0,
            thumbItem: 9,
            enableTouch: true,
            responsive : []
        });

        $('.product-highlight.lightSlider').lightSlider({
            auto:true,
            gallery: false,
            vertical: false,
            item: 1,
            mode: 'fade',
            pauseOnHover: true,
            speed: '300',
            loop: true,
            slideMargin: 0,
            thumbItem: 9,
            enableTouch: true,
            responsive : []
        });
    });

})(jQuery);