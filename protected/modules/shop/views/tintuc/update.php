<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs = array(
    'Tin Tức' => array('index'),
    $model->tieu_de => array('view', 'id' => $model->id),
    'Cập nhật',
);

?>

    <h1>Cập nhật Tin Tức <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>