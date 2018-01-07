<?php
$this->breadcrumbs = array(
    Shop::t('Products') => array('index'),
    $model->title,
);
?>

<div class="row wow fadeInUp">
    <div class="col-xs-12 col-sm-6 col-md-4 gallery-holder">
        <div class="product-item-holder size-big single-product-gallery small-gallery">

            <div id="owl-single-product">
                <div class="single-product-gallery-item-" id="slide1">
                    <?php
                    $folder = Shop::module()->uploadImagesFolder;

                    if (isset($model->images[0]) && $model->images[0]->filename)
                        $path = Yii::app()->baseUrl . '/' . $folder . '/' . $model->images[0]->filename;
                    else
                        $path = Shop::register('no-pic.jpg');
                    ?>
                    <a data-lightbox="image-1" data-title="Gallery" href="<?php echo $path; ?>">
                        <img width="100%" alt=""
                             src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/images/blank.gif"
                             data-echo="<?php echo $path; ?>"/>
                    </a>
                </div><!-- /.single-product-gallery-item -->
            </div><!-- /.single-product-slider -->

        </div><!-- /.single-product-gallery -->
    </div><!-- /.gallery-holder -->
    <div class='col-sm-6 col-md-8 product-info-block'>
        <div class="product-info">
            <h1 class="name"><?php echo $model->title; ?></h1>

            <div class="rating-reviews m-t-20">
                <div class="row">
                    <div class="col-sm-3">

                    </div>
                    <div class="col-sm-8">

                    </div>
                </div><!-- /.row -->
            </div><!-- /.rating-reviews -->

            <div class="description-container m-t-20">
                <?php echo $model->description; ?>
            </div><!-- /.description-container -->

            <div class="price-container info-container m-t-20">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="price-box">
							<span class="price"><?php printf('<h2 class="price">%s</h2>',
                                    Shop::priceFormat($model->price));
                                ?></span>
                        </div>
                    </div>

                </div><!-- /.row -->
            </div><!-- /.price-container -->

            <div class="quantity-container info-container">
                <div class="row">
                    <?php $this->renderPartial('/products/addToCart', array(
                        'model' => $model)); ?>

                </div><!-- /.row -->
            </div><!-- /.quantity-container -->

            <div class="product-social-link m-t-20 text-right">
                <div class="social-icons">
                    <ul class="list-inline">
                        <?php
                        $this->widget('application.extensions.SocialShareButton.SocialShareButton', array(
                            'style' => 'horizontal',
                            'networks' => array('facebook', 'googleplus'),
                            'data_via' => '', //twitter username (for twitter only, if exists else leave empty)
                        )); ?>
                    </ul><!-- /.social-icons -->
                </div>
            </div>


        </div><!-- /.product-info -->
    </div><!-- /.col-sm-7 -->
</div><!-- /.row -->

