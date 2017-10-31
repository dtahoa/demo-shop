<?php

class HomeController extends Controller
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
        $criteria = array();
        if(isset($_GET['search']))
            $criteria = new CDbCriteria( array(
                'condition' => "title LIKE :match",
                'params'    => array(':match' => "%". $_GET['search']['name'] ."%")
            ));


        $dataProvider = new CActiveDataProvider('Products', array(
            'criteria'=>$criteria,
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
