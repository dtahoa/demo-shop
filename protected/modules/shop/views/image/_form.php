<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'image-form',
	'htmlOptions'=>array('enctype' => 'multipart/form-data'),
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Những trường <span class="required">*</span> không được để trống.</p>
	<?php echo $form->errorSummary($model, $header='Thông báo lỗi:'); ?>

	<div class="row" style="height: 60px;">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'filename'); ?>
		<?php echo CHtml::activeFileField($model,'files[]',array("id"=>"files","multiple"=>true,'size'=>45,'maxlength'=>45, 'class'=>'form-control'));; ?>
		<?php echo $form->error($model,'filename'); ?>

		<?php echo $form->error($model,'filename'); ?>
	</div>
		<?php echo $form->hiddenField($model,'product_id', array('value' => $_GET['product_id'])); ?>

	<div class="row buttons">
		<div class="row buttons">
			<?php echo CHtml::submitButton($model->isNewRecord ?
				Yii::t('ShopModule.shop', 'Thêm')
				: Yii::t('ShopModule.shop', 'Lưu'),
				array('class'=>'btn-next btn-upper btn btn-primary checkout-page-button checkout-continue')); ?>
		</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
