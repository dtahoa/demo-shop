<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs = array(
    'Galery Váy Cưới' => array('index'),
    'Thêm mới',
);

?>

    <h1>Tạo mới Galery Váy Cưới</h1>

<?php $this->renderPartial('_form', array('model' => $model)); ?>