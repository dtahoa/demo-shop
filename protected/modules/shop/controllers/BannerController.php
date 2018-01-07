<?php

class BannerController extends Controller
{
    public $_model;

    public function beforeAction($action)
    {
        if (!Yii::app()->user->isGuest)
            $this->layout = Shop::module()->adminLayout;
        else
            $this->layout = Shop::module()->layout;
        return parent::beforeAction($action);
    }

    public function actionView()
    {
        $this->render('view', array(
            'model' => $this->loadModel(),
        ));
    }

    public function actionCreate()
    {
        $model = new Banner;

        if (isset($_POST['Banner'])) {
            $model->attributes = $_POST['Banner'];
            $model->filename = CUploadedFile::getInstance($model, 'filename');
            if ($model->save()) {
                $folder = Yii::app()->controller->module->bannerFolder;
                $model->filename->saveAs($folder . '/' . $model->filename);
                $this->redirect(array('//shop/banner/admin/'));
            }
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    public function actionUpdate()
    {
        $model = $this->loadModel();

        // $this->performAjaxValidation($model);

        if (isset($_POST['Banner'])) {
            $model->attributes = $_POST['Banner'];
            if ($model->save())
                $this->redirect(array('view', 'id' => $model->id));
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    public function actionDelete()
    {
        $this->loadModel()->delete();

        if (!isset($_POST['ajax']))
            $this->redirect(Yii::app()->user->returnUrl);
        //$this->redirect(array('//shop/products/admin'));
    }

    /**
     * Lists all models.
     */
    public function actionIndex()
    {
        $dataProvider = new CActiveDataProvider('Banner');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    public function actionAdmin()
    {
        $model = new Banner('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Banner']))
            $model->attributes = $_GET['Banner'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     */
    public function loadModel()
    {
        if ($this->_model === null) {
            if (isset($_GET['id']))
                $this->_model = Banner::model()->findbyPk($_GET['id']);
            if ($this->_model === null)
                throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $this->_model;
    }

    /**
     * Performs the AJAX validation.
     * @param CModel the model to be validated
     */
    protected function performAjaxValidation($model)
    {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'image-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }
}
