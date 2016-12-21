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
              <p style="font-size:30px;font-family:Roboto;font-weight:500;">Lista de voluntarios</p>
            </div>
          </div>
        <div class="col-sm-12">
		<div class="as">
		 
		<table class="table table-bordered">
		 <thead>
		 <tr>
		 <th>Especialidad</th>
		 <th>DNI</th>
		 <th>Nombre</th>
		 <th>Fecha de registro</th>
		 <th>Formacion</th>
		 <th>Telefono</th>
		 <th>Sexo</th>
		 <th>Sangre</th>
		 </tr>
		 </thead>
		 <tbody>
		 <tr>
		 ';
		 
		 $result = mysql_query("SELECT * FROM voluntario order by especialidad");
		 
		 while($test = mysql_fetch_array($result))
		 {
		 $id = $test['dni'];
		 echo"<td>".$test['especialidad']."</td>";
		 echo"<td>".$test['dni']."</td>";
		 echo"<td>".$test['nombre']."</td>";
		 echo"<td>".$test['fecharegistro']."</td>";
		 echo"<td>".$test['formacion']."</td>";
		 echo"<td>".$test['telefono']."</td>"; 
		 echo"<td>".$test['sexo']."</td>"; 
		 echo"<td>".$test['sangre']."</td>"; 
		 echo "</tr>";
		 }
		 mysql_close($conn);
		 echo'
		</table>
		</div>
		</div>
        </div>
      </div>
</section>
';
include('footer.php');

?>