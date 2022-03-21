<?php
// Uncomment the next line if you're using a dependency loader (such as Composer) (recommended)
// require 'vendor/autoload.php';

// Uncomment the next line if you're not using a dependency loader (such as Composer), replacing <PATH TO> with the path to the sendgrid-php.php file
require_once 'sendgrid-php/sendgrid-php.php';
$email = new \SendGrid\Mail\Mail();
$email->setFrom("michelle220210@gmail.com", "Azul Society");
$email->setSubject("Sending with Twilio SendGrid is Fun");
$email->addTo("michelle.lopezsilva@hotmail.com", "Michelle Lopez");
$email->setTemplateId("d-9a4d65b71eef4b14bdfd642eb38bf61c"); // template de la boda
$email->addDynamicTemplateDatas( [
  'esposos'     => $_POST['esposos'],
  'padrinos' => $_POST['padrinos'],
  'padres' => $_POST['padres'],
  'descripcionBoda' => $_POST['descripcionBoda'],
  'fechaEvento' => $_POST['fechaEvento'],
  'recepcion' => $_POST['recepcion'],
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
    location.href = "http://localhost/web/enviarcorreo.html";
}, 2000);
alert('Correo enviado correctamente');
</script>
</head>
</html>