<div class="item">
	<div class="products special-product">
		<?php
		$dataProvider = new CActiveDataProvider('Products', array(
			'criteria'=>array(
				'condition'=>'is_highlight=1',
				'order'=>'title DESC',
				'limit' => 5
			),
			'pagination'=>false
		));

		$this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'summaryText'=>'',
			'itemView'=>'application.modules.shop.views.products._highlights',
		));
		?>
	</div>
</div>
<!--Comment for small/vn project-->
<!--<div class="item">
	<div class="products special-product">
		<?php
/*		$dataProvider = new CActiveDataProvider('Products', array(
			'criteria'=>array(
				'condition'=>'price <= 200000',
				'order'=>'title DESC',
			),
			'pagination'=>array(
				'pageSize'=>10,
			)
		));

		$this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'summaryText'=>'',
			'itemView'=>'_highlights',
		));
		*/?>
	</div>
</div>
<div class="item">
	<div class="products special-product">
		<?php
/*		$dataProvider = new CActiveDataProvider('Products', array(
			'criteria'=>array(
				'condition'=>'price <= 100000',
				'order'=>'title DESC',
			),
			'pagination'=>array(
				'pageSize'=>10,
			)
		));

		$this->widget('zii.widgets.CListView', array(
			'dataProvider'=>$dataProvider,
			'summaryText'=>'',
			'itemView'=>'_highlights',
		));
		*/?>
	</div>
</div>-->
