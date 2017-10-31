<?php
$this->breadcrumbs=array(
    Yii::t('shop', 'Sản phẩm')=>array('index'),
    Yii::t('shop', 'Chi tiết'),
);
?>
<div class="view">
    <h3>
        Tên sản phẩm: <?php echo CHtml::link(CHtml::encode($data->title), array('products/view', 'id' => $data->product_id)); ?>
    </h3>

    <div class="product-overview-description">
        <p>Mô tả: <?php echo CHtml::encode($data->description); ?> </p>
        <p>Giá: <strong> <?php echo Shop::priceFormat($data->price); ?></strong> <br />
        <p><strong>Ghi chú:</strong> <?php echo Shop::pricingInfo(); ?></p>
    </div>
    <div class="product-overview-image">
        <div class="row" style="margin-left: 0px; margin-right: 0px;">
            <?php
            if($data->images)
                foreach($data->images as $image) {
                    $this->renderPartial('/image/view', array('model' => $image));
                }
            ?>
        </div>
    </div>

    <div class="clear"></div>
</div>
<div class="view-bottom"></div>
