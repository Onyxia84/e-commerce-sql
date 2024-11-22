-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 22 nov. 2024 à 14:22
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e-commerce-sql`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `country` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `street`, `city`, `postal_code`, `country`) VALUES
(69, 29, '5934 Eunice Track Suite 308', 'Geoffreyport', '47904-8102', 'Cape Verde'),
(68, 28, '226 Nichole Village', 'Robertsside', '27930-1404', 'Bosnia and Herz'),
(67, 27, '19450 Isabel Centers', 'Franeckiland', '89242-9240', 'Holy See (Vatic'),
(66, 26, '7705 Dixie View Suite 991', 'East Cristobal', '18598', 'Norfolk Island'),
(65, 25, '47902 Maynard Mall Suite 672', 'North Lupefurt', '77382-4117', 'Iraq'),
(64, 24, '71792 Elian Mill', 'Lindgrenbury', '37717', 'Denmark'),
(63, 23, '451 Hollis Well Apt. 868', 'West Jaydeborough', '10795', 'Cocos (Keeling)'),
(62, 22, '481 Chester Lane', 'Rashadville', '36359', 'Cook Islands'),
(61, 21, '409 Zechariah Ways Apt. 888', 'East Casimirview', '51345-8452', 'Jersey'),
(60, 20, '314 Lorenz Harbor', 'Port Scotberg', '88369-0648', 'Kyrgyz Republic'),
(59, 19, '20040 Kaylee Forge', 'Lake Hope', '88081', 'Mexico'),
(58, 18, '888 Florida Falls', 'Barrowsside', '45930-2230', 'Anguilla'),
(57, 17, '224 Lockman Bypass Suite 662', 'Yundtstad', '27828-9698', 'India'),
(56, 16, '38601 Bernhard Place Apt. 704', 'Eraberg', '75405', 'Brazil'),
(55, 15, '768 Carroll Pines', 'North Magnus', '65212', 'Latvia'),
(54, 14, '92806 Violet Ports', 'New Rashawnmouth', '49856', 'Taiwan'),
(53, 13, '62332 Suzanne Ranch', 'South Jamal', '69989-8956', 'Marshall Island'),
(52, 12, '555 Saul Common Suite 598', 'Jaylonfort', '12256-2720', 'Central African'),
(51, 11, '997 Abernathy Knoll', 'Estellburgh', '02288-8631', 'Botswana'),
(50, 10, '5215 Dallas Mills', 'South Vivianneburgh', '16638', 'Nepal'),
(49, 9, '79745 Alexie Prairie', 'Port Rosemary', '47554-6014', 'Malawi'),
(48, 8, '794 Lockman Fort Suite 034', 'East Darryl', '52373-8626', 'Slovenia'),
(47, 7, '34900 Eliane Curve Suite 073', 'Port Mackenzie', '53841', 'Micronesia'),
(46, 6, '29473 Gorczany Extensions', 'Ritchieside', '53461-7151', 'Bangladesh'),
(45, 5, '864 Harvey Mall', 'Lake Savanah', '79233-9238', 'Palau'),
(44, 4, '27232 Courtney Points Suite 107', 'Glennieborough', '81968-0054', 'Haiti'),
(43, 3, '9859 Otilia Branch', 'North Nikita', '89021', 'Cape Verde'),
(42, 2, '10605 Murray Forge', 'Franeckistad', '42081', 'Papua New Guine'),
(41, 1, '914 Waelchi Run Suite 171', 'Ceciliaside', '49526', 'Saint Martin'),
(70, 30, '38995 Rogahn Branch Suite 710', 'East Jordonshire', '46278', 'Italy'),
(71, 31, '47490 Collier Shoal Apt. 051', 'Port Bernadineport', '02860-8233', 'Grenada'),
(72, 32, '6978 Littel Mountain Suite 292', 'Port Aliyah', '66051-7541', 'Tanzania'),
(73, 33, '195 Fatima Mountain', 'East Samanthahaven', '76734', 'Gibraltar'),
(74, 34, '754 Althea Island', 'Roselynshire', '14103', 'Saint Martin'),
(75, 35, '76750 Rowland Port Suite 383', 'South Sallystad', '94811', 'Botswana'),
(76, 36, '2480 Weimann Path', 'Brooklynborough', '69827-2452', 'Mauritius'),
(77, 37, '75913 Jon Ford Suite 014', 'Deondrefort', '54444-5326', 'Serbia'),
(78, 38, '979 Metz Cove', 'Port Wilburnton', '76225', 'Liberia'),
(79, 39, '9257 Mraz Hollow Suite 555', 'East Zariaton', '32239-5143', 'Armenia'),
(80, 40, '5620 Tia Heights Suite 467', 'Harveyfort', '45180', 'French Guiana'),
(81, 41, '4298 Gulgowski Way', 'Ernserburgh', '69647', 'Niue'),
(82, 42, '855 Eric Stravenue Apt. 991', 'New Ayana', '29404-5203', 'Grenada'),
(83, 43, '5751 Herman Ranch', 'Lake Alfredaburgh', '10430-4424', 'Tuvalu'),
(84, 44, '66942 Doyle Rapid', 'Howeshire', '43177-1542', 'Saint Lucia'),
(85, 45, '415 Erika Lodge', 'Cummeratastad', '70576', 'Haiti'),
(86, 46, '79066 Barrows Island', 'West Adele', '70045', 'Central African'),
(87, 47, '45172 Abbie Roads Suite 850', 'Howellfort', '86313', 'Macao'),
(88, 48, '706 Arely Centers Apt. 545', 'Kubmouth', '76778-6708', 'Mexico'),
(89, 49, '259 Stanton Springs', 'Torphyside', '10179-8169', 'Slovakia (Slova'),
(90, 50, '105 Gottlieb Cliffs', 'New Ila', '16110', 'Andorra');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` enum('pending','purchased') DEFAULT 'pending',
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `status`, `creation_date`) VALUES
(1, 1, 'purchased', '2024-11-22 14:20:42'),
(2, 2, 'pending', '2024-11-22 14:20:42'),
(3, 3, 'pending', '2024-11-22 14:20:42'),
(4, 4, 'pending', '2024-11-22 14:20:42'),
(5, 5, 'purchased', '2024-11-22 14:20:42'),
(6, 6, 'purchased', '2024-11-22 14:20:42'),
(7, 7, 'pending', '2024-11-22 14:20:42'),
(8, 8, 'purchased', '2024-11-22 14:20:42'),
(9, 9, 'pending', '2024-11-22 14:20:42'),
(10, 10, 'purchased', '2024-11-22 14:20:42'),
(11, 11, 'purchased', '2024-11-22 14:20:42'),
(12, 12, 'pending', '2024-11-22 14:20:42'),
(13, 13, 'purchased', '2024-11-22 14:20:42'),
(14, 14, 'purchased', '2024-11-22 14:20:42'),
(15, 15, 'purchased', '2024-11-22 14:20:42'),
(16, 16, 'pending', '2024-11-22 14:20:42'),
(17, 17, 'purchased', '2024-11-22 14:20:42'),
(18, 18, 'purchased', '2024-11-22 14:20:42'),
(19, 19, 'purchased', '2024-11-22 14:20:42'),
(20, 20, 'purchased', '2024-11-22 14:20:42'),
(21, 21, 'pending', '2024-11-22 14:20:42'),
(22, 22, 'pending', '2024-11-22 14:20:42'),
(23, 23, 'pending', '2024-11-22 14:20:42'),
(24, 24, 'purchased', '2024-11-22 14:20:42'),
(25, 25, 'pending', '2024-11-22 14:20:42'),
(26, 26, 'purchased', '2024-11-22 14:20:42'),
(27, 27, 'purchased', '2024-11-22 14:20:42'),
(28, 28, 'pending', '2024-11-22 14:20:42'),
(29, 29, 'pending', '2024-11-22 14:20:42'),
(30, 30, 'pending', '2024-11-22 14:20:42'),
(31, 31, 'pending', '2024-11-22 14:20:42'),
(32, 32, 'purchased', '2024-11-22 14:20:42'),
(33, 33, 'purchased', '2024-11-22 14:20:42'),
(34, 34, 'pending', '2024-11-22 14:20:42'),
(35, 35, 'purchased', '2024-11-22 14:20:42'),
(36, 36, 'purchased', '2024-11-22 14:20:42'),
(37, 37, 'pending', '2024-11-22 14:20:42'),
(38, 38, 'purchased', '2024-11-22 14:20:42'),
(39, 39, 'purchased', '2024-11-22 14:20:42'),
(40, 40, 'purchased', '2024-11-22 14:20:42'),
(41, 41, 'pending', '2024-11-22 14:20:42'),
(42, 42, 'purchased', '2024-11-22 14:20:42'),
(43, 43, 'pending', '2024-11-22 14:20:42'),
(44, 44, 'pending', '2024-11-22 14:20:42'),
(45, 45, 'purchased', '2024-11-22 14:20:42'),
(46, 46, 'purchased', '2024-11-22 14:20:42'),
(47, 47, 'pending', '2024-11-22 14:20:42'),
(48, 48, 'pending', '2024-11-22 14:20:42'),
(49, 49, 'pending', '2024-11-22 14:20:42'),
(50, 50, 'purchased', '2024-11-22 14:20:42');

-- --------------------------------------------------------

--
-- Structure de la table `cart_product`
--

DROP TABLE IF EXISTS `cart_product`;
CREATE TABLE IF NOT EXISTS `cart_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `cart_product`
--

INSERT INTO `cart_product` (`id`, `cart_id`, `product_id`, `quantity`) VALUES
(1, 1, 66, 2),
(2, 1, 45, 7),
(3, 1, 8, 5),
(4, 1, 23, 10),
(5, 2, 87, 6),
(6, 3, 28, 5),
(7, 3, 33, 7),
(8, 4, 40, 10),
(9, 5, 1, 10),
(10, 5, 17, 7),
(11, 6, 40, 3),
(12, 6, 6, 3),
(13, 6, 21, 8),
(14, 7, 21, 6),
(15, 7, 89, 5),
(16, 8, 55, 7),
(17, 8, 69, 2),
(18, 8, 27, 6),
(19, 8, 78, 10),
(20, 9, 69, 1),
(21, 9, 33, 2),
(22, 9, 16, 4),
(23, 9, 63, 10),
(24, 9, 3, 7),
(25, 10, 45, 1),
(26, 10, 90, 4),
(27, 10, 45, 2),
(28, 10, 84, 4),
(29, 11, 84, 2),
(30, 12, 75, 4),
(31, 12, 18, 9),
(32, 12, 35, 4),
(33, 12, 57, 8),
(34, 12, 100, 6),
(35, 13, 72, 3),
(36, 13, 63, 1),
(37, 13, 30, 7),
(38, 13, 43, 5),
(39, 14, 6, 10),
(40, 14, 81, 2),
(41, 14, 59, 5),
(42, 14, 68, 10),
(43, 14, 93, 2),
(44, 15, 41, 7),
(45, 15, 83, 6),
(46, 15, 85, 7),
(47, 15, 24, 6),
(48, 16, 13, 5),
(49, 16, 48, 9),
(50, 17, 32, 8),
(51, 17, 93, 1),
(52, 17, 19, 6),
(53, 17, 79, 4),
(54, 18, 54, 9),
(55, 18, 41, 8),
(56, 18, 7, 2),
(57, 18, 12, 1),
(58, 19, 45, 5),
(59, 19, 41, 5),
(60, 19, 91, 1),
(61, 19, 43, 7),
(62, 20, 28, 7),
(63, 21, 71, 5),
(64, 21, 10, 4),
(65, 21, 76, 9),
(66, 22, 33, 3),
(67, 22, 45, 7),
(68, 23, 96, 8),
(69, 23, 55, 3),
(70, 23, 32, 1),
(71, 24, 24, 3),
(72, 25, 48, 2),
(73, 25, 62, 6),
(74, 26, 19, 6),
(75, 27, 6, 2),
(76, 27, 84, 8),
(77, 27, 52, 6),
(78, 27, 35, 9),
(79, 28, 12, 1),
(80, 28, 79, 4),
(81, 29, 85, 7),
(82, 29, 87, 2),
(83, 29, 69, 5),
(84, 29, 98, 5),
(85, 30, 80, 7),
(86, 31, 21, 4),
(87, 31, 21, 2),
(88, 31, 53, 6),
(89, 31, 23, 3),
(90, 31, 10, 6),
(91, 32, 17, 5),
(92, 32, 33, 5),
(93, 32, 70, 1),
(94, 32, 98, 4),
(95, 33, 79, 2),
(96, 34, 26, 10),
(97, 34, 27, 5),
(98, 35, 25, 8),
(99, 35, 15, 3),
(100, 35, 3, 7),
(101, 36, 40, 2),
(102, 36, 65, 5),
(103, 36, 37, 1),
(104, 37, 41, 2),
(105, 37, 48, 9),
(106, 37, 62, 10),
(107, 37, 18, 10),
(108, 38, 95, 1),
(109, 38, 29, 9),
(110, 38, 37, 10),
(111, 38, 34, 10),
(112, 39, 41, 6),
(113, 40, 48, 4),
(114, 40, 55, 3),
(115, 41, 88, 10),
(116, 41, 65, 9),
(117, 41, 51, 7),
(118, 41, 48, 5),
(119, 42, 65, 10),
(120, 42, 66, 1),
(121, 43, 76, 2),
(122, 43, 12, 8),
(123, 43, 31, 9),
(124, 44, 84, 5),
(125, 44, 91, 8),
(126, 44, 86, 6),
(127, 44, 62, 7),
(128, 45, 60, 1),
(129, 45, 93, 8),
(130, 46, 16, 1),
(131, 46, 53, 7),
(132, 46, 88, 10),
(133, 46, 31, 10),
(134, 47, 4, 2),
(135, 47, 52, 3),
(136, 48, 42, 5),
(137, 48, 23, 4),
(138, 48, 25, 5),
(139, 49, 88, 6),
(140, 49, 8, 2),
(141, 50, 7, 3),
(142, 50, 66, 7);

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('processing','shipped','delivered','cancelled') DEFAULT 'processing',
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id`, `user_id`, `total_price`, `status`, `creation_date`) VALUES
(1, 40, 903.20, 'delivered', '2024-11-22 14:20:42'),
(2, 20, 804.17, 'shipped', '2024-11-22 14:20:42'),
(3, 39, 832.70, 'delivered', '2024-11-22 14:20:42'),
(4, 35, 646.90, 'delivered', '2024-11-22 14:20:42'),
(5, 36, 885.06, 'delivered', '2024-11-22 14:20:42'),
(6, 30, 527.45, 'processing', '2024-11-22 14:20:42'),
(7, 27, 560.00, 'processing', '2024-11-22 14:20:42'),
(8, 37, 505.52, 'cancelled', '2024-11-22 14:20:42'),
(9, 43, 316.14, 'delivered', '2024-11-22 14:20:42'),
(10, 4, 897.50, 'processing', '2024-11-22 14:20:42'),
(11, 49, 922.52, 'delivered', '2024-11-22 14:20:42'),
(12, 45, 807.96, 'delivered', '2024-11-22 14:20:42'),
(13, 36, 497.22, 'processing', '2024-11-22 14:20:42'),
(14, 20, 486.80, 'processing', '2024-11-22 14:20:42'),
(15, 44, 55.90, 'delivered', '2024-11-22 14:20:42'),
(16, 42, 937.45, 'shipped', '2024-11-22 14:20:42'),
(17, 5, 553.49, 'processing', '2024-11-22 14:20:42'),
(18, 45, 93.58, 'processing', '2024-11-22 14:20:42'),
(19, 47, 116.20, 'delivered', '2024-11-22 14:20:42'),
(20, 7, 656.39, 'processing', '2024-11-22 14:20:42'),
(21, 20, 244.30, 'processing', '2024-11-22 14:20:42'),
(22, 43, 167.43, 'processing', '2024-11-22 14:20:42'),
(23, 50, 344.05, 'delivered', '2024-11-22 14:20:42'),
(24, 19, 487.19, 'processing', '2024-11-22 14:20:42'),
(25, 26, 895.90, 'delivered', '2024-11-22 14:20:42'),
(26, 25, 617.78, 'delivered', '2024-11-22 14:20:42'),
(27, 18, 673.61, 'processing', '2024-11-22 14:20:42'),
(28, 21, 971.88, 'cancelled', '2024-11-22 14:20:42'),
(29, 29, 573.40, 'cancelled', '2024-11-22 14:20:42'),
(30, 14, 296.93, 'cancelled', '2024-11-22 14:20:42');

-- --------------------------------------------------------

--
-- Structure de la table `command_product`
--

DROP TABLE IF EXISTS `command_product`;
CREATE TABLE IF NOT EXISTS `command_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `command_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `command_id` (`command_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `command_product`
--

INSERT INTO `command_product` (`id`, `command_id`, `product_id`, `quantity`) VALUES
(1, 1, 23, 1),
(2, 1, 67, 2),
(3, 2, 27, 2),
(4, 2, 25, 8),
(5, 2, 56, 5),
(6, 2, 10, 5),
(7, 3, 10, 6),
(8, 3, 65, 2),
(9, 3, 16, 5),
(10, 4, 39, 7),
(11, 4, 68, 8),
(12, 5, 79, 1),
(13, 5, 35, 9),
(14, 6, 96, 3),
(15, 6, 75, 4),
(16, 7, 83, 3),
(17, 7, 34, 3),
(18, 7, 34, 5),
(19, 7, 58, 6),
(20, 8, 41, 9),
(21, 9, 74, 5),
(22, 9, 1, 2),
(23, 10, 32, 1),
(24, 10, 12, 6),
(25, 11, 38, 5),
(26, 11, 95, 10),
(27, 11, 78, 9),
(28, 12, 43, 8),
(29, 12, 70, 5),
(30, 13, 38, 8),
(31, 13, 56, 9),
(32, 13, 73, 3),
(33, 13, 44, 3),
(34, 14, 51, 3),
(35, 14, 14, 3),
(36, 14, 45, 2),
(37, 15, 92, 6),
(38, 16, 37, 4),
(39, 17, 14, 2),
(40, 17, 2, 3),
(41, 17, 76, 3),
(42, 18, 87, 2),
(43, 19, 92, 1),
(44, 19, 79, 8),
(45, 19, 51, 9),
(46, 20, 48, 3),
(47, 21, 73, 8),
(48, 21, 100, 2),
(49, 22, 23, 1),
(50, 22, 55, 9),
(51, 22, 49, 4),
(52, 22, 58, 6),
(53, 23, 22, 7),
(54, 23, 93, 3),
(55, 24, 20, 1),
(56, 24, 34, 8),
(57, 25, 5, 4),
(58, 25, 26, 4),
(59, 26, 42, 8),
(60, 26, 34, 4),
(61, 27, 12, 10),
(62, 27, 2, 8),
(63, 28, 61, 2),
(64, 28, 26, 4),
(65, 28, 50, 5),
(66, 28, 34, 8),
(67, 29, 47, 5),
(68, 29, 67, 10),
(69, 29, 76, 4),
(70, 29, 17, 1),
(71, 30, 48, 8),
(72, 30, 75, 1);

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `command_id` int NOT NULL,
  `issued_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `command_id` (`command_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`id`, `command_id`, `issued_at`, `total`) VALUES
(1, 1, '2024-07-12 07:47:54', 538.17),
(2, 2, '2024-07-05 11:09:07', 759.87),
(3, 3, '2024-03-11 10:31:57', 347.28),
(4, 4, '2024-03-02 19:59:36', 851.87),
(5, 5, '2024-07-04 11:30:55', 61.10),
(6, 6, '2024-09-27 14:42:02', 958.14),
(7, 7, '2024-03-02 21:57:26', 952.95),
(8, 8, '2024-04-21 02:48:38', 974.07),
(9, 9, '2024-05-16 04:09:15', 478.53),
(10, 10, '2024-07-07 23:34:32', 532.13),
(11, 11, '2024-03-29 13:50:26', 51.16),
(12, 12, '2024-03-01 18:06:45', 354.72),
(13, 13, '2024-04-19 13:36:02', 296.27),
(14, 14, '2024-02-09 09:13:29', 509.28),
(15, 15, '2024-01-07 13:42:13', 553.76),
(16, 16, '2024-05-16 10:38:12', 747.32),
(17, 17, '2024-07-22 10:47:21', 874.43),
(18, 18, '2024-01-27 22:52:00', 932.99),
(19, 19, '2024-06-24 20:04:34', 479.29),
(20, 20, '2024-07-10 05:08:14', 573.92),
(21, 21, '2024-08-22 07:44:04', 466.29),
(22, 22, '2024-05-21 17:52:13', 704.51),
(23, 23, '2024-04-18 14:29:10', 748.14),
(24, 24, '2024-07-06 14:27:00', 506.69),
(25, 25, '2024-06-10 22:59:34', 533.01),
(26, 26, '2024-03-01 02:31:19', 333.10),
(27, 27, '2024-06-05 05:42:15', 214.92),
(28, 28, '2024-02-20 15:49:00', 864.84),
(29, 29, '2024-07-05 11:11:39', 175.03),
(30, 30, '2024-04-21 07:56:29', 648.52);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `stock`, `category`, `creation_date`) VALUES
(1, 'voluptas', 'Facilis rerum et explicabo optio tempora autem omnis delectus deserunt sint ad.', 110.26, 93, 'accusantium', '2024-11-22 14:20:42'),
(2, 'unde', 'Tempora enim magni dicta fugit nulla nulla ut omnis enim.', 230.99, 71, 'eum', '2024-11-22 14:20:42'),
(3, 'iste', 'Alias commodi voluptate ut velit perferendis accusamus totam accusamus quam.', 494.73, 46, 'odio', '2024-11-22 14:20:42'),
(4, 'provident', 'Delectus fugit alias fugit exercitationem vel quod numquam quia voluptatem sunt dolor.', 251.02, 8, 'eaque', '2024-11-22 14:20:42'),
(5, 'aut', 'Aperiam iste delectus reprehenderit quia eos illo deleniti ratione rerum placeat magni odio.', 402.88, 69, 'corrupti', '2024-11-22 14:20:42'),
(6, 'et', 'Officia sed doloribus dolorem illo ullam quibusdam.', 189.86, 48, 'quis', '2024-11-22 14:20:42'),
(7, 'qui', 'Tempore laboriosam incidunt sunt dolorem rerum praesentium hic necessitatibus.', 388.23, 15, 'nobis', '2024-11-22 14:20:42'),
(8, 'magnam', 'Quam est omnis et molestiae aut aperiam vero.', 261.92, 55, 'error', '2024-11-22 14:20:42'),
(9, 'et', 'Unde eligendi quasi enim maiores ut et et vel expedita harum.', 353.10, 82, 'iure', '2024-11-22 14:20:42'),
(10, 'quo', 'Quo quia culpa odio officia ut sunt eos laborum molestiae aperiam.', 420.65, 37, 'quas', '2024-11-22 14:20:42'),
(11, 'enim', 'Quaerat recusandae delectus omnis quia aut tempora at amet possimus ea corrupti.', 166.92, 44, 'expedita', '2024-11-22 14:20:42'),
(12, 'sint', 'Nesciunt illo nihil tempore voluptatem quia quas quis sint blanditiis iusto quibusdam.', 481.47, 7, 'quis', '2024-11-22 14:20:42'),
(13, 'quas', 'Qui minus ut explicabo rerum veniam ipsum qui corrupti iure est rem.', 410.79, 76, 'adipisci', '2024-11-22 14:20:42'),
(14, 'molestiae', 'Deleniti consequatur repudiandae dolorem et veniam et eaque.', 236.99, 58, 'laboriosam', '2024-11-22 14:20:42'),
(15, 'suscipit', 'Et aperiam incidunt voluptatem in beatae voluptatum magnam.', 90.92, 83, 'qui', '2024-11-22 14:20:42'),
(16, 'repudiandae', 'Asperiores pariatur qui et explicabo fugit tempora nesciunt deserunt similique dolorem nulla.', 167.67, 100, 'sint', '2024-11-22 14:20:42'),
(17, 'ipsa', 'Sed dolore repellendus voluptatem quaerat occaecati est et omnis.', 202.70, 82, 'impedit', '2024-11-22 14:20:42'),
(18, 'nihil', 'Fugit aliquid cumque sunt quae rerum dolor quisquam aut non ipsum nesciunt commodi.', 379.31, 60, 'dolores', '2024-11-22 14:20:42'),
(19, 'dolorem', 'Dolor doloribus reprehenderit sed et est ratione atque.', 419.39, 75, 'doloremque', '2024-11-22 14:20:42'),
(20, 'laudantium', 'Impedit voluptatibus voluptatibus illo dolor consectetur adipisci in voluptas facilis libero aliquam ratione.', 45.48, 81, 'sit', '2024-11-22 14:20:42'),
(21, 'quo', 'Quae ut et fugit ut omnis aut doloremque occaecati aut a.', 496.77, 21, 'numquam', '2024-11-22 14:20:42'),
(22, 'omnis', 'Ea quibusdam ut ea molestias veniam in sed inventore temporibus consequatur repellat ipsum delectus.', 303.24, 43, 'omnis', '2024-11-22 14:20:42'),
(23, 'deleniti', 'Incidunt ipsa officia sit similique quasi et.', 493.38, 60, 'quia', '2024-11-22 14:20:42'),
(24, 'dolore', 'Tempore aliquam voluptatum praesentium sed aut est.', 180.20, 95, 'et', '2024-11-22 14:20:42'),
(25, 'eos', 'Et aliquid est mollitia libero molestiae voluptatem repellat voluptate eius.', 141.99, 1, 'aut', '2024-11-22 14:20:42'),
(26, 'vero', 'Natus quasi quis ut est velit nulla saepe esse repellendus.', 273.75, 61, 'dolores', '2024-11-22 14:20:42'),
(27, 'enim', 'Assumenda expedita nesciunt at et eum dolorem.', 491.67, 98, 'occaecati', '2024-11-22 14:20:42'),
(28, 'reiciendis', 'Ut quisquam autem consequuntur non consequatur ipsam consequatur aperiam rem quis sed quia porro.', 477.84, 86, 'quisquam', '2024-11-22 14:20:42'),
(29, 'et', 'Culpa minus eos esse omnis molestiae deserunt dolor quidem.', 28.44, 77, 'illo', '2024-11-22 14:20:42'),
(30, 'ut', 'Amet et assumenda itaque sit ab numquam minus.', 175.93, 37, 'quia', '2024-11-22 14:20:42'),
(31, 'aliquid', 'Expedita culpa est et voluptas magnam eum labore at quae dolorem.', 355.54, 3, 'ea', '2024-11-22 14:20:42'),
(32, 'repudiandae', 'Itaque iste dolorum explicabo nam eligendi quos doloribus magni ullam ea vel et.', 438.21, 90, 'porro', '2024-11-22 14:20:42'),
(33, 'id', 'Sit et impedit molestiae eius deleniti sit autem ipsam aut voluptas distinctio ea molestias.', 445.81, 68, 'commodi', '2024-11-22 14:20:42'),
(34, 'voluptatem', 'Voluptatem aut qui aut aperiam est quidem occaecati.', 429.94, 90, 'error', '2024-11-22 14:20:42'),
(35, 'rem', 'Quidem assumenda ex ipsa quia repellat omnis reiciendis.', 147.00, 23, 'qui', '2024-11-22 14:20:42'),
(36, 'eos', 'Veritatis fugiat natus quae aut sit nulla dolorum rerum in.', 197.68, 70, 'quia', '2024-11-22 14:20:42'),
(37, 'quisquam', 'Voluptas laboriosam omnis beatae sit qui vel rerum.', 362.81, 51, 'nisi', '2024-11-22 14:20:42'),
(38, 'aut', 'Quas amet enim blanditiis qui omnis et tempora optio natus cupiditate.', 416.64, 32, 'quidem', '2024-11-22 14:20:42'),
(39, 'quia', 'Id ipsam sit doloribus eveniet quam tenetur dolores et.', 219.76, 92, 'soluta', '2024-11-22 14:20:42'),
(40, 'deserunt', 'Sit harum rerum quasi ducimus eaque dolorem quae.', 202.44, 65, 'veniam', '2024-11-22 14:20:42'),
(41, 'fugit', 'Quia nemo incidunt iste facilis nobis maiores velit voluptas enim.', 375.03, 87, 'facilis', '2024-11-22 14:20:42'),
(42, 'ut', 'Rem voluptatem magni suscipit quia minima esse nam eligendi voluptatem ducimus.', 436.04, 36, 'tenetur', '2024-11-22 14:20:42'),
(43, 'illo', 'Expedita dolorum ut veritatis et expedita animi in necessitatibus rerum velit perferendis perspiciatis aliquam.', 447.56, 40, 'fugit', '2024-11-22 14:20:42'),
(44, 'possimus', 'Et quaerat reprehenderit in voluptas ab earum maxime molestias molestias.', 56.62, 67, 'molestiae', '2024-11-22 14:20:42'),
(45, 'aut', 'Accusamus voluptatibus maxime recusandae esse sint omnis velit aperiam eum sapiente modi.', 366.32, 49, 'et', '2024-11-22 14:20:42'),
(46, 'sint', 'Libero et rerum asperiores molestiae aspernatur nulla perspiciatis exercitationem impedit omnis a cumque.', 132.68, 33, 'facilis', '2024-11-22 14:20:42'),
(47, 'ab', 'Aut soluta exercitationem soluta quo at excepturi qui.', 487.82, 60, 'esse', '2024-11-22 14:20:42'),
(48, 'laborum', 'Et harum aut nulla est et aliquid eum et dolorem et.', 73.73, 33, 'rerum', '2024-11-22 14:20:42'),
(49, 'vel', 'Eveniet laboriosam deserunt velit quia optio assumenda blanditiis vitae.', 259.20, 17, 'deserunt', '2024-11-22 14:20:42'),
(50, 'aut', 'Dolor ad enim ipsam rem quos amet vel ab et possimus dolore ut.', 355.02, 14, 'magni', '2024-11-22 14:20:42'),
(51, 'ipsam', 'Sed harum ipsum a debitis corporis rem.', 369.71, 22, 'quos', '2024-11-22 14:20:42'),
(52, 'neque', 'Quo atque laboriosam nobis labore dicta vel est quos.', 359.62, 52, 'temporibus', '2024-11-22 14:20:42'),
(53, 'excepturi', 'Nostrum ea dignissimos velit nihil aut vel modi modi sint nobis dolore voluptate.', 463.48, 61, 'repellendus', '2024-11-22 14:20:42'),
(54, 'dolorem', 'Iste vitae quam pariatur dolorem nulla est reiciendis incidunt quis.', 480.90, 10, 'aut', '2024-11-22 14:20:42'),
(55, 'officia', 'Sed nisi tempora dolor iure modi eum minus autem corporis.', 408.35, 93, 'vero', '2024-11-22 14:20:42'),
(56, 'voluptas', 'Sit laudantium quasi quia aut voluptas ut aliquid sunt quia et deleniti velit omnis.', 130.20, 48, 'facere', '2024-11-22 14:20:42'),
(57, 'et', 'Amet assumenda officiis id quia optio consectetur voluptates voluptates earum qui veniam.', 419.68, 82, 'consequatur', '2024-11-22 14:20:42'),
(58, 'iusto', 'Velit dolores molestias quia nemo natus voluptatibus impedit placeat tenetur repellat placeat ut fuga.', 87.86, 10, 'deleniti', '2024-11-22 14:20:42'),
(59, 'quibusdam', 'Aut voluptas in debitis fuga rerum quas.', 499.13, 35, 'dolorem', '2024-11-22 14:20:42'),
(60, 'et', 'Voluptatum occaecati eos molestiae repudiandae voluptas asperiores exercitationem facilis.', 489.09, 43, 'architecto', '2024-11-22 14:20:42'),
(61, 'vel', 'Rerum eligendi dignissimos pariatur dolorem dolorem qui consequuntur perspiciatis sapiente rerum.', 49.75, 62, 'nam', '2024-11-22 14:20:42'),
(62, 'incidunt', 'Dolorem omnis alias perspiciatis officia earum esse dolorem iusto quibusdam maiores hic aut consequatur.', 230.90, 37, 'unde', '2024-11-22 14:20:42'),
(63, 'adipisci', 'Delectus rerum qui nihil placeat aut est enim mollitia laudantium.', 399.55, 97, 'minima', '2024-11-22 14:20:42'),
(64, 'vero', 'Magni nostrum aperiam consectetur adipisci doloremque minus debitis sunt aut.', 125.70, 58, 'vel', '2024-11-22 14:20:42'),
(65, 'natus', 'Quis consequatur et possimus perferendis in aut quibusdam alias ut.', 52.58, 10, 'enim', '2024-11-22 14:20:42'),
(66, 'quisquam', 'Quas veritatis laborum in voluptas earum voluptatem saepe totam.', 313.59, 30, 'consequuntur', '2024-11-22 14:20:42'),
(67, 'nobis', 'Alias voluptates sint suscipit fugiat iusto sunt.', 425.89, 71, 'quibusdam', '2024-11-22 14:20:42'),
(68, 'perspiciatis', 'Esse eius laboriosam ut eius maiores consequatur error itaque.', 319.28, 84, 'repudiandae', '2024-11-22 14:20:42'),
(69, 'aut', 'Sed consequatur deleniti quis animi occaecati dignissimos.', 356.27, 71, 'quia', '2024-11-22 14:20:42'),
(70, 'velit', 'Laboriosam excepturi quae voluptate quis et ea nihil quia.', 345.65, 23, 'odio', '2024-11-22 14:20:42'),
(71, 'dignissimos', 'Facilis nisi sapiente qui et tempore enim.', 292.20, 93, 'repudiandae', '2024-11-22 14:20:42'),
(72, 'expedita', 'Magnam id distinctio odio est provident eum harum quae.', 289.51, 84, 'labore', '2024-11-22 14:20:42'),
(73, 'itaque', 'Nihil velit aut ut est rem dolores id eligendi quia repellendus consequatur voluptatem omnis.', 488.67, 12, 'fugit', '2024-11-22 14:20:42'),
(74, 'atque', 'Possimus ut doloribus aut rerum officiis possimus enim doloremque vitae dolor facere.', 488.21, 92, 'laborum', '2024-11-22 14:20:42'),
(75, 'et', 'Ratione amet sit voluptas labore neque perspiciatis asperiores deserunt aut optio est cupiditate et.', 38.41, 89, 'aliquam', '2024-11-22 14:20:42'),
(76, 'consequatur', 'Ullam nemo facere laudantium dolorem maiores quia nesciunt impedit cum sint perferendis excepturi.', 213.44, 46, 'cupiditate', '2024-11-22 14:20:42'),
(77, 'rerum', 'Sit non numquam maiores velit deserunt corrupti omnis.', 441.69, 38, 'nisi', '2024-11-22 14:20:42'),
(78, 'itaque', 'Sit aliquid id est qui qui sit neque et est deserunt nulla ducimus.', 158.89, 30, 'quisquam', '2024-11-22 14:20:42'),
(79, 'aut', 'Et soluta fugit et sint fugit et ut.', 84.25, 89, 'velit', '2024-11-22 14:20:42'),
(80, 'omnis', 'Quidem architecto iste incidunt sunt nihil laborum aliquam illum quam ut sunt nihil totam.', 72.28, 34, 'iusto', '2024-11-22 14:20:42'),
(81, 'et', 'Est quae deserunt et quis delectus dolorem sint perferendis deserunt suscipit et dolor veritatis.', 479.83, 30, 'id', '2024-11-22 14:20:42'),
(82, 'aut', 'Veniam explicabo est assumenda sint dignissimos similique laudantium nam voluptas voluptatem deleniti.', 400.97, 36, 'ullam', '2024-11-22 14:20:42'),
(83, 'quam', 'Expedita maxime maiores sunt et aut delectus minus aliquam explicabo.', 42.07, 67, 'cumque', '2024-11-22 14:20:42'),
(84, 'possimus', 'Mollitia id molestiae sit est ad provident.', 335.42, 17, 'ullam', '2024-11-22 14:20:42'),
(85, 'perspiciatis', 'Quaerat commodi consequatur culpa porro dolorum officia sint autem eligendi aut non.', 396.42, 21, 'consectetur', '2024-11-22 14:20:42'),
(86, 'sunt', 'Qui aut explicabo necessitatibus voluptatem eaque saepe eos fugiat ex.', 275.13, 19, 'et', '2024-11-22 14:20:42'),
(87, 'tempore', 'Saepe omnis eum est ad est voluptas eaque et eligendi aut officiis.', 343.89, 32, 'molestiae', '2024-11-22 14:20:42'),
(88, 'et', 'Id qui explicabo quam sit aspernatur nemo autem laboriosam iusto.', 453.84, 89, 'quos', '2024-11-22 14:20:42'),
(89, 'sint', 'Eos voluptatem est ut tenetur assumenda voluptas.', 362.25, 10, 'facere', '2024-11-22 14:20:42'),
(90, 'totam', 'Perspiciatis nam id eos nobis ut totam eaque incidunt.', 41.22, 51, 'commodi', '2024-11-22 14:20:42'),
(91, 'quod', 'Vel omnis et voluptas minus optio recusandae illo deserunt a velit reiciendis.', 337.49, 3, 'perferendis', '2024-11-22 14:20:42'),
(92, 'distinctio', 'Consectetur est placeat perferendis aperiam delectus est ut omnis perferendis minus est.', 32.60, 68, 'minima', '2024-11-22 14:20:42'),
(93, 'suscipit', 'Qui voluptatum delectus laboriosam doloribus iure placeat illum.', 137.75, 88, 'id', '2024-11-22 14:20:42'),
(94, 'excepturi', 'Aliquam similique ea molestiae et sed quidem molestiae neque cum vel.', 469.03, 100, 'magni', '2024-11-22 14:20:42'),
(95, 'fugit', 'Dolorem quo ullam quia voluptas dolorem incidunt quam porro quos soluta voluptas est pariatur.', 391.50, 27, 'aut', '2024-11-22 14:20:42'),
(96, 'deleniti', 'Excepturi pariatur sit minus eaque velit nam exercitationem id aspernatur necessitatibus eos.', 462.23, 7, 'perferendis', '2024-11-22 14:20:42'),
(97, 'illo', 'Labore dignissimos rerum quo reiciendis quos eum architecto atque.', 362.55, 61, 'labore', '2024-11-22 14:20:42'),
(98, 'est', 'Magni voluptatem voluptas a ducimus temporibus vel.', 432.58, 86, 'eius', '2024-11-22 14:20:42'),
(99, 'id', 'Cumque quaerat est magnam dicta est natus illo impedit aspernatur culpa ab.', 205.56, 13, 'recusandae', '2024-11-22 14:20:42'),
(100, 'quos', 'Iusto et ipsum consequatur veritatis id inventore officiis et aut.', 286.55, 11, 'iure', '2024-11-22 14:20:42');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `creation_date`) VALUES
(221, 'Glenda', 'Bergnaum', 'jcarter@vandervort.com', '$2y$10$Vkxbxp5Ht0liLBCSnqdbrOxmspJ7xFmPNId39lZ9FkqyFgsyu7IIm', '7267191792', '2024-11-22 14:20:42'),
(220, 'Cynthia', 'Russel', 'pondricka@sporer.net', '$2y$10$CsF4Lh39VWXlJqg0abwahu.rJZpdEtbCiCDoyE4pym6/a2CinjPe.', '13609763815', '2024-11-22 14:20:42'),
(219, 'Santiago', 'Quitzon', 'wsteuber@gmail.com', '$2y$10$9WbuOamObg/a4oP3IwC8VOmx3piEgNuIumGZA8f4zndAscN/FQ6vy', '5634043574', '2024-11-22 14:20:42'),
(218, 'Dejon', 'Herzog', 'hattie.walsh@wyman.com', '$2y$10$g6u276weI6y.8CT2DphUXO1pt5M2BPQsHww4b.mo1cPMO88E4T1TK', '15649619063', '2024-11-22 14:20:41'),
(217, 'Estell', 'Mueller', 'ucassin@fay.com', '$2y$10$m02lzrfFQTlF.vtJR4fAl.82NOXl1cXu20MyMdJf4L0senAWASMpm', '12815229076', '2024-11-22 14:20:41'),
(216, 'Lenora', 'Towne', 'rath.rico@yahoo.com', '$2y$10$I75hHOwkswT0pr4rf4wyk.enXVVh6heu.lq4NZ6l.S9LyiA2TT8Y2', '8594257832', '2024-11-22 14:20:41'),
(215, 'Beulah', 'Bartell', 'royce37@yahoo.com', '$2y$10$MvsA9Bf5pTM3wS/gc8c7xuPsCoBoZrJniC1Ub8kH6t2CXXDHoIxdy', '9474757866', '2024-11-22 14:20:41'),
(214, 'Ransom', 'Veum', 'doris87@yahoo.com', '$2y$10$W9xDLRzO05bGNQpD.WzF.uEhwrbUmEnRs4myaH8XCbU5D97Kgh38G', '4637612521', '2024-11-22 14:20:41'),
(213, 'Juvenal', 'Barrows', 'max62@gmail.com', '$2y$10$o2fGhOvjO4OkfwcV1NlNwun9d/94St4aHa/xLhbsyWh3XVAIGi9x2', '8023402487', '2024-11-22 14:20:41'),
(212, 'Madaline', 'Walter', 'vkihn@gerlach.biz', '$2y$10$QZJVqv6FBtkG4O2gAG6VWelvdNnevFOjZUWD8kgq5SxtgOm8hLAKq', '9893924780', '2024-11-22 14:20:41'),
(211, 'Maxime', 'Frami', 'judge.feil@runte.biz', '$2y$10$QdSt7S7THpiyjD7GQ6iQDeDD9dmgy9Vrit/CxgB3h637ValLrYHg2', '16576393870', '2024-11-22 14:20:41'),
(210, 'Colby', 'Steuber', 'bechtelar.christelle@kuhic.com', '$2y$10$EeK9/O2m7zA7CQCWZpxc6.zyJ7d/Ab5OPYx6QBtKeV6BobIVK0XYa', '15208927958', '2024-11-22 14:20:41'),
(209, 'Elyssa', 'Stamm', 'gmoen@grimes.com', '$2y$10$YT3gPxTm9zqHOEsRmmH55Ol3.PbBzQP0mRGTgpi7iqopPt2TxsMFW', '17812445257', '2024-11-22 14:20:41'),
(208, 'Grover', 'Leannon', 'duane93@hotmail.com', '$2y$10$eCpoxyjBco2p61ymVUSRNO5FYMr96iCaF.VnY3oeo2eDiGNKl2DWK', '13082241753', '2024-11-22 14:20:41'),
(207, 'Bailey', 'Stokes', 'gbode@stiedemann.com', '$2y$10$xz.uXfE.mRbXt3UewDlyPOMhMgvm2G/p/iiZk.j8/OERS.LVfyek6', '17179808750', '2024-11-22 14:20:41'),
(206, 'Prince', 'Raynor', 'gracie.steuber@hotmail.com', '$2y$10$rxoTSbMXtevfmUJxAGjZYewlhMqW9ArkKhxwARdqV1NW9Q2JZIiEm', '6784851788', '2024-11-22 14:20:41'),
(205, 'Jordy', 'Ernser', 'taryn38@hotmail.com', '$2y$10$YA/s/6cWdhhHKoDaTkEOjuW3FY8o1ROk6YooNbl6CaQjhuvVhprM2', '5038694418', '2024-11-22 14:20:40'),
(204, 'Garnett', 'Johnston', 'jacey98@gmail.com', '$2y$10$o.dDCJqrKIZ/wkqk3IRgred3asnnoW46wFDFmBzB.ANmnRILG9/OC', '17693568357', '2024-11-22 14:20:40'),
(203, 'Erin', 'Sawayn', 'santa.maggio@ernser.com', '$2y$10$HczpPRlV/eqjYGoUZwxAXew5b5wtI9nW5ZlS7LoAIgiIhwX2VXg/W', '19788507412', '2024-11-22 14:20:40'),
(202, 'Alexandro', 'Satterfield', 'esta39@gmail.com', '$2y$10$02aFJoPtOzydP0aZ.swhoOQHDLprCzwSJSX5xwXcEQeAmRsUA7TBe', '14258344634', '2024-11-22 14:20:40'),
(201, 'Tremaine', 'Abshire', 'schmeler.stacy@zboncak.com', '$2y$10$tHbSuaGSi2ZyOg7ECAqMSuarxgRAA/eemig6oBqC5SA706Z10Fita', '19073656273', '2024-11-22 14:20:40'),
(200, 'Nella', 'Bartell', 'shoeger@kerluke.com', '$2y$10$dYFHNqCgqfAgWIT7mNOpTu5vEyQ9gNdz7.T0fy2oaYD2qcjfyfYva', '6369665903', '2024-11-22 14:20:40'),
(199, 'Tillman', 'Feest', 'rparisian@denesik.com', '$2y$10$SILvXXasho4urund4z4Beu2D93HHCjehwOHe9K4JWRig6ypapK1m2', '18203383060', '2024-11-22 14:20:40'),
(198, 'Alisha', 'Macejkovic', 'alicia81@hotmail.com', '$2y$10$XCWSy4jXCiK7GX4Z9pN/auJ7pd38kqjUkCc4KGSFxTyKE8JEtZvXq', '12393798466', '2024-11-22 14:20:40'),
(197, 'Myra', 'Cole', 'rath.martin@hotmail.com', '$2y$10$iIhkNKjUKrYnlb6Arjm/FuZC9naPPJJYLDcKDq7qBjBSTPbdwQUWe', '7736367259', '2024-11-22 14:20:40'),
(196, 'Mya', 'Hintz', 'ookon@kovacek.com', '$2y$10$gOKVhckX/sH/cBrQOwcqz.ZVq1LQQikB7Gu2QJTp5xd1.TxyN1xRS', '12698275466', '2024-11-22 14:20:40'),
(195, 'Duncan', 'Flatley', 'vlarkin@bartell.com', '$2y$10$RJhVwvG6yTq4ioizmHzwjObIh/Bkypm0TlOaFeix4f0gC0otrGc9C', '16608634160', '2024-11-22 14:20:40'),
(194, 'Gudrun', 'Larkin', 'king.sandy@gmail.com', '$2y$10$Wf6LUMFxcq8GXWTMmiMmYeycaC6y2lUt.12fSxUjDNnNzVxEZr3Ly', '4792572470', '2024-11-22 14:20:40'),
(193, 'Alexzander', 'Bayer', 'corwin.simeon@hotmail.com', '$2y$10$8q.cRQUdv.qfEsAD.sFqnO7z0ckZYwK6rdYN55A9A5XaKOKeN2ZIC', '6187259123', '2024-11-22 14:20:39'),
(192, 'Litzy', 'Pfeffer', 'akub@hotmail.com', '$2y$10$nlta9n00JHwnW1ejdASQZOzuuy7dGAOQDJY4HSfbA8R1OZv6gC.aq', '6572856803', '2024-11-22 14:20:39'),
(191, 'Cale', 'Tremblay', 'august78@hotmail.com', '$2y$10$VDvDjx6xsJQO2iw2WuXWvOiuf8nQh7BDc02mwQPCTkaqxYxRpv1Pq', '8782167465', '2024-11-22 14:20:39'),
(190, 'Luz', 'Lesch', 'bo.crona@gmail.com', '$2y$10$P50ezvQnCNUORRqTgFGgCOsgXR9tLwNAvjceYSrz4/AlyavXzuB1m', '13412023276', '2024-11-22 14:20:39'),
(189, 'Colt', 'Block', 'hilpert.monserrate@yahoo.com', '$2y$10$FjABVQ9F5FdwUz2zD.iBoORT.R5FAEnShXoMRLRd6CktaagGqQgZG', '19497198530', '2024-11-22 14:20:39'),
(188, 'Richard', 'Kunze', 'pbogisich@hotmail.com', '$2y$10$cWXm3PisJyavy0qO7w5rT.MqezuMDpnSCdrPVjcNSL9rf/4e8E4A6', '14588903909', '2024-11-22 14:20:39'),
(187, 'Delaney', 'Mosciski', 'brent97@gmail.com', '$2y$10$2MY4k1AqzomTwC8NVRalyuHZIVz.hSnFRqCO/twD0LfWVAK1LvAFu', '4695304575', '2024-11-22 14:20:39'),
(186, 'Gregoria', 'Brekke', 'ukohler@hotmail.com', '$2y$10$oEKO.2Oh7wObB5ROpI5qLeVRP2mrrVrGbwQVOaxDfg8wIc7VTPX3W', '6148055926', '2024-11-22 14:20:39'),
(185, 'Jennyfer', 'Howell', 'victoria15@zboncak.com', '$2y$10$SKKc20DYQ01YPlzCUOewyeqpS2bMYDzGCQ8RhNXkTYyYRmLlUW3bS', '17865656512', '2024-11-22 14:20:39'),
(184, 'Wilber', 'Emard', 'damion.parisian@lindgren.com', '$2y$10$DWbG7tDxkIIGoRiDR8xv3OnoILVhuBfipSOyAES6.hrgwBnGtweLW', '19047522214', '2024-11-22 14:20:39'),
(183, 'Cornell', 'McLaughlin', 'gabrielle35@hotmail.com', '$2y$10$b.xgnqb/Hr1R1171A2CrK.j9iMtaJrc66obNQRChytmnAEV/7LxX2', '6126897638', '2024-11-22 14:20:39'),
(182, 'Anjali', 'Sipes', 'peter55@yahoo.com', '$2y$10$GustmLP3S.eL.e3mKqpoEOrbftsox2BPpzq9/84zPg1eR4rLGNuLS', '13523768389', '2024-11-22 14:20:39'),
(180, 'Efren', 'Pfeffer', 'ferry.kristin@dicki.com', '$2y$10$wJGGIHK9SP4y7tLQEZaVMe5duKJUEhM0394REzb4URiTfgMgnx1MG', '18573902767', '2024-11-22 14:20:38'),
(181, 'Alverta', 'Douglas', 'jesus44@tremblay.net', '$2y$10$VEoREBnmbe6Pt09bX5lI8OfPQm6BEoFI8jgUreBFnIsWqen.j3re.', '7198838464', '2024-11-22 14:20:38'),
(179, 'Esperanza', 'Johns', 'elisha.hoppe@boyer.org', '$2y$10$RYRKdGX10ZmMqQxs7VKGpOtKM8v/dh9gKAHpbnpM7XBEoNAdqVi6e', '7799906794', '2024-11-22 14:20:38'),
(178, 'Dameon', 'Kiehn', 'dicki.oceane@luettgen.net', '$2y$10$NIQ5sYLT81KJj56F7mlC5u9AvTOJZH0UHxtPCEGkQyyGQRP/3Fxxa', '2693168763', '2024-11-22 14:20:38'),
(176, 'Gene', 'Schuppe', 'pollich.katelin@yahoo.com', '$2y$10$J/h5E0Ee7RgYLR.vX4tIJe6PFQx2t.YfxiIyVoLkQZeTkXI4uuIUW', '12093614815', '2024-11-22 14:20:38'),
(177, 'Augustine', 'Hegmann', 'jedediah.pollich@jast.com', '$2y$10$Xphu.jnr82a2nSMQyaVI.uy835w8J4R4Rh9ld3PZHndEPLIIC/Rsm', '12128020460', '2024-11-22 14:20:38'),
(175, 'Trever', 'Windler', 'mwintheiser@crist.com', '$2y$10$G87d4BpGy.QCxperAjMP4eA/3Ax/B43yiM0wYFxz0SAiJpWvWQ5Si', '15159537396', '2024-11-22 14:20:38'),
(174, 'Jewell', 'Hudson', 'jast.ova@gmail.com', '$2y$10$TK2DCkIVGpvmlREpbQcWq.wB6xfehkBQBQkdJFCRWdPxOzte7X4pS', '9066858262', '2024-11-22 14:20:38'),
(173, 'Dasia', 'Stracke', 'grady.sydnie@hotmail.com', '$2y$10$4D9E3l1oE8GWReUyxcHR5umHSbciUu1N.8l08/s9lR9Xb83r0pTAm', '9418479974', '2024-11-22 14:20:38'),
(172, 'Clara', 'Blick', 'austin37@gmail.com', '$2y$10$03jceU3FXW3YqhgWbdSsGu0KoF4Iq8GQtYynurmGIe7TJrAhPSKgq', '13129366743', '2024-11-22 14:20:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
