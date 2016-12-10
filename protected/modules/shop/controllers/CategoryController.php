<?php

class CategoryController extends Controller
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
        if(!Yii::app()->user->isGuest) {
            $this->render('viewAdmin',array(
                'model'=>$this->loadModelAdmin(),
            ));
        } else {
            $model = $this->loadModel();
            $this->render('view',array(
                'dataProvider'=>$model[0],
                'model'=>$model[1],
            ));
        }
    }

    public function actionCreate()
    {
        $model=new Category;

        $this->performAjaxValidation($model);

        if(isset($_POST['Category']))
        {
            $model->attributes=$_POST['Category'];
            if($model->save())
                $this->redirect(array('//shop/products/admin'));
        }

        $this->render('create',array(
            'model'=>$model,
        ));
    }

    public function actionUpdate()
    {
        $model=$this->loadModel();

        $this->performAjaxValidation($model);

        if(isset($_POST['Category']))
        {
            $model->attributes=$_POST['Category'];
            if($model->save())
                $this->redirect(array('shop/admin'));
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
        $dataProvider=new CActiveDataProvider('Category');
        $this->render('index',array(
            'dataProvider'=>$dataProvider,
        ));
    }

    /**
     * Manages all models.
     */
    public function actionAdmin()
    {
        $model=new Category('search');
        $model->unsetAttributes();  // clear any default values
        if(isset($_GET['Category']))
            $model->attributes=$_GET['Category'];

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
        $dataProvider = null;
        if($this->_model===null)
        {
            if(isset($_GET['id'])) {
                $this->_model=Category::model()->findbyPk($_GET['id']);
                $dataProvider = new CActiveDataProvider('Products', array(
                    'criteria'=>array(
                        'condition'=>'category_id='.$_GET['id'],
                        'order'=>'title DESC',
                    ),
                    'pagination'=>array(
                        'pageSize'=>12,
                    ),
                ));
            }
            if($this->_model===null) {
                throw new CHttpException(404,'The requested page does not exist.');
            }
        }
        if(!Yii::app()->user->isGuest) {
            return $this->_model;
        } else {
            $res = array();
            array_push($res, $dataProvider, $this->_model);
            return $res;
        }


        // @TODO: Should check in ADMIN site
        //return $this->_model;
    }

    public function loadModelAdmin()
    {
        if($this->_model===null)
        {
            if(isset($_GET['id']))
                $this->_model=Category::model()->findbyPk($_GET['id']);
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
        if(isset($_POST['ajax']) && $_POST['ajax']==='category-form')
        {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }
}
