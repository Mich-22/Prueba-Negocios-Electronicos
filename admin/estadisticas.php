
<?php
session_start();
include('include/config.php');
if(false)
	{	
//header('location:index.php');
}
else{
date_default_timezone_set('America/Lima');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Statistics</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
	    <script src="https://code.highcharts.com/highcharts.js"></script>
</head>
<body>
<?php include('include/header.php');?>

<div style="width: 100%; ">
	<div style="width: 40%;"><br>
		<?php include('include/sidebar.php');?>
	</div>
	<div style="width:60%; float: left; margin-left: 10px;">
		<div id="temperaturas"></div>
<script>
    /*Insertamos los valores del eje vertical en un array*/
    var temperaturas = [10,12,9,11,10,15,16];

    /*CONSTRUCCIÓN DE LA GRÁFICA*/
    Highcharts.chart('temperaturas', {
        title: {
           text: 'Estadisticas del primer semestre 2021'
        },
        xAxis: {
           categories : ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio']
        },
        series: [{
           name: 'Estadisticas del primer semestre 2021',
           data: (function(){
              var data = [];
              for(var i=0; i < temperaturas.length; i++){
                  data.push([temperaturas[i]]);
              }
              return data;
           })()
        }],
        credits: {
            enabled: false
        }
    });                 
</script>

	</div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>
<?php } ?>