<?php
function conectar(){
$host="localhost";
$usuario="root";
$clave="";
$bd="lajusa";	
$conexion=mysqli_connect($host,$usuario,$clave);
mysqli_select_db($conexion,$bd);
return $conexion;
}


?>