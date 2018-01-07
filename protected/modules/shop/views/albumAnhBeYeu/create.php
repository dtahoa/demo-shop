<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Ảnh bé yêu'=>array('index'),
	'Thêm album',
);

?>

<h1>Thêm Album Ảnh bé yêu</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>