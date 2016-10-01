<?php
$this->breadcrumbs=array(
	Shop::t('Phương thức giao hàngs')=>array('index'),
	Shop::t('Thêm mới'),
);

?>

<h2> <?php echo Shop::t('Thêm mới phương thức thanh toán'); ?></h2>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
