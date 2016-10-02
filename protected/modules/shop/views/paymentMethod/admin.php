<?php
$this->breadcrumbs=array(
	Shop::t('Phương thức thanh toán')=>array('index'),
	Shop::t('Quản lý'),
);

/*$this->menu=array(
	array('label'=>Shop::t('Thêm mới phương thức thanh toán'), 'url'=>array('create')),
);*/

?>

<h2><?php echo Shop::t('Quản lý phương thức thanh toán'); ?></h2>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'payment-method-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'id',
		'title',
		'description',
		'tax_id',
		'price',
		array(
			'class'=>'CButtonColumn',
		),
	),
));
echo CHtml::link(Shop::t('Thêm phương thức thanh toán'), array('paymentMethod/create'), array('class'=>'btn btn-primary'));
?>
