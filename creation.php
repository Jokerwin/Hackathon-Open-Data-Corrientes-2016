<?php

// Crear base de datos
/*
function create_database($db_name){
  $con = mysqli_connect('localhost','root','');
  $sql = "CREATE DATABASE " . $db_name;
  if($con->query($sql)){
    echo "Base de datos '" . $db_name . "' creada con éxito.  ";
  } else {
    echo "No se ha podido crear la Base de datos '" . $db_name . "'.  ";
  }
}
*/


/*             Crear tabla, poner en $table_content algo como esto:
              (
               id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
               dni INT(6) UNSIGNED NOT NULL,
               nombre VARCHAR(100) NOT NULL,
               apellido VARCHAR(100) NOT NULL,
               colegio INT(6) UNSIGNED NOT NULL
               )
*/

function create_table($db_name,$table_name,$table_content){
  $con = mysqli_connect('localhost','root','',$db_name);
  $sql = "CREATE TABLE " . $table_name . " " . $table_content;
  if($con->query($sql)){
    echo "Tabla '" . $table_name . "' creada con éxito.  ";
  } else {
    echo "No se ha podido crear la Tabla '" . $table_name . "'.";
  }
}

// Ejecutar todo:


// create_database("db_hack");

// create_table("db_hack", "db_publications","(
//  id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
//  dni VARCHAR(100) NOT NULL,
//  description VARCHAR(1024) NOT NULL,
//  lat DECIMAL(10,8) UNSIGNED NOT NULL
//  long DECIMAL(10,8) UNSIGNED NOT NULL
//  )");

 create_table("db_hack", "db_datosalerta","(
  id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  categoria INT(3) UNSIGNED NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  necesidad VARCHAR(1024) NOT NULL,
  lon DECIMAL(13,10) NOT NULL,
  lat DECIMAL(13,10) NOT NULL
  )");

 ?>
