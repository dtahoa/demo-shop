<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Ảnh thời trang'=>array('admin'),
	'Quản lý',
);

/*$this->menu=array(
	array('label'=>'Danh sách Ảnh cưới đẹp', 'url'=>array('index')),
	array('label'=>'Thêm Ảnh cưới đẹp', 'url'=>array('create')),
);*/

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#pages-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Quản lý Album: Ảnh thời trang</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'pages-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'title',
		array(
			'class'=>'CButtonColumn',
		),
	),
));
echo CHtml::link(Shop::t('Thêm album'), array('albumAnhThoiTrang/create'), array('class'=>'btn btn-primary'));
?>
