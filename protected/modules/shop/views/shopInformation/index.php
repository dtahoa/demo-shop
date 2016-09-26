<?php
/* @var $this ShopInformationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Shop Informations',
);

$this->menu=array(
	array('label'=>'Create ShopInformation', 'url'=>array('create')),
	array('label'=>'Manage ShopInformation', 'url'=>array('admin')),
);
?>

<h1>Shop Informations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
