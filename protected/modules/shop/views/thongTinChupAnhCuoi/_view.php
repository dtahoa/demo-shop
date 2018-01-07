<?php
/* @var $this ShopInformationController */
/* @var $data ShopInformation */
?>

<div class="col-md-4 col-sm-6 col-xs-12">
    <div class="post-container">
        <div class="post-image">
            <?php
            if (isset($data->hinh_anh) && $data->hinh_anh) {
                $path = Yii::app()->baseUrl . "/" . Shop::module()->uploadImagesFolder . "/" . $data->hinh_anh;
            } else {
                $path = Shop::register('no-pic.jpg');
            }
            ?>
            <a href="<?php echo Yii::app()->request->baseUrl . '/shop/thongTinChupAnhCuoi/view/id/' . $data->id; ?>"
               class="img-group-gallery cboxElement" title="<?php echo $data->tieu_de; ?>">
                <img src="<?php echo $path; ?>" class="img-responsive" alt="<?php echo $data->tieu_de; ?>"></a>
        </div>
        <div class="post-desc">
            <?php echo substr($data->tieu_de, 0, 100); ?>
        </div>
    </div>
</div>