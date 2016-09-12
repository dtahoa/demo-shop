<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
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
                <div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
                    <!-- ============================================================= LOGO ============================================================= -->
                    <div class="logo">
                        <a href="<?php echo Yii::app()->getBaseUrl(true); ?>">

                            <img style="height: 90px;" src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/images/logo3.png"
                                 alt="">

                        </a>
                    </div><!-- /.logo -->
                    <!-- ============================================================= LOGO : END ============================================================= -->
                </div><!-- /.logo-holder -->

                <div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
                    <div class="contact-row">
                        <div class="phone inline">
                            <i class="icon fa fa-phone"></i> (400) 888 888 868
                        </div>
                        <div class="contact inline">
                            <i class="icon fa fa-envelope"></i> saler@vanphongphamminhtu.com
                        </div>
                    </div><!-- /.contact-row -->
                    <!-- ============================================================= SEARCH AREA ============================================================= -->
                    <div class="search-area">
                        <form>
                            <div class="control-group">

                                <ul class="categories-filter animate-dropdown">
                                    <li class="dropdown">

                                        <a class="dropdown-toggle" data-toggle="dropdown" href="danh mục.html">Danh mục
                                            <b class="caret"></b></a>

                                        <ul class="dropdown-menu" role="menu">
                                            <li class="menu-header">Computer</li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="danh mục.html">- Laptops</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="danh mục.html">- Tv & audio</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="danh mục.html">- Gadgets</a></li>
                                            <li role="presentation"><a role="menuitem" tabindex="-1"
                                                                       href="danh mục.html">- Cameras</a></li>
                                        </ul>
                                    </li>
                                </ul>

                                <input class="search-field" placeholder="Search here..."/>

                                <a class="search-button" href="#"></a>

                            </div>
                        </form>
                    </div><!-- /.search-area -->
                    <!-- ============================================================= SEARCH AREA : END ============================================================= -->
                </div><!-- /.top-search-holder -->

                <div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
                    <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

                    <div class="dropdown dropdown-cart">
                        <a href="//shop/shoppingCart/view" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
                            <div class="items-cart-inner">
                                <div class="total-price-basket">
                                    <span class="lbl">cart -</span>
                                    <span class="total-price">
                        <span class="sign">$</span>
                        <span class="value">600.00</span>
                    </span>
                                </div>
                                <div class="basket">
                                    <i class="glyphicon glyphicon-shopping-cart"></i>
                                </div>
                                <div class="basket-item-count"><span class="count">2</span></div>

                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="cart-item product-summary">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <div class="image">
                                                <a href="detail.html"><img
                                                        src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/images/cart.jpg"
                                                        alt=""></a>
                                            </div>
                                        </div>
                                        <div class="col-xs-7">

                                            <h3 class="name"><a href="index.php?page-detail">Simple Product</a></h3>
                                            <div class="price">$600.00</div>
                                        </div>
                                        <div class="col-xs-1 action">
                                            <a href="#"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </div>
                                </div><!-- /.cart-item -->
                                <div class="clearfix"></div>
                                <hr>

                                <div class="clearfix cart-total">
                                    <div class="pull-right">

                                        <span class="text">Sub Total :</span><span class='price'>$600.00</span>

                                    </div>
                                    <div class="clearfix"></div>

                                    <a href="/shop/shoppingCart/view"
                                       class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>
                                </div><!-- /.cart-total-->


                            </li>
                        </ul><!-- /.dropdown-menu-->
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
                                <li class="active dropdown yamm-fw">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Trang chủ</a>
                                </li>
                                <li class="dropdown yamm">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Giới thiệu</a>
                                </li>
                                <li class="dropdown yamm">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Sản phẩm</a>
                                </li>
                                <li class="dropdown yamm">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Đặt hàng</a>
                                </li>
                                <li class="dropdown yamm">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Liên hệ</a>
                                </li>
                                <li class="dropdown yamm">
                                    <a href="home.html" data-hover="dropdown" class="dropdown-toggle"
                                       data-toggle="dropdown">Tuyển dụng</a>
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
    <div class="links-social inner-top-sm">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <!-- ============================================================= CONTACT INFO ============================================================= -->
                    <div class="contact-info">
                        <div class="footer-logo">
                            <div class="logo">
                                <a href="home.html">

                                    <img style="height: 90px;"
                                        src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/images/logo3.png"
                                        alt="">

                                </a>
                            </div><!-- /.logo -->

                        </div><!-- /.footer-logo -->

                        <div class="module-body m-t-20">
                            <p class="about-us"> Nam libero tempore, cum soluta nobis est ses eligendi optio cumque cum
                                soluta nobis est ses eligendi optio cumque.</p>

                            <div class="social-icons">

                                <a href="http://facebook.com/transvelo" class='active'><i
                                        class="icon fa fa-facebook"></i></a>
                                <a href="#"><i class="icon fa fa-twitter"></i></a>
                                <a href="#"><i class="icon fa fa-linkedin"></i></a>
                                <a href="#"><i class="icon fa fa-rss"></i></a>
                                <a href="#"><i class="icon fa fa-pinterest"></i></a>

                            </div><!-- /.social-icons -->
                        </div><!-- /.module-body -->

                    </div><!-- /.contact-info -->
                    <!-- ============================================================= CONTACT INFO : END ============================================================= -->
                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <!-- ============================================================= CONTACT TIMING============================================================= -->
                    <div class="contact-timing">
                        <div class="module-heading">
                            <h4 class="module-title">THỜI GIAN LÀM VIỆC</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body outer-top-xs">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>Monday-Friday:</td>
                                        <td class="pull-right">08.00 To 18.00</td>
                                    </tr>
                                    <tr>
                                        <td>Saturday:</td>
                                        <td class="pull-right">09.00 To 20.00</td>
                                    </tr>
                                    <tr>
                                        <td>Sunday:</td>
                                        <td class="pull-right">10.00 To 20.00</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div><!-- /.table-responsive -->
                            <p class='contact-number'>Hot Line:(400)888 868 848</p>
                        </div><!-- /.module-body -->
                    </div><!-- /.contact-timing -->
                    <!-- ============================================================= CONTACT TIMING : END ============================================================= -->
                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">

                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <!-- ============================================================= THÔNG TIN CỬA HÀNG============================================================= -->
                    <div class="contact-THÔNG TIN CỬA HÀNG">
                        <div class="module-heading">
                            <h4 class="module-title">THÔNG TIN CỬA HÀNG</h4>
                        </div><!-- /.module-heading -->

                        <div class="module-body outer-top-xs">
                            <ul class="toggle-footer" style="">
                                <li class="media">
                                    <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
                    </span>
                                    </div>
                                    <div class="media-body">
                                        <p>868 Any Stress,Burala Casi,Picasa USA.</p>
                                    </div>
                                </li>

                                <li class="media">
                                    <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-mobile fa-stack-1x fa-inverse"></i>
                    </span>
                                    </div>
                                    <div class="media-body">
                                        <p>(400) 0888 888 888<br>(400) 888 888 888</p>
                                    </div>
                                </li>

                                <li class="media">
                                    <div class="pull-left">
                     <span class="icon fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-envelope fa-stack-1x fa-inverse"></i>
                    </span>
                                    </div>
                                    <div class="media-body">
                                        <span><a href="#">Liên hệ @vanphongphamminhtu.vn</a></span><br>
                                        <span><a href="#">Kinh  doanh @vanphongphamminhtu.vn</a></span>
                                    </div>
                                </li>

                            </ul>
                        </div><!-- /.module-body -->
                    </div><!-- /.contact-timing -->
                    <!-- ============================================================= THÔNG TIN CỬA HÀNG : END ============================================================= -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.links-social -->

    <div class="footer-bottom inner-bottom-sm">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-6">
                    <div class="module-heading outer-bottom-xs">
                        <h4 class="module-title">DỊCH VỤ</h4>
                    </div><!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Libero Sed rhoncus</a></li>
                            <li><a href="#">Venenatis augue tellus</a></li>
                            <li><a href="#">My Vouchers</a></li>
                        </ul>
                    </div><!-- /.module-body -->
                </div><!-- /.col -->

                <div class="col-xs-12 col-sm-6 col-md-6">
                    <div class="module-heading outer-bottom-xs">
                        <h4 class="module-title">HƯỚNG DẪN & HỖ TRỢ</h4>
                    </div><!-- /.module-heading -->

                    <div class="module-body">
                        <ul class='list-unstyled'>
                            <li><a href="#">Knowledgebase</a></li>
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Contact Support</a></li>
                            <li><a href="#">Marketplace Blog</a></li>
                            <li><a href="#">About Unicase</a></li>
                        </ul>
                    </div><!-- /.module-body -->
                </div>
            </div>
        </div>
    </div>

    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                    Copyright © 2016
                    <a href="home.html">Văn phòng phẩm Minh Tú.</a>
                    - All rights Reserved
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 no-padding">

            </div>
        </div>
    </div>
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
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/scripts.js"></script>
<script src="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/js/custom.js"></script>

</body>
</html>