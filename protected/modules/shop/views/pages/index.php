<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Trang tin',
);

?>

<div class="container album-container">
	<div class="row outer-bottom-vs">
		<div class="col-md-12 post-blog">
			<?php $this->widget('zii.widgets.CListView', array(
				'dataProvider'=>$dataProvider,
				'itemView'=>'_view',
				'summaryText'=>'',
				'template'=>'{pager}{items}{pager}',
			)); ?>
		</div>
	</div>
</div>
