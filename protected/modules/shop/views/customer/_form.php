<div class="form-group">
	<div class="col-md-10">
		<?php
		if(isset($action) && $action !== null)
			$form=$this->beginWidget('CActiveForm', array(
				'id'=>'customer-form',
				'action' => $action,
				'enableAjaxValidation'=>false,
				'htmlOptions'=> array('class'=>'form-horizontal','role'=>'form')
			));
		else
			$form=$this->beginWidget('CActiveForm', array(
				'id'=>'customer-form',
				'enableAjaxValidation'=>false,
				'htmlOptions'=> array('class'=>'form-horizontal','role'=>'form')
			)); ?>
		<fieldset>
			<?php echo $form->hiddenField($customer, 'user_id', array('value'=> Yii::app()->user->id)); ?>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Họ *</label>
				<div class="col-sm-10">
					<?php echo $form->textField($address,'firstname',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'firstname', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Tên *</label>
				<div class="col-sm-10">
					<?php echo $form->textField($address,'lastname',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'lastname', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Email *</label>
				<div class="col-sm-10">
					<?php echo $form->textField($customer,'email',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($customer,'email', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Địa chỉ *</label>
				<div class="col-sm-10">
					<?php echo $form->textField($address,'street',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'street', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Mã vùng</label>
				<div class="col-sm-4">
					<?php echo $form->textField($address,'zipcode',array('size'=>10,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'zipcode', array('class'=>'lb-error')); ?>
				</div>
				<label class="col-sm-2 control-label lb-customer" for="textinput">Thành phố</label>
				<div class="col-sm-4">
					<?php echo $form->textField($address,'city',array('size'=>32,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'city', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label lb-customer" for="textinput">Quốc gia</label>
				<div class="col-sm-10">
					<?php echo $form->textField($address,'country',array('size'=>45,'maxlength'=>45, 'class'=>'form-control')); ?>
					<?php echo $form->error($address,'country', array('class'=>'lb-error')); ?>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="pull-right">
					<?php echo CHtml::submitButton($customer->isNewRecord
						? Yii::t('ShopModule.shop', 'Đăng kí')
						: Yii::t('ShopModule.shop', 'Lưu')
						,array('id'=>'next', 'class'=>'btn btn-primary')
					); ?>
					</div>
				</div>
			</div>
		</fieldset>
		<?php $this->endWidget(); ?>
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->