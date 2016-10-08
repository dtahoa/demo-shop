<div class="container">
	<div class="row">
		<div class="blog-page">
			<div class="col-md-9">
				<div class="blog-post wow fadeInUp">
					<h1><a href="<?php echo Yii::app()->request->baseUrl. '/shop/jobs/chitiet/id/'. $model->id; ?>"><?php echo CHtml::encode($model->title); ?></a></h1>
					<span class="date-time"><?php echo CHtml::encode($model->updated); ?></span>
					<p><?php echo $model->content; ?></p>
					<div class="social-media">
						<span>CHIA SẺ:</span>
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
			</div>
		</div>
	</div>
</div>
