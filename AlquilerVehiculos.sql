-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 08-05-2023 a las 09:23:45
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `AlquilerVehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Customers`
--

CREATE TABLE `Customers` (
  `id_customer` int(11) NOT NULL,
  `name_customer` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `domicilio` varchar(50) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Customers`
--

INSERT INTO `Customers` (`id_customer`, `name_customer`, `email`, `phone_number`, `domicilio`, `pass`) VALUES
(1, 'Ryan García', 'RyanBoxer@gmail.com', '123456789', 'Madrid', 'Gervonta28'),
(2, 'Armando Torres', 'Armandito777@gmail.com', '637456378', 'Madrid', 'Klkbb09'),
(3, 'cliente 3', 'cliente3@gmail.com', '333333333', 'Barcelona', 'Tres333'),
(4, 'cliente 4', 'cliente4@gmail.com', '444444444', 'Valencia', 'Cuatro444'),
(5, 'cliente 5', 'cliente5@gmail.com', '555555555', 'Córdoba', 'Cinco555');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Distribucion`
--

CREATE TABLE `Distribucion` (
  `id_parking` int(11) DEFAULT NULL,
  `id_vehicle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Distribucion`
--

INSERT INTO `Distribucion` (`id_parking`, `id_vehicle`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 24),
(4, 25),
(4, 26),
(4, 27),
(4, 28),
(4, 29),
(4, 30),
(4, 31),
(4, 32),
(5, 33),
(5, 34),
(5, 35),
(5, 36),
(5, 37),
(5, 38),
(5, 39),
(5, 40),
(5, 41),
(6, 42),
(6, 43),
(6, 44),
(6, 45),
(6, 46),
(6, 47);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Modelos`
--

CREATE TABLE `Modelos` (
  `id_modelo` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Modelos`
--

INSERT INTO `Modelos` (`id_modelo`, `model`, `brand`, `imagen`) VALUES
(1, 'C3', 'Citroen', 'c3.png'),
(2, 'Golf', 'Volkswagen', 'golf.png'),
(3, 'Clio', 'Renault', 'clio.png'),
(4, 'Touareg', 'Volkswagen', 'touareg.png'),
(5, 'X5', 'BMW', 'x5.png'),
(6, 'Qashqai', 'Nissan', 'qashqai.png'),
(7, 'Monster', 'Ducati', 'monster.png'),
(8, 'R15', 'Yamaha', 'r15.png'),
(9, 'CBR 600', 'Honda', 'cbr600.png'),
(10, 'Transit', 'Ford', 'transit.png'),
(11, 'Vito', 'Mercedes-Benz', 'vito.png'),
(12, 'Berlingo', 'Citroen', 'berlingo.png'),
(13, 'C4 Picasso', 'Citroen', 'picasso.png'),
(14, '911', 'Porsche', '911.png'),
(15, 'Civic', 'Honda', 'civic.png'),
(16, 'Fiesta', 'Ford', 'fiesta.png'),
(17, 'Outlander', 'Mitsubishi', 'outlander.png'),
(18, 'Harley Davidson', 'Harley Davidson', 'harley.png'),
(19, 'Sprinter', 'Mercedes-Benz', 'sprinter.png'),
(20, 'C5', 'Citroen', 'c5.png'),
(21, 'Astra', 'Opel', 'astra.png'),
(22, 'Panda', 'Fiat', 'panda.png'),
(23, 'Expert', 'Peugeot', 'expert.png'),
(24, 'Corsa', 'Opel', 'corsa.png'),
(25, 'Range Rover', 'Land Rover', 'rangerover.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Parkings`
--

CREATE TABLE `Parkings` (
  `id_parking` int(11) NOT NULL,
  `name_parking` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `location_parking` varchar(100) DEFAULT NULL,
  `responsable` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Parkings`
--

INSERT INTO `Parkings` (`id_parking`, `name_parking`, `ciudad`, `location_parking`, `responsable`, `telefono`) VALUES
(1, 'Parking Gran Vía', 'Madrid', 'Calle Gran Vía, 1', 'Juan Pérez', '+34 911 111 111'),
(2, 'Parking Plaza de España', 'Barcelona', 'Plaza de España, 1', 'María García', '+34 922 222 222'),
(3, 'Parking Catedral', 'Sevilla', 'Calle Mateos Gago, 10', 'Manuel López', '+34 933 333 333'),
(4, 'Parking Plaza Mayor', 'Valencia', 'Plaza Mayor, 1', 'Laura Martínez', '+34 944 444 444'),
(5, 'Parking Oviedo', 'Asturias', 'Calle Uría, 5', 'Marta Sánchez', '+34 955 555 555'),
(6, 'Parking Granada', 'Granada', 'Calle Navas, 1', 'Pedro García', '+34 966 666 666');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rentals`
--

CREATE TABLE `rentals` (
  `id_rental` int(11) NOT NULL,
  `id_vehicle` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `rental_start_date` date DEFAULT NULL,
  `rental_end_date` date DEFAULT NULL,
  `start_parking_id` int(11) DEFAULT NULL,
  `end_parking_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Vehicles`
--

CREATE TABLE `Vehicles` (
  `id_vehicle` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `license_plate` varchar(10) DEFAULT NULL,
  `nombre_tipo` varchar(50) DEFAULT NULL,
  `alquilado` tinyint(1) DEFAULT NULL,
  `id_modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Vehicles`
--

INSERT INTO `Vehicles` (`id_vehicle`, `model`, `brand`, `license_plate`, `nombre_tipo`, `alquilado`, `id_modelo`) VALUES
(1, 'C3', 'Citroen', 'FDR2334', 'Coche', 0, 1),
(2, 'Golf', 'Volkswagen', 'CBA4443', 'Coche', 0, 2),
(3, 'Clio', 'Renault', 'KDS7588', 'Coche', 0, 3),
(4, 'Clio', 'Renault', 'HDA9304', 'Coche', 0, 3),
(5, 'Touareg', 'Volkswagen', 'LOA8271', '4x4', 0, 4),
(6, 'X5', 'BMW', 'AOD6668', '4x4', 0, 5),
(7, 'Qashqai', 'Nissan', 'FSD3243', '4x4', 0, 6),
(8, 'Monster', 'Ducati', 'JDE9391', 'Moto', 0, 7),
(9, 'R15', 'Yamaha', 'GZB5628', 'Moto', 0, 8),
(10, 'CBR 600', 'Honda', 'LKA1112', 'Moto', 0, 9),
(11, 'Transit', 'Ford', 'QWE4455', 'Furgoneta', 0, 10),
(12, 'Vito', 'Mercedes-Benz', 'PSW8933', 'Furgoneta', 0, 11),
(13, 'Berlingo', 'Citroen', 'RDK1234', 'Furgoneta', 0, 12),
(14, 'Transit', 'Ford', 'KJB6666', 'Furgoneta', 0, 10),
(15, 'C4 Picasso', 'Citroen', 'CVB4567', 'Coche', 0, 13),
(16, '911', 'Porsche', 'PDA2736', 'Coche', 0, 14),
(17, 'Civic', 'Honda', 'JHK1234', 'Coche', 0, 15),
(18, 'Clio', 'Renault', 'ZXC6789', 'Coche', 0, 3),
(19, 'Golf', 'Volkswagen', 'JKL4321', 'Coche', 0, 2),
(20, 'Fiesta', 'Ford', 'QWE4321', 'Coche', 0, 16),
(21, 'X5', 'BMW', 'UIO6543', '4x4', 0, 5),
(22, 'Qashqai', 'Nissan', 'ASD0987', '4x4', 0, 6),
(23, 'Outlander', 'Mitsubishi', 'QWE5643', '4x4', 0, 17),
(24, 'Touareg', 'Volkswagen', 'JHG3456', '4x4', 0, 4),
(25, 'R15', 'Yamaha', 'TYU2345', 'Moto', 0, 8),
(26, 'Harley Davidson', 'Harley Davidson', 'FGH5432', 'Moto', 0, 18),
(27, 'Monster', 'Ducati', 'KLO9087', 'Moto', 0, 7),
(28, 'Sprinter', 'Mercedes-Benz', 'WES6789', 'Furgoneta', 0, 19),
(29, 'Transit', 'Ford', 'GFT4567', 'Furgoneta', 0, 10),
(30, 'Berlingo', 'Citroen', 'WER5432', 'Furgoneta', 0, 12),
(31, 'C5', 'Citroen', 'HJK7890', 'Coche', 0, 20),
(32, 'Astra', 'Opel', '2378HJG', 'Coche', 0, 21),
(33, 'Golf', 'Volkswagen', '9245KLJ', 'Coche', 0, 2),
(34, 'Sprinter', 'Mercedes-Benz', '7439KDF', 'Furgoneta', 0, 19),
(35, 'Transit', 'Ford', '4632GHJ', 'Furgoneta', 0, 10),
(36, 'Clio', 'Renault', '3721JHN', 'Coche', 0, 3),
(37, 'Panda', 'Fiat', '6732JKL', 'Coche', 0, 22),
(38, 'Berlingo', 'Citroen', '5238DFG', 'Furgoneta', 0, 12),
(39, 'Panda', 'Fiat', '8942HGF', 'Coche', 0, 22),
(40, 'Qashqai', 'Nissan', '6342KLO', '4x4', 0, 6),
(41, 'Touareg', 'Volkswagen', '4589GFD', '4x4', 0, 4),
(42, 'Vito', 'Mercedes-Benz', '4621JFK', 'Furgoneta', 0, 11),
(43, 'Expert', 'Peugeot', '3247DFG', 'Furgoneta', 0, 23),
(44, 'Corsa', 'Opel', '5378HKL', 'Coche', 0, 24),
(45, 'Fiesta', 'Ford', '8561KLO', 'Coche', 0, 16),
(46, 'Qashqai', 'Nissan', '7482GFD', '4x4', 0, 6),
(47, 'Range Rover', 'Land Rover', '3719JFG', '4x4', 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indices de la tabla `Distribucion`
--
ALTER TABLE `Distribucion`
  ADD KEY `id_parking` (`id_parking`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indices de la tabla `Modelos`
--
ALTER TABLE `Modelos`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indices de la tabla `Parkings`
--
ALTER TABLE `Parkings`
  ADD PRIMARY KEY (`id_parking`);

--
-- Indices de la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id_rental`),
  ADD KEY `id_vehicle` (`id_vehicle`),
  ADD KEY `start_parking_id` (`start_parking_id`),
  ADD KEY `end_parking_id` (`end_parking_id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indices de la tabla `Vehicles`
--
ALTER TABLE `Vehicles`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Distribucion`
--
ALTER TABLE `Distribucion`
  ADD CONSTRAINT `distribucion_ibfk_1` FOREIGN KEY (`id_parking`) REFERENCES `Parkings` (`id_parking`);

--
-- Filtros para la tabla `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `id_customer` FOREIGN KEY (`id_customer`) REFERENCES `Customers` (`id_customer`),
  ADD CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `Vehicles` (`id_vehicle`),
  ADD CONSTRAINT `rentals_ibfk_3` FOREIGN KEY (`start_parking_id`) REFERENCES `Parkings` (`id_parking`),
  ADD CONSTRAINT `rentals_ibfk_4` FOREIGN KEY (`end_parking_id`) REFERENCES `Parkings` (`id_parking`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
