<?php
$this->breadcrumbs=array(
	'Orders'=>array('index'),
	Yii::t('ShopModule.shop', 'Manage'),
);

?>
<?php 

$model = new Order();

$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'order-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'cssFile'=>'/resources/assets/css/gridview.css',
	'columns'=>array(
		'order_id',
		'customer.address.firstname',
		'customer.address.phone',
		'customer.address.street',
		array('name' => 'ordering_date',
			'value' => 'date("M j, Y", $data->ordering_date)'),
		array(
			'class'=>'CButtonColumn', 
			'template' => '{view}',
		),

	),
)); ?>
