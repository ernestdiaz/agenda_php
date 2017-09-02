-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2017 a las 02:27:04
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cagenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(25) NOT NULL,
  `fk_usuarios` int(25) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `f_inicio` date NOT NULL,
  `h_inicio` varchar(25) DEFAULT NULL,
  `f_final` varchar(25) DEFAULT NULL,
  `h_final` varchar(25) DEFAULT NULL,
  `dia_entero` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `fk_usuarios`, `titulo`, `f_inicio`, `h_inicio`, `f_final`, `h_final`, `dia_entero`) VALUES
(1, 1, 'cumpleaÃ±os', '2017-09-21', '', '', '', 1),
(2, 1, 'viaje a la capital', '2017-09-25', '09:00', '2017-09-27', '07:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `password` varchar(70) NOT NULL,
  `fecnac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `correo`, `password`, `fecnac`) VALUES
(1, 'Pablo Garcia', 'pablito@gmail.com', '$2y$10$Y8o7YE5Nk57erQOGvdhbT.c86HuB/nEXQW93mtVkr943Ti3stEBIe', '0000-00-00'),
(2, 'Juan Perez', 'juancho@gmail.com', '$2y$10$9SS6SDSTupulEqzQIgsSFuJU2RoU0uM7pzL.CcMLNytY3XjIOhmPG', '0000-00-00'),
(3, 'Angel Condori', 'angeldx@gmail.com', '$2y$10$R1sSkWq728QSlt0C4RT3qektARbzAPfuSVWrsNm5Lq4ZDehD9Hpzi', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventos_usuarios` (`fk_usuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
