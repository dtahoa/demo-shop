<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Ảnh phóng sự cưới'=>array('index'),
	'Thêm album',
);

?>

<h1>Thêm Album Ảnh phóng sự cưới</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>