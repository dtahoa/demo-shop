<?php
/* @var $this ThongTinChupAnhCuoiController */
/* @var $model ThongTinChupAnhCuoi */

$this->breadcrumbs = array(
    'Thông tin chụp ảnh cưới hàng' => array('index'),
    'Quản lý',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#shop-information-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Quản lý thông tin chụp ảnh cưới</h1>


<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id' => 'shop-information-grid',
    'dataProvider' => $model->search(),
    /*'filter'=>$model,*/
    'template' => '{pager}{items}{pager}',
    'columns' => array(
        'id',
        'tieu_de',
        array(
            'class' => 'CButtonColumn',
            'template' => '{update}{view}'
        ),
    ),
));
echo CHtml::link(Shop::t('Thêm thông tin chụp ảnh cưới'), array('thongTinChupAnhCuoi/create'), array('class' => 'btn btn-primary'));
?>
