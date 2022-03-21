<?php
// Uncomment the next line if you're using a dependency loader (such as Composer) (recommended)
// require 'vendor/autoload.php';

// Uncomment the next line if you're not using a dependency loader (such as Composer), replacing <PATH TO> with the path to the sendgrid-php.php file
 require_once 'sendgrid-php/sendgrid-php.php';
$email = new \SendGrid\Mail\Mail();
$email->setFrom("Azul_Society@countertops-app.com", "Azul Society");
$email->setSubject("Sending with Twilio SendGrid is Fun");
$email->addTo("michelle.lopezsilva@hotmail.com", "Michelle Lopez");
$email->setTemplateId("d-61000de0e315496890c6219891714209");
$sendgrid = new \SendGrid('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');
try {
    $response = $sendgrid->send($email);
    print $response->statusCode() . "\n";
    print_r($response->headers());
    print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '. $e->getMessage() ."\n";
}

?>