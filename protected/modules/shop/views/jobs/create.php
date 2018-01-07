<?php
/* @var $this JobsController */
/* @var $model Jobs */

$this->breadcrumbs = array(
    'Tuyển dụng' => array('index'),
    'Thêm mới',
);

?>

    <h1>Thêm thông tin tuyển dụng</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>