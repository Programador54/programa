<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "biblioteca";

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener todos los libros
$sql = "SELECT * FROM libros";
$result = $conn->query($sql);

// Cerrar la conexión
$conn->close();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Libros</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <h1>Lista de Libros</h1>

    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Autor</th>
            <th>Editorial</th>
        </tr>

        <?php
        // Mostrar los datos en la tabla
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['nombre']}</td>
                        <td>{$row['autor']}</td>
                        <td>{$row['editorial']}</td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='4'>No hay libros disponibles</td></tr>";
        }
        ?>
        <td><img src="anillos.jpg" alt="" width="300px" height="300px"></td>
        <td><img src="harry.jpg" alt="" width="300px" height="300px"></td>
        <td><img src="1998.jpg" alt="" width="300px" height="300px"></td>
    </table>

    <h1>Recomiendo el Libro La mecanica del corazón de Oscar While ya que es un libro que describe la historia de amor de
        dos jovenes con un final interesante
    </h1>

</body>
</html>
