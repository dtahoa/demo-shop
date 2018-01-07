<?php
$this->breadcrumbs = array(
    Shop::t('Sản phẩm'),
);
Shop::renderFlash();
?>

<h2><?php echo Shop::t('All products'); ?></h2>

<?php $this->widget('zii.widgets.CListView', array(
    'dataProvider' => $dataProvider,
    'itemView' => '_viewAdmin',
)); ?>
