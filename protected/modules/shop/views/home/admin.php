<?php
$this->breadcrumbs = array(
    'Sản phẩm' => array('admin'),
    Yii::t('ShopModule.shop', 'Quản lý sản phẩm'),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#products-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");

$this->widget('zii.widgets.grid.CGridView', array(
        'id' => 'products-grid',
        'dataProvider' => $model->search(),
        'filter' => $model,
        'template' => '{pager}{items}{pager}',
        'columns' => array(
            'title',
            'price',
            'is_discount',
            array(
                'class' => 'CButtonColumn',
                'template' => '{view}{update}{delete}{images}',
                'viewButtonUrl' => 'Yii::app()->createUrl("/shop/products/view",
			array("id" => $data->product_id))',
                'updateButtonUrl' => 'Yii::app()->createUrl("/shop/products/update",
			array("id" => $data->product_id))',
                'deleteButtonUrl' => 'Yii::app()->createUrl("/shop/products/delete",
			array("id" => $data->product_id))',
                'buttons' => array(
                    'images' => array(
                        'label' => Yii::t('ShopModule.shop', 'Hình ảnh'),
                        'url' => 'Yii::app()->createUrl("/shop/image/admin",
					array("product_id" => $data->product_id))',
                    ),
                ),
            ),
        )
    )
);


echo CHtml::link(Shop::t('Thêm sản phẩm mới'), array('products/create'), array('class' => 'btn btn-primary'));
?>
