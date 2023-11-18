<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="styles.css">
  
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #0077b6; /* Fondo azul frío */
            color: #f0f0f0; /* Texto blanco para combinar con el fondo */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #0496e3; /* Fondo ligeramente más claro */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }
        h1 {
            text-align: center;
        }
        p {
            font-size: 18px;
        }
        
        /* Estilo para cuando el cursor está sobre el contenedor */
        .container:hover {
            background-color: #03698f; /* Cambio de color al pasar el cursor */
        }

        /* Estilo de la línea animada */
        .container:hover h1::after {
            content: "";
            display: block;
            width: 100%;
            border-bottom: 2px solid #f0f0f0; /* Línea blanca animada */
            animation: underline 0.5s ease;
        }

        @keyframes underline {
            0% {
                width: 0;
            }
            100% {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Carta de Elogio</h1>
        <p>Querido Roberto,</p>
        <p>Quiero tomarme un momento para elogiar tus habilidades en HTML y CSS. Es verdaderamente impresionante lo que puedes lograr con estas tecnologías, y quiero destacar algunas de tus fortalezas:</p>
        <ul>
            <li>Tu capacidad para crear diseños web atractivos y funcionales es excepcional. Tus sitios siempre se ven profesionales y están bien organizados.</li>
            <li>Tu conocimiento de CSS es asombroso. La forma en que aplicas estilos complejos y efectos visuales a través de CSS demuestra tu experiencia.</li>
            <li>Eres un solucionador de problemas talentoso. Cuando nos encontramos con desafíos técnicos, siempre puedes encontrar una solución elegante utilizando HTML y CSS.</li>
            <li>Tus habilidades de optimización y rendimiento son notables. Tus sitios web cargan rápidamente y ofrecen una excelente experiencia al usuario.</li>
        </ul>
        <p>En resumen, tu experiencia en HTML y CSS es una verdadera ventaja para nuestro equipo. Continúa con el excelente trabajo y sigue inspirándonos a todos.</p>
        <p>Con gratitud,</p>
        <p>Israel </p>
    </div>
</body>
</html>