<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Dịch vụ chụp ảnh cho bé'=>array('index'),
	$model->tieu_de=>array('view','id'=>$model->id),
	'Cập nhật',
);

?>

<h1>Cập nhật Dịch vụ chụp ảnh cho bé <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>