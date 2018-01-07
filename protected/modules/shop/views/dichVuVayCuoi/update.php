<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Dịch vụ váy cưới cao cấp'=>array('index'),
	$model->tieu_de=>array('view','id'=>$model->id),
	'Cập nhật',
);

?>

<h1>Cập nhật Dịch vụ váy cưới cao cấp <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>