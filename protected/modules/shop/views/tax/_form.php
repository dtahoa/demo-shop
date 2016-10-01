<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'tax-form',
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model, $header = 'Thông báo lỗi:'); ?>

	<div class="row" style="height: 70px;">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'percent'); ?>
		<?php echo $form->textField($model,'percent', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'percent'); ?>
	</div>

	<div class="row buttons">
	<?php echo CHtml::submitButton($model->isNewRecord 
			? Shop::t('Thêm mới')
			: Shop::t('Lưu'), array('class'=>'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
