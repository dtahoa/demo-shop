<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Menu quản trị')=>array('shop/index'),
	Yii::t('ShopModule.shop', 'Danh mục sản phẩm')=>array('index'),
	$model->title,
);

?>

<h2> <?php echo $model->title; ?></h2>

<?php
/*print_r($model->Products);
	foreach($model->Products as $product) {
		$this->renderPartial('/products/_view', array('data' => $product));
}
*/?><!--

-->
<div class="search-result-container">
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane active" id="grid-container">
            <div class="category-product inner-top-vs">
                <div class="row">
                    <?php
                    // @TODO: should check ADMIN site
                    /*foreach($model->Products as $product) {
                        $this->renderPartial('/products/_view', array('data' => $product));
                    }*/

                    ?>
                    <?php
                    $this->widget('zii.widgets.CListView', array(
                        'dataProvider'=>$dataProvider,
                        'summaryText'=>'',
                        'itemView'=>'/products/_view',
                        'itemsCssClass'=>'items is-flex',
                        'template'=>'{pager}{items}{pager}',
                    )); ?>
                </div><!-- /.row -->
            </div><!-- /.category-product -->

        </div><!-- /.tab-pane -->
    </div><!-- /.tab-content -->

</div><!-- /.search-result-container -->


