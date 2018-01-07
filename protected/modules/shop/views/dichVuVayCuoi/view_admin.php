<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */

$this->breadcrumbs=array(
	'Dịch vụ váy cưới cao cấp'=>array('admin'),
	$model->id,
);

?>

<h1>Dịch vụ váy cưới cao cấp # <?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
	'attributes'=>array(
		'tieu_de',
		array(
			'label'=>'Hình ảnh',
			'type'=>'raw',
			'value'=>html_entity_decode(CHtml::image(
				Yii::app()->baseUrl."/".Shop::module()->uploadImagesFolder."/".$model->hinh_anh,
				'alt',
				array('width'=>500)))
		),
		array(
			'label'=>'Mô tả',
			'type'=>'html',
			'value'=>substr($model->mo_ta, 0, 100)
		)
	),
));
echo '</br>';
echo CHtml::button('Trở về', array('submit' => array('//shop/dichVuVayCuoi/admin'), 'class'=>'btn btn-primary'));
?>
