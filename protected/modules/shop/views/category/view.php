<?php
$this->breadcrumbs=array(
	Yii::t('ShopModule.shop', 'Shop')=>array('shop/index'),
	Yii::t('ShopModule.shop', 'Categories')=>array('index'),
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
<div class="clearfix filters-container m-t-10">
    <div class="row">

        <div class="col col-sm-12 col-md-6">
            <div class="col col-sm-3 col-md-6 no-padding">
                <div class="lbl-cnt">
                    <span class="lbl">Hiển thị</span>
                    <div class="fld inline">
                        <div class="dropdown dropdown-small dropdown-med dropdown-white inline">
                            <button data-toggle="dropdown" type="button"
                                    class="btn dropdown-toggle">
                                1 <span class="caret"></span>
                            </button>

                            <ul role="menu" class="dropdown-menu">
                                <li role="presentation"><a href="#">1</a></li>
                                <li role="presentation"><a href="#">2</a></li>
                                <li role="presentation"><a href="#">3</a></li>
                                <li role="presentation"><a href="#">4</a></li>
                                <li role="presentation"><a href="#">5</a></li>
                                <li role="presentation"><a href="#">6</a></li>
                                <li role="presentation"><a href="#">7</a></li>
                                <li role="presentation"><a href="#">8</a></li>
                                <li role="presentation"><a href="#">9</a></li>
                                <li role="presentation"><a href="#">10</a></li>
                            </ul>
                        </div>
                    </div><!-- /.fld -->
                </div><!-- /.lbl-cnt -->
            </div><!-- /.col -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div>
<div class="search-result-container">
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane active" id="grid-container">
            <div class="category-product  inner-top-vs">
                <div class="row">
                    <?php
                    foreach($model->Products as $product) {
                        $this->renderPartial('/products/_view', array('data' => $product));
                    }
                    ?>

                </div><!-- /.row -->
            </div><!-- /.category-product -->

        </div><!-- /.tab-pane -->
    </div><!-- /.tab-content -->
    <div class="clearfix filters-container">

        <div class="text-right">
            <div class="pagination-container">
                <ul class="list-inline list-unstyled">
                    <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                    <li><a href="#">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul><!-- /.list-inline -->
            </div><!-- /.pagination-container -->                                </div>
        <!-- /.text-right -->

    </div><!-- /.filters-container -->

</div><!-- /.search-result-container -->


