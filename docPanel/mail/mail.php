<?php
require_once 'mailerClass/PHPMailerAutoload.php';
$mail = new PHPMailer;
$mail->isSMTP();
$mail->SMTPDebug = 0;
$mail->Debugoutput = 'html';
$mail->Host = 'smtp.gmail.com';
$mail->Port = 587;
$mail->SMTPSecure = 'tls';
$mail->SMTPAuth = true;
require_once 'emailpass.php';
//TO
$mail->addAddress($email, 'Corec Assistant Support');
//From
$mail->addReplyTo('pinonlinebanking@gmail.com', 'Corec Support');
$mail->setFrom('pinonlinebanking@gmail.com', "Corec Support");
$mail->Subject = 'RESTRICTED: Possible Patient Alert! | Corec Support';
	$logo = 'https://lh3.googleusercontent.com/a-/AAuE7mDdRXCKzQMHH7qkK07oDZ7JGr6qmAOAOm_pOuTA=s96-cc-rg';
    $link = '#';
	$body = "<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><title>Pin Express Mail</title></head><body>";
	$body .= "<table style='width: 100%;'>";
	$body .= "<thead style='text-align: center;'><tr><td style='border:none;' colspan='2'>";
	$body .= "<a href='{$link}'><img src='{$logo}' alt='' width='5%'></a><br><hr width='100%'> <br>";
	$body .= "</td></tr></thead><tbody><tr colspan='2'>";
	$body .= "<td style='border:none;'><strong>You have been requested by <font style='color: blue';> Dr.{$docName} </font> and provided instructions to <font style='color: blue';> {$docDecisionDecoded} </font>the following patient who has been identified for possible COVID-19 infection through the COVID-19 Assistant System.</strong><br><br></td></td>";
	$body .= "<tr><td style='border:none;'>Suspected Patient Details:<strong> <div style='width: 200px; padding: 5px; border: 2px solid red;'>
	<table>
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
			<td>Location</td>
			<td>: {$pLocation}</td>
		</tr>
		<tr>
			<td>Phone Number</td>
			<td>: <a href='tel:+94{$pPhoneNumber}'>{$pPhoneNumber}</td>
		</tr>
	</table>
	</div></strong><br><br><br></td>";
	$body .= "</tr>";
	$body .= "<tr><td>Regards,<br> Corec Support Team</td></tr>";
	$body .= "<tr><td><br><br><br><br><hr width='100%'></td></tr>";
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