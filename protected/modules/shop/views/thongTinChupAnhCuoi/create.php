<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Thông tin chụp ảnh cưới'=>array('index'),
	'Thêm mới',
);

?>

<h1>Tạo mới thông tin chụp ảnh cưới</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>