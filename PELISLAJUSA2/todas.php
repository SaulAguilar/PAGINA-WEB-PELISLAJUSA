<?php
include("conexion.php");
$con = conectar();
$sql = "select * from pelicula";
$query=mysqli_query($con,$sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="terror.css">
    <title>TODOS LOS GENEROS</title>
</head>

<body>
    <br><br>
    <h1><center>TODOS LOS GENEROS RECOMENDACIONES</center></h1>
    <br><br><br>
    <table border style="border-collapse: collapse;">
        <thead>
            <tr>
                <th bgcolor="magenta">ID_PELICULA</th>
                <th bgcolor="yellow">TITULO</th>
                <th bgcolor="lightblue">DURACION</th>
                <th bgcolor="orange">CLASIFICACION</th>
                <th bgcolor="purple">SINOPSIS</th>
                <th bgcolor="lightgreen">GENERO</th>
                <th bgcolor="gray">DONDE VER</th>
            </tr>
        </thead>

        <tbody>
            <?php
            while ($row = mysqli_fetch_array($query)) {
            ?>

                <tr>
                    <td><center><?php echo $row['id_pelicula'] ?></center></td>
                    <td><center><?php echo $row['titulo'] ?></td>
                    <td><center><?php echo $row['duracion'] ?></center></td>
                    <td><center><?php echo $row['clasificacion'] ?></center></td>
                    <td><center><?php echo $row['sinopsis'] ?></center></td>
                    <td><center><?php echo $row['genero'] ?></center></td>
                    <td><center><?php echo $row['donde_ver'] ?></center></td>
                </tr>

            <?php
            }
            ?>
        </tbody>
    </table>
    <center><h1><button class="boton cuatro" onclick="history.go(-1)"><span><h1>REGRESAR<h1></span></button></center>
</body>

</html>