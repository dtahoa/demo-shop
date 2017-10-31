<div class="item">
	<div class="products special-product">
		<?php
		$dataProvider = new CActiveDataProvider('Products', array(
			'criteria'=>array(
				'condition'=>'is_discount=1',
				'order'=>'title DESC',
				'limit' => 5
			),
			'pagination'=>false
		));

		$this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'summaryText'=>'',
			'itemView'=>'application.modules.shop.views.products._discounts',
		));
		?>
	</div>
</div>

