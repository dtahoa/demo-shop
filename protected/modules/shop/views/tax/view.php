<?php
$this->breadcrumbs=array(
	Shop::t('Thuế')=>array('index'),
	$model->title,
);

?>

<h2><?php echo $model->title; ?></h2>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'id',
		'title',
		'percent',
	),
)); ?>
