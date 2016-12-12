<?php
$this->breadcrumbs=array(
	'Đơn hàng'=>array('index'),
	$model->order_id=>array('view','id'=>$model->order_id),
	Yii::t('ShopModule.shop', 'Cập nhật'),
);

?>
<h1> <?php echo Yii::t('ShopModule.shop', 'Cập nhật đơn hàng: <strong>'); echo $model->order_id; ?></strong></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
