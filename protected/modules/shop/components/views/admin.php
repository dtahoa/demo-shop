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
    <li> <?php echo CHtml::link(Shop::t('Video wedding'), array('//shop/videoWedding/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Video phóng sự cưới'), array('//shop/videoPhongSuCuoi/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Video TVC'), array('//shop/videoTvc/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Dịch vụ: Chụp ảnh cưới'), array('//shop/thongTinChupAnhCuoi/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Dịch vụ: Váy cưới cao cấp'), array('//shop/dichVuVayCuoi/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Dịch vụ: Chụp ảnh cho bé'), array('//shop/dichVuChupAnhChoBe/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Thông tin chup ảnh cưới'), array('//shop/thongTinChupAnhCuoi/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Tin tức'), array('//shop/tintuc/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Góc báo chí'), array('//shop/gocbaochi/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <li> <?php echo CHtml::link(Shop::t('Galery cô dâu'), array('//shop/galeryCoDau/admin')); ?> </li>
    <li> <?php echo CHtml::link(Shop::t('Galery váy cưới'), array('//shop/galeryVayCuoi/admin')); ?> </li>
    <li></li>
    <li style="border-top:solid black 1px;"></li>
    <!--<li> <?php /*echo CHtml::link(Shop::t('Trang tuyển dụng'), array('//shop/jobs/admin')); */?> </li>-->
    <li> <?php echo CHtml::link(Shop::t('Trang giới thiệu'), array('//shop/pages/admin')); ?> </li>
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


