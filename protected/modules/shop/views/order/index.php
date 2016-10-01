<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop','Đơn hàng'),
);

?>
<h1>Đơn hàng của tôi</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
