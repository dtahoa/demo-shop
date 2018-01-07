<?php

class ShopInformationController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	//public $layout='//layouts/column2';
    public function beforeAction($action) {
        if(!Yii::app()->user->isGuest)
            $this->layout = Shop::module()->adminLayout;
        else
            $this->layout = Shop::module()->layout;
        return parent::beforeAction($action);
    }

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view', 'info', 'lienhe'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionLienhe($id)
    {
        $this->render('lienhe',array(
            'model'=>$this->loadModel($id),
        ));
    }

    /**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new ShopInformation;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ShopInformation']))
		{
            $model->attributes=$_POST['ShopInformation'];
            $model->logo = CUploadedFile::getInstance($model, 'logo');
            if($model->save()) {
                $folder = Yii::app()->controller->module->productImagesFolder;
                $model->logo->saveAs($folder . '/' . $model->logo);
                //$this->redirect(array('view','id'=>$model->id));
                $this->redirect(array('//shop/shopInformation/admin'));
            }
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['ShopInformation']))
		{
            if($_POST['ShopInformation']['logo'] == null) {
                $_POST['ShopInformation']['logo'] = $model->logo;
            }

		    $model->attributes=$_POST['ShopInformation'];
            $uploadedFile = CUploadedFile::getInstance($model, 'logo');
            if($model->save()) {
                if($uploadedFile !== null) {
                    $folder = Yii::app()->controller->module->productImagesFolder;
                    $uploadedFile->saveAs($folder . '/' . $model->logo);
                }

                //$this->redirect(array('view','id'=>$model->id));
                $this->redirect(array('//shop/shopInformation/admin'));
            }
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('ShopInformation');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new ShopInformation('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['ShopInformation']))
			$model->attributes=$_GET['ShopInformation'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return ShopInformation the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=ShopInformation::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param ShopInformation $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='shop-information-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
