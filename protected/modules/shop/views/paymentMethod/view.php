<?php
if(!isset($this->breadcrumbs))
	$this->breadcrumbs=array(
			Shop::t('Phương thức giao hàngs')=>array('index'),
			$model->title,
			);

/*if(!isset($this->menu))
$this->menu=array(
	array('label'=>'Create PaymentMethod', 'url'=>array('create')),
	array('label'=>'Update PaymentMethod', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete PaymentMethod', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PaymentMethod', 'url'=>array('admin')),
);*/
?>

<h2> <?php echo Shop::t('Phương thức thanh toán') ?> </h2>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'title',
		array('name'=>'description',
			'type'=>'html'
		),
		'price',
	),
)); ?>
