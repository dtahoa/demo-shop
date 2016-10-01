<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Hình sản phẩm') =>array('//shop/image/admin/product_id/'. $_GET['product_id']),
	Yii::t('ShopModule.shop', 'Upload'),
);

?>

<div id="shopcontent">

	<h1> <?php Yii::t('ShopModule.shop', 'Upload hình mới'); ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>

</div>
