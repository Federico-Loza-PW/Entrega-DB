-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2025 a las 00:31:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pagina_productos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `Marcas` varchar(50) NOT NULL,
  `Chevrolet` varchar(50) NOT NULL,
  `Fiat` varchar(50) NOT NULL,
  `Ford` varchar(50) NOT NULL,
  `Peugeot` varchar(50) NOT NULL,
  `Renault` varchar(50) NOT NULL,
  `Volkswagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo_productos`
--

CREATE TABLE `modelo_productos` (
  `Modelo` varchar(50) NOT NULL,
  `Corsa` varchar(50) NOT NULL,
  `Prisma` varchar(50) NOT NULL,
  `Uno` varchar(50) NOT NULL,
  `Siena` varchar(50) NOT NULL,
  `Falcon` varchar(50) NOT NULL,
  `Ecosport` varchar(50) NOT NULL,
  `504` varchar(50) NOT NULL,
  `505` varchar(50) NOT NULL,
  `R19` varchar(50) NOT NULL,
  `Logan` varchar(50) NOT NULL,
  `Gol` varchar(50) NOT NULL,
  `Suran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_productos`
--

CREATE TABLE `productos_productos` (
  `Productos` varchar(50) NOT NULL,
  `Cables` varchar(50) NOT NULL,
  `Bujias` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`Marcas`);

--
-- Indices de la tabla `modelo_productos`
--
ALTER TABLE `modelo_productos`
  ADD UNIQUE KEY `Marca-modelo` (`Modelo`);

--
-- Indices de la tabla `productos_productos`
--
ALTER TABLE `productos_productos`
  ADD UNIQUE KEY `modelo-producto` (`Productos`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modelo_productos`
--
ALTER TABLE `modelo_productos`
  ADD CONSTRAINT `modelo_productos_ibfk_1` FOREIGN KEY (`Modelo`) REFERENCES `marcas` (`Marcas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
