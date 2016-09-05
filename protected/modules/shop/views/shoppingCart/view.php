<?php
Shop::register('css/shop.css');

if($this->id == 'shoppingCart')
	$this->renderPartial('/order/waypoint', array('point' => 0));

if(!isset($products))
	$products = Shop::getCartContent();
?>

<h2 class="text-blue"><?php echo Shop::t('Thông tin giỏ hàng'); ?></h2>


<?php
if($products) {
	echo '<table cellpadding="0" cellspacing="0" class="shopping_cart" id="mt-cart">';
	printf('<tr><th style="width:10px;">%s</th><th>%s</th><th style="width:60px;">%s</th><th style="width:100px;">%s</th><th style="width:5px; text-align: center">%s</th></tr>',
			Shop::t('SL'),
			Shop::t('SẢN PHẨM'),
			Shop::t('GIÁ'),
			Shop::t('TỔNG TIỀN'),
			Shop::t('XÓA')
);

	foreach($products as $position => $product) {
		if(@$model = Products::model()->findByPk($product['product_id'])) {
			$variations = '';
			if(isset($product['Variations'])) {
				foreach($product['Variations'] as $specification => $variation) {
					$specification = ProductSpecification::model()->findByPk($specification);
					if($specification->is_user_input)
						$variation = $variation[0];
					else
						$variation = ProductVariation::model()->findByPk($variation);

					$variations .= $specification . ': ' . $variation . '<br />';
				}
			}

			printf('<tr><td>%s</td><td>%s</td><td class="text-right">%s</td><td class="text-right price_'.$position.'">%s</td><td style="text-align:center;">%s</td></tr>',
					CHtml::textField('amount_'.$position,
						$product['amount'], array(
							'size' => 4,
							'class' => 'center-input amount_'.$position,
							)
						),
					$model->title,
					Shop::priceFormat($model->getPrice(@$product['Variations'])),
					Shop::priceFormat($model->getPrice(@$product['Variations'], @$product['amount'])),
					CHtml::link(Shop::t('<i class="fa fa-times"></i>'), array(
							'//shop/shoppingCart/delete',
							'id' => $position), array(
								'confirm' => Shop::t('Are you sure?')))
					);

			Yii::app()->clientScript->registerScript('amount_'.$position,"
					$('.amount_".$position."').keyup(function() {
						$.ajax({
							url:'".$this->createUrl('//shop/shoppingCart/updateAmount')."',
							data: $('#amount_".$position."'),
							success: function(result) {
							$('.amount_".$position."').css('background-color', 'lightgreen');
							$('.widget_amount_".$position."').css('background-color', 'lightgreen');
							$('.widget_amount_".$position."').html($('.amount_".$position."').val());
							$('.price_".$position."').html(result);	
							$('.price_total').load('".$this->createUrl(
							'//shop/shoppingCart/getPriceTotal')."');
							},
							error: function() {
							$('#amount_".$position."').css('background-color', 'red');
							},

							});
				});
					");
			}
}
	if($shippingMethod = Shop::getShippingMethod()) {
		printf('<tr>
				<td></td>
				<td>%s</td>
				<td class="text-right">%s</td>
				<td class="text-right">%s</td>
				<td>%s</td></tr>',
				Shop::t('Phí vận chuyển'),
				Shop::priceFormat($shippingMethod->price),
				Shop::priceFormat($shippingMethod->price),
				CHtml::link(Shop::t('Sửa'), array('//shop/shippingMethod/choose'))
				);
	}
echo '<tr>
<td class="text-right no-border" colspan="6">
<p class="price_total">'.Shop::getPriceTotal().'</p></td>';
echo '</table>';
?>

<?php

 if(Yii::app()->controller->id != 'order') {
echo '<div class="buttons btn-process-cart">';
echo CHtml::link(Shop::t('Tiếp tục mua hàng'), array(
			'//shop/products'), array('class'=>'btn-previous btn-upper btn btn-default checkout-page-button checkout-continue'));

echo '<br />';

echo CHtml::link(Shop::t('Tiến hành đặt hàng'), array(
			'//shop/order/create'), array('class'=>'btn-next btn-upper btn btn-primary checkout-page-button checkout-continue'));
echo '</div>';
}

?>

<div class="clear"></div>

<?php

} else echo Shop::t('Không có sản phẩm nào trong giỏ hàng'); ?>

