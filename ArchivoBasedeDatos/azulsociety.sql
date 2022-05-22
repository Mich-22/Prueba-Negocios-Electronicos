-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 15:10:42
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `azulsociety`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'erik', 'erik11', '2022-05-22 05:00:50', ''),
(2, 'paco', 'paco11', '2022-05-22 05:00:50', ''),
(3, 'marcus', 'marcus11', '2022-05-22 05:00:55', ''),
(4, 'ana', 'ana11', '2022-05-22 05:00:55', ''),
(5, 'andre', 'andrea11', '2022-05-22 05:04:58', ''),
(6, 'vanessa', 'vanessa', '2022-05-22 05:04:58', ''),
(7, 'felipe', 'felipe11', '2022-05-22 05:04:58', ''),
(8, 'michelle', 'michelle11', '2022-05-22 05:04:58', ''),
(9, 'luis', 'luis11', '2022-05-22 05:04:58', ''),
(10, 'mani', 'mani11', '2022-05-22 05:04:58', ''),
(11, 'frida', 'frida11', '2022-05-22 05:11:18', ''),
(12, 'melisa', 'melisa11', '2022-05-22 05:11:18', ''),
(13, 'maria', 'maria11', '2022-05-22 05:11:18', ''),
(14, 'sofia', 'sofia11', '2022-05-22 05:11:18', ''),
(15, 'jesica', 'jesica11', '2022-05-22 05:11:18', ''),
(16, 'hector', 'hector11', '2022-05-22 05:11:18', ''),
(17, 'diana', 'diana11', '2022-05-22 05:11:18', ''),
(18, 'julieta', 'julieta11', '2022-05-22 05:11:18', ''),
(19, 'claudia', 'claudia11', '2022-05-22 05:11:18', ''),
(20, 'fany', 'fany11', '2022-05-22 05:11:18', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'wedding', 'the best weddings in the world', '2022-05-22 05:14:18', NULL),
(2, 'birthaday', 'the best birthdays in the world', '2022-05-22 05:15:11', NULL),
(3, 'mothers ', 'the best mothers in the world', '2022-05-22 05:16:55', NULL),
(4, 'Valentine Day', 'the best valentine in the world', '2022-05-22 05:34:44', NULL),
(5, 'XV Birthday', 'the best XV in the world ', '2022-05-22 05:34:44', NULL),
(6, 'Baptism', 'the  best Baptism in the word', '2022-05-22 05:37:08', NULL),
(7, 'movies', 'the  best movies in the word', '2022-05-22 05:37:15', NULL),
(8, 'graduations', 'the best graduations in the world', '2022-05-22 05:50:48', NULL),
(9, 'Hawaiana', 'the best hawaii invitations in the world', '2022-05-22 05:50:48', NULL),
(10, 'Hollywood', 'the best hollywood invitations in the world', '2022-05-22 05:50:48', NULL),
(11, 'superhéroes', 'the best superheroes invitations in the world', '2022-05-22 05:50:48', NULL),
(12, 'pirates', 'the best pirate invitations in the world', '2022-05-22 05:50:48', NULL),
(13, 'princesses', 'the best princess invitations in the world', '2022-05-22 05:50:48', NULL),
(14, 'rockstars', 'the best rockstars invitations in the world', '2022-05-22 05:50:48', NULL),
(15, 'Harry Potter', 'the best magic invitations in the world', '2022-05-22 05:50:48', NULL),
(16, 'sport', 'best sports invitations in the world', '2022-05-22 06:13:17', NULL),
(17, 'anime', 'the best anime invitations in the world', '2022-05-22 06:13:17', NULL),
(18, 'Halloween', 'the best halloween invitations in the world', '2022-05-22 06:13:17', NULL),
(19, 'game', 'the best game invitations in the world', '2022-05-22 06:13:17', NULL),
(20, 'mexicana', 'the best mexican invitations in the world', '2022-05-22 06:13:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, 1, 3, '2022-05-22 06:35:25', 'OXXO', 'Entregado'),
(2, 5, 10, 1, '2022-05-22 11:57:35', 'Paypal ', NULL),
(3, 13, 12, 4, '2022-05-22 11:57:35', 'Paypal', NULL),
(4, 18, 8, 1, '2022-05-22 11:57:35', 'Paypal', NULL),
(5, 12, 17, 5, '2022-05-22 11:57:35', 'Paypal', NULL),
(6, 16, 5, 1, '2022-05-22 11:57:35', 'Paypal', NULL),
(7, 19, 18, 4, '2022-05-22 11:57:35', 'Paypal', NULL),
(8, 16, 14, 1, '2022-05-22 11:57:35', 'Paypal', NULL),
(9, 6, 11, 10, '2022-05-22 11:57:35', 'Paypal', NULL),
(10, 5, 4, 12, '2022-05-22 11:57:35', 'Paypal', NULL),
(11, 2, 2, 3, '2022-05-22 11:57:35', 'Paypal', NULL),
(12, 3, 10, 12, '2022-05-22 11:57:35', 'Paypal', NULL),
(13, 14, 16, 8, '2022-05-22 11:57:35', 'Paypal', NULL),
(14, 5, 4, 8, '2022-05-22 11:57:35', 'Paypal', NULL),
(15, 5, 13, 21, '2022-05-22 11:57:35', 'Paypal', NULL),
(16, 8, 8, 12, '2022-05-22 11:57:35', 'Paypal', NULL),
(17, 9, 9, 3, '2022-05-22 11:57:35', 'Paypal', NULL),
(18, 10, 15, 21, '2022-05-22 11:57:35', 'Paypal', NULL),
(19, 2, 19, 8, '2022-05-22 11:57:35', 'Paypal', NULL),
(20, 15, 1, 3, '2022-05-22 11:57:35', 'Paypal', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 'llego el producto', '2022-05-22 06:36:45'),
(2, 3, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(3, 4, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(4, 5, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(5, 6, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(6, 7, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(7, 8, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(8, 9, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(9, 10, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(10, 11, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(11, 12, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(12, 13, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(13, 14, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(14, 15, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(15, 16, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(16, 17, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(17, 18, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(18, 19, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(19, 20, 'en proceso', 'esta en camino ', '2022-05-22 12:04:30'),
(20, 2, 'en proceso ', 'esta en camino ', '2022-05-22 12:04:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 1, 12, 90, 12, 'andrea', 'el mejor producto para mi ', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(2, 5, 2, 90, 90, 'pedro', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(3, 13, 3, 120, 3, 'angelica', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(4, 2, 4, 90, 90, 'jaquelin', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(5, 3, 12, 120, 12, 'sergio', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(6, 4, 4, 80, 4, 'daniela', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(7, 5, 5, 110, 5, 'marcos', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(8, 12, 4, 90, 4, 'rosio', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(9, 7, 4, 90, 4, 'ruth', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(10, 8, 3, 90, 3, 'saul', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(11, 7, 5, 90, 5, 'julieta', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(12, 8, 5, 110, 5, 'jaquelin', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(13, 13, 3, 110, 3, 'daniela', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(14, 2, 4, 90, 4, 'pedro', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(15, 10, 6, 90, 6, 'erika', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(16, 5, 5, 120, 5, 'alejandra', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(17, 15, 4, 90, 4, 'mariana', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:08:20'),
(18, 10, 3, 90, 3, 'rosio', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:09:51'),
(19, 8, 3, 120, 3, 'marcos', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:09:51'),
(20, 16, 4, 120, 4, 'saul', 'el mejor producto para mi', 'el mejor producto para mi', '2022-05-22 13:09:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 11, 'boda con tematica de mulan', 'azul society', 300, 300, 'invitaciones de boda con tematica de mulan ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 06:28:01', NULL),
(2, 2, 2, 'invitaciones de toy story', 'azul society ', 80, 80, 'invitaciones de toy story', NULL, NULL, NULL, 0, 'en stock', '2022-05-22 06:32:32', NULL),
(3, 11, 12, 'invitaciones de spider-man', 'asul zociety ', 80, 80, 'invitaciones de spider-man', NULL, NULL, NULL, 0, 'en stock', '2022-05-22 11:13:07', NULL),
(4, 15, 15, 'invitaciones de harry potter', 'azul society ', 90, 90, 'invitaciones de harry potter', NULL, NULL, NULL, 0, 'en stock', '2022-05-22 11:13:07', NULL),
(5, 5, 7, 'invitaciones de star wars', 'azul society ', 300, 300, 'invitaciones de star wars', NULL, NULL, NULL, 0, 'en stock', '2022-05-22 11:15:28', NULL),
(6, 2, 7, 'invitaciones de star wars', 'azul society ', 90, 90, 'invitaciones de star wars', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:15:28', NULL),
(7, 7, 12, 'invitaciones de spider-man', 'azul society ', 40, 40, 'invitaciones de spider-man', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:21:18', NULL),
(8, 17, 17, 'invitaciones de dragon ball', 'azul society ', 90, 90, 'invitaciones de dragon ball', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:21:18', NULL),
(9, 14, 14, 'invitaciones de AC/DC', 'azul society ', 70, 70, 'invitaciones de AC/DC', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:21:18', NULL),
(10, 13, 11, 'invitaciones de mulan', 'asul society ', 60, 60, 'invitaciones de mulan', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:21:18', NULL),
(11, 16, 16, 'invitaciones de deportes ', 'azul society ', 80, 80, 'invitaciones de deportes ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:36:07', NULL),
(12, 3, 3, 'invitaciones del dia de las madres ', 'azul society ', 120, 120, 'invitaciones del dia de las madres ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:36:07', NULL),
(13, 10, 10, 'invitaciones de elvis', 'azul society ', 80, 80, 'invitaciones de elvis', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(14, 17, 17, 'invitación de goku ', 'azul society ', 110, 110, 'invitación de goku ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(15, 9, 9, 'invitaciones hawainas', 'azul society ', 130, 130, 'invitaciones hawainas', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(16, 19, 19, 'invitaciones asssassin cred', 'azul society ', 60, 60, 'invitaciones asssassin cred', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(17, 8, 8, 'invitaciones de graduacion ', 'azul soecity ', 90, 90, 'invitaciones de graduacion ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(18, 20, 20, 'invitaciones de noche mexicana ', 'azul society ', 90, 90, 'invitaciones de noche mexicana ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(19, 6, 6, 'invitaciones de bartnistba', 'azul society ', 110, 110, 'invitaciones de bartnistba', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL),
(20, 7, 12, 'invitaciones de spider man ', 'azul society ', 140, 140, 'invitaciones de spider man ', NULL, NULL, NULL, 0, 'en stock ', '2022-05-22 11:44:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'bodas en paris ', '2022-05-22 06:18:01', NULL),
(2, 2, 'Toy story', '2022-05-22 06:18:01', NULL),
(3, 3, 'dia de las madres', '2022-05-22 06:18:01', NULL),
(4, 4, 'dia de san valentin', '2022-05-22 06:18:01', NULL),
(5, 5, 'quince años', '2022-05-22 06:18:01', NULL),
(6, 6, ' bartnistba', '2022-05-22 06:18:01', NULL),
(7, 7, 'star wars', '2022-05-22 06:18:01', NULL),
(8, 8, 'graduación 2022', '2022-05-22 06:18:01', NULL),
(9, 9, 'hawaiana', '2022-05-22 06:18:01', NULL),
(10, 10, 'elvis presley', '2022-05-22 06:18:01', NULL),
(11, 13, 'mulan', '2022-05-22 06:18:28', NULL),
(12, 11, 'spider-man', '2022-05-22 06:20:41', NULL),
(13, 12, 'piratas del caribe', '2022-05-22 06:20:41', NULL),
(14, 14, 'AC/DC', '2022-05-22 06:20:41', NULL),
(15, 15, 'magia en hogwarts', '2022-05-22 06:23:15', NULL),
(16, 16, 'deportes', '2022-05-22 06:23:15', NULL),
(17, 17, 'dragon ball ', '2022-05-22 06:23:15', NULL),
(18, 18, 'extraño mundo de jack', '2022-05-22 06:23:15', NULL),
(19, 19, 'assassins creed', '2022-05-22 06:23:15', NULL),
(20, 20, 'noche mexicana', '2022-05-22 06:23:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:49:46', NULL, 0),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:54:27', '22-06-2020 07:42:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 20:37:14', NULL, 1),
(27, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 00:58:24', '22-06-2020 08:40:53 PM', 1),
(28, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 01:45:10', NULL, 1),
(29, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:26', NULL, 0),
(30, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:36', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingPincode`, `regDate`, `updationDate`) VALUES
(1, 'andrea', 'andrea@gmail.com', 4494131537, 'andrea11', 'salto de los salados', NULL, '2022-05-22 06:34:07', NULL),
(2, 'melisa', 'melisa@gmail.com', 4494131537, 'melisa11', 'salto de los salados', NULL, '2022-05-22 06:57:37', NULL),
(3, 'pedro', 'pedro@gmail.com', 4494131537, 'pedro11', 'salto de los salados', NULL, '2022-05-22 06:59:32', NULL),
(4, 'ana', 'ana@gmail.com', 4494131537, 'ana11', 'salto de los salados', NULL, '2022-05-22 06:59:32', NULL),
(5, 'julieta', 'julieta@gmail.com', 4494131536, 'julieta11', 'salto de los salados', NULL, '2022-05-22 07:01:27', NULL),
(6, 'arely', 'arely@gmail.com', 4494131537, 'arely11', 'salto de los salados', NULL, '2022-05-22 07:14:00', NULL),
(7, 'pamela', 'pamela@gmail.com', 4494131537, 'pamela11', 'salto de los salados', NULL, '2022-05-22 07:14:00', NULL),
(8, 'saul', 'saul@gmail.com', 4494131537, 'saul11', 'salto de los salados', NULL, '2022-05-22 07:16:42', NULL),
(9, 'vanessa', 'vanessa@gmail.com', 4494131537, 'vanessa11', 'salto de los salados', NULL, '2022-05-22 07:16:42', NULL),
(10, 'erika', 'erika@gmail.com', 4494131537, 'erika11', 'salto de los salados', NULL, '2022-05-22 07:16:42', NULL),
(11, 'diniel ', 'dniel@gmanil.com', 4494131537, 'daniel11', 'salto de los salados', NULL, '2022-05-22 11:05:05', NULL),
(12, 'alejandro', 'alejandro@gmail.com', 4494131537, 'alejandro11', 'salto de los salados', NULL, '2022-05-22 11:05:05', NULL),
(13, 'rut', 'rut@gmail.com', 4494131537, 'rut11', 'salto de los salados', NULL, '2022-05-22 11:05:05', NULL),
(14, 'angelica', 'angelica@gmail.com', 4494131537, 'angelica11', 'salto de los salados', NULL, '2022-05-22 11:05:05', NULL),
(15, 'dayan', 'dayan@gmail.com', 4494131537, 'dayan11', 'salto de los salados', NULL, '2022-05-22 11:05:05', NULL),
(16, 'jaquelin', 'jaquelin11', 4494131537, 'jaquelin11', 'salto de los salados', NULL, '2022-05-22 11:08:11', NULL),
(17, 'daniela', 'daniela@gmail.com', 4494131537, 'daniela11', 'salto de los salados', NULL, '2022-05-22 11:08:11', NULL),
(18, 'rosio', 'rosio@gmail.com', 4494131537, 'rosio11', 'salto de los salados', NULL, '2022-05-22 11:08:11', NULL),
(19, 'sergio', 'sergio@gmail.com', 4494131537, 'sergio11', 'salto de los salados', NULL, '2022-05-22 11:08:11', NULL),
(20, 'mari', 'mari@gmail.com', 4494131537, 'mari11', 'salto de los salados', NULL, '2022-05-22 11:08:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 8, 2, '2022-05-22 11:09:54'),
(2, 13, 1, '2022-05-22 11:09:54'),
(3, 8, 12, '2022-05-22 11:49:51'),
(4, 6, 10, '2022-05-22 11:49:51'),
(5, 15, 16, '2022-05-22 11:49:51'),
(6, 10, 1, '2022-05-22 11:49:51'),
(7, 17, 19, '2022-05-22 11:49:51'),
(8, 4, 14, '2022-05-22 11:49:51'),
(9, 13, 17, '2022-05-22 11:49:51'),
(10, 4, 3, '2022-05-22 11:49:51'),
(11, 9, 2, '2022-05-22 11:49:51'),
(12, 7, 4, '2022-05-22 11:49:51'),
(13, 16, 5, '2022-05-22 11:49:51'),
(14, 12, 17, '2022-05-22 11:49:51'),
(15, 7, 18, '2022-05-22 11:49:51'),
(16, 3, 11, '2022-05-22 11:49:51'),
(17, 16, 6, '2022-05-22 11:49:51'),
(18, 20, 9, '2022-05-22 11:49:51'),
(19, 19, 13, '2022-05-22 11:49:51'),
(20, 18, 15, '2022-05-22 11:49:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users` (`userId`),
  ADD KEY `fk_orders_products` (`productId`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ordertrackhistory_orders` (`orderId`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productreviews_productid` (`productId`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`category`),
  ADD KEY `fk_subcategory` (`subCategory`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Subcategory_Category` (`categoryid`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`userId`),
  ADD KEY `fk_wishlist_productid` (`productId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_products` FOREIGN KEY (`productId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `fk_orders_users` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD CONSTRAINT `fk_ordertrackhistory_orders` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD CONSTRAINT `fk_productreviews_productid` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `fk_subcategory` FOREIGN KEY (`subCategory`) REFERENCES `subcategory` (`id`);

--
-- Filtros para la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `fk_Subcategory_Category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_wishlist_productid` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
