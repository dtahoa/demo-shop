<?php
/* @var $this ShopInformationController */
/* @var $model ShopInformation */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'shop-information-form',
	'htmlOptions'=>array('enctype' => 'multipart/form-data'),
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Những cột <span class="required">*</span> bắt buộc điền vào.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row" style="height: 45px">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>
	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php $this->widget('application.extensions.extckeditor.ExtCKEditor', array(
			'model'=>$model,
			'attribute'=>'description',
			'language'=>'en',
			'editorTemplate'=>'basic'
		)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'logo'); ?>
		<?php echo $form->fileField($model,'logo',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'logo'); ?>
	</div>

	<div class="row">
		<?php
			$folder = Shop::module()->productImagesFolder;
			if($model->logo)
				$path = Yii::app()->baseUrl. '/' . $folder . '/' . $model->logo;
			else
				$path = Shop::register('no-pic.jpg');

			echo CHtml::image($path,
				$model->logo,
				array(
					'class'=> 'img-responsive',
					'title' => $model->logo,
					'style' => '',
					'width' => '150px')
			);
		?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hotline'); ?>
		<?php echo $form->textField($model,'hotline',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'hotline'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'phone'); ?>
		<?php echo $form->textField($model,'phone',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'phone'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'fax'); ?>
		<?php echo $form->textField($model,'fax',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'fax'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email_kinhdoanh'); ?>
		<?php echo $form->textField($model,'email_kinhdoanh',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'email_kinhdoanh'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'address'); ?>
		<?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'address'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'working_time'); ?>
		<?php /*echo $form->textArea($model,'working_time',array('rows'=>6, 'cols'=>50)); */?>
		<?php $this->widget('application.extensions.extckeditor.ExtCKEditor', array(
			'model'=>$model,
			'attribute'=>'working_time',
			'language'=>'en',
			'editorTemplate'=>'basic'
		)); ?>
		<?php echo $form->error($model,'working_time'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'map'); ?>
		<?php echo $form->textArea($model,'map',array('rows'=>6, 'cols'=>120)); ?>
		<?php echo $form->error($model,'map'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->