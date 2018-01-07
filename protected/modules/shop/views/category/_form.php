<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'category-form',
        'enableAjaxValidation' => true,
    )); ?>

    <?php echo $form->errorSummary($model, $header = 'Thông báo lỗi:'); ?>

    <div class="row" style="height: 60px">
        <?php echo $form->labelEx($model, 'parent_id'); ?>
        <?php
        $this->widget('application.modules.shop.components.Relation',
            array(
                'model' => $model,
                'relation' => 'parent',
                'fields' => 'title',
                'showAddButton' => false,
                'allowEmpty' => Shop::t('Danh mục gốc'),
                'htmlOptions' => array('class' => 'form-control'),
            )); ?>
        <?php echo $form->error($model, 'parent_id'); ?>
    </div>

    <div class="row">
        <?php echo $form->labelEx($model, 'title'); ?>
        <?php echo $form->textField($model, 'title', array('size' => 45, 'maxlength' => 45, 'class' => 'form-control')); ?>
        <?php echo $form->error($model, 'title'); ?>
    </div>

    <!--<div class="row">
        <?php /*echo $form->labelEx($model, 'language'); */ ?>
        <?php /*echo $form->textField($model, 'language', array('size' => 45, 'maxlength' => 45, 'class'=>'form-control')); */ ?>
        <?php /*echo $form->error($model, 'language'); */ ?>
    </div>-->

    <div class="row">
        <?php echo $form->labelEx($model, 'description'); ?>
        <?php echo $form->textArea($model, 'description', array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'description'); ?>
    </div>


    <div class="row buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? Yii::t('ShopModule.shop', 'Tạo mới') : Yii::t('ShopModule.shop', 'Lưu'), array('class' => 'btn btn-primary')); ?>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->
