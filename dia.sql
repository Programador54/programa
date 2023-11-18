-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 23:25:10
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dia`
--
CREATE DATABASE IF NOT EXISTS `dia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disfraces_dia_muertos`
--

CREATE TABLE `disfraces_dia_muertos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `disfraces_dia_muertos`
--

INSERT INTO `disfraces_dia_muertos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Catrina', 'Elegante disfraz de Catrina con maquillaje y vestido.', 35.00, 'catrina.jpg'),
(2, 'Calavera Mexicana', 'Disfraz de calavera mexicana con traje colorido.', 25.00, 'calavera_mexicana.jpg'),
(3, 'La Llorona', 'Disfraz de La Llorona con vestido blanco y velo.', 30.00, 'la_llorona.jpg'),
(4, 'Esqueleto', 'Disfraz de esqueleto con máscara y ropa negra.', 20.00, 'esqueleto.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofrendas_dia_muertos`
--

CREATE TABLE `ofrendas_dia_muertos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ofrendas_dia_muertos`
--

INSERT INTO `ofrendas_dia_muertos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Ofrenda de flores', 'Hermosa ofrenda floral con cempasúchil y rosas.', 50.00, 'ofrenda_flores.jpg'),
(2, 'Ofrenda de alimentos', 'Incluye alimentos tradicionales como tamales y pan de muerto.', 75.00, 'ofrenda_alimentos.jpg'),
(3, 'Ofrenda de velas', 'Ofrenda con velas de colores y calaveras de azúcar.', 30.00, 'ofrenda_velas.jpg'),
(4, 'Ofrenda de recuerdos', 'Incluye fotos y objetos personales de los seres queridos.', 45.00, 'ofrenda_recuerdos.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `panes_dia_muertos`
--

CREATE TABLE `panes_dia_muertos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `panes_dia_muertos`
--

INSERT INTO `panes_dia_muertos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`) VALUES
(1, 'Pan de Muerto Tradicional', 'Delicioso pan de muerto con azúcar y anís.', 2.99, 'pan_tradicional.jpg'),
(2, 'Pan de Muerto Relleno', 'Pan de muerto relleno de chocolate o crema.', 3.49, 'pan_relleno.jpg'),
(3, 'Calaveras de Azúcar', 'Calaveras de azúcar decoradas a mano.', 1.99, 'calaveras.jpg'),
(4, 'Galletas de Día de Muertos', 'Galletas con diseños de calaveras y flores.', 1.49, 'galletas.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `disfraces_dia_muertos`
--
ALTER TABLE `disfraces_dia_muertos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ofrendas_dia_muertos`
--
ALTER TABLE `ofrendas_dia_muertos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `panes_dia_muertos`
--
ALTER TABLE `panes_dia_muertos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `disfraces_dia_muertos`
--
ALTER TABLE `disfraces_dia_muertos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ofrendas_dia_muertos`
--
ALTER TABLE `ofrendas_dia_muertos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `panes_dia_muertos`
--
ALTER TABLE `panes_dia_muertos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
