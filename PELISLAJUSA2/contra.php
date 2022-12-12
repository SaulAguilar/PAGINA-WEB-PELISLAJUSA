<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
	$host="localhost";
	$usuario="root";
	$clave="";
	$bd="lajusa";	
	$conexion=mysqli_connect($host,$usuario,$clave,$bd);

	$usuario= $_POST['usua'];
	$query = mysqli_query($conexion,"SELECT * FROM usuario WHERE usuario='".$usuario."'");
	$nr= mysqli_num_rows($query);
	if ($nr==1) {
        $query = mysqli_query($conexion,"SELECT * FROM usuario where usuario='".$usuario."'");
        ?><br><br><br>
        <center>
            <img src="img/pe.jpg.png">
        <table class="le">
		<thead>
			<tr>
                <th><h1>HOLA <?php echo $usuario; ?> TU CONTRASEÑA ES: </h1></th>
			</tr>
		</thead>
		<tbody>
			<?php 
				while ($row = mysqli_fetch_array($query)) {
			?>
			<tr>

                <td><center><?php echo $row['contra']?></center></td>

	
			</tr>

            </center>
		<?php
			}
            ?>
            </tbody>
            </table><br><br>
            <?php
	}else if($nr==0){
		header("location:login.php");
	}
	?><br><br><br><br><br>
                <label>LISTO, AHORA <a href="login.php">INICIA SESION!!</a></label>
</body>
</html>