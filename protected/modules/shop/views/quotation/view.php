<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs=array(
	'Bảng báo giá'=>array('index'),
	$model->id,
);

?>

<h1>Thông tin file báo giá: #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'id',
		'filename',
		'created_at',
	),
)); ?>
