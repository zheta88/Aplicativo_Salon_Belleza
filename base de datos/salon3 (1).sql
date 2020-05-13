-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2020 a las 05:44:50
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
-- Base de datos: `salon3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato_empleados`
--

CREATE TABLE `contrato_empleados` (
  `idCONTRATO_EMPLEADOS` int(11) NOT NULL,
  `Rol_Personas_idRol_Personas` int(11) DEFAULT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `FECHA_FINALIZACION` datetime DEFAULT NULL,
  `SALARIO` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contrato_empleados`
--

INSERT INTO `contrato_empleados` (`idCONTRATO_EMPLEADOS`, `Rol_Personas_idRol_Personas`, `FECHA_INICIO`, `FECHA_FINALIZACION`, `SALARIO`) VALUES
(1, 1, '2015-12-01 00:00:00', '2018-12-05 00:00:00', 1200000),
(2, 3, '2018-12-05 00:00:00', NULL, 1300000),
(3, 2, '2017-12-07 00:00:00', '2019-12-12 00:00:00', 1100000),
(4, 4, '2019-12-08 00:00:00', NULL, 900000),
(5, 7, '2020-01-01 00:00:00', NULL, 900000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `ROL_idROL` int(11) DEFAULT NULL,
  `idPersonas` int(11) NOT NULL,
  `Cedula` bigint(20) DEFAULT NULL,
  `Nombre` varchar(40) DEFAULT NULL,
  `Apellidos` varchar(40) DEFAULT NULL,
  `Celular` bigint(20) DEFAULT NULL,
  `Direccion` varchar(40) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Contrasena` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`ROL_idROL`, `idPersonas`, `Cedula`, `Nombre`, `Apellidos`, `Celular`, `Direccion`, `Correo`, `Usuario`, `Contrasena`) VALUES
(2, 1, 1122, 'Lorena', '	Ramirez', 432423, 'KR 88', 'LORENA@GMAIL.COM', 'LORENA22', 'ed265bc903a5a097f61d3ec064d96d2e'),
(2, 2, 3322, 'Fabio', '	Ortega', 234234, '	KR 66	', 'FABIO@GMAIL.COM', 'FABIO65', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 3, 1234, 'LAURA', '	OCHOA', 788652, 'KR 100', 'LAURA@GMAIL.COM', 'LAURA90', '12345'),
(2, 5, 33225, 'CAMILA', '	PEREZ', 565656, 'KR 01', 'CAMILA@GMAIL.COM', 'CAMILA72', '1234567'),
(1, 6, 3344, 'ZULLY', 'TAMAYO', 845484, 'KR 20 13', 'ZULLY@GMAIL.COM', 'ZULLY72', '202cb962ac59075b964b07152d234b70'),
(3, 7, 44555, 'SEBASTIAN', '	RODRIGUEZ', 4555, 'KR 23 45', 'SEBASTIAN@GMAIL.COM', 'SEBASTIAN72', '202cb962ac59075b964b07152d234b70'),
(3, 8, 5566, 'FREDDY', 'RAMOS', 46346347, 'KR 45 60', 'FREDDY@GMAIL.COM', 'FREDDY72', '202cb962ac59075b964b07152d234b70'),
(2, 11, 898989, 'ines', 'romero', 131243424, 'cl 12 12 12', 'ines@gmail.com', 'ines1', '202cb962ac59075b964b07152d234b70'),
(3, 12, 909090, 'jhon', 'lombardi', 4132653, 'cl 1 1 1', 'jhon@gmail.com', 'jhon12', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idRESERVAS` int(11) NOT NULL,
  `PERSONAS_idPersonas` int(11) DEFAULT NULL,
  `SERVICIOS_idSERVICIOS` int(11) DEFAULT NULL,
  `Rol_Personas_idRol_Personas` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Observaciones` varchar(400) DEFAULT NULL,
  `Precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idRESERVAS`, `PERSONAS_idPersonas`, `SERVICIOS_idSERVICIOS`, `Rol_Personas_idRol_Personas`, `Fecha`, `Hora`, `Observaciones`, `Precio`) VALUES
(1, 3, 3, 1, '2020-05-05', '08:00:00', NULL, 14000),
(2, 5, 4, 6, '2020-05-05', '09:00:00', NULL, 10000),
(3, 6, 4, 6, '2020-08-07', '10:10:00', NULL, 50000),
(4, 2, 2, 2, '2020-05-04', '10:30:00', NULL, 14000),
(5, 7, 2, 7, '2020-05-09', '11:30:00', NULL, 10000),
(6, 5, 5, 1, '2020-06-02', '04:30:00', NULL, 16000),
(7, 1, 5, 1, '2020-06-02', '12:00:00', NULL, 16000),
(8, NULL, 1, NULL, '2000-02-23', '17:05:00', 'asfksf', 12000),
(9, NULL, 2, NULL, '2020-03-11', '12:00:00', '', 12000),
(10, 1, 1, 1, '2002-02-22', '12:12:00', '', 12000),
(11, 1, 1, 1, '2000-02-20', '17:05:00', '', 17000),
(12, NULL, NULL, NULL, '2020-12-12', '12:12:00', '', 12000),
(13, NULL, 1, 2, '2020-12-12', '12:00:00', '', 14000),
(14, 3, 3, 2, '2020-12-12', '12:12:00', '', 15000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idROL` int(11) NOT NULL,
  `NOMBRE_ROL` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idROL`, `NOMBRE_ROL`) VALUES
(1, 'Administrador'),
(2, 'Cliente'),
(3, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_empleado`
--

CREATE TABLE `rol_empleado` (
  `idROL_EMPLEADO` int(11) NOT NULL,
  `Nombre_Rol_Empleado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_empleado`
--

INSERT INTO `rol_empleado` (`idROL_EMPLEADO`, `Nombre_Rol_Empleado`) VALUES
(1, '	Peluquero'),
(2, 'Peluquero 2'),
(3, 'Pedicurista'),
(4, 'Peinados'),
(5, 'Manicurista'),
(6, 'Tinturas'),
(7, 'Depilacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_personas`
--

CREATE TABLE `rol_personas` (
  `idRol_Personas` int(11) NOT NULL,
  `ROL_EMPLEADO_idROL_EMPLEADO` int(11) DEFAULT NULL,
  `PERSONAS_idpersonas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol_personas`
--

INSERT INTO `rol_personas` (`idRol_Personas`, `ROL_EMPLEADO_idROL_EMPLEADO`, `PERSONAS_idpersonas`) VALUES
(1, 1, 6),
(2, 2, 7),
(3, 4, 6),
(4, 3, 7),
(5, 5, 8),
(6, 6, 7),
(7, 7, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `idSERVICIOS` int(11) NOT NULL,
  `Tipo_servicio` varchar(20) DEFAULT NULL,
  `Costo` double DEFAULT NULL,
  `Genero` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`idSERVICIOS`, `Tipo_servicio`, `Costo`, `Genero`) VALUES
(1, 'PEDICURE', 12000, 'MUJER'),
(2, 'MANICURE', 10000, 'HOMBRE'),
(3, 'CORTE CABELLO', 14000, 'HOMBRE'),
(4, 'TINTURA', 50000, 'MUJER'),
(5, 'PEINADO', 16000, 'MUJER'),
(6, 'CORTE CABELLO 2', 16000, 'MUJER');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contrato_empleados`
--
ALTER TABLE `contrato_empleados`
  ADD PRIMARY KEY (`idCONTRATO_EMPLEADOS`),
  ADD KEY `Rol_Personas_idRol_Personas` (`Rol_Personas_idRol_Personas`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idPersonas`),
  ADD KEY `ROL_idROL` (`ROL_idROL`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idRESERVAS`),
  ADD KEY `PERSONAS_idPersonas` (`PERSONAS_idPersonas`),
  ADD KEY `SERVICIOS_idSERVICIOS` (`SERVICIOS_idSERVICIOS`),
  ADD KEY `Rol_Personas_idRol_Personas` (`Rol_Personas_idRol_Personas`);

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
  ADD KEY `ROL_EMPLEADO_idROL_EMPLEADO` (`ROL_EMPLEADO_idROL_EMPLEADO`),
  ADD KEY `PERSONAS_idpersonas` (`PERSONAS_idpersonas`);

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
  MODIFY `idCONTRATO_EMPLEADOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idPersonas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idRESERVAS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `rol_empleado`
--
ALTER TABLE `rol_empleado`
  MODIFY `idROL_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol_personas`
--
ALTER TABLE `rol_personas`
  MODIFY `idRol_Personas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `idSERVICIOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contrato_empleados`
--
ALTER TABLE `contrato_empleados`
  ADD CONSTRAINT `contrato_empleados_ibfk_1` FOREIGN KEY (`Rol_Personas_idRol_Personas`) REFERENCES `rol_personas` (`ROL_EMPLEADO_idROL_EMPLEADO`);

--
-- Filtros para la tabla `personas`
--
ALTER TABLE `personas`
  ADD CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`ROL_idROL`) REFERENCES `rol` (`idROL`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`PERSONAS_idPersonas`) REFERENCES `personas` (`idPersonas`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`SERVICIOS_idSERVICIOS`) REFERENCES `servicios` (`idSERVICIOS`),
  ADD CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`Rol_Personas_idRol_Personas`) REFERENCES `rol_personas` (`idRol_Personas`);

--
-- Filtros para la tabla `rol_personas`
--
ALTER TABLE `rol_personas`
  ADD CONSTRAINT `rol_personas_ibfk_1` FOREIGN KEY (`ROL_EMPLEADO_idROL_EMPLEADO`) REFERENCES `rol_empleado` (`idROL_EMPLEADO`),
  ADD CONSTRAINT `rol_personas_ibfk_2` FOREIGN KEY (`PERSONAS_idpersonas`) REFERENCES `personas` (`idPersonas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
