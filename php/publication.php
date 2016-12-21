<?php

  $con = new mysqli_connect('localhost','admin','1234');

  $nombre = $_POST["nombre"];
  $codigo_siisa = $_POST["codigo_siisa"];
  $domicilio = $_POST["domicilio"];
  $localidad = $_POST["localidad"];
  $departamento = $_POST["departamento"];
  $region_sanitaria = $_POST["region_sanitaria"];
  $dependencia = $_POST["dependencia"];
  $telefono = $_POST["telefono"];
  $codigo_postal = $_POST["codigo_postal"];
  $tipologia = $_POST["tipologia"];
  $descripcion = $_POST["descripcion"];
  $autor = $_POST["autor"];
  $lat = $_POST["lat"];
  $long = $_POST["long"];

  $sql = "INSERT INTO 'table 1' (nombre,codigo_siisa,domicilio,localidad,departamento,region_sanitaria,dependencia,
                                 telefono,codigo_postal,tipologia,descripcion,autor,lat,long)
                         VALUES ($nombre,$codigo_siisa,$domicilio,$localidad,$departamento,$region_sanitaria,$dependencia,
                                 $telefono,$codigo_postal,$tipologia,$descripcion,$autor,$lat,$long)"

  if($con->query($sql)){
    echo 'true';
  } else {
    echo 'false';
  }

 ?>
