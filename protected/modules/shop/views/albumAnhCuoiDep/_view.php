<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="col-sm-4">
	<h4><?php echo CHtml::encode($data->title); ?></h4>
	<p><?php echo $data->image_profile; ?></p>
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