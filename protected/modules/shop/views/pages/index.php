<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Pages',
);

$this->menu=array(
	array('label'=>'Create Pages', 'url'=>array('create')),
	array('label'=>'Manage Pages', 'url'=>array('admin')),
);
?>

<div class="container">
	<div class="row  outer-bottom-vs">
		<div class="blog-page">
			<div class="col-md-9">
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
