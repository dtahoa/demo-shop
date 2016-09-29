<?php $model=ShopInformation::model()->findByPk(1); ?>

<div class="phone inline">
	<i class="icon fa fa-phone"></i> <?php echo $model->phone;?>
</div>
<div class="contact inline">
	<i class="icon fa fa-envelope"></i> <?php echo $model->email_kinhdoanh;?>
</div>
