<?php
$this->breadcrumbs=array(
	Shop::t('Sản phẩm'),
);
Shop::renderFlash();
?>

<h2><?php echo Shop::t('Sản phẩm mới'); ?></h2>
<div class="search-result-container">
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active" id="grid-container">
			<div class="category-product  inner-top-vs">
				<div class="row">
					<?php $this->widget('zii.widgets.CListView', array(
						'dataProvider'=>$dataProvider,
						'summaryText'=>'',
						'itemView'=>'_view',
						'template'=>'{pager}{items}{pager}',
					)); ?>
				</div><!-- /.row -->
			</div><!-- /.category-product -->

		</div><!-- /.tab-pane -->
	</div><!-- /.tab-content -->

</div><!-- /.search-result-container -->

