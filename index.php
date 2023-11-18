<?php
// Configuración de la base de datos
$host = "localhost";  // Cambia esto si tu base de datos está en otro servidor
$usuario = "root";
$contrasena = "";
$base_de_datos = "dia";

// Conexión a la base de datos
$conexion = new mysqli($host, $usuario, $contrasena, $base_de_datos);

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión a la base de datos: " . $conexion->connect_error);
}

// Consulta SQL para obtener los panes de Día de Muertos
$sql = "SELECT * FROM panes_dia_muertos";
$resultado = $conexion->query($sql);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Panes de Día de Muertos</title>
    <style>
        body {
            background-image: url('fondo.jpg'); /* Ruta de tu imagen de fondo */
            background-size: cover;
            font-family: Arial, sans-serif;
        }

        h1 {
            text-align: center;
            color: #fff;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.7);
        }

        th, td {
            border: 1px solid #000;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #333;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Panes de Día de Muertos</h1>

    <table>
        <tr>
            <th>Nombre</th>
            <th>Descripción</th>
            <th>Precio</th>
        </tr>

        <?php
        // Mostrar los datos de la base de datos en una tabla
        if ($resultado->num_rows > 0) {
            while ($fila = $resultado->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $fila["nombre"] . "</td>";
                echo "<td>" . $fila["descripcion"] . "</td>";
                echo "<td>$" . $fila["precio"] . "</td>";
            }
        } else {
            echo "<tr><td colspan='4'>No se encontraron panes de Día de Muertos en la base de datos.</td></tr>";
        }
        ?>

    </table>

    <?php
    // Cerrar la conexión a la base de datos
    $conexion->close();
    ?>

</body>
</html>
