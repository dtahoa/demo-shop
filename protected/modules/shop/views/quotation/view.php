<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs=array(
	'Quotations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Quotation', 'url'=>array('index')),
	array('label'=>'Create Quotation', 'url'=>array('create')),
	array('label'=>'Update Quotation', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Quotation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Quotation', 'url'=>array('admin')),
);
?>

<h1>View Quotation #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'filename',
		'created_at',
	),
)); ?>
