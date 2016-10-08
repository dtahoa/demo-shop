<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Trang tin',
);

?>

<div class="container">
	<div class="row  outer-bottom-vs">

		<div class="blog-page">
			<div class="col-md-9">
				<div id="hero">
					<?php
					$banners = Banner::model()->findAll();
					$images = array();
					$alts = array();
					foreach ($banners as $banner) {
						array_push($images, $banner->filename);
						array_push($alts, $banner->title);
					}

					$this->widget('ext.slider.slider', array(
							'sliderBase'=>'/images/',
							'imagesPath'=>'banners',
							'container'=>'slideshow',
							'width'=>"100%",
							'height'=>"100%",
							'timeout'=>6000,
							'infos'=>false,
							'constrainImage'=>true,
							'images'=>$images,
							'alts'=>$alts,
							'defaultUrl'=>Yii::app()->request->hostInfo
						)
					);
					?>
				</div>
				<?php $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$dataProvider,
					'itemView'=>'_view',
					'summaryText'=>'',
					'template'=>'{pager}{items}{pager}',
				)); ?>
			</div>
		</div>
	</div>
</div>
