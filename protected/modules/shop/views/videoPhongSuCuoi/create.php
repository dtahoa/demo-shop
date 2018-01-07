<?php
/* @var $this VideoPhongSuCuoiController */
/* @var $model VideoPhongSuCuoi */

$this->breadcrumbs=array(
	'Video phóng sự cưới'=>array('index'),
	'Thêm video',
);

?>

<h1>Thêm Video phóng sự cưới</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>