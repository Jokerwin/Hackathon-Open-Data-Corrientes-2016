<?php

// Crear base de datos
function create_database($db_name){
  $con = mysqli_connect('localhost','admin','1234');
  $sql = "CREATE DATABASE " . $db_name;
  if($con->query($sql)){
    echo "Base de datos '" . $db_name . "' creada con éxito.  ";
  } else {
    echo "No se ha podido crear la Base de datos '" . $db_name . "'.  ";
  }
}

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
  $con = mysqli_connect('localhost','admin','1234',$db_name);
  $sql = "CREATE TABLE " . $table_name . " " . $table_content;
  if($con->query($sql)){
    echo "Tabla '" . $table_name . "' creada con éxito.  ";
  } else {
    echo "No se ha podido crear la Tabla '" . $table_name . "'.";
  }
}

// Ejecutar todo:
/*

create_database("db_hsn");

create_table("db_hsn", "db_users","(
 id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 dni INT(9) UNSIGNED NOT NULL,
 password VARCHAR(255) NOT NULL,
 colegio INT(6) UNSIGNED NOT NULL
 )");

 create_table("db_hsn", "db_datosalumno","(
  id INT(8) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  dni INT(9) UNSIGNED NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  nacimiento DATE NOT NULL,
  edad INT(2) NOT NULL,
  colegio INT(6) UNSIGNED NOT NULL
  )");

  */
 ?>
