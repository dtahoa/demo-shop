<?php
/* @var $this ContactController */
/* @var $model Contact */
/* @var $form CActiveForm */
?>
<div class="form-group">
    <div class="col-md-10">

        <?php $form=$this->beginWidget('CActiveForm', array(
            'id'=>'customer-form',
            'enableAjaxValidation'=>false,
            'htmlOptions'=> array('class'=>'form-horizontal','role'=>'form')
        )); ?>
        <fieldset>

            <div class="form-group">
                <label class="col-sm-2 control-label lb-customer" for="textinput">Họ & Tên*</label>
                <div class="col-sm-10">
                    <?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
                    <?php echo $form->error($model,'name', array('class'=>'lb-error')); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label lb-customer" for="textinput">Email*</label>
                <div class="col-sm-10">
                    <?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
                    <?php echo $form->error($model,'email', array('class'=>'lb-error')); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label lb-customer" for="textinput">Tiêu đề*</label>
                <div class="col-sm-10">
                    <?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
                    <?php echo $form->error($model,'subject', array('class'=>'lb-error')); ?>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label lb-customer" for="textinput">Nội dung*</label>
                <div class="col-sm-10">
                    <?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50, 'class'=>'form-control')); ?>
                    <?php echo $form->error($model,'body', array('class'=>'lb-error')); ?>
                </div>
            </div>
            <?php if(extension_loaded('gd')): ?>
                <div class="form-group">
                    <?php echo $form->labelEx($model,'verifyCode'); ?>
                    <label class="col-sm-2 control-label lb-customer" for="textinput">Mã xác nhận*</label>
                    <div class="col-sm-10">
                        <?php $this->widget('CCaptcha'); ?>
                        <?php echo $form->textField($model,'verifyCode', array('class'=>'form-control')); ?>
                    </div>
                </div>
            <?php endif; ?>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="pull-left">
                        <?php echo CHtml::submitButton($model->isNewRecord
                            ? Yii::t('ShopModule.shop', 'Gửi')
                            : Yii::t('ShopModule.shop', 'Lưu')
                            ,array('id'=>'next', 'class'=>'btn btn-primary')
                        ); ?>
                    </div>
                </div>
            </div>
        </fieldset>
        <?php $this->endWidget(); ?>
    </div>
</div>
