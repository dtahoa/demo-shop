<?php
/* @var $this ContactController */
/* @var $model Contact */

$this->breadcrumbs = array(
    'Liên hệ' => array('index'),
    $model->name,
);

/*$this->menu=array(
	array('label'=>'List Contact', 'url'=>array('index')),
	array('label'=>'Create Contact', 'url'=>array('create')),
	array('label'=>'Update Contact', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Contact', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Contact', 'url'=>array('admin')),
);*/
?>

<h1>Xem thông tin liên hệ #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
    'data' => $model,
    'htmlOptions' => array('class' => 'detail-view grey', 'id' => 'mt-cart'),
    'attributes' => array(
        'name',
        'email',
        'subject',
        'body',
        'updated',
    ),
)); ?>
