<?php
$this->breadcrumbs=array(
	'Phương thức giao hàng'=>array('index'),
	'Quản lý',
);

?>

<h1>Quản lý phương thức giao hàng</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'shipping-method-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'id',
		'title',
		'tax_id',
		'price',
		array(
			'class'=>'CButtonColumn'
		),
	),
));
echo CHtml::link(Shop::t('Thêm phương thức giao hàng'), array('shippingMethod/create'), array('class'=>'btn btn-primary'));
?>

