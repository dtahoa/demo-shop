<?php
$this->breadcrumbs=array(
	'Shipping Methods'=>array('index'),
	'Create',
);

?>

<h1>Thêm phương thức giao hàng</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>