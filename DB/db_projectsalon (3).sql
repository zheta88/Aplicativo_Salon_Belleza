-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2020 a las 01:35:22
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
-- Base de datos: `db_projectsalon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_empleados`
--

CREATE TABLE `contrato_empleados` (
  `idCONTRATO_EMPLEADOS` int(10) UNSIGNED NOT NULL,
  `Rol_Personas_idRol_Personas` int(10) UNSIGNED NOT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `FECHA_FINALIZACION` datetime DEFAULT NULL,
  `SALARIO` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `Cedula` bigint(20) NOT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Apellido` varchar(40) DEFAULT NULL,
  `Celular` bigint(20) DEFAULT NULL,
  `Direccion` varchar(40) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Contrasena` varchar(260) NOT NULL,
  `ROL_idROL` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`Cedula`, `Nombre`, `Apellido`, `Celular`, `Direccion`, `Correo`, `Contrasena`, `ROL_idROL`) VALUES
(11111, 'prueba 2', 'prueba', 843858, 'cl 56 56 56', 'prueba2@gmail.com', '202cb962ac59075b964b07152d234b70', 2),
(12344, 'carlos', 'perez', 5646, 'cr 34 ', 'carlospe@gmail.co', '202cb962ac59075b964b07152d234b70', 3),
(67890, 'Zully', 'Tamayo', 311484980, 'Calle 13#10-60', 'zullytamayo@gmail.com', '202cb962ac59075b964b07152d234b70', 1),
(77777, 'guillerm', 'jimenez', 2635436, 'CL 56 NO 32|', 'guillermoji@gmail.com', '202cb962ac59075b964b07152d234b70', 3),
(454545, 'lorna', 'umaña', 2355, 'cl 56 56 56', 'lorna5@gmail.com', '202cb962ac59075b964b07152d234b70', 2),
(7767676, 'pedro', 'Torres', 545, 'cl j no 45 k', 'pepe@gmail.com', 'ec6a6536ca304edf844d1d248a4f08dc', 2),
(7879899, 'tatiana', 'torres', 28733, 'cl 34 34 34', 'tata@gmail.com', '202cb962ac59075b964b07152d234b70', 3),
(12121212, 'lucas', 'salas', 3142435, 'cl 12', 'lucas@gmail.com', '$2y$10$SUwIx.E8l8jE1', 2),
(98449864, 'William ', 'Ramirez', 31295850, 'cl 34 34 34', 'william@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02', 3),
(100400500, 'Camilo Ernesto', 'Medina Arias', 3142343445, 'CL 161 NO 16D-40', 'cami10@gmail.com', '$2y$10$cNyRfHDbjjxqm', 2),
(787856787, 'paula', 'parrada', 34867698, 'cl u', 'paulapa@gmail.com', '678', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idROL` int(10) UNSIGNED NOT NULL,
  `NOMBRE_ROL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idROL`, `NOMBRE_ROL`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_empleado`
--

CREATE TABLE `rol_empleado` (
  `idROL_EMPLEADO` int(10) UNSIGNED NOT NULL,
  `Nombre_Rol_Empleado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_empleado`
--

INSERT INTO `rol_empleado` (`idROL_EMPLEADO`, `Nombre_Rol_Empleado`) VALUES
(1, 'pedicurista'),
(2, 'manicurista'),
(3, 'tinturas'),
(4, 'estilista'),
(5, 'peinados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_personas`
--

CREATE TABLE `rol_personas` (
  `idRol_Personas` int(10) UNSIGNED NOT NULL,
  `PERSONAS_cedula` bigint(20) NOT NULL,
  `ROL_EMPLEADO_idROL_EMPLEADO` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_personas`
--

INSERT INTO `rol_personas` (`idRol_Personas`, `PERSONAS_cedula`, `ROL_EMPLEADO_idROL_EMPLEADO`) VALUES
(1, 787856787, 1),
(2, 98449864, 2),
(3, 12344, 3),
(4, 7879899, 4),
(5, 77777, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idSERVICIOS` int(10) UNSIGNED NOT NULL,
  `Tipo_servicio` varchar(20) DEFAULT NULL,
  `Costo` float DEFAULT NULL,
  `Genero` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idSERVICIOS`, `Tipo_servicio`, `Costo`, `Genero`) VALUES
(1, 'PEDICURE', 12000, 'MUJER'),
(2, 'MANICURE', 10000, 'HOMBRE'),
(3, 'TINTURA', 50000, 'MUJER'),
(4, 'CORTE CABELLO', 14000, 'HOMBRE'),
(5, 'PEINADO', 15000, 'MUJER');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contrato_empleados`
--
ALTER TABLE `contrato_empleados`
  ADD PRIMARY KEY (`idCONTRATO_EMPLEADOS`),
  ADD KEY `CONTRATO_EMPLEADOS_FKIndex1` (`Rol_Personas_idRol_Personas`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`Cedula`),
  ADD KEY `PERSONAS_FKIndex1` (`ROL_idROL`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idROL`);

--
-- Indices de la tabla `rol_empleado`
--
ALTER TABLE `rol_empleado`
  ADD PRIMARY KEY (`idROL_EMPLEADO`);

--
-- Indices de la tabla `rol_personas`
--
ALTER TABLE `rol_personas`
  ADD PRIMARY KEY (`idRol_Personas`),
  ADD KEY `PERSONAS_cedula` (`PERSONAS_cedula`),
  ADD KEY `ROL_EMPLEADO_idROL_EMPLEADO` (`ROL_EMPLEADO_idROL_EMPLEADO`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`idSERVICIOS`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contrato_empleados`
--
ALTER TABLE `contrato_empleados`
  MODIFY `idCONTRATO_EMPLEADOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idROL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol_empleado`
--
ALTER TABLE `rol_empleado`
  MODIFY `idROL_EMPLEADO` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `rol_personas`
--
ALTER TABLE `rol_personas`
  MODIFY `idRol_Personas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `idSERVICIOS` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contrato_empleados`
--
ALTER TABLE `contrato_empleados`
  ADD CONSTRAINT `contrato_empleados_ibfk_1` FOREIGN KEY (`Rol_Personas_idRol_Personas`) REFERENCES `rol_personas` (`idRol_Personas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`ROL_idROL`) REFERENCES `rol` (`idROL`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rol_personas`
--
ALTER TABLE `rol_personas`
  ADD CONSTRAINT `rol_personas_ibfk_1` FOREIGN KEY (`PERSONAS_cedula`) REFERENCES `personas` (`Cedula`),
  ADD CONSTRAINT `rol_personas_ibfk_2` FOREIGN KEY (`ROL_EMPLEADO_idROL_EMPLEADO`) REFERENCES `rol_empleado` (`idROL_EMPLEADO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
