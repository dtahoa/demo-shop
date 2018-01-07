<?php

/**
 * This is the model class for table "galery_vay_cuoi".
 *
 * The followings are the available columns in table 'galery_vay_cuoi':
 * @property integer $id
 * @property string $tieu_de
 * @property string $hinh_anh
 * @property string $updated
 */
class GaleryVayCuoi extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'galery_vay_cuoi';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
            array('hinh_anh', 'required'),
			array('hinh_anh', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, tieu_de, hinh_anh', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'No.',
			'tieu_de' => 'Tiêu đề',
			'hinh_anh' => 'Hình ảnh',
			'updated' => 'Ngày cập nhật',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('tieu_de',$this->tieu_de,true);
		$criteria->compare('hinh_anh',$this->hinh_anh,true);
		$criteria->order = 'updated DESC';

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ThongTinChupAnhCuoi the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
