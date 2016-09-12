<?php
Shop::register('css/shop.css');
$this->renderPartial('/order/waypoint', array('point' => 3));

if(!isset($customer))
	$customer = new Customer;

	if(!isset($billingAddress))
		if(isset($customer->billingAddress))
			$billingAddress = $customer->billingAddress;
		else
			$billingAddress = new BillingAddress;

if(!isset($this->breadcrumbs))
	$this->breadcrumbs = array(
			Shop::t('Order'),
			Shop::t('Payment method'));
			
$form=$this->beginWidget('CActiveForm', array(
			'id'=>'customer-form',
			'action' => array('//shop/order/create'),
			'enableAjaxValidation'=>false,
			)); 
?>

<h2><?php echo Shop::t('Thanh Toán & Đặt Mua'); ?></h2>
<h3><?php echo Shop::t('Địa chỉ người mua'); ?></h3>
<div class="current_address">
<?php $this->widget('zii.widgets.CDetailView', array(
			'data'=>$customer->address,
			'htmlOptions' => array('class' => 'detail-view grey', 'id'=>'mt-cart'),
			'attributes'=>array(
				'firstname',
				'phone',
				'street',
				'zipcode',
				'city',
				'country'
				),
			)); ?>
</div>
<br/>
<?php
// Disable this features for small project
/*echo CHtml::checkBox('toggle_billing',
			$customer->billingAddress !== NULL, array(
				'style' => 'float: left')); 
	echo CHtml::label(Shop::t('alternative billing address'), 'toggle_billing', array(
				'style' => 'cursor:pointer'));*/
?>
<div class="form">
	<fieldset id="billing_information" style="display: none;" >
        <div class="payment_address">
        
        	<h3> <?php echo Shop::t('new payment address'); ?> </h3>
            <p><?php echo Shop::t('Shipping new address'); ?></p>
        
            <div class="row">
                <?php echo $form->labelEx($billingAddress,'firstname'); ?>
                <?php echo $form->textField($billingAddress,'firstname',array('size'=>45,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'firstname'); ?>
            </div>
        
            <div class="row">
                <?php echo $form->labelEx($billingAddress,'phone'); ?>
                <?php echo $form->textField($billingAddress,'phone',array('size'=>45,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'phone'); ?>
            </div>
        
            <div class="row">
                <?php echo $form->labelEx($billingAddress,'street'); ?>
                <?php echo $form->textField($billingAddress,'street',array('size'=>45,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'street'); ?>
            </div>
        
            <div class="row">
                <?php echo $form->labelEx($billingAddress,'city'); ?>
                <?php echo $form->textField($billingAddress,'zipcode',array('size'=>10,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'zipcode'); ?>
        
                <?php echo $form->textField($billingAddress,'city',array('size'=>32,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'city'); ?>
            </div>
        
            <div class="row">
				<?php echo $form->labelEx($billingAddress,'country'); ?>
                <?php echo $form->textField($billingAddress,'country',array('size'=>45,'maxlength'=>45)); ?>
                <?php echo $form->error($billingAddress,'country'); ?>
            </div>
		</div>
     </fieldset>
<br />
<hr />  
<h3> <?php echo Shop::t('Chọn phương thức thanh toán:'); ?> </h3>

<?php
$i = 0;
foreach(PaymentMethod::model()->findAll() as $method) {
	echo '<div class="payment-method">';
	echo CHtml::radioButton("PaymentMethod", $i == 0, array(
				'value' => $method->id));
	echo CHtml::label($method->title, 'PaymentMethod');
	echo CHtml::tag('p', array(), $method->description);
	echo '</div>';
	echo '</div>';
	echo '<div class="clear"></div>';
	$i++;
}
	?>


<div class="buttons">
<?php
echo CHtml::submitButton(Shop::t('Tiếp tục'),array('id'=>'next', 'class'=>'btn-next btn-upper btn btn-primary'));
?>
</div>

<?php
echo '</div>';
$this->endWidget(); 
?>

<?php
Yii::app()->clientScript->registerScript('toggle', "
	if($('#toggle_billing').attr('checked'))
		$('#billing_information').show();

	$('#toggle_billing').click(function() { 
		$('#billing_information').toggle(500);
	});
"); 