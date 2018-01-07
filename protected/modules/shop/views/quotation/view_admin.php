<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs=array(
	'Bảng báo giá'=>array('index'),
	$model->id,
);

?>

<h1>Thông tin báo giá: #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'id',
		'filename',
		array(
			'label'=>'Mô tả',
			'type'=>'html',
			'value'=>substr($model->description, 0, 100)
		),
		'created_at',
	),
));
echo '</br>';
echo CHtml::button('Trở về', array('submit' => array('//shop/quotation/admin'), 'class'=>'btn btn-primary'));
?>
