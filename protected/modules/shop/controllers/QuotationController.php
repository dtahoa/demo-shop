<?php

class QuotationController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	//public $layout='//layouts/column2';

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
    public function beforeAction($action) {
        if(!Yii::app()->user->isGuest)
            $this->layout = Shop::module()->adminLayout;
        else
            $this->layout = Shop::module()->layout;
        return parent::beforeAction($action);
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
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete','importQuotation'),
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
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
        $model=Quotation::model()->findByPk(1);
        if (!$model)
	        $model=new Quotation;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Quotation']))
		{
			$model->attributes=$_POST['Quotation'];
            $model->filename = CUploadedFile::getInstance($model, 'filename');
            $model->id = 1;
			if($model->save()) {
                $folder = Yii::app()->controller->module->dataFolder;
                $filePath = $folder . '/' . $model->filename;
                $model->filename->saveAs($filePath);
                $this->importCategory($filePath);
                $this->importQuotation($filePath);
                $this->redirect(array('view','id'=>$model->id));
            }

		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	public function importQuotation($filePath) {
        try {
            $sheet_array = Yii::app()->yexcel->readSheetByName($filePath, 2);
            unset($sheet_array[1]);
            unset($sheet_array[2]);
            unset($sheet_array[3]);

            foreach ($sheet_array as $key => $value) {
                if (empty($value['C'])) {
                    break;
                }
                $model=Products::model()->findByPk($value['C']);
                if (!$model) {
                    $model = new Products();
                }
                $model->product_id = $value['C'];
                $model->category_id = $value['B'];
                $model->tax_id = 1;
                $model->title = $value['D'];
                $model->description = $value['F'];
                $model->price = $value['G'];
                $model->language = "A";
                $model->specifications = "A";
                $model->is_discount = isset($value['H']) ? $value['H'] : 0;
                $model->is_highlight = isset($value['I']) ? $value['I'] : 0;
                $model->save();
            }
            return true;
        } catch(Exception $e) {
            print_r($e);
        }
    }

    public function importCategory($filePath) {
        try {
            $sheet_array = Yii::app()->yexcel->readSheetByName($filePath, 3);
            unset($sheet_array[1]);
            unset($sheet_array[2]);
            unset($sheet_array[3]);
            foreach ($sheet_array as $key => $value) {
                if (empty($value['A'])) {
                    break;
                }
                $criteria = new CDbCriteria;
                $criteria->condition ='category_id = '.$value['A'];
                $model = Category::model()->find($criteria);
                if (!$model) {
                    $model = new Category();
                }
                $model->category_id = $value['A'];
                $model->parent_id = $value['B'];
                $model->title = $value['C'];
                $model->description = isset($value['D']) ? $value['D'] : null;
                $model->language = null;
                $model->save();
            }
            return true;
        } catch(Exception $e) {
            print_r($e);
        }
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

		if(isset($_POST['Quotation']))
		{
            if($_POST['Quotation']['filename'] == null) {
                $_POST['Quotation']['filename'] = $model->filename;
            }

		    $model->attributes=$_POST['Quotation'];
            $uploadedFile = CUploadedFile::getInstance($model, 'filename');
			if($model->save()) {
                if($uploadedFile !== null) {
                    $folder = Yii::app()->controller->module->dataFolder;
                    $uploadedFile->saveAs($folder . '/' . $model->filename);
                }
                $this->redirect(array('view','id'=>$model->id));
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
		$dataProvider=new CActiveDataProvider('Quotation');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Quotation('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Quotation']))
			$model->attributes=$_GET['Quotation'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Quotation the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Quotation::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Quotation $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='quotation-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
