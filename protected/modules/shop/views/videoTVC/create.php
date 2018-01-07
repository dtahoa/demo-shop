<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Video TVC'=>array('index'),
	'Thêm video',
);

?>

<h1>Thêm Video TVC</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>