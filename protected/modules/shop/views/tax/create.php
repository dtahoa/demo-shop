<?php
$this->breadcrumbs=array(
	Shop::t('Thuế')=>array('index'),
	Shop::t('Thêm mo7i1'),
);

?>

<h2> <?php echo Shop::t('Thêm % thuế'); ?></h2>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
