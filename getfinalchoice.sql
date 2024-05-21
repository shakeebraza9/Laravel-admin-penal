-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 04, 2024 at 05:11 AM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `getfinalchoice`
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
(15, 'Embracing Hygge: The Danish Art of Coziness', 'embracing-hygge-the-danish-art-of-coziness', 'blog_660ed6ba64def.jpg', 'Embracing Hygge: The Danish Art of Coziness', 'In the midst of hectic schedules and never-ending to-do lists, finding moments of tranquility and coziness becomes essential. Enter hygge, the Danish concept of embracing warmth, comfort, and togetherness.', 10, 'hectic,moments,coziness,essential,Danish,discover,contentment,hygge', 'In the midst of hectic schedules and never-ending to-do lists, finding moments of tranquility and coziness becomes essential. Enter hygge, the Danish concept of embracing warmth, comfort, and togetherness.', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve;\">In the midst of hectic schedules and never-ending to-do lists, finding moments of tranquility and coziness becomes essential. Enter hygge, the Danish concept of embracing warmth, comfort, and togetherness. From curling up with a good book and a cup of hot cocoa to gathering with loved ones around a crackling fireplace, hygge encourages us to slow down and savor life\'s simple pleasures. Join us as we explore the art of hygge and discover how to bring more coziness and contentment into your daily life.</span><br></p>', '2024-04-04 23:25:21', '2024-04-04 23:51:39', 'blog_banner_660eda9b2d611.jpg', 1, 'Embracing Hygge: The Danish Art of Coziness', 'Embracing Hygge: The Danish Art of Coziness', 1, 1, 1),
(16, 'Exploring the Serenity of Nature: A Guide to Forest Bathing', 'exploring-the-serenity-of-nature-a-guide-to-forest-bathing', 'blog_660ed6d647768.jpg', 'Exploring the Serenity of Nature: A Guide to Forest Bathing', 'Amidst the hustle and bustle of modern life, finding moments of peace and connection with nature is more important than ever.', 10, 'Exploring,Serenity,connection,rustle,body,powers,restorative,Japanese', 'Amidst the hustle and bustle of modern life, finding moments of peace and connection with nature is more important than ever.', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve;\">Amidst the hustle and bustle of modern life, finding moments of peace and connection with nature is more important than ever. Enter forest bathing, a Japanese practice known as \"shinrin-yoku,\" which involves immersing oneself in the soothing sights, sounds, and scents of the forest. Whether it\'s the gentle rustle of leaves in the breeze, the dappled sunlight filtering through the trees, or the earthy fragrance of pine needles, forest bathing offers a respite from the stresses of daily life. Join us as we delve into the restorative powers of nature and discover how spending time in the forest can nourish the mind, body, and soul.</span><br></p>', '2024-04-04 23:29:04', '2024-04-04 23:51:28', 'blog_banner_660eda90977e9.jpg', 1, 'Exploring the Serenity of Nature: A Guide to Forest Bathing', 'Exploring the Serenity of Nature: A Guide to Forest Bathing', 1, 1, 1),
(17, 'Finding Balance: The Art of Mindful Living', 'finding-balance-the-art-of-mindful-living', 'blog_660ed6edcf38d.jpg', 'Finding Balance: The Art of Mindful Living', 'In today\'s fast-paced world, it\'s easy to get swept up in the chaos of everyday life.', 10, 'paced,easy,everyday,Balance,Finding,Mindful,greater,mindful,choices', 'In today\'s fast-paced world, it\'s easy to get swept up in the chaos of everyday life.', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve;\">In today\'s fast-paced world, it\'s easy to get swept up in the chaos of everyday life. But amidst the hustle and bustle, there lies an opportunity to cultivate mindfulness and find balance. From taking mindful walks in nature to practicing gratitude journaling, there are countless ways to incorporate mindfulness into your daily routine. Join us as we explore the art of mindful living and discover how small, intentional choices can lead to greater peace, clarity, and fulfillment in life.</span><br></p>', '2024-04-04 23:30:59', '2024-04-04 23:51:20', 'blog_banner_660eda88c093a.jpg', 4, 'Finding Balance: The Art of Mindful Living', 'Finding Balance: The Art of Mindful Living', 1, 1, 1),
(18, 'Nurturing Bonds -The Importance of Quality Time with Your Family', 'nurturing-bonds-the-importance-of-quality-time-with-your-family', 'blog_660ed93c1db5a.jpg', 'Nurturing Bonds -The Importance of Quality Time with Your Family', 'In the whirlwind of daily responsibilities, it\'s easy for family time to take a backseat.', 14, 'Nurturing,whirlwind,responsibilities,Importance,Quality,Time,Family,backseat,discover,strengthen,essential', 'In the whirlwind of daily responsibilities, it\'s easy for family time to take a backseat.', '<p><span style=\"color: rgb(13, 13, 13); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, \"Segoe UI\", Roboto, Ubuntu, Cantarell, \"Noto Sans\", sans-serif, \"Helvetica Neue\", Arial, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; white-space-collapse: preserve;\">In the whirlwind of daily responsibilities, it\'s easy for family time to take a backseat. However, prioritizing quality time with your loved ones is essential for fostering strong bonds and creating lasting memories. Whether it\'s sharing a meal together, playing games, or simply having heartfelt conversations, these moments of connection are invaluable. Join us as we explore the significance of carving out dedicated time for your family and discover simple yet meaningful ways to strengthen your relationships.</span><br></p>', '2024-04-04 23:43:38', '2024-04-04 23:50:38', 'blog_banner_660eda5e403ed.jpg', 4, 'Nurturing Bonds -The Importance of Quality Time with Your Family', 'Nurturing Bonds -The Importance of Quality Time with Your Family', 1, 1, 1);

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
(10, 'Lifestyle', 'lifestyle', 'blog_category_660ed63fb0a1b.jpg', 'Lifestyle', 'This category encompasses a wide range of topics related to everyday life, such as health and wellness, personal development, relationships, travel, and hobbies.', 'encompasses,everyday,life', '2024-04-04 23:33:03', '2024-04-04 23:33:03', 1, 1, NULL),
(11, 'Fashion and Beauty', 'fashion-and-beauty', NULL, 'Fashion and Beauty', 'Blogs in this category focus on fashion trends, styling tips, beauty product reviews, skincare routines, makeup tutorials, and fashion industry news.', 'fashion,beauty,reviews,skincare,routines', '2024-04-04 23:17:33', '2024-04-04 23:17:33', 1, 2, NULL),
(12, 'Food and Cooking', 'food-and-cooking', NULL, 'Food and Cooking', 'Food blogs feature recipes, cooking techniques, meal planning tips, restaurant reviews, and discussions about food culture and culinary trends.', 'recipes,cooking,techniques,planning,restaurant', '2024-04-04 23:18:35', '2024-04-04 23:18:35', 1, 3, NULL),
(13, 'Fitness and Exercise', 'fitness-and-exercise', NULL, 'Fitness and Exercise', 'These blogs provide workout routines, fitness tips, nutritional advice, sports news, and inspiration for leading an active lifestyle.', 'workout,fitness,nutritional,advice,sports news,inspiration', '2024-04-04 23:19:24', '2024-04-04 23:19:24', 1, 4, NULL),
(14, 'Parenting and Family', 'parenting-and-family', NULL, 'Parenting and Family', 'Parenting blogs offer advice on raising children, navigating family dynamics, managing household responsibilities, and fostering healthy relationships.', 'Parenting,advice,navigating,family,managing,household,responsibilities', '2024-04-04 23:22:34', '2024-04-04 23:22:34', 1, 3, NULL);

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
(21, 'Get 30% Off Sitewide', 'Get 30% Off Sitewide', 'Get 30% Off Sitewide', 24, '98406', 'www.google.com', 'code', '2024-04-05 03:12:03', 1, '2024-04-25 22:17:14', NULL, 0, 'coupon_662a73dcf0379.jpg', 'Image Alt'),
(22, 'GET 10% OFF ANY ORDER', 'HOOKEDUP SHAPEWEAR', 'HOOKEDUP SHAPEWEAR', 25, NULL, 'www.google1.com', 'active', '2024-04-05 03:13:41', 1, '2024-04-25 22:18:07', NULL, 1, 'coupon_660f09f56feea.png', 'Image Alt'),
(23, 'Get 10% Off Sitewide', 'Get 10% Off Sitewide', 'Get 10% Off Sitewide', 24, '70359', 'www.google.com', 'code', '2024-04-08 02:05:13', 1, '2024-04-08 02:05:13', NULL, 0, NULL, NULL),
(24, 'Get 10% Off Sitewide', 'Get 10% Off Sitewide', 'Get 10% Off Sitewide', 29, '70359', 'https://dealsspotpro.com/coupon-store/babyquip-coupon-and-promo-codes/', 'code', '2024-04-08 02:07:19', 1, '2024-04-08 02:08:21', NULL, 0, 'coupon_6612ef25bb45b.png', NULL),
(25, 'Get 10% Off Sitewide', 'Get 10% Off Sitewideeeeeeee', 'Get 10% Off Sitewideqqqqq', 25, '7714400', 'www.google1.com', 'code', '2024-04-25 22:14:20', 1, '2024-04-25 22:18:07', NULL, 0, NULL, 'myname'),
(26, 'Get 10% Off Sitewide', 'yuyuyuyuyuyu', 'zeeshan', 30, '020214', 'https://dealsspotpro.com/coupon-store/the-ayurveda-experience-coupons-and-promo-codes/', 'code', '2024-04-25 22:37:18', 1, '2024-04-25 22:45:32', NULL, 1, NULL, NULL),
(27, 'popopopo', 'haha', 'zee', 30, NULL, 'https://dealsspotpro.com/coupon-store/the-ayurveda-experience-coupons-and-promo-codes/', 'active', '2024-04-25 22:38:23', 1, '2024-04-25 22:45:32', NULL, 0, NULL, NULL);

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
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) NOT NULL DEFAULT 0,
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
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`, `is_enable`, `sort`, `alt`) VALUES
(4, 'Food & Health', 'food-health', 'blog_category_65a56ff5885e4.jpg', 'Meta Title', 'Meta Description', 'test1', '2024-01-15 12:55:20', '2024-01-15 12:55:20', 1, 0, '11'),
(5, 'Travel', 'travel', 'blog_category_65a56fe757bd5.jpg', NULL, NULL, NULL, '2024-01-15 12:48:23', '2024-01-15 12:48:23', 1, 0, NULL),
(6, 'Science & Technology', 'science-technology', 'blog_category_65a56fd68c169.jpg', 'Meta Title', 'Meta Description', 'keywords', '2024-01-15 12:48:06', '2024-01-15 12:48:06', 1, 3, NULL),
(8, 'Beauty & Fashion', 'beauty-fashion', 'blog_category_65a56fa665803.jpg', 'Meta Title', 'Meta Description', 'keyword1,keyword2,keyword3', '2024-01-19 17:20:18', '2024-01-19 17:20:18', 1, 2, 'Beauty & Fashion'),
(9, 'Food & Health1', 'food-health1', 'blog_category_65aaf511401f4.jpg', 'Meta Title', 'Meta Description', 'keyword1', '2024-01-19 17:17:53', '2024-01-19 17:17:53', 1, 1, NULL);

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
(2, 'blog_meta_tags', 'GET FINAL CHOICE', 'text', 2, 'blog_settings'),
(3, 'blog_meta_description', 'Meta Description hhjhjh', 'text', 3, 'blog_settings'),
(4, 'blog_keywords', 'keyword1,keyword2,keyword3,keyword4,123', 'keywords', 4, 'blog_settings'),
(5, 'footer_credits', 'Copyright: 2024 <a href=\"#.\"><span class=\"color_red\">website name Here</span></a>. All Rights Reserved', 'text', 5, 'site_settings'),
(6, 'phone_number', '47474774', 'text', 5, 'site_settings'),
(7, 'email_address', 'info@iGetFinalchoice.com', 'text', 4, 'site_settings'),
(8, 'address', 'Address Will come here.', 'text', 4, 'site_settings'),
(9, 'domain', 'www.yourdomain.com', 'text', 4, 'site_settings'),
(10, 'blog_banner', 'settings_blog_banner_65aaf35652433.jpg', 'image', 4, 'blog_settings'),
(11, 'store_banner', 'settings_store_banner_65ab830991c15.jpg', 'image', 4, 'store_settings'),
(12, 'store_meta_tags', 'GET FINAL CHOICE', 'text', 2, 'store_settings'),
(13, 'store_keywords', 'keyword1,keyword2,keyword3,keyword4,1111,67676767', 'keywords', 4, 'store_settings'),
(14, 'store_meta_description', 'Meta Description', 'text', 3, 'store_settings'),
(15, 'logo', 'settings_logo_65aadb59abf33.png', 'image', 1, 'site_settings'),
(16, 'fav_icon', 'settings_fav_icon_65aadb3928a64.png', 'image', 1, 'site_settings'),
(18, 'about_us', '<div class=\"col-md-12 col-sm-7 col-xs-12\" style=\"min-height: 1px; float: left; width: 1170px; color: rgb(103, 103, 103); font-size: 15px;\"><div class=\"our-mission-box-detail \"><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><br></h3><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\">OUR PRIMARY OBJECTIVE</h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">We contain fundamental things and beat brands of the whole globe under one rooftop; you can see our image by clicking quickly on our site, which would take less time than the requirements. Getfinalchoice is an all-rounder brand where you can deal with any issues regarding your basics, necessities, attire, families, and more. Likewise, it is more unbelievable for our clients or online purchasers to visit our image, where we are not just a total pile of offers containing a vast collection of solid and quality guaranteed things with coupons and headway codes to search for your #1 thing at reasonable costs.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">We give you a primary market to satisfy your necessities enormously. Your conviction wouldn\'t be irritated on an amazingly more grounded stage when you stood apart from the discussions of different retailers and dealers. You can look and get your ideal from a wide variety of stuff for each age pack, School goings, Gatekeepers, Models, finance chiefs\' and men. At this point, at Getfinalchoice, you can undoubtedly rush there the whole day, reliably opening focal points for achievement to the particular assortment of top-class brands to give your uniqueness and further create a style statement a more significant and novel look. We bargain instead of your pocket obliging things under your spending plan by providing Headway codes, game plans, markdowns, and offers on the most recent and moving toward Things that will be associated with your truck.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">A consistent hold supports engine helps purchasers find markdown save assets as movement codes. It moreover outfits different coupons with colossal endpoints and plans across premium online stores. Our dynamic store of Coupons, Coupon Codes, and Courses of action are continually reestablished, and it is easy to analyze and use them. Discounts or coupon codes are only a development of numbers, letters, or both that decline the business cost of the things when gone to the checkout page. With these codes, you can lessen your retail price by 5 - 50 percent, dependent upon the markdown retailer.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">Regardless, do these codes come from? Attempt to find the most recent principles and use them to save whatever amount of money could sensibly be anticipated. Who could have to while shopping and dealing with cash? Right? Coupons and codes are made to help people put away money. To wrap up, use the resources open to stop by the best results. A coupon site licenses people to save cash by giving a broad, point-by-point posting of ensured coupons, plans, and endpoints.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">The strategy you use to find the codes vows to find and utilize them while the course of action is open. When you shop online, you could return hundreds or even constant dollars to your wallet by showing a couple of portrayals of effort. You can set aside vast measures of cash by using discounts and coupon codes. They might be genuine for a brief time frame outline, yet if you have the money being referred to returned on your general get, it\'s staggering. Who might instead not put away at any point cash while additionally spending it?</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">You could get in touch with us enduring if you have any requests.</p></div></div><div class=\"col-md-12 col-sm-7 col-xs-12\" style=\"min-height: 1px; float: left; width: 1170px; color: rgb(103, 103, 103); font-size: 15px;\"><div class=\"our-mission-box-detail \"><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><br></h3><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\">HOW COULD ALL THAT WIND UP AIDING THE PURCHASERS?</h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">We put enthusiastically in helping our clients achieve their month-to-month, yearly saving centers in the meantime, allowing them a marvelous opportunity to get to know the thing affirmation and giving continuous examinations of the moving and most expected things that anybody could expect to find, looking out. Finally, by helping them save money, purchasers can construct their purchasing influence and gain a few new things in the relative valuing plan they started.</p><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><br></h3><h3 style=\"line-height: 1.1; color: rgb(237, 42, 40); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 22px; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\">HOW COULD ALL THAT WIND UP AIDING THE SHIPPERS?</h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\">This is the ideal spot for traders wanting to develop their organizations and become notable on the post. Besides, the more conspicuous level of the social affair, you get a potential chance to open your thing since we cover a few imperative focuses that help your thing and store needs. Instead of purpose and setting a tremendous appearance monetary arrangement for your connection, let our get-together of specialists manage your moving necessities and pinpoint the convertible social occasion to your page for a piece of the cost you will cause while utilizing the whole impelling gathering.</p></div></div>', 'textarea', 4, 'site_settings'),
(19, 'privacy_policy', '<p></p><h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><span style=\"color: rgb(255, 0, 0); font-size: 24px; font-weight: 600;\"><br></span></h3><h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><span style=\"color: rgb(255, 0, 0); font-size: 24px; font-weight: 600;\">Privacy Policy</span></h3><h5 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; padding-bottom: 10px;\"><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">  Welcome to our discount and coupon website (“Get Final Choice”). We are committed to preserving your privacy on our website. This Privacy Statement describes our practices for gathering, using, disclosing, and safeguarding the information you provide via the Site.We want to let you know what information we gather, how it’s used, and your options and legal rights. Additionally, we want you to see the security precautions we take about your information and how we utilize cookies and related technologies.</p></h5><h6 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; padding-bottom: 10px;\"><span style=\"color: rgb(156, 156, 148); font-size: 1rem;\"><br></span></h6><h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; font-size: 22px; color: rgb(237, 42, 40); text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\"><span style=\"color: rgb(255, 0, 0); font-size: 24px; font-style: oblique; font-weight: 600;\">DEFINITIONS</span><br></h3><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">This document, which should be read with the entire policy, defines some of the main words in the website’s privacy statement.</p><h5 style=\"line-height: 1.1; color: rgb(31, 31, 31); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 16px;\">Q: Suspendisse eleifend massa commodo porta lacus bibendum?</h5><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• <span style=\"font-weight: 700;\">Data:</span> Data is any information, including personally identifiable data like name, email address, contact information, and IP address, directly or indirectly obtained from users.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• A user is any person or entity that utilizes or accesses the website or its services.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• The practice of acquiring user information, including but not limited to personal data, is known as data collection.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Utilization of Data: Utilization of Data is utilizing user information to provide services or enhance the website.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Data storage is the process of safely retaining user information on website servers.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• <span style=\"font-weight: 700;\">Data Sharing:</span> Data sharing is disclosing user information to affiliates, advertisers, or third parties.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Opt-in/Opt-out: The user’s ability to decide whether to share their data with the website is referred to as opt-in/opt-out. Users have the option of sharing or not sharing their info.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Data security is preventing unauthorized access to or misuse of user data. This includes security precautions, encryption, consistent backups, and limited access.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• You refer to the person accessing or using the service or, as appropriate, the business or other lawful entity on behalf of which the user is accessing or using the service.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\"><span style=\"font-weight: 700;\">Third Party:</span> Describes a service like</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Search Engine Analyses</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Search Engine AdSense</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• AdWords on Google</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Amazon Affiliates</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• In Click Bank</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• The App Store for iOS</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Lead Generation on Twitter</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Pages, Stores, and Apps on Facebook</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">• Store on Google Play</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\"><span style=\"font-weight: 700;\">Only when it is voluntarily submitted to us, do we gather personal data. We don’t use tracking software to collect data about people visiting our website. Your personal information will not be transferred, sold, or rented to outside parties.</span></p><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">COOKIES</span></h3><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">Small data files, known as cookies, are kept on a user’s computer or mobile device. They are employed to keep tabs on user behavior and preferences and even to tailor specific experiences. We gather and store data about our visitors browsing choices and habits using cookies on our website. This enables us better to personalize our services to the needs of our consumers.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">We may also use cookies to monitor the effectiveness of our affiliate marketing initiatives. This lets us see which campaigns are more effective and which require improvement. We may also use cookies to examine visitor and usage data on our website. This aids in our comprehension of how users interact with our website and enables us to tailor it better to meet their needs. We may also employ cookies to identify our customers and their behavior on our website. Showcasing the most relevant products and discounts based on our clients’ prior interactions with our website enables us to offer a more individualized experience for them.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">Please note that cookies are not used to store private data like passwords or credit card numbers. We take the privacy of our customers very seriously. Thus, all information gathered by cookies is kept confidential and used only for the abovementioned purposes.</p><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">LINKS TO THIRD-PARTY SITES:</span></h3><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">We are an affiliated company, and content, coupons, banners, or blogs may link to third-party websites. Appropriate information will be provided on any page containing links to third parties. However, their privacy policies govern all information, including registration, on third-party websites or platforms. Management has no control over the disclosure and use of specific data. We are also not responsible for the content provided on third-party websites.</p><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\">WPRIVACY POLICY CHANGES:</span></h3><h3 style=\"font-weight: 600; line-height: 1.1; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 24px;\"><span style=\"color: rgb(255, 0, 0);\"><br></span></h3><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; line-height: normal; color: rgb(103, 103, 103); font-size: 15px;\">e might refresh the Privacy policy out of the blue in our only caution. However, we will notify you by updating this page on the website or by sending a copy to your email address. We updated this page’s “last updated” date and encouraged you to read the privacy policy. If you have any questions about the privacy policy or concerns about the deletion of the information collected, please get in touch with us.</p><p></p>', 'textarea', 4, 'site_settings'),
(20, 'terms_&_conditions', '<h3 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 1.1; font-size: 22px; color: rgb(237, 42, 40); text-transform: uppercase; padding-bottom: 10px; font-style: oblique;\">Terms & Conditions</h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; line-height: 24px;\"><br style=\"color: rgb(103, 103, 103); font-size: 15px;\"></p>', 'textarea', 4, 'site_settings'),
(21, 'blog_banner_title', 'Well Come in 111 <span>GET FINAL CHOICE</span>', 'text', 4, 'blog_settings'),
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
  `alt` text DEFAULT NULL,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `title`, `slug`, `image`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `category_id`, `heading`, `tracking_url`, `direct_url`, `meta_keywords`, `short_des`, `long_des`, `is_enable`, `alt`, `views`) VALUES
(24, 'DAILY THREAD', 'daily-thread', 'store_660f07419b9d0.png', 'DAILY THREAD', 'The Daily Thread ethos is best defined by three core pillars Fashion Brands Value It is that simple We believe great style and great value need not be mutually exclusive', '2024-04-05 03:02:09', '2024-05-03 11:50:33', 19, 'promo_codes_coupon', 'www.google.com', 'www.google.com', 'Daily Thread,Fashion Brands,Brands Value', 'The Daily Thread ethos is best defined by three core pillars Fashion Brands Value It is that simple We believe great style and great value need not be mutually exclusive', '<p><span style=\"font-family: Lato, sans-serif; font-size: 14px;\">The Daily Thread ethos is best defined by three core pillars Fashion Brands Value It is that simple We believe great style and great value need not be mutually exclusive</span><br></p>', 1, 'DAILY THREAD', 8),
(25, 'CURRENT ELLOITT', 'current-elloitt', 'store_660f07f407034.png', 'CURRENT ELLOITT', 'Current Elliot sells mid range purchase size items on its own website and partner sites in the highly competitive online denim clothing industry', '2024-04-05 03:05:08', '2024-05-03 11:50:21', 20, 'promo_codes_coupon', 'www.google1.com', 'www.google1.com', 'sells,purchase,size items', 'Current Elliot sells mid range purchase size items on its own website and partner sites in the highly competitive online denim clothing industry', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 22px; font-family: Lato, sans-serif;\"><font face=\"Arial\" style=\"margin: 0px; padding: 0px;\">&nbsp;Current Elliot sells mid range purchase size items on its own website and partner sites in the highly competitive online denim clothing industry</font></p><div><font face=\"Arial\" style=\"margin: 0px; padding: 0px;\"><br></font></div>', 1, 'CURRENT ELLOITT', 13),
(26, 'SUPERDRY', 'superdry', 'store_660f084a2b966.png', 'SUPERDRY', 'They are characterized by quality fabrics authentic vintage washes unique detailing world leading hand drawn graphics and tailored fits with diverse styling.', '2024-04-05 03:06:34', '2024-05-03 13:56:53', 24, 'promo_codes_coupon', 'www.google2.com', 'www.google2.com', 'fabrics,unique,world', 'They are characterized by quality fabrics authentic vintage washes unique detailing world leading hand drawn graphics and tailored fits with diverse styling.', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 22px; font-family: Lato, sans-serif;\">They are characterized by quality fabrics authentic vintage washes unique detailing world leading hand drawn graphics and tailored fits with diverse styling.<br style=\"margin: 0px; padding: 0px;\"></p><div><br></div>', 1, 'SUPERDRY', 8),
(27, 'DIESEL', 'diesel', 'store_660f088fcecdf.png', 'DIESEL', 'Diesel was founded in 1978 thanks to an intuition of innovation by the founder Renzo Rosso', '2024-04-05 03:07:43', '2024-05-03 13:57:09', 26, 'promo_codes_coupon', 'www.google4.com', 'www.google4.com', NULL, 'Diesel was founded in 1978 thanks to an intuition of innovation by the founder Renzo Rosso', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 22px; font-family: Lato, sans-serif;\">Diesel was founded in 1978 thanks to an intuition of innovation by the founder Renzo Rosso</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 22px; font-family: Lato, sans-serif;\"><br style=\"margin: 0px; padding: 0px;\"></p>', 1, 'DIESEL', 9),
(28, 'ADORIME', 'adorime', 'store_660f0920541fe.png', 'ADORIME', 'There are more skills required to become a professional sex toy tester than you may realize The first and most important skill is the ability to communicate.', '2024-04-05 03:10:08', '2024-05-03 13:56:57', 27, 'promo_codes_coupon', 'www.google5.com', 'www.google5.com', 'realize,required,become,professional', 'There are more skills required to become a professional sex toy tester than you may realize The first and most important skill is the ability to communicate.', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 22px; font-family: Lato, sans-serif;\">There are more skills required to become a professional sex toy tester than you may realize The first and most important skill is the ability to communicate.<br style=\"margin: 0px; padding: 0px;\"></p><div><br></div>', 1, 'ADORIME', 7),
(29, 'BabyQuip', 'babyquip', NULL, NULL, NULL, '2024-04-08 02:02:47', '2024-05-03 11:50:37', 19, 'promo_codes_coupon', 'https://dealsspotpro.com/coupon-store/babyquip-coupon-and-promo-codes/', 'https://dealsspotpro.com/coupon-store/babyquip-coupon-and-promo-codes/', NULL, 'BabyQuip is a major strollers & accessory brand that markets products and services at babyquip.com. BabyQuip competes with other top strollers & accessory brands such as Albee Baby, Seven Baby and Good Buy Gear. BabyQuip sells bigger ticket items or higher priced products or services in the competitive online strollers & accessories industry.', '<p><span style=\"color: rgb(72, 72, 72); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">BabyQuip is a major strollers &amp; accessory brand that markets products and services at babyquip.com. BabyQuip competes with other top strollers &amp; accessory brands such as Albee Baby, Seven Baby and Good Buy Gear. BabyQuip sells bigger ticket items or higher priced products or services in the competitive online strollers &amp; accessories industry.</span><br></p>', 1, NULL, 9),
(30, 'The Ayurvedia', 'the-ayurvedia', 'store_662a77ef2754b.jpg', 'The Ayurvedia Coupons And Promo Codes', 'The Ayurveda Experience Coupons And Promo Codes - Operator of an online e-commerce platform focused on Ayurvedic products.', '2024-04-25 22:34:07', '2024-05-03 11:50:29', 20, 'coupons_promo_codes', 'https://dealsspotpro.com/coupon-store/the-ayurveda-experience-coupons-and-promo-codes/', 'https://dealsspotpro.com/coupon-store/the-ayurveda-experience-coupons-and-promo-codes/', 'The Ayurvedia Coupons,The Ayurvedia Promo Codes,The Ayurvdeia Discount Codes', 'The Ayurveda Experience Coupons And Promo Codes - Operator of an online e-commerce platform focused on Ayurvedic products.', '<p><span style=\"color: rgb(72, 72, 72); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">The Ayurveda Experience Coupons And Promo Codes - Operator of an online e-commerce platform focused on Ayurvedic products.</span><br></p>', 1, 'The Ayurvediya', 3);

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
(19, 'Apparel And Clothing', 'apparel-and-clothing', NULL, '2024-04-05 00:05:33', '2024-04-05 00:05:33', 1, NULL),
(20, 'Auto Accessories', 'auto-accessories', NULL, '2024-04-05 00:05:51', '2024-04-05 00:05:51', 1, NULL),
(21, 'Art And Crafts', '-art-and-crafts', NULL, '2024-04-05 00:06:05', '2024-04-05 00:06:05', 1, NULL),
(22, 'Aviation Assistance', 'aviation-assistance', NULL, '2024-04-05 00:06:14', '2024-04-05 00:06:14', 1, NULL),
(23, 'Automotive', '-automotive', NULL, '2024-04-05 00:06:22', '2024-04-05 00:06:22', 1, NULL),
(24, 'Baby and Kids', 'baby-and-kids', NULL, '2024-04-05 00:06:31', '2024-04-05 00:06:31', 1, NULL),
(25, 'Car', 'car', NULL, '2024-04-05 00:06:41', '2024-04-05 00:06:41', 1, NULL),
(26, 'Electronics', 'electronics', NULL, '2024-04-05 00:06:50', '2024-04-05 00:06:50', 1, NULL),
(27, 'Food and Baverages', 'food-and-baverages', NULL, '2024-04-05 00:06:58', '2024-04-05 00:06:58', 1, NULL),
(28, 'Gifts and Flowers', 'gifts-and-flowers', NULL, '2024-04-05 00:07:40', '2024-04-05 00:07:40', 1, NULL),
(29, 'Health and Beauty', 'health-and-beauty', NULL, '2024-04-05 00:07:47', '2024-04-05 00:07:47', 1, NULL),
(30, 'Jewelry and Watches', 'jewelry-and-watches', NULL, '2024-04-05 00:07:56', '2024-04-05 00:07:56', 1, NULL),
(31, 'Sports and Outdoor', 'sports-and-outdoor', NULL, '2024-04-05 00:08:26', '2024-04-05 00:08:26', 1, NULL);

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
(1, 'Owais Azam', 'admin@gmail.com', NULL, '$2y$10$xhPEybNF4n6iu.wTTK/V3OilB31PZwiaM8BjUdWWsHKoo4nrtqtGq', NULL, NULL, NULL, 1, 1, 'dashboard_management,store_category_management,store_management,coupons_management,blogs_category_management,blogs_management,site_management,user_rights_management');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
