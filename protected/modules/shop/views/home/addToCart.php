<?php
echo Shop::renderFlash();
echo '<div class="product-price-info">';
echo '</div>';

echo CHtml::beginForm(array('shoppingCart/create'));

if($variations = $model->getVariations()) {
	$i = 0;
	foreach($variations as $variation) {
		$i++;
		$field = "Variations[{$variation[0]->specification_id}][]";
		echo '<div class="product_variation product_variation_'.$i.'">';
		echo CHtml::label($variation[0]->specification->title,
				$field, array(
					'class' => 'lbl-header'));

		if($variation[0]->specification->required)
			echo ' <span class="required">*</span>';

		echo  '<br />';
		if($variation[0]->specification->is_user_input) {
			echo CHtml::textField($field);
		}
		else {
			// If the specification is required, preselect the first field. Otherwise
			// let the customer choose which one to pick
			echo CHtml::radioButtonList($field,
					$variation[0]->specification->required ? $variation[0]->id : null,
					ProductVariation::listData($variation));
		}
		echo '</div>';
		if($i % 2 == 0)
			echo '<div style="clear: both;"></div>';
	}

}

echo '<div style="clear: both;"></div>';
echo '<br />';
echo CHtml::hiddenField('product_id', $model->product_id);
$style = '<div class="col-sm-2">
	<span class="label">Số lượng :</span>
</div>

<div class="col-sm-2">
	<div class="cart-quantity">
		<div class="quant-input">
			<input type="text" name="amount" value="1">
		</div>
	</div>
</div>

<div class="col-sm-7">
	<button class="btn btn-primary btn-add-to-cart" type="submit"><i
			class="fa fa-shopping-cart inner-right-vs"></i> MUA HÀNG</button>
</div>';
echo $style;
echo CHtml::endForm();
?>
