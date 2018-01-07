<?php
/* @var $this PagesController */
/* @var $model Pages */

$this->breadcrumbs = array(
    'Ảnh thời trang' => array('index'),
    'Thêm album',
);

?>

    <h1>Thêm Album Ảnh thời trang</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>