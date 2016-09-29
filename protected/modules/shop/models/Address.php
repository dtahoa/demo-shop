<?php

/**
 * This is the model class for table "shop_address".
 *
 * The followings are the available columns in table 'shop_address':
 * @property integer $id
 * @property string $street
 * @property string $zipcode
 * @property string $city
 * @property string $country
 */
class Address extends CActiveRecord
{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public static function isEmpty($vars) {
		return 
			$vars['street'] == '' 
			|| $vars['zipcode'] == '' 
			|| $vars['city'] == '' 
			|| $vars['country'] == ''; 
	}

	public function renderAddress() {
		echo $this->firstname . '<br />';
        echo $this->phone . '<br />';
		echo $this->street . '<br />';
		echo $this->zipcode . ' ' . $this->city . '<br />';
		echo $this->country;
	}

	public function tableName()
	{
		return 'shop_address';
	}

	public function rules()
	{
		return array(
			array('firstname, phone, street', 'required', 'message'=>'Vui lòng điền đầy đủ thông tin cho {attribute}.'),
			array('firstname, phone, street, zipcode, city, country', 'length', 'max'=>255),
			array('id, firstname, phone, street, zipcode, city, country', 'safe', 'on'=>'search'),
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
			'firstname' => Yii::t('ShopModule.shop', 'Họ & Tên'),
			'lastname' => Yii::t('ShopModule.shop', 'Tên'),
            'phone' => Shop::t('Điện thoại'),
			'street' => Shop::t('Địa chỉ'),
			'zipcode' =>Shop::t('Mã vùng'),
            'city' => Shop::t('Thành phố'),
			'country' => Shop::t('Quốc gia'),
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('street',$this->street,true);
		$criteria->compare('zipcode',$this->zipcode,true);
		$criteria->compare('city',$this->city,true);
		$criteria->compare('country',$this->country,true);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}
