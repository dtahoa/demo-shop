<?php
$this->renderPartial('/order/waypoint', array('point' => 2));

if (!isset($customer))
    $customer = new Customer;

if (!isset($deliveryAddress))
    if (isset($customer->deliveryAddress))
        $deliveryAddress = $customer->deliveryAddress;
    else
        $deliveryAddress = new DeliveryAddress;

if (!isset($this->breadcrumbs))
    $this->breadcrumbs = array(
        Shop::t('Order'),
        Shop::t('Shipping method'));

$form = $this->beginWidget('CActiveForm', array(
    'id' => 'customer-form',
    'action' => array('//shop/order/create'),
    'enableAjaxValidation' => false,
));
?>

    <h2> <?php echo Shop::t('Phương thức giao hàng'); ?> </h2>

    <h3> <?php echo Shop::t('Địa chỉ người nhận'); ?></h3>

    <div class="current_address">
        <?php $this->widget('zii.widgets.CDetailView', array(
            'data' => $customer->address,
            'htmlOptions' => array('class' => 'detail-view grey', 'id' => 'mt-cart'),
            'attributes' => array(
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
/*echo CHtml::checkBox('toggle_delivery',
			$customer->deliveryAddress !== NULL, array(
				'style' => 'float: left')); 
	echo CHtml::label(Shop::t('alternative Địa chỉ giao hàng'), 'toggle_delivery', array(
				'style' => 'cursor:pointer'));*/

?>

    <div class="form">
        <fieldset id="delivery_information" style="display: none;">
            <div class="payment_address">

                <h3> <?php echo Shop::t('new shipping address'); ?> </h3>
                <p><?php echo Shop::t('Shipping new address'); ?></p>

                <div class="row">
                    <?php echo $form->labelEx($deliveryAddress, 'firstname'); ?>
                    <?php echo $form->textField($deliveryAddress, 'firstname', array('size' => 45, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'firstname'); ?>
                </div>

                <div class="row">
                    <?php echo $form->labelEx($deliveryAddress, 'phone'); ?>
                    <?php echo $form->textField($deliveryAddress, 'phone', array('size' => 45, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'phone'); ?>
                </div>

                <div class="row">
                    <?php echo $form->labelEx($deliveryAddress, 'street'); ?>
                    <?php echo $form->textField($deliveryAddress, 'street', array('size' => 45, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'street'); ?>
                </div>

                <div class="row">
                    <?php echo $form->labelEx($deliveryAddress, 'city'); ?>
                    <?php echo $form->textField($deliveryAddress, 'zipcode', array('size' => 10, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'zipcode'); ?>

                    <?php echo $form->textField($deliveryAddress, 'city', array('size' => 32, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'city'); ?>
                </div>

                <div class="row">
                    <?php echo $form->labelEx($deliveryAddress, 'country'); ?>
                    <?php echo $form->textField($deliveryAddress, 'country', array('size' => 45, 'maxlength' => 45)); ?>
                    <?php echo $form->error($deliveryAddress, 'country'); ?>
                </div>
            </div>
        </fieldset>
        <br/>
        <hr/>
        <h3> <?php echo Shop::t('Chọn phương thức giao hàng:'); ?> </h3>

        <?php
        $i = 0;

        foreach (ShippingMethod::model()->findAll() as $method) {
            echo '<div class="shipping-method">';
            echo CHtml::radioButton("ShippingMethod", $i == 0, array(
                'value' => $method->id));
            echo "&nbsp&nbsp&nbsp";
            echo CHtml::label($method->title, 'ShippingMethod');
            echo CHtml::tag('p', array(), $method->description);
            echo CHtml::tag('p', array(), Shop::t('Phí vận chuyển: ') . '<strong>' . Shop::priceFormat($method->price) . '</strong>');
            echo '</div>';
            echo '<div class="clear"></div>';
            $i++;
        }
        ?>



        <?php
        Yii::app()->clientScript->registerScript('toggle', "
            if($('#toggle_delivery').attr('checked'))
                $('#delivery_information').show();
            $('#toggle_delivery').click(function() { 
                $('#delivery_information').toggle(500);
            });
        ");
        ?>
        <div class="buttons">
            <?php
            echo CHtml::submitButton(Shop::t('Tiếp tục'), array('id' => 'next', 'class' => 'btn-next btn-upper btn btn-primary'));
            echo '</div>';
            ?>
        </div>
    </div>
<?php $this->endWidget(); ?>