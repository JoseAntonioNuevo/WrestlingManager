-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2020 a las 00:50:05
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_wrestling`
--
CREATE DATABASE IF NOT EXISTS `bd_wrestling` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_wrestling`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_championship`
--

CREATE TABLE `tbl_championship` (
  `id_championship` int(11) NOT NULL,
  `name_championship` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type_championship` enum('World','Mid Card','Tag Team') COLLATE utf8_unicode_ci NOT NULL,
  `genere_championship` enum('Man','Woman') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_championship`
--

INSERT INTO `tbl_championship` (`id_championship`, `name_championship`, `type_championship`, `genere_championship`) VALUES
(2, 'Amazing Champion', 'World', 'Man'),
(3, 'VVE World Championship', 'World', 'Man'),
(4, 'Special Wrestler Champion', 'Mid Card', 'Man'),
(5, 'Ultimate Champion', 'Mid Card', 'Man'),
(6, 'VVE Crazy Tag Team Championship', 'Tag Team', 'Man'),
(7, 'VVE  World Tag Team Championship', 'Tag Team', 'Man'),
(8, 'VVE World Womens Championship', 'World', 'Woman'),
(9, 'Bad Girl Championship', 'Mid Card', 'Woman'),
(10, 'Womens Tag Team Championship', 'Tag Team', 'Woman'),
(11, 'AUW World Champion', 'World', 'Man'),
(12, 'American Champion', 'Mid Card', 'Man'),
(13, 'Best Tag Team Championship', 'Tag Team', 'Man'),
(14, 'Womens World Champion', 'World', 'Woman'),
(15, 'Best in the world', 'World', 'Man'),
(16, 'Women championship', 'World', 'Woman'),
(17, 'Best Tag Team in the world', 'Tag Team', 'Man');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_championship_company`
--

CREATE TABLE `tbl_championship_company` (
  `id_championship_company` int(11) NOT NULL,
  `id_championship` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_wrestler` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_championship_company`
--

INSERT INTO `tbl_championship_company` (`id_championship_company`, `id_championship`, `id_company`, `id_wrestler`) VALUES
(1, 2, 1, NULL),
(2, 9, 1, NULL),
(3, 4, 1, NULL),
(4, 5, 1, NULL),
(5, 6, 1, NULL),
(6, 7, 1, NULL),
(7, 8, 1, NULL),
(8, 10, 1, NULL),
(9, 3, 1, NULL),
(10, 11, 2, NULL),
(11, 12, 2, NULL),
(12, 13, 2, NULL),
(13, 14, 2, NULL),
(14, 15, 3, NULL),
(16, 16, 3, NULL),
(17, 17, 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id_company` int(11) NOT NULL,
  `name_company` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `budget_company` int(50) DEFAULT NULL,
  `type_company` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fans_company` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_company`
--

INSERT INTO `tbl_company` (`id_company`, `name_company`, `budget_company`, `type_company`, `fans_company`) VALUES
(1, 'VVE', 50000000, 'PG', 100000000),
(2, 'AUW', 25000000, '14', 50000000),
(3, 'NWEW', 10000000, 'R', 20000000),
(4, 'Free Agents', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_company_wrestlers`
--

CREATE TABLE `tbl_company_wrestlers` (
  `id_company_wrestlers` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_wrestler` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_company_wrestlers`
--

INSERT INTO `tbl_company_wrestlers` (`id_company_wrestlers`, `id_company`, `id_wrestler`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 2, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 3, 51),
(52, 3, 52),
(53, 3, 53),
(54, 3, 54),
(55, 3, 55),
(56, 3, 56),
(57, 3, 57),
(58, 4, 58),
(59, 4, 59),
(60, 4, 60),
(61, 4, 61),
(62, 4, 62),
(63, 4, 63),
(64, 4, 64),
(65, 4, 65),
(66, 4, 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_day`
--

CREATE TABLE `tbl_day` (
  `id_day` int(11) NOT NULL,
  `name_day` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_day`
--

INSERT INTO `tbl_day` (`id_day`, `name_day`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_generate`
--

CREATE TABLE `tbl_generate` (
  `id_generate` int(11) NOT NULL,
  `name_generate` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `surname_generate` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `city_generate` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `genere_generate` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_generate`
--

INSERT INTO `tbl_generate` (`id_generate`, `name_generate`, `surname_generate`, `city_generate`, `genere_generate`) VALUES
(1, 'Kevin', 'Roberts', 'Chicago', 'm'),
(2, 'Mark', 'Steel', 'Miami', 'm'),
(3, 'The', 'Curse', 'Los Angeles', 'm'),
(4, 'Lady', 'Madison', 'New York', 'f'),
(5, 'The', 'Heat', 'London', 'm'),
(6, 'Sonia', 'Buffy', 'Manchester', 'f'),
(7, 'Oliver', 'Williams', 'Boston', 'm'),
(8, 'Harry', 'Heaven', 'San Diego', 'm'),
(9, 'Oliver', 'Williams', 'Boston', 'm'),
(10, 'Harry', 'Heaven', 'San Diego', 'm'),
(11, 'Thomas', 'Makai', 'Seattle', 'm'),
(12, 'Jessica', 'Brown', 'Dallas', 'f'),
(13, 'Evans', 'Murphy', 'Dublin', 'm'),
(14, 'Jackson', 'Cass', 'Barcelona', 'm'),
(15, 'Rocky', 'Wilson', 'Berlin', 'm'),
(16, 'Lysa', 'Smith', 'Melbourne', 'f'),
(17, 'Thomas', 'Axel', 'New Jersey', 'm'),
(18, 'Hugo', 'Williamson', 'Amsterdam', 'm'),
(19, 'Nicky', 'Jones', 'Lima', 'f'),
(20, 'Ms', 'Taylor', 'Austin', 'f'),
(21, 'Anakin', 'Mcgready', 'Madrid', 'm'),
(22, 'Sunset', 'Clear', 'Paris', 'f'),
(23, 'Chrisha', 'State', 'Rome', 'f'),
(24, 'Mr', 'Jones', 'Mineapolis', 'm'),
(25, 'Pharell', 'Ericsson', 'Bogota', 'm'),
(26, 'Lexis', 'Crews', 'Cleveland', 'm'),
(27, 'James', 'Li', 'Montevideo', 'm'),
(28, 'Milan', 'Connors', 'Buenos Aires', 'm'),
(29, 'Briona', 'Black', 'Santiago', 'f'),
(30, 'Erica', 'Powers', 'Guayaquil', 'f'),
(31, 'Austin', 'Martinez', 'Mexico', 'm'),
(32, 'Juanito', 'Lopez', 'Puerto Rico', 'm'),
(33, 'Sofia', 'Jimenez', 'Rio de Janeiro', 'f'),
(34, 'Akira', 'Fujioka', 'Tokio', 'm'),
(35, 'Chiyo', 'Hashimoto', 'Kyoto', 'm'),
(36, 'Jin', 'Himura', 'Kobe', 'f'),
(37, 'Oyuki', 'Fujimoto', 'Hokaido', 'm'),
(38, 'Umiko', 'Kita', 'Osaka', 'f'),
(39, 'Wakana', 'Uta', 'Nara', 'f'),
(40, 'Mori', 'Nana', 'Okinawa', 'm'),
(41, 'Ronin', 'Kobayashi', 'Fukouka', 'm'),
(42, 'Takeo', 'Matsumoto', 'Nagoya', 'm'),
(43, 'Yutaka', 'Minami', 'Saitama', 'f'),
(44, 'Nagisa', 'Honda', 'Sapporo', 'f'),
(45, 'Humberto', 'Sanchez', 'Monterrey', 'm'),
(46, 'Alexia', 'Garcia', 'Guadalajara', 'f'),
(47, 'Joaquin', 'Ramirez', 'Tijuana', 'm'),
(48, 'Ramon', 'Mendoza', 'Acapulco', 'm'),
(49, 'Erika', 'Castillo', 'Merida', 'f'),
(50, 'Jimena', 'Cruz', 'Queretaro', 'f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_hability`
--

CREATE TABLE `tbl_hability` (
  `id_hability` int(11) NOT NULL,
  `name_hability` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_hability`
--

INSERT INTO `tbl_hability` (`id_hability`, `name_hability`) VALUES
(1, 'Higflyer'),
(2, 'Heavywheight'),
(3, 'Extreme'),
(4, 'Carismatic'),
(5, 'Cruiserweight'),
(6, 'Glass Bones'),
(7, 'Resistant'),
(8, 'Popular'),
(9, 'Superman'),
(10, 'Stickyman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_match`
--

CREATE TABLE `tbl_match` (
  `id_match` int(11) NOT NULL,
  `name_match` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_match`
--

INSERT INTO `tbl_match` (`id_match`, `name_match`) VALUES
(1, '1vs1'),
(2, '2vs2'),
(3, '3vs3'),
(4, '4vs4'),
(5, '5vs5'),
(6, '6vs6'),
(7, 'triple threat'),
(8, 'fatal-4-way'),
(9, '6 man'),
(10, 'battle royale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ppv`
--

CREATE TABLE `tbl_ppv` (
  `id_ppv` int(11) NOT NULL,
  `name_ppv` int(11) NOT NULL,
  `type_ppv` enum('minor','medium','major','') COLLATE utf8_unicode_ci NOT NULL,
  `id_day` int(11) NOT NULL,
  `id_tv` int(11) NOT NULL,
  `id_company` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_show`
--

CREATE TABLE `tbl_show` (
  `id_show` int(11) NOT NULL,
  `name_show` int(50) NOT NULL,
  `id_day` int(11) NOT NULL,
  `id_tv` int(11) NOT NULL,
  `id_company` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tag-team`
--

CREATE TABLE `tbl_tag-team` (
  `id_tag-team` int(11) NOT NULL,
  `name_tag-team` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tag-team_wrestler`
--

CREATE TABLE `tbl_tag-team_wrestler` (
  `id_tag-team_wrestler` int(11) NOT NULL,
  `id_tag-team` int(11) NOT NULL,
  `id_wrestler` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `id_tv` int(11) NOT NULL,
  `name_tv` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `audience_tv` int(25) NOT NULL,
  `payment_tv` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_type_match`
--

CREATE TABLE `tbl_type_match` (
  `id_type_match` int(11) NOT NULL,
  `name_type_match` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_type_match`
--

INSERT INTO `tbl_type_match` (`id_type_match`, `name_type_match`) VALUES
(5, 'Normal'),
(6, 'Extreme Rules'),
(7, 'Steel Cage'),
(8, 'Last Man Standing'),
(9, 'Big Cell'),
(10, 'Burried Alive'),
(11, 'Inferno'),
(12, 'Falls Count Anywhere'),
(13, 'Ladder'),
(14, 'Table'),
(15, 'Ambulance'),
(16, 'Submission'),
(17, 'Iron Man'),
(18, 'Tag Team'),
(19, 'Tornado Tag');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_type_match_related`
--

CREATE TABLE `tbl_type_match_related` (
  `id_type_match_related` int(11) NOT NULL,
  `id_match` int(11) NOT NULL,
  `id_type_match` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `user_user` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `pass_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_company` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `user_user`, `pass_user`, `email_user`, `id_company`) VALUES
(1, 'admin', '1234', 'admin@admin.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_wrestlers`
--

CREATE TABLE `tbl_wrestlers` (
  `id_wrestler` int(11) NOT NULL,
  `name_wrestler` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `surname_wrestler` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `age_wrestler` int(2) NOT NULL,
  `genere_wrestler` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `city_wrestler` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `popularity_wrestler` int(2) NOT NULL,
  `credibility_wrestler` int(2) NOT NULL,
  `stars_wrestler` int(2) NOT NULL,
  `Fatigue_wrestler` int(2) NOT NULL DEFAULT '0',
  `Injured_weeks_wrestler` int(2) NOT NULL DEFAULT '0',
  `salary_wrestler` int(25) NOT NULL,
  `contract_wrestler` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_wrestlers`
--

INSERT INTO `tbl_wrestlers` (`id_wrestler`, `name_wrestler`, `surname_wrestler`, `age_wrestler`, `genere_wrestler`, `city_wrestler`, `popularity_wrestler`, `credibility_wrestler`, `stars_wrestler`, `Fatigue_wrestler`, `Injured_weeks_wrestler`, `salary_wrestler`, `contract_wrestler`) VALUES
(1, 'Akira', 'Matsumoto', 33, 'm', 'Okinawa', 59, 72, 7, 0, 0, 125598, 34),
(2, 'Erica', 'Black', 31, 'f', 'Buenos Aires', 53, 54, 6, 0, 0, 467337, 37),
(3, 'Lexis', 'Williams', 50, 'm', 'Barcelona', 68, 56, 7, 0, 0, 311610, 36),
(4, 'Hugo', 'Williamson', 41, 'm', 'Buenos Aires', 92, 67, 5, 0, 0, 221900, 51),
(5, 'Akira', 'Matsumoto', 32, 'm', 'Saitama', 72, 62, 9, 0, 0, 1055346, 19),
(6, 'Ramon', 'Sanchez', 35, 'm', 'Queretaro', 95, 65, 6, 0, 0, 283524, 24),
(7, 'Takeo', 'Kobayashi', 25, 'm', 'Nagoya', 56, 49, 4, 0, 0, 13833, 23),
(8, 'The', 'Axel', 31, 'm', 'San Diego', 99, 52, 5, 0, 0, 151457, 28),
(9, 'James', 'Steel', 45, 'm', 'Santiago', 90, 80, 8, 0, 0, 626676, 4),
(10, 'Anakin', 'Crews', 35, 'm', 'Los Angeles', 83, 90, 4, 0, 0, 52000, 40),
(11, 'Oyuki', 'Kobayashi', 31, 'm', 'Kobe', 69, 94, 7, 0, 0, 462617, 10),
(12, 'Mark', 'Axel', 24, 'm', 'New Jersey', 75, 82, 10, 0, 0, 1320738, 10),
(13, 'Thomas', 'Heat', 27, 'm', 'San Diego', 98, 68, 3, 0, 0, 95965, 18),
(14, 'Erica', 'Williams', 42, 'f', 'Lima', 66, 88, 10, 0, 0, 1896022, 19),
(15, 'Mori', 'Fujimoto', 37, 'm', 'Okinawa', 61, 45, 7, 0, 0, 200851, 32),
(16, 'Chrisha', 'State', 38, 'f', 'Guayaquil', 53, 44, 5, 0, 0, 364493, 25),
(17, 'The', 'Lopez', 27, 'm', 'Madrid', 61, 92, 4, 0, 0, 70649, 23),
(18, 'Harry', 'Heaven', 38, 'm', 'Melbourne', 90, 43, 10, 0, 0, 1457900, 20),
(19, 'Evans', 'State', 39, 'm', 'Lima', 69, 75, 10, 0, 0, 1166042, 28),
(20, 'Nagisa', 'Kobayashi', 34, 'f', 'Nagoya', 79, 73, 8, 0, 0, 1931221, 17),
(21, 'Lysa', 'Li', 30, 'f', 'Mineapolis', 55, 50, 4, 0, 0, 37680, 47),
(22, 'Lady', 'Jimenez', 49, 'f', 'Boston', 99, 94, 3, 0, 0, 46617, 5),
(23, 'Oyuki', 'Himura', 19, 'm', 'Tokio', 84, 74, 7, 0, 0, 302888, 35),
(24, 'Anakin', 'Smith', 20, 'm', 'Melbourne', 86, 71, 9, 0, 0, 778875, 8),
(25, 'Chiyo', 'Hashimoto', 27, 'm', 'Nagoya', 38, 66, 8, 0, 0, 654533, 28),
(26, 'Lexis', 'Williams', 40, 'm', 'Buenos Aires', 50, 65, 6, 0, 0, 56128, 33),
(27, 'Juanito', 'Lopez', 21, 'm', 'Mineapolis', 41, 46, 7, 0, 0, 233221, 50),
(28, 'Joaquin', 'Castillo', 34, 'm', 'Merida', 86, 35, 4, 0, 0, 31758, 9),
(29, 'Ms', 'Makai', 42, 'f', 'Rome', 43, 82, 4, 0, 0, 94301, 26),
(30, 'Humberto', 'Mendoza', 24, 'm', 'Tijuana', 78, 78, 5, 0, 0, 98469, 18),
(31, 'Akira', 'Himura', 36, 'm', 'Nagoya', 89, 68, 7, 0, 0, 181952, 24),
(32, 'Lexis', 'Madison', 42, 'm', 'Los Angeles', 69, 80, 10, 0, 0, 1638216, 21),
(33, 'Ms', 'Axel', 31, 'f', 'Cleveland', 87, 42, 5, 0, 0, 392448, 29),
(34, 'Jin', 'Nana', 40, 'f', 'Okinawa', 71, 89, 5, 0, 0, 378971, 23),
(35, 'Jimena', 'Sanchez', 23, 'f', 'Acapulco', 71, 66, 9, 0, 0, 1310645, 8),
(36, 'Sunset', 'Jones', 41, 'f', 'Lima', 42, 87, 6, 0, 0, 210304, 13),
(37, 'Lysa', 'Curse', 39, 'f', 'Santiago', 59, 40, 4, 0, 0, 99972, 4),
(38, 'Sunset', 'Williams', 42, 'f', 'San Diego', 39, 53, 3, 0, 0, 15975, 52),
(39, 'Oliver', 'Clear', 28, 'm', 'Rome', 35, 69, 9, 0, 0, 1562799, 12),
(40, 'Joaquin', 'Garcia', 21, 'm', 'Guadalajara', 63, 78, 6, 0, 0, 326539, 41),
(41, 'Chrisha', 'Jimenez', 21, 'f', 'London', 33, 65, 7, 0, 0, 498841, 5),
(42, 'Pharell', 'Jones', 48, 'm', 'Rome', 33, 86, 8, 0, 0, 1161971, 17),
(43, 'Thomas', 'Heaven', 30, 'm', 'Buenos Aires', 89, 62, 7, 0, 0, 408283, 17),
(44, 'Oliver', 'Jimenez', 22, 'm', 'San Diego', 52, 68, 5, 0, 0, 293578, 35),
(45, 'Ms', 'Curse', 46, 'f', 'Paris', 67, 63, 2, 0, 0, 69281, 7),
(46, 'Wakana', 'Uta', 25, 'f', 'Osaka', 60, 32, 2, 0, 0, 28693, 51),
(47, 'Sunset', 'Heaven', 18, 'f', 'San Diego', 38, 80, 4, 0, 0, 35863, 20),
(48, 'Lysa', 'Black', 33, 'f', 'Austin', 64, 84, 3, 0, 0, 87382, 45),
(49, 'Briona', 'Madison', 25, 'f', 'Mexico', 21, 66, 8, 0, 0, 1308564, 28),
(50, 'Pharell', 'Taylor', 31, 'm', 'Chicago', 21, 24, 7, 0, 0, 397131, 6),
(51, 'Yutaka', 'Fujioka', 42, 'f', 'Osaka', 53, 35, 7, 0, 0, 301688, 26),
(52, 'Briona', 'Ericsson', 45, 'f', 'Chicago', 56, 75, 2, 0, 0, 31079, 48),
(53, 'Harry', 'State', 29, 'm', 'Bogota', 39, 36, 2, 0, 0, 15907, 39),
(54, 'The', 'Williams', 39, 'm', 'Guayaquil', 48, 40, 4, 0, 0, 58415, 43),
(55, 'Sofia', 'Williams', 39, 'f', 'Buenos Aires', 68, 35, 9, 0, 0, 1920646, 43),
(56, 'Lexis', 'Williams', 41, 'm', 'Montevideo', 65, 29, 5, 0, 0, 146566, 43),
(57, 'Takeo', 'Hashimoto', 24, 'm', 'Nara', 75, 30, 10, 0, 0, 1940197, 50),
(58, 'Erika', 'Ramirez', 24, 'f', 'Acapulco', 60, 8, 5, 0, 0, 238492, 0),
(59, 'Ramon', 'Garcia', 54, 'm', 'Monterrey', 43, 70, 8, 0, 0, 592594, 0),
(60, 'Jessica', 'Martinez', 26, 'f', 'Mexico', 67, 10, 4, 0, 0, 25571, 0),
(61, 'Ronin', 'Minami', 39, 'm', 'Okinawa', 92, 91, 3, 0, 0, 39938, 0),
(62, 'Sunset', 'Jones', 59, 'f', 'London', 53, 85, 7, 0, 0, 479974, 0),
(63, 'Wakana', 'Himura', 49, 'f', 'Tokio', 27, 36, 9, 0, 0, 1586777, 0),
(64, 'Alexia', 'Sanchez', 19, 'f', 'Monterrey', 15, 88, 9, 0, 0, 443868, 0),
(65, 'Milan', 'Ericsson', 50, 'm', 'New Jersey', 44, 77, 6, 0, 0, 290643, 0),
(66, 'Umiko', 'Matsumoto', 44, 'f', 'Kyoto', 75, 93, 5, 0, 0, 471957, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_wrestler_hability`
--

CREATE TABLE `tbl_wrestler_hability` (
  `id_wrestler_hability` int(11) NOT NULL,
  `id_hability` int(11) NOT NULL,
  `id_wrestler` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_wrestler_hability`
--

INSERT INTO `tbl_wrestler_hability` (`id_wrestler_hability`, `id_hability`, `id_wrestler`) VALUES
(1, 4, 1),
(2, 10, 2),
(3, 5, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 9, 7),
(8, 6, 8),
(9, 7, 9),
(10, 3, 10),
(11, 1, 11),
(12, 9, 12),
(13, 8, 13),
(14, 3, 14),
(15, 8, 15),
(16, 7, 16),
(17, 2, 17),
(18, 7, 18),
(19, 10, 19),
(20, 5, 20),
(21, 7, 21),
(22, 7, 22),
(23, 8, 23),
(24, 3, 24),
(25, 7, 44),
(26, 6, 45),
(27, 7, 46),
(28, 8, 47),
(29, 6, 48),
(30, 4, 49),
(31, 1, 50),
(32, 2, 51),
(33, 5, 52),
(34, 9, 53),
(35, 6, 54),
(36, 3, 55),
(37, 3, 56),
(38, 5, 57),
(39, 10, 58),
(40, 9, 59),
(41, 10, 60),
(42, 3, 61),
(43, 10, 62),
(44, 8, 63),
(45, 8, 64),
(46, 10, 65),
(47, 5, 66);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_championship`
--
ALTER TABLE `tbl_championship`
  ADD PRIMARY KEY (`id_championship`);

--
-- Indices de la tabla `tbl_championship_company`
--
ALTER TABLE `tbl_championship_company`
  ADD PRIMARY KEY (`id_championship_company`),
  ADD UNIQUE KEY `id_championship` (`id_championship`,`id_company`),
  ADD UNIQUE KEY `id_wrestler` (`id_wrestler`),
  ADD KEY `id_company` (`id_company`);

--
-- Indices de la tabla `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indices de la tabla `tbl_company_wrestlers`
--
ALTER TABLE `tbl_company_wrestlers`
  ADD PRIMARY KEY (`id_company_wrestlers`),
  ADD UNIQUE KEY `id_company` (`id_company`,`id_wrestler`),
  ADD KEY `id_wrestler` (`id_wrestler`);

--
-- Indices de la tabla `tbl_day`
--
ALTER TABLE `tbl_day`
  ADD PRIMARY KEY (`id_day`);

--
-- Indices de la tabla `tbl_generate`
--
ALTER TABLE `tbl_generate`
  ADD PRIMARY KEY (`id_generate`);

--
-- Indices de la tabla `tbl_hability`
--
ALTER TABLE `tbl_hability`
  ADD PRIMARY KEY (`id_hability`);

--
-- Indices de la tabla `tbl_match`
--
ALTER TABLE `tbl_match`
  ADD PRIMARY KEY (`id_match`);

--
-- Indices de la tabla `tbl_ppv`
--
ALTER TABLE `tbl_ppv`
  ADD PRIMARY KEY (`id_ppv`),
  ADD UNIQUE KEY `id_day` (`id_day`,`id_tv`,`id_company`);

--
-- Indices de la tabla `tbl_show`
--
ALTER TABLE `tbl_show`
  ADD PRIMARY KEY (`id_show`),
  ADD UNIQUE KEY `id_tv` (`id_tv`),
  ADD UNIQUE KEY `id_company` (`id_company`),
  ADD UNIQUE KEY `id_day` (`id_day`);

--
-- Indices de la tabla `tbl_tag-team`
--
ALTER TABLE `tbl_tag-team`
  ADD PRIMARY KEY (`id_tag-team`);

--
-- Indices de la tabla `tbl_tag-team_wrestler`
--
ALTER TABLE `tbl_tag-team_wrestler`
  ADD PRIMARY KEY (`id_tag-team_wrestler`),
  ADD UNIQUE KEY `id_tag-team` (`id_tag-team`,`id_wrestler`),
  ADD KEY `id_wrestler` (`id_wrestler`);

--
-- Indices de la tabla `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`id_tv`);

--
-- Indices de la tabla `tbl_type_match`
--
ALTER TABLE `tbl_type_match`
  ADD PRIMARY KEY (`id_type_match`);

--
-- Indices de la tabla `tbl_type_match_related`
--
ALTER TABLE `tbl_type_match_related`
  ADD PRIMARY KEY (`id_type_match_related`),
  ADD UNIQUE KEY `id_match` (`id_match`,`id_type_match`),
  ADD KEY `id_type_match` (`id_type_match`);

--
-- Indices de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `id_company` (`id_company`);

--
-- Indices de la tabla `tbl_wrestlers`
--
ALTER TABLE `tbl_wrestlers`
  ADD PRIMARY KEY (`id_wrestler`);

--
-- Indices de la tabla `tbl_wrestler_hability`
--
ALTER TABLE `tbl_wrestler_hability`
  ADD PRIMARY KEY (`id_wrestler_hability`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_championship`
--
ALTER TABLE `tbl_championship`
  MODIFY `id_championship` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_championship_company`
--
ALTER TABLE `tbl_championship_company`
  MODIFY `id_championship_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_company_wrestlers`
--
ALTER TABLE `tbl_company_wrestlers`
  MODIFY `id_company_wrestlers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `tbl_day`
--
ALTER TABLE `tbl_day`
  MODIFY `id_day` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_generate`
--
ALTER TABLE `tbl_generate`
  MODIFY `id_generate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tbl_hability`
--
ALTER TABLE `tbl_hability`
  MODIFY `id_hability` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_match`
--
ALTER TABLE `tbl_match`
  MODIFY `id_match` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_ppv`
--
ALTER TABLE `tbl_ppv`
  MODIFY `id_ppv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_show`
--
ALTER TABLE `tbl_show`
  MODIFY `id_show` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tag-team`
--
ALTER TABLE `tbl_tag-team`
  MODIFY `id_tag-team` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tag-team_wrestler`
--
ALTER TABLE `tbl_tag-team_wrestler`
  MODIFY `id_tag-team_wrestler` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `id_tv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_type_match`
--
ALTER TABLE `tbl_type_match`
  MODIFY `id_type_match` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tbl_type_match_related`
--
ALTER TABLE `tbl_type_match_related`
  MODIFY `id_type_match_related` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_wrestlers`
--
ALTER TABLE `tbl_wrestlers`
  MODIFY `id_wrestler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `tbl_wrestler_hability`
--
ALTER TABLE `tbl_wrestler_hability`
  MODIFY `id_wrestler_hability` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_championship_company`
--
ALTER TABLE `tbl_championship_company`
  ADD CONSTRAINT `tbl_championship_company_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `tbl_company` (`id_company`),
  ADD CONSTRAINT `tbl_championship_company_ibfk_2` FOREIGN KEY (`id_championship`) REFERENCES `tbl_championship` (`id_championship`),
  ADD CONSTRAINT `tbl_championship_company_ibfk_3` FOREIGN KEY (`id_wrestler`) REFERENCES `tbl_wrestlers` (`id_wrestler`);

--
-- Filtros para la tabla `tbl_company_wrestlers`
--
ALTER TABLE `tbl_company_wrestlers`
  ADD CONSTRAINT `tbl_company_wrestlers_ibfk_1` FOREIGN KEY (`id_wrestler`) REFERENCES `tbl_wrestlers` (`id_wrestler`),
  ADD CONSTRAINT `tbl_company_wrestlers_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `tbl_company` (`id_company`);

--
-- Filtros para la tabla `tbl_ppv`
--
ALTER TABLE `tbl_ppv`
  ADD CONSTRAINT `tbl_ppv_ibfk_1` FOREIGN KEY (`id_day`) REFERENCES `tbl_day` (`id_day`);

--
-- Filtros para la tabla `tbl_show`
--
ALTER TABLE `tbl_show`
  ADD CONSTRAINT `tbl_show_ibfk_1` FOREIGN KEY (`id_day`) REFERENCES `tbl_day` (`id_day`),
  ADD CONSTRAINT `tbl_show_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `tbl_company` (`id_company`);

--
-- Filtros para la tabla `tbl_tag-team`
--
ALTER TABLE `tbl_tag-team`
  ADD CONSTRAINT `tbl_tag-team_ibfk_1` FOREIGN KEY (`id_tag-team`) REFERENCES `tbl_tag-team_wrestler` (`id_tag-team`);

--
-- Filtros para la tabla `tbl_tag-team_wrestler`
--
ALTER TABLE `tbl_tag-team_wrestler`
  ADD CONSTRAINT `tbl_tag-team_wrestler_ibfk_1` FOREIGN KEY (`id_wrestler`) REFERENCES `tbl_wrestlers` (`id_wrestler`);

--
-- Filtros para la tabla `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD CONSTRAINT `tbl_tv_ibfk_1` FOREIGN KEY (`id_tv`) REFERENCES `tbl_show` (`id_tv`);

--
-- Filtros para la tabla `tbl_type_match_related`
--
ALTER TABLE `tbl_type_match_related`
  ADD CONSTRAINT `tbl_type_match_related_ibfk_1` FOREIGN KEY (`id_type_match`) REFERENCES `tbl_type_match` (`id_type_match`),
  ADD CONSTRAINT `tbl_type_match_related_ibfk_2` FOREIGN KEY (`id_match`) REFERENCES `tbl_match` (`id_match`);

--
-- Filtros para la tabla `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `tbl_company` (`id_company`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
