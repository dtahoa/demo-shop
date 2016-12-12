<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'payment-method-form',
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model, $header = 'Thông báo lỗi:'); ?>

	<div class="row" style="height: 70px">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php /*echo $form->textArea($model,'description',array('rows'=>6, 'cols'=>50, 'class'=>'form-control')); */?>
		<?php $this->widget('application.extensions.extckeditor.ExtCKEditor', array(
			'model'=>$model,
			'attribute'=>'description',
			'language'=>'en',
			'editorTemplate'=>'basic'
		)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tax_id'); ?>
		<?php echo $form->textField($model,'tax_id', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'tax_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'price'); ?>
		<?php echo $form->textField($model,'price', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'price'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Thêm mới' : 'Lưu', array('class'=>'btn btn-primary')); ?>
		<?php echo CHtml::link('Hủy', array('//shop/paymenttMethod/admin'), array('class' => 'btn btn-default')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
