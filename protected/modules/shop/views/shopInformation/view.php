<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Thông tin cửa hàng'=>array('admin'),
	$model->name,
);

?>

<h1>Thông tin cửa hàng # <?php echo $model->name; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'name',
		'logo',
		array('name'=>'working_time',
			'type'=>'html',
		),
		'hotline',
		'phone',
		'fax',
		'email',
		'email_kinhdoanh',
		'address',
		array('name'=>'description',
			'type'=>'html',
			'value'=>substr($model->description, 0, 100)
		)
	),
));
echo '</br>';
echo CHtml::button('Trở về', array('submit' => array('//shop/shopInformation/admin'), 'class'=>'btn btn-primary'));
?>
