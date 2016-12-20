<?php
date_default_timezone_set('Etc/UTC');
require '../extensions/PHPMailerAutoload.php';

	class Shop {
		public static function mailNotification ($order) {
            $email = Shop::module()->notifyAdminEmail;
            if($email !== null) {
				$headers="From: vanphongphamminhtu.vn\r\nReply-To: {do@not-reply.org}";

				/*mail($email,
						Shop::t('Order #{order_id} has been made in your Webshop', array(
								'{order_id}' => $order->id)),
						CHtml::link(Shop::t('direct link'), array(
								'//shop/order/view', 'id' => $order->id)));*/

                // Construct the message
                $subject = Shop::t('Đơn hàng mang mã số #{order_id} đã được đặt hàng tại website vanphongphamminhtu.com', array(
                    '{order_id}' => $order->order_id));
                $message = CHtml::link(Shop::t('Xác nhận đơn hàng: '), array(
                    '//shop/order/view', 'id' => $order->order_id));
                return Shop::sendEmail($email, $subject, $message, $headers);
			}
		}

        private function sendEmail($toAddress, $subject, $content, $fromName) {
            try {
                if (!empty($toAddress)) {
                    $mailer = Yii::app()->mailer;
                    $mailer->ClearAddresses();
                    $mailer->sendEmail($toAddress, $subject, $content, $fromName);
                }
            }
            catch (Exception $e) {
                $error = $e->getMessage();
                print_r($error);
                return false;
            }
            if(!empty($mailer->mailer->ErrorInfo)) {
                return false;
            }
            return true;
        }

		public static function pricingInfo() {
			Shop::register('js/jquery.tools.min.js');
			Shop::register('css/shop.css');
			Yii::app()->clientScript->registerScript('tooltip', 
					"$('.price_information').tooltip(); ");

			echo '<p class="price_information">';
			echo Shop::t('Giá bao gồm VAT') . '<br />';
			echo Shop::t('Giá bao gồm phí giao hàng');
			echo '</p>';
			echo '<div class="tooltip">';
				Yii::app()->controller->renderPartial('/shippingMethod/index'); 
			echo '</div>';

		}

/*		public function getCustomer() {
			$customer = false;
			$customer = Yii::app()->user->getState('customer_id');
				if(!$customer && !Yii::app()->user->isGuest)
					$customer = Customer::model()->find('user_id = :uid', array(
								':uid' => Yii::app()->user->id));

			return $customer;

		} */

		public static function priceFormat ($price) {
            $symbol_thousand = '.';
            $decimal_place = 0;
            $price = sprintf('%.0f', $price);
            $price = number_format($price, $decimal_place, '', $symbol_thousand);
			if(Yii::app()->language == 'de')
				$price = str_replace('.', ',', $price);

			$price .= ' '.Shop::module()->currencySymbol;
		
			return $price;
		}
		public static function getPaymentMethod() {
			return Yii::app()->user->getState('payment_method');
		}

		public static function getShippingMethod() {
			if($shipping_method = Yii::app()->user->getState('shipping_method'))
				return ShippingMethod::model()->findByPk($shipping_method);
		}


		public static function getCartContent() {
			if(is_string(Yii::app()->user->getState('cart')))
				return json_decode(Yii::app()->user->getState('cart'), true);
			else
				return Yii::app()->user->getState('cart');
		}

		public static function setCartContent($cart) {
			return Yii::app()->user->setState('cart', json_encode($cart));
		}

		public static function getPriceTotal() {
			$price_total = 0;
			$tax_total = 0;
			foreach(Shop::getCartContent() as $product)  {
				$model = Products::model()->findByPk($product['product_id']);
				$price_total += $model->getPrice(@$product['Variations'], @$product['amount']);
				$tax_total += $model->getTaxRate(@$product['Variations'], @$product['amount']);

		    }

			if($shipping_method = Shop::getShippingMethod())
				$price_total += $shipping_method->price;

			$price_total = Shop::t('<strong>Thành tiền</strong>:  <span class="total2">{total}</span>', array(
						'{total}' => Shop::priceFormat($price_total),
						));
			$price_total .= '<br /><hr>';
			$price_total .= Shop::t('Giá đã bao gồm <strong>10%</strong> VAT: <strong class="text-blue">{vat}</strong>', array(
						'{vat}' => Shop::priceFormat($tax_total))) . '<br />';
			/*$price_total .= Shop::t('Giá đã bao gồm phí vận chuyển') . '<br />';*/

			return $price_total;
		}

        public static function getPriceTotalNumber() {
            $price_total = 0;
            $tax_total = 0;
            /*Yii::app()->user->setState('cart', array());
            Yii::app()->user->setState('shipping_method', null);
            Yii::app()->user->setState('payment_method', null);
            Yii::app()->user->setState('order_comment', null);
            Yii::app()->user->setState('customer_id', null);*/

            if (Shop::getCartContent()) {
                foreach(Shop::getCartContent() as $product)  {
                    $model = Products::model()->findByPk($product['product_id']);
                    $price_total += $model->getPrice(/*@$product['Variations']*/null, @$product['amount']);
                    $tax_total += $model->getTaxRate(/*@$product['Variations']*/null, @$product['amount']);
                }

                if($shipping_method = Shop::getShippingMethod())
                    $price_total += $shipping_method->price;

                $price_total = Shop::priceFormat($price_total);
            }

            return $price_total;
        }

		public static function register($file)
		{
			$url = Yii::app()->getAssetManager()->publish(
					Yii::getPathOfAlias('application.modules.shop.assets'));

			$path = $url . '/' . $file;
			if(strpos($file, 'js') !== false)
				return Yii::app()->clientScript->registerScriptFile($path);
			else if(strpos($file, 'css') !== false)
				return Yii::app()->clientScript->registerCssFile($path);

			return $path;
		}

	public static function module()
	{
		if(isset(Yii::app()->controller)
			&& isset(Yii::app()->controller->module)
			&& Yii::app()->controller->module instanceof ShopModule)
			return Yii::app()->controller->module;
		elseif(Yii::app()->getModule('shop') instanceof ShopModule)
			return Yii::app()->getModule('shop');
		else
		{
			while (($parent=$this->getParentModule())!==null)
				if($parent instanceof shopModule)	
					return $parent;
		} 
	}


		public static function getCustomer() {
			if(!Yii::app()->user->isGuest) 
				if($customer = Customer::model()->find('user_id = :uid', array(
							':uid' => Yii::app()->user->id))) 
				return $customer;

			if($customer_id = Yii::app()->user->getState('customer_id')) 
				return Customer::model()->findByPk($customer_id);
		}

		public static function t($string, $params = array())
		{
			Yii::import('application.modules.shop.ShopModule');

			return Yii::t('ShopModule.shop', $string, $params);
		}
		/* set a flash message to display after the request is done */
		public static function setFlash($message) 
		{
			Yii::app()->user->setFlash('yiishop',Shop::t($message));
		}

		public static function hasFlash() 
		{
			return Yii::app()->user->hasFlash('yiishop');
		}

		/* retrieve the flash message again */
		public static function getFlash() {
			if(Yii::app()->user->hasFlash('yiishop')) {
				return Yii::app()->user->getFlash('yiishop');
			}
		}

		public static function renderFlash()
		{
			if(Yii::app()->user->hasFlash('yiishop')) {
				echo '<div class="info">';
				echo Shop::getFlash();
				echo '</div>';
				Yii::app()->clientScript->registerScript('fade',"
						setTimeout(function() { $('.info').fadeOut('slow'); }, 5000);	
						"); 
			}
		}

		public static function gmail() {

            /**
             * This example shows settings to use when sending via Google's Gmail servers.
             */

            //SMTP needs accurate times, and the PHP time zone MUST be set
            //This should be done in your php.ini, but this is how to do it if you don't have access to that

            //Create a new PHPMailer instance
            $mail = new PHPMailer;

            //Tell PHPMailer to use SMTP
            $mail->isSMTP();

            //Enable SMTP debugging
            // 0 = off (for production use)
            // 1 = client messages
            // 2 = client and server messages
            $mail->SMTPDebug = 2;

            //Ask for HTML-friendly debug output
            $mail->Debugoutput = 'html';

            //Set the hostname of the mail server
            $mail->Host = 'smtp.gmail.com';
            // use
            // $mail->Host = gethostbyname('smtp.gmail.com');
            // if your network does not support SMTP over IPv6

            //Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
            $mail->Port = 587;

            //Set the encryption system to use - ssl (deprecated) or tls
            $mail->SMTPSecure = 'tls';

            //Whether to use SMTP authentication
            $mail->SMTPAuth = true;

            //Username to use for SMTP authentication - use full email address for gmail
            $mail->Username = "hoatest01@gmail.com";

            //Password to use for SMTP authentication
            $mail->Password = "12345678z@Z  ";

            //Set who the message is to be sent from
            $mail->setFrom('from@example.com', 'First Last');

            //Set an alternative reply-to address
            $mail->addReplyTo('replyto@example.com', 'First Last');

            //Set who the message is to be sent to
            $mail->addAddress('whoto@example.com', 'John Doe');

            //Set the subject line
            $mail->Subject = 'PHPMailer GMail SMTP test';

            //Read an HTML message body from an external file, convert referenced images to embedded,
            //convert HTML into a basic plain-text alternative body
            $mail->msgHTML(file_get_contents('contents.html'), dirname(__FILE__));

            //Replace the plain text body with one created manually
            $mail->AltBody = 'This is a plain-text message body';

            //Attach an image file
            $mail->addAttachment('images/phpmailer_mini.png');

            //send the message, check for errors
            if (!$mail->send()) {
                echo "Mailer Error: " . $mail->ErrorInfo;
            } else {
                echo "Message sent!";
            }
        }
	}
