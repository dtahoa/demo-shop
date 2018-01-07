<?php
/* @var $this QuotationController */
/* @var $model Quotation */

$this->breadcrumbs = array(
    'Bảng báo giá' => array('index'),
    'Quản lý',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#quotation-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Quản trị bảng báo giá</h1>

<?php /*echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); */ ?>
<div class="search-form" style="display:none">
    <?php $this->renderPartial('_search', array(
        'model' => $model,
    )); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
    'id' => 'quotation-grid',
    'dataProvider' => $model->search(),
    /*'filter'=>$model,*/
    'template' => '{pager}{items}{pager}',
    'columns' => array(
        'id',
        'filename',
        'created_at',
        array(
            'class' => 'CButtonColumn',
            'template' => '{update}{view}'
        ),
    ),
));
echo CHtml::link(Shop::t('Upload bảng giá mới'), array('quotation/create'), array('class' => 'btn btn-primary'));
?>
