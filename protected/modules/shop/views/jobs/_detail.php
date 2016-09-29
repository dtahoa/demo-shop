<div class="blog-post wow fadeInUp">
	<h1><a href="<?php echo Yii::app()->request->baseUrl. '/shop/jobs/detail/id/'. $data->id; ?>"><?php echo CHtml::encode($data->title); ?></a></h1>
	<span class="date-time"><?php echo CHtml::encode($data->updated); ?></span>
	<p><?php echo CHtml::encode($data->content); ?></p>
	<a href="<?php echo Yii::app()->request->baseUrl. '/shop/jobs/detail/id/'. $data->id; ?>" class="btn btn-upper btn-primary read-more">Xem thêm</a>
</div>