<?php
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

include('header.php');

echo'
<section>
      <div class="row">
	';
      include('left_bar.php');
echo'
        <div style="background-color:#eceff1;" class="col-sm-9 col-sm-offset-3">
          <div style="margin-top:20px;margin-bottom:40px;" class="col-sm-12">
            <div class="col-sm-6">
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Lista de donaciones</p>
            </div>
          </div>
		<div class="container">
		 
		<table class="table table-bordered">
		 <thead>
		 <tr>
		 <th>Tipo</th>
		 <th>Descripción</th>
		 <th>Cantidad</th>
		 <th>Fecha de registro</th>
		 <th>Destino</th>
		 </tr>
		 </thead>
		 <tbody>
		 <tr>
		 ';
		 
		 $result = mysql_query("SELECT * FROM donacion order by tipo");
		 
		 while($test = mysql_fetch_array($result))
		 {
		 $id = $test['id']; 
		 echo"<td>".$test['tipo']."</td>";
		 echo"<td>".$test['descripcion']."</td>";
		 echo"<td>".$test['cantidad']."</td>";
		 echo"<td>".$test['fecharegistro']."</td>";
		 echo"<td>".$test['destino']."</td>"; 
		 echo "</tr>";
		 }
		 mysql_close($conn);
		 echo'
		</table>

		</div>
        </div>
      </div>
</section>
';
include('footer.php');

?>