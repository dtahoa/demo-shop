<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs=array(
	'Bảng báo giá'=>array('index'),
	'Thêm mới',
);

?>

<h1>Upload bảng giá mới</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>