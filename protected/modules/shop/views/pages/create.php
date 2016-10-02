<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Tin tức'=>array('index'),
	'Thêm mới',
);

?>

<h1>Thêm tin tức</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>