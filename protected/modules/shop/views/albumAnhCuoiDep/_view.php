<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="col-sm-4 grid_5 view">
	<a class="gal_item" href="<?php echo $data->images_embed; ?>">
			<p><?php echo $data->image_profile; ?></p>
	</a>
	<div class="mask">
			<a class="gal_item" target="_blank" href="<?php echo $data->images_embed; ?>"></a>
			<div class="info"><a class="gal_item" href="<?php echo $data->images_embed; ?>"></a>
					<a target="_blank" href="<?php echo $data->images_embed; ?>" class="info-list">
							<span style="font-size: 16px;"><?php echo CHtml::encode($data->title); ?></span>
					</a>
			</div>
	</div>
</div>
