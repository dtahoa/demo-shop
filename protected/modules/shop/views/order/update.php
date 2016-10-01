<?php
$this->breadcrumbs=array(
	'Đơn hàng'=>array('index'),
	$model->order_id=>array('view','id'=>$model->order_id),
	Yii::t('ShopModule.shop', 'Update'),
);

?>
<h1> <?php echo Yii::t('ShopModule.shop', 'Cập nhật đơn hàng '); echo $model->order_id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
