<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Video wedding'=>array('index'),
	'Thêm video',
);

?>

<h1>Thêm Album Ảnh cưới đẹp</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>