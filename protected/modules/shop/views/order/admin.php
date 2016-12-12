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

		array(
			'name' => 'ordering_confirmed',
			'type'=>'html',
			'value'=>function($data){
				if ($data['ordering_confirmed'] == 1) {
					return "<strong style='color:red'>X</strong>";
				}
			}),
		array(
			'name' => 'ordering_done',
			'type'=>'html',
			'value'=>function($data){
				if ($data['ordering_done'] == 1) {
					return "<strong style='color:red'>X</strong>";
				}
			}),
		array('name' => 'ordering_date',
			'value' => 'date("j/m/Y", $data->ordering_date)'),
		array(
			'class'=>'CButtonColumn',
			'template' => '{view}{update}{delete}',
			'viewButtonUrl'=>'Yii::app()->createUrl(\'shop/order/view/id/\'. $data->order_id)',
			'updateButtonUrl'=>'Yii::app()->createUrl(\'shop/order/update/id/\'. $data->order_id)',
			'deleteButtonUrl'=>'Yii::app()->createUrl(\'shop/order/delete/id/\'. $data->order_id)',
		),

	),
)); ?>
