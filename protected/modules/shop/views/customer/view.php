<?php
if(!isset($hideEmail)) {
	echo '<h3>'.Shop::t('Thông tin khách hàng').'</h3>';
	
 $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'email',
	),
)); 
}

if($model->address && !isset($hideAddress)) {
	echo '<h3>'.Shop::t('Địa chỉ').'</h3>';
 $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model->address,
	'attributes'=>array(
		'firstname',
		'phone',
		'street',
		'zipcode',
		'city',
		'country',
	),
)); 

}

echo '<div class="box-delivery-address">';
echo '<h3>'.Shop::t('Địa chỉ giao hàng').'</h3>';
 $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model->deliveryAddress ? $model->deliveryAddress : $model->address,
	 'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'firstname',
		'phone',
		'street',
		'zipcode',
		'city',
		'country',
	),
));
/*echo CHtml::link(Shop::t('Địa chỉ giao hàng').' '.Shop::t('Edit'), array(
			'//shop/shippingMethod/choose', 'order' => true));*/
echo '</div>';

// Disable for small/VN project
/*echo '<div class="box-billing-address">';
echo '<h3>'.Shop::t('Địa chỉ thanh toán').'</h3>';
 $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model->billingAddress ? $model->billingAddress : $model->address,
	 'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'firstname',
		'lastname',
		'phone',
		'street',
		'zipcode',
		'city',
		'country',
	),
)); */
/*echo CHtml::link(Shop::t('Địa chỉ thanh toán').' '.Shop::t('Edit'), array(
			'//shop/paymentMethod/choose', 'order' => true)); */
//echo '</div>';
echo '<div class="clear"></div>';
?>
