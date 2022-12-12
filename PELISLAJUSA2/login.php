<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="style.css">
	<title>LOGIN</title>
</head>
<body class="img" background="img/in2.gif">
	<br><br><br><br><br><br>
	<center class="le">
		<h1>BIENVENIDO A PELISLAJUSA</h1>
		<br><br>
		<h4>INICIA SESION </h4>
		<form action="pelislajusa.php" method="post">
			<label>INGRESA TU USUARIO:</label>
			<br>
			<input type="text" name="usua" placeholder="USUARIO">
			<br><br><br>
			<label>INGRESA TU CONTRASEÑA:</label>
			<br>
			<input type="password" name="contraseña" placeholder="CONTRASEÑA">
			<br><br><br>	
			<input type="submit" class="boton3" name="" value="INICIAR SESION">		
		</form>
		<br>
		<label>¿AUN NO TIENES UNA CUENTA?</label>
		<a href="registro.php">REGISTRATE!!</a>
		<br><br>
		<label>¿YA NO RECUERDAS TU CONTRASEÑA?, ENTONCES <a href="recu.php">RECUPERALA!!</a></label>
	</center>
</body>
</html>