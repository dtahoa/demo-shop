<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs = array(
    'Ảnh bé yêu' => array('admin'),
    'Cập nhật',
);

/*$this->menu=array(
	array('label'=>'List Pages', 'url'=>array('index')),
	array('label'=>'Create Pages', 'url'=>array('create')),
	array('label'=>'View Pages', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Pages', 'url'=>array('admin')),
);*/
?>

    <h1>Cập nhật Album Ảnh bé yêu <?php echo $model->title; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>