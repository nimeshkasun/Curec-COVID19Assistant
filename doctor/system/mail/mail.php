<?php
require_once 'mailerClass/PHPMailerAutoload.php';
$mail = new PHPMailer;
$mail->isSMTP();
$mail->SMTPDebug = 0;
$mail->Debugoutput = 'html';
$mail->Host = 'mail.curec.life';
$mail->Port = 587;
$mail->SMTPSecure = 'tls';
$mail->SMTPAuth = true;
require_once 'emailpass.php';
//TO
$mail->addAddress($email, 'MOH');
$mail->addCC($email2, '1990');
//From
$mail->addReplyTo('info@curec.life', 'Curec Support');
$mail->setFrom('info@curec.life', "Curec Support");
$mail->Subject = 'RESTRICTED: Possible Patient Alert! | Curec Support';
	$logo = 'https://lh3.googleusercontent.com/bL45GGf_HG2OGl0qTn9gTjHHEKKN6OqygcMtJgJ7GWxe14KA_Iw-NOT6TeN4cUC-KYbXzDdb9NmBoskUtGDIz0BhXxGioRzqIEjiIrERebYDEOyyiW39TS3YvuMHVfQeh0RlllTO=w800-h376-no';
    $link = '#';
	$body = "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><title>Curec Express Mail</title></head><body>";
	$body .= "<table style='width: 100%;'>";
	$body .= "<thead style='text-align: center;'><tr><td style='border:none;' colspan='2'>";
	$body .= "<a href='{$link}'><img src='{$logo}' alt='' width='20%'></a><br><hr width='100%'> <br>";
	$body .= "</td></tr></thead><tbody><tr colspan='2'>";
	$body .= "<td style='border:none;'><strong> To: <font style='color: green';> {$toOffice} </font> <br><br> You have been requested by <font style='color: blue';> Dr.{$docName} </font> and given instructions to take necessary action on the following patient who has been identified for potential COVID-19 infection through the Curec COVID-19 Personal Assistant System. The patient has been categorized as: <font style='color: red';>{$docDecisionDecoded}</font><br><br>Doctor's Comment: {$docComment}</strong><br><br></td></td>";
	$body .= "<tr><td style='border:none;'>Suspected Patient Details:<strong> <div style='width: 50%; padding: 5px; border: 2px solid red;'>
	<table style='width: 100%;'>
		<tr>
			<td>Name</td>
			<td>: {$pName}</td>
		</tr>
		<tr>
			<td>NIC</td>
			<td>: {$pNic}</td>
		</tr>
		<tr>
			<td>Gender</td>
			<td>: {$pGender}</td>
		</tr>
		<tr>
			<td>Age</td>
			<td>: {$pAge}</td>
		</tr>
		<tr>
			<td>Hometown</td>
			<td>: {$pLocation}</td>
		</tr>
		<tr>
			<td>Phone Number</td>
			<td>: <a href='tel:+94{$pPhoneNumber}'>{$pPhoneNumber}</a></td>
		</tr>
		<tr>
			<td>Last Known Location</td>
			<td>: <a href='https://www.google.com/maps/search/?api=1&query={$latitude},{$longitude}'>Click for Directions</a> on {$lastKnown}</td>
		</tr>
	</table>
	</div></strong><br><br>";
	$body .= "</tr>";
	$body .= "<tr><td>Regards,<br> Curec Support Team <br> <a href='https://www.curec.life'>https://www.curec.life</a></td></tr>";
	$body .= "<tr><td><br><hr width='100%'></td></tr>";
	$body .= "<tr colspan='2' style='color:red;'><td>Disclaimer: <br>
The content of this email is confidential and intended for the recipient specified in message only. It is strictly forbidden to share any part of this message with any third party, without a written consent of the sender. If you received this message by mistake, please reply to this message and follow with its deletion, so that we can ensure such a mistake does not occur in the future.<br><b>
Please do not print this email unless it is necessary. Every unprinted email helps the environment.</b></td></tr>";
	$body .= "</tbody></table>";
	$body .= "</body></html>";
$mail->Body = $body;
$mail->AltBody = 'This is a plain-text message body';
$mail->isHTML(true); 
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} 

?>