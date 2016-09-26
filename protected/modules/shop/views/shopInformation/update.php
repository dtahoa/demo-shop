<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Shop Informations'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ShopInformation', 'url'=>array('index')),
	array('label'=>'Create ShopInformation', 'url'=>array('create')),
	array('label'=>'View ShopInformation', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ShopInformation', 'url'=>array('admin')),
);
?>

<h1>Update ShopInformation <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>