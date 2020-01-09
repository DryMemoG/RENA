-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-01-2020 a las 00:54:27
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `codactividad` int(11) NOT NULL,
  `nombreactividad` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `punteoasignado` float NOT NULL,
  `punteoobtenido` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `codactividades` int(11) NOT NULL,
  `codactividad` int(11) NOT NULL,
  `codcurso` int(11) NOT NULL,
  `codalumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `codalumno` int(11) NOT NULL,
  `nombresalumno` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidosalumno` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosgrado`
--

CREATE TABLE `alumnosgrado` (
  `codalumnosgrado` int(11) NOT NULL,
  `codalumno` int(11) NOT NULL,
  `codgrado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `codcurso` int(11) NOT NULL,
  `nombrecurso` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `codgrado` int(11) NOT NULL,
  `notafinal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosunidad`
--

CREATE TABLE `cursosunidad` (
  `codcursosunidad` int(11) NOT NULL,
  `codcurso` int(11) NOT NULL,
  `codunidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `codgrado` int(11) NOT NULL,
  `nombregrado` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidad`
--

CREATE TABLE `unidad` (
  `codunidad` int(11) NOT NULL,
  `nombreunidad` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`codactividad`);

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`codactividades`),
  ADD KEY `codactividad` (`codactividad`),
  ADD KEY `codcurso` (`codcurso`),
  ADD KEY `codalumno` (`codalumno`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`codalumno`);

--
-- Indices de la tabla `alumnosgrado`
--
ALTER TABLE `alumnosgrado`
  ADD PRIMARY KEY (`codalumnosgrado`),
  ADD KEY `codalumno` (`codalumno`),
  ADD KEY `codgrado` (`codgrado`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`codcurso`),
  ADD KEY `codgrado` (`codgrado`);

--
-- Indices de la tabla `cursosunidad`
--
ALTER TABLE `cursosunidad`
  ADD PRIMARY KEY (`codcursosunidad`),
  ADD KEY `codcurso` (`codcurso`),
  ADD KEY `codunidad` (`codunidad`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`codgrado`);

--
-- Indices de la tabla `unidad`
--
ALTER TABLE `unidad`
  ADD PRIMARY KEY (`codunidad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `codactividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `codactividades` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `codalumno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alumnosgrado`
--
ALTER TABLE `alumnosgrado`
  MODIFY `codalumnosgrado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `codcurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cursosunidad`
--
ALTER TABLE `cursosunidad`
  MODIFY `codcursosunidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `codgrado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidad`
--
ALTER TABLE `unidad`
  MODIFY `codunidad` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`codactividad`) REFERENCES `actividad` (`codactividad`),
  ADD CONSTRAINT `actividades_ibfk_2` FOREIGN KEY (`codcurso`) REFERENCES `curso` (`codcurso`),
  ADD CONSTRAINT `actividades_ibfk_3` FOREIGN KEY (`codalumno`) REFERENCES `alumno` (`codalumno`);

--
-- Filtros para la tabla `alumnosgrado`
--
ALTER TABLE `alumnosgrado`
  ADD CONSTRAINT `alumnosgrado_ibfk_1` FOREIGN KEY (`codgrado`) REFERENCES `grado` (`codgrado`),
  ADD CONSTRAINT `alumnosgrado_ibfk_2` FOREIGN KEY (`codalumno`) REFERENCES `alumno` (`codalumno`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`codgrado`) REFERENCES `grado` (`codgrado`);

--
-- Filtros para la tabla `cursosunidad`
--
ALTER TABLE `cursosunidad`
  ADD CONSTRAINT `cursosunidad_ibfk_1` FOREIGN KEY (`codunidad`) REFERENCES `unidad` (`codunidad`),
  ADD CONSTRAINT `cursosunidad_ibfk_2` FOREIGN KEY (`codcurso`) REFERENCES `curso` (`codcurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
