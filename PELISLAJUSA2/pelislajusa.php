<?php
	$host="localhost";
	$usuario="root";
	$clave="";
	$bd="lajusa";	
	$conexion=mysqli_connect($host,$usuario,$clave,$bd);

	$usuario= $_POST['usua'];
	$contraseña= $_POST['contraseña'];
	$query = mysqli_query($conexion,"SELECT * FROM usuario WHERE usuario='".$usuario."' and contra='".$contraseña."'");
	$nr= mysqli_num_rows($query);
	if ($nr==1) {

	}else if($nr==0){
		header("location:login.php");
	}
	?>
	<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="style.css">
	<title>INICIO</title>
</head>
<body background="img/fondo.jpg">
	<center>
		<h1 class="le">BIENVENIDO:<?php echo $usuario; ?></h1>
	</center>
	<input type="button" class="boton" value="SALIR" onclick="location.href='login.php'">
	<br>
	<center>
	<h4 class="le">SELECICONA CLASIFICACIONES SI QUIERES SABER ACERCA DE ELLAS</h4>
	<input type="button" class="boton3" value="CLASIFICACIONES" onclick="location.href='clasificaciones.php'">
	<br><br><br>
	<h4 class="le">SELECCIONA EL GENERO QUE TE INTERESE</h4>
	<input type="button" class="boton3" value="TERROR" onclick="location.href='terror.php'">
	<br><br><br>
	<input type="button" class="boton3" value="SUSPENSO" onclick="location.href='suspenso.php'">
	<br><br><br>
	<input type="button" class="boton3" value="CIENCIA Y FICCION" onclick="location.href='ciencia.php'">
	<br><br><br>
	<input type="button" class="boton3" value="ACCION" onclick="location.href='accion.php'">
	<br><br><br>
	<input type="button" class="boton3" value="DRAMA/ROMANCE" onclick="location.href='drama.php'">
	<br><br><br>
	<input type="button" class="boton3" value="COMEDIA" onclick="location.href='comedia.php'">
	<br><br><br>
	<input type="button" class="boton3" value="FANTASIA/ANIMACION" onclick="location.href='fantasia.php'">
	<br><br><br>
	<input type="button" class="boton3" value="TODOS LOS GENEROS" onclick="location.href='todas.php'">
	</center>
</body>
</html>