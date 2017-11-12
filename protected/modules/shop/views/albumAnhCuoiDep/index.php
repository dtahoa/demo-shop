<?php
/* @var $this PagesController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Album ảnh cưới đẹp',
);
?>

<div class="container album-container">
	<div class="row">
		<?php $this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'itemView'=>'_view',
			'summaryText'=>'',
			'template'=>'{pager}{items}{pager}',
		)); ?>
	</div>
</div>
