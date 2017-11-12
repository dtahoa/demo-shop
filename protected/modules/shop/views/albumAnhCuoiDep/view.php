<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Album Ảnh cưới đẹp'=>array('admin')
);
/*$this->menu=array(
	array('label'=>'List Pages', 'url'=>array('index')),
	array('label'=>'Create Pages', 'url'=>array('create')),
	array('label'=>'Update Pages', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Pages', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Pages', 'url'=>array('admin')),
);*/
?>

<h1>#<?php echo $model->title; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'title',
		array('name'=>'image_profile',
			'type'=>'html'
		),
		array('name'=>'content',
            'type'=>'html'
        ),
		'updated',
	)
)); ?>
