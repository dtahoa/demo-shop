<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Văn Phòng Phẩm Minh Tú</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/bootstrap.min.css">

    <!-- Customizable CSS -->
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/main.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/blue.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/owl.transitions.css">
    <!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
    <link href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/lightbox.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/animate.min.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/rateit.css">
    <link rel="stylesheet"
          href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightslider/1.1.3/css/lightslider.min.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/style.css">

    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/font-awesome.min.css">

    <!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

    <!-- Favicon -->
    <link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/images/favicon.ico">

    <!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
    <!--[if lt IE 9]>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/html5shiv.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="cnt-home">
<header class="header-style-1">

    <div class="main-header">
        <div class="container">
            <div class="row">
                <?php $this->renderPartial('application.modules.shop.views.shopInformation.info-header', array()); ?>

                <div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                    <div class="dropdown dropdown-cart">
                        <a href="/shop/shoppingCart/view" class="dropdown-toggle lnk-cart">
                            <div class="items-cart-inner">
                                <div class="total-price-basket">
                                    <span class="lbl">TỔNG -</span>
                                    <span class="total-price">
                        <span class="value"><?php echo Shop::getPriceTotalNumber();?></span>
                    </span>
                                </div>
                                <div class="basket">
                                    <i class="glyphicon glyphicon-shopping-cart"></i>
                                </div>
                                <?php
                                if (!isset($products))
                                    $products = Shop::getCartContent();
                                ?>
                                <div class="basket-item-count"><span class="count"><?php echo count($products);?></span></div>

                            </div>
                        </a>
                    </div><!-- /.dropdown-cart -->

                    <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
                </div><!-- /.top-cart-row -->
            </div><!-- /.row -->

        </div><!-- /.container -->

    </div><!-- /.main-header -->

    <!-- ============================================== NAVBAR ============================================== -->
    <div class="header-nav animate-dropdown">
        <div class="container">
            <div class="yamm navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse"
                            class="navbar-toggle collapsed" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="nav-bg-class">
                    <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                        <div class="nav-outer">
                            <ul class="nav navbar-nav">
                                <li class="<?php if (Yii::app()->controller->id == "products" && Yii::app()->controller->action->id== "index") echo "active";?> dropdown yamm-fw">
                                    <a href="<?php echo Yii::app()->getBaseUrl(true); ?>">Trang chủ</a>
                                </li>
                                <li class="<?php if (Yii::app()->controller->id == "pages") echo "active";?> dropdown yamm">
                                    <a href="/shop/pages/index">Giới thiệu</a>
                                </li>
                                <li class="<?php if (Yii::app()->controller->id == "products" && Yii::app()->controller->action->id== "list") echo "active";?> dropdown yamm">
                                    <a href="/shop/products/list">Sản phẩm</a>
                                </li>
                                <li class="<?php if (Yii::app()->controller->id == "shoppingCart") echo "active";?> dropdown yamm">
                                    <a href="/shop/shoppingCart/view">Đặt hàng</a>
                                </li>
                                <li class="<?php if (Yii::app()->controller->id == "contact") echo "active";?> dropdown yamm">
                                    <a href="/shop/contact/create">Liên hệ</a>
                                </li>
                                <li class="<?php if (Yii::app()->controller->id == "jobs") echo "active";?> dropdown yamm">
                                    <a href="/shop/jobs/list">Việc làm</a>
                                </li>
                            </ul><!-- /.navbar-nav -->
                            <div class="clearfix"></div>
                        </div><!-- /.nav-outer -->
                    </div><!-- /.navbar-collapse -->


                </div><!-- /.nav-bg-class -->
            </div><!-- /.navbar-default -->
        </div><!-- /.container-class -->

    </div><!-- /.header-nav -->
    <!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
    <div class="container">
        <div class="row single-product outer-bottom-sm ">
            <!-- ============================================== SIDEBAR ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-3 sidebar">

                <!-- ================================== TOP NAVIGATION ================================== -->
                <div class="side-menu animate-dropdown outer-bottom-xs">
                    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> DANH MỤC</div>
                    <nav class="yamm megamenu-horizontal" role="navigation">
                        <ul class="nav">
                            <?php
                                foreach (Category::getChilds(0) as $item) { ?>
                                <li class="dropdown menu-item">
                                    <?php echo $item['text'];?>
                                    <ul class="dropdown-menu mega-menu">
                                        <li class="yamm-content">
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12">
                                                    <ul class="links list-unstyled">
                                                        <?php if (isset($item['children']) && count($item['children']) > 0) {
                                                            foreach ($item['children'] as $val) {
                                                                echo $val['text'];
                                                            }
                                                        }?>
                                                    </ul>
                                                </div><!-- /.col -->
                                            </div><!-- /.row -->
                                        </li><!-- /.yamm-content -->
                                    </ul><!-- /.dropdown-menu
                                </li><!-- /.menu-item -->
                            <?php } ?>
                        </ul><!-- /.nav -->
                    </nav><!-- /.megamenu-horizontal -->
                </div><!-- /.side-menu -->
                <!-- ================================== TOP NAVIGATION : END ================================== -->

                <!-- ============================================== SẢN PHẨM ĐẶC BIỆT ============================================== -->

                <div class="sidebar-widget outer-bottom-small wow fadeInUp hidden-xs">
                    <h3 class="section-title">NỔI BẬT</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <?php //$this->renderPartial('application.modules.shop.views.products.highlights', array()); ?>
                            <div class="demo">
                                <ul id="lightSlider">
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-1.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-1.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-2.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-2.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-3.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-3.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-4.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-4.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-5.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-5.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-6.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-6.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-7.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-7.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-8.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-8.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-9.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-9.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-10.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-10.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-11.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-12.jpg" />
                                    </li>
                                    <li data-thumb="http://sachinchoolur.github.io/lightslider/img/thumb/cS-13.jpg">
                                        <img class="img-responsive" src="http://sachinchoolur.github.io/lightslider/img/cS-13.jpg" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== SẢN PHẨM ĐẶC BIỆT : END ============================================== -->
                <!-- ============================================== GIẢM GIÁ ============================================== -->

                <div class="sidebar-widget outer-bottom-small wow fadeInUp hidden-xs">
                    <h3 class="section-title">GIẢM GIÁ</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <?php $this->renderPartial('application.modules.shop.views.products.discounts', array()); ?>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== GIẢM GIÁ : END ============================================== -->

                <!-- ============================================== THỐNG KÊ TRUY CẬP ============================================== -->

                <div class="sidebar-widget outer-bottom-small wow fadeInUp hidden-xs">
                    <h3 class="section-title">THỐNG KÊ TRUY CẬP</h3>
                    <div class="sidebar-widget-body outer-top-xs">
                        <div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
                            <div class="item">
                                <div class="products special-product">
                                    <?php $this->renderPartial('application.modules.shop.views.products.usercounter', array()); ?>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.sidebar-widget-body -->
                </div><!-- /.sidebar-widget -->
                <!-- ============================================== THỐNG KÊ TRUY CẬP : END ============================================== -->

            </div><!-- /.sidemenu-holder -->
            <!-- ============================================== SIDEBAR : END ============================================== -->

            <!-- ============================================== CONTENT ============================================== -->
            <div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
                <?php echo $content; ?>
            </div><!-- /.homebanner-holder -->
            <!-- ============================================== CONTENT : END ============================================== -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</div><!-- /#top-banner-and-menu -->


<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <?php $this->renderPartial('application.modules.shop.views.shopInformation.info', array()); ?>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->

<!-- JavaScripts placed at the end of the document so the pages load faster -->
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/jquery-1.11.1.min.js"></script>

<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/bootstrap.min.js"></script>

<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/bootstrap-hover-dropdown.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/owl.carousel.min.js"></script>

<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/echo.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/jquery.easing-1.3.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/bootstrap-slider.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/jquery.rateit.min.js"></script>
<script type="text/javascript"
        src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/lightbox.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/bootstrap-select.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/wow.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightslider/1.1.3/js/lightslider.min.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/scripts.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/custom.js"></script>

</body>
</html>