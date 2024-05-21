-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 01:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `short_des` text DEFAULT NULL,
  `long_des` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `banner` text DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `banner_alt` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `featured1` int(11) DEFAULT NULL,
  `featured2` int(11) DEFAULT 0,
  `featured3` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `category_id`, `meta_keywords`, `short_des`, `long_des`, `created_at`, `updated_at`, `banner`, `sort`, `banner_alt`, `alt`, `featured1`, `featured2`, `featured3`) VALUES
(6, 'Test 1', 'test-1', 'blog_65a57bb2d4a72.jpg', 'Meta Title', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', 8, '1as,asd,asdasda,a,sda', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly.', '<p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p><p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span></p><p><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available</span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px;\"><br></span><br></p>', '2024-01-13 09:39:27', '2024-01-19 17:24:14', 'blog_banner_65aaf68695f3b.jpg', 5, 'test', '11', 1, 0, 0),
(7, 'Title', 'title', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 0, 1, 1),
(8, 'Title', 'title-2', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 1, 0, 0),
(9, 'Title', 'title-3', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 0, 1, 0),
(10, 'Title 4', 'title-4', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 1, 0, 0),
(11, 'Title 5', 'title-5', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', NULL, 0, 1),
(12, 'Title 6', 'title-6', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 0, 0, 0),
(13, 'Title 7', 'title-7', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', NULL, 1, 0),
(14, 'Title 8', 'title-8', 'blog_65a57df2b329a.jpg', 'Meta Title', 'Meta Description', 4, 'Meta Description,12', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', '2024-01-15 13:48:18', '2024-01-15 13:48:18', 'blog_banner_65a57df2bddf0.jpg', 1, 'Banner Alt', 'Image Alt', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
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
  `sort` int(11) DEFAULT NULL,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `is_enable`, `sort`, `alt`) VALUES
(4, 'Food & Health', 'food-health', 'blog_category_65a56ff5885e4.jpg', 'Meta Title', 'Meta Description', 'test1', '2024-01-15 12:55:20', '2024-01-15 12:55:20', 1, 0, '11'),
(5, 'Travel', 'travel', 'blog_category_65a56fe757bd5.jpg', NULL, NULL, NULL, '2024-01-15 12:48:23', '2024-01-15 12:48:23', 1, 0, NULL),
(6, 'Science & Technology', 'science-technology', 'blog_category_65a56fd68c169.jpg', 'Meta Title', 'Meta Description', 'keywords', '2024-01-15 12:48:06', '2024-01-15 12:48:06', 1, 3, NULL),
(8, 'Beauty & Fashion', 'beauty-fashion', 'blog_category_65a56fa665803.jpg', 'Meta Title', 'Meta Description', 'keyword1,keyword2,keyword3', '2024-01-19 17:20:18', '2024-01-19 17:20:18', 1, 2, 'Beauty & Fashion'),
(9, 'Food & Health1', 'food-health1', 'blog_category_65aaf511401f4.jpg', 'Meta Title', 'Meta Description', 'keyword1', '2024-01-19 17:17:53', '2024-01-19 17:17:53', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `offer_name` varchar(255) DEFAULT NULL,
  `offer_box` varchar(255) DEFAULT NULL,
  `offer_details` text DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `code` text DEFAULT NULL,
  `tracking_link` text DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry` timestamp NULL DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `offer_name`, `offer_box`, `offer_details`, `store_id`, `code`, `tracking_link`, `type`, `created_at`, `is_enable`, `updated_at`, `expiry`, `sort`, `image`, `alt`) VALUES
(14, 'Offer Name 1', 'Offer Box 1', 'Offer Details 1', 18, NULL, 'Direct URL', 'active', '2024-01-14 05:17:13', 1, '2024-01-14 05:18:49', '2024-01-30 19:00:00', 0, 'coupon_65ab8e5f590d5.png', NULL),
(15, 'Offer Name', 'Offer Box', 'Offer Details', 19, '98406', 'www.google11.com', 'code', '2024-01-15 15:12:49', 1, '2024-01-20 04:11:59', '2024-01-30 19:00:00', 0, 'coupon_65ab8e5f590d5.png', NULL),
(16, 'Offer Name 1', 'Offer Box 1', 'Offer Details', 19, '98406', 'www.google11.com', 'code', '2024-01-15 15:12:49', 1, '2024-01-20 04:12:11', '2024-01-30 19:00:00', 0, 'coupon_65ab8e6b4bc5b.png', NULL),
(17, 'Offer Name 2', 'Offer Box 2', 'Offer Details', 19, '98406', 'www.google1.com', 'code', '2024-01-15 15:12:49', 1, '2024-01-15 15:13:27', '2024-01-30 19:00:00', 0, 'coupon_65ab8e5f590d5.png', NULL),
(18, 'Offer Name 3', 'Offer Box 3', 'Offer Details', 19, '98406', 'www.google1.com', 'code', '2024-01-15 15:12:49', 1, '2024-01-15 15:13:27', '2024-01-30 19:00:00', 0, 'coupon_65ab8e5f590d5.png', NULL),
(19, 'Offer Name 4', 'Offer Box 4', 'Offer Details', 19, '98406', 'www.google1.com', 'code', '2024-01-15 15:12:49', 1, '2024-01-15 15:13:27', '2024-01-30 19:00:00', 0, 'coupon_65ab8e5f590d5.png', NULL),
(20, 'COUPON 1', 'COUPON 1', 'COUPON 1', 20, '1', 'www.google1.com', 'code', '2024-01-20 02:46:07', 1, '2024-01-20 02:46:07', NULL, 0, 'coupon_65ab7a3fd0818.jpg', 'Image Alt');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `field` text NOT NULL,
  `value` text DEFAULT NULL,
  `type` text NOT NULL DEFAULT 'text',
  `sort` int(11) NOT NULL DEFAULT 0,
  `grouping` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `value`, `type`, `sort`, `grouping`) VALUES
(1, 'site_title', 'GET FINAL CHOICE', 'text', 1, 'site_settings'),
(2, 'blog_meta_tags', 'Meta Tags 1', 'text', 2, 'blog_settings'),
(3, 'blog_meta_description', 'Meta Description', 'text', 3, 'blog_settings'),
(4, 'blog_keywords', 'keyword1,keyword2,keyword3,keyword4', 'keywords', 4, 'blog_settings'),
(5, 'footer_credits', 'Copyright: 2024 <a href=\"#.\"><span class=\"color_red\">website name Here</span></a>. All Rights Reserved', 'text', 5, 'site_settings'),
(6, 'phone_number', '03333906535', 'text', 5, 'site_settings'),
(7, 'email_address', 'info@iGetFinalchoice.com', 'text', 4, 'site_settings'),
(8, 'address', 'Address Will come here.', 'text', 4, 'site_settings'),
(9, 'domain', 'www.yourdomain.com', 'text', 4, 'site_settings'),
(10, 'blog_banner', 'settings_blog_banner_65aaf35652433.jpg', 'image', 4, 'blog_settings'),
(11, 'store_banner', 'settings_store_banner_65ab830991c15.jpg', 'image', 4, 'store_settings'),
(12, 'store_meta_tags', 'Meta Tags 1', 'text', 2, 'store_settings'),
(13, 'store_keywords', 'keyword1,keyword2,keyword3,keyword4', 'keywords', 4, 'store_settings'),
(14, 'store_meta_description', 'Meta Description', 'text', 3, 'store_settings'),
(15, 'logo', 'settings_logo_65aadb59abf33.png', 'image', 1, 'site_settings'),
(16, 'fav_icon', 'settings_fav_icon_65aadb3928a64.png', 'image', 1, 'site_settings'),
(18, 'about_us', '<p>11111111</p>', 'textarea', 4, 'site_settings'),
(19, 'privacy_policy', '<p>sdasd</p>', 'textarea', 4, 'site_settings'),
(20, 'terms_&_conditions', '<p>sddssdsd</p>', 'textarea', 4, 'site_settings'),
(21, 'blog_banner_title', 'Well Come in <span>GET FINAL CHOICE</span>', 'text', 4, 'blog_settings'),
(22, 'facebook_link', '..', 'text', 1, 'site_settings'),
(23, 'youtube_link', '..', 'text', 1, 'site_settings'),
(24, 'twitter_link', '..', 'text', 1, 'site_settings'),
(25, 'instagram_link', '..', 'text', 1, 'site_settings'),
(26, 'store_banner_title', 'Well Come in <span>GET FINAL CHOICE</span>', 'text', 4, 'store_settings');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `tracking_url` text DEFAULT NULL,
  `direct_url` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `short_des` text DEFAULT NULL,
  `long_des` text DEFAULT NULL,
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `category_id`, `heading`, `tracking_url`, `direct_url`, `meta_keywords`, `short_des`, `long_des`, `is_enable`, `alt`) VALUES
(19, 'Store Name', 'store-name', 'store_65a590dcc5393.jpg', 'Meta Title', 'Meta Description', '2024-01-15 15:07:12', '2024-01-20 03:54:31', 11, 'promo_codes_coupon', 'www.google11.com', 'www.google11.com', 'Meta Description', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia', '<p><font color=\"#797979\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia</font></p><div><div>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia</div></div><div><br></div><div><div>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia</div></div><div><br></div><div><div>In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. Wikipedia</div></div><div><br></div>', 1, NULL),
(20, 'a store Name', 'a-store-name', 'store_65a590dcc5393.jpg', 'Meta Title', 'Meta Description', '2024-01-15 15:07:12', '2024-01-15 15:09:00', 11, 'promo_codes_coupon', 'www.google1.com', 'www.google1.com', 'Meta Description', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', 1, NULL),
(21, 'b store Name', 'b-store-name', 'store_65a590dcc5393.jpg', 'Meta Title', 'Meta Description', '2024-01-15 15:07:12', '2024-01-15 15:09:00', 11, 'promo_codes_coupon', 'www.google1.com', 'www.google1.com', 'Meta Description', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', 1, NULL),
(22, 'c store Name', 'c-store-name', 'store_65a590dcc5393.jpg', 'Meta Title', 'Meta Description', '2024-01-15 15:07:12', '2024-01-15 15:09:00', 11, 'promo_codes_coupon', 'www.google1.com', 'www.google1.com', 'Meta Description', '<p><span style=\"color: rgb(121, 121, 121);\">Short Description</span><br></p>', '<p><span style=\"color: rgb(121, 121, 121);\">Long Description</span><br></p>', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE `store_categories` (
  `id` bigint(20) NOT NULL,
  `title` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_enable` int(11) NOT NULL DEFAULT 1,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `title`, `slug`, `image`, `created_at`, `updated_at`, `is_enable`, `alt`) VALUES
(4, 'Furniture', NULL, '4.png', '2024-01-06 10:45:29', '2024-01-06 10:45:29', 1, NULL),
(5, 'Games and Toys', NULL, '5.png', '2024-01-06 10:45:45', '2024-01-06 10:45:45', 1, NULL),
(7, 'Hobbie', NULL, '7.png', '2024-01-06 10:45:09', '2024-01-06 10:45:09', 1, NULL),
(10, 'Shoes', 'shoes', 'store_category_65a583ab44eca.jpg', '2024-01-16 13:27:14', '2024-01-16 13:27:14', 1, 'alt'),
(11, 'Accessories', 'accessories', 'store_category_65ab8630732e0.jpg', '2024-01-20 03:37:04', '2024-01-20 03:37:04', 1, NULL),
(17, 'tetst', 'tetst', 'store_category_65ab861ac614c.jpg', '2024-01-20 03:36:42', '2024-01-20 03:36:42', 1, 'Image Alt');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `permissions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `created_by`, `permissions`) VALUES
(1, 'Owais Azam', 'admin@gmail.com', NULL, '$2y$10$xhPEybNF4n6iu.wTTK/V3OilB31PZwiaM8BjUdWWsHKoo4nrtqtGq', NULL, NULL, NULL, 1, 1, 'dashboard_management,store_category_management,store_management,coupons_management,blogs_category_management,blogs_management,site_management,user_rights_management'),
(2, 'Owais Azam 1', 'iamowaisazam221@gmail.com', NULL, '$2y$10$Rx7ppVgpkUz.BEsxqv4P2.o6F4BGJxuQ.Yws1YxdnY.RUzmMvjZIS', NULL, '2024-01-03 12:25:47', '2024-01-03 12:25:47', 1, 2, 'store_management,coupons_management,blogs_management,site_management,user_rights_management'),
(3, 'User 1', 'user1@gmail.com', NULL, '$2y$10$ZlbiEzXleDKGKZkcztA4eeQ5grxA2d0Esd3692x0ZNvP7y5ynzQ.2', NULL, '2024-01-03 10:48:55', '2024-01-03 10:48:55', 1, 1, NULL),
(4, 'Title 1', 'admin1@gmail.com', NULL, '$2y$10$uQxrxCxNOeWE729Tm85iUO705DAHwdK1zLRTPvVwjhpvvIyJ2NcUa', NULL, '2024-01-03 10:51:41', '2024-01-03 10:51:41', 1, 1, NULL),
(5, 'admin1', 'superadmin@example.com', NULL, '$2y$10$EfBxTv7n0BLsT4MqTzsJteDRtxz1wjFr92H0HpDEJRS5SJcMQOPu6', NULL, '2024-01-03 10:52:44', '2024-01-03 10:52:44', 1, 1, 'store_management,coupons_management,site_management');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
