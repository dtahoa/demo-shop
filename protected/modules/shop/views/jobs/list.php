<div class="container">
	<div class="row  outer-bottom-vs">
		<div class="blog-page">
			<div class="col-md-9">
				<?php $this->widget('zii.widgets.CListView', array(
					'dataProvider'=>$dataProvider,
					'itemView'=>'_detail',
					'summaryText'=>'',
					'template'=>'{pager}{items}{pager}',
				)); ?>
			</div>
		</div>
	</div>
</div>
