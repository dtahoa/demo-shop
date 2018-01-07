<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Album Bé Yêu'=>array('admin')
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
		array(
			'label'=>'Ảnh đại diện',
			'type'=>'raw',
			'value'=>html_entity_decode(CHtml::image(
				Yii::app()->baseUrl."/".Shop::module()->uploadImagesFolder."/".$model->image_profile,
				'alt',
				array('width'=>250)))
		),
		array('name'=>'content',
            'type'=>'html'
        ),
		'updated',
	)
));
echo '</br>';
echo CHtml::button('Trở về', array('submit' => array('//shop/albumAnhThoiTrang/admin'), 'class'=>'btn btn-primary'));
?>
