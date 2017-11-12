<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Ảnh cưới đẹp'=>array('index'),
	'Thêm album',
);

?>

<h1>Thêm Album Ảnh cưới đẹp</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>