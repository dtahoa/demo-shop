<?php

	class BillingAddress extends Address {

		// This address is not *required*
		public function rules()
		{
			return array(
					array('firstname, phone, street, zipcode, city, country', 'length', 'max'=>255),
					array('id, street, phone, zipcode, city, country', 'safe', 'on'=>'search'),
					);
		}

	}
?>
