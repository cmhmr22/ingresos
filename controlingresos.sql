-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2017 a las 08:29:16
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `controlingresos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos`
--

CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `tipo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 ingreso, 1 egreso',
  `cantidad` double NOT NULL,
  `fondo` int(11) NOT NULL COMMENT '1 caja, 2 banco, 3 ahorro',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `baja_logica` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 dado de baja, 1 dado de alta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingresos`
--

INSERT INTO `ingresos` (`id`, `descripcion`, `tipo`, `cantidad`, `fondo`, `created_at`, `Updated_at`, `baja_logica`) VALUES
(12, 'tacos', 1, 50, 1, '2017-06-04 23:53:50', '2017-07-07 23:53:50', 1),
(13, 'diarios', 0, 100, 1, '2017-07-05 23:54:15', '2017-07-07 23:54:15', 1),
(15, 'Ficticio', 0, 50, 1, '2017-07-08 03:04:20', '2017-07-08 03:04:20', 1),
(16, 'Ficticio', 0, 500, 1, '2017-07-08 10:52:07', '2017-07-08 10:52:07', 1),
(17, '500', 1, 500, 1, '2017-07-09 08:23:46', '2017-07-09 08:23:46', 1),
(18, 'lo que sea', 0, 500, 1, '2017-07-09 08:25:51', '2017-07-09 08:25:51', 1),
(19, '500', 0, 500, 1, '2017-07-09 09:37:50', '2017-07-09 09:37:50', 1),
(20, 'se fue', 1, 500, 1, '2017-07-09 09:39:00', '2017-07-09 09:39:00', 1),
(21, 'egreso', 1, 350, 1, '2017-07-09 09:42:42', '2017-07-09 09:42:42', 1),
(22, 'cargo', 0, 200, 1, '2017-07-09 09:46:35', '2017-07-09 09:46:35', 1),
(23, 'iingreso', 0, 300, 1, '2017-07-09 10:15:24', '2017-07-09 10:15:24', 1),
(24, 'wdc', 0, 300, 1, '2017-07-09 10:15:50', '2017-07-09 10:15:50', 1),
(25, '50', 0, 300, 1, '2017-07-09 10:16:59', '2017-07-09 10:16:59', 1),
(26, 'ingreso', 0, 60, 1, '2017-07-09 10:20:56', '2017-07-09 10:20:56', 1),
(27, '50', 0, 50, 1, '2017-07-09 10:21:43', '2017-07-09 10:21:43', 1),
(28, '60', 0, 50, 1, '2017-07-09 10:22:36', '2017-07-09 10:22:36', 1),
(29, '22', 0, 50, 1, '2017-07-09 10:23:34', '2017-07-09 10:23:34', 1),
(30, 'q1', 0, 22, 1, '2017-07-09 10:24:30', '2017-07-09 10:24:30', 1),
(31, '30', 0, 55, 1, '2017-07-09 10:26:19', '2017-07-09 10:26:19', 1),
(32, '60', 0, 50, 1, '2017-07-09 10:27:14', '2017-07-09 10:27:14', 1),
(33, 'uno mas', 0, 500, 1, '2017-07-09 10:31:05', '2017-07-09 10:31:05', 1),
(34, '233', 1, 200, 1, '2017-07-09 10:31:35', '2017-07-09 10:31:35', 1),
(35, 'Pago de telefono', 1, 500, 1, '2017-07-09 10:32:55', '2017-07-09 10:32:55', 1),
(36, 'Vendimos un servicio', 0, 300, 1, '2017-07-09 10:46:38', '2017-07-09 10:46:38', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_ayer`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_ayer` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_dosmeses`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_dosmeses` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_hoy`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_hoy` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_mespasado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_mespasado` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_seismeses`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_seismeses` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_semanapasada`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_semanapasada` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `r_thisyear`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `r_thisyear` (
`id` int(11)
,`descripcion` varchar(250)
,`tipo` tinyint(1)
,`cantidad` double
,`fondo` int(11)
,`created_at` timestamp
,`Updated_at` timestamp
,`baja_logica` tinyint(1)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `r_ayer`
--
DROP TABLE IF EXISTS `r_ayer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_ayer`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where ((`ingresos`.`created_at` > (curdate() - interval 1 day)) and (`ingresos`.`created_at` < (curdate() - interval 0 day))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_dosmeses`
--
DROP TABLE IF EXISTS `r_dosmeses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_dosmeses`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where ((`ingresos`.`created_at` > (curdate() - interval 1 month)) and (`ingresos`.`created_at` < (curdate() - interval 1 month))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_hoy`
--
DROP TABLE IF EXISTS `r_hoy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_hoy`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where (`ingresos`.`created_at` >= (curdate() - interval 0 day)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_mespasado`
--
DROP TABLE IF EXISTS `r_mespasado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_mespasado`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where (`ingresos`.`created_at` > (curdate() - interval 1 month)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_seismeses`
--
DROP TABLE IF EXISTS `r_seismeses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_seismeses`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where (`ingresos`.`created_at` > (curdate() - interval 6 month)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_semanapasada`
--
DROP TABLE IF EXISTS `r_semanapasada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_semanapasada`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where (`ingresos`.`created_at` > (curdate() - interval 7 day)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `r_thisyear`
--
DROP TABLE IF EXISTS `r_thisyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `r_thisyear`  AS  select `ingresos`.`id` AS `id`,`ingresos`.`descripcion` AS `descripcion`,`ingresos`.`tipo` AS `tipo`,`ingresos`.`cantidad` AS `cantidad`,`ingresos`.`fondo` AS `fondo`,`ingresos`.`created_at` AS `created_at`,`ingresos`.`Updated_at` AS `Updated_at`,`ingresos`.`baja_logica` AS `baja_logica` from `ingresos` where (`ingresos`.`created_at` > year(now())) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingresos`
--
ALTER TABLE `ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
