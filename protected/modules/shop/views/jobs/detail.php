<div class="container">
	<div class="row">
		<div class="blog-page">
			<div class="col-md-9">
				<div class="blog-post wow fadeInUp">
					<h1><a href="<?php echo Yii::app()->request->baseUrl. '/shop/jobs/chitiet/id/'. $model->id; ?>"><?php echo CHtml::encode($model->title); ?></a></h1>
					<span class="date-time"><?php echo CHtml::encode($model->updated); ?></span>
					<p><?php echo CHtml::encode($model->content); ?></p>
					<div class="social-media">
						<span>share post:</span>
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-google-plus"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
