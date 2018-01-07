<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs=array(
	'Trang giới thiệu'=>array('admin')
);
?>

<h1>#<?php echo $model->title; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'title',
		array('name'=>'content',
            'type'=>'html'
        ),
		'updated',
	)
));
echo '</br>';
echo CHtml::button('Trở về', array('submit' => array('//shop/pages/admin'), 'class'=>'btn btn-primary'));
?>
