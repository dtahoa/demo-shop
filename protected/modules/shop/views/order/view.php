<?php
Shop::register('css/shop.css');
$this->breadcrumbs=array(
		Shop::t('Đơn hàng')=>array('admin'),
		$model->order_id,
		);

?>

<h2> <?php echo Shop::t('Đơn hàng') ?> #<?php echo $model->order_id; ?></h2>

<h3> <?php echo Shop::t('Thông tin đơn hàng'); ?> </h3>

<?php $this->widget('zii.widgets.CDetailView', array(
			'data'=>$model,
			'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
			'attributes'=>array(
				'order_id',
				'customer_id',
					array(
						'label' => Shop::t('Ngày đặt hàng'),
						'value' => date('d. m. Y G:i',$model->ordering_date)
					),
				'ordering_done',
				'ordering_confirmed',
				),
			)); ?>

<h3> <?php echo Shop::t('Thông tin khách hàng'); ?> </h3>

<?php $this->widget('zii.widgets.CDetailView', array(
			'data'=>$model->customer,
			'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
			'attributes'=>array(
				'email',
				),
			)); ?>

<div class="summary_delivery_address">
<h3> <?php echo Shop::t('Địa chỉ giao hàng'); ?> </h3>
<?php $this->widget('zii.widgets.CDetailView', array(
			'data'=>$model->deliveryAddress,
			'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
			'attributes'=>array(
				'firstname',
				'phone',
				'street',
				'zipcode',
				'city',
				'country'
				),
			)); ?>
</div>

<div class="summary_billing_address">
<h3> <?php echo Shop::t('Địa chỉ thanh toán'); ?> </h3>
<?php $this->widget('zii.widgets.CDetailView', array(
			'data'=>$model->billingAddress,
			'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
			'attributes'=>array(
				'firstname',
				'phone',
				'street',
				'zipcode',
				'city',
				'country'
				),
			)); ?>
</div>

<?php 
$this->renderPartial('/paymentMethod/view', array(
	'model' => $model->paymentMethod)); 
$this->renderPartial('/shippingMethod/view', array(
	'model' => $model->shippingMethod)); 
?>


<h3> <?php echo Shop::t('Sản phẩm đã đặt hàng'); ?> </h3>

<?php foreach($model->products as $product) {
	$this->widget('zii.widgets.CDetailView', array(
				'data'=>$product,
				'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
				'attributes'=> array(
					'product.title',
					'amount'/*,
					array(
						'label' => Shop::t('Specifications'),
						'type' => 'raw',
						'value' => $product->renderSpecifications())*/
					)
				)
			); 
	echo '<br />';
	echo '<hr />';
}

?>

<div style="clear:both;"> </div>

<div class="buttons"> 
<?php

echo CHtml::link(Shop::t('Phiếu giao hàng'), array(
			'//shop/order/slip', 'id' => $model->order_id ), array('class'=>'btn btn-primary'));

echo CHtml::link(Shop::t('Hóa đơn'), array(
			'//shop/order/invoice', 'id' => $model->order_id), array('class'=>'btn btn-success'));

echo CHtml::link(Shop::t('Trở về đơn hàng'), array(
			'//shop/order/admin'), array('class'=>'btn btn-default'));

?>
</div>
