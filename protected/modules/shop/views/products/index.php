<?php
$this->breadcrumbs = array(
    Shop::t('Sản phẩm'),
);
Shop::renderFlash();
?>
<div id="hero">

    <?php
    $banners = Banner::model()->findAll();
    $images = array();
    $alts = array();
    foreach ($banners as $banner) {
        array_push($images, $banner->filename);
        array_push($alts, $banner->title);
    }

    $this->widget('ext.slider.slider', array(
            'sliderBase'=>'/images/',
            'imagesPath'=>'banners',
            'container'=>'slideshow',
            'width'=>"100%",
            'height'=>"100%",
            'timeout'=>6000,
            'infos'=>false,
            'constrainImage'=>true,
            'images'=>$images,
            'alts'=>$alts,
            'defaultUrl'=>Yii::app()->request->hostInfo
        )
    );
    ?>
</div>
<div class="more-info-tab clearfix ">
    <h3 class="new-product-title pull-left"><?php echo Shop::t('Sản phẩm mới'); ?></h3>
</div>
<div class="search-result-container">
    <div id="myTabContent" class="tab-content">
        <div class="tab-pane active" id="grid-container">
            <div class="category-product  inner-top-vs">
                <div class="row">
                    <?php $this->widget('zii.widgets.CListView', array(
                        'dataProvider' => $dataProvider,
                        'summaryText' => '',
                        'itemView' => '_view',
                        'itemsCssClass'=>'items is-flex',
                        'template' => '{pager}{items}{pager}',
                    )); ?>
                </div><!-- /.row -->
            </div><!-- /.category-product -->

        </div><!-- /.tab-pane -->
    </div><!-- /.tab-content -->

</div><!-- /.search-result-container -->

