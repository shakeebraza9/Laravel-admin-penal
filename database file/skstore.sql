-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 09:21 PM
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
-- Database: `skstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2024-02-16 07:49:17', '2024-02-16 07:49:17'),
(2, 'Color', '2024-02-16 07:49:31', '2024-02-16 07:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `is_enable`, `sort`) VALUES
(1, 'logo-text1', 'logo-text1', 'assets/images/logo/brandlogo1.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(2, 'logo-text2', 'logo-text2', 'assets/images/logo/brandlogo2.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(3, 'logo-text3', 'logo-text3', 'assets/images/logo/brandlogo3.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(4, 'logo-text4', 'logo-text4', 'assets/images/logo/brandlogo4.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(5, 'logo-text5', 'logo-text5', 'assets/images/logo/brandlogo5.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(6, 'logo-text6', 'logo-text6', 'assets/images/logo/brandlogo6.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(7, 'logo-text7', 'logo-text7', 'assets/images/logo/brandlogo3.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(8, 'logo-text8', 'logo-text8', 'assets/images/logo/brandlogo2.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL),
(9, 'logo-text9', 'logo-text9', 'assets/images/logo/brandlogo1.png', NULL, NULL, NULL, '2024-02-15 10:56:59', '2024-02-15 10:56:59', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `is_featured` int(11) DEFAULT 0,
  `sort` int(11) DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `details`, `image_id`, `parent_id`, `level`, `is_featured`, `sort`, `is_enable`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(34, 'default', 'default', NULL, '28', NULL, 1, 0, 0, 0, NULL, NULL, NULL, '2024-03-01 03:48:21', '2024-03-27 09:53:44'),
(45, 'waistcoat', 'waistcoat', NULL, '70', 48, 1, 0, 0, 1, NULL, NULL, NULL, '2024-03-03 12:35:38', '2024-03-27 09:53:44'),
(46, 'Kids Sheos', 'kids-sheos', NULL, '78', 64, 1, 1, 0, 1, NULL, NULL, NULL, '2024-03-04 03:56:31', '2024-03-27 09:53:44'),
(47, 'Baby Baba', 'baby-baba', NULL, '150', 64, 1, 1, 1, 1, NULL, NULL, NULL, '2024-03-05 05:57:49', '2024-03-27 09:53:44'),
(48, 'Man\'s', 'man-s', NULL, '241', NULL, 1, 1, 1, 1, NULL, NULL, NULL, '2024-03-05 05:58:18', '2024-03-27 09:53:44'),
(49, 'Woman', 'woman', NULL, '141', NULL, 1, 1, 2, 1, NULL, NULL, NULL, '2024-03-05 05:58:38', '2024-03-27 09:53:44'),
(50, 'Man\'s Accessories', 'man-s-accessories', NULL, '224', 48, 2, 1, 1, 1, NULL, NULL, NULL, '2024-03-05 06:00:26', '2024-03-27 09:53:44'),
(51, 'Woman\'s Accessories', 'woman-s-accessories', NULL, '195', 49, 2, 1, 0, 1, NULL, NULL, NULL, '2024-03-05 06:01:21', '2024-03-27 09:53:44'),
(52, 'Ledis Kurti', 'ledis-kurti', NULL, '151', 49, 2, 1, 1, 1, NULL, NULL, NULL, '2024-03-05 06:09:54', '2024-03-27 09:53:44'),
(53, 'Sherwani', 'sherwani', NULL, '149', 48, 2, 1, 2, 1, NULL, NULL, NULL, '2024-03-05 06:10:43', '2024-03-27 09:53:44'),
(55, 'Bridal', 'bridal', NULL, '205', 49, 2, 0, 2, 1, NULL, NULL, NULL, '2024-03-05 06:17:04', '2024-03-27 09:53:44'),
(56, 'Kids Wears', 'kids-wears-', NULL, '150', 64, 2, 1, 2, 1, NULL, NULL, NULL, '2024-03-06 02:31:48', '2024-03-27 09:53:44'),
(57, 'Pant Coat', 'pant-coat', NULL, '130', 48, 2, 0, 3, 1, NULL, NULL, NULL, '2024-03-07 02:02:08', '2024-03-27 09:53:44'),
(58, 'Sandal', 'sandal', NULL, NULL, 51, 1, 0, 0, 1, NULL, NULL, NULL, '2024-03-07 02:52:06', '2024-03-27 09:53:44'),
(60, 'Kameez Salwar', 'kameez-salwar', NULL, '67', 48, 2, 0, 4, 1, NULL, NULL, NULL, '2024-03-07 04:46:47', '2024-03-27 09:53:44'),
(61, 'Ready To Wear', 'ready-to-wear', NULL, '201', 49, 2, 0, 3, 1, NULL, NULL, NULL, '2024-03-07 12:12:17', '2024-03-27 09:53:44'),
(62, 'Unstitched Suit', 'unstitched-suit', NULL, '165', 49, 2, 0, 4, 1, NULL, NULL, NULL, '2024-03-07 12:13:39', '2024-03-27 09:53:44'),
(63, 'hand work Embroidery (Unstitched)', 'hand-work-embroidery-unstitched-', NULL, '200', 49, 2, 0, 5, 1, NULL, NULL, NULL, '2024-03-08 01:07:16', '2024-03-27 09:53:44'),
(64, 'Kid\'s', 'kid-s', NULL, '56', NULL, 1, 1, 3, 1, NULL, NULL, NULL, '2024-03-11 05:49:15', '2024-03-27 09:53:44'),
(65, 'Pant Shirts', 'pant-shirts', NULL, '216', 48, 2, 1, 5, 1, NULL, NULL, NULL, '2024-03-16 13:49:03', '2024-03-27 09:53:44'),
(66, 'Pents', 'pents', NULL, '264', 48, 2, 1, 7, 1, NULL, NULL, NULL, '2024-03-26 14:23:48', '2024-03-27 09:53:44'),
(67, 'Shirt\'s', 'shirt-s', NULL, '255', 48, 1, 0, 6, 1, NULL, NULL, NULL, '2024-03-27 09:22:45', '2024-03-27 09:53:44'),
(68, 'Sets Suits', 'sets-suits', 'KIDS Sets Suits', '285', 64, 2, 1, 55, 1, 'KIDS Sets Suits', 'KIDS Sets Suits', 'KIDS Sets Suits', '2024-04-01 10:15:39', '2024-04-01 10:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `is_featured` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `details`, `sort`, `image_id`, `meta_title`, `meta_description`, `meta_keywords`, `is_enable`, `is_featured`, `created_at`, `updated_at`) VALUES
(8, 'Waistcoat', 'waistcoat', NULL, 2, '135', 'Meta Title', 'Meta Description', 'keyword1,keyword2,keyword3', 1, 0, '2024-01-19 17:20:18', '2024-03-08 07:03:07'),
(10, 'Baby', 'Baby', NULL, 1, '143', 'Meta Title', 'Meta Description', 'keyword1', 1, 0, '2024-01-19 17:17:53', '2024-03-09 04:07:06'),
(13, 'Kid’s Joggers', 'kid-s-joggers', 'For KIds', 5, '142', NULL, NULL, NULL, 1, 1, '2024-03-03 22:27:41', '2024-03-08 05:26:52'),
(14, 'Girls Kurti', 'girls-kurti', NULL, 7, '145', NULL, NULL, NULL, 1, 1, '2024-03-08 05:12:35', '2024-03-08 07:20:14'),
(15, 'Sherwani', 'sherwani', NULL, 66, '144', NULL, NULL, NULL, 1, 1, '2024-03-08 06:37:18', '2024-03-08 06:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `preview` text DEFAULT NULL,
  `size` double DEFAULT NULL,
  `extension` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `grouping` text NOT NULL DEFAULT 'others'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `title`, `description`, `filename`, `preview`, `size`, `extension`, `type`, `path`, `created_by`, `created_at`, `is_enable`, `updated_at`, `grouping`) VALUES
(19, 'home7-collection1', NULL, '1708786043.jpg', 'http://localhost/admin/public/filemanager/1708786043.jpg', 34800, 'jpg', 'image/jpeg', 'filemanager/1708786043.jpg', NULL, '2024-02-24 09:47:23', 1, '2024-02-24 09:47:23', 'others'),
(27, '1708953342.jpg', NULL, '1708953342.jpg', 'http://localhost/admin/public/filemanager/1708953342.jpg', 87553, 'jpg', 'image/jpeg', 'filemanager/1708953342.jpg', NULL, '2024-02-26 08:15:42', 1, '2024-03-21 20:16:33', 'Shirt'),
(28, '1708953401.jpg', NULL, '1708953401.jpg', 'http://localhost/admin/public/filemanager/1708953401.jpg', 77454, 'jpg', 'image/jpeg', 'filemanager/1708953401.jpg', NULL, '2024-02-26 08:16:41', 1, '2024-02-26 08:16:41', 'others'),
(29, '1708953417.jpg', NULL, '1708953417.jpg', 'http://localhost/admin/public/filemanager/1708953417.jpg', 109986, 'jpg', 'image/jpeg', 'filemanager/1708953417.jpg', NULL, '2024-02-26 08:16:57', 1, '2024-02-26 08:16:57', 'others'),
(31, '1708953460.jpg', NULL, '1708953460.jpg', 'http://localhost/admin/public/filemanager/1708953460.jpg', 81486, 'jpg', 'image/jpeg', 'filemanager/1708953460.jpg', NULL, '2024-02-26 08:17:40', 1, '2024-02-26 08:17:40', 'others'),
(46, '65e450ed1e78d.jpeg', NULL, '65e450ed1e78d.jpeg', 'http://localhost/admin/public/filemanager/65e450ed1e78d.jpeg', 183359, 'jpeg', 'image/jpeg', 'filemanager/65e450ed1e78d.jpeg', NULL, '2024-03-03 05:29:01', 1, '2024-03-03 05:29:01', 'others'),
(48, '65e466a71bba6.jpg', NULL, '65e466a71bba6.jpg', 'http://localhost/admin/public/filemanager/65e466a71bba6.jpg', 19105, 'jpg', 'image/jpeg', 'filemanager/65e466a71bba6.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(49, '65e466a720b04.jpg', NULL, '65e466a720b04.jpg', 'http://localhost/admin/public/filemanager/65e466a720b04.jpg', 31058, 'jpg', 'image/jpeg', 'filemanager/65e466a720b04.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(50, '65e466a724887.jpg', NULL, '65e466a724887.jpg', 'http://localhost/admin/public/filemanager/65e466a724887.jpg', 28941, 'jpg', 'image/jpeg', 'filemanager/65e466a724887.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(52, '65e466a72ef00.jpg', NULL, '65e466a72ef00.jpg', 'http://localhost/admin/public/filemanager/65e466a72ef00.jpg', 26322, 'jpg', 'image/jpeg', 'filemanager/65e466a72ef00.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(53, '65e466a7354ba.jpg', NULL, '65e466a7354ba.jpg', 'http://localhost/admin/public/filemanager/65e466a7354ba.jpg', 17694, 'jpg', 'image/jpeg', 'filemanager/65e466a7354ba.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(54, '65e466a739365.jpg', NULL, '65e466a739365.jpg', 'http://localhost/admin/public/filemanager/65e466a739365.jpg', 38497, 'jpg', 'image/jpeg', 'filemanager/65e466a739365.jpg', NULL, '2024-03-03 07:01:43', 1, '2024-03-03 07:01:43', 'others'),
(55, '65e467187c030.jpg', NULL, '65e467187c030.jpg', 'http://localhost/admin/public/filemanager/65e467187c030.jpg', 26606, 'jpg', 'image/jpeg', 'filemanager/65e467187c030.jpg', NULL, '2024-03-03 07:03:36', 1, '2024-03-03 07:03:36', 'others'),
(56, '65e4674500998.jpg', NULL, '65e4674500998.jpg', 'http://localhost/admin/public/filemanager/65e4674500998.jpg', 44929, 'jpg', 'image/jpeg', 'filemanager/65e4674500998.jpg', NULL, '2024-03-03 07:04:21', 1, '2024-03-03 07:04:21', 'others'),
(57, '65e48a4f589e6.jpg', NULL, '65e48a4f589e6.jpg', 'http://localhost/admin/public/filemanager/65e48a4f589e6.jpg', 306598, 'jpg', 'image/jpeg', 'filemanager/65e48a4f589e6.jpg', NULL, '2024-03-03 09:33:51', 1, '2024-03-03 09:33:51', 'others'),
(58, '65e491da1e9fb.jpg', NULL, '65e491da1e9fb.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e491da1e9fb.jpg', 129477, 'jpg', 'image/jpeg', 'filemanager/65e491da1e9fb.jpg', NULL, '2024-03-03 10:06:02', 1, '2024-03-03 10:06:02', 'others'),
(59, '65e4925f93e68.jpg', NULL, '65e4925f93e68.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e4925f93e68.jpg', 34969, 'jpg', 'image/jpeg', 'filemanager/65e4925f93e68.jpg', NULL, '2024-03-03 10:08:15', 1, '2024-03-03 10:08:15', 'others'),
(60, '65e498b6d8d70.jpeg', NULL, '65e498b6d8d70.jpeg', 'https://irhawears.azamsolutions.com/public/filemanager/65e498b6d8d70.jpeg', 331508, 'jpeg', 'image/jpeg', 'filemanager/65e498b6d8d70.jpeg', NULL, '2024-03-03 10:35:18', 1, '2024-03-03 10:35:18', 'others'),
(61, '65e49c258ea2f.jpeg', NULL, '65e49c258ea2f.jpeg', 'https://irhawears.azamsolutions.com/public/filemanager/65e49c258ea2f.jpeg', 276981, 'jpeg', 'image/jpeg', 'filemanager/65e49c258ea2f.jpeg', NULL, '2024-03-03 10:49:57', 1, '2024-03-03 10:49:57', 'others'),
(62, 'WhatsApp Image 2024-02-28 at 8.55.15 PM', NULL, '65e49dd514dc8.jpeg', 'https://irhawears.azamsolutions.com/public/filemanager/65e49dd514dc8.jpeg', 305015, 'jpeg', 'image/jpeg', 'filemanager/65e49dd514dc8.jpeg', NULL, '2024-03-03 10:57:09', 1, '2024-03-03 10:57:09', 'others'),
(63, '65e4b38e77f41.png', NULL, '65e4b38e77f41.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4b38e77f41.png', 852567, 'png', 'image/png', 'filemanager/65e4b38e77f41.png', NULL, '2024-03-03 12:29:50', 1, '2024-03-03 12:29:50', 'others'),
(64, '65e4b38e7bb48.png', NULL, '65e4b38e7bb48.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4b38e7bb48.png', 1525710, 'png', 'image/png', 'filemanager/65e4b38e7bb48.png', NULL, '2024-03-03 12:29:50', 1, '2024-03-03 12:29:50', 'others'),
(65, '65e4bce07a5fe.png', NULL, '65e4bce07a5fe.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bce07a5fe.png', 1749125, 'png', 'image/png', 'filemanager/65e4bce07a5fe.png', NULL, '2024-03-03 13:09:36', 1, '2024-03-03 13:09:36', 'others'),
(66, '65e4bce07d6c8.png', NULL, '65e4bce07d6c8.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bce07d6c8.png', 1289925, 'png', 'image/png', 'filemanager/65e4bce07d6c8.png', NULL, '2024-03-03 13:09:36', 1, '2024-03-03 13:09:36', 'others'),
(67, '65e4bce089200.png', NULL, '65e4bce089200.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bce089200.png', 1318067, 'png', 'image/png', 'filemanager/65e4bce089200.png', NULL, '2024-03-03 13:09:36', 1, '2024-03-03 13:09:36', 'others'),
(68, '65e4bec54ce8f.png', NULL, '65e4bec54ce8f.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bec54ce8f.png', 1525710, 'png', 'image/png', 'filemanager/65e4bec54ce8f.png', NULL, '2024-03-03 13:17:41', 1, '2024-03-03 13:17:41', 'others'),
(69, '65e53af860e7a.png', NULL, '65e53af860e7a.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53af860e7a.png', 1057752, 'png', 'image/png', 'filemanager/65e53af860e7a.png', NULL, '2024-03-03 22:07:36', 1, '2024-03-03 22:07:36', 'others'),
(70, '65e53af863204.png', NULL, '65e53af863204.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53af863204.png', 917757, 'png', 'image/png', 'filemanager/65e53af863204.png', NULL, '2024-03-03 22:07:36', 1, '2024-03-03 22:07:36', 'others'),
(71, '65e53c71170f4.png', NULL, '65e53c71170f4.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c71170f4.png', 687384, 'png', 'image/png', 'filemanager/65e53c71170f4.png', NULL, '2024-03-03 22:13:53', 1, '2024-03-03 22:13:53', 'others'),
(72, '65e53c711ab51.png', NULL, '65e53c711ab51.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c711ab51.png', 974811, 'png', 'image/png', 'filemanager/65e53c711ab51.png', NULL, '2024-03-03 22:13:53', 1, '2024-03-03 22:13:53', 'others'),
(73, '65e53c711d378.png', NULL, '65e53c711d378.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c711d378.png', 1551025, 'png', 'image/png', 'filemanager/65e53c711d378.png', NULL, '2024-03-03 22:13:53', 1, '2024-03-03 22:13:53', 'others'),
(74, '65e53c711ffb8.png', NULL, '65e53c711ffb8.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c711ffb8.png', 1369721, 'png', 'image/png', 'filemanager/65e53c711ffb8.png', NULL, '2024-03-03 22:13:53', 1, '2024-03-03 22:13:53', 'others'),
(75, '65e54133b130f.png', NULL, '65e54133b130f.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e54133b130f.png', 1417875, 'png', 'image/png', 'filemanager/65e54133b130f.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(76, '65e5413492486.png', NULL, '65e5413492486.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5413492486.png', 1066082, 'png', 'image/png', 'filemanager/65e5413492486.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(77, '65e54134942d9.png', NULL, '65e54134942d9.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e54134942d9.png', 876480, 'png', 'image/png', 'filemanager/65e54134942d9.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(78, '65e541349612e.png', NULL, '65e541349612e.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e541349612e.png', 1067044, 'png', 'image/png', 'filemanager/65e541349612e.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(79, '65e541349849d.png', NULL, '65e541349849d.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e541349849d.png', 1186928, 'png', 'image/png', 'filemanager/65e541349849d.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(80, '65e541349a394.png', NULL, '65e541349a394.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e541349a394.png', 1193100, 'png', 'image/png', 'filemanager/65e541349a394.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(81, '65e541349c32b.png', NULL, '65e541349c32b.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e541349c32b.png', 1188846, 'png', 'image/png', 'filemanager/65e541349c32b.png', NULL, '2024-03-03 22:34:12', 1, '2024-03-03 22:34:12', 'others'),
(82, '65e5876231c46.png', NULL, '65e5876231c46.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5876231c46.png', 917654, 'png', 'image/png', 'filemanager/65e5876231c46.png', NULL, '2024-03-04 03:33:38', 1, '2024-03-04 03:33:38', 'others'),
(83, '65e5891d961dd.png', NULL, '65e5891d961dd.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5891d961dd.png', 1016268, 'png', 'image/png', 'filemanager/65e5891d961dd.png', NULL, '2024-03-04 03:41:01', 1, '2024-03-04 03:41:01', 'others'),
(84, '65e5891d994a4.png', NULL, '65e5891d994a4.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5891d994a4.png', 1234854, 'png', 'image/png', 'filemanager/65e5891d994a4.png', NULL, '2024-03-04 03:41:01', 1, '2024-03-04 03:41:01', 'others'),
(85, '65e5891e5c49e.png', NULL, '65e5891e5c49e.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5891e5c49e.png', 974631, 'png', 'image/png', 'filemanager/65e5891e5c49e.png', NULL, '2024-03-04 03:41:02', 1, '2024-03-04 03:41:02', 'others'),
(86, '65e5b668ab1e4.png', NULL, '65e5b668ab1e4.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5b668ab1e4.png', 1083971, 'png', 'image/png', 'filemanager/65e5b668ab1e4.png', NULL, '2024-03-04 06:54:16', 1, '2024-03-04 06:54:16', 'others'),
(87, '65e5b668ad743.png', NULL, '65e5b668ad743.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5b668ad743.png', 1190141, 'png', 'image/png', 'filemanager/65e5b668ad743.png', NULL, '2024-03-04 06:54:16', 1, '2024-03-04 06:54:16', 'others'),
(88, '65e5b668afb0d.png', NULL, '65e5b668afb0d.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5b668afb0d.png', 1064586, 'png', 'image/png', 'filemanager/65e5b668afb0d.png', NULL, '2024-03-04 06:54:16', 1, '2024-03-04 06:54:16', 'others'),
(89, '65e5bf07e6acf.png', NULL, '65e5bf07e6acf.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf07e6acf.png', 835487, 'png', 'image/png', 'filemanager/65e5bf07e6acf.png', NULL, '2024-03-04 07:31:04', 1, '2024-03-04 07:31:04', 'others'),
(90, '65e5bf090b889.png', NULL, '65e5bf090b889.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf090b889.png', 1012209, 'png', 'image/png', 'filemanager/65e5bf090b889.png', NULL, '2024-03-04 07:31:05', 1, '2024-03-04 07:31:05', 'others'),
(91, '65e5bf090ff4e.png', NULL, '65e5bf090ff4e.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf090ff4e.png', 812998, 'png', 'image/png', 'filemanager/65e5bf090ff4e.png', NULL, '2024-03-04 07:31:05', 1, '2024-03-04 07:31:05', 'others'),
(92, '65e5bf0915d79.png', NULL, '65e5bf0915d79.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf0915d79.png', 857475, 'png', 'image/png', 'filemanager/65e5bf0915d79.png', NULL, '2024-03-04 07:31:05', 1, '2024-03-04 07:31:05', 'others'),
(93, '65e5bf1d214ca.png', NULL, '65e5bf1d214ca.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf1d214ca.png', 1244188, 'png', 'image/png', 'filemanager/65e5bf1d214ca.png', NULL, '2024-03-04 07:31:25', 1, '2024-03-04 07:31:25', 'others'),
(94, '65e5bf1d2aab8.png', NULL, '65e5bf1d2aab8.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf1d2aab8.png', 1198143, 'png', 'image/png', 'filemanager/65e5bf1d2aab8.png', NULL, '2024-03-04 07:31:25', 1, '2024-03-04 07:31:25', 'others'),
(95, '65e5bf1d3020e.png', NULL, '65e5bf1d3020e.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf1d3020e.png', 1487052, 'png', 'image/png', 'filemanager/65e5bf1d3020e.png', NULL, '2024-03-04 07:31:25', 1, '2024-03-04 07:31:25', 'others'),
(96, '65e5bf2a4f22c.png', NULL, '65e5bf2a4f22c.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf2a4f22c.png', 1194377, 'png', 'image/png', 'filemanager/65e5bf2a4f22c.png', NULL, '2024-03-04 07:31:38', 1, '2024-03-04 07:31:38', 'others'),
(97, '65e5bf2a517ae.png', NULL, '65e5bf2a517ae.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5bf2a517ae.png', 965756, 'png', 'image/png', 'filemanager/65e5bf2a517ae.png', NULL, '2024-03-04 07:31:38', 1, '2024-03-04 07:31:38', 'others'),
(98, '65e5c58a58bb0.png', NULL, '65e5c58a58bb0.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a58bb0.png', 884793, 'png', 'image/png', 'filemanager/65e5c58a58bb0.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(99, '65e5c58a5ad34.png', NULL, '65e5c58a5ad34.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a5ad34.png', 1172122, 'png', 'image/png', 'filemanager/65e5c58a5ad34.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(100, '65e5c58a5cb70.png', NULL, '65e5c58a5cb70.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a5cb70.png', 1249063, 'png', 'image/png', 'filemanager/65e5c58a5cb70.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(101, '65e5c58a7f59a.png', NULL, '65e5c58a7f59a.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a7f59a.png', 1159333, 'png', 'image/png', 'filemanager/65e5c58a7f59a.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(102, '65e5c58a81fa3.png', NULL, '65e5c58a81fa3.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a81fa3.png', 926284, 'png', 'image/png', 'filemanager/65e5c58a81fa3.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(103, '65e5c58a84137.png', NULL, '65e5c58a84137.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e5c58a84137.png', 836245, 'png', 'image/png', 'filemanager/65e5c58a84137.png', NULL, '2024-03-04 07:58:50', 1, '2024-03-04 07:58:50', 'others'),
(104, '65e6d4d67d4d7.png', NULL, '65e6d4d67d4d7.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e6d4d67d4d7.png', 355483, 'png', 'image/png', 'filemanager/65e6d4d67d4d7.png', NULL, '2024-03-05 03:16:22', 1, '2024-03-05 03:16:22', 'others'),
(105, '65e6d4d67f759.png', NULL, '65e6d4d67f759.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e6d4d67f759.png', 366377, 'png', 'image/png', 'filemanager/65e6d4d67f759.png', NULL, '2024-03-05 03:16:22', 1, '2024-03-05 03:16:22', 'others'),
(106, '65e6d4d681999.png', NULL, '65e6d4d681999.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e6d4d681999.png', 376175, 'png', 'image/png', 'filemanager/65e6d4d681999.png', NULL, '2024-03-05 03:16:22', 1, '2024-03-05 03:16:22', 'others'),
(107, '65e6d4d6837da.png', NULL, '65e6d4d6837da.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e6d4d6837da.png', 527684, 'png', 'image/png', 'filemanager/65e6d4d6837da.png', NULL, '2024-03-05 03:16:22', 1, '2024-03-05 03:16:22', 'others'),
(109, '65e6db9b7993a.jpeg', NULL, '65e6db9b7993a.jpeg', 'https://irhawears.azamsolutions.com/public/filemanager/65e6db9b7993a.jpeg', 245071, 'jpeg', 'image/jpeg', 'filemanager/65e6db9b7993a.jpeg', NULL, '2024-03-05 03:45:15', 1, '2024-03-05 03:45:15', 'others'),
(110, '65e6df75694c8.png', NULL, '65e6df75694c8.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e6df75694c8.png', 527684, 'png', 'image/png', 'filemanager/65e6df75694c8.png', NULL, '2024-03-05 04:01:41', 1, '2024-03-05 04:01:41', 'others'),
(111, '65e761ac09b97.png', NULL, '65e761ac09b97.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac09b97.png', 968322, 'png', 'image/png', 'filemanager/65e761ac09b97.png', NULL, '2024-03-05 13:17:16', 1, '2024-03-05 13:17:16', 'others'),
(112, '65e761ac0be64.png', NULL, '65e761ac0be64.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac0be64.png', 993216, 'png', 'image/png', 'filemanager/65e761ac0be64.png', NULL, '2024-03-05 13:17:16', 1, '2024-03-05 13:17:16', 'others'),
(113, '65e761ac0f356.png', NULL, '65e761ac0f356.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac0f356.png', 885755, 'png', 'image/png', 'filemanager/65e761ac0f356.png', NULL, '2024-03-05 13:17:16', 1, '2024-03-05 13:17:16', 'others'),
(114, '65e7817ddd1e8.jpg', NULL, '65e7817ddd1e8.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e7817ddd1e8.jpg', 925210, 'jpg', 'image/jpeg', 'filemanager/65e7817ddd1e8.jpg', NULL, '2024-03-05 15:33:01', 1, '2024-03-05 15:33:01', 'others'),
(121, '65e9511cbcc51.jpg', NULL, '65e9511cbcc51.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9511cbcc51.jpg', 1064904, 'jpg', 'image/jpeg', 'filemanager/65e9511cbcc51.jpg', NULL, '2024-03-07 00:31:08', 1, '2024-03-07 00:31:08', 'others'),
(122, '65e9511cbf14c.jpg', NULL, '65e9511cbf14c.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9511cbf14c.jpg', 750321, 'jpg', 'image/jpeg', 'filemanager/65e9511cbf14c.jpg', NULL, '2024-03-07 00:31:08', 1, '2024-03-07 00:31:08', 'others'),
(124, '65e95578ea153.JPG', NULL, '65e95578ea153.JPG', 'https://irhawears.azamsolutions.com/public/filemanager/65e95578ea153.JPG', 39183, 'JPG', 'image/jpeg', 'filemanager/65e95578ea153.JPG', NULL, '2024-03-07 00:49:44', 1, '2024-03-07 00:49:44', 'others'),
(125, '65e955addc6de.JPG', NULL, '65e955addc6de.JPG', 'https://irhawears.azamsolutions.com/public/filemanager/65e955addc6de.JPG', 35635, 'JPG', 'image/jpeg', 'filemanager/65e955addc6de.JPG', NULL, '2024-03-07 00:50:37', 1, '2024-03-07 00:50:37', 'others'),
(126, '65e955e98018f.JPG', NULL, '65e955e98018f.JPG', 'https://irhawears.azamsolutions.com/public/filemanager/65e955e98018f.JPG', 20564, 'JPG', 'image/jpeg', 'filemanager/65e955e98018f.JPG', NULL, '2024-03-07 00:51:37', 1, '2024-03-07 00:51:37', 'others'),
(128, '65e96489b60da.jpg', NULL, '65e96489b60da.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e96489b60da.jpg', 464906, 'jpg', 'image/jpeg', 'filemanager/65e96489b60da.jpg', NULL, '2024-03-07 01:54:01', 1, '2024-03-07 01:54:01', 'others'),
(129, '65e96489b8362.jpg', NULL, '65e96489b8362.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e96489b8362.jpg', 488179, 'jpg', 'image/jpeg', 'filemanager/65e96489b8362.jpg', NULL, '2024-03-07 01:54:01', 1, '2024-03-07 01:54:01', 'others'),
(130, '65e96ab122e7a.png', NULL, '65e96ab122e7a.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e96ab122e7a.png', 274181, 'png', 'image/png', 'filemanager/65e96ab122e7a.png', NULL, '2024-03-07 02:20:17', 1, '2024-03-07 02:20:17', 'others'),
(131, '65e96ab124fb2.png', NULL, '65e96ab124fb2.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e96ab124fb2.png', 505607, 'png', 'image/png', 'filemanager/65e96ab124fb2.png', NULL, '2024-03-07 02:20:17', 1, '2024-03-07 02:20:17', 'others'),
(132, '65e96ab126fb3.png', NULL, '65e96ab126fb3.png', 'https://irhawears.azamsolutions.com/public/filemanager/65e96ab126fb3.png', 422850, 'png', 'image/png', 'filemanager/65e96ab126fb3.png', NULL, '2024-03-07 02:20:17', 1, '2024-03-07 02:20:17', 'others'),
(134, '65e974425b463.jpg', NULL, '65e974425b463.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e974425b463.jpg', 232615, 'jpg', 'image/jpeg', 'filemanager/65e974425b463.jpg', NULL, '2024-03-07 03:01:06', 1, '2024-03-07 03:01:06', 'others'),
(135, '65e9886a94dc6.jpg', NULL, '65e9886a94dc6.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a94dc6.jpg', 310805, 'jpg', 'image/jpeg', 'filemanager/65e9886a94dc6.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(136, '65e9886a96f58.jpg', NULL, '65e9886a96f58.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a96f58.jpg', 161893, 'jpg', 'image/jpeg', 'filemanager/65e9886a96f58.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(137, '65e9886a98be5.jpg', NULL, '65e9886a98be5.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a98be5.jpg', 266411, 'jpg', 'image/jpeg', 'filemanager/65e9886a98be5.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(138, '65e9886a9a9d9.jpg', NULL, '65e9886a9a9d9.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a9a9d9.jpg', 383663, 'jpg', 'image/jpeg', 'filemanager/65e9886a9a9d9.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(139, '65e9886a9c736.jpg', NULL, '65e9886a9c736.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a9c736.jpg', 401819, 'jpg', 'image/jpeg', 'filemanager/65e9886a9c736.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(140, '65e9886a9e4ee.jpg', NULL, '65e9886a9e4ee.jpg', 'https://irhawears.azamsolutions.com/public/filemanager/65e9886a9e4ee.jpg', 516292, 'jpg', 'image/jpeg', 'filemanager/65e9886a9e4ee.jpg', NULL, '2024-03-07 04:27:06', 1, '2024-03-07 04:27:06', 'others'),
(141, '65eae483e4d64.png', NULL, '65eae483e4d64.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eae483e4d64.png', 662332, 'png', 'image/png', 'filemanager/65eae483e4d64.png', NULL, '2024-03-08 05:12:19', 1, '2024-03-08 05:12:19', 'others'),
(142, '65eae708ee890.png', NULL, '65eae708ee890.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eae708ee890.png', 493569, 'png', 'image/png', 'filemanager/65eae708ee890.png', NULL, '2024-03-08 05:23:04', 1, '2024-03-08 05:23:04', 'others'),
(143, '65eaeaea398e4.png', NULL, '65eaeaea398e4.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eaeaea398e4.png', 215139, 'png', 'image/png', 'filemanager/65eaeaea398e4.png', NULL, '2024-03-08 05:39:38', 1, '2024-03-08 05:39:38', 'others'),
(144, '65eaf86185932.png', NULL, '65eaf86185932.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eaf86185932.png', 816976, 'png', 'image/png', 'filemanager/65eaf86185932.png', NULL, '2024-03-08 06:37:05', 1, '2024-03-08 06:37:05', 'others'),
(145, '65eb024bedb7a.png', NULL, '65eb024bedb7a.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eb024bedb7a.png', 866307, 'png', 'image/png', 'filemanager/65eb024bedb7a.png', NULL, '2024-03-08 07:19:23', 1, '2024-03-08 07:19:23', 'others'),
(146, '65ec0c6a4e1ad.png', NULL, '65ec0c6a4e1ad.png', 'https://irhawears.azamsolutions.com/public/filemanager/65ec0c6a4e1ad.png', 347863, 'png', 'image/png', 'filemanager/65ec0c6a4e1ad.png', NULL, '2024-03-09 02:14:50', 1, '2024-03-09 02:14:50', 'others'),
(147, '65ec24a1384b1.png', NULL, '65ec24a1384b1.png', 'https://irhawears.azamsolutions.com/public/filemanager/65ec24a1384b1.png', 627183, 'png', 'image/png', 'filemanager/65ec24a1384b1.png', NULL, '2024-03-09 03:58:09', 1, '2024-03-09 03:58:09', 'others'),
(148, '65eddbd8283cc.png', NULL, '65eddbd8283cc.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eddbd8283cc.png', 2451, 'png', 'image/png', 'filemanager/65eddbd8283cc.png', NULL, '2024-03-10 11:12:08', 1, '2024-03-10 11:12:08', 'others'),
(149, '65ede56fbe423.png', NULL, '65ede56fbe423.png', 'https://irhawears.azamsolutions.com/public/filemanager/65ede56fbe423.png', 888317, 'png', 'image/png', 'filemanager/65ede56fbe423.png', NULL, '2024-03-10 11:53:03', 1, '2024-03-10 11:53:03', 'others'),
(150, '65eee83758cc5.png', NULL, '65eee83758cc5.png', 'https://irhawears.azamsolutions.com/public/filemanager/65eee83758cc5.png', 459427, 'png', 'image/png', 'filemanager/65eee83758cc5.png', NULL, '2024-03-11 06:17:11', 1, '2024-03-11 06:17:11', 'others'),
(151, '65f00226d9f67.png', NULL, '65f00226d9f67.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f00226d9f67.png', 900877, 'png', 'image/png', 'filemanager/65f00226d9f67.png', NULL, '2024-03-12 02:20:06', 1, '2024-03-12 02:20:06', 'others'),
(152, '65f28f266f0a0.png', NULL, '65f28f266f0a0.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f266f0a0.png', 1697759, 'png', 'image/png', 'filemanager/65f28f266f0a0.png', NULL, '2024-03-14 00:46:14', 1, '2024-03-14 00:46:14', 'others'),
(153, '65f28f684c86c.png', NULL, '65f28f684c86c.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f684c86c.png', 1644495, 'png', 'image/png', 'filemanager/65f28f684c86c.png', NULL, '2024-03-14 00:47:20', 1, '2024-03-14 00:47:20', 'others'),
(154, '65f28f6851bc1.png', NULL, '65f28f6851bc1.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f6851bc1.png', 1022747, 'png', 'image/png', 'filemanager/65f28f6851bc1.png', NULL, '2024-03-14 00:47:20', 1, '2024-03-14 00:47:20', 'others'),
(155, '65f28f88aa05d.png', NULL, '65f28f88aa05d.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f88aa05d.png', 1211331, 'png', 'image/png', 'filemanager/65f28f88aa05d.png', NULL, '2024-03-14 00:47:52', 1, '2024-03-14 00:47:52', 'others'),
(156, '65f28f88acda6.png', NULL, '65f28f88acda6.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f88acda6.png', 1800714, 'png', 'image/png', 'filemanager/65f28f88acda6.png', NULL, '2024-03-14 00:47:52', 1, '2024-03-14 00:47:52', 'others'),
(157, '65f28f88eadf1.png', NULL, '65f28f88eadf1.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f88eadf1.png', 1027074, 'png', 'image/png', 'filemanager/65f28f88eadf1.png', NULL, '2024-03-14 00:47:52', 1, '2024-03-14 00:47:52', 'others'),
(158, '65f28f88ee754.png', NULL, '65f28f88ee754.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f88ee754.png', 1782862, 'png', 'image/png', 'filemanager/65f28f88ee754.png', NULL, '2024-03-14 00:47:52', 1, '2024-03-14 00:47:52', 'others'),
(159, '65f28f88f086f.png', NULL, '65f28f88f086f.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f28f88f086f.png', 966671, 'png', 'image/png', 'filemanager/65f28f88f086f.png', NULL, '2024-03-14 00:47:52', 1, '2024-03-14 00:47:52', 'others'),
(160, '65f2961aa8476.png', NULL, '65f2961aa8476.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f2961aa8476.png', 1432834, 'png', 'image/png', 'filemanager/65f2961aa8476.png', NULL, '2024-03-14 01:15:54', 1, '2024-03-14 01:15:54', 'others'),
(161, '65f2961aab633.png', NULL, '65f2961aab633.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f2961aab633.png', 1492713, 'png', 'image/png', 'filemanager/65f2961aab633.png', NULL, '2024-03-14 01:15:54', 1, '2024-03-14 01:15:54', 'others'),
(162, '65f2983a1d554.png', NULL, '65f2983a1d554.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f2983a1d554.png', 1082530, 'png', 'image/png', 'filemanager/65f2983a1d554.png', NULL, '2024-03-14 01:24:58', 1, '2024-03-14 01:24:58', 'others'),
(163, '65f2983a20394.png', NULL, '65f2983a20394.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f2983a20394.png', 1869789, 'png', 'image/png', 'filemanager/65f2983a20394.png', NULL, '2024-03-14 01:24:58', 1, '2024-03-14 01:24:58', 'others'),
(164, '65f29a3e7c863.png', NULL, '65f29a3e7c863.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f29a3e7c863.png', 1812138, 'png', 'image/png', 'filemanager/65f29a3e7c863.png', NULL, '2024-03-14 01:33:34', 1, '2024-03-14 01:33:34', 'others'),
(165, '65f29dcbf2b3e.png', NULL, '65f29dcbf2b3e.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f29dcbf2b3e.png', 603845, 'png', 'image/png', 'filemanager/65f29dcbf2b3e.png', NULL, '2024-03-14 01:48:43', 1, '2024-03-14 01:48:43', 'others'),
(166, '65f29feabbd74.png', NULL, '65f29feabbd74.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f29feabbd74.png', 1072294, 'png', 'image/png', 'filemanager/65f29feabbd74.png', NULL, '2024-03-14 01:57:46', 1, '2024-03-14 01:57:46', 'others'),
(167, '65f29feabe151.png', NULL, '65f29feabe151.png', 'https://irhawears.azamsolutions.com/public/filemanager/65f29feabe151.png', 1773958, 'png', 'image/png', 'filemanager/65f29feabe151.png', NULL, '2024-03-14 01:57:46', 1, '2024-03-14 01:57:46', 'others'),
(195, '65f54ac446888.png', NULL, '65f54ac446888.png', 'https://www.irhawears.com/public/filemanager/65f54ac446888.png', 432056, 'png', 'image/png', 'filemanager/65f54ac446888.png', NULL, '2024-03-16 11:31:16', 1, '2024-03-16 11:31:16', 'others'),
(196, '65f567fe11054.png', NULL, '65f567fe11054.png', 'https://www.irhawears.com/public/filemanager/65f567fe11054.png', 687034, 'png', 'image/png', 'filemanager/65f567fe11054.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(197, '65f567fe1214c.png', NULL, '65f567fe1214c.png', 'https://www.irhawears.com/public/filemanager/65f567fe1214c.png', 815623, 'png', 'image/png', 'filemanager/65f567fe1214c.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(198, '65f567fe12e3f.png', NULL, '65f567fe12e3f.png', 'https://www.irhawears.com/public/filemanager/65f567fe12e3f.png', 784859, 'png', 'image/png', 'filemanager/65f567fe12e3f.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(199, '65f567fe13a8c.png', NULL, '65f567fe13a8c.png', 'https://www.irhawears.com/public/filemanager/65f567fe13a8c.png', 753603, 'png', 'image/png', 'filemanager/65f567fe13a8c.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(200, '65f567fe14738.png', NULL, '65f567fe14738.png', 'https://www.irhawears.com/public/filemanager/65f567fe14738.png', 644693, 'png', 'image/png', 'filemanager/65f567fe14738.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(201, '65f567fe15425.png', NULL, '65f567fe15425.png', 'https://www.irhawears.com/public/filemanager/65f567fe15425.png', 654958, 'png', 'image/png', 'filemanager/65f567fe15425.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(202, '65f567fe15fd2.png', NULL, '65f567fe15fd2.png', 'https://www.irhawears.com/public/filemanager/65f567fe15fd2.png', 643456, 'png', 'image/png', 'filemanager/65f567fe15fd2.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(203, '65f567fe16f8c.png', NULL, '65f567fe16f8c.png', 'https://www.irhawears.com/public/filemanager/65f567fe16f8c.png', 688834, 'png', 'image/png', 'filemanager/65f567fe16f8c.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(204, '65f567fe17de7.png', NULL, '65f567fe17de7.png', 'https://www.irhawears.com/public/filemanager/65f567fe17de7.png', 745337, 'png', 'image/png', 'filemanager/65f567fe17de7.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(205, '65f567fe18a32.png', NULL, '65f567fe18a32.png', 'https://www.irhawears.com/public/filemanager/65f567fe18a32.png', 756831, 'png', 'image/png', 'filemanager/65f567fe18a32.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(206, '65f567fe19677.png', NULL, '65f567fe19677.png', 'https://www.irhawears.com/public/filemanager/65f567fe19677.png', 751064, 'png', 'image/png', 'filemanager/65f567fe19677.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(207, '65f567fe1a240.png', NULL, '65f567fe1a240.png', 'https://www.irhawears.com/public/filemanager/65f567fe1a240.png', 677645, 'png', 'image/png', 'filemanager/65f567fe1a240.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(208, '65f567fe1b177.png', NULL, '65f567fe1b177.png', 'https://www.irhawears.com/public/filemanager/65f567fe1b177.png', 732553, 'png', 'image/png', 'filemanager/65f567fe1b177.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(209, '65f567fe1bebb.png', NULL, '65f567fe1bebb.png', 'https://www.irhawears.com/public/filemanager/65f567fe1bebb.png', 891098, 'png', 'image/png', 'filemanager/65f567fe1bebb.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(210, '65f567fe1cd27.png', NULL, '65f567fe1cd27.png', 'https://www.irhawears.com/public/filemanager/65f567fe1cd27.png', 747308, 'png', 'image/png', 'filemanager/65f567fe1cd27.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(211, '65f567fe1d982.png', NULL, '65f567fe1d982.png', 'https://www.irhawears.com/public/filemanager/65f567fe1d982.png', 737874, 'png', 'image/png', 'filemanager/65f567fe1d982.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(212, '65f567fe1e4ce.png', NULL, '65f567fe1e4ce.png', 'https://www.irhawears.com/public/filemanager/65f567fe1e4ce.png', 683116, 'png', 'image/png', 'filemanager/65f567fe1e4ce.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(213, '65f567fe1efad.png', NULL, '65f567fe1efad.png', 'https://www.irhawears.com/public/filemanager/65f567fe1efad.png', 605868, 'png', 'image/png', 'filemanager/65f567fe1efad.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(214, '65f567fe1fda6.png', NULL, '65f567fe1fda6.png', 'https://www.irhawears.com/public/filemanager/65f567fe1fda6.png', 604216, 'png', 'image/png', 'filemanager/65f567fe1fda6.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(215, '65f567fe20907.png', NULL, '65f567fe20907.png', 'https://www.irhawears.com/public/filemanager/65f567fe20907.png', 626990, 'png', 'image/png', 'filemanager/65f567fe20907.png', NULL, '2024-03-16 13:35:58', 1, '2024-03-16 13:35:58', 'others'),
(216, '65f56a6f5beac.png', NULL, '65f56a6f5beac.png', 'https://www.irhawears.com/public/filemanager/65f56a6f5beac.png', 1277130, 'png', 'image/png', 'filemanager/65f56a6f5beac.png', NULL, '2024-03-16 13:46:23', 1, '2024-03-16 13:46:23', 'others'),
(217, '65f56a6f5e041.png', NULL, '65f56a6f5e041.png', 'https://www.irhawears.com/public/filemanager/65f56a6f5e041.png', 1360962, 'png', 'image/png', 'filemanager/65f56a6f5e041.png', NULL, '2024-03-16 13:46:23', 1, '2024-03-16 13:46:23', 'others'),
(218, '65f56a6f5f2f1.png', NULL, '65f56a6f5f2f1.png', 'https://www.irhawears.com/public/filemanager/65f56a6f5f2f1.png', 1170700, 'png', 'image/png', 'filemanager/65f56a6f5f2f1.png', NULL, '2024-03-16 13:46:23', 1, '2024-03-16 13:46:23', 'others'),
(219, '65f5d584335cc.png', NULL, '65f5d584335cc.png', 'https://www.irhawears.com/filemanager/65f5d584335cc.png', 504444, 'png', 'image/png', 'filemanager/65f5d584335cc.png', NULL, '2024-03-16 21:23:16', 1, '2024-03-16 21:23:16', 'others'),
(220, '65f5d58435b49.png', NULL, '65f5d58435b49.png', 'https://www.irhawears.com/filemanager/65f5d58435b49.png', 533001, 'png', 'image/png', 'filemanager/65f5d58435b49.png', NULL, '2024-03-16 21:23:16', 1, '2024-03-16 21:23:16', 'others'),
(221, '65f5d58436abc.png', NULL, '65f5d58436abc.png', 'https://www.irhawears.com/filemanager/65f5d58436abc.png', 581072, 'png', 'image/png', 'filemanager/65f5d58436abc.png', NULL, '2024-03-16 21:23:16', 1, '2024-03-16 21:23:16', 'others'),
(222, '65f5d584378da.png', NULL, '65f5d584378da.png', 'https://www.irhawears.com/filemanager/65f5d584378da.png', 652715, 'png', 'image/png', 'filemanager/65f5d584378da.png', NULL, '2024-03-16 21:23:16', 1, '2024-03-16 21:23:16', 'others'),
(223, '65f5dd700a15b.png', NULL, '65f5dd700a15b.png', 'https://www.irhawears.com/filemanager/65f5dd700a15b.png', 550869, 'png', 'image/png', 'filemanager/65f5dd700a15b.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(224, '65f5dd700baf2.png', NULL, '65f5dd700baf2.png', 'https://www.irhawears.com/filemanager/65f5dd700baf2.png', 560312, 'png', 'image/png', 'filemanager/65f5dd700baf2.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(225, '65f5dd700c51a.png', NULL, '65f5dd700c51a.png', 'https://www.irhawears.com/filemanager/65f5dd700c51a.png', 540759, 'png', 'image/png', 'filemanager/65f5dd700c51a.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(226, '65f5dd700cedb.png', NULL, '65f5dd700cedb.png', 'https://www.irhawears.com/filemanager/65f5dd700cedb.png', 524038, 'png', 'image/png', 'filemanager/65f5dd700cedb.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(227, '65f5dd700d8e4.png', NULL, '65f5dd700d8e4.png', 'https://www.irhawears.com/filemanager/65f5dd700d8e4.png', 565979, 'png', 'image/png', 'filemanager/65f5dd700d8e4.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(228, '65f5dd700e45e.png', NULL, '65f5dd700e45e.png', 'https://www.irhawears.com/filemanager/65f5dd700e45e.png', 524090, 'png', 'image/png', 'filemanager/65f5dd700e45e.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(229, '65f5dd700eff4.png', NULL, '65f5dd700eff4.png', 'https://www.irhawears.com/filemanager/65f5dd700eff4.png', 498282, 'png', 'image/png', 'filemanager/65f5dd700eff4.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(230, '65f5dd700fcc9.png', NULL, '65f5dd700fcc9.png', 'https://www.irhawears.com/filemanager/65f5dd700fcc9.png', 507548, 'png', 'image/png', 'filemanager/65f5dd700fcc9.png', NULL, '2024-03-16 21:57:04', 1, '2024-03-16 21:57:04', 'others'),
(231, '65f5de1b9614b.png', NULL, '65f5de1b9614b.png', 'https://www.irhawears.com/filemanager/65f5de1b9614b.png', 546839, 'png', 'image/png', 'filemanager/65f5de1b9614b.png', NULL, '2024-03-16 21:59:55', 1, '2024-03-16 21:59:55', 'others'),
(232, '65f5de1b97298.png', NULL, '65f5de1b97298.png', 'https://www.irhawears.com/filemanager/65f5de1b97298.png', 581914, 'png', 'image/png', 'filemanager/65f5de1b97298.png', NULL, '2024-03-16 21:59:55', 1, '2024-03-16 21:59:55', 'others'),
(233, '65f5de1b97e8f.png', NULL, '65f5de1b97e8f.png', 'https://www.irhawears.com/filemanager/65f5de1b97e8f.png', 689915, 'png', 'image/png', 'filemanager/65f5de1b97e8f.png', NULL, '2024-03-16 21:59:55', 1, '2024-03-16 21:59:55', 'others'),
(234, '65f5de1b98c0f.png', NULL, '65f5de1b98c0f.png', 'https://www.irhawears.com/filemanager/65f5de1b98c0f.png', 594804, 'png', 'image/png', 'filemanager/65f5de1b98c0f.png', NULL, '2024-03-16 21:59:55', 1, '2024-03-16 21:59:55', 'others'),
(235, '65f732451f4e2.png', NULL, '65f732451f4e2.png', 'https://www.irhawears.com/filemanager/65f732451f4e2.png', 523515, 'png', 'image/png', 'filemanager/65f732451f4e2.png', NULL, '2024-03-17 22:11:17', 1, '2024-03-17 22:11:17', 'others'),
(237, '65f7453362eb6.png', NULL, '65f7453362eb6.png', 'https://www.irhawears.com/filemanager/65f7453362eb6.png', 690238, 'png', 'image/png', 'filemanager/65f7453362eb6.png', NULL, '2024-03-17 23:32:03', 1, '2024-03-17 23:32:03', 'others'),
(238, '66013dd254894.jpeg', NULL, '66013dd254894.jpeg', 'https://www.irhawears.com/filemanager/66013dd254894.jpeg', 136706, 'jpeg', 'image/jpeg', 'filemanager/66013dd254894.jpeg', NULL, '2024-03-25 13:03:14', 1, '2024-03-25 13:03:14', 'others'),
(239, '66013dd2554ee.jpg', NULL, '66013dd2554ee.jpg', 'https://www.irhawears.com/filemanager/66013dd2554ee.jpg', 310231, 'jpg', 'image/jpeg', 'filemanager/66013dd2554ee.jpg', NULL, '2024-03-25 13:03:14', 1, '2024-03-25 13:03:14', 'others'),
(240, '66013dd255d58.jpeg', NULL, '66013dd255d58.jpeg', 'https://www.irhawears.com/filemanager/66013dd255d58.jpeg', 158818, 'jpeg', 'image/jpeg', 'filemanager/66013dd255d58.jpeg', NULL, '2024-03-25 13:03:14', 1, '2024-03-25 13:03:14', 'others'),
(241, '660274769e40b.png', NULL, '660274769e40b.png', 'https://irhawears.com/filemanager/660274769e40b.png', 673626, 'png', 'image/png', 'filemanager/660274769e40b.png', NULL, '2024-03-26 11:08:38', 1, '2024-03-26 11:08:38', 'others'),
(242, '660280ce56119.png', NULL, '660280ce56119.png', 'https://irhawears.com/filemanager/660280ce56119.png', 746497, 'png', 'image/png', 'filemanager/660280ce56119.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(243, '660280ce57fbc.png', NULL, '660280ce57fbc.png', 'https://irhawears.com/filemanager/660280ce57fbc.png', 1115102, 'png', 'image/png', 'filemanager/660280ce57fbc.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(244, '660280ce59251.png', NULL, '660280ce59251.png', 'https://irhawears.com/filemanager/660280ce59251.png', 1003169, 'png', 'image/png', 'filemanager/660280ce59251.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(245, '660280ce5a382.png', NULL, '660280ce5a382.png', 'https://irhawears.com/filemanager/660280ce5a382.png', 818284, 'png', 'image/png', 'filemanager/660280ce5a382.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(246, '660280ce5b412.png', NULL, '660280ce5b412.png', 'https://irhawears.com/filemanager/660280ce5b412.png', 822292, 'png', 'image/png', 'filemanager/660280ce5b412.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(247, '660280ce5c78c.png', NULL, '660280ce5c78c.png', 'https://irhawears.com/filemanager/660280ce5c78c.png', 972827, 'png', 'image/png', 'filemanager/660280ce5c78c.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(248, '660280ce5dd90.png', NULL, '660280ce5dd90.png', 'https://irhawears.com/filemanager/660280ce5dd90.png', 978431, 'png', 'image/png', 'filemanager/660280ce5dd90.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(249, '660280ce5f182.png', NULL, '660280ce5f182.png', 'https://irhawears.com/filemanager/660280ce5f182.png', 778852, 'png', 'image/png', 'filemanager/660280ce5f182.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(250, '660280ce60471.png', NULL, '660280ce60471.png', 'https://irhawears.com/filemanager/660280ce60471.png', 800791, 'png', 'image/png', 'filemanager/660280ce60471.png', NULL, '2024-03-26 12:01:18', 1, '2024-03-26 12:01:18', 'others'),
(251, '66029bff409a7.png', NULL, '66029bff409a7.png', 'https://irhawears.com/filemanager/66029bff409a7.png', 1054210, 'png', 'image/png', 'filemanager/66029bff409a7.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(252, '66029bff43424.png', NULL, '66029bff43424.png', 'https://irhawears.com/filemanager/66029bff43424.png', 1356371, 'png', 'image/png', 'filemanager/66029bff43424.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(253, '66029bff44d4f.png', NULL, '66029bff44d4f.png', 'https://irhawears.com/filemanager/66029bff44d4f.png', 910549, 'png', 'image/png', 'filemanager/66029bff44d4f.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(254, '66029bff4616f.png', NULL, '66029bff4616f.png', 'https://irhawears.com/filemanager/66029bff4616f.png', 1363652, 'png', 'image/png', 'filemanager/66029bff4616f.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(255, '66029bff47abb.png', NULL, '66029bff47abb.png', 'https://irhawears.com/filemanager/66029bff47abb.png', 2015592, 'png', 'image/png', 'filemanager/66029bff47abb.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(256, '66029bff49a02.png', NULL, '66029bff49a02.png', 'https://irhawears.com/filemanager/66029bff49a02.png', 1790446, 'png', 'image/png', 'filemanager/66029bff49a02.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(257, '66029bff4b197.png', NULL, '66029bff4b197.png', 'https://irhawears.com/filemanager/66029bff4b197.png', 1765913, 'png', 'image/png', 'filemanager/66029bff4b197.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(258, '66029bff4c971.png', NULL, '66029bff4c971.png', 'https://irhawears.com/filemanager/66029bff4c971.png', 1833929, 'png', 'image/png', 'filemanager/66029bff4c971.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(259, '66029bff4e456.png', NULL, '66029bff4e456.png', 'https://irhawears.com/filemanager/66029bff4e456.png', 1665477, 'png', 'image/png', 'filemanager/66029bff4e456.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(260, '66029bff4fb91.png', NULL, '66029bff4fb91.png', 'https://irhawears.com/filemanager/66029bff4fb91.png', 1488606, 'png', 'image/png', 'filemanager/66029bff4fb91.png', NULL, '2024-03-26 13:57:19', 1, '2024-03-26 13:57:19', 'others'),
(261, '6602a0c05b7bc.png', NULL, '6602a0c05b7bc.png', 'https://irhawears.com/filemanager/6602a0c05b7bc.png', 660999, 'png', 'image/png', 'filemanager/6602a0c05b7bc.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(262, '6602a0c05c75e.png', NULL, '6602a0c05c75e.png', 'https://irhawears.com/filemanager/6602a0c05c75e.png', 546833, 'png', 'image/png', 'filemanager/6602a0c05c75e.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(263, '6602a0c05e6a0.png', NULL, '6602a0c05e6a0.png', 'https://irhawears.com/filemanager/6602a0c05e6a0.png', 604628, 'png', 'image/png', 'filemanager/6602a0c05e6a0.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(264, '6602a0c05f567.png', NULL, '6602a0c05f567.png', 'https://irhawears.com/filemanager/6602a0c05f567.png', 540008, 'png', 'image/png', 'filemanager/6602a0c05f567.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(265, '6602a0c060074.png', NULL, '6602a0c060074.png', 'https://irhawears.com/filemanager/6602a0c060074.png', 573795, 'png', 'image/png', 'filemanager/6602a0c060074.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(266, '6602a0c060b24.png', NULL, '6602a0c060b24.png', 'https://irhawears.com/filemanager/6602a0c060b24.png', 581909, 'png', 'image/png', 'filemanager/6602a0c060b24.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(267, '6602a0c0615f6.png', NULL, '6602a0c0615f6.png', 'https://irhawears.com/filemanager/6602a0c0615f6.png', 624618, 'png', 'image/png', 'filemanager/6602a0c0615f6.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(268, '6602a0c0624da.png', NULL, '6602a0c0624da.png', 'https://irhawears.com/filemanager/6602a0c0624da.png', 491444, 'png', 'image/png', 'filemanager/6602a0c0624da.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(269, '6602a0c062e75.png', NULL, '6602a0c062e75.png', 'https://irhawears.com/filemanager/6602a0c062e75.png', 505220, 'png', 'image/png', 'filemanager/6602a0c062e75.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(270, '6602a0c064e77.png', NULL, '6602a0c064e77.png', 'https://irhawears.com/filemanager/6602a0c064e77.png', 689909, 'png', 'image/png', 'filemanager/6602a0c064e77.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(271, '6602a0c0659e9.png', NULL, '6602a0c0659e9.png', 'https://irhawears.com/filemanager/6602a0c0659e9.png', 800395, 'png', 'image/png', 'filemanager/6602a0c0659e9.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(272, '6602a0c06659e.png', NULL, '6602a0c06659e.png', 'https://irhawears.com/filemanager/6602a0c06659e.png', 588309, 'png', 'image/png', 'filemanager/6602a0c06659e.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(273, '6602a0c0671b7.png', NULL, '6602a0c0671b7.png', 'https://irhawears.com/filemanager/6602a0c0671b7.png', 575936, 'png', 'image/png', 'filemanager/6602a0c0671b7.png', NULL, '2024-03-26 14:17:36', 1, '2024-03-26 14:17:36', 'others'),
(274, '6609329038e1e.png', NULL, '6609329038e1e.png', 'https://www.irhawears.com/filemanager/6609329038e1e.png', 394967, 'png', 'image/png', 'filemanager/6609329038e1e.png', NULL, '2024-03-31 13:53:20', 1, '2024-03-31 13:53:20', 'others'),
(275, '660932903a317.png', NULL, '660932903a317.png', 'https://www.irhawears.com/filemanager/660932903a317.png', 501570, 'png', 'image/png', 'filemanager/660932903a317.png', NULL, '2024-03-31 13:53:20', 1, '2024-03-31 13:53:20', 'others'),
(276, '660932903b50e.png', NULL, '660932903b50e.png', 'https://www.irhawears.com/filemanager/660932903b50e.png', 409743, 'png', 'image/png', 'filemanager/660932903b50e.png', NULL, '2024-03-31 13:53:20', 1, '2024-03-31 13:53:20', 'others'),
(277, '660932903c42e.png', NULL, '660932903c42e.png', 'https://www.irhawears.com/filemanager/660932903c42e.png', 892423, 'png', 'image/png', 'filemanager/660932903c42e.png', NULL, '2024-03-31 13:53:20', 1, '2024-03-31 13:53:20', 'others'),
(278, '660936ed50b12.png', NULL, '660936ed50b12.png', 'https://www.irhawears.com/filemanager/660936ed50b12.png', 744105, 'png', 'image/png', 'filemanager/660936ed50b12.png', NULL, '2024-03-31 14:11:57', 1, '2024-03-31 14:11:57', 'others'),
(279, '660936ed51d18.png', NULL, '660936ed51d18.png', 'https://www.irhawears.com/filemanager/660936ed51d18.png', 764131, 'png', 'image/png', 'filemanager/660936ed51d18.png', NULL, '2024-03-31 14:11:57', 1, '2024-03-31 14:11:57', 'others'),
(281, '660938b51aec3.png', NULL, '660938b51aec3.png', 'https://www.irhawears.com/filemanager/660938b51aec3.png', 2090581, 'png', 'image/png', 'filemanager/660938b51aec3.png', NULL, '2024-03-31 14:19:33', 1, '2024-03-31 14:19:33', 'others'),
(282, '66093b6de3c8c.png', NULL, '66093b6de3c8c.png', 'https://www.irhawears.com/filemanager/66093b6de3c8c.png', 493128, 'png', 'image/png', 'filemanager/66093b6de3c8c.png', NULL, '2024-03-31 14:31:09', 1, '2024-03-31 14:31:09', 'others');
INSERT INTO `filemanager` (`id`, `title`, `description`, `filename`, `preview`, `size`, `extension`, `type`, `path`, `created_by`, `created_at`, `is_enable`, `updated_at`, `grouping`) VALUES
(283, '66093b6de4dfb.png', NULL, '66093b6de4dfb.png', 'https://www.irhawears.com/filemanager/66093b6de4dfb.png', 513900, 'png', 'image/png', 'filemanager/66093b6de4dfb.png', NULL, '2024-03-31 14:31:09', 1, '2024-03-31 14:31:09', 'others'),
(284, '66093b6de5c01.png', NULL, '66093b6de5c01.png', 'https://www.irhawears.com/filemanager/66093b6de5c01.png', 592318, 'png', 'image/png', 'filemanager/66093b6de5c01.png', NULL, '2024-03-31 14:31:09', 1, '2024-03-31 14:31:09', 'others'),
(285, '660a4ff23ab70.png', NULL, '660a4ff23ab70.png', 'https://www.irhawears.com/filemanager/660a4ff23ab70.png', 449814, 'png', 'image/png', 'filemanager/660a4ff23ab70.png', NULL, '2024-04-01 10:10:58', 1, '2024-04-01 10:10:58', 'others'),
(286, '660a4ff23ba3b.png', NULL, '660a4ff23ba3b.png', 'https://www.irhawears.com/filemanager/660a4ff23ba3b.png', 519040, 'png', 'image/png', 'filemanager/660a4ff23ba3b.png', NULL, '2024-04-01 10:10:58', 1, '2024-04-01 10:10:58', 'others'),
(287, '660a4ff23c468.png', NULL, '660a4ff23c468.png', 'https://www.irhawears.com/filemanager/660a4ff23c468.png', 629306, 'png', 'image/png', 'filemanager/660a4ff23c468.png', NULL, '2024-04-01 10:10:58', 1, '2024-04-01 10:10:58', 'others'),
(288, '660a55144d56f.png', NULL, '660a55144d56f.png', 'https://www.irhawears.com/filemanager/660a55144d56f.png', 440391, 'png', 'image/png', 'filemanager/660a55144d56f.png', NULL, '2024-04-01 10:32:52', 1, '2024-04-01 10:32:52', 'others'),
(289, '660a55144e6cd.png', NULL, '660a55144e6cd.png', 'https://www.irhawears.com/filemanager/660a55144e6cd.png', 389622, 'png', 'image/png', 'filemanager/660a55144e6cd.png', NULL, '2024-04-01 10:32:52', 1, '2024-04-01 10:32:52', 'others'),
(290, '660a638576f6a.png', NULL, '660a638576f6a.png', 'https://www.irhawears.com/filemanager/660a638576f6a.png', 179732, 'png', 'image/png', 'filemanager/660a638576f6a.png', NULL, '2024-04-01 11:34:29', 1, '2024-04-01 11:34:29', 'others'),
(291, '660a638577d85.png', NULL, '660a638577d85.png', 'https://www.irhawears.com/filemanager/660a638577d85.png', 57876, 'png', 'image/png', 'filemanager/660a638577d85.png', NULL, '2024-04-01 11:34:29', 1, '2024-04-01 11:34:29', 'others'),
(292, '660a64647de50.png', NULL, '660a64647de50.png', 'https://www.irhawears.com/filemanager/660a64647de50.png', 154726, 'png', 'image/png', 'filemanager/660a64647de50.png', NULL, '2024-04-01 11:38:12', 1, '2024-04-01 11:38:12', 'others'),
(294, '660a656f1e677.png', NULL, '660a656f1e677.png', 'https://www.irhawears.com/filemanager/660a656f1e677.png', 176060, 'png', 'image/png', 'filemanager/660a656f1e677.png', NULL, '2024-04-01 11:42:39', 1, '2024-04-01 11:42:39', 'others'),
(295, '660a662bea29c.png', NULL, '660a662bea29c.png', 'https://www.irhawears.com/filemanager/660a662bea29c.png', 160644, 'png', 'image/png', 'filemanager/660a662bea29c.png', NULL, '2024-04-01 11:45:47', 1, '2024-04-01 11:45:47', 'others'),
(296, '660a662beb333.png', NULL, '660a662beb333.png', 'https://www.irhawears.com/filemanager/660a662beb333.png', 160556, 'png', 'image/png', 'filemanager/660a662beb333.png', NULL, '2024-04-01 11:45:47', 1, '2024-04-01 11:45:47', 'others'),
(297, '660a662bebfdc.png', NULL, '660a662bebfdc.png', 'https://www.irhawears.com/filemanager/660a662bebfdc.png', 149184, 'png', 'image/png', 'filemanager/660a662bebfdc.png', NULL, '2024-04-01 11:45:47', 1, '2024-04-01 11:45:47', 'others'),
(298, '660a67aec4869.png', NULL, '660a67aec4869.png', 'https://www.irhawears.com/filemanager/660a67aec4869.png', 104130, 'png', 'image/png', 'filemanager/660a67aec4869.png', NULL, '2024-04-01 11:52:14', 1, '2024-04-01 11:52:14', 'others'),
(299, '660a67aec51ba.png', NULL, '660a67aec51ba.png', 'https://www.irhawears.com/filemanager/660a67aec51ba.png', 94052, 'png', 'image/png', 'filemanager/660a67aec51ba.png', NULL, '2024-04-01 11:52:14', 1, '2024-04-01 11:52:14', 'others'),
(300, '660a67aec589d.png', NULL, '660a67aec589d.png', 'https://www.irhawears.com/filemanager/660a67aec589d.png', 99835, 'png', 'image/png', 'filemanager/660a67aec589d.png', NULL, '2024-04-01 11:52:14', 1, '2024-04-01 11:52:14', 'others'),
(301, '660a67aec5f05.png', NULL, '660a67aec5f05.png', 'https://www.irhawears.com/filemanager/660a67aec5f05.png', 121834, 'png', 'image/png', 'filemanager/660a67aec5f05.png', NULL, '2024-04-01 11:52:14', 1, '2024-04-01 11:52:14', 'others'),
(302, '660a6c1a0e648.png', NULL, '660a6c1a0e648.png', 'https://www.irhawears.com/filemanager/660a6c1a0e648.png', 110069, 'png', 'image/png', 'filemanager/660a6c1a0e648.png', NULL, '2024-04-01 12:11:06', 1, '2024-04-01 12:11:06', 'others'),
(303, '660a6c1a0f43c.png', NULL, '660a6c1a0f43c.png', 'https://www.irhawears.com/filemanager/660a6c1a0f43c.png', 93315, 'png', 'image/png', 'filemanager/660a6c1a0f43c.png', NULL, '2024-04-01 12:11:06', 1, '2024-04-01 12:11:06', 'others'),
(304, '660a78444c228.png', NULL, '660a78444c228.png', 'https://www.irhawears.com/filemanager/660a78444c228.png', 80398, 'png', 'image/png', 'filemanager/660a78444c228.png', NULL, '2024-04-01 13:03:00', 1, '2024-04-01 13:03:00', 'others'),
(305, '660a78444cdcb.png', NULL, '660a78444cdcb.png', 'https://www.irhawears.com/filemanager/660a78444cdcb.png', 109981, 'png', 'image/png', 'filemanager/660a78444cdcb.png', NULL, '2024-04-01 13:03:00', 1, '2024-04-01 13:03:00', 'others'),
(306, '660a7be0b8d06.png', NULL, '660a7be0b8d06.png', 'https://www.irhawears.com/filemanager/660a7be0b8d06.png', 1039511, 'png', 'image/png', 'filemanager/660a7be0b8d06.png', NULL, '2024-04-01 13:18:24', 1, '2024-04-01 13:18:24', 'others'),
(307, '660a7be0ba1a1.png', NULL, '660a7be0ba1a1.png', 'https://www.irhawears.com/filemanager/660a7be0ba1a1.png', 1063147, 'png', 'image/png', 'filemanager/660a7be0ba1a1.png', NULL, '2024-04-01 13:18:24', 1, '2024-04-01 13:18:24', 'others'),
(308, '660a7c6906747.png', NULL, '660a7c6906747.png', 'https://www.irhawears.com/filemanager/660a7c6906747.png', 419790, 'png', 'image/png', 'filemanager/660a7c6906747.png', NULL, '2024-04-01 13:20:41', 1, '2024-04-01 13:20:41', 'others'),
(309, '660a7c69074bc.png', NULL, '660a7c69074bc.png', 'https://www.irhawears.com/filemanager/660a7c69074bc.png', 448114, 'png', 'image/png', 'filemanager/660a7c69074bc.png', NULL, '2024-04-01 13:20:41', 1, '2024-04-01 13:20:41', 'others'),
(310, '660a85b590475.png', NULL, '660a85b590475.png', 'https://www.irhawears.com/filemanager/660a85b590475.png', 84947, 'png', 'image/png', 'filemanager/660a85b590475.png', NULL, '2024-04-01 14:00:21', 1, '2024-04-01 14:00:21', 'others'),
(311, '660a85b590fde.png', NULL, '660a85b590fde.png', 'https://www.irhawears.com/filemanager/660a85b590fde.png', 93478, 'png', 'image/png', 'filemanager/660a85b590fde.png', NULL, '2024-04-01 14:00:21', 1, '2024-04-01 14:00:21', 'others'),
(312, '66100157220ce.png', NULL, '66100157220ce.png', 'https://www.irhawears.com/filemanager/66100157220ce.png', 159195, 'png', 'image/png', 'filemanager/66100157220ce.png', NULL, '2024-04-05 17:49:11', 1, '2024-04-05 17:49:27', 'thumbnail');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `details`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main-menu', NULL, 1, '2024-03-01 09:42:33', '2024-03-09 07:12:21'),
(3, 'Footer Menu 1', 'footer-menu-1', NULL, 1, '2024-03-02 09:54:05', '2024-03-09 07:12:31'),
(4, 'Footer Menu 2', 'footer-menu-2', NULL, 1, '2024-03-02 09:55:11', '2024-03-09 07:12:41'),
(8, 'Shipping Policy', 'shipping-policy', NULL, 1, '2024-04-01 12:55:55', '2024-04-01 12:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `subtitle`, `target`, `link`, `level`, `parent_id`, `menu_id`, `sort`, `is_enable`, `created_at`, `updated_at`) VALUES
(6, 'Home', '#', NULL, 'https://irhawears.com', 1, NULL, 1, 0, 1, '2024-03-01 14:39:09', '2024-04-01 13:47:19'),
(29, 'Shop', NULL, NULL, '/shop', 1, NULL, 1, 1, 1, '2024-03-02 09:47:48', '2024-04-01 13:47:19'),
(42, 'woman', 'egg', NULL, '/shop?category=ledis-kurti', 1, NULL, 1, 2, 1, '2024-03-06 03:57:14', '2024-04-01 13:47:19'),
(47, 'Mens', NULL, NULL, '#', 1, NULL, 1, 3, 1, '2024-03-06 04:42:55', '2024-04-01 13:47:19'),
(49, 'Kurtis', NULL, NULL, '#', 2, 42, 1, 0, 1, '2024-03-06 04:49:26', '2024-04-01 13:47:19'),
(50, 'Waistcoat', NULL, NULL, '/shop?category=waistcoat', 2, 47, 1, 5, 1, '2024-03-09 00:42:25', '2024-04-01 13:47:19'),
(52, 'Kurta', NULL, NULL, '#', 2, 47, 1, 1, 1, '2024-03-09 00:43:03', '2024-04-01 13:47:19'),
(53, 'Shalwar Kameez', NULL, NULL, '#', 2, 47, 1, 0, 1, '2024-03-09 00:43:30', '2024-04-01 13:47:19'),
(54, 'Shoes', NULL, NULL, '#', 2, 47, 1, 4, 1, '2024-03-09 00:43:45', '2024-04-01 13:47:19'),
(55, 'Sherwani', NULL, NULL, '#', 2, 47, 1, 6, 1, '2024-03-09 00:44:05', '2024-04-01 13:47:19'),
(56, 'Bridal', NULL, NULL, 'https://www.irhawears.com/shop?category=bridal', 2, 42, 1, 1, 1, '2024-03-09 00:44:50', '2024-04-01 13:47:19'),
(57, 'Sandle', NULL, NULL, '#', 2, 42, 1, 2, 1, '2024-03-09 00:45:24', '2024-04-01 13:47:19'),
(59, 'Kids', NULL, NULL, '/shop?collection=kid-s-joggers', 1, NULL, 1, 4, 1, '2024-03-09 00:47:53', '2024-04-01 13:47:19'),
(60, 'Shoes', NULL, NULL, '/shop?collection=kid-s-joggers', 2, 59, 1, 1, 1, '2024-03-09 00:51:56', '2024-04-01 13:47:19'),
(61, 'About Us', NULL, NULL, 'https://irhawears.com/pages/about-us', 1, NULL, 3, 1, 1, '2024-03-13 10:29:44', '2024-04-01 11:48:21'),
(62, 'Order Tracking', NULL, NULL, '/order-tracking', 1, NULL, 3, 2, 1, '2024-03-13 10:30:23', '2024-03-13 10:36:25'),
(63, 'FAQs', NULL, NULL, 'https://irhawears.com/pages/faq', 1, NULL, 3, 3, 1, '2024-03-13 10:30:52', '2024-04-01 12:14:22'),
(64, 'Shipping Policy', NULL, NULL, 'https://irhawears.com/pages/shipping-policy', 1, NULL, 4, 1, 1, '2024-03-13 10:31:25', '2024-04-01 11:59:08'),
(65, 'Returns & Exchange', NULL, NULL, 'https://irhawears.com/pages/exchange-and-return-policy', 1, NULL, 4, 1, 1, '2024-03-13 10:31:43', '2024-04-01 11:53:55'),
(66, 'Privacy policy', NULL, NULL, 'https://irhawears.com/pages/privacy-policy', 1, NULL, 4, 1, 1, '2024-03-13 10:31:59', '2024-04-01 11:52:04'),
(67, 'Terms & condition', NULL, NULL, 'https://irhawears.com/pages/terms-conditions', 1, NULL, 4, 1, 1, '2024-03-13 10:32:32', '2024-04-01 12:19:43'),
(69, 'Order Tracking', NULL, NULL, '/order-tracking', 1, NULL, 1, 5, 1, '2024-03-13 10:37:22', '2024-04-01 13:47:19'),
(74, 'Pent\'s', '', NULL, 'https://irhawears.com/shop?category=pents', 2, 47, 1, 2, 1, '2024-03-26 14:50:34', '2024-04-01 13:47:19'),
(75, 'Shirt\'s', NULL, NULL, 'https://irhawears.com/shop?category=shirt-s', 2, 47, 1, 3, 1, '2024-03-27 10:25:31', '2024-04-01 13:47:19'),
(76, 'About Us', NULL, NULL, 'https://irhawears.com/pages/about-us', 1, NULL, 1, 6, 1, '2024-03-28 11:19:12', '2024-04-01 13:47:19'),
(77, 'Policy', '', NULL, '#', 1, NULL, 1, 7, 1, '2024-04-01 12:53:53', '2024-04-01 13:47:19'),
(78, 'Privacy policy', NULL, NULL, 'https://irhawears.com/pages/privacy-policy', 2, 77, 1, 0, 1, '2024-04-01 12:54:58', '2024-04-01 13:47:19'),
(79, 'Returns & Exchange', '', NULL, 'https://irhawears.com/pages/exchange-and-return-policy', 2, 77, 1, 2, 1, '2024-04-01 12:58:19', '2024-04-01 13:47:19'),
(80, 'Shipping Policy', '', NULL, 'https://irhawears.com/pages/shipping-policy', 2, 77, 1, 1, 1, '2024-04-01 12:58:48', '2024-04-01 13:47:19'),
(81, 'Terms & condition', '', NULL, 'https://irhawears.com/pages/terms-conditions', 2, 77, 1, 3, 1, '2024-04-01 12:59:07', '2024-04-01 13:47:19'),
(82, 'Sets Suits', NULL, NULL, 'https://www.irhawears.com/shop?category=sets-suits', 2, 59, 1, 0, 1, '2024-04-01 13:47:04', '2024-04-01 13:48:13');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'man411210@gmail.com', 1, '2024-03-26 22:05:49', '2024-03-26 22:05:49'),
(2, 'man411210@gmail.com', 1, '2024-03-26 22:09:07', '2024-03-26 22:09:07'),
(3, 'man411210@gmail.com', 1, '2024-03-26 22:11:16', '2024-03-26 22:11:16'),
(6, 'shakeeb@gmail.com', 1, '2024-03-26 23:11:29', '2024-03-26 23:11:29'),
(7, 'jggjgj@gmail.com', 1, '2024-03-28 11:55:22', '2024-03-28 11:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `tracking_id` text DEFAULT NULL,
  `sno` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `order_status` text NOT NULL,
  `order_notes` text DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `delivery_charges` double DEFAULT 0,
  `grandtotal` double DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_id`, `sno`, `customer_name`, `customer_email`, `customer_phone`, `country`, `city`, `address`, `payment_method`, `payment_status`, `order_status`, `order_notes`, `subtotal`, `delivery_charges`, `grandtotal`, `is_enable`, `created_at`, `updated_at`, `customer_notes`) VALUES
(11, '65eddb64c333a', NULL, 'Owais Azam', 'admin@gmail.com', '03112239342', 'pakistan', 'Karachi', 'Orangi Tonw Karachi', 'cash_on_delivery', 'paid', 'completed', 'Please Note My Order', 45600, 0, 45600, 1, '2024-03-10 11:10:12', '2024-03-13 11:52:40', NULL),
(12, '65ede033d32fc', NULL, 'eeg', 'admin@gmail.com', '044', 'pakistan', '4gf', 'hfhfh', 'cash_on_delivery', 'unpaid', 'approved', 'hhfh', 6400, 0, 6400, 1, '2024-03-10 11:30:43', '2024-03-12 01:34:12', NULL),
(13, '65ede069228cf', NULL, 'eeg', 'nasir2301633@gmail.com', '03045053276', 'pakistan', '4gf', 'hfhfh', 'cash_on_delivery', 'unpaid', 'pending', 'jyyj', 3200, 0, 3200, 1, '2024-03-10 11:31:37', '2024-03-10 11:31:37', NULL),
(14, '65ede2002b0f1', NULL, 'eeg', 'nasir2301633@gmail.com', '03045053276', 'pakistan', '4gf', 'hfhfh', 'cash_on_delivery', 'unpaid', 'pending', 'vh', 4400, 0, 4400, 1, '2024-03-10 11:38:24', '2024-03-10 11:38:24', NULL),
(15, '65eefd7d4ff7d', NULL, 'Owais Azam', 'iamowaisazam@gmail.com', '03112239342', 'pakistan', 'Karachi', 'Orangi Town, Karachi', 'cash_on_delivery', 'unpaid', 'pending', 'Test...', 450, 0, 450, 1, '2024-03-11 07:47:57', '2024-03-11 07:47:57', NULL),
(16, '65eff87762118', NULL, 'M Owais Azam', 'iamowaisazam@gmail.com', '03112239342', 'pakistan', 'Karachi', 'House No: 262552, Orangi town, Karachi', 'cash_on_delivery', 'unpaid', 'pending', 'Order ma kuch changes koi special chez hogi to wo yaha ayegi..', 42950, 0, 42950, 1, '2024-03-12 01:38:47', '2024-03-12 01:38:47', NULL),
(17, '65f028c9bf054', NULL, 'Nasir iqbal', 'laiqsonsinfo@gmail.com', '3110245196', 'pakistan', 'KARACHI', 'rggrg', 'cash_on_delivery', 'unpaid', 'pending', 'grrggrg', 150000, 0, 150000, 1, '2024-03-12 05:04:57', '2024-03-12 05:04:57', NULL),
(18, '65f1cb0a44897', NULL, 'Ghh', 'admin@gmail.com', '0346', 'pakistan', 'Kar', 'Chcc', 'cash_on_delivery', 'unpaid', 'completed', 'Jhvvggjvg', 3200, 0, 3200, 1, '2024-03-13 10:49:30', '2024-03-13 10:51:55', NULL),
(19, '65f1d880e9e6e', NULL, 'Owais Azam', 'admin@gmail.com', '03112239342', 'pakistan', 'Karachi', 'Address', 'cash_on_delivery', 'unpaid', 'pending', 'special ghhggh', 300, 0, 300, 1, '2024-03-13 11:46:56', '2024-03-13 11:46:56', NULL),
(20, '65f5e2d776a40', NULL, 'jyjyyjjjg', 'nasir2301633@gmail.com', '03045053276', 'pakistan', '4gf', 'hfhfh', 'cash_on_delivery', 'unpaid', 'pending', 'ggg', 7000, 0, 7000, 1, '2024-03-16 22:20:07', '2024-03-16 22:20:07', NULL),
(33, '66017a699ea7e', NULL, 'Owais Azam', 'admin@gmail.com', '03112239342', 'pakistan', 'Karachi', 'address', '1', 'unpaid', 'pending', 'asdad', 4400, 0, 4400, 1, '2024-03-25 17:21:45', '2024-03-25 17:21:45', NULL),
(34, '66017aba29c2d', NULL, 'Owais Azam', 'admin@gmail.com', '03112239342', 'pakistan', 'Karachi', 'address', '1', 'unpaid', 'pending', 'asdad', 4400, 0, 4400, 1, '2024-03-25 17:23:06', '2024-03-25 17:23:06', NULL),
(35, '660204520fa9f', NULL, 'Gg', 'admin@gmail.com', '0346', 'pakistan', 'Karachi', 'Vbvv', '1', 'unpaid', 'pending', 'Bbbbb', 3200, 0, 3200, 1, '2024-03-26 03:10:10', '2024-03-26 03:10:10', NULL),
(36, '6602048548dc3', NULL, 'Gg', 'admin@gmail.com', '0346', 'pakistan', 'Karachi', 'Vbvv', '1', 'unpaid', 'pending', 'Bbbbb', 3200, 0, 3200, 1, '2024-03-26 03:11:01', '2024-03-26 03:11:01', NULL),
(37, '66095cd6c5c1c', NULL, 'Owais Azam', 'admin@gmail.com', '03112239342', 'pakistan', 'Karachi', 'address', '1', 'unpaid', '1', NULL, 16400, 100, 16500, 1, '2024-03-31 16:53:42', '2024-03-31 16:53:42', 'asdasd'),
(38, '660d881b97ed4', NULL, 'admin', 'wasifansari912@gmail.com', 'c333', 'pakistan', 'Karachi', 'dwdw', '1', 'unpaid', '1', NULL, 9000, 100, 9100, 1, '2024-04-03 20:47:23', '2024-04-03 20:47:23', 'dwdw'),
(39, '660d887b51538', NULL, 'Ayaz', 'hasninsiddique208@gmail.com', '03162650006', 'pakistan', 'Karachi', 'Orangi town Iqbal markit', '1', 'unpaid', '1', NULL, 10200, 100, 10300, 1, '2024-04-03 20:48:59', '2024-04-03 20:48:59', NULL),
(42, '664488ed772bb', NULL, 'hack', 'man411210@gmail.com', '34060955366', 'pakistan', 'karachi', 'sdasd', '1', 'unpaid', '1', NULL, 2200, 100, 2300, 1, '2024-05-15 14:05:33', '2024-05-15 14:05:33', 'sdasd');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL,
  `title` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `image_id` text DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `attr` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `variation_id`, `title`, `sku`, `image_id`, `quantity`, `price`, `total`, `attr`, `created_at`, `updated_at`) VALUES
(16, 11, 213, 'Embroidery Waistcoat', 'l-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bce07d6c8.png', 4, 5000, 20000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-10 11:10:12', '2024-03-10 11:10:12'),
(17, 11, 252, 'Printed WaistCoat', 'm-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bec54ce8f.png', 3, 3200, 9600, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"3\",\"values_title\":\"m\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-10 11:10:12', '2024-03-10 11:10:12'),
(18, 11, 216, 'Gray WaistCoat Plain', 'l', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c711ab51.png', 5, 3200, 16000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-03-10 11:10:12', '2024-03-10 11:10:12'),
(19, 12, 252, 'Printed WaistCoat', 'm-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bec54ce8f.png', 2, 3200, 6400, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"3\",\"values_title\":\"m\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-10 11:30:43', '2024-03-10 11:30:43'),
(20, 13, 252, 'Printed WaistCoat', 'm-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e4bec54ce8f.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"3\",\"values_title\":\"m\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-10 11:31:37', '2024-03-10 11:31:37'),
(21, 14, 259, 'boys-joggers', '26-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e5876231c46.png', 2, 2200, 4400, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"10\",\"values_title\":\"26\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-10 11:38:24', '2024-03-10 11:38:24'),
(22, 15, 175, 'Lexie Shirt', 'xl-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 1, 300, 300, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-11 07:47:57', '2024-03-11 07:47:57'),
(23, 15, 177, 'Lexie Shirt', 'l-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 3, 50, 150, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-11 07:47:57', '2024-03-11 07:47:57'),
(24, 16, 245, 'bellylady Baby Infant Boys Magic Sticker Nonslip Flat Sneaker', '24', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac09b97.png', 3, 2500, 7500, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"9\",\"values_title\":\"24\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(25, 16, 246, 'bellylady Baby Infant Boys Magic Sticker Nonslip Flat Sneaker', '26', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac0be64.png', 5, 2500, 12500, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"10\",\"values_title\":\"26\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(26, 16, 247, 'bellylady Baby Infant Boys Magic Sticker Nonslip Flat Sneaker', '28', 'https://irhawears.azamsolutions.com/public/filemanager/65e761ac09b97.png', 8, 2500, 20000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"11\",\"values_title\":\"28\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(27, 16, 174, 'Lexie Shirt', 'xl-red', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 3, 400, 1200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"5\",\"values_title\":\"red\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(28, 16, 175, 'Lexie Shirt', 'xl-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 5, 300, 1500, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(29, 16, 177, 'Lexie Shirt', 'l-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 5, 50, 250, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-12 01:38:47', '2024-03-12 01:38:47'),
(30, 17, 249, 'Bridal Maxi - Light Copper (iw-0001)', 'xl-red', 'https://irhawears.azamsolutions.com/public/filemanager/65e974425b463.jpg', 1, 150000, 150000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"5\",\"values_title\":\"red\"}]', '2024-03-12 05:04:57', '2024-03-12 05:04:57'),
(31, 18, 216, 'Gray WaistCoat Plain', 'l', 'https://irhawears.azamsolutions.com/public/filemanager/65e53c711ab51.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-03-13 10:49:30', '2024-03-13 10:49:30'),
(32, 19, 177, 'Lexie Shirt', 'l-blue', 'https://irhawears.azamsolutions.com/public/filemanager/65e48a4f589e6.jpg', 6, 50, 300, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-13 11:46:56', '2024-03-13 11:46:56'),
(33, 20, 301, 'Lining Shirt Design For Men', 'xl-White', 'https://www.irhawears.com/filemanager/65f5d58436abc.png', 1, 7000, 7000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"15\",\"values_title\":\"White\"}]', '2024-03-16 22:20:07', '2024-03-16 22:20:07'),
(50, 33, 259, 'boys-joggers', '26-blue', 'https://www.irhawears.com/filemanager/65e5876231c46.png', 1, 2200, 2200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"10\",\"values_title\":\"26\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-25 17:21:45', '2024-03-25 17:21:45'),
(51, 33, 261, 'boys-joggers', '28-blue', 'https://www.irhawears.com/filemanager/65e5876231c46.png', 1, 2200, 2200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"11\",\"values_title\":\"28\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-25 17:21:45', '2024-03-25 17:21:45'),
(52, 34, 259, 'boys-joggers', '26-blue', 'https://www.irhawears.com/filemanager/65e5876231c46.png', 1, 2200, 2200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"10\",\"values_title\":\"26\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-25 17:23:06', '2024-03-25 17:23:06'),
(53, 34, 261, 'boys-joggers', '28-blue', 'https://www.irhawears.com/filemanager/65e5876231c46.png', 1, 2200, 2200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"11\",\"values_title\":\"28\"},{\"attribute_title\":\"Color\",\"attribute_id\":\"2\",\"values_id\":\"6\",\"values_title\":\"blue\"}]', '2024-03-25 17:23:06', '2024-03-25 17:23:06'),
(54, 35, 320, 'Green Printed WaistCoat', 'xl', 'https://irhawears.com/filemanager/65e4bec54ce8f.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"}]', '2024-03-26 03:10:10', '2024-03-26 03:10:10'),
(55, 36, 320, 'Green Printed WaistCoat', 'xl', 'https://irhawears.com/filemanager/65e4bec54ce8f.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"}]', '2024-03-26 03:11:01', '2024-03-26 03:11:01'),
(56, 37, 318, 'Brown Embroidery Waistcoat', 'xl', 'https://www.irhawears.com/filemanager/65e4bce07a5fe.png', 1, 5000, 5000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"}]', '2024-03-31 16:53:42', '2024-03-31 16:53:42'),
(57, 37, 319, 'Brown Embroidery Waistcoat', 'l', 'https://www.irhawears.com/filemanager/65e4bce07a5fe.png', 1, 5000, 5000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-03-31 16:53:42', '2024-03-31 16:53:42'),
(58, 37, 320, 'Green Printed WaistCoat', 'xl', 'https://www.irhawears.com/filemanager/65e4bec54ce8f.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"}]', '2024-03-31 16:53:42', '2024-03-31 16:53:42'),
(59, 37, 321, 'Green Printed WaistCoat', 'l', 'https://www.irhawears.com/filemanager/65e4bec54ce8f.png', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-03-31 16:53:42', '2024-03-31 16:53:42'),
(60, 38, 307, 'Bridal Maxi - Light Copper (iw-0001)', 'l', 'https://irhawears.com/filemanager/65e974425b463.jpg', 1, 9000, 9000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-04-03 20:47:23', '2024-04-03 20:47:23'),
(61, 39, 306, 'Classic Kambal Jamawar Brown Nomad Traditional Waistcoat', 'l', 'https://irhawears.com/filemanager/65f2983a20394.png', 2, 3500, 7000, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-04-03 20:48:59', '2024-04-03 20:48:59'),
(62, 39, 321, 'Green Printed WaistCoat', 'l', 'https://irhawears.com/', 1, 3200, 3200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"2\",\"values_title\":\"l\"}]', '2024-04-03 20:48:59', '2024-04-03 20:48:59'),
(65, 42, 348, 'For Men\'s Off White Shirts Casual', 'xl', 'http://contact.irhawears.com/filemanager/66093b6de3c8c.png', 1, 2200, 2200, '[{\"attribute_title\":\"Size\",\"attribute_id\":\"1\",\"values_id\":\"1\",\"values_title\":\"xl\"}]', '2024-05-15 14:05:33', '2024-05-15 14:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `title`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2024-03-30 08:55:29', '2024-03-30 08:55:29'),
(2, 'Approved', 1, '2024-03-30 08:55:49', '2024-03-30 08:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shortdetails` text DEFAULT NULL,
  `longdetails` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `shortdetails`, `longdetails`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(3, 'IRHA WEARS MAN\'S & WOMAN COLLECTION', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-03 10:47:11', '2024-03-05 06:34:01'),
(4, 'IRHA WEARS MAN\'S & WOMAN COLLECTION', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-03 10:50:21', '2024-03-07 00:31:55'),
(18, 'EXCHANGE AND RETURN POLICY', 'exchange-and-return-policy', NULL, '<p>WHAT IS YOUR RETURN OR EXCHANGE POLICY?</p><p>If you want to return or exchange something, you have 10 days from the date of delivery to do so if:</p><ul><li>A damaged, stained, faulty, or unfinished product is received.</li><li>The item(s) must be new and in its original packing, complete with all labels and protective labels.</li><li>The size of the product that was delivered did not match the size that was ordered.</li><li>This only applies to goods shipped within Pakistan; for international orders, please contact our customer service team, and we will do all we can to assist you.</li><li>Please note that, due to the differences in color monitors/screens and lighting used during the photoshoots, the precise color or texture of the finished item may differ slightly. Hence, refunds and exchanges for this specific reason will not be entertained.</li><li>Exchanges and refunds during a sale or on a discounted product are ONLY applicable if the product received does not match the product you have ordered.</li></ul><p>We regret that the following products are excluded from the return and exchange policy:</p><ul><li>Customized, altered or personalized items</li><li>Products on sale or offered with any promotion</li><li>Items which have been previously exchanged</li></ul><p>ACCEPTANCE OF RETURN AND EXCHANGE ORDERS:</p><p>Please note that there may be certain orders that we are unable to accept and must cancel. We reserve the right, at our sole discretion, to refuse or cancel any order for any of the following reasons:</p><p>HOW DO I APPLY FOR THE EXCHANGE?</p><ul><li>To return an item, please email us at email@email.com with the reason for return as well as order details.</li><li>You can also contact our customer service by calling us at +92 311 1111 111 within 3 days of delivery.</li><li>All Customers are responsible for the cost of returning the items to Irha wears Stores.</li><li>Once our customer support team approves your request for return &amp; exchanges, you will be requested to courier the parcel to the following address: __________________________________________________</li></ul><p>CONDITIONS FOR EXCHANGE:</p><p>The product you are exchanging will be valued at the current selling price to determine the exchange value. If the exchange is for greater value, you will need to pay the difference. We will not issue a store credit, and we will not exchange items of lesser value. We reserve the right to limit or refuse any return &amp; exchange. NOTE: Articles purchased on sale and during seasons of occasion will not be exchanged or returned.</p><p>WHEN WILL MY EXCHANGE BE PROCESSED?</p><p>We try to handle all returns within 5-7 days of receiving them. Please allow up to 14 working days for your return to be processed during busy periods.</p><p>WHAT IS YOUR SIZE EXCHANGE POLICY?</p><p>If you are unhappy with the size you ordered and would like to receive a different size, please contact the E-commerce team via email at email@email.com The item(s) must be new and in its original packing, complete with all labels and protection stickers. This only applies to goods shipped within Pakistan; for international orders, please contact our customer service team, and we will do all we can to assist you. Please note that size exchanges depend on stock availability.</p><p>DO YOU OFFER A REFUND?</p><p>Unfortunately, we do not provide refunds; In case we are unable to provide an exchange or any other remedy, we may provide a refund, only if we are provided with a valid reason. Our management will then look into the matter, and if they approve your request for a refund, ONLY then the request will be processed further. Shipping and handling expenses will not be returned in the case of a REFUND. The minimum time it takes to complete a refund is 10-15 business days, depending on the payment method.</p><p>RETURNS: SALE &amp; DISCOUNTED ORDERS</p><p>We do not provide any exchange or refunds on sale or discounted products. However, exchanges and refunds are only allowed during a sale or on a discounted product if the product received do not match the ones you bought.</p><p>&nbsp;</p>', 'EXCHANGE AND RETURN POLICY', NULL, NULL, '2024-04-01 11:55:14', '2024-04-01 19:34:41'),
(17, 'about us', 'about-us', NULL, '<h3>Our Story</h3><p>Welcome to IrhaWears, your ultimate destination for trendy and comfortable clothing!</p><p>Founded in 2024, we are passionate about providing high-quality apparel that reflects the latest fashion trends while ensuring maximum comfort for our customers.</p><p>At IrhaWears, we believe in embracing individuality and self-expression through fashion. Our diverse range of products caters to every style and occasion, from casual everyday wear to elegant evening attire.</p><h3>Meet Our Team</h3><p>Our team is comprised of dedicated individuals who are committed to delivering exceptional customer service and staying ahead of the fashion curve. Get to know the faces behind IrhaWears:</p><ul><li>Founder &amp; CEO: Owais Azam</li><li>Head Designer: Owais Azam</li></ul>', 'about us', NULL, NULL, '2024-03-19 20:57:05', '2024-04-01 19:30:45'),
(16, 'Privacy Policy', 'privacy-policy', 'Muhammad Shakeeb Raza', '<p>Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our website, example.com, and other sites we own and operate.</p>\r\n\r\n                    <p>We only ask for personal information when we truly need it to provide a service to you. We collect it by fair and lawful means, with your knowledge and consent. We also let you know why we’re collecting it and how it will be used.</p>\r\n\r\n                    <p>We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we’ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use, or modification.</p>\r\n\r\n                    <p>We don’t share any personally identifying information publicly or with third-parties, except when required to by law.</p>\r\n\r\n                    <p>Our website may link to external sites that are not operated by us. Please be aware that we have no control over the content and practices of these sites, and cannot accept responsibility or liability for their respective privacy policies.</p>\r\n\r\n                    <p>You are free to refuse our request for your personal information, with the understanding that we may be unable to provide you with some of your desired services.</p>\r\n\r\n                    <p>Your continued use of our website will be regarded as acceptance of our practices around privacy and personal information. If you have any questions about how we handle user data and personal information, feel free to contact us.</p>\r\n\r\n                    <p>This policy is effective as of 1 January 2022.</p>', 'sonu', 'sonu', 'sonu', '2024-03-18 17:19:42', '2024-03-18 19:50:24'),
(19, 'Shipping Policy', 'shipping-policy', NULL, '<h3>Domestic Shipping</h3><p>We offer free standard shipping on all domestic orders. Most orders are processed and shipped within 1-2 business days.</p><p>For express shipping, additional charges may apply. Please refer to the checkout page for express shipping options and pricing.</p><h3>Shipping Times</h3><p>Shipping times may vary based on the shipping method selected and the destination. Estimated delivery times will be provided at checkout.</p><p>Please note that delivery times may be affected by factors beyond our control, such as weather, customs delays, or carrier issues.</p><p>Company Name: Irha Wears</p>', 'Shipping Policy', NULL, NULL, '2024-04-01 11:58:23', '2024-04-01 19:36:48'),
(20, 'FAQ', 'faq', NULL, '<h3><br>HOW DO I PLACE AN ORDER?</h3><p>Ordering at mantra.com.pk is easy. Just select the items you want to shop, enter your shipping address and payment information, and you can place your order. If you need any assistance, give us a call at +92311-1111111 Monday to Saturday.</p><h3>HOW WILL MY ORDER BE DELIVERED TO ME?</h3><p>Your order would be delivered through reputed courier companies at your doorstep.</p><h3>HOW WILL I KNOW IF ORDER IS PLACED SUCCESSFULLY?</h3><p>Once your Order is successfully placed, you will receive a confirmation call, email, and text message from mantra.com.pk. This mail will have all the details related to your order. Order details can also be viewed at My Account -&gt; My Orders if you have placed the order on your own online.</p><h3>DO YOU TAKE ORDERS OVER THE PHONE?</h3><p>Yes, we do take orders over the phone. The payment mode possible for these orders is Cash on Delivery only.</p><p>I TRIED PLACING ORDER USING MY CREDIT CARD BUT IT ISN\'T WORKING. CAN YOU HELP ME PLACE AN ORDER?</p><p>Yes, if your debit/credit card isn\'t working, we can always take your order over the phone. Do call us at +92311-1111111.</p><p>&nbsp;</p>', NULL, NULL, NULL, '2024-04-01 12:13:57', '2024-04-01 19:39:46'),
(21, 'Terms & Conditions', 'terms-conditions', NULL, '<p>IRHAWEARS shall not be liable for any damage, direct or indirect, incidental or consequential, for use of or inability to use material, products, or services of any kind that are offered or to provide indemnity or any other remedy to you or any third party. IRHAWEARS shall make every effort to ensure that this website is free from defects or viruses. It is your responsibility to ensure that you use the correct equipment when using the website, and to protect from anything that may damage it and IRHAWEARS shall not be liable for any damage, direct or indirect, incidental or consequential, by use of this website to you or your computer or any equipment, software used by you. USE OF WEBSITE This website,&nbsp;www.irhawears.com is owned by IRHAWEARS SHOES and is operated for your personal use and information. The use of this website is subject to the following terms;</p><ul><li>By accessing and browsing this website, you unconditionally accept, without limitation or qualification, these terms.</li><li>This website is directed for use only by citizens who possess the legal right and ability to create binding obligations.</li><li>IRHAWEARS reserves the right to refuse service or cancel orders on its sole discretion.</li></ul><p>PRODUCT INFORMATION</p><p>IRHAWEARS has made every effort to ensure that the products are fairly described i.e. the product information is correct, and that the colors and designs of our products are displayed as accurately as possible. However, as the actual colors or designs you see will vary with the quality of your monitor or because of picture quality or for any other reason. We cannot guarantee that your display will accurately reflect the color or design or any other description of the product requested on delivery. IRHAWEARS does not warrant that product descriptions, photographs, design, or other description of the product or the content of this site are complete or error-free.</p><p>LIMITATION OF LIABILITY</p><p>IRHAWEARS shall not be liable for any damage, direct or indirect, incidental or consequential, for use of or inability to use material, products, or services of any kind that are offered or to provide indemnity or any other remedy to you or any third party. IRHAWEARS shall make every effort to ensure that this website is free from defects or viruses. It is your responsibility to ensure that you use the correct equipment when using the website, and to protect from anything that may damage it and IRHAWEARS shall not be liable for any damage, direct or indirect, incidental or consequential, by use of this website to you or your computer or any equipment, software used by you.</p><p>EXCLUSION OF WARRANTIES</p><p>IRHAWEARS does not warrant or represent that this website will be uninterrupted or error-free or that any information, data, content, software, or other material accessible through this website will be free from bugs, viruses, worms, Trojan horses or other harmful components.</p><p>ELECTRONIC COMMUNICATIONS</p><p>When you visit this website or send emails to us, you are communicating with us electronically. You consent to receive communications from us electronically. We will communicate with you by email or by posting notices on this website. You agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</p><p>SURVEILLANCE</p><p>IRHAWEARS may monitor the access to its website and other activities in relation to its website and may intervene in this regard. However, IRHAWEARS makes no representation and gives no warranty to that effect. You consent to such surveillance and intervention if IRHAWEARS ever decides to do it.</p><p>CONFIDENTIALITY</p><p>You acknowledge that information or material which you provide electronically through your access to or usage of this website is not confidential or proprietary, except as may be required under applicable law or pursuant to the privacy policy of IRHAWEARS. You also acknowledge that unprotected email communication over the Internet is subject to possible interception, alteration, or loss. You represent and warrant that the information or material which you provide electronically to IRHAWEARS by accessing or using this website does not infringe the rights of any other person or entity. You consent to IRHAWEARS using that information or material, in whole or in part by any means whatsoever, including reproducing, retransmitting, or publishing this information or material or ideas, concepts, or other information contained therein for the commercial purposes of IRHAWEARS. You also consent to the disclosure of your identity, in accordance with the Privacy Policy of IRHAWEARS.</p><p>HARMFUL INFORMATION / MATERIAL</p><p>You agree not to introduce into or through this website any information or materials which may be harmful to others. You agree not to include, knowingly or otherwise, any error or defect in material or information which may be a libel, slander, defamation, or obscenity, or promote hatred or otherwise give rise to a criminal offense or civil liability on the part of any person or entity.</p><p>LINKS</p><p>Links and references to other websites are provided to you as a convenience only. IRHAWEARS has not reviewed and does not expressly or implicitly endorse other websites or any information or material, or the accessibility thereof, via such links, and does not assume any responsibility for any such other websites, information or material posted thereon, or products or services offered thereon. You may not create links from other websites to this website, except if expressly permitted by IRHAWEARS.</p><p>RESERVE OF RIGHTS</p><p>All rights not expressly granted in these terms are reserved to IRHAWEARS. Nothing contained in these terms shall be construed as conferring by implication, otherwise any license or right under any copyright, patent, trademark or other intellectual property right of IRHAWEARS or any other person or to you.</p><p>CHANGES TO TERMS / SEVERABILITY</p><p>IRHAWEARS may modify, update or otherwise change the terms applicable to this website from time to time. Following the posting of such change, your continued use of this site will constitute your acceptance of the terms, as modified. If any one of these terms shall be deemed invalid, void, or for any reason unenforceable, such terms shall be deemed severable and shall not affect the validity and enforceability of remaining terms.</p><p>TERMINATION</p><p>IRHAWEARS reserves the right, at its sole discretion, to terminate your access to all or any part of this site, with or without notice.</p><p>HEADINGS</p><p>The headings used herein are inserted for convenience of reference only and do not affect the construction or interpretation of the terms and conditions herein.</p><p>Company Name: IrhaWears</p><p>&nbsp;</p>', NULL, NULL, NULL, '2024-04-01 12:19:20', '2024-04-01 19:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`, `message`, `is_enable`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', 'cash_on_delivery', 'Cash On Delivery Message', 1, '2024-03-24 11:12:54', '2024-03-24 11:12:54'),
(2, 'Bank Trasnfer', 'bank_trasnfer', 'Bank Trasnfer Message', 1, '2024-03-24 11:12:54', '2024-03-24 11:12:54');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subchildcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `images` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `hover_image` text DEFAULT NULL,
  `is_featured` int(11) DEFAULT 0,
  `is_popular` int(11) DEFAULT 0,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `price`, `selling_price`, `sku`, `category_id`, `subcategory_id`, `subchildcategory_id`, `brand_id`, `tags`, `image`, `images`, `type`, `hover_image`, `is_featured`, `is_popular`, `details`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `is_enable`, `created_at`, `updated_at`) VALUES
(19, 'Brown Embroidery Waistcoat', 'brown-embroidery-waistcoat', 5000, 6000, NULL, 45, NULL, NULL, NULL, NULL, '290', ',66,65,67', NULL, '291', 1, 0, NULL, '<p><strong>Product Details:</strong></p><figure class=\"table\"><table><tbody><tr><td>Color</td><td>Brown</td></tr><tr><td>Collar Type</td><td>Band Collar</td></tr><tr><td>Fabric</td><td>Shooting&nbsp;embroidery</td></tr><tr><td>Wear Type</td><td>Formal</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-03 13:02:59', '2024-04-01 11:35:58'),
(20, 'Green Printed WaistCoat', 'green-printed-waistcoat', 3200, 4000, NULL, 45, NULL, NULL, NULL, NULL, '292', ',292,294', NULL, '294', 1, 0, NULL, '<p><strong>Product Details:</strong></p><figure class=\"table\"><table><tbody><tr><td>Color</td><td>Green</td></tr><tr><td>Collar Type</td><td>Band Collar</td></tr><tr><td>Fabric</td><td>Jamawar</td></tr><tr><td>Wear Type</td><td>Formal</td></tr></tbody></table></figure><p><br>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-03 13:16:33', '2024-04-01 11:43:46'),
(21, 'Maroon WaistCoat', 'maroon-waistcoat', 4000, 5000, NULL, 45, NULL, NULL, NULL, NULL, '297', ',73,74', NULL, '296', 1, 0, NULL, '<p>Product Details:</p><figure class=\"table\"><table><tbody><tr><td>Color</td><td>Maroon</td></tr><tr><td>Collar&nbsp;Type&nbsp;</td><td>&nbsp;Band Collar</td></tr><tr><td>Fabric</td><td>Jammawar</td></tr><tr><td>Wear&nbsp;</td><td>Type: Formal</td></tr></tbody></table></figure><p><br>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-03 22:14:44', '2024-04-01 12:04:18'),
(22, 'Gray WaistCoat Plain', 'gray-waistcoat-plain', 3200, 4000, NULL, 45, NULL, NULL, NULL, NULL, '301', ',71,72,', NULL, '300', 1, 0, NULL, '<p>Product Details:</p><figure class=\"table\"><table><tbody><tr><td>Color</td><td>Gray , Light Blue</td></tr><tr><td>Collar Type</td><td>Band Collar</td></tr><tr><td>Fabric</td><td>Shooting&nbsp;</td></tr><tr><td>Wear Type</td><td>Formal</td></tr></tbody></table></figure><p><br>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-03 22:20:03', '2024-04-01 12:01:49'),
(23, 'boys-joggers', 'boys-joggers', 2200, 3000, NULL, 46, NULL, NULL, NULL, '#kids joggers', '303', ',80,82,80', NULL, '302', 1, 0, NULL, '<p><strong>Product Specification:</strong></p><figure class=\"table\"><table><tbody><tr><td>Product Type</td><td>Joggers – Boys</td></tr><tr><td>Category</td><td>Casual Wear</td></tr><tr><td>Out-Sole</td><td>Rubber Sole</td></tr><tr><td>Upper</td><td>Synthetic Material</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-04 03:24:57', '2024-04-01 12:11:51'),
(24, 'Joggers Black (072)', 'joggers-black-072-', 3100, 3500, NULL, 46, NULL, NULL, NULL, NULL, '304', ',85,84,83', NULL, '305', 1, 0, NULL, '<p><strong>Product Specification:</strong></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;Black Joggers Unisex (072)</td></tr><tr><td>Same as pic</td></tr><tr><td>Size 4-9 years</td></tr></tbody></table></figure><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-04 03:41:59', '2024-04-01 13:15:17'),
(25, 'Joggers (BM-6)', 'joggers-bm-6-', 2500, 3000, NULL, 46, NULL, NULL, NULL, '#SHEOS', '307', ',86,', NULL, '306', 1, 0, NULL, '<p><strong>Product Specifications:</strong></p><figure class=\"table\"><table><tbody><tr><td>Product Type</td><td>Joggers –&nbsp;Boys</td></tr><tr><td>Category</td><td>Casual + Party Wear</td></tr><tr><td>Color &nbsp;</td><td>Same As Pic</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-04 06:50:15', '2024-04-01 13:18:49'),
(26, 'Sneakers (A-10)', 'sneakers-a-10-', 2400, 2600, NULL, 46, NULL, NULL, NULL, NULL, '101', ',101,102,103', NULL, '102', 1, 0, NULL, '<p><strong>Product Specifications:</strong></p><figure class=\"table\"><table><tbody><tr><td>Product Type:&nbsp;Joggers –&nbsp;Boys</td></tr><tr><td>Shinny Pink with White leather(A-10)</td></tr><tr><td>Color Available: Same as pic</td></tr><tr><td>Size 5-9 years</td></tr></tbody></table></figure><p>&nbsp;</p><p>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-05 02:45:49', '2024-03-05 02:51:06'),
(27, 'Joggers – Boys (Black)', 'joggers-boys-black-', 2400, 2600, NULL, 64, NULL, NULL, NULL, NULL, '98', ',98,99', NULL, '99', 1, 0, NULL, '<p><strong>Product Specifications:</strong></p><figure class=\"table\"><table><tbody><tr><td>Product Type</td><td>Joggers –&nbsp;Boys</td></tr><tr><td>Category</td><td>&nbsp;Casual + Party Wear</td></tr><tr><td>Out-Sole</td><td>Rubber</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-05 02:55:12', '2024-03-30 13:30:08'),
(28, 'Plain Waiscoat 3 pocket.', 'plain-waiscoat-3-pocket-', 5300, 6000, NULL, 45, NULL, NULL, NULL, NULL, '110', ',', NULL, '107', 1, 0, NULL, '<p><strong>Product Details:</strong></p><figure class=\"table\"><table><tbody><tr><td>Product Category</td><td>WaistCoat</td></tr><tr><td>Collar Type</td><td>Sherwani Collar</td></tr><tr><td>Fabric</td><td>Shoting</td></tr><tr><td>Fit Type</td><td>Regular</td></tr><tr><td>Wear Type</td><td>Casual</td></tr></tbody></table></figure><p><br>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-05 03:17:54', '2024-03-05 04:40:23'),
(29, 'bellylady Baby Infant Boys Magic Sticker Nonslip Flat Sneaker', 'bellylady-baby-infant-boys-magic-sticker-nonslip-flat-sneaker', 2500, 3000, NULL, 46, NULL, NULL, NULL, NULL, '111', ',111,112,113', NULL, '112', 1, 0, NULL, '<p>Product details of bellylady Baby Infant Boys Magic Sticker Nonslip Flat Sneaker</p><figure class=\"table\"><table><tbody><tr><td>Item Type</td><td>Shoes</td></tr><tr><td>Color</td><td>Gray</td></tr><tr><td>Whether here is noise</td><td>no</td></tr><tr><td>Cylinder height</td><td>low cylinder</td></tr><tr><td>Upper material</td><td>PVC</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-05 13:19:21', '2024-03-05 13:24:47'),
(30, 'Bridal Maxi - Light Copper (iw-0001)', 'bridal-maxi-light-copper-iw-0001-', 9000, 18000, NULL, 55, NULL, NULL, NULL, '$MAXI', '134', NULL, NULL, '128', 1, 0, NULL, '<p><strong>Product Description</strong></p><figure class=\"table\"><table><tbody><tr><td>Embroidered handmade Organza front kali sleeves &amp; bodice</td></tr><tr><td>Embroidered Organza back kali &amp; back bodice</td></tr><tr><td>Embroidered organza handmade front daman patch</td></tr><tr><td>Embroidered organza back daman patch</td></tr><tr><td>Embroidered Organza dupatta</td></tr><tr><td>Grip trouser</td></tr></tbody></table></figure>', NULL, NULL, NULL, 1, '2024-03-07 00:38:49', '2024-03-28 20:15:29'),
(31, 'Pant Coat New Style', 'pant-coat-new-style', 8000, 10000, NULL, 57, NULL, NULL, NULL, NULL, '130', ',130,131,132', NULL, '131', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-07 02:08:03', '2024-03-11 07:52:35'),
(32, 'Basic Suiting Blue Traditional Waistcoat', 'basic-suiting-blue-traditional-waistcoat', 2200, 2500, NULL, 45, NULL, NULL, NULL, '#waistcoat', '152', NULL, NULL, '154', 1, 0, NULL, '<h4><strong>Description</strong></h4><p>The Eastern Men\'s Elegant blue waistcoat is indeed a fantastic choice. Blue is a versatile color that adds a touch of sophistication to any outfit. The metal buttons on this waistcoat elevate its style even further. It\'s made with a perfect and smooth blend of cotton and linen, ensuring both comfort and durability. The back of the waistcoat is made with silk material, adding a luxurious touch. Whether you\'re dressing up for a formal event or going for a more casual look, this waistcoat will definitely make a stylish statement. It\'s the perfect combination of fashion and versatility!</p>', NULL, NULL, NULL, 1, '2024-03-14 00:48:56', '2024-03-14 00:53:43'),
(33, 'Basic Suiting Brown Traditional Waistcoat', 'basic-suiting-brown-traditional-waistcoat', 2200, 2500, NULL, 45, NULL, NULL, NULL, '#waistcoat', '153', NULL, NULL, '159', 1, 0, NULL, '<h4><strong>Description</strong></h4><p>Shoki\'s beautiful Beige stylish men\'s waistcoat is the ultimate fashion statement! It\'s designed to bring a fresh and trendy vibe to your style. With its 5 buttons, it ensures a perfect fit. The beige floral print adds an extra touch of charm to enhance a man\'s personality. It\'s truly a dashing choice.</p><p>A Waistcoat crafted with a blend of cotton and linen which gives guarantees long lasting durability. The back is totally rayon material which is super classy stuff.</p>', NULL, NULL, NULL, 1, '2024-03-14 00:55:32', '2024-03-14 01:36:55'),
(34, 'Basic Suiting Licorice Traditional Waistcoat', 'basic-suiting-licorice-traditional-waistcoat', 2200, 2500, NULL, 45, NULL, NULL, NULL, '#waistcoat', '158', ',157,158', NULL, '157', 1, 0, NULL, '<h4><strong>Description</strong></h4><p>Shoki\'s beautiful blue stylish men\'s waistcoat is the ultimate fashion statement! It\'s designed to bring a fresh and trendy vibe to your style. With its 5 buttons, it ensures a perfect fit. The blue floral print adds an extra touch of charm to enhance a man\'s personality. It\'s truly a dashing choice.</p><p>A Waistcoat crafted with a blend of cotton and linen which gives guarantees long lasting durability. The back is totally rayon material which is super classy stuff.</p>', NULL, NULL, NULL, 1, '2024-03-14 00:59:45', '2024-03-14 01:36:25'),
(35, 'Classic Kambal Jamawar Black Nomad Traditional Waistcoat', 'classic-kambal-jamawar-black-nomad-traditional-waistcoat', 3500, 4000, NULL, 45, NULL, NULL, NULL, '#waiscoat', '161', ',161,160', NULL, '160', 1, 0, NULL, '<h4><strong>Description</strong></h4><p>Shoki\'s beautiful Black stylish men\'s waistcoat is the ultimate fashion statement! It\'s designed to bring a fresh and trendy vibe to your style. With its 5 buttons, it ensures a perfect fit. The black floral print adds an extra touch of charm to enhance a man\'s personality. It\'s truly a dashing choice.<br>A Waistcoat crafted with a blend of cotton and linen which gives guarantees long lasting durability. The back is totally rayon material which is super classy stuff</p>', NULL, NULL, NULL, 1, '2024-03-14 01:08:13', '2024-03-14 01:18:41'),
(36, 'Classic Kambal Jamawar Brown Nomad Traditional Waistcoat', 'classic-kambal-jamawar-brown-nomad-traditional-waistcoat', 3500, 4000, NULL, 45, NULL, NULL, NULL, NULL, '163', ',162,163', NULL, '162', 1, 0, NULL, '<h4><strong>Description</strong></h4><p>The Eastern Men\'s Elegant brown waistcoat is indeed a fantastic choice. brown is a versatile color that adds a touch of sophistication to any outfit. The metal buttons on this waistcoat elevate its style even further. It\'s made with a perfect and smooth blend of cotton and linen, ensuring both comfort and durability. The back of the waistcoat is made with silk material, adding a luxurious touch. Whether you\'re dressing up for a formal event or going for a more casual look, this waistcoat will definitely make a stylish statement. It\'s the perfect combination of fashion and versatility!</p>', NULL, NULL, NULL, 1, '2024-03-14 01:25:37', '2024-03-14 01:29:29'),
(37, 'Premium Embroidered Chiffon Waistcoat', 'Red premium-embroidered-chiffon-waistcoat', 6000, 7000, NULL, 45, NULL, NULL, NULL, NULL, '167', NULL, NULL, '166', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-14 01:58:12', '2024-03-22 13:43:01'),
(39, 'Cotton Pants & Lining Shirt Design For Men', 'cotton-pants-lining-shirt-design-for-men', 4200, 5000, NULL, 65, NULL, NULL, NULL, '#shirt,#pent ,#for man', '221', ',219,220,221,222', NULL, '222', 1, 0, NULL, '<p><strong>Style:</strong><br>The lining shirt exudes a contemporary yet timeless appeal, blending sophistication with comfort seamlessly.</p><p><strong>Contrast Lining:</strong><br>The defining feature of this shirt is its contrasting lining, strategically incorporated to add visual interest and character. The lining runs along the inner collar, cuffs, and placket, providing subtle yet distinctive detailing that sets this shirt apart.</p><p><strong>Slim Fit Silhouette:</strong><br>Tailored to perfection, the shirt boasts a slim fit silhouette that accentuates the wearer\'s physique while allowing ease of movement. The meticulously crafted cut ensures a flattering shape without compromising on comfort.</p><p><strong>Button-Down Collar:</strong><br>The classic button-down collar lends a refined touch to the shirt, offering versatility that transitions effortlessly from casual to semi-formal occasions. It maintains a neat appearance while adding a hint of laid-back charm.</p>', NULL, NULL, NULL, 1, '2024-03-16 21:28:09', '2024-03-21 09:24:10'),
(41, 'DARK BLUE DENIM JEANS FOR MEN', 'dark-blue-denim-jeans-for-men', 2200, 2500, NULL, 66, NULL, NULL, NULL, NULL, '271', NULL, NULL, '270', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-26 14:25:41', '2024-03-26 14:27:26'),
(42, 'Men\'s Business Class Beige Variety COTTON Pants', 'men-s-business-class-beige-variety-cotton-pants', 2200, 2500, NULL, 66, NULL, NULL, NULL, NULL, '268', NULL, NULL, '269', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-26 14:29:17', '2024-03-26 14:30:03'),
(43, 'OFF White Cotton Straight Fit Jeans Distressed', 'off-white-cotton-straight-fit-jeans-distressed', 2200, 2500, NULL, 66, NULL, NULL, NULL, NULL, '273', NULL, NULL, '261', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-26 14:30:58', '2024-03-26 14:32:34'),
(44, 'Men\'s jeans Pants/Denim jeans Pants/Jeans Pants', 'men-s-jeans-pants-denim-jeans-pants-jeans-pants', 2200, 2500, NULL, 66, NULL, NULL, NULL, NULL, '272', NULL, NULL, '267', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-26 14:43:57', '2024-03-26 14:44:57'),
(45, 'Alina Khan', 'alina-khan', 9000, 18000, NULL, 55, NULL, NULL, NULL, NULL, '206', ',206,207', NULL, '207', 1, 0, NULL, '<p>Maxi made of teal-colored velvet, embellished with intricate floral and geometric patterns with subtle accents of pastel threadwork. Paired with a mint-ice blue crushed lehenga made of shimmered fabric and an organza Machine embroidery dupatta.</p><p>&nbsp;</p>', NULL, NULL, NULL, 1, '2024-03-26 22:36:09', '2024-03-28 20:10:44'),
(46, 'Zoya Shah', 'zoya-shah-', 14000, 28000, NULL, 55, NULL, NULL, NULL, NULL, '202', ',201,202,203', NULL, '203', 1, 0, NULL, '<p>Description</p><p>Openshirt Maxi Style Ferozi Suit with an embellished floral border and motif detailing crafted with thread work, zardozi, sequin, and pearl detailing. The Kameez has heavily embellished cuffs and edging on the neckline and hem. Paired with an luxurious dupatta with intricate Mahine Emroidery &nbsp;work.</p><p><strong>Note: </strong>Actual colors of the product may vary from the colors being displayed on your devices. For further information on the Zoya Shah &nbsp;, kindly contact our client advisor.</p>', NULL, NULL, NULL, 1, '2024-03-26 22:41:29', '2024-03-28 20:14:33'),
(47, 'Men Regular Fit Solid Spread Collar Casual Blue Shirt', 'men-regular-fit-solid-spread-collar-casual-blue-shirt', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '252', NULL, NULL, '251', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-27 09:51:04', '2024-03-27 09:57:27'),
(48, 'SEMI FORMAL SHIRT WHITE BLUE LINE', 'semi-formal-shirt-white-blue-line', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '256', ',256,255,', NULL, '255', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-27 10:40:31', '2024-03-31 14:13:56'),
(49, 'MEN WHITE STRIPED PURE COTTON SLIM SHIRT', 'men-white-striped-pure-cotton-slim-shirt', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '258', ',257,258', NULL, '257', 1, 0, NULL, '<p><br>It sounds like you\'re describing a men\'s shirt made of pure cotton fabric with white stripes and a slim fit. This type of shirt is typically characterized by its tailored silhouette, designed to fit closely to the body, and the white stripes add a stylish touch to the overall design. Cotton is a popular choice for shirts due to its breathability and comfort. If you\'re looking to purchase such a shirt, you might want to check out men\'s fashion retailers or online stores that offer a variety of styles and brands to choose from.</p>', NULL, NULL, NULL, 1, '2024-03-27 10:56:14', '2024-03-27 11:03:51'),
(50, 'For Men\'s Black Shirts Casual', 'for-men-s-black-shirts-casual', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '277', NULL, NULL, '275', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-31 13:54:51', '2024-03-31 13:57:54'),
(51, 'For Men\'s Sky Blue Shirt Full Sleep', 'for-men-s-sky-blue-shirt-full-sleep', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '312', ',279,281', NULL, '312', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-31 14:17:29', '2024-04-05 17:51:02'),
(52, 'For Men\'s Off White Shirts Casual', 'for-men-s-off-white-shirts-casual-', 2200, 2500, NULL, 67, NULL, NULL, NULL, NULL, '282', ',282,283,284,', NULL, '283', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-31 14:29:46', '2024-03-31 14:32:46'),
(53, 'Kids T-Shirts', 'kids-t-shirts', NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, '286', ',285,286', NULL, '285', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-04-01 11:31:38', '2024-04-01 13:50:44'),
(54, 'Peshawari Sandal For kids', 'peshawari-sandal-for-kids', 1500, 2000, NULL, 46, NULL, NULL, NULL, NULL, '308', ',308,309', NULL, '309', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-04-01 13:20:40', '2024-04-01 13:29:26'),
(55, 'Brown Kids T-Shirts', 'brown-kids-t-shirts', NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, '310', ',310,311', NULL, '311', 1, 0, NULL, NULL, NULL, NULL, NULL, 1, '2024-04-01 14:01:45', '2024-04-01 14:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_collections`
--

CREATE TABLE `product_collections` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_collections`
--

INSERT INTO `product_collections` (`id`, `product_id`, `collection_id`, `is_enable`, `created_at`, `updated_at`) VALUES
(100, 26, 13, 1, '2024-03-09 04:27:19', '2024-03-09 04:27:19'),
(106, 32, 8, 1, '2024-03-14 00:53:43', '2024-03-14 00:53:43'),
(108, 35, 8, 1, '2024-03-14 01:18:41', '2024-03-14 01:18:41'),
(111, 34, 8, 1, '2024-03-14 01:36:25', '2024-03-14 01:36:25'),
(112, 33, 8, 1, '2024-03-14 01:36:55', '2024-03-14 01:36:55'),
(124, 36, 8, 1, '2024-03-17 21:49:27', '2024-03-17 21:49:27'),
(126, 37, 8, 1, '2024-03-22 13:43:01', '2024-03-22 13:43:01'),
(129, 27, 13, 1, '2024-03-30 13:30:08', '2024-03-30 13:30:08'),
(130, 19, 8, 1, '2024-04-01 11:35:58', '2024-04-01 11:35:58'),
(133, 20, 8, 1, '2024-04-01 11:43:46', '2024-04-01 11:43:46'),
(138, 22, 8, 1, '2024-04-01 12:01:49', '2024-04-01 12:01:49'),
(140, 21, 8, 1, '2024-04-01 12:04:57', '2024-04-01 12:04:57'),
(141, 23, 13, 1, '2024-04-01 12:11:51', '2024-04-01 12:11:51'),
(142, 24, 13, 1, '2024-04-01 13:15:17', '2024-04-01 13:15:17'),
(143, 25, 10, 1, '2024-04-01 13:18:49', '2024-04-01 13:18:49'),
(144, 25, 13, 1, '2024-04-01 13:18:49', '2024-04-01 13:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Admin1', 1, '2024-01-27 09:11:35', '2024-01-27 04:45:22', 1, 1),
(2, 'Super Admin', 1, '2024-01-27 09:11:35', '0000-00-00 00:00:00', 1, NULL),
(3, 'Title 1', 1, '2024-01-27 04:27:59', '2024-01-27 04:27:59', 1, NULL),
(4, 'customer1', 0, '2024-01-27 04:28:38', '2024-01-27 04:45:29', 1, 1),
(5, 'New Role', 1, '2024-02-14 04:43:19', '2024-02-14 04:45:07', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `field` text NOT NULL,
  `value` text DEFAULT NULL,
  `type` text NOT NULL DEFAULT 'text',
  `sort` int(11) NOT NULL DEFAULT 0,
  `grouping` text DEFAULT NULL,
  `section_sorting` int(11) DEFAULT 0,
  `group_sorting` int(11) NOT NULL DEFAULT 0,
  `section` text DEFAULT 'others'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `value`, `type`, `sort`, `grouping`, `section_sorting`, `group_sorting`, `section`) VALUES
(1, 'site_title', 'Irha Wears', 'text', 1, 'general', 0, 0, 'others'),
(2, 'meta_title', 'irhawears', 'text', 2, 'seo', 0, 0, 'seo'),
(3, 'meta_description', 'irhawears where fashion matter', 'text', 3, 'seo', 0, 0, 'seo'),
(4, 'meta_keywords', 'irhawears,where fashion matter,', 'text', 4, 'seo', 0, 0, 'seo'),
(5, 'footer_credits', 'Copyright: 2024 <a href=\"#.\"><span class=\"color_red\">website name Here</span></a>. All Rights Reserved', 'text', 5, 'theme', 3, 0, 'footer'),
(6, 'phone_number', '+923045053276', 'text', 5, 'general', 0, 0, 'others'),
(7, 'email_address', 'irhawears@contact.com', 'text', 4, 'general', 0, 0, 'others'),
(8, 'address', 'Address Will come here.', 'text', 4, 'general', 0, 0, 'others'),
(9, 'domain', 'www.yourdomain.com', 'text', 4, 'general', 0, 0, 'others'),
(15, 'logo', '148', 'image', 1, 'general', 0, 0, 'others'),
(16, 'fav_icon', '148', 'image', 1, 'general', 0, 0, 'others'),
(22, 'facebook_link', '..', 'text', 1, 'social_media', 0, 0, 'social_media'),
(23, 'youtube_link', '..', 'text', 1, 'social_media', 0, 0, 'social_media'),
(24, 'twitter_link', '..', 'text', 1, 'social_media', 0, 0, 'social_media'),
(25, 'instagram_link', '..', 'text', 1, 'social_media', 0, 0, 'social_media'),
(27, 'admin_logo', 'www.yourdomain.com', 'image', 4, 'admin_settings', 0, 0, 'others'),
(28, 'admin_favicon', 'www.yourdomain.com', 'image', 4, 'admin_settings', 0, 0, 'others'),
(30, 'site_currency', 'PKR', 'text', 5, 'shop_settings', 0, 0, 'shop'),
(31, 'topbar_title', 'Welcome To Irha wear', 'text', 1, 'theme', 1, 0, 'header'),
(32, 'site_short_details', 'Irhawears.com', 'text', 1, 'general', 0, 0, 'others'),
(33, 'home_page_banner', '237', 'image', 1, 'theme', 2, 0, 'homepage'),
(34, 'delivery_charges', '100', 'text', 5, 'shop_settings', 0, 0, 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `button` text DEFAULT NULL,
  `alignment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slug`, `details`, `image_id`, `alt`, `sort`, `link`, `is_enable`, `button`, `alignment`, `created_at`, `updated_at`) VALUES
(3, 'IRHA WEARS MAN\'S & WOMAN COLLECTION', NULL, '2024', 240, NULL, 99, 'https://www.irhawears.com/shop?category=waistcoat', 1, 'SHOP NOW', 'center', '2024-03-03 10:47:11', '2024-04-01 13:39:42'),
(4, 'IRHA WEARS MAN\'S & WOMAN COLLECTION', NULL, '2024', 239, NULL, 2, 'https://www.irhawears.com/shop?category=waistcoat', 1, '99', 'center', '2024-03-03 10:50:21', '2024-04-01 13:39:55'),
(5, 'IRHA WEARS MAN\'S & WOMAN COLLECTION', NULL, '2024', 238, NULL, 80, 'https://www.irhawears.com/shop?category=waistcoat', 1, 'Bxbjd', 'center', '2024-03-03 10:57:26', '2024-04-01 13:39:15'),
(7, 'IRHA WEAR', NULL, NULL, 146, NULL, 3, 'https://www.irhawears.com/shop?category=bridal', 1, 'MM', 'left', '2024-03-09 02:19:43', '2024-04-01 13:38:10'),
(8, 'IRHA WEAR', NULL, NULL, 147, NULL, 22, 'https://www.irhawears.com/shop?category=bridal', 1, 'KU', 'left', '2024-03-09 03:58:40', '2024-04-01 13:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `permissions` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `email_token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `email_verified_at`, `password`, `path`, `remember_token`, `created_at`, `updated_at`, `status`, `created_by`, `permissions`, `profile_image`, `email_token`) VALUES
(1, 'Owais Azam', 1, 'admin@gmail.com', NULL, '$2y$10$xhPEybNF4n6iu.wTTK/V3OilB31PZwiaM8BjUdWWsHKoo4nrtqtGq', '/upload/profile/6645e5d50046e.jpg', NULL, NULL, NULL, 1, 1, 'dashboard_management,store_category_management,store_management,coupons_management,blogs_category_management,blogs_management,site_management,user_rights_management', NULL, NULL),
(17, 'wasifansari912', 2, 'wasifansari912@gmail.com', NULL, '$2y$10$8WCOdYEZ32Flt1QbMleKmOycoSvSM/J8PsYaYncpnNeem0/0dgfa2', '/upload/profile/6645e5d50046e.jpg', NULL, '2024-04-04 19:28:42', '2024-04-04 19:28:42', 1, 1, NULL, NULL, NULL),
(26, 'Shakeeb', 1, 'man411210@gmail.com', NULL, '$2y$10$jXwnSdlhw//HqBBQs7fqCO2iZXO9HzV12X58VDOIqRDAhIDVSZ5nm', '/upload/profile/6646487f6412a.jpg', NULL, '2024-05-16 12:55:11', '2024-05-16 12:55:11', 1, 26, NULL, '/upload/profile/6646487f6412a.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `title`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 'xl', 1, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(2, 'l', 1, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(3, 'm', 1, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(4, 's', 1, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(5, 'red', 2, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(6, 'blue', 2, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(7, 'green', 2, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(8, 'pink', 2, '2024-02-16 07:55:17', '2024-02-16 07:55:17'),
(9, '24', 1, '2024-03-04 10:46:02', '2024-03-04 10:46:02'),
(10, '26', 1, '2024-03-04 10:46:02', '2024-03-04 10:46:02'),
(11, '28', 1, '2024-03-04 10:46:27', '2024-03-04 10:46:27'),
(12, '30', 1, '2024-03-04 10:46:27', '2024-03-04 10:46:27'),
(13, '20', 1, '2024-03-09 09:22:27', '2024-03-09 09:22:27'),
(14, '22', 1, '2024-03-09 09:22:27', '2024-03-09 09:22:27'),
(15, 'White', 2, '2024-03-09 09:23:55', '2024-03-09 09:23:55'),
(16, 'Black', 2, '2024-03-09 09:23:55', '2024-03-09 09:23:55'),
(18, 'Brown', 2, '2024-03-17 17:47:10', '2024-03-17 17:47:10'),
(19, '1', 1, '2024-04-01 09:27:22', '2024-04-01 09:27:22'),
(20, '2', 1, '2024-04-01 09:27:22', '2024-04-01 09:27:22'),
(21, '3', 1, '2024-04-01 09:27:50', '2024-04-01 09:27:50'),
(22, '4', 1, '2024-04-01 09:27:50', '2024-04-01 09:27:50'),
(23, 'Dark Brown', 2, '2024-04-01 09:30:54', '2024-04-01 09:30:54'),
(24, 'Croc Light Brown', 2, '2024-04-01 09:30:54', '2024-04-01 09:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int(11) NOT NULL,
  `product_id` bigint(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `product_id`, `sku`, `quantity`, `price`, `image`, `created_at`, `updated_at`) VALUES
(236, 27, '24', 10, 2400, '98', '2024-03-05 02:55:27', '2024-03-30 13:30:08'),
(237, 27, '26', 10, 2400, '98', '2024-03-05 02:55:27', '2024-03-30 13:30:08'),
(238, 27, '28', 10, 2400, '98', '2024-03-05 02:55:27', '2024-03-30 13:30:08'),
(239, 28, 'xl-blue', 10, 5300, '106', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(240, 28, 'xl-green', 10, 5300, '108', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(241, 28, 'l-blue', 10, 5300, '107', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(242, 28, 'l-green', 10, 5300, '105', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(243, 28, 'm-blue', 10, 5300, '108', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(244, 28, 'm-green', 10, 5300, '106', '2024-03-05 03:18:24', '2024-03-05 04:40:23'),
(245, 29, '24', 4, 2500, '111', '2024-03-05 13:19:35', '2024-03-05 13:24:47'),
(246, 29, '26', 4, 2500, '112', '2024-03-05 13:19:35', '2024-03-05 13:24:47'),
(247, 29, '28', 4, 2500, '111', '2024-03-05 13:19:35', '2024-03-05 13:24:47'),
(251, 31, 'xl-blue', 1, 9000, '130', '2024-03-07 02:21:00', '2024-03-11 07:52:35'),
(253, 26, '24-pink', 10, 2400, '102', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(254, 26, '24-Black', 10, 2400, '101', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(255, 26, '26-pink', 10, 2400, '101', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(256, 26, '26-Black', 10, 2400, '101', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(257, 26, '28-pink', 10, 2400, '101', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(258, 26, '28-Black', 10, 2400, '101', '2024-03-09 04:26:21', '2024-03-09 04:27:19'),
(259, 23, '26-blue', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(260, 23, '26-Black', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(261, 23, '28-blue', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(262, 23, '28-Black', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(263, 23, '30-blue', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(264, 23, '30-Black', 10, 2200, '82', '2024-03-09 04:28:41', '2024-04-01 12:11:51'),
(265, 25, '24-White', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(266, 25, '24-Black', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(267, 25, '26-White', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(268, 25, '26-Black', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(269, 25, '28-White', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(270, 25, '28-Black', 10, 2500, '86', '2024-03-09 04:34:46', '2024-04-01 13:18:49'),
(271, 24, '24-White', 10, 3100, '83', '2024-03-09 05:10:58', '2024-04-01 13:15:17'),
(272, 24, '24-Black', 10, 3100, '84', '2024-03-09 05:10:58', '2024-04-01 13:15:17'),
(273, 24, '28-White', 10, 3100, '83', '2024-03-09 05:10:58', '2024-04-01 13:15:17'),
(274, 24, '28-Black', 10, 3100, '83', '2024-03-09 05:10:58', '2024-04-01 13:15:17'),
(275, 32, 'xl-White', 10, 2200, '152', '2024-03-14 00:49:26', '2024-03-14 00:53:43'),
(276, 32, 'xl-Black', 10, 2200, '154', '2024-03-14 00:49:26', '2024-03-14 00:53:43'),
(277, 32, 'm-White', 10, 2200, '154', '2024-03-14 00:49:26', '2024-03-14 00:53:43'),
(278, 32, 'm-Black', 10, 2200, '154', '2024-03-14 00:49:26', '2024-03-14 00:53:43'),
(279, 33, 'xl-White', 10, 2200, '153', '2024-03-14 00:55:49', '2024-03-14 01:36:55'),
(280, 33, 'xl-Black', 10, 2200, '159', '2024-03-14 00:55:49', '2024-03-14 01:36:55'),
(281, 33, 'm-White', 10, 2200, '153', '2024-03-14 00:55:49', '2024-03-14 01:36:55'),
(282, 33, 'm-Black', 10, 2200, '159', '2024-03-14 00:55:49', '2024-03-14 01:36:55'),
(290, 34, 'xl-blue', 10, 2200, '158', '2024-03-14 01:04:09', '2024-03-14 01:36:25'),
(291, 34, 'xl-Black', 10, 2200, '157', '2024-03-14 01:04:10', '2024-03-14 01:36:25'),
(292, 34, 'm-blue', 10, 2200, '157', '2024-03-14 01:04:10', '2024-03-14 01:36:25'),
(293, 34, 'm-Black', 10, 2200, '158', '2024-03-14 01:04:10', '2024-03-14 01:36:25'),
(294, 35, 'xl-blue', 10, 3500, '160', '2024-03-14 01:09:38', '2024-03-14 01:18:41'),
(305, 36, 'xl', 10, 3500, '162', '2024-03-17 21:48:56', '2024-03-17 21:49:27'),
(306, 36, 'l', 10, 3500, '163', '2024-03-17 21:48:56', '2024-03-17 21:49:27'),
(307, 30, 'l', 1, 9000, '134', '2024-03-17 21:50:43', '2024-03-28 20:15:29'),
(308, 30, 'm', 1, 9000, '128', '2024-03-17 21:50:43', '2024-03-28 20:15:29'),
(315, 39, 'xl-Black', 10, 4200, '222', '2024-03-21 09:23:09', '2024-03-21 09:24:10'),
(316, 37, 'xl', 10, 6000, '167', '2024-03-22 13:37:50', '2024-03-22 13:43:01'),
(317, 37, 'l', 10, 6000, '167', '2024-03-22 13:37:50', '2024-03-22 13:43:01'),
(318, 19, 'xl', 10, 5000, '65', '2024-03-22 13:44:03', '2024-04-01 11:35:58'),
(319, 19, 'l', 10, 5000, '65', '2024-03-22 13:44:03', '2024-04-01 11:35:58'),
(320, 20, 'xl', 10, 3200, '292', '2024-03-22 13:47:17', '2024-04-01 11:43:46'),
(321, 20, 'l', 10, 3200, '293', '2024-03-22 13:47:17', '2024-04-01 11:43:46'),
(324, 41, 'xl', 10, 2200, '270', '2024-03-26 14:26:55', '2024-03-26 14:27:26'),
(325, 41, 'l', 10, 2200, '271', '2024-03-26 14:26:55', '2024-03-26 14:27:26'),
(326, 42, 'xl', 10, 2200, '269', '2024-03-26 14:29:36', '2024-03-26 14:30:03'),
(327, 42, 'l', 10, 2200, '268', '2024-03-26 14:29:36', '2024-03-26 14:30:03'),
(328, 43, 'xl', 10, 2200, '261', '2024-03-26 14:31:14', '2024-03-26 14:32:34'),
(329, 43, 'l', 10, 2200, '273', '2024-03-26 14:31:14', '2024-03-26 14:32:34'),
(330, 44, 'xl', 10, 2200, '272', '2024-03-26 14:44:31', '2024-03-26 14:44:57'),
(331, 44, 'l', 10, 2200, '267', '2024-03-26 14:44:31', '2024-03-26 14:44:57'),
(332, 45, 'm', 4, 9000, '206', '2024-03-26 22:36:35', '2024-03-28 20:10:44'),
(333, 46, 'm', 4, 14000, '203', '2024-03-26 22:41:40', '2024-03-28 20:14:33'),
(334, 47, 'xl', 10, 2200, '251', '2024-03-27 09:51:37', '2024-03-27 09:57:27'),
(335, 47, 'l', 10, 2200, '252', '2024-03-27 09:51:37', '2024-03-27 09:57:27'),
(336, 48, 'xl', 10, 2200, '256', '2024-03-27 10:40:47', '2024-03-31 14:13:00'),
(337, 48, 'l', 10, 2200, '255', '2024-03-27 10:40:47', '2024-03-31 14:13:00'),
(338, 49, 'xl', 10, 2200, '258', '2024-03-27 10:56:35', '2024-03-27 11:03:51'),
(339, 49, 'l', 10, 2200, '257', '2024-03-27 10:56:35', '2024-03-27 11:03:51'),
(340, 50, 'xl', 10, 2200, '277', '2024-03-31 13:55:15', '2024-03-31 13:57:54'),
(341, 50, 'l', 10, 2200, '276', '2024-03-31 13:55:15', '2024-03-31 13:57:54'),
(342, 50, 'm', 10, 2200, '274', '2024-03-31 13:55:15', '2024-03-31 13:57:54'),
(343, 50, 's', 10, 2200, '275', '2024-03-31 13:55:15', '2024-03-31 13:57:54'),
(344, 51, 'xl', 10, 2200, '278', '2024-03-31 14:17:53', '2024-04-05 17:50:57'),
(345, 51, 'l', 10, 2200, '279', '2024-03-31 14:17:53', '2024-04-05 17:50:57'),
(346, 51, 'm', 10, 2200, '281', '2024-03-31 14:17:53', '2024-04-05 17:50:57'),
(347, 51, 's', 10, 2200, '277', '2024-03-31 14:17:53', '2024-04-05 17:50:57'),
(348, 52, 'xl', 10, 2200, '282', '2024-03-31 14:31:42', '2024-03-31 14:32:46'),
(349, 52, 'l', 10, 2200, '283', '2024-03-31 14:31:42', '2024-03-31 14:32:46'),
(350, 52, 'm', 10, 2200, '284', '2024-03-31 14:31:42', '2024-03-31 14:32:46'),
(351, 52, 's', 10, 2200, '282', '2024-03-31 14:31:42', '2024-03-31 14:32:46'),
(352, 21, 'xl', 10, 4000, '73', '2024-04-01 11:52:20', '2024-04-01 12:04:57'),
(353, 21, 'l', 10, 4000, '74', '2024-04-01 11:52:20', '2024-04-01 12:04:57'),
(354, 21, 'm', 10, 4000, '73', '2024-04-01 11:52:20', '2024-04-01 12:04:57'),
(355, 22, 'xl', 10, 3200, '72', '2024-04-01 11:54:06', '2024-04-01 12:01:49'),
(356, 22, 'l', 10, 3200, '71', '2024-04-01 11:54:06', '2024-04-01 12:01:49'),
(357, 22, 'm', 10, 3200, '72', '2024-04-01 11:54:06', '2024-04-01 12:01:49'),
(358, 22, 's', 10, 3200, '71', '2024-04-01 11:54:06', '2024-04-01 12:01:49'),
(363, 54, '1-Black', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(364, 54, '1-Dark Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(365, 54, '1-Croc Light Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(366, 54, '2-Black', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(367, 54, '2-Dark Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(368, 54, '2-Croc Light Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(369, 54, '3-Black', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(370, 54, '3-Dark Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(371, 54, '3-Croc Light Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(372, 54, '4-Black', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(373, 54, '4-Dark Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53'),
(374, 54, '4-Croc Light Brown', 10, 1500, '308', '2024-04-01 13:32:13', '2024-04-01 13:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `variation_attributes`
--

CREATE TABLE `variation_attributes` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) DEFAULT NULL,
  `attribute_id` int(50) DEFAULT NULL,
  `value_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `variation_attributes`
--

INSERT INTO `variation_attributes` (`id`, `variation_id`, `attribute_id`, `value_id`, `value`, `created_at`, `updated_at`) VALUES
(342, 236, 1, 9, '24', '2024-03-05 02:55:27', '2024-03-05 02:55:27'),
(343, 237, 1, 10, '26', '2024-03-05 02:55:27', '2024-03-05 02:55:27'),
(344, 238, 1, 11, '28', '2024-03-05 02:55:27', '2024-03-05 02:55:27'),
(345, 239, 1, 1, 'xl', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(346, 239, 2, 6, 'blue', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(347, 240, 1, 1, 'xl', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(348, 240, 2, 7, 'green', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(349, 241, 1, 2, 'l', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(350, 241, 2, 6, 'blue', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(351, 242, 1, 2, 'l', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(352, 242, 2, 7, 'green', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(353, 243, 1, 3, 'm', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(354, 243, 2, 6, 'blue', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(355, 244, 1, 3, 'm', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(356, 244, 2, 7, 'green', '2024-03-05 03:18:24', '2024-03-05 03:18:24'),
(357, 245, 1, 9, '24', '2024-03-05 13:19:35', '2024-03-05 13:19:35'),
(358, 246, 1, 10, '26', '2024-03-05 13:19:35', '2024-03-05 13:19:35'),
(359, 247, 1, 11, '28', '2024-03-05 13:19:35', '2024-03-05 13:19:35'),
(365, 251, 1, 1, 'xl', '2024-03-07 02:21:00', '2024-03-07 02:21:00'),
(366, 251, 2, 6, 'blue', '2024-03-07 02:21:00', '2024-03-07 02:21:00'),
(369, 253, 1, 9, '24', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(370, 253, 2, 8, 'pink', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(371, 254, 1, 9, '24', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(372, 254, 2, 16, 'Black', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(373, 255, 1, 10, '26', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(374, 255, 2, 8, 'pink', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(375, 256, 1, 10, '26', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(376, 256, 2, 16, 'Black', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(377, 257, 1, 11, '28', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(378, 257, 2, 8, 'pink', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(379, 258, 1, 11, '28', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(380, 258, 2, 16, 'Black', '2024-03-09 04:26:21', '2024-03-09 04:26:21'),
(381, 259, 1, 10, '26', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(382, 259, 2, 6, 'blue', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(383, 260, 1, 10, '26', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(384, 260, 2, 16, 'Black', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(385, 261, 1, 11, '28', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(386, 261, 2, 6, 'blue', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(387, 262, 1, 11, '28', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(388, 262, 2, 16, 'Black', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(389, 263, 1, 12, '30', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(390, 263, 2, 6, 'blue', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(391, 264, 1, 12, '30', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(392, 264, 2, 16, 'Black', '2024-03-09 04:28:41', '2024-03-09 04:28:41'),
(393, 265, 1, 9, '24', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(394, 265, 2, 15, 'White', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(395, 266, 1, 9, '24', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(396, 266, 2, 16, 'Black', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(397, 267, 1, 10, '26', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(398, 267, 2, 15, 'White', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(399, 268, 1, 10, '26', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(400, 268, 2, 16, 'Black', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(401, 269, 1, 11, '28', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(402, 269, 2, 15, 'White', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(403, 270, 1, 11, '28', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(404, 270, 2, 16, 'Black', '2024-03-09 04:34:46', '2024-03-09 04:34:46'),
(405, 271, 1, 9, '24', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(406, 271, 2, 15, 'White', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(407, 272, 1, 9, '24', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(408, 272, 2, 16, 'Black', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(409, 273, 1, 11, '28', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(410, 273, 2, 15, 'White', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(411, 274, 1, 11, '28', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(412, 274, 2, 16, 'Black', '2024-03-09 05:10:58', '2024-03-09 05:10:58'),
(413, 275, 1, 1, 'xl', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(414, 275, 2, 15, 'White', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(415, 276, 1, 1, 'xl', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(416, 276, 2, 16, 'Black', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(417, 277, 1, 3, 'm', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(418, 277, 2, 15, 'White', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(419, 278, 1, 3, 'm', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(420, 278, 2, 16, 'Black', '2024-03-14 00:49:26', '2024-03-14 00:49:26'),
(421, 279, 1, 1, 'xl', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(422, 279, 2, 15, 'White', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(423, 280, 1, 1, 'xl', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(424, 280, 2, 16, 'Black', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(425, 281, 1, 3, 'm', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(426, 281, 2, 15, 'White', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(427, 282, 1, 3, 'm', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(428, 282, 2, 16, 'Black', '2024-03-14 00:55:49', '2024-03-14 00:55:49'),
(443, 290, 1, 1, 'xl', '2024-03-14 01:04:09', '2024-03-14 01:04:09'),
(444, 290, 2, 6, 'blue', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(445, 291, 1, 1, 'xl', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(446, 291, 2, 16, 'Black', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(447, 292, 1, 3, 'm', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(448, 292, 2, 6, 'blue', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(449, 293, 1, 3, 'm', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(450, 293, 2, 16, 'Black', '2024-03-14 01:04:10', '2024-03-14 01:04:10'),
(451, 294, 1, 1, 'xl', '2024-03-14 01:09:38', '2024-03-14 01:09:38'),
(452, 294, 2, 6, 'blue', '2024-03-14 01:09:38', '2024-03-14 01:09:38'),
(473, 305, 1, 1, 'xl', '2024-03-17 21:48:56', '2024-03-17 21:48:56'),
(474, 306, 1, 2, 'l', '2024-03-17 21:48:56', '2024-03-17 21:48:56'),
(475, 307, 1, 2, 'l', '2024-03-17 21:50:43', '2024-03-17 21:50:43'),
(476, 308, 1, 3, 'm', '2024-03-17 21:50:43', '2024-03-17 21:50:43'),
(489, 315, 1, 1, 'xl', '2024-03-21 09:23:09', '2024-03-21 09:23:09'),
(490, 315, 2, 16, 'Black', '2024-03-21 09:23:09', '2024-03-21 09:23:09'),
(491, 316, 1, 1, 'xl', '2024-03-22 13:37:50', '2024-03-22 13:37:50'),
(492, 317, 1, 2, 'l', '2024-03-22 13:37:50', '2024-03-22 13:37:50'),
(493, 318, 1, 1, 'xl', '2024-03-22 13:44:03', '2024-03-22 13:44:03'),
(494, 319, 1, 2, 'l', '2024-03-22 13:44:03', '2024-03-22 13:44:03'),
(495, 320, 1, 1, 'xl', '2024-03-22 13:47:17', '2024-03-22 13:47:17'),
(496, 321, 1, 2, 'l', '2024-03-22 13:47:17', '2024-03-22 13:47:17'),
(499, 324, 1, 1, 'xl', '2024-03-26 14:26:55', '2024-03-26 14:26:55'),
(500, 325, 1, 2, 'l', '2024-03-26 14:26:55', '2024-03-26 14:26:55'),
(501, 326, 1, 1, 'xl', '2024-03-26 14:29:36', '2024-03-26 14:29:36'),
(502, 327, 1, 2, 'l', '2024-03-26 14:29:36', '2024-03-26 14:29:36'),
(503, 328, 1, 1, 'xl', '2024-03-26 14:31:14', '2024-03-26 14:31:14'),
(504, 329, 1, 2, 'l', '2024-03-26 14:31:14', '2024-03-26 14:31:14'),
(505, 330, 1, 1, 'xl', '2024-03-26 14:44:31', '2024-03-26 14:44:31'),
(506, 331, 1, 2, 'l', '2024-03-26 14:44:31', '2024-03-26 14:44:31'),
(507, 332, 1, 3, 'm', '2024-03-26 22:36:35', '2024-03-26 22:36:35'),
(508, 333, 1, 3, 'm', '2024-03-26 22:41:40', '2024-03-26 22:41:40'),
(509, 334, 1, 1, 'xl', '2024-03-27 09:51:37', '2024-03-27 09:51:37'),
(510, 335, 1, 2, 'l', '2024-03-27 09:51:37', '2024-03-27 09:51:37'),
(511, 336, 1, 1, 'xl', '2024-03-27 10:40:47', '2024-03-27 10:40:47'),
(512, 337, 1, 2, 'l', '2024-03-27 10:40:47', '2024-03-27 10:40:47'),
(513, 338, 1, 1, 'xl', '2024-03-27 10:56:35', '2024-03-27 10:56:35'),
(514, 339, 1, 2, 'l', '2024-03-27 10:56:35', '2024-03-27 10:56:35'),
(515, 340, 1, 1, 'xl', '2024-03-31 13:55:15', '2024-03-31 13:55:15'),
(516, 341, 1, 2, 'l', '2024-03-31 13:55:15', '2024-03-31 13:55:15'),
(517, 342, 1, 3, 'm', '2024-03-31 13:55:15', '2024-03-31 13:55:15'),
(518, 343, 1, 4, 's', '2024-03-31 13:55:15', '2024-03-31 13:55:15'),
(519, 344, 1, 1, 'xl', '2024-03-31 14:17:53', '2024-03-31 14:17:53'),
(520, 345, 1, 2, 'l', '2024-03-31 14:17:53', '2024-03-31 14:17:53'),
(521, 346, 1, 3, 'm', '2024-03-31 14:17:53', '2024-03-31 14:17:53'),
(522, 347, 1, 4, 's', '2024-03-31 14:17:53', '2024-03-31 14:17:53'),
(523, 348, 1, 1, 'xl', '2024-03-31 14:31:42', '2024-03-31 14:31:42'),
(524, 349, 1, 2, 'l', '2024-03-31 14:31:42', '2024-03-31 14:31:42'),
(525, 350, 1, 3, 'm', '2024-03-31 14:31:42', '2024-03-31 14:31:42'),
(526, 351, 1, 4, 's', '2024-03-31 14:31:42', '2024-03-31 14:31:42'),
(527, 352, 1, 1, 'xl', '2024-04-01 11:52:20', '2024-04-01 11:52:20'),
(528, 353, 1, 2, 'l', '2024-04-01 11:52:20', '2024-04-01 11:52:20'),
(529, 354, 1, 3, 'm', '2024-04-01 11:52:20', '2024-04-01 11:52:20'),
(530, 355, 1, 1, 'xl', '2024-04-01 11:54:06', '2024-04-01 11:54:06'),
(531, 356, 1, 2, 'l', '2024-04-01 11:54:06', '2024-04-01 11:54:06'),
(532, 357, 1, 3, 'm', '2024-04-01 11:54:06', '2024-04-01 11:54:06'),
(533, 358, 1, 4, 's', '2024-04-01 11:54:06', '2024-04-01 11:54:06'),
(538, 363, 1, 19, '1', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(539, 363, 2, 16, 'Black', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(540, 364, 1, 19, '1', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(541, 364, 2, 23, 'Dark Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(542, 365, 1, 19, '1', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(543, 365, 2, 24, 'Croc Light Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(544, 366, 1, 20, '2', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(545, 366, 2, 16, 'Black', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(546, 367, 1, 20, '2', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(547, 367, 2, 23, 'Dark Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(548, 368, 1, 20, '2', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(549, 368, 2, 24, 'Croc Light Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(550, 369, 1, 21, '3', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(551, 369, 2, 16, 'Black', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(552, 370, 1, 21, '3', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(553, 370, 2, 23, 'Dark Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(554, 371, 1, 21, '3', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(555, 371, 2, 24, 'Croc Light Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(556, 372, 1, 22, '4', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(557, 372, 2, 16, 'Black', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(558, 373, 1, 22, '4', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(559, 373, 2, 23, 'Dark Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(560, 374, 1, 22, '4', '2024-04-01 13:32:13', '2024-04-01 13:32:13'),
(561, 374, 2, 24, 'Croc Light Brown', '2024-04-01 13:32:13', '2024-04-01 13:32:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_relation_inside` (`parent_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_relation_parent_id` (`parent_id`),
  ADD KEY `menu_parent_id_relation` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_relation` (`order_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_collections`
--
ALTER TABLE `product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `variation_attributes`
--
ALTER TABLE `variation_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pva_product_variation_id_to_variation_id` (`variation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_collections`
--
ALTER TABLE `product_collections`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT for table `variation_attributes`
--
ALTER TABLE `variation_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `category_relation_inside` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_relation_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_parent_id_relation` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id_relation` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `product_to_product_variation_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_attributes`
--
ALTER TABLE `variation_attributes`
  ADD CONSTRAINT `pva_product_variation_id_to_variation_id` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
