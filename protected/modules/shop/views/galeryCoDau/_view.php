<div class="post-galery">
	<?php
	if (isset($data->hinh_anh) && $data->hinh_anh) {
		$path = Yii::app()->baseUrl."/".Shop::module()->uploadImagesFolder."/".$data->hinh_anh;
	} else {
		$path = Shop::register('no-pic.jpg');
	}
	?>
	<img src="<?php echo $path; ?>" class="img-responsive" alt="<?php echo $data->tieu_de; ?>">
</div>