
<?php
session_start();
include('include/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
date_default_timezone_set('America/Lima');// change according timezone
$currentTime = date( 'd-m-Y h:i:s A', time () );


if(isset($_POST['submit']))
{
	$category=$_POST['category'];
	$description=$_POST['description'];
$sql=mysqli_query($con,"insert into category(categoryName,categoryDescription) values('$category','$description')");
$_SESSION['msg']="Category Created !!";

}

if(isset($_GET['del']))
		  {
		          mysqli_query($con,"delete from category where id = '".$_GET['id']."'");
                  $_SESSION['delmsg']="Category deleted !!";
		  }

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin| Category</title>
	<link type="text/css" href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="css/theme.css" rel="stylesheet">
	<link type="text/css" href="images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>
<?php include('include/header.php');?>

	<div class="wrapper">
		<div class="container">
			<div class="row">
<?php include('include/sidebar.php');?>				
			<div class="span11">
					<div class="content">

                        <div class="row">
                            <div class="span5">

                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            Mas visitados a menos visitados
                                        </h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="google1">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="span5">

                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            Mas vendidos a menos vendidos
                                        </h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="google2">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="span5">

                                <div class="module">
                                    <div class="module-head">
                                        <h3>

                                            Mas buscados a menos buscados
                                        </h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="google3">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="span5">

                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            Ventas por region
                                        </h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="regions_div">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="span5">

                                <div class="module">
                                    <div class="module-head">
                                        <h3>
                                            Cantidad de visitantes
                                        </h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="google5">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

<?php include('include/footer.php');?>

	<script src="scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="scripts/flot/jquery.flot.js" type="text/javascript"></script>
	<script src="scripts/datatables/jquery.dataTables.js"></script>

	<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
        // Create the data table.
        var data2 = new google.visualization.DataTable();
        data2.addColumn('string', 'Topping');
        data2.addColumn('number', 'Slices');
        data2.addRows([
          ['Wedding', 2],
          ['Birthday', 3],
          ['Valentines day', 4],
          ['XV Birthday', 6],
          ['Baptism', 6]
        ]);

        // Set chart options
        var options2 = {'title':'',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart2 = new google.visualization.PieChart(document.getElementById('google2'));
        chart2.draw(data2, options2);

       
        
        
        
        // Create the data table 3.

        var data = google.visualization.arrayToDataTable([
        ["Element", "Porcentaje", {role: "style" } ],
        ["Birthday", 28.94, "#b87333"],
        ["XV Birthday", 21.45, "color: #e5e4e2"],
        ["Wedding", 19.49, "silver"],
        ["Valentines Day", 9.30, "gold"],
        ["Baptism", 3.30, "green"],
        
        
      ]);

      var viewBar = new google.visualization.DataView(data);
      viewBar.setColumns([0, 1,
                       {calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var optionsBar = {
                  title: "",
        width: 400,
        height: 300,
        bar: {groupWidth: "95%"},
        legend: {position: "none" },
      };
          var chartBar = new google.visualization.BarChart(document.getElementById("google3"));
      chartBar.draw(viewBar, optionsBar);








          //  Aqui nueva gráfica del mapa del mundo
          google.charts.load('current', {
              'packages': ['geochart'],
          });
          google.charts.setOnLoadCallback(drawRegionsMap);

          google.charts.setOnLoadCallback(drawChart2);
          google.charts.setOnLoadCallback(drawChartDos);
          


            }

          function drawRegionsMap() {
              var data = google.visualization.arrayToDataTable([
                  ['Country', 'Popularity'],
                  ['Germany', 200],
                  ['United States', 300],
                  ['Brazil', 400],
                  ['Canada', 500],
                  ['France', 600],
                  ['RU', 700]
              ]);

              var options = {
                  width: 400,
                  height: 300,};

              var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

              chart.draw(data, options);
        }

        function drawChart2() {
            var data1 = google.visualization.arrayToDataTable([
                ['Dinosaur', 'Porcentaje'],
                ['MothersDay (Poncentaje)', 12.2],
                ['XV Birthday (Poncentaje)', 9.1],
                ['MothersDay (Poncentaje)', 12.2],
                ['Wedding (Poncentaje)', 22.9],
                ['XV Birthday (Poncentaje)', 0.9],
                ['Birthday (Porcentaje)', 36.6],
                ['XV Birthday (Poncentaje )', 9.1],
                ['Birthday (Poncentaje)', 30.5],
                ['XV Birthday (Poncentaje)', 6.1],
                ['XV Birthday (Poncentaje)', 2.7],
                ['XV Birthday (Poncentaje)', 0.9],
                ['XV Birthday (Poncentaje)', 2.7],
                ['Wedding (Poncentaje)', 27.1],
                ['XV Birthday (Poncentaje)', 3.4],
                ['XV Birthday (Poncentaje)', 5.5],
                ['Wedding (Poncentaje)', 21.0],
                ['XV Birthday (Poncentaje)', 7.9],
                ['XV Birthday (Poncentaje)', 1.2],
                ['XV Birthday (Poncentaje)', 4.6],
                ['XV Birthday (Poncentaje)', 1.5],
                ['XV Birthday (Poncentaje)', 7.9],
                ['XV Birthday (Poncentaje)', 2.0],
                ['Valentins Day (Poncentaje)', 45.7],
                ['MothersDay (Poncentaje)', 12.2],
                ['Birthday (Poncentaje)', 30.5],
                ['MothersDay (Poncentaje)', 15.2],
                ['Birthday (Poncentaje)', 30.5],
                ['XV Birthday (Poncentaje)', 1.8]]);

            var optionss = {
                title: '',
                width: 400,
                height: 300,
                legend: { position: 'none' },
            };

            var chartt = new google.visualization.Histogram(document.getElementById('google1'));
            chartt.draw(data1, optionss);
        }


        function drawChartDos() {
            var dataDos = google.visualization.arrayToDataTable([
                ['Anio', 'Hombres', 'Mujeres'],
                ['2018', 1000, 1400],
                ['2019', 1000, 400],
                ['2020', 1170, 1460],
                ['2021', 660, 1120],
                ['2022', 1030, 540]
            ]);

            var optionsDos = {
                title: '',
                hAxis: { title: 'Anio', titleTextStyle: { color: '#333' } },
                vAxis: { minValue: 0 }
            };

            var chartDos = new google.visualization.AreaChart(document.getElementById('google5'));
            chartDos.draw(dataDos, optionsDos);
        }

    </script>
</body>
<?php } ?>