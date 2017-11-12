<!--<p> <?php /*echo Shop::t('Shop'); */ ?> </p>-->
<ul>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Album ảnh cưới đẹp'), array('//shop/albumAnhCuoiDep/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Album ảnh PSC đẹp'), array('//shop/albumAnhPSCDep/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Album ảnh gia đình'), array('//shop/albumAnhGiaDinh/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Album ảnh bé yêu'), array('//shop/albumAnhBeYeu/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Album ảnh thời trang'), array('//shop/albumAnhThoiTrang/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Trang tuyển dụng'), array('//shop/jobs/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Trang tin tức'), array('//shop/pages/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Quản lý banner'), array('//shop/banner/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Hộp thư khách hàng'), array('//shop/contact/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Cập nhật báo giá'), array('//shop/quotation/admin')); ?> </li>
    <li></li>

    <li> <?php echo CHtml::link(Shop::t('Thông tin Studio'), array('//shop/shopInformation/admin')); ?> </li>

    <?php if (isset(Yii::app()->controller->menu)) {
        foreach (Yii::app()->controller->menu as $value) {
            printf('<li>%s</li>', CHtml::link($value['label'], $value['url']));
        }
    }
    ?>
</ul>


