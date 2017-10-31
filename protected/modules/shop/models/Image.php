<?php

class Image extends CActiveRecord
{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return Yii::app()->controller->module->imageTable;
	}

	public function rules()
	{
		return array(
			array('title, filename, album_id', 'required'),
			//array('id, product_id', 'numerical', 'integerOnly'=>true),
			array('title, filename', 'length', 'max'=>45),
			//array('filename' => 'file', 'types' => 'png,gif,jpg,jpeg'),
			array('id, title, filename, album_id', 'safe', 'on'=>'search'),
		);
	}

	public function relations()
	{
		return array(
			'Album' => array(self::BELONGS_TO, 'Albums', 'album_id'),
		);
	}

	public function attributeLabels()
	{
		return array(
			'id' => 'Id',
			'title' => Yii::t('shop', 'Mô tả'),
			'filename' => Yii::t('shop', 'Tên file'),
			'album_id' => Yii::t('shop', 'Mã album'),
		);
	}

	public function search()
	{
		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);

		$criteria->compare('title',$this->title,true);

		$criteria->compare('filename',$this->filename,true);

		$criteria->compare('album_id',$this->album_id);

		return new CActiveDataProvider('Image', array(
			'criteria'=>$criteria,
		));
	}
}
