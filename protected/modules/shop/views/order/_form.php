<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'order-form',
	'htmlOptions'=> array('class'=>'form-horizontal','role'=>'form'),
	'enableAjaxValidation'=>false,
)); ?>

	<!--<p class="note">Fields with <span class="required">*</span> are required.</p>-->
	<?php echo $form->errorSummary($model); ?>

	<!--<div class="row">
		<?php /*echo $form->labelEx($model,'order_id'); */?>
		<?php /*echo $form->textField($model,'order_id', array('disabled' => 'true')); */?>
		<?php /*echo $form->error($model,'order_id'); */?>
	</div>-->

	<div class="row">
		<?php echo $form->labelEx($model,'ordering_confirmed'); ?>
		<?php echo $form->checkBox($model,'ordering_confirmed'); ?>
		<?php echo $form->error($model,'ordering_confirmed'); ?>

		<?php echo $form->labelEx($model,'ordering_done'); ?>
		<?php echo $form->checkBox($model,'ordering_done'); ?>
		<?php echo $form->error($model,'ordering_done'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? Yii::t('ShopModule.shop', 'Create') : Yii::t('ShopModule.shop', 'Lưu')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
