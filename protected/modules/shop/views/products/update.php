<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Sản phẩm')=>array('index'),
	Yii::t('ShopModule.shop', 'Cập nhật'),
);

?>

<div class="prepend-1" id="shopcontent">

<h1><?php echo Yii::t('ShopModule.shop', 'Cập nhật: '); ?>
 <?php echo $model->title; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>

</div>
