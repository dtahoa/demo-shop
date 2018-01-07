<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Galery Váy Cưới'=>array('index'),
	$model->tieu_de=>array('view','id'=>$model->id),
	'Cập nhật',
);

?>

<h1>Cập nhật Galery Váy Cưới <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>