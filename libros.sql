-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 23:02:02
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
-- Base de datos: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `editorial` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id`, `nombre`, `autor`, `editorial`) VALUES
(1, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Minotauro'),
(2, '1984', 'George Orwell', 'Debolsillo'),
(3, 'Cien años de soledad', 'Gabriel García Márquez', 'Diana'),
(4, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Salamandra'),
(5, 'Orgullo y prejuicio', 'Jane Austen', 'Alba'),
(6, 'Crimen y castigo', 'Fyodor Dostoevsky', 'Alianza'),
(7, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott'),
(8, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons'),
(9, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Real Academia Española'),
(10, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company'),
(11, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Harper & Row'),
(12, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(13, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus'),
(14, 'The Chronicles of Narnia', 'C.S. Lewis', 'Geoffrey Bles'),
(15, 'The Hunger Games', 'Suzanne Collins', 'Scholastic Press'),
(16, 'El Señor de los Anillos', 'J.R.R. Tolkien', 'Minotauro'),
(17, '1984', 'George Orwell', 'Debolsillo'),
(18, 'Cien años de soledad', 'Gabriel García Márquez', 'Diana'),
(19, 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Salamandra'),
(20, 'Orgullo y prejuicio', 'Jane Austen', 'Alba'),
(21, 'Crimen y castigo', 'Fyodor Dostoevsky', 'Alianza'),
(22, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott'),
(23, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons'),
(24, 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Real Academia Española'),
(25, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company'),
(26, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Harper & Row'),
(27, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(28, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus'),
(29, 'The Chronicles of Narnia', 'C.S. Lewis', 'Geoffrey Bles'),
(30, 'The Hunger Games', 'Suzanne Collins', 'Scholastic Press');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
