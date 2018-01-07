<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Video TVC'=>array('admin')
);
?>

<h1>#<?php echo $model->title; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'title',
		array('name'=>'video_embed',
			'type'=>'html'
		),
		array('name'=>'content',
            'type'=>'html'
        ),
		'updated',
	)
)); ?>
