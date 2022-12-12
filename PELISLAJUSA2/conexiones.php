<?php
function conectar(){
    $host = "localhost";
    $usuario = "root";
    $clave = "";
    $bd = "lajusa";
    $conexiones = mysqli_connect($host,$usuario,$clave);
    mysqli_select_db($conexiones,$bd);
    return $conexiones;
}
?>