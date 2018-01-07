<?php
/* @var $this PagesController */
/* @var $data Pages */
?>

<div class="col-sm-4 grid_5 view">
    <a class="gal_item" href="<?php echo $data->images_embed; ?>">
        <?php
        if (isset($data->image_profile) && $data->image_profile) {
            $path = Yii::app()->baseUrl . "/" . Shop::module()->uploadImagesFolder . "/" . $data->image_profile;
        } else {
            $path = Shop::register('no-pic.jpg');
        }
        ?>
        <img src="<?php echo $path; ?>" class="img-responsive"
             style="width: 100%;" alt="<?php echo $data->title; ?>">
    </a>
    <div class="mask">
        <a class="gal_item" target="_blank" href="<?php echo $data->images_embed; ?>"></a>
        <div class="info"><a class="gal_item" href="<?php echo $data->images_embed; ?>"></a>
            <a target="_blank" href="<?php echo $data->images_embed; ?>" class="info-list">
                <span style="font-size: 16px;"><?php echo CHtml::encode($data->title); ?></span>
            </a>
        </div>
    </div>
</div>
