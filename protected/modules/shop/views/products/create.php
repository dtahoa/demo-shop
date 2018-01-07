<?php
$this->breadcrumbs = array(
    Yii::t('shop', 'Sàn phẩm') => array('index'),
    Yii::t('shop', 'Tạo mới'),
);
?>

<div id="shopcontent">

    <h1><? echo Yii::t('ShopModule.shop', 'Tạo sản phẩm mới'); ?></h1>

    <?php echo $this->renderPartial('_form', array('model' => $model)); ?>

</div>
