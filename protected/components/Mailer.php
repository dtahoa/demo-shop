<?php

class Mailer extends CApplicationComponent {
	var $mailer = null;

	public function init()
	{
		Yii::import('application.extensions.phpmailer.JPhpMailer');
		$mail = new JPhpMailer;
		if (Yii::app()->params['useSmtp']) {
			$mail->IsSMTP();
			$mail->CharSet = 'utf-8';
			$mail->Host = Yii::app()->params['SmtpHost'];
			$mail->Port = Yii::app()->params['SmtpPort'];
			$mail->SMTPSecure = Yii::app()->params['SmtpSecure'];
			$mail->SMTPAuth = Yii::app()->params['SmtpAuth'];
			$mail->Username = Yii::app()->params['SmtpUser'];
			$mail->Password = Yii::app()->params['SmtpPassword'];
		}
		$mail->SetFrom(Yii::app()->params['fromEmail'], Yii::app()->params['SupportFromName']);
		$this->mailer = $mail;
	}

	/**
	 *
	 * @desc Set simple  Mobile sender for mailer
	 */
	public function setName() {
		$this->mailer->SetFrom(Yii::app()->params['FromEmail'], Yii::app()->params['FromName']);
	}

	/**
	 *
	 * @desc Send email
	 * @param string $to
	 * @param string $subject
	 * @param string $message
	 */
	public function sendEmail($to, $subject, $message, $fromName = null) {
		//Config use mail or PHP Mailer
		//usePhpMailer
		$mail = $this->mailer;
		if(!empty($fromName)) {
			$mail->FromName = $fromName;
		}
		$mail->Subject = $subject;
		//$mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
		$mail->MsgHTML($message);
		$mail->AddAddress($to);
		$mail->Send();
	}

	/**
	 *
	 * Remove all previous TO email
	 */
	public function ClearAddresses() {
		$this->mailer->ClearAddresses();
	}
}

