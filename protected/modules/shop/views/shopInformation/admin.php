<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Shop Informations'=>array('index'),
	'Manage',
);

/*$this->menu=array(
	array('label'=>'List ShopInformation', 'url'=>array('index')),
	array('label'=>'Create ShopInformation', 'url'=>array('create')),
);*/

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#shop-information-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Shop Informations</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'shop-information-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		/*'id',*/
		'name',
		'email',
		/*'logo',*/
		/*'working_time',*/
		'phone',
		/*'fax',*/
		/*
		'description',
		'email_kinhdoanh',
		'address',
		'map',
		'description',
		'hotline',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
