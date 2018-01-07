<?php
/* @var $this ThongTinChupAnhCuoiController */
/* @var $model dichVuChupAnhChoBe */

$this->breadcrumbs=array(
	'Dịch vụ chụp ảnh cho bé hàng'=>array('index'),
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

<h1>Quản lý Dịch vụ chụp ảnh cho bé</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'shop-information-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'id',
		'tieu_de',
		array(
			'class'=>'CButtonColumn',
			'template'=>'{update}{view}'
		),
	),
));
echo CHtml::link(Shop::t('Thêm Dịch vụ chụp ảnh cho bé'), array('dichVuChupAnhChoBe/create'), array('class'=>'btn btn-primary'));
?>
