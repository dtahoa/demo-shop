<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs=array(
	'Bảng báo giá'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

?>

<h1>Cập nhật bảng báo giá: <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>