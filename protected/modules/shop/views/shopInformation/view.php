<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Shop Informations'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List ShopInformation', 'url'=>array('index')),
	array('label'=>'Create ShopInformation', 'url'=>array('create')),
	array('label'=>'Update ShopInformation', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ShopInformation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ShopInformation', 'url'=>array('admin')),
);
?>

<h1>View ShopInformation #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
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
