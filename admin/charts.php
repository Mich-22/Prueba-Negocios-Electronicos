
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
                                            Chart</h3>
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
                                            Chart</h3>
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
                                            Chart</h3>
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
                                            Chart</h3>
                                    </div>
                                    <div class="module-body">
                                        <div class="chart pie donut interactive">
                                            <div id="google4">
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
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Birthday', 3],
          ['XV Birthday', 1],
          ['Baptism', 1],
          ['Wedding', 1],
          ['Mothers day', 2]
        ]);

        // Set chart options
        var options = {'title':'From top sellers to bottom sellers',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('google1'));
        chart.draw(data, options);





        
        // Create the data table.
        var data2 = new google.visualization.DataTable();
        data2.addColumn('string', 'Topping');
        data2.addColumn('number', 'Slices');
        data2.addRows([
          ['Wedding', 3],
          ['Birthday', 1],
          ['Valentines day', 1],
          ['XV Birthday', 1],
          ['Baptism', 2]
        ]);

        // Set chart options
        var options2 = {'title':'Most wanted',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart2 = new google.visualization.PieChart(document.getElementById('google2'));
        chart2.draw(data2, options2);

       
        
        
        
        // Create the data table.
        var data3 = new google.visualization.DataTable();
        data3.addColumn('string', 'Topping');
        data3.addColumn('number', 'Slices');
        data3.addRows([
          ['Birthday', 3],
          ['XV Birthday', 1],
          ['Baptism', 1],
          ['Wedding', 1],
          ['Mothers day', 2]
        ]);

        // Set chart options
        var options3 = {'title':'Purchase quantity',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart3 = new google.visualization.PieChart(document.getElementById('google3'));
        chart3.draw(data3, options3);

         // Create the data table.
        var data4 = new google.visualization.DataTable();
        data4.addColumn('string', 'Topping');
        data4.addColumn('number', 'Slices');
        data4.addRows([
          ['CDMX', 3],
          ['Monterrey', 1],
          ['Guadalaja', 1],
          ['Tijuana', 1],
          ['Michoacan', 2]
        ]);

        // Set chart options
        var options4 = {'title':'Number of visitors',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart4 = new google.visualization.PieChart(document.getElementById('google4'));
        chart4.draw(data4, options4);
      }
    </script>
</body>
<?php } ?>