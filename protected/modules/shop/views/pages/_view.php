<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="blog-post wow fadeInUp">
	<div id="hero">
		<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
			<div class="item" style="background-image: url(<?php echo Yii::app()->getBaseUrl(true) . '/productimages/img-news.jpg'?>");"></div>
			<div class="item" style="background-image: url(<?php echo Yii::app()->getBaseUrl(true) . '/productimages/img-news.jpg'?>");"/></div>
			<div class="item" style="background-image: url(<?php echo Yii::app()->getBaseUrl(true) . '/productimages/img-news.jpg'?>");"/></div>
		</div>
	</div>
	<h1><?php echo CHtml::encode($data->title); ?></h1>
	<p><?php echo CHtml::encode($data->content); ?></p>
	<div class="social-media">
		<span>Chia sẻ:</span>
		<a href="#"><i class="fa fa-facebook"></i></a>
		<a href="#"><i class="fa fa-google-plus"></i></a>
	</div>
</div>