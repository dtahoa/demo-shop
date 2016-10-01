<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Sản phẩm') =>array('//shop/products/admin'),
	Yii::t('ShopModule.shop', 'Quản lý hình ảnh sản phẩm'),
);

?>

<div id="shopcontent">

<h1> 
<?php 
echo Yii::t('ShopModule.shop', 'Images for'); 
echo '&nbsp;' . $product->title; 
?>
</h1>

<div class="row" style="margin-left: 0px; margin-right: 0px;">

<?php
if($images)
	foreach($images as $image) {
		$this->renderPartial('view', array('model' => $image));
	}

echo '</div><br />';

echo CHtml::link(Yii::t('ShopModule.shop', 'Hủy'), array('/shop/products/admin'), array('class'=>'btn btn-default')). '&nbsp&nbsp';
echo CHtml::link(Yii::t('ShopModule.shop', 'Upload hình mới'), array('create', 'product_id' => $product->product_id), array('class'=>'btn btn-primary'));


?>

</div>
