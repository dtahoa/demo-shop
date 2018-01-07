<?php
/* @var $this PagesController */
/* @var $model Pages */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'pages-form',
	'htmlOptions'=>array('enctype' => 'multipart/form-data'),
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
		<?php echo $form->labelEx($model,'image_profile'); ?>
		<?php echo $form->fileField($model,'image_profile',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'image_profile'); ?>
	</div>

	<div class="row">
		<?php
		$folder = Shop::module()->uploadImagesFolder;
		if($model->image_profile)
			$path = Yii::app()->baseUrl. '/' . $folder . '/' . $model->image_profile;
		else
			$path = Shop::register('no-pic.jpg');

		echo CHtml::image($path,
			$model->image_profile,
			array(
				'class'=> 'img-responsive',
				'title' => $model->image_profile,
				'style' => '',
				'width' => '150px')
		);
		?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'content'); ?>
		<?php echo $form->textArea($model,'content',array('size'=>60,'maxlength'=>255, 'class'=>'form-control', 'rows'=> 2, 'cols'=>50)); ?>
		<?php echo $form->error($model,'content'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'images_embed'); ?>
		<?php echo $form->textArea($model,'images_embed',array('class'=>'form-control', 'rows'=> 10, 'cols'=>50)); ?>
		<?php echo $form->error($model,'images_embed'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ?
			Yii::t('ShopModule.shop', 'Thêm')
			: Yii::t('ShopModule.shop', 'Lưu'),
			array('class'=>'btn btn-primary')); ?>
		<?php echo CHtml::button('Hủy', array('submit' => array('//shop/albumAnhBeYeu/admin'), 'class'=>'btn btn-default')); ?>
	</div>
</div>

<?php $this->endWidget(); ?>

</div><!-- form -->