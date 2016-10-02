<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'image-form',
        'htmlOptions' => array('enctype' => 'multipart/form-data'),
        'enableAjaxValidation' => false,
    )); ?>

    <p class="note">Những trường <span class="required">*</span> không được để trống.</p>
    <?php echo $form->errorSummary($model, $header = 'Thông báo lỗi:'); ?>

    <div class="row" style="height: 60px;">
        <?php echo $form->labelEx($model, 'title'); ?>
        <?php echo $form->textField($model, 'title', array('size' => 45, 'maxlength' => 45, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'title'); ?>
    </div>

    <?php
    $path = Shop::register('no-pic.jpg');
    if($model->filename) {
        $path = Yii::app()->baseUrl. '/' . $folder . '/' . $model->filename;
        ?>
    <div class="row">
        <?php
        $folder = Shop::module()->bannerFolder;
        echo CHtml::image($path,
            $model->filename,
            array(
                'class'=> 'img-responsive',
                'title' => $model->filename,
                'style' => '',
                )
        );
        ?>
    </div>
    <?php } ?>

    <div class="row">
        <?php echo $form->labelEx($model, 'filename'); ?>
        <?php echo $form->fileField($model, 'filename', array('size' => 45, 'maxlength' => 45, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'filename'); ?>
    </div>

    <div class="row buttons">
        <div class="row buttons">
            <?php echo CHtml::submitButton($model->isNewRecord ?
                Yii::t('ShopModule.shop', 'Thêm')
                : Yii::t('ShopModule.shop', 'Lưu'),
                array('class' => 'btn-next btn-upper btn btn-primary checkout-page-button checkout-continue')); ?>
            <?php echo CHtml::link('Hủy', array('//shop/banner/admin'), array('class' => 'btn btn-default')); ?>
        </div>

        <?php $this->endWidget(); ?>

    </div><!-- form -->
