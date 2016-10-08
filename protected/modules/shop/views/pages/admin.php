<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Tin tức'=>array('admin'),
	'Quản lý',
);

/*$this->menu=array(
	array('label'=>'Danh sách tin tức', 'url'=>array('index')),
	array('label'=>'Thêm tin tức', 'url'=>array('create')),
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

<h1>Quản lý trang tin</h1>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'pages-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'title',
		array(
			'class'=>'CButtonColumn',
		),
	),
));
echo CHtml::link(Shop::t('Thêm bài viết mới'), array('pages/create'), array('class'=>'btn btn-primary'));
?>
