<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Thông tin cửa hàng'=>array('index'),
	$model->name,
);

?>

<h1>Xem thông tin cửa hàng #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'id',
		'name',
		'logo',
		'working_time',
		'phone',
		'fax',
		'email',
		'email_kinhdoanh',
		'address',
		'map',
		'description',
		'hotline',
	),
)); ?>
