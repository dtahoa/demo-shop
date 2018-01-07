<div id="shopcontent">

    <div class="span-8 border-light">
        <?php $this->beginWidget('zii.widgets.CPortlet',
            array('title' => Yii::t('ShopModule.shop', 'DANH MỤC SẢN PHẨM'), 'contentCssClass' => 'portlet-content-1')); ?>
        <?php $this->renderPartial('/category/admin', array('model' => $modelCategory)); ?>
        <?php $this->endWidget(); ?>
    </div>

    <div class="span-15 last border-light">
        <?php $this->beginWidget('zii.widgets.CPortlet',
            array('title' => Yii::t('ShopModule.shop', 'SẢN PHẨM'), 'contentCssClass' => 'portlet-content-1')); ?>
        <?php $this->renderPartial('/products/admin', array('model' => $modelProduct)); ?>
        <?php $this->endWidget(); ?>
    </div>

    <div class="clear">
        <div class="span-8 last border-light">
            <?php $this->beginWidget('zii.widgets.CPortlet',
                array('title' => Yii::t('ShopModule.shop', 'ĐƠN HÀNG ĐANG CHỜ XỬ LÝ'), 'contentCssClass' => 'portlet-content-1')); ?>
            <?php $this->renderPartial('/order/admin', array('model' => $modelOrder)); ?>
            <?php $this->endWidget(); ?>
        </div>

        <div class="clear">

        </div>
        <?php
        $this->breadcrumbs = array(
            Yii::t('ShopModule.shop', 'Danh mục quản trị') => array('shop/index'),
            Yii::t('ShopModule.shop', 'Bảng điều khiển'),
        );

        ?>


