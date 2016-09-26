<?php
$points = array(
		Shop::t('Thông tin khách hàng'),
		Shop::t('Phương thức giao hàng'),
		Shop::t('Phương thức thanh toán'),
		Shop::t('Xác nhận'),
		Shop::t('Thành công')
);

$links = array(
		array('//shop/customer/create'),
		array('//shop/shippingMethod/choose'),
		array('//shop/paymentMethod/choose'),
		array('//shop/order/create'));


echo '<div id="waypointarea" class="waypointarea">';
	printf('<span class="waypoint %s">%s</span>',
			$point == 0 ? 'active' : '',
			CHtml::link(Shop::t('Giỏ hàng'), array(
						'//shop/shoppingCart/view')));

foreach ($points as $p => $pointText) 
{
	printf('<span class="waypoint%s"> <i class="fa fa-arrow-right" aria-hidden="true"></i> %s</span>',
			($point == ++$p) ? ' active' : '',
			$point < ++$p ? $pointText : CHtml::link($pointText, @$links[$p-2])
			);
}
echo '</div>';
?>
