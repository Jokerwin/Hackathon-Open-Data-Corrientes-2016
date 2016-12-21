<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<?php

header("Content-Type: text/html;charset=utf-8");
$hostname = "localhost";
$username = "root";
$password = "";
$dbname = "db_hack";
$conn = mysql_connect($hostname, $username, $password);
if (!$conn)
{
die('Could not connect: ' . mysql_error());
}
mysql_select_db($dbname, $conn);
mysql_query("SET NAMES 'utf8'");

include('header.php');

echo '
    <script defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhy52mYmb6XnnornJSaZXkv9FTGin8kBY&callback=initMap">
    </script>
<section>
      <div class="row">';

      include('left_bar.php');                   

      echo '
        <div style="background-color:#eceff1;" class="col-sm-9 col-sm-offset-3">
          <div style="margin-top:20px;margin-bottom:40px;" class="col-sm-12">
            <div class="col-sm-6">
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Hospitales de Corrientes</p>
            </div>
            <div class="pull-right col-sm-1">
              <button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-danger btn-circle btn-lg"><i class="glyphicon glyphicon-plus"></i></button>
            </div>
          </div>
          <div class="col-sm-12">
          	<div id="map" style="height:600px;"></div> 
          	<table id="tabla" class="table table-bordered">
				 <thead>
				 <tr>
				 <th>Nombre</th>
				 <th>Localidad</th>
				 <th>Departamento</th>
				 <th>Direccion</th>
				 <th>Telefono</th>
				 <th>Tipologia</th>
				 </tr>
				 </thead>
				 <tbody>
				 ';
			  $result = mysql_query("SELECT * FROM hospital order by departamento,localidad");
				 
				 while($test = mysql_fetch_array($result))
				 {
				echo "<tr>";
				 $id = $test['codigo_siisa'];
				 echo"<td>".$test['nombre']."</td>";
				 echo"<td>".$test['departamento']."</td>";
				 echo"<td>".$test['localidad']."</td>";
				 echo"<td>".$test['domicilio']."</td>";
				 echo"<td>".$test['telefono']."</td>";
				 echo"<td>".$test['tipologia']."</td>"; 
				 echo "</tr>";
				 }
				 mysql_close($conn);
				 echo'
				 </tbody>
			</table>         	
          </div>
        </div>
      </div>
</section>
<script type="text/javascript">
  var map;

  function initMap() {
    map = new google.maps.Map(document.getElementById(\'map\'), {
      center: {lat: -27.4810146, lng: -58.7999439},
      zoom: 13
    });
    var kmlUrl = "https://www.google.com/maps/d/u/0/kml?mid=1aU1a84Cov0Ro3vXYWA41fxjlCec";
    var ctaLayer = new google.maps.KmlLayer({
      url: kmlUrl,
      map: map
    });
  }
</script>
';

include('footer.php');

?>