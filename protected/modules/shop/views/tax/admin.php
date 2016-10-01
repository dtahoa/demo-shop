<?php
$this->breadcrumbs=array(
	Shop::t('Thuế')=>array('index'),
	Shop::t('Quản lý'),
);

?>

<h2> <?php echo Shop::t('Quản lý % thuế'); ?></h2>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'tax-grid',
	'dataProvider'=>$model->search(),
	/*'filter'=>$model,*/
	'template'=>'{pager}{items}{pager}',
	'columns'=>array(
		'id',
		'title',
		'percent',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
