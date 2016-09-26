<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Shop Informations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ShopInformation', 'url'=>array('index')),
	array('label'=>'Manage ShopInformation', 'url'=>array('admin')),
);
?>

<h1>Create ShopInformation</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>