<?php
$this->breadcrumbs=array(
	Shop::t('Sản phẩm'),
);
Shop::renderFlash();
?>

<h2><?php echo Shop::t('Sản phẩm mới'); ?></h2>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'summaryText'=>'',
	'itemView'=>'_view',
)); ?>
