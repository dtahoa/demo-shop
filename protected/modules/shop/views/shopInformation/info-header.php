<?php $model = ShopInformation::model()->findByPk(1); ?>

<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
    <!-- ============================================================= LOGO ============================================================= -->
    <div class="logo">
        <a href="<?php echo Yii::app()->getBaseUrl(true); ?>">

            <img style="height: 90px;" src="<?php
            $folder = Shop::module()->uploadImagesFolder;
            if (!$model->logo)
                echo Yii::app()->baseUrl . '/resources/assets/images/logo3.png;';
            else
                echo Yii::app()->baseUrl . '/' . $folder . '/' . $model->logo;
            ?>" alt="Mai Cưới Studio">

        </a>
    </div><!-- /.logo -->
    <!-- ============================================================= LOGO : END ============================================================= -->
</div><!-- /.logo-holder -->

<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
    <div class="contact-row">
        <div class="phone inline">
            <i class="icon fa fa-phone"></i> <?php echo $model->phone; ?>
        </div>
        <div class="contact inline">
            <i class="icon fa fa-envelope"></i> <?php echo $model->email_kinhdoanh; ?>
        </div>
    </div><!-- /.contact-row -->
    <!-- ============================================================= SEARCH AREA ============================================================= -->
    <div class="search-area">
        <form>
            <div class="control-group">

                <input class="search-field" placeholder="Nhập sản phẩm cần tìm..."/>

                <a class="search-button" href="#"></a>

            </div>
        </form>
    </div><!-- /.search-area -->
    <!-- ============================================================= SEARCH AREA : END ============================================================= -->
</div><!-- /.top-search-holder -->