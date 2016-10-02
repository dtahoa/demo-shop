<?php
/* @var $this JobsController */
/* @var $model Jobs */

$this->breadcrumbs=array(
	'Tuyển dụng'=>array('admin'),
	'Quản lý',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#jobs-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Danh sách tuyển dụng</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'jobs-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'title',
		'content',
		'updated',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
