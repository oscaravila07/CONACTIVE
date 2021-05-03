-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2021 a las 21:45:24
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `Id_Carrera` int(11) NOT NULL,
  `NombreC` varchar(255) NOT NULL,
  `CodigoC` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `Id_Estado` int(11) NOT NULL,
  `NombreE` varchar(255) NOT NULL,
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`Id_Estado`, `NombreE`, `Id_Municipio`) VALUES
(1, 'CIUDAD DE MÉXICO', 1),
(2, 'CIUDAD DE MÉXICO', 2),
(3, 'CIUDAD DE MÉXICO', 3),
(4, 'CIUDAD DE MÉXICO', 4),
(5, 'CIUDAD DE MÉXICO', 5),
(6, 'CIUDAD DE MÉXICO', 6),
(7, 'CIUDAD DE MÉXICO', 7),
(8, 'CIUDAD DE MÉXICO', 8),
(9, 'CIUDAD DE MÉXICO', 9),
(10, 'CIUDAD DE MÉXICO', 10),
(11, 'CIUDAD DE MÉXICO', 11),
(12, 'CIUDAD DE MÉXICO', 12),
(13, 'CIUDAD DE MÉXICO', 13),
(14, 'CIUDAD DE MÉXICO', 14),
(15, 'CIUDAD DE MÉXICO', 15),
(16, 'CIUDAD DE MÉXICO', 16),
(17, 'ESTADO DE MÉXICO', 17),
(18, 'ESTADO DE MÉXICO', 18),
(19, 'ESTADO DE MÉXICO', 19),
(20, 'ESTADO DE MÉXICO', 20),
(21, 'ESTADO DE MÉXICO', 21),
(22, 'ESTADO DE MÉXICO', 22),
(23, 'ESTADO DE MÉXICO', 23),
(24, 'ESTADO DE MÉXICO', 24),
(25, 'ESTADO DE MÉXICO', 25),
(26, 'ESTADO DE MÉXICO', 26),
(27, 'ESTADO DE MÉXICO', 27),
(28, 'ESTADO DE MÉXICO', 28),
(29, 'ESTADO DE MÉXICO', 29),
(30, 'ESTADO DE MÉXICO', 30),
(31, 'ESTADO DE MÉXICO', 31),
(32, 'ESTADO DE MÉXICO', 32),
(33, 'ESTADO DE MÉXICO', 33),
(34, 'ESTADO DE MÉXICO', 34),
(35, 'ESTADO DE MÉXICO', 35),
(36, 'ESTADO DE MÉXICO', 36),
(37, 'ESTADO DE MÉXICO', 37),
(38, 'ESTADO DE MÉXICO', 38),
(39, 'ESTADO DE MÉXICO', 39),
(40, 'ESTADO DE MÉXICO', 40),
(41, 'ESTADO DE MÉXICO', 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE `expediente` (
  `Id_Expediente` int(11) NOT NULL,
  `FechaRegistro` date NOT NULL,
  `Calle` varchar(55) NOT NULL,
  `Numero` varchar(10) NOT NULL,
  `NumInt` varchar(10) DEFAULT NULL,
  `Colonia` varchar(55) NOT NULL,
  `CP` varchar(5) NOT NULL,
  `Id_Estado` int(11) NOT NULL,
  `FechaNac` date NOT NULL,
  `TelefonoC` int(10) NOT NULL,
  `Curp` int(18) NOT NULL,
  `NSS` int(11) NOT NULL,
  `Id_Carrera` int(11) NOT NULL,
  `Id_Semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `NombreG` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `Id_Municipio` int(11) NOT NULL,
  `NombreM` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`Id_Municipio`, `NombreM`) VALUES
(1, 'AZCAPOTZALCO'),
(2, 'COYOACÁN'),
(3, 'CUAJIMALPA DE MORELOS'),
(4, 'GUSTAVO A. MADERO'),
(5, 'IZTACALCO'),
(6, 'IZTAPALAPA'),
(7, 'LA MAGDALENA CONTRERAS'),
(8, 'MILPA ALTA'),
(9, 'ÁLVARO OBREGÓN'),
(10, 'TLÁHUAC'),
(11, ' TLALPAN'),
(12, 'XOCHIMILCO'),
(13, 'BENITO JUÁREZ'),
(14, 'CUAUHTÉMOC'),
(15, 'MIGUEL HIDALGO'),
(16, 'VENUSTIANO CARRANZA'),
(17, 'ACAMBAY DE RUÍZ CASTAÑEDA'),
(18, 'ACOLMAN'),
(19, 'ACULCO'),
(20, 'ALMOLOYA DE ALQUISIRAS'),
(21, 'ALMOLOYA DE JUÁREZ'),
(22, 'ALMOLOYA DEL RÍO'),
(23, 'AMANALCO'),
(24, 'AMATEPEC'),
(25, 'AMECAMECA'),
(26, 'APAXCO'),
(27, 'ATENCO'),
(28, 'ATIZAPÁN'),
(29, 'ATIZAPÁN DE ZARAGOZA'),
(30, 'ATLACOMULCO'),
(31, 'ATLAUTLA'),
(32, 'AXAPUSCO'),
(33, 'AYAPANGO'),
(34, 'CALIMAYA'),
(35, 'CAPULHUAC'),
(36, 'COACALCO DE BERRIOZÁBAL'),
(37, 'COATEPEC HARINAS'),
(38, 'COCOTITLÁN'),
(39, 'COYOTEPEC'),
(40, 'CUAUTITLÁN'),
(41, 'CHALCO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `Id_Semestre` int(11) NOT NULL,
  `NombreS` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposuser`
--

CREATE TABLE `tiposuser` (
  `Id_Tusuario` int(11) NOT NULL,
  `NombreT` varchar(55) NOT NULL,
  `Descripcion` text NOT NULL,
  `Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(55) NOT NULL,
  `ApellidoP` varchar(55) NOT NULL,
  `ApellidoM` varchar(55) NOT NULL,
  `Id_Tusuario` int(11) NOT NULL,
  `Telefono` int(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Id_Expediente` int(11) NOT NULL,
  `Password` varchar(55) NOT NULL,
  `UserName` varchar(55) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`Id_Carrera`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`Id_Estado`),
  ADD UNIQUE KEY `Id_Municipio` (`Id_Municipio`);

--
-- Indices de la tabla `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`Id_Expediente`),
  ADD KEY `Id_Estado` (`Id_Estado`),
  ADD KEY `Id_Carrera` (`Id_Carrera`),
  ADD KEY `Id_Semestre` (`Id_Semestre`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`Id_Municipio`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`Id_Semestre`);

--
-- Indices de la tabla `tiposuser`
--
ALTER TABLE `tiposuser`
  ADD PRIMARY KEY (`Id_Tusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Tusuario` (`Id_Tusuario`),
  ADD KEY `Id_Genero` (`Id_Genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `Id_Carrera` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `expediente`
--
ALTER TABLE `expediente`
  MODIFY `Id_Expediente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `Id_Semestre` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposuser`
--
ALTER TABLE `tiposuser`
  MODIFY `Id_Tusuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado`
--
ALTER TABLE `estado`
  ADD CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipio` (`Id_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
