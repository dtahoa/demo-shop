<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Dịch vụ chụp ảnh cho bé'=>array('index'),
	'Thêm mới',
);

?>

<h1>Thêm bài viết dịch vụ chụp ảnh cho bé</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>