<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Ảnh gia đình'=>array('index'),
	'Thêm album',
);

?>

<h1>Thêm Album Ảnh gia đình</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>