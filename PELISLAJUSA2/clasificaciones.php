<?php
	include("conexion.php");
	$con=conectar();
	$sql="select * from clasificacion";
	$query=mysqli_query($con,$sql);

	?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
    <title>CLASIFICACIONES</title>
</head>
<body background="img/fondo.jpg">
    <input type="button" class="boton" value="REGRESAR" onclick="history.go(-1)">
<center>
		<h3 class="le">AQUI TIENES UNA TABLAS CON INFORMACION ACERCA DE LAS DIFERENTES</h3> 
		<h3 class="le">CLACIFICACIONES QUE EXISTEN EN EL CINE </h3>
		<br>
		<table class="le">
		<thead>
			<tr>
				<th>CLASIFICACION</th>
				<th>DESCRIPCION</th>
				<th>EDADES PERMITIDAS</th>
			</tr>
		</thead>
		<tbody>
			<?php 
				while ($row = mysqli_fetch_array($query)) {
			?>
			<tr>
				<td><?php echo $row['clasificacion']?></td>
				<td><?php echo $row['descripcion']?></td>
				<td><?php echo $row['edades_permitidas']?></td>
	
			</tr>
		<?php
			}
		
		?>
		</tbody>
	</table><br><br>
    <h4 class="le">AQUI TIENES UN EJEMPLO:</h4>
    <br>
    <img src="img/clas.jpg.png">
	</center>
</body>
</html>