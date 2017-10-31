<?php

class MailController extends Controller
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
					'actions'=>array('index', 'create', 'confirm', 'success', 'failure'),
					'users' => array('*'),
					),
				array('allow',
					'actions'=>array('admin','delete', 'view', 'slip', 'invoice', 'update'),
					'users' => array('admin'),
					),
				array('deny',  // deny all other users
						'users'=>array('*'),
						),
				);
	}

	public function actionIndex()
	{
        $order = (object) [
            'order_id'=> 1
        ];
        $result = Shop::mailNotification($order);
        echo "<pre>";
        print_r($result);
        echo "<pre>";
	}
}
