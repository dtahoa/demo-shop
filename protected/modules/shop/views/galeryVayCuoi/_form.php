<?php
/* @var $this ThongTinChupAnhCuoiController */
/* @var $model galeryVayCuoi */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'galery-vay-cuoi-form',
	'htmlOptions'=>array('enctype' => 'multipart/form-data'),
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Những cột <span class="required">*</span> bắt buộc điền vào.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row" style="height: 90px">
		<?php echo $form->labelEx($model,'tieu_de'); ?>
		<?php echo $form->textField($model,'tieu_de',array('size'=>60,'maxlength'=>255, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'tieu_de'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hinh_anh'); ?>
		<?php echo $form->fileField($model,'hinh_anh',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
		<?php echo $form->error($model,'hinh_anh'); ?>
	</div>

	<div class="row">
		<?php
			$folder = Shop::module()->uploadImagesFolder;
			if($model->hinh_anh)
				$path = Yii::app()->baseUrl. '/' . $folder . '/' . $model->hinh_anh;
			else
				$path = Shop::register('no-pic.jpg');

			echo CHtml::image($path,
				$model->hinh_anh,
				array(
					'class'=> 'img-responsive',
					'title' => $model->hinh_anh,
					'style' => '',
					'width' => '150px')
			);
		?>
	</div>
	</br>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Thêm mới' : 'Lưu', array('class'=>'btn btn-primary')); ?>
		<?php echo CHtml::button('Hủy', array('submit' => array('//shop/galeryVayCuoi/admin'), 'class'=>'btn btn-default')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->