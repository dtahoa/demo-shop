<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Banner') =>array('//shop/banner/admin'),
	Yii::t('ShopModule.shop', 'Quản lý banner'),
);

?>

<div id="shopcontent">

<div class="row" style="margin-left: 0px; margin-right: 0px;">

<?php
/*$banners = $model->search();
print_r($banners); die();
if($banners)
	foreach($banners as $banner) {
		$this->renderPartial('view', array('model' => $banner));
	}

echo '</div><br />';*/
$folder = Shop::module()->bannerFolder;
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'banner-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		array('name'=>'filename',
			'type'=>'html',
			'value'=>'CHtml::tag("div",  array("style"=>"float: left; margin:5px; cursor:pointer") ,
 				CHtml::tag("img", array("class"=>"img-responsive","src" => "'.$path = Yii::app()->baseUrl. '/' . $folder . '/' . '{$data["filename"]}")))',
		),
		array(
			'class'=>'CButtonColumn',
			'template'=>'{update}{delete}'
		),
	),
));

echo CHtml::link(Yii::t('ShopModule.shop', 'Upload banner mới'), array('/shop/banner/create'), array('class'=>'btn btn-primary'));


?>

</div>
