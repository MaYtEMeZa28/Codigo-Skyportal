-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-10-2024 a las 22:10:50
-- Versión del servidor: 10.6.19-MariaDB-cll-lve
-- Versión de PHP: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `skyporco_aeropuerto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nomusuario` varchar(25) NOT NULL,
  `apeusuario` varchar(18) NOT NULL,
  `telusuario` varchar(10) NOT NULL,
  `mailusuario` varchar(35) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `fotousuario` varchar(255) NOT NULL,
  `rol` varchar(13) NOT NULL DEFAULT 'usuario',
  `verificado` tinyint(1) DEFAULT 0,
  `token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nomusuario`, `apeusuario`, `telusuario`, `mailusuario`, `contrasena`, `fotousuario`, `rol`, `verificado`, `token`) VALUES
(31, 'Mayte', 'Meza', '3794204403', 'maytitameza3@gmail.com', '$2y$10$RpaXmgSzxFVeFg6kVLY9euGakhsTEC9dwF9Tc3BLcXNewKxDL79Qm', 'uploads/aaaa.jpg', 'administrador', 1, NULL),
(29, 'Gustavo', 'Flores', '3794576479', 'gusxavo.flores@gmail.com', '$2y$10$pWSkrt2eXl.fEDGED/VYku5vhtkSqVavHZQVCwZzxXt3m3QSy0sx.', 'uploads/1730394139460562802431623994028.jpg', 'usuario', 1, NULL),
(28, 'Luciana', 'Acevedo', '3794277721', 'luciana30303@gmail.com', '$2y$10$G3T7D4Na5zlFvc2NFgx1F.l.EKOXllXzBLTB.fD8gBT6J5A4LfUqa', 'uploads/IMG_20230826_024254_427.jpg', 'usuario', 1, NULL),
(30, 'Silvina Laura ', 'Corraro ', '3794614851', 'corrarosilvina@gmail.com', '$2y$10$CbV4OpVyjkR8o59cOMJgpeuRUtUReAAv3WyLPhBD2Il4n7oMH0hE2', 'uploads/Screenshot_20241031-193314.png', 'usuario', 1, NULL),
(26, 'Anabela Magali', 'Sánchez', '3794350752', 'sanchezanabela80@gmail.com', '$2y$10$Gqlp8ZtGqo/untdhJMlXe.rOxTnulc/m1/ZQ/0GUQMiD4nM/ett0W', 'uploads/IMG_20240920_224911_765.webp', 'usuario', 1, NULL),
(27, 'Milagros ', 'Acevedo ', '3795303469', 'acevedomily498@gmail.com', '$2y$10$7xI6Ny8.iMFx0cr3rDObvOxryGuGgSmueoUU2oroaYbV0dCCVDvWC', 'uploads/IMG_20240225_032032_385.jpg', 'administrador', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `idvuelo` int(11) NOT NULL,
  `aerolinea` varchar(21) NOT NULL,
  `origen` varchar(20) NOT NULL,
  `fecsalida` date NOT NULL,
  `horsalida` time NOT NULL,
  `fecllegada` date NOT NULL,
  `horllegada` time NOT NULL,
  `tipovuelo` varchar(13) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `motivo` text NOT NULL,
  `pasajeros` int(11) NOT NULL,
  `bid_agua` int(11) NOT NULL,
  `est_acceso` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `vuelo`
--

INSERT INTO `vuelo` (`idvuelo`, `aerolinea`, `origen`, `fecsalida`, `horsalida`, `fecllegada`, `horllegada`, `tipovuelo`, `estado`, `motivo`, `pasajeros`, `bid_agua`, `est_acceso`) VALUES
(2654, 'Flybondi', 'Mendoza', '2024-10-01', '16:30:00', '2024-10-01', '19:45:00', 'Programado', 'Aterrizado', 'Recogida', 187, 19, 'Ha Ingresado'),
(87896, 'Jet Smart', 'Santiago De Chile', '2024-10-30', '20:00:00', '2024-10-30', '23:30:00', 'No Programado', 'En Vuelo', 'Entrega', 265, 27, 'Ha Ingresado'),
(97898, 'Jet Smart', 'Neuquen', '2024-08-14', '06:10:00', '2024-08-14', '09:25:00', 'Urgencia', 'Aterrizado', 'Entrega', 118, 12, 'Ha Ingresado'),
(989, 'Flybondi', 'Ushuaia', '2024-06-03', '15:30:00', '2024-06-03', '20:35:00', 'No Programado', 'Aterrizado', 'Recogida', 124, 12, 'Ha Ingresado'),
(475, 'Aerolineas Argentinas', 'Madrid', '2024-12-27', '20:40:00', '2024-12-28', '11:00:00', 'Programado', 'Estima', 'Entrega', 220, 22, 'No Ha Ingresado'),
(2225, 'Aerolineas Argentinas', 'Madrid', '2024-11-03', '09:30:00', '2024-11-03', '23:15:00', 'Programado', 'Estima', 'Entrega', 300, 30, 'No Ha Ingresado'),
(6667, 'Jet Smart', 'Santiago De Chile', '2024-11-07', '22:45:00', '2024-11-08', '02:10:00', 'Programado', 'Estima', 'Entrega', 245, 25, 'No Ha Ingresado'),
(9879, 'Aerolineas Argentinas', 'Salta', '2024-11-05', '18:30:00', '2024-11-05', '22:10:00', 'Programado', 'Estima', 'Recogida', 190, 19, 'No Ha Ingresado'),
(5678, 'Jet Smart', 'Neuquen', '2024-09-20', '08:00:00', '2024-09-20', '11:35:00', 'No Programado', 'Aterrizado', 'Entrega', 150, 15, 'Ha Ingresado'),
(9875, 'Flybondi', 'Salta', '2024-11-09', '15:00:00', '2024-11-09', '19:25:00', 'Programado', 'Estima', 'Recogida', 125, 13, 'No Ha Ingresado'),
(1224, 'Jet Smart', 'Santa Fe', '2024-10-26', '04:30:00', '2024-10-26', '06:45:00', 'Urgencia', 'Aterrizado', 'Entrega', 232, 23, 'Ha Ingresado'),
(1467, 'Jet Smart', 'Santa Fe', '2024-10-26', '04:30:00', '2024-10-26', '06:45:00', 'Urgencia', 'Aterrizado', 'Entrega', 210, 21, 'Ha Ingresado'),
(3456, 'Flybondi', 'Madrid', '2024-11-05', '17:40:00', '2024-11-06', '06:30:00', 'Programado', 'Estima', 'Entrega', 220, 22, 'No Ha Ingresado'),
(82374822, 'Aerolineas Argentinas', 'La Rioja', '2024-10-31', '20:29:00', '2024-10-31', '23:34:00', 'Programado', 'En Vuelo', 'Recogida', 122, 12, 'Ha Ingresado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`idvuelo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
