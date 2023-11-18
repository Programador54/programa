-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 22:38:05
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
-- Base de datos: `peliculas`
--
CREATE DATABASE IF NOT EXISTS `peliculas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `peliculas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(226) NOT NULL,
  `descripcion` varchar(226) NOT NULL,
  `fecha_lanzamiento` varchar(226) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `descripcion`, `fecha_lanzamiento`, `imagen`) VALUES
(1, 'NCIS', 'Serie de television de crimen y drama', '2003', 'ncis.jpg'),
(3, 'Hackers', 'Pelicula sobre hackers informaticos', '1995', 'hackers.jpg'),
(5, 'Swordfish', 'Triller de accion sobre hacking', '2001', 'swordfish.jpg'),
(9, 'Antitrust', 'Triller de suspenso sobre tecnologia', '2001', NULL),
(10, 'The Circle', 'Triller dramatico de ciencia ficcion', '2017', NULL),
(11, 'Ralph Breaks the Internet', 'Pelicula de animacion sobre amistad', '2018', NULL),
(12, 'The Internship', 'Comedia sobre dos vendedores que consiguen trabajo en Google', '2013-06-07', NULL),
(13, 'The Imitation Game', 'Biopic sobre Alan Turing y cómo descifró el código Enigma en la WW2', '2014-11-14', NULL),
(14, 'The Fifth Estate', 'Película biográfica sobre Julian Assange y el sitio WikiLeaks', '2013-10-18', NULL),
(15, 'Snowden', 'Biopic sobre Edward Snowden y su revelación de información clasificada de la NSA', '2016-09-16', NULL),
(16, 'The Billion Dollar Code', 'Miniserie sobre la demanda legal entre artistas alemanes y Google Earth', '2021-09-22', NULL),
(17, 'The Playlist', 'Serie sobre los orígenes de Spotify y la industria musical', '2022-10-13', NULL),
(18, 'The Social Network', 'Película sobre la creación de Facebook por Mark Zuckerberg', '2010-10-01', NULL),
(19, 'Silicon Valley', 'Serie de comedia sobre emprendedores en Silicon Valley', '2014-04-06', NULL),
(20, 'Mr. Robot', 'Serie dramática sobre un hacker que trabaja para destruir una corporación', '2015-06-24', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
