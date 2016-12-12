<?php
/* @var $this ContactController */
/* @var $model Contact */

$this->breadcrumbs=array(
	'Contacts'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Contact', 'url'=>array('index')),
	array('label'=>'Manage Contact', 'url'=>array('admin')),
);
?>

<div class="row inner-bottom-sm">
	<div class="contact-page">
		<div class="col-md-12 contact-map outer-bottom-vs">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3916.856788281344!2d106.49434501480252!3d10.974180492187486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310b2b7d77c4f3ef%3A0x5cc600a066893181!2zQ-G7rWEgSMOgbmcgVsSDbiBQaMOybmcgUGjhuqltIE1pbmggVMO6!5e0!3m2!1sen!2s!4v1481510373088" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		<h3>Nhập thông tin liên hệ</h3>
		<hr>
		<div class="col-md-12">
			<?php $this->renderPartial('_form', array('model'=>$model)); ?>
		</div>
	</div>
</div>

