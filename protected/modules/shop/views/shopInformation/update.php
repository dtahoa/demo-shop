<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Thông tin cửa hàng'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Cập nhật',
);

?>

<h1>Cập nhật thông tin cửa hàng <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>