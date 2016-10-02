<?php

class ShopController extends Controller
{
	public $breadcrumbs;
	public $menu;
	public $_model;

	public function actionInstall() 
	{
		if($this->module->debug) 
		{
			if(Yii::app()->request->isPostRequest) 
			{
				if($db = Yii::app()->db) {

				} else {
					throw new CException(Yii::t('shop', 'Database Connection is not working'));	
				}
			}
			else {
				$this->render('install');
			}
		} else {
			throw new CException(Shop::t('Webshop is not in Debug Mode'));	
		}
	}

	public function filters()
	{
		return array(
			'accessControl',
		);
	}	

	public function accessRules() {
		return array(
				array('allow',
					'actions'=>array('install', 'index'),
					'users' => array('*'),
					),
				array('allow',
					'actions'=>array('admin'),
					'users' => array('admin'),
					),
				array('deny',  // deny all other users
						'users'=>array('*'),
						),
				);
	}

	public function actionAdmin()
	{
        $modelProduct=new Products('search');
        $modelProduct->unsetAttributes();  // clear any default values
        if(isset($_GET['Products']))
            $modelProduct->attributes=$_GET['Products'];

        $modelCategory=new Category('search');
        $modelCategory->unsetAttributes();  // clear any default values
        if(isset($_GET['Category']))
            $modelCategory->attributes=$_GET['Category'];

        $modelOrder=new Order('search');
        $modelOrder->unsetAttributes();  // clear any default values
        if(isset($_GET['Order']))
            $modelOrder->attributes=$_GET['Order'];

	    $this->render('admin', array('modelProduct'=>$modelProduct, 'modelCategory'=>$modelCategory, 'modelOrder'=>$modelOrder));
	}

	public function actionIndex()
	{
		$this->redirect(array('//shop/products/index'));
	}
}
