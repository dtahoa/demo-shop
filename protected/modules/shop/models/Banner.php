<?php

class Banner extends CActiveRecord
{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return Yii::app()->controller->module->bannerTable;
	}

	public function rules()
	{
		return array(
			array('title, filename', 'required'),
			array('id', 'numerical', 'integerOnly'=>true),
			array('title, filename', 'length', 'max'=>45),
			//array('filename' => 'file', 'types' => 'png,gif,jpg,jpeg'),
			array('id, title, filename', 'safe', 'on'=>'search'),
		);
	}

	public function relations()
	{
		return array(

		);
	}

	public function attributeLabels()
	{
		return array(
			'id' => 'No.',
			'title' => Yii::t('shop', 'Mô tả'),
			'filename' => Yii::t('shop', 'Banner')
		);
	}

	public function search()
	{
		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);

		$criteria->compare('title',$this->title,true);

		$criteria->compare('filename',$this->filename,true);

		return new CActiveDataProvider('Banner', array(
			'criteria'=>$criteria,
		));
	}
}
