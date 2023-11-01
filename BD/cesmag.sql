-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2023 a las 14:55:00
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cesmag`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultades`
--

CREATE TABLE `facultades` (
  `codigo_fac` varchar(5) COLLATE utf8_bin NOT NULL,
  `nombre_fac` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `facultades`
--

INSERT INTO `facultades` (`codigo_fac`, `nombre_fac`) VALUES
('10', 'Artes'),
('20', 'Ingenieria'),
('30', 'Arquitectura'),
('40', 'Ciencias de la salud'),
('50', 'Ciencias sociales y humanas'),
('60', 'Ciencias basicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `codigo_prg` varchar(5) COLLATE utf8_bin NOT NULL,
  `nombre_prg` varchar(100) COLLATE utf8_bin NOT NULL,
  `facultad` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`codigo_prg`, `nombre_prg`, `facultad`) VALUES
('200', 'Ing. sistemas', '20'),
('201', 'Ing. software', '20'),
('400', 'Medicina', '40'),
('500', 'Derecho', '50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facultades`
--
ALTER TABLE `facultades`
  ADD PRIMARY KEY (`codigo_fac`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`codigo_prg`),
  ADD KEY `fk_facultad` (`facultad`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `fk_facultad` FOREIGN KEY (`facultad`) REFERENCES `facultades` (`codigo_fac`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
