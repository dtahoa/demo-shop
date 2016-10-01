<?php
/* @var $this QuotationController */
/* @var $model Quotation */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'quotation-form',
    'htmlOptions'=>array('enctype' => 'multipart/form-data'),
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model, $header = 'Thông báo lỗi:'); ?>

	<div class="row" style="height: 70px;">
		<?php echo $form->labelEx($model,'filename'); ?>
		<?php echo $form->fileField($model,'filename',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'filename'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Thêm mới' : 'Lưu', array('class'=>'btn btn-primary')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->