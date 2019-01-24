-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2019 a las 00:16:13
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_cita` int(11) NOT NULL,
  `paciente` text COLLATE utf8_bin,
  `doctor` text COLLATE utf8_bin,
  `doctor_asignado` text COLLATE utf8_bin,
  `enfermera` text COLLATE utf8_bin,
  `fecha` date DEFAULT NULL,
  `hora_inicial` time DEFAULT NULL,
  `hora_final` time DEFAULT NULL,
  `materiales` text COLLATE utf8_bin,
  `duracion` text COLLATE utf8_bin,
  `estatus` text COLLATE utf8_bin,
  `servicio` text COLLATE utf8_bin,
  `cubiculo` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_cita`, `paciente`, `doctor`, `doctor_asignado`, `enfermera`, `fecha`, `hora_inicial`, `hora_final`, `materiales`, `duracion`, `estatus`, `servicio`, `cubiculo`) VALUES
(106, 'qa', '', NULL, NULL, '2019-01-01', NULL, NULL, NULL, NULL, '', '', ''),
(107, 'qa', '', NULL, NULL, '2019-01-02', NULL, NULL, NULL, NULL, '', '', ''),
(108, 'qa', '', NULL, NULL, '2019-01-10', NULL, NULL, NULL, NULL, '', '', ''),
(109, 'we', '', NULL, NULL, '2019-01-03', NULL, NULL, NULL, NULL, '', '', ''),
(110, '2', '', NULL, NULL, '2019-01-02', NULL, NULL, NULL, NULL, '', '', ''),
(111, NULL, NULL, NULL, NULL, '2019-01-04', '07:00:00', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'pac1', 'doc1', NULL, NULL, '2019-01-10', '10:20:00', '11:00:00', NULL, NULL, NULL, 'serv', '5'),
(113, 'ame', 'ame', NULL, NULL, '2019-01-13', '01:00:00', '02:00:00', NULL, NULL, NULL, 'aaa', 'a4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_cita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
