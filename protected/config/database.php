<?php

// This is the database connection configuration.
return array(
	//'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
	// uncomment the following lines to use a MySQL database
	
	'connectionString' => 'mysql:host=localhost;dbname=vanphong_minhtu',
	'emulatePrepare' => true,
	'username' => 'vanphong_admin',
	'password' => '12345678zZ',
	'charset' => 'utf8',
);