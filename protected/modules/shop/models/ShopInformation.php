<?php

/**
 * This is the model class for table "shop_information".
 *
 * The followings are the available columns in table 'shop_information':
 * @property integer $id
 * @property string $name
 * @property string $logo
 * @property string $working_time
 * @property string $phone
 * @property string $fax
 * @property string $email
 * @property string $email_kinhdoanh
 * @property string $address
 * @property string $map
 * @property string $description
 * @property string $hotline
 */
class ShopInformation extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'shop_information';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('phone, email', 'required'),
			array('name, logo, phone, fax, email, email_kinhdoanh, address, hotline', 'length', 'max'=>255),
			array('working_time, map, description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, logo, working_time, phone, fax, email, email_kinhdoanh, address, map, description, hotline', 'safe', 'on'=>'search'),
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
			'id' => 'ID',
			'name' => 'Name',
			'logo' => 'Logo',
			'working_time' => 'Working Time',
			'phone' => 'Phone',
			'fax' => 'Fax',
			'email' => 'Email',
			'email_kinhdoanh' => 'Email Kinhdoanh',
			'address' => 'Address',
			'map' => 'Map',
			'description' => 'Description',
			'hotline' => 'Hotline',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('logo',$this->logo,true);
		$criteria->compare('working_time',$this->working_time,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('fax',$this->fax,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('email_kinhdoanh',$this->email_kinhdoanh,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('map',$this->map,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('hotline',$this->hotline,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return ShopInformation the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
