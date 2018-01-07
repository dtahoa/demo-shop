<?php
/* @var $this ThongTinChupAnhCuoiController */
/* @var $model galeryCoDau */

$this->breadcrumbs=array(
	'Galery Cô Dâu'=>array('index'),
	'Quản lý',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#shop-information-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Galery Cô Dâu</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'shop-information-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'id',
		'tieu_de',
		array('name'=>'hinh_anh',
			'type'=>'html',
			'value'=>'CHtml::tag("div",  array("style"=>"float: left; margin:5px; cursor:pointer; width:250px;") ,
 				CHtml::tag("img", array("class"=>"img-responsive","src" => "'.$path = Yii::app()->baseUrl. '/' . Shop::module()->uploadImagesFolder . '/' . '{$data["hinh_anh"]}")))',
		),
		array(
			'class'=>'CButtonColumn',
		),
	),
));
echo CHtml::link(Shop::t('Thêm Galery Cô Dâu'), array('galeryCoDau/create'), array('class'=>'btn btn-primary'));
?>
