<div class="col-md-4 image-item">

    <?php
    if (!Yii::app()->user->isGuest) {
        echo "<label> {$model->title} </label><br />";
    }
    $folder = Shop::module()->uploadImagesFolder;

    if ($model->filename) {
        $path = Yii::app()->baseUrl . '/' . $folder . '/' . $model->filename;
    } else {
        $path = Shop::register('no-pic.jpg');
    }

    echo CHtml::image($path,
        $model->title,
        array(
            'class' => 'img-responsive',
            'title' => $model->title,
            'style' => '',
            'width' => isset($thumb) && $thumb ? Shop::module()->imageWidthThumb : Shop::module()->imageWidth)
    );

    if (!Yii::app()->user->isGuest)
        echo CHtml::link(Yii::t('ShopModule.shop', 'Xóa'),
            array('delete', 'id' => $model->id)); ?>
</div>
