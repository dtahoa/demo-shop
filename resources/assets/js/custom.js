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
            }
        });
    });
});

})(jQuery);