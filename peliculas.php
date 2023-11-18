<?php
// Configuración de la base de datos
$host = "localhost";  // Cambia esto si tu base de datos está en otro servidor
$usuario = "root";
$contrasena = "";
$base_de_datos = "peliculas";

// Conexión a la base de datos
$conexion = new mysqli($host, $usuario, $contrasena, $base_de_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión a la base de datos: " . $conexion->connect_error);
}

// Consulta SQL para obtener los disfraces de Día de Muertos
$sql = "SELECT * FROM peliculas";
$resultado = $conexion->query($sql);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Peliculas</title>
    <style>

        body {
            background-color: grey;
            cursor: crosshair;
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            color: red;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.7);
        }

        th, td {
            background-color: #6ff549;
            border: 1px solid #000;
            color: black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: greenyellow;
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Peliculas</h1>

    <table>
        <tr>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Precio</th>
            <th>Imagen</th>
        </tr>

        <?php
        // Mostrar los datos de la base de datos en una tabla
        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $fila["nombre"] . "</td>";
                echo "<td>" . $fila["descripcion"] . "</td>";
                echo "<td>$" . $fila["fecha_lanzamiento"] . "</td>";
                echo "</tr>";
            }
        } else {
            echo "<tr><td colspan='4'>No se encontraron disfraces de Día de Muertos en la base de datos.</td></tr>";
        }
        ?>
        <th>
            <img src="swordfish.jpg" alt="" width="300px" height="300px">
        </th>
        <th>
            <img src="ncis.jpg" alt="" width="300px" height="300px">
        </th>
        <th>
            <img src="hackers.jpg" alt="" width="300px" height="300px">
        </th>
    </table>

    <?php
    // Cerrar la conexión a la base de datos
    $conexion->close();
    ?>

</body>
</html>