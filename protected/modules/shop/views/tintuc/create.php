<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Tin Tức'=>array('index'),
	'Thêm mới',
);

?>

<h1>Tạo mới Tin Tức</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>