<?php
/* @var $this JobsController */
/* @var $model Jobs */

$this->breadcrumbs=array(
	'Tuyển dụng'=>array('admin'),
	'Cập nhật',
);

/*$this->menu=array(
	array('label'=>'List Jobs', 'url'=>array('index')),
	array('label'=>'Create Jobs', 'url'=>array('create')),
	array('label'=>'View Jobs', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Jobs', 'url'=>array('admin')),
);*/
?>

<h1>Cập nhật thông tin tuyển dụng</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>