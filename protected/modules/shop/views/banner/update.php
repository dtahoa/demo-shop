<?php
$this->breadcrumbs=array(
	'Banner'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	Yii::t('ShopModule.shop', 'Cập nhật'),
);
?>

<h1>Banner  <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
