<div class="container album-container">
	<div class="post-blog">
		<?php echo $model->description;?>
	</div>
	<div class="post-desc">
		<a href="<?php
				$folder = Yii::app()->controller->module->dataFolder;
				echo $filePath = $folder . '/' . $model->filename;?>"
		   class="img-group-gallery cboxElement" title="file báo giá">File báo giá</a>
	</div>
</div>
