<?php
$this->breadcrumbs=array(
		Yii::t('ShopModule.shop', 'Danh mục')=>array('index'),
		Yii::t('ShopModule.shop', 'Thêm mới'),
		);

?>
<div id="shopcontent">

<h1> <?php echo Yii::t('ShopModule.shop', 'Thêm danh mục'); ?> </h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>

</div>
