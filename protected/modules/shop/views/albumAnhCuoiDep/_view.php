<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="col-sm-4">
	<h4><?php echo CHtml::encode($data->title); ?></h4>
	<a target="_blank" href="<?php echo $data->images_embed; ?>">
		<p><?php echo $data->image_profile; ?></p>
	</a>
</div>