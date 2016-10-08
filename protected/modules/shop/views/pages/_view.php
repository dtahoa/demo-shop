<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="blog-post wow fadeInUp">
	<h1><?php echo CHtml::encode($data->title); ?></h1>
	<p><?php echo $data->content; ?></p>
	<div class="social-media">
		<span>Chia sẻ:</span>
		<!--<a href="#"><i class="fa fa-facebook"></i></a>
		<a href="#"><i class="fa fa-google-plus"></i></a>-->
		<?php
		$this->widget('application.extensions.SocialShareButton.SocialShareButton', array(
			'style'=>'horizontal',
			'networks' => array('facebook','googleplus'),
			'data_via'=>'', //twitter username (for twitter only, if exists else leave empty)
		));?>
	</div>
</div>