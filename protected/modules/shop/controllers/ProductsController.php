<?php

class ProductsController extends Controller
{
	public $_model;


	public function filters()
	{
		return array(
			'accessControl',
		);
	}	

	public function accessRules() {
		return array(
				array('allow',
					'actions'=>array('view', 'index', 'list'),
					'users' => array('*'),
					),
				array('allow',
					'actions'=>array('admin','delete','create','update', 'view', 'indexAdmin'),
					'users' => array('admin'),
					),
				array('deny',  // deny all other users
						'users'=>array('*'),
						),
				);
	}

	public function beforeAction($action) {
        if(!Yii::app()->user->isGuest)
            $this->layout = Shop::module()->adminLayout;
        else
		    $this->layout = Shop::module()->layout;
		return parent::beforeAction($action);
	}

	public function actionView()
	{
        if(!Yii::app()->user->isGuest)
            $this->render('_viewAdmin',array(
                'data'=>$this->loadModel(),
            ));
        else
            $this->render('view',array(
                'model'=>$this->loadModel(),
            ));
	}

	public function actionCreate()
	{
		$model=new Products;

		 $this->performAjaxValidation($model);

		if(isset($_POST['Products']))
		{
			$model->attributes=$_POST['Products'];
			if(isset($_POST['Specifications']))
				$model->setSpecifications($_POST['Specifications']);


			if($model->save())
				$this->redirect(array('//shop/products/admin'));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function actionUpdate($id, $return = null)
	{
		$model=$this->loadModel();

		$this->performAjaxValidation($model);

		if(isset($_POST['Products']))
		{
			$model->attributes=$_POST['Products'];
			if(isset($_POST['Specifications']))
				$model->setSpecifications($_POST['Specifications']);
			if(isset($_POST['Variations']))
				$model->setVariations($_POST['Variations']);

			if($model->save())
				if($return == 'product')
					$this->redirect(array('products/update', 'id' => $model->product_id));
				else
					$this->redirect(array('products/admin'));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'index' page.
	 */
	public function actionDelete()
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel()->delete();

			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_POST['ajax']))
				$this->redirect(array('index'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
        $dataProvider = new CActiveDataProvider('Products', array(
            'pagination'=>array(
                'pageSize'=>12,
            ),
        ));

        if(!Yii::app()->user->isGuest)
            $this->redirect(array('//shop/products/admin'));
        else
            $this->render('index',array(
                'dataProvider'=>$dataProvider,
            ));
	}

    /*public function actionIndexAdmin()
    {
        $dataProvider = new CActiveDataProvider('Products', array(
            'pagination'=>array(
                'pageSize'=>12,
            ),
        ));

        $this->render('indexAdmin',array(
            'dataProvider'=>$dataProvider,
        ));
    }*/

    public function actionList()
    {
        $dataProvider = new CActiveDataProvider('Products', array(
            'pagination'=>array(
                'pageSize'=>12,
            ),
        ));

        $this->render('list',array(
            'dataProvider'=>$dataProvider,
        ));
    }

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Products('search');
        $model->unsetAttributes();  // clear any default values
		if(isset($_GET['Products']))
			$model->attributes=$_GET['Products'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

    /**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 */
	public function loadModel()
	{
		if($this->_model===null)
		{
			if(isset($_GET['id']))
				$this->_model=Products::model()->findbyPk($_GET['id']);
			if($this->_model===null)
				throw new CHttpException(404,'The requested page does not exist.');
		}
		return $this->_model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='products-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
