<?php
// Uncomment the next line if you're using a dependency loader (such as Composer) (recommended)
// require 'vendor/autoload.php';

// Uncomment the next line if you're not using a dependency loader (such as Composer), replacing <PATH TO> with the path to the sendgrid-php.php file
require_once 'sendgrid-php/sendgrid-php.php';
$email = new \SendGrid\Mail\Mail();
$email->setFrom("michelle220210@gmail.com", "Azul Society");
$email->setSubject("Sending with Twilio SendGrid is Fun");
$email->addTo($_POST['email'], $_POST['nombreInvitado'],);
$email->setTemplateId("d-4adfc9c5c12c4a83a36199faa4224f9f"); // template de la cumpleaños
$email->addDynamicTemplateDatas( [
  'festejado' => $_POST['festejado'],
  'descripcionEvento' => $_POST['descripcionEvento'],
  'fechaEvento' => $_POST['fechaEvento'],
] );
$sendgrid = new \SendGrid(getenv("SENDGRID_API_KEY"));
try {
    $response = $sendgrid->send($email);
    //print $response->statusCode() . "\n";
    //print_r($response->headers());
    //print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '. $e->getMessage() ."\n";
}

?>
<html>
<head>
<script>
setTimeout(function(){
    location.href = "http://localhost/web/EnviarCorreoCumpleanios.html";
}, 2000);
alert('Correo enviado correctamente');
</script>
</head>
</html>