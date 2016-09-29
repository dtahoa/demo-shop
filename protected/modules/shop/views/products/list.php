<?php
$this->breadcrumbs=array(
	Shop::t('Sản phẩm'),
);
Shop::renderFlash();
?>

<div class="more-info-tab clearfix ">
	<h3 class="new-product-title pull-left"><?php echo Shop::t('Danh sách sản phẩm'); ?></h3>
</div>
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

