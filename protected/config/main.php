<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'Văn phòng phẩm Minh Tú',
    'theme'=>'bootstrap',
    'timeZone' => 'Asia/Ho_Chi_Minh',

	// preloading 'log' component
	'preload'=>array('log'),

	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),
	'defaultController'=>'shop/home/index',
	'modules'=>array(
		// uncomment the following to enable the Gii tool

		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'123',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),

        'shop' => array(
            'debug' => true,
            'loginUrl' => array('/user/auth')
        ),
	),

	// application components
	'components'=>array(

		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
		),

		// uncomment the following to enable URLs in path-format

        'urlManager'=>array(
            'urlFormat'=>'path',
            'showScriptName'=>false,
            'rules'=>array(
                '<controller:\w+>/<id:\d+>'=>'<controller>/view',
                '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
                '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                'admin/dang-nhap' =>'site/login',
                'danh-muc/san-pham/<id:\d+>' => array('shop/category/view', 'urlSuffix'=>'.html'),
                'albums/anh-cuoi-dep' => array('shop/albumAnhCuoiDep/index', 'urlSuffix'=>'.html'),
                'albums/anh-phong-su-cuoi-dep' => array('shop/albumAnhPSCDep/index', 'urlSuffix'=>'.html'),
                'albums/anh-gia-dinh' => array('shop/albumAnhGiaDinh/index', 'urlSuffix'=>'.html'),
                'albums/anh-be-yeu' => array('shop/albumAnhBeYeu/index', 'urlSuffix'=>'.html'),
                'albums/chup-anh-thoi-trang-dep' => array('shop/albumAnhThoiTrang/index', 'urlSuffix'=>'.html'),
                'gioi-thieu-studio-mai-cuoi' => array('shop/pages/index', 'urlSuffix'=>'.html'),
                'bao-gia-khuyen-mai' => array('shop/quotation/view/id/1', 'urlSuffix'=>'.html'),
                'video/video-wedding' => array('shop/videoWedding/index', 'urlSuffix'=>'.html'),
            ),
        ),
        'yexcel' => array(
            'class' => 'application.extensions.yexcel.Yexcel'
        ),

		// database settings are configured in database.php
		'db'=>require(dirname(__FILE__).'/database.php'),

		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>YII_DEBUG ? null : 'site/error',
		),

		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
                // uncomment the following to show log messages on web pages
                array(
                    'class'=>'CFileLogRoute',
                    'levels'=>'trace, info',
                    'categories'=>'system.*',
                ),
                // uncomment the following to show log messages on web pages
                /*array(
                    'class'=>'CWebLogRoute',
                    'levels'=>'trace',
                    'showInFireBug'=>true
                ),
                array(
                    'class'=>'CEmailLogRoute',
                    'levels'=>'error, warning',
                    'emails'=>array('jnguyenhoa@gmail.com'),
                ),*/
			),
		),
        'userCounter' => array(
            // Use this when you copied the file to components folder
            'class' => 'application.components.UserCounter',
            // You can setup these options:
            'tableUsers' => 'pcounter_users',
            'tableSave' => 'pcounter_save',
            'autoInstallTables' => true,
            'onlineTime' => 10, // min
        ),
        'widgetFactory' => array(
            'widgets' => array(
                'CLinkPager' => array(
                    'htmlOptions' => array(
                        'class' => 'pagination'
                    ),
                    'header' => false,
                    'maxButtonCount' => 5,
                    'cssFile' => false,
                    'nextPageLabel'=>'Trang kế',
                    'prevPageLabel'=>'Trang trước',
                    'lastPageLabel'=>'Trang cuối',
                    'firstPageLabel'=>'Trang đầu',
                ),
                'CGridView' => array(
                    'htmlOptions' => array(
                        'class' => 'table-responsive'
                    ),
                    'pagerCssClass' => 'dataTables_paginate paging_bootstrap',
                    'itemsCssClass' => 'table table-striped table-hover',
                    'cssFile' => false,
                    'summaryCssClass' => 'dataTables_info',
                    'summaryText' => 'Showing {start} to {end} of {count} entries',
                    'template' => '{items}<div class="row"><div class="col-md-5 col-sm-12">{summary}</div><div class="col-md-7 col-sm-12">{pager}</div></div><br />',
                ),
            ),
        ),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'webmaster@example.com',
	),
);
