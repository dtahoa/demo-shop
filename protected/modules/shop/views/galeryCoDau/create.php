<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Galery Cô Dâu'=>array('index'),
	'Thêm mới',
);

?>

<h1>Tạo mới Galery Cô Dâu</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>