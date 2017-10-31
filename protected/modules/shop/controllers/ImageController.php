<?php

class ImageController extends Controller
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
        $model = new Image;

        if (isset($_POST['Image'])) {
            $model->attributes = $_POST["Image"];
            // uploader dir
            $dir = realpath( Yii::app( )->getBasePath( )."/../images/uploads/tmp/" )."/";
            // get the array of CUploadedFile objects per files //

            $fileobjects = CUploadedFile::getInstances($model, 'files');
            /*
            * without model object you place following code
            * $filemodel = CUploadedFile::getInstances('Gallery[files]');
            */
            foreach ($fileobjects as $file) {
                // generate file name
                $randno = rand(11111, 99999);
                $filename = $randno . $file->name;
                $model->filename = $filename;
                if($model->save()) {
                    $dirfile = $dir . $filename;
                    // save file in your location ensure your files dir is writable //
                    $file->saveAs($dirfile);
                    chmod($dirfile, 0777);
                    // if you want resize the image user following code //
                    //
                    if (preg_match('/image/', $file->type)) {
                        // use convert command for resize file before make sure you get installed imagegick tool //
                        echo exec("convert " . $file . " -scale 220 " . $dir . "thumb_" . $filename);
                    }
                }
            }
            $this->redirect(array('//shop/image/admin/product_id/'.$_POST['Image']['product_id']));
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    public function actionUpdate()
    {
        $model = $this->loadModel();

        // $this->performAjaxValidation($model);

        if (isset($_POST['Image'])) {
            $model->attributes = $_POST['Image'];
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
        $dataProvider = new CActiveDataProvider('Image');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    public function actionAdmin()
    {
        $product = Products::model()->findByPk($_GET['product_id']);

        $images = $product->images;

        $this->render('admin', array('images' => $images, 'product' => $product));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     */
    public function loadModel()
    {
        if ($this->_model === null) {
            if (isset($_GET['id']))
                $this->_model = Image::model()->findbyPk($_GET['id']);
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
