<?php
/* @var $this PagesController */
/* @var $model Pages */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'pages-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<?php echo $form->errorSummary($model, $header='Thông báo lỗi:'); ?>

	<div class="row" style="height: 70px">
		<?php echo $form->labelEx($model,'title'); ?>
		<?php echo $form->textField($model,'title',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'title'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'content'); ?>
		<?php echo $form->textArea($model,'content',array('size'=>60,'maxlength'=>255, 'class'=>'form-control', 'rows'=> 2, 'cols'=>50)); ?>
		<?php echo $form->error($model,'content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'video_embed'); ?>
		<?php echo $form->textArea($model,'video_embed',array('class'=>'form-control', 'rows'=> 10, 'cols'=>50)); ?>
		<?php echo $form->error($model,'video_embed'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ?
			Yii::t('ShopModule.shop', 'Thêm')
			: Yii::t('ShopModule.shop', 'Lưu'),
			array('class'=>'btn btn-primary')); ?>
		<?php echo CHtml::button('Hủy', array('submit' => array('//shop/videoWedding/admin'), 'class'=>'btn btn-default')); ?>
	</div>
</div>

<?php $this->endWidget(); ?>

</div><!-- form -->