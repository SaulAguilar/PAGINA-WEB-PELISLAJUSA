<?php
include("conexion.php");
$con=conectar();

$usuario=$_POST['usuario'];
$nombre=$_POST['nombre_usuario'];
$ap_paterno=$_POST['ap_paterno'];
$ap_materno=$_POST['ap_materno'];
$edad=$_POST['edad'];
$contra=$_POST['contra'];
$gusto_genero=$_POST['gusto_genero'];

if($usuario!=null||$nombre!=null||$ap_paterno!=null||$ap_materno!=null||$edad!=null||$contra!=null||$gusto_genero!=null){
    $sql="insert into usuario(usuario, nombre_usuario, ap_paterno, ap_materno, edad, contra, gusto_genero) values('".$usuario."','".$nombre."','".$ap_paterno."','".$ap_materno."','".$edad."','".$contra."','".$gusto_genero."')";
        mysqli_query($con,$sql);

        if($user=1){
            header("location:login.php");
        }
}

?>