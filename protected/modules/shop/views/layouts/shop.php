<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/resources/assets/css/bootstrap.min.css">
	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">

	<div id="header">
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
	</div><!-- header -->


	<?php $this->widget('zii.widgets.CBreadcrumbs', array(
		'links'=>$this->breadcrumbs,
	)); ?><!-- breadcrumbs -->
		<div id="mainmenu">
		<?php
	$items = array();
	$items[] = array('label'=>'Home', 'url'=>array('/shop/products/admin'));
	/*$items[] = array('label'=>'All', 'url'=>array('/shop/products/indexAdmin'));*/
	/*foreach(Category::model()->findAll() as $category)
	$items[] = array(
			'label' => $category->title,
			'url' => array(
				'//shop/category/view', 'id' => $category->category_id));*/
	/*$items[] = array('label'=>'Admin', 'url'=>array('/shop/shop/admin'));*/
	$items[] = array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest);

 $this->widget('zii.widgets.CMenu',array(
			'items'=>$items,
		)); ?>
	</div><!-- mainmenu -->

	<div id="content">
	<div style="float: right; max-height: 160px; width: 160px; margin: 5px;">
	<?php
	$this->widget('ShoppingCartWidget'); 
	/*$this->widget('ProductCategoriesWidget'); */
	if(!Yii::app()->user->isGuest) 
		$this->widget('AdminWidget');

	?>	
	</div>

	<div style="width: 700px;">
	<?php echo $content; ?>
	</div>
	</div>

	<div style="clear: both;"></div>

	<div id="footer">
		Copyright &copy; <?php echo date('Y'); ?> by My Company.<br/>
		All Rights Reserved.<br/>
		<?php echo Yii::powered(); ?>
	</div><!-- footer -->

</div><!-- page -->

</body>
</html>
