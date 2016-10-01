<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Thông tin cửa hàng'=>array('index'),
	'Thêm mới',
);

?>

<h1>Tạo mới thông tin shop</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>