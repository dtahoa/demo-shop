<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Banner') =>array('//shop/banner/admin'),
	Yii::t('ShopModule.shop', 'Upload'),
);

?>

<div id="shopcontent">

	<h1> <?php Yii::t('ShopModule.shop', 'Upload banner mới'); ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>

</div>
