<!--<p> <?php /*echo Shop::t('Shop'); */ ?> </p>-->
<ul>
    <li> <?php echo CHtml::link(Shop::t('Đơn hàng'), array('/shop/order/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Loại sản phẩm'), array('//shop/category/admin')); ?> </li>
    <!--<li> <?php /*echo CHtml::link(Shop::t('Article specifications'), array('/shop/productSpecification/admin')); */ ?> </li>-->
    <li> <?php echo CHtml::link(Shop::t('Sản phẩm'), array('/shop/products/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Phương thức giao hàng'), array('/shop/shippingMethod/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Phương thức thanh toán'), array('/shop/paymentMethod/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Thuế'), array('/shop/tax/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Thông tin cửa hàng'), array('//shop/shopInformation/admin')); ?> </li>

    <?php if (isset(Yii::app()->controller->menu)) {
        foreach (Yii::app()->controller->menu as $value) {
            printf('<li>%s</li>', CHtml::link($value['label'], $value['url']));
        }
    }
    ?>
</ul>

