<?php
/* @var $this JobsController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Jobs',
);

$this->menu=array(
	array('label'=>'Create Jobs', 'url'=>array('create')),
	array('label'=>'Manage Jobs', 'url'=>array('admin')),
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
