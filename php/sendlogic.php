<?php

  $categoria = $_POST['categoria'];
  $nombre = $_POST['nombre'];
  $dir = $_POST['direccion'];
  $necesidad = $_POST['necesidad'];
  $lon = $_POST['lon'];
  $lat = $_POST['lat'];

  if(trim($nombre) != "" && trim($dir) != "" && trim($necesidad) != ""){
    $con = mysqli_connect('localhost','root','','db_hack');
    $sql = "INSERT INTO db_datosalerta (categoria,nombre,direccion,necesidad,lon,lat) VALUES ('$categoria','$nombre','$dir','$necesidad','$lon','$lat')";

    if($con->query($sql)){
      echo true;
    } else {
      echo false;
    }
  } else {
    echo false;
  }
 ?>
