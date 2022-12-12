<!DOCTYPE html>
<html>
<head>
	<title>REGISTRO</title>
	<link rel="stylesheet" href="style.css">
</head>
<body class="le" background="img/fondo.jpg">
	
	<center>
	<div>
		<form action="insertar.php" method="POST">
		<h1>BIENVENIDO NUEVO USUARIO</h1>
		
		<h4>REGISTRA TUS DATOS</h4>
		<br>
		<label>USUARIO:</label><br>
		<input type="text" name="usuario"><br><br>
		<label>NOMBRE:</label><br>
		<input type="text" name="nombre_usuario"><br><br>
		<label>APELLIDO PATERNO:</label><br>
		<input type="text" name="ap_paterno"><br><br>
		<label>APELLIDO MATERNO:</label><br>
		<input type="text" name="ap_materno"><br><br>
		<label>EDAD:</label><br>
		<input type="text" name="edad"><br><br>
		<label>CONTRASEÑA:</label><br>
		<input type="text" name="contra"><br><br>
        <label>GENERO DE PELICULAS QUE TE GUSTA:</label><br>
		<input type="text" name="gusto_genero"><br><br>
		<input type="submit" class="boton3" name="" value="Agregar">
		<p>¿YA TIENES UNA CUENTA? <a href="login.php"> INICIA SESION  </a></p>
		</form>
	</div>
	</center>
</body>
</html>