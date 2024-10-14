-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 09:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorizations`
--

CREATE TABLE `authorizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `authorization_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authorizations`
--

INSERT INTO `authorizations` (`id`, `role_id`, `menu_id`, `sub_menu_id`, `authorization_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'RU001', 1, NULL, 1, NULL, NULL, NULL),
(22, 'RU001', 1, NULL, 2, NULL, NULL, NULL),
(23, 'RU001', 1, NULL, 3, NULL, NULL, NULL),
(24, 'RU001', 1, NULL, 4, NULL, NULL, NULL),
(25, 'RU001', 2, 1, 1, NULL, NULL, NULL),
(26, 'RU001', 2, 1, 2, NULL, NULL, NULL),
(27, 'RU001', 2, 1, 3, NULL, NULL, NULL),
(28, 'RU001', 2, 1, 4, NULL, NULL, NULL),
(29, 'RU001', 2, 2, 1, NULL, NULL, NULL),
(30, 'RU001', 2, 2, 2, NULL, NULL, NULL),
(31, 'RU001', 2, 2, 3, NULL, NULL, NULL),
(32, 'RU001', 2, 2, 4, NULL, NULL, NULL),
(33, 'RU001', 2, 3, 1, NULL, NULL, NULL),
(34, 'RU001', 2, 3, 2, NULL, NULL, NULL),
(35, 'RU001', 2, 3, 3, NULL, NULL, NULL),
(36, 'RU001', 2, 3, 4, NULL, NULL, NULL),
(37, 'RU001', 2, 4, 1, NULL, NULL, NULL),
(38, 'RU001', 2, 4, 2, NULL, NULL, NULL),
(39, 'RU001', 2, 4, 3, NULL, NULL, NULL),
(40, 'RU001', 2, 4, 4, NULL, NULL, NULL),
(41, 'RU001', 2, 5, 1, NULL, NULL, NULL),
(42, 'RU001', 2, 5, 2, NULL, NULL, NULL),
(43, 'RU001', 2, 5, 3, NULL, NULL, NULL),
(44, 'RU001', 2, 5, 4, NULL, NULL, NULL),
(45, 'RU001', 2, 6, 1, NULL, NULL, NULL),
(46, 'RU001', 2, 6, 2, NULL, NULL, NULL),
(47, 'RU001', 2, 6, 3, NULL, NULL, NULL),
(48, 'RU001', 2, 6, 4, NULL, NULL, NULL),
(49, 'RU001', 2, 7, 1, NULL, NULL, NULL),
(50, 'RU001', 2, 7, 2, NULL, NULL, NULL),
(51, 'RU001', 2, 7, 3, NULL, NULL, NULL),
(52, 'RU001', 2, 7, 4, NULL, NULL, NULL),
(53, 'RU001', 2, 8, 1, NULL, NULL, NULL),
(54, 'RU001', 2, 8, 2, NULL, NULL, NULL),
(55, 'RU001', 2, 8, 3, NULL, NULL, NULL),
(56, 'RU001', 2, 8, 4, NULL, NULL, NULL),
(57, 'RU001', 2, 9, 1, NULL, NULL, NULL),
(58, 'RU001', 2, 9, 2, NULL, NULL, NULL),
(59, 'RU001', 2, 9, 3, NULL, NULL, NULL),
(60, 'RU001', 2, 9, 4, NULL, NULL, NULL),
(61, 'RU001', 2, 10, 1, NULL, NULL, NULL),
(62, 'RU001', 2, 10, 2, NULL, NULL, NULL),
(63, 'RU001', 2, 10, 3, NULL, NULL, NULL),
(64, 'RU001', 2, 10, 4, NULL, NULL, NULL),
(65, 'RU001', 2, 11, 1, NULL, NULL, NULL),
(66, 'RU001', 2, 11, 2, NULL, NULL, NULL),
(67, 'RU001', 2, 11, 3, NULL, NULL, NULL),
(68, 'RU001', 2, 11, 4, NULL, NULL, NULL),
(69, 'RU001', 2, 12, 1, NULL, NULL, NULL),
(70, 'RU001', 2, 12, 2, NULL, NULL, NULL),
(71, 'RU001', 2, 12, 3, NULL, NULL, NULL),
(72, 'RU001', 2, 12, 4, NULL, NULL, NULL),
(73, 'RU001', 2, 13, 1, NULL, NULL, NULL),
(74, 'RU001', 2, 13, 2, NULL, NULL, NULL),
(75, 'RU001', 2, 13, 3, NULL, NULL, NULL),
(76, 'RU001', 2, 13, 4, NULL, NULL, NULL),
(77, 'RU001', 2, 14, 1, NULL, NULL, NULL),
(78, 'RU001', 2, 14, 2, NULL, NULL, NULL),
(79, 'RU001', 2, 14, 3, NULL, NULL, NULL),
(80, 'RU001', 2, 14, 4, NULL, NULL, NULL),
(81, 'RU001', 3, 15, 1, NULL, NULL, NULL),
(82, 'RU001', 3, 15, 2, NULL, NULL, NULL),
(83, 'RU001', 3, 15, 3, NULL, NULL, NULL),
(84, 'RU001', 3, 15, 4, NULL, NULL, NULL),
(85, 'RU001', 4, NULL, 1, NULL, NULL, NULL),
(86, 'RU001', 4, NULL, 2, NULL, NULL, NULL),
(87, 'RU001', 4, NULL, 3, NULL, NULL, NULL),
(88, 'RU001', 4, NULL, 4, NULL, NULL, NULL),
(89, 'RU001', 5, NULL, 1, NULL, NULL, NULL),
(90, 'RU001', 5, NULL, 2, NULL, NULL, NULL),
(91, 'RU001', 5, NULL, 3, NULL, NULL, NULL),
(92, 'RU001', 5, NULL, 4, NULL, NULL, NULL),
(93, 'RU001', 6, NULL, 1, NULL, NULL, NULL),
(94, 'RU001', 6, NULL, 2, NULL, NULL, NULL),
(95, 'RU001', 6, NULL, 3, NULL, NULL, NULL),
(96, 'RU001', 6, NULL, 4, NULL, NULL, NULL),
(97, 'RU001', 7, 16, 1, NULL, NULL, NULL),
(98, 'RU001', 7, 16, 2, NULL, NULL, NULL),
(99, 'RU001', 7, 16, 3, NULL, NULL, NULL),
(100, 'RU001', 7, 16, 4, NULL, NULL, NULL),
(101, 'RU001', 7, 17, 1, NULL, NULL, NULL),
(102, 'RU001', 7, 17, 2, NULL, NULL, NULL),
(103, 'RU001', 7, 17, 3, NULL, NULL, NULL),
(104, 'RU001', 7, 17, 4, NULL, NULL, NULL),
(105, 'RU001', 7, 18, 1, NULL, NULL, NULL),
(106, 'RU001', 7, 18, 2, NULL, NULL, NULL),
(107, 'RU001', 7, 18, 3, NULL, NULL, NULL),
(108, 'RU001', 7, 18, 4, NULL, NULL, NULL),
(109, 'RU001', 7, 19, 1, NULL, NULL, NULL),
(110, 'RU001', 7, 19, 2, NULL, NULL, NULL),
(111, 'RU001', 7, 19, 3, NULL, NULL, NULL),
(112, 'RU001', 7, 19, 4, NULL, NULL, NULL),
(113, 'RU002', 1, NULL, 1, NULL, NULL, NULL),
(114, 'RU002', 1, NULL, 2, NULL, NULL, NULL),
(115, 'RU002', 1, NULL, 3, NULL, NULL, NULL),
(116, 'RU002', 1, NULL, 4, NULL, NULL, NULL),
(117, 'RU002', 2, 1, 1, NULL, NULL, NULL),
(118, 'RU002', 2, 1, 2, NULL, NULL, NULL),
(119, 'RU002', 2, 1, 3, NULL, NULL, NULL),
(120, 'RU002', 2, 1, 4, NULL, NULL, NULL),
(121, 'RU002', 2, 2, 1, NULL, NULL, NULL),
(122, 'RU002', 2, 2, 2, NULL, NULL, NULL),
(123, 'RU002', 2, 2, 3, NULL, NULL, NULL),
(124, 'RU002', 2, 2, 4, NULL, NULL, NULL),
(125, 'RU002', 2, 3, 1, NULL, NULL, NULL),
(126, 'RU002', 2, 3, 2, NULL, NULL, NULL),
(127, 'RU002', 2, 3, 3, NULL, NULL, NULL),
(128, 'RU002', 2, 3, 4, NULL, NULL, NULL),
(129, 'RU002', 2, 4, 1, NULL, NULL, NULL),
(130, 'RU002', 2, 4, 2, NULL, NULL, NULL),
(131, 'RU002', 2, 4, 3, NULL, NULL, NULL),
(132, 'RU002', 2, 4, 4, NULL, NULL, NULL),
(133, 'RU002', 2, 5, 1, NULL, NULL, NULL),
(134, 'RU002', 2, 5, 2, NULL, NULL, NULL),
(135, 'RU002', 2, 5, 3, NULL, NULL, NULL),
(136, 'RU002', 2, 5, 4, NULL, NULL, NULL),
(137, 'RU002', 2, 6, 1, NULL, NULL, NULL),
(138, 'RU002', 2, 6, 2, NULL, NULL, NULL),
(139, 'RU002', 2, 6, 3, NULL, NULL, NULL),
(140, 'RU002', 2, 6, 4, NULL, NULL, NULL),
(141, 'RU002', 2, 7, 1, NULL, NULL, NULL),
(142, 'RU002', 2, 7, 2, NULL, NULL, NULL),
(143, 'RU002', 2, 7, 3, NULL, NULL, NULL),
(144, 'RU002', 2, 7, 4, NULL, NULL, NULL),
(145, 'RU002', 2, 8, 1, NULL, NULL, NULL),
(146, 'RU002', 2, 8, 2, NULL, NULL, NULL),
(147, 'RU002', 2, 8, 3, NULL, NULL, NULL),
(148, 'RU002', 2, 8, 4, NULL, NULL, NULL),
(149, 'RU002', 2, 9, 1, NULL, NULL, NULL),
(150, 'RU002', 2, 9, 2, NULL, NULL, NULL),
(151, 'RU002', 2, 9, 3, NULL, NULL, NULL),
(152, 'RU002', 2, 9, 4, NULL, NULL, NULL),
(153, 'RU002', 2, 10, 1, NULL, NULL, NULL),
(154, 'RU002', 2, 10, 2, NULL, NULL, NULL),
(155, 'RU002', 2, 10, 3, NULL, NULL, NULL),
(156, 'RU002', 2, 10, 4, NULL, NULL, NULL),
(157, 'RU002', 2, 11, 1, NULL, NULL, NULL),
(158, 'RU002', 2, 11, 2, NULL, NULL, NULL),
(159, 'RU002', 2, 11, 3, NULL, NULL, NULL),
(160, 'RU002', 2, 11, 4, NULL, NULL, NULL),
(161, 'RU002', 2, 12, 1, NULL, NULL, NULL),
(162, 'RU002', 2, 12, 2, NULL, NULL, NULL),
(163, 'RU002', 2, 12, 3, NULL, NULL, NULL),
(164, 'RU002', 2, 12, 4, NULL, NULL, NULL),
(165, 'RU002', 2, 13, 1, NULL, NULL, NULL),
(166, 'RU002', 2, 13, 2, NULL, NULL, NULL),
(167, 'RU002', 2, 13, 3, NULL, NULL, NULL),
(168, 'RU002', 2, 13, 4, NULL, NULL, NULL),
(169, 'RU002', 2, 14, 1, NULL, NULL, NULL),
(170, 'RU002', 2, 14, 2, NULL, NULL, NULL),
(171, 'RU002', 2, 14, 3, NULL, NULL, NULL),
(172, 'RU002', 2, 14, 4, NULL, NULL, NULL),
(173, 'RU002', 3, 15, 1, NULL, NULL, NULL),
(174, 'RU002', 3, 15, 2, NULL, NULL, NULL),
(175, 'RU002', 3, 15, 3, NULL, NULL, NULL),
(176, 'RU002', 3, 15, 4, NULL, NULL, NULL),
(177, 'RU002', 4, NULL, 1, NULL, NULL, NULL),
(178, 'RU002', 4, NULL, 2, NULL, NULL, NULL),
(179, 'RU002', 4, NULL, 3, NULL, NULL, NULL),
(180, 'RU002', 4, NULL, 4, NULL, NULL, NULL),
(181, 'RU002', 5, NULL, 1, NULL, NULL, NULL),
(182, 'RU002', 5, NULL, 2, NULL, NULL, NULL),
(183, 'RU002', 5, NULL, 3, NULL, NULL, NULL),
(184, 'RU002', 5, NULL, 4, NULL, NULL, NULL),
(185, 'RU002', 6, NULL, 1, NULL, NULL, NULL),
(186, 'RU002', 6, NULL, 2, NULL, NULL, NULL),
(187, 'RU002', 6, NULL, 3, NULL, NULL, NULL),
(188, 'RU002', 6, NULL, 4, NULL, NULL, NULL),
(189, 'RU002', 7, 16, 1, NULL, NULL, NULL),
(190, 'RU002', 7, 16, 2, NULL, NULL, NULL),
(191, 'RU002', 7, 16, 3, NULL, NULL, NULL),
(192, 'RU002', 7, 16, 4, NULL, NULL, NULL),
(193, 'RU002', 7, 17, 1, NULL, NULL, NULL),
(194, 'RU002', 7, 17, 2, NULL, NULL, NULL),
(195, 'RU002', 7, 17, 3, NULL, NULL, NULL),
(196, 'RU002', 7, 17, 4, NULL, NULL, NULL),
(197, 'RU002', 7, 18, 1, NULL, NULL, NULL),
(198, 'RU002', 7, 18, 2, NULL, NULL, NULL),
(199, 'RU002', 7, 18, 3, NULL, NULL, NULL),
(200, 'RU002', 7, 18, 4, NULL, NULL, NULL),
(201, 'RU002', 7, 19, 1, NULL, NULL, NULL),
(202, 'RU002', 7, 19, 2, NULL, NULL, NULL),
(203, 'RU002', 7, 19, 3, NULL, NULL, NULL),
(204, 'RU002', 7, 19, 4, NULL, NULL, NULL),
(205, 'RU003', 3, 15, 3, '2024-03-27 04:58:12', '2024-03-27 04:58:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorization_types`
--

CREATE TABLE `authorization_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authorization_types`
--

INSERT INTO `authorization_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'view', NULL, NULL),
(2, 'add', NULL, NULL),
(3, 'update', NULL, NULL),
(4, 'delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth_year` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `birth_year`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
('A001', 'Valade, Janet', NULL, 'P', '2024-02-11 21:54:20', '2024-02-11 21:54:20', NULL),
('A002', 'Siever, Ellen', NULL, 'P', '2024-02-11 21:54:31', '2024-02-11 21:54:31', NULL),
('A003', 'Love, Robert', NULL, 'P', '2024-02-11 21:54:40', '2024-02-11 21:54:40', NULL),
('A004', 'Robbins, Arnold', NULL, 'P', '2024-02-11 21:54:47', '2024-02-11 21:54:47', NULL),
('A005', 'Figgins, Stephen', NULL, 'P', '2024-02-11 21:54:53', '2024-02-11 21:54:53', NULL),
('A006', 'Weber, Aaron', NULL, 'P', '2024-02-11 21:54:59', '2024-02-11 21:54:59', NULL),
('A007', 'Kofler, Michael', NULL, 'P', '2024-02-11 21:55:05', '2024-02-11 21:55:05', NULL),
('A008', 'Kramer, David', NULL, 'P', '2024-02-11 21:55:11', '2024-02-11 21:55:11', NULL),
('A009', 'Raymond, Eric', NULL, 'P', '2024-02-11 21:55:43', '2024-02-11 21:55:43', NULL),
('A010', 'Fogel, Karl', NULL, 'P', '2024-02-11 21:55:50', '2024-02-11 21:55:50', NULL),
('A011', 'Douglas, Korry', NULL, 'P', '2024-02-11 21:55:55', '2024-02-11 21:55:55', NULL),
('A012', 'Douglas, Susan', NULL, 'P', '2024-02-11 21:56:00', '2024-02-11 21:56:00', NULL),
('A013', 'Shklar, Leon', NULL, 'P', '2024-02-11 21:56:07', '2024-02-11 21:56:07', NULL),
('A014', 'Rosen, Richard', NULL, 'P', '2024-02-11 21:56:12', '2024-02-11 21:56:12', NULL),
('A015', 'Woychowsky, Edmond', NULL, 'P', '2024-02-11 21:56:23', '2024-02-11 21:56:23', NULL),
('A016', 'Taylor, Arlene G.', NULL, 'P', '2024-02-11 21:56:29', '2024-02-11 21:56:29', NULL),
('A017', 'Stueart, Robert D.', NULL, 'P', '2024-02-11 21:56:35', '2024-02-11 21:56:35', NULL),
('A018', 'Moran, Barbara B.', NULL, 'P', '2024-02-11 21:56:41', '2024-02-11 21:56:41', NULL),
('A019', 'Morville, Peter', NULL, 'P', '2024-02-11 21:56:47', '2024-02-11 21:56:47', NULL),
('A020', 'Rosenfeld, Louis', NULL, 'P', '2024-02-11 21:56:52', '2024-02-11 21:56:52', NULL),
('A021', 'Robinson, Mark', NULL, 'P', '2024-02-11 21:57:00', '2024-02-11 21:57:00', NULL),
('A022', 'Bracking, Sarah', NULL, 'P', '2024-02-11 21:57:06', '2024-02-11 21:57:06', NULL),
('A023', 'Huffington, Arianna Stassinopoulos', NULL, 'P', '2024-02-11 21:57:13', '2024-02-11 21:57:13', NULL),
('A024', 'Hancock, Graham', NULL, 'P', '2024-02-11 21:57:20', '2024-02-11 21:57:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `authors_id` varchar(255) NOT NULL,
  `statement_of_responsibility` varchar(255) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `specific_detail_info` varchar(255) DEFAULT NULL,
  `gmds_id` varchar(255) NOT NULL,
  `content_types_id` varchar(255) DEFAULT NULL,
  `media_types_id` varchar(255) DEFAULT NULL,
  `carrier_types_id` varchar(255) DEFAULT NULL,
  `publishers_id` varchar(255) NOT NULL,
  `publisher_year` varchar(255) NOT NULL,
  `places_id` varchar(255) NOT NULL,
  `isbn_issn` varchar(13) NOT NULL,
  `collation` varchar(255) DEFAULT NULL,
  `series_title` varchar(255) DEFAULT NULL,
  `call_number` varchar(255) DEFAULT NULL,
  `subjects_id` varchar(255) DEFAULT NULL,
  `doc_languages_id` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `file` text NOT NULL,
  `opac` tinyint(1) NOT NULL,
  `labels_id` varchar(255) NOT NULL,
  `current_stock` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `authors_id`, `statement_of_responsibility`, `edition`, `specific_detail_info`, `gmds_id`, `content_types_id`, `media_types_id`, `carrier_types_id`, `publishers_id`, `publisher_year`, `places_id`, `isbn_issn`, `collation`, `series_title`, `call_number`, `subjects_id`, `doc_languages_id`, `desc`, `file`, `opac`, `labels_id`, `current_stock`, `created_at`, `updated_at`, `deleted_at`) VALUES
('BD001', 'Harry Potter and the Sorcerer\'s Stone', 'A001', '-', 'Edisi 1', 'Color Book', 'GMD001', 'CT001', 'MT001', 'CAT001', 'P001', '1997', 'PL003', '9781234567888', 'xiv, 200 halaman', '-', '001.23 KAT', 'S000', 'DL001', 'Deskripsi singkat tentang buku ini.', 'https://res.cloudinary.com/dte3lbaid/image/upload/v1710423942/tutorial/24-03-14_134537_download.png', 1, 'L001', 10, '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
('BD002', 'The Psychology of Money', 'A002', 'a', 'a', 'a', 'GMD001', 'CT001', 'MT001', 'CAT001', 'P001', '2024', 'PL001', '1234567890123', '1', '1', '1', 'S000', 'DL001', '1', 'https://res.cloudinary.com/dte3lbaid/image/upload/v1710927129/tutorial/24-03-20_093206_Class_Diagram.png', 1, 'L001', 10, '2024-03-20 02:32:11', '2024-03-27 01:06:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_detail_statuses`
--

CREATE TABLE `book_detail_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isbn_issn` varchar(255) NOT NULL,
  `item_statuses_id` varchar(255) NOT NULL,
  `books_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_detail_statuses`
--

INSERT INTO `book_detail_statuses` (`id`, `isbn_issn`, `item_statuses_id`, `books_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '9781234567888001', 'IS002', 'BD001', '2024-03-13 23:45:44', '2024-03-14 01:45:35', NULL),
(2, '9781234567888002', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-21 18:45:59', NULL),
(3, '9781234567888003', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(4, '9781234567888004', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(5, '9781234567888005', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(6, '9781234567888006', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(7, '9781234567888007', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(8, '9781234567888008', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(9, '9781234567888009', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(10, '9781234567888010', 'IS001', 'BD001', '2024-03-13 23:45:44', '2024-03-13 23:45:44', NULL),
(11, '1234567890123001', 'IS002', 'BD002', '2024-03-20 02:32:11', '2024-03-27 00:58:56', NULL),
(12, '1234567890123002', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(13, '1234567890123003', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(14, '1234567890123004', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(15, '1234567890123005', 'IS002', 'BD002', '2024-03-20 02:32:11', '2024-03-26 23:24:13', NULL),
(16, '1234567890123006', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(17, '1234567890123007', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(18, '1234567890123008', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(19, '1234567890123009', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL),
(20, '1234567890123010', 'IS001', 'BD002', '2024-03-20 02:32:11', '2024-03-20 02:32:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `id` varchar(255) NOT NULL,
  `members_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`id`, `members_id`, `created_at`, `updated_at`) VALUES
('BR001', 'M001', '2024-03-18 18:49:23', '2024-03-18 18:49:23'),
('BR002', 'M001', '2024-03-18 18:55:49', '2024-03-18 18:55:49'),
('BR003', 'M001', '2024-03-26 23:24:13', '2024-03-26 23:24:13'),
('BR004', 'M001', '2024-03-27 00:58:56', '2024-03-27 00:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_details`
--

CREATE TABLE `borrowing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrowings_id` varchar(255) NOT NULL,
  `book_detail_statuses_id` bigint(20) UNSIGNED NOT NULL,
  `loan_date` date NOT NULL,
  `returned_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `mulct` varchar(255) DEFAULT NULL,
  `approval` tinyint(1) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrowing_details`
--

INSERT INTO `borrowing_details` (`id`, `borrowings_id`, `book_detail_statuses_id`, `loan_date`, `returned_date`, `due_date`, `mulct`, `approval`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BR001', 1, '2024-03-19', NULL, '2024-04-15', NULL, 0, 'dipinjam', '2024-03-18 18:49:23', '2024-03-26 23:14:35', NULL),
(2, 'BR002', 2, '2024-03-19', '2024-03-22', '2024-03-20', '2000', NULL, 'dikembalikan', '2024-03-18 18:55:49', '2024-03-21 18:45:59', NULL),
(3, 'BR003', 15, '2024-03-27', NULL, '2024-04-12', NULL, 1, 'dipinjam', '2024-03-26 23:24:13', '2024-03-27 00:38:15', NULL),
(4, 'BR004', 11, '2024-03-27', NULL, '2024-03-29', NULL, NULL, 'dipinjam', '2024-03-27 00:58:56', '2024-03-27 00:58:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carrier_types`
--

CREATE TABLE `carrier_types` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(5) NOT NULL,
  `mrac` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrier_types`
--

INSERT INTO `carrier_types` (`id`, `name`, `code`, `mrac`, `created_at`, `updated_at`) VALUES
('CAT001', 'aperature card', 'ha', 'ha', '2024-02-11 14:11:35', '2024-02-11 14:11:35'),
('CAT002', 'audio cylinder', 'se', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT003', 'audio disc', 'sd', 'd', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT004', 'sound track reel', 'si', 'i', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT005', 'audio roll', 'sq', 'q', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT006', 'audiocassette', 'ss', 's', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT007', 'audiotape reel', 'st', 't', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT008', 'other (audio)', 'sz', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT009', 'computer card', 'ck', 'k', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT010', 'computer chip cartridge', 'cb', 'b', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT011', 'computer disc', 'cd', 'd', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT012', 'computer disc cartridge', 'ce', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT013', 'computer tape cartridge', 'ca', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT014', 'computer tape cassette', 'cf', 'f', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT015', 'computer tape reel', 'ch', 'h', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT016', 'online resource', 'cr', 'r', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT017', 'other (computer)', 'cz', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT018', 'aperture card', 'ha', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT019', 'microfiche', 'he', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT020', 'microfiche cassette', 'hf', 'f', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT021', 'microfilm cartridge', 'hb', 'b', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT022', 'microfilm cassette', 'hc', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT023', 'microfilm reel', 'hd', 'd', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT024', 'microfilm roll', 'hj', 'j', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT025', 'microfilm slip', 'hh', 'h', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT026', 'microopaque', 'hg', 'g', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT027', 'other (microform)', 'hz', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT028', 'microscope slide', 'pp', 'p', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT029', 'other (microscope)', 'pz', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT030', 'film cartridge', 'mc', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT031', 'film cassette', 'mf', 'f', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT032', 'film reel', 'mr', 'r', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT033', 'film roll', 'mo', 'o', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT034', 'filmslip', 'gd', 'd', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT035', 'filmstrip', 'gf', 'f', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT036', 'filmstrip cartridge', 'gc', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT037', 'overhead transparency', 'gt', 't', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT038', 'slide', 'gs', 's', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT039', 'other (projected image)', 'mz', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT040', 'stereograph card', 'eh', 'h', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT041', 'stereograph disc', 'es', 's', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT042', 'other (stereographic)', 'ez', 'z', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT043', 'card', 'no', 'o', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT044', 'flipchart', 'nn', 'n', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT045', 'roll', 'na', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT046', 'sheet', 'nb', 'b', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT047', 'volume', 'nc', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT048', 'object', 'nr', 'r', '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT049', 'other (unmediated)', 'nz', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT050', 'video cartridge', 'vc', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT051', 'videocassette', 'vf', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT052', 'videodisc', 'vd', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT053', 'videotape reel', 'vr', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT054', 'other (video)', 'vz', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46'),
('CAT055', 'unspecified', 'zu', 'u', '2024-02-07 17:27:46', '2024-02-07 17:27:46');

-- --------------------------------------------------------

--
-- Table structure for table `collection_types`
--

CREATE TABLE `collection_types` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_types`
--

INSERT INTO `collection_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
('COT001', 'Reference', '2024-02-11 22:06:54', '2024-02-11 22:06:54'),
('COT002', 'Textbook', '2024-02-11 22:06:59', '2024-02-11 22:06:59'),
('COT003', 'Fiction', '2024-02-11 22:07:03', '2024-02-11 22:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `config_rfids`
--

CREATE TABLE `config_rfids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_rfids`
--

INSERT INTO `config_rfids` (`id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'http://192.168.1.100/', NULL, '2024-03-21 18:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(5) NOT NULL,
  `mrac` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `name`, `code`, `mrac`, `created_at`, `updated_at`, `deleted_at`) VALUES
('CT001', 'cartographic dataset', 'crd', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT002', 'cartographic image', 'cri', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT003', 'cartographic moving image', 'crm', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT004', 'cartographic tactile image', 'crt', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT005', 'cartographic tactile three-dimensional form', 'crn', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT006', 'cartographic three-dimensional form', 'crf', 'e', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT007', 'computer dataset', 'cod', 'm', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT008', 'computer program', 'cop', 'm', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT009', 'notated movement', 'ntv', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT010', 'notated music', 'ntm', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT011', 'performed music', 'prm', 'j', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT012', 'sounds', 'snd', 'i', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT013', 'spoken word', 'spw', 'i', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT014', 'still image', 'sti', 'k', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT015', 'tactile image', 'tci', 'k', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT016', 'tactile notated music', 'tcm', 'c', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT017', 'tactile notated movement', 'tcn', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT018', 'tactile text', 'tct', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT019', 'tactile three-dimensional form', 'tcf', 'r', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT020', 'text', 'txt', 'a', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT021', 'three-dimensional form', 'tdf', 'r', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT022', 'three-dimensional moving image', 'tdm', 'g', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT023', 'two-dimensional moving image', 'tdi', 'g', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT024', 'other', 'xxx', 'o', '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL),
('CT025', 'unspecified', 'zzz', NULL, '2024-02-07 17:27:46', '2024-02-07 17:27:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doc_languages`
--

CREATE TABLE `doc_languages` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doc_languages`
--

INSERT INTO `doc_languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
('DL001', 'Indonesia', '2024-02-11 22:07:35', '2024-02-11 22:07:35'),
('DL002', 'English', '2024-02-11 22:07:47', '2024-02-11 22:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `gmds`
--

CREATE TABLE `gmds` (
  `id` varchar(255) NOT NULL,
  `code` char(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmds`
--

INSERT INTO `gmds` (`id`, `code`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('GMD001', 'TE', 'Text', '2024-02-07 17:00:00', '2024-02-19 19:22:42', NULL),
('GMD002', 'AR', 'Art Original', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD003', 'CH', 'Chart', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD004', 'CO', 'Computer Software', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD005', 'DI', 'Diorama', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD006', 'FI', 'Filmstrip', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD007', 'FL', 'Flash Card', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD008', 'GA', 'Game', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD009', 'GL', 'Globe', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD010', 'KI', 'Kit', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD011', 'MA', 'Map', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD012', 'MI', 'Microform', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD013', 'MN', 'Manuscript', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD014', 'MO', 'Model', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD015', 'MP', 'Motion Picture', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD016', 'MS', 'Microscope Slide', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD017', 'MU', 'Music', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD018', 'PI', 'Picture', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD019', 'RE', 'Realia', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD020', 'SL', 'Slide', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD021', 'SO', 'Sound Recording', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD022', 'TD', 'Technical Drawing', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD023', 'TR', 'Transparency', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD024', 'VI', 'Video Recording', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD025', 'EQ', 'Equipment', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD026', 'CF', 'Computer File', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD027', 'CA', 'Cartographic Material', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD028', 'CD', 'CD-ROM', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD029', 'MV', 'Multimedia', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD030', 'ER', 'Electronic Resource', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL),
('GMD031', 'DVD', 'Digital Versatile Disc', '2024-02-07 17:00:00', '2024-02-07 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_statuses`
--

CREATE TABLE `item_statuses` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_statuses`
--

INSERT INTO `item_statuses` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
('IS001', 'Available', 'AV', '2024-02-11 22:06:07', '2024-02-19 01:08:59'),
('IS002', 'No Loan', 'NL', '2024-02-11 22:06:22', '2024-02-11 22:06:22'),
('IS003', 'Missing', 'MIS', '2024-02-11 22:06:29', '2024-02-11 22:06:29'),
('IS004', 'Repair', 'R', '2024-02-19 00:52:16', '2024-02-19 01:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `created_at`, `updated_at`) VALUES
('L001', 'New Title', '2024-02-11 22:08:17', '2024-02-11 22:08:17'),
('L002', 'Favorite Title', '2024-02-11 22:08:25', '2024-02-11 22:08:25'),
('L003', 'Multimedia', '2024-02-11 22:08:31', '2024-02-11 22:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_types`
--

CREATE TABLE `media_types` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(5) NOT NULL,
  `mrac` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_types`
--

INSERT INTO `media_types` (`id`, `name`, `code`, `mrac`, `created_at`, `updated_at`, `deleted_at`) VALUES
('MT001', 'audio', 's', 's', '2024-02-11 20:51:34', '2024-02-11 20:51:34', NULL),
('MT002', 'computer', 'c', 'c', '2024-02-11 20:51:47', '2024-02-11 20:51:47', NULL),
('MT003', 'microform', 'h', 'h', '2024-02-11 20:51:57', '2024-02-11 20:51:57', NULL),
('MT004', 'microscopic', 'p', NULL, '2024-02-11 20:53:09', '2024-02-11 21:46:04', NULL),
('MT005', 'projected', 'g', 'g', '2024-02-11 21:46:18', '2024-02-11 21:46:18', NULL),
('MT006', 'stereographic', 'e', NULL, '2024-02-11 21:46:32', '2024-02-11 21:46:32', NULL),
('MT007', 'unmediated', 'n', 't', '2024-02-11 21:46:51', '2024-02-11 21:46:51', NULL),
('MT008', 'video', 'v', 'v', '2024-02-11 21:47:02', '2024-02-11 21:47:02', NULL),
('MT009', 'other', 'x', 'y', '2024-02-11 21:47:15', '2024-02-11 21:47:15', NULL),
('MT010', 'unspecified', 'z', 'z', '2024-02-11 21:47:25', '2024-02-11 21:47:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `class` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `portal_code` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `notes` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `nis`, `rfid`, `gender`, `place_of_birth`, `date_of_birth`, `class`, `address`, `portal_code`, `file`, `notes`, `status`, `users_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('M001', 'Pendi', '2020131034', '13b869c8', 'L', 'Palembang', '2001-03-14', '6', 'Kintamani', '29444', 'https://res.cloudinary.com/dte3lbaid/image/upload/v1710424126/tutorial/24-03-14_134845_download.png', '08982200998', 1, 3, '2024-03-13 23:48:47', '2024-03-13 23:48:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `route_name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', NULL, NULL),
(2, 'Master', 'master', NULL, NULL),
(3, 'Book', 'book', NULL, NULL),
(4, 'Member', 'member', NULL, NULL),
(5, 'Transaction', 'transaction', NULL, NULL),
(6, 'Report', 'report', NULL, NULL),
(7, 'Settings', 'setting', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_07_15_021819_create_banners_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `name`, `created_at`, `updated_at`) VALUES
('PL001', 'Hoboken, NJ', '2024-02-11 22:04:16', '2024-02-11 22:04:16'),
('PL002', 'Sebastopol, CA', '2024-02-11 22:04:22', '2024-02-11 22:04:22'),
('PL003', 'Indianapolis', '2024-02-11 22:04:27', '2024-02-11 22:04:27'),
('PL004', 'Upper Saddle River, NJ', '2024-02-11 22:04:32', '2024-02-11 22:04:32'),
('PL005', 'Westport, Conn.', '2024-02-11 22:04:37', '2024-02-11 22:04:48'),
('PL006', 'London', '2024-02-11 22:04:52', '2024-02-11 22:05:12'),
('PL007', 'Cambridge, Mass', '2024-02-11 22:05:19', '2024-02-11 22:05:19'),
('PL008', 'New York', '2024-02-11 22:05:24', '2024-02-11 22:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `districts` varchar(255) DEFAULT NULL,
  `portal_code` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('P001', 'Wiley', '2024-02-11 21:47:51', '2024-02-11 21:47:51', NULL),
('P002', 'OReilly', '2024-02-11 21:47:55', '2024-02-11 21:47:55', NULL),
('P003', 'Apress', '2024-02-11 21:48:00', '2024-02-11 21:48:00', NULL),
('P004', 'Sams', '2024-02-11 21:48:13', '2024-02-11 21:48:13', NULL),
('P005', 'John Wiley', '2024-02-11 21:48:19', '2024-02-11 21:48:19', NULL),
('P006', 'Prentice Hall', '2024-02-11 21:48:23', '2024-02-11 21:48:23', NULL),
('P007', 'Libraries Unlimited', '2024-02-11 21:48:28', '2024-02-11 21:48:28', NULL),
('P008', 'Taylor & Francis Inc.', '2024-02-11 21:48:41', '2024-02-11 21:48:41', NULL),
('P009', 'Palgrave Macmillan', '2024-02-11 21:48:53', '2024-02-11 21:48:53', NULL),
('P010', 'Crown publishers', '2024-02-11 21:48:59', '2024-02-11 21:48:59', NULL),
('P011', 'Atlantic Monthly Press', '2024-02-11 21:49:05', '2024-02-11 21:49:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('RU001', 'Master Administrator', 1, NULL, NULL, NULL),
('RU002', 'Administrator', 1, NULL, NULL, NULL),
('RU003', 'Member', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classification_code` char(255) DEFAULT NULL,
  `subjects_type` char(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `classification_code`, `subjects_type`, `created_at`, `updated_at`) VALUES
('S000', 'Generalities', '000', 'Pengetahuan Umum, Informasi', NULL, NULL),
('S001', 'Knowledge', '001', 'Teori Pengetahuan, Ilmu Informasi', NULL, NULL),
('S002', 'The book', '002', 'Bibliografi, Ilmu Perpustakaan', NULL, NULL),
('S003', 'Systems', '003', 'Teori Sistem, Kibernetika', NULL, NULL),
('S004', 'Computer Science', '004', 'Ilmu Komputer, Pemrograman Komputer', NULL, NULL),
('S005', 'Computer programming', '005', 'Pengembangan Perangkat Lunak, Pemrograman', NULL, NULL),
('S006', 'Special Computer Methods', '006', 'Kecerdasan Buatan, Grafika Komputer', NULL, NULL),
('S007', 'Bibliography', '010', 'Bibliografi, Katalog', NULL, NULL),
('S008', 'Bibliographies', '011', 'Bibliografi Menurut Topik', NULL, NULL),
('S009', 'Encyclopedias', '013', 'Ensiklopedia, Kamus', NULL, NULL),
('S010', 'General Encyclopedic Works', '016', 'Ensiklopedia Umum', NULL, NULL),
('S011', 'Subject-specific Encyclopedias', '017', 'Ensiklopedia Khusus Subjek', NULL, NULL),
('S012', 'Library & Information Sciences', '020', 'Ilmu Perpustakaan, Layanan Informasi', NULL, NULL),
('S013', 'Library Relationships', '021', 'Perpustakaan, Asosiasi', NULL, NULL),
('S014', 'Administration', '022', 'Manajemen Perpustakaan, Administrasi', NULL, NULL),
('S015', 'Personnel Management', '023', 'Staf Perpustakaan, Pelatihan', NULL, NULL),
('S016', 'Library Operations', '025', 'Operasi Perpustakaan, Akuisisi', NULL, NULL),
('S017', 'Libraries for Specific Subjects', '026', 'Perpustakaan Khusus Subjek', NULL, NULL),
('S018', 'General Libraries', '027', 'Perpustakaan Umum', NULL, NULL),
('S019', 'Reading & Use of Other Information Media', '028', 'Keterampilan Membaca, Literasi Informasi', NULL, NULL),
('S021', 'General periodicals', '050', 'Jurnal Umum', NULL, NULL),
('S022', 'Serial publications', '051', 'Publikasi Seri', NULL, NULL),
('S023', 'General organizations & museum', '060', 'Organisasi Umum, Museum', NULL, NULL),
('S024', 'Organizations', '061', 'Organisasi', NULL, NULL),
('S025', 'News media, journalism, publishing', '070', 'Media Berita, Jurnalisme, Penerbitan', NULL, NULL),
('S026', 'Quotations', '080', 'Kutipan', NULL, NULL),
('S027', 'Manuscripts & rare books', '090', 'Naskah dan Buku Langka', NULL, NULL),
('S028', 'Manuscripts', '091', 'Naskah', NULL, NULL),
('S029', 'Block books', '092', 'Buku Blok', NULL, NULL),
('S030', 'Incunabula', '093', 'Inkunabula', NULL, NULL),
('S031', 'Books notable for bindings', '095', 'Buku yang menonjolkan pembalutan', NULL, NULL),
('S032', 'Books notable for illustrations', '096', 'Buku yang menonjolkan ilustrasi', NULL, NULL),
('S033', 'Books notable for ownership or origin', '097', 'Buku yang menonjolkan kepemilikan atau asal', NULL, NULL),
('S034', 'Philosophy', '100', 'Filsafat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `name`, `menu_id`, `route_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GMD', 2, 'gmd', NULL, NULL, NULL),
(2, 'Media Type', 2, 'mediaType', NULL, NULL, NULL),
(3, 'Content Type', 2, 'contentType', NULL, NULL, NULL),
(4, 'Carrier Type', 2, 'carrierType', NULL, NULL, NULL),
(5, 'Publisher', 2, 'publisher', NULL, NULL, NULL),
(6, 'Supplier', 2, 'supplier', NULL, NULL, NULL),
(7, 'Author', 2, 'author', NULL, NULL, NULL),
(8, 'Subject', 2, 'subject', NULL, NULL, NULL),
(9, 'Location', 2, 'location', NULL, NULL, NULL),
(10, 'Place', 2, 'place', NULL, NULL, NULL),
(11, 'Item Status', 2, 'itemStatus', NULL, NULL, NULL),
(12, 'Collation Type', 2, 'collationType', NULL, NULL, NULL),
(13, 'Doc Language', 2, 'docLanguage', NULL, NULL, NULL),
(14, 'Label', 2, 'label', NULL, NULL, NULL),
(15, 'BookDetail', 3, 'bookDetail', NULL, NULL, NULL),
(16, 'Role', 7, 'role', NULL, NULL, NULL),
(17, 'Admin', 7, 'admin', NULL, NULL, NULL),
(18, 'Authorization', 7, 'authorization', NULL, NULL, NULL),
(19, 'Config RFID', 7, 'configRfid', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `portal_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phone_number`, `portal_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
('S001', 'Gramedia Batam', 'BCS Mall, Jl. Bunga Raya Lantai 1, Batu Selicin, Lubuk Baja, Batam City, Riau Islands 29444', '082385705769', '29444', '2024-02-11 22:09:39', '2024-02-11 22:09:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Master Administrator', 'pendicai3@gmail.com', NULL, '$2y$10$Lj5blx6dKjGc3.3dGiScTeF3O4HjPKKx13LI4Xb9rK8QCv2jdWilK', 'RU001', NULL, NULL, NULL, NULL),
(2, 'Administrator', 'pendicai0@gmail.com', NULL, '$2y$10$pR6lxWuxBJxe.l8Ukh5ro.mjHcEhPCo57cXWhbXFV6FEyxk0c7Nka', 'RU002', NULL, NULL, NULL, NULL),
(3, 'Pendi', 'pendi@gmail.com', NULL, '$2y$10$SwEPF/U2QAKbWboRk6kxd.s0Au.zZgWaDhJf0eTp5CyYeQMuCIo3u', 'RU003', NULL, NULL, '2024-03-21 00:18:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authorizations_role_id_foreign` (`role_id`),
  ADD KEY `authorizations_menu_id_foreign` (`menu_id`),
  ADD KEY `authorizations_sub_menu_id_foreign` (`sub_menu_id`),
  ADD KEY `authorizations_authorization_type_id_foreign` (`authorization_type_id`);

--
-- Indexes for table `authorization_types`
--
ALTER TABLE `authorization_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_authors_id_foreign` (`authors_id`),
  ADD KEY `books_gmds_id_foreign` (`gmds_id`),
  ADD KEY `books_content_types_id_foreign` (`content_types_id`),
  ADD KEY `books_media_types_id_foreign` (`media_types_id`),
  ADD KEY `books_carrier_types_id_foreign` (`carrier_types_id`),
  ADD KEY `books_publishers_id_foreign` (`publishers_id`),
  ADD KEY `books_places_id_foreign` (`places_id`),
  ADD KEY `books_subjects_id_foreign` (`subjects_id`),
  ADD KEY `books_doc_languages_id_foreign` (`doc_languages_id`),
  ADD KEY `books_labels_id_foreign` (`labels_id`);

--
-- Indexes for table `book_detail_statuses`
--
ALTER TABLE `book_detail_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_detail_statuses_books_id_foreign` (`books_id`),
  ADD KEY `book_detail_statuses_item_statuses_id_foreign` (`item_statuses_id`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowings_members_id_foreign` (`members_id`);

--
-- Indexes for table `borrowing_details`
--
ALTER TABLE `borrowing_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrowing_details_borrowings_id_foreign` (`borrowings_id`),
  ADD KEY `borrowing_details_book_detail_statuses_id_foreign` (`book_detail_statuses_id`);

--
-- Indexes for table `carrier_types`
--
ALTER TABLE `carrier_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_types`
--
ALTER TABLE `collection_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_rfids`
--
ALTER TABLE `config_rfids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_languages`
--
ALTER TABLE `doc_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmds`
--
ALTER TABLE `gmds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_statuses`
--
ALTER TABLE `item_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_types`
--
ALTER TABLE `media_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_users_id_foreign` (`users_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_menus_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorizations`
--
ALTER TABLE `authorizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `authorization_types`
--
ALTER TABLE `authorization_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_detail_statuses`
--
ALTER TABLE `book_detail_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `borrowing_details`
--
ALTER TABLE `borrowing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `config_rfids`
--
ALTER TABLE `config_rfids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD CONSTRAINT `authorizations_authorization_type_id_foreign` FOREIGN KEY (`authorization_type_id`) REFERENCES `authorization_types` (`id`),
  ADD CONSTRAINT `authorizations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  ADD CONSTRAINT `authorizations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `authorizations_sub_menu_id_foreign` FOREIGN KEY (`sub_menu_id`) REFERENCES `sub_menus` (`id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_authors_id_foreign` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_carrier_types_id_foreign` FOREIGN KEY (`carrier_types_id`) REFERENCES `carrier_types` (`id`),
  ADD CONSTRAINT `books_content_types_id_foreign` FOREIGN KEY (`content_types_id`) REFERENCES `content_types` (`id`),
  ADD CONSTRAINT `books_doc_languages_id_foreign` FOREIGN KEY (`doc_languages_id`) REFERENCES `doc_languages` (`id`),
  ADD CONSTRAINT `books_gmds_id_foreign` FOREIGN KEY (`gmds_id`) REFERENCES `gmds` (`id`),
  ADD CONSTRAINT `books_labels_id_foreign` FOREIGN KEY (`labels_id`) REFERENCES `labels` (`id`),
  ADD CONSTRAINT `books_media_types_id_foreign` FOREIGN KEY (`media_types_id`) REFERENCES `media_types` (`id`),
  ADD CONSTRAINT `books_places_id_foreign` FOREIGN KEY (`places_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `books_publishers_id_foreign` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`),
  ADD CONSTRAINT `books_subjects_id_foreign` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `book_detail_statuses`
--
ALTER TABLE `book_detail_statuses`
  ADD CONSTRAINT `book_detail_statuses_books_id_foreign` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_detail_statuses_item_statuses_id_foreign` FOREIGN KEY (`item_statuses_id`) REFERENCES `item_statuses` (`id`);

--
-- Constraints for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD CONSTRAINT `borrowings_members_id_foreign` FOREIGN KEY (`members_id`) REFERENCES `members` (`id`);

--
-- Constraints for table `borrowing_details`
--
ALTER TABLE `borrowing_details`
  ADD CONSTRAINT `borrowing_details_book_detail_statuses_id_foreign` FOREIGN KEY (`book_detail_statuses_id`) REFERENCES `book_detail_statuses` (`id`),
  ADD CONSTRAINT `borrowing_details_borrowings_id_foreign` FOREIGN KEY (`borrowings_id`) REFERENCES `borrowings` (`id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD CONSTRAINT `sub_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
