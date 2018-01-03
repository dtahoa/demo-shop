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
			<div class="col-md-12">
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
