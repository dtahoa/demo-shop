<?php
$this->breadcrumbs=array(
	'Đơn hàng'=>array('admin'),
	Yii::t('ShopModule.shop', 'Quản lý đơn hàng'),
);

?>
<?php 

$model = new Order();

$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'order-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
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
			'viewButtonUrl'=>'Yii::app()->createUrl(\'shop/order/view/id/\'. $data->order_id)',
		),

	),
)); ?>
