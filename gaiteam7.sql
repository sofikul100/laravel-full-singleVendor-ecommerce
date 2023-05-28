-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2022 at 07:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaiteam7`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '01961363543', 'admin@gmail.com', NULL, '$2y$10$BdmZPWWiRmDaiIoqpB.FQuR2uh6b6ZtMIcywmF43upYdO6OdBm7Ga', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2019-10-10 07:29:53'),
(4, 'Imran Khan', '01961363546', 'imrankhan@gmail.com', NULL, '$2y$10$2Hgy7PMf3xCkd9yS8H5JZeXjY8duHqLAvYMmcGximDAOKSE5OLS..', NULL, '1', NULL, '1', '1', NULL, '1', NULL, NULL, '1', '1', '1', '1', '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(22, 'Puma', 'media/brand/010822_16_34_40.png', NULL, NULL),
(23, 'lenovo', 'media/brand/020822_16_03_16.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(11, 'Men Fashions', '2022-08-01 23:40:06', '2022-08-01 23:40:06'),
(12, 'women fashion', '2022-08-02 22:59:04', '2022-08-02 22:59:04'),
(13, 'Eelectonics', '2022-08-02 22:59:25', '2022-08-02 22:59:25'),
(14, 'Children Accesories', '2022-08-02 23:00:24', '2022-08-02 23:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(5, 'new2022', '27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2019_10_10_135206_create_categories_table', 2),
(6, '2019_10_10_135221_create_subcategories_table', 2),
(7, '2019_10_10_135236_create_brands_table', 2),
(8, '2019_10_15_152304_create_coupons_table', 3),
(9, '2019_10_15_154357_create_newslaters_table', 4),
(10, '2019_10_16_054617_create_products_table', 5),
(11, '2019_10_21_153355_create_post_category_table', 6),
(12, '2019_10_21_153417_create_posts_table', 6),
(13, '2019_10_25_140504_create_wishlists_table', 7),
(14, '2019_11_19_144943_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2019_11_28_124814_create_orders_table', 10),
(21, '2019_11_28_124827_create_order_details_table', 10),
(22, '2019_11_28_124843_create_shipping_table', 10),
(23, '2019_12_10_145038_create_subscribers_table', 11),
(24, '2019_12_10_145333_create_seo_table', 12),
(25, '2019_12_12_144824_create_sitesetting_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SDrHy9raVskWZ2SKC9rzPQWLl7OBSuRH2Itplvss', 'http://localhost', 1, 0, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41'),
(2, NULL, 'Laravel Password Grant Client', 'hWD1ovG64xGFLKy6VsFc58ngKu4DVu8PFxJzrNKA', 'http://localhost', 0, 1, 0, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-11-20 01:17:41', '2019-11-20 01:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_bn`, `post_image`, `details_en`, `details_bn`, `created_at`, `updated_at`) VALUES
(6, 4, 'What is Lorem Ipsum?', 'Lorem Ipsum কি?', 'media/post/1740071210199846.jpg', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p><p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span>                   	\r\n                   </p>', '<p>Lorem Ipsum হল মুদ্রণ এবং টাইপসেটিং শিল্পের ডামি পাঠ্য। লোরেম ইপসাম 1500 এর দশক থেকে শিল্পের মানক ডামি টেক্সট হয়েছে, যখন একটি অজানা প্রিন্টার টাইপের একটি গ্যালি নিয়েছিল এবং একটি টাইপ নমুনা বই তৈরি করতে এটিকে স্ক্র্যাম্বল করেছিল। এটি শুধুমাত্র পাঁচ শতক নয়, ইলেকট্রনিক টাইপসেটিং-এ লাফিয়েও টিকে আছে, যা অপরিহার্যভাবে অপরিবর্তিত রয়েছে। এটি 1960-এর দশকে লোরেম ইপসাম প্যাসেজ সম্বলিত লেট্রাসেট শীট প্রকাশের মাধ্যমে এবং আরও সম্প্রতি লোরেম ইপসামের সংস্করণ সহ অ্যালডাস পেজমেকারের মতো ডেস্কটপ প্রকাশনা সফ্টওয়্যারের মাধ্যমে জনপ্রিয় হয়েছিল।Lorem Ipsum হল মুদ্রণ এবং টাইপসেটিং শিল্পের ডামি পাঠ্য। লোরেম ইপসাম 1500 এর দশক থেকে শিল্পের মানক ডামি টেক্সট হয়েছে, যখন একটি অজানা প্রিন্টার টাইপের একটি গ্যালি নিয়েছিল এবং একটি টাইপ নমুনা বই তৈরি করতে এটিকে স্ক্র্যাম্বল করেছিল। এটি শুধুমাত্র পাঁচ শতক নয়, ইলেকট্রনিক টাইপসেটিং-এ লাফিয়েও টিকে আছে, যা অপরিহার্যভাবে অপরিবর্তিত রয়েছে। এটি 1960-এর দশকে লোরেম ইপসাম প্যাসেজ সম্বলিত লেট্রাসেট শীট প্রকাশের মাধ্যমে এবং আরও সম্প্রতি লোরেম ইপসামের সংস্করণ সহ অ্যালডাস পেজমেকারের মতো ডেস্কটপ প্রকাশনা সফ্টওয়্যারের মাধ্যমে জনপ্রিয় হয়েছিল।</p><p>                   	\r\n                   </p>', NULL, NULL),
(7, 5, 'Why do we use it?', 'আমরা কেন এটা ব্যবহার করি?', 'media/post/1740071395609876.jpg', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></p><p>                   	\r\n                   </p>', '<p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\">এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে যখন এটির বিন্যাসটি দেখবে। Lorem Ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে সামগ্রী, এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরগুলির একটি কম-বেশি স্বাভাবিক বিতরণ রয়েছে, এটিকে পঠনযোগ্য ইংরেজির মতো দেখায়। অনেক ডেস্কটপ পাবলিশিং প্যাকেজ এবং ওয়েব পেজ এডিটররা এখন তাদের ডিফল্ট মডেল টেক্সট হিসেবে Lorem Ipsum ব্যবহার করে এবং \'lorem ipsum\'-এর জন্য একটি অনুসন্ধান অনেক ওয়েব সাইটকে তাদের শৈশবকালে উন্মোচিত করবে। বছরের পর বছর ধরে বিভিন্ন সংস্করণ বিকশিত হয়েছে, কখনো দুর্ঘটনাক্রমে, কখনো উদ্দেশ্যমূলক (ইনজেক্টেড হিউমার এবং এর মতো)।</font></p><p style=\"text-align: justify; \"><font face=\"Open Sans, Arial, sans-serif\">এটি একটি দীর্ঘ প্রতিষ্ঠিত সত্য যে একটি পাঠক একটি পৃষ্ঠার পাঠযোগ্য বিষয়বস্তু দ্বারা বিভ্রান্ত হবে যখন এটির বিন্যাসটি দেখবে। Lorem Ipsum ব্যবহার করার বিষয় হল যে এটিতে \'এখানে সামগ্রী, এখানে বিষয়বস্তু\' ব্যবহার করার বিপরীতে অক্ষরগুলির একটি কম-বেশি স্বাভাবিক বিতরণ রয়েছে, এটিকে পঠনযোগ্য ইংরেজির মতো দেখায়। অনেক ডেস্কটপ পাবলিশিং প্যাকেজ এবং ওয়েব পেজ এডিটররা এখন তাদের ডিফল্ট মডেল টেক্সট হিসেবে Lorem Ipsum ব্যবহার করে এবং \'lorem ipsum\'-এর জন্য একটি অনুসন্ধান অনেক ওয়েব সাইটকে তাদের শৈশবকালে উন্মোচিত করবে। বছরের পর বছর ধরে বিভিন্ন সংস্করণ বিকশিত হয়েছে, কখনো দুর্ঘটনাক্রমে, কখনো উদ্দেশ্যমূলক (ইনজেক্টেড হিউমার এবং এর মতো)।<br></font><br></p><p>                   	\r\n                   </p>', NULL, NULL),
(8, 6, 'Where does it come from?', 'এটা কোথা থেকে এসেছে?', 'media/post/1740071547020038.png', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '<div>জনপ্রিয় বিশ্বাসের বিপরীতে, Lorem Ipsum কেবল এলোমেলো পাঠ্য নয়। এটি 45 খ্রিস্টপূর্বাব্দের ধ্রুপদী ল্যাটিন সাহিত্যের একটি অংশে শিকড় রয়েছে, এটি 2000 বছরেরও বেশি পুরানো। ভার্জিনিয়ার হ্যাম্পডেন-সিডনি কলেজের একজন ল্যাটিন অধ্যাপক রিচার্ড ম্যাকক্লিনটক লোরেম ইপসাম প্যাসেজ থেকে আরও অস্পষ্ট ল্যাটিন শব্দ কনসেক্টুরের সন্ধান করেছিলেন এবং শাস্ত্রীয় সাহিত্যে এই শব্দের উদ্ধৃতিগুলির মধ্য দিয়ে গিয়ে সন্দেহাতীত উত্সটি আবিষ্কার করেছিলেন। লোরেম ইপসাম 45 খ্রিস্টপূর্বাব্দে লেখা সিসেরোর \"ডি ফিনিবাস বোনরাম এট ম্যালোরাম\" (দ্য এক্সট্রিমস অফ গুড অ্যান্ড ইভিল) এর বিভাগ 1.10.32 এবং 1.10.33 থেকে এসেছে। এই বইটি নৈতিকতার তত্ত্বের উপর একটি গ্রন্থ, রেনেসাঁর সময় খুব জনপ্রিয়। Lorem Ipsum এর প্রথম লাইন, \"Lorem ipsum dolor sit amet..\", 1.10.32 ধারার একটি লাইন থেকে এসেছে।</div><div><br></div><div>1500 এর দশক থেকে ব্যবহৃত Lorem Ipsum-এর আদর্শ খণ্ডটি আগ্রহীদের জন্য নীচে পুনরুত্পাদন করা হয়েছে। সিসেরোর \"ডি ফিনিবাস বোনোরাম এট ম্যালোরাম\" এর বিভাগ 1.10.32 এবং 1.10.33ও তাদের সঠিক মূল আকারে পুনরুত্পাদন করা হয়েছে, এইচ. র্যাকহ্যামের 1914 সালের অনুবাদ থেকে ইংরেজি সংস্করণ সহ।</div>', NULL, NULL),
(9, 5, 'Contrary to popular belief', 'জনপ্রিয় বিশ্বাসের বিপরীতে', 'media/post/1740071712121001.jpg', '<div>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</div><div><br></div><div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</div>', '<div>জনপ্রিয় বিশ্বাসের বিপরীতে, Lorem Ipsum কেবল এলোমেলো পাঠ্য নয়। এটি 45 খ্রিস্টপূর্বাব্দের ধ্রুপদী ল্যাটিন সাহিত্যের একটি অংশে শিকড় রয়েছে, এটি 2000 বছরেরও বেশি পুরানো। ভার্জিনিয়ার হ্যাম্পডেন-সিডনি কলেজের একজন ল্যাটিন অধ্যাপক রিচার্ড ম্যাকক্লিনটক লোরেম ইপসাম প্যাসেজ থেকে আরও অস্পষ্ট ল্যাটিন শব্দ কনসেক্টুরের সন্ধান করেছিলেন এবং শাস্ত্রীয় সাহিত্যে এই শব্দের উদ্ধৃতিগুলির মধ্য দিয়ে গিয়ে সন্দেহাতীত উত্সটি আবিষ্কার করেছিলেন। লোরেম ইপসাম 45 খ্রিস্টপূর্বাব্দে লেখা সিসেরোর \"ডি ফিনিবাস বোনরাম এট ম্যালোরাম\" (দ্য এক্সট্রিমস অফ গুড অ্যান্ড ইভিল) এর বিভাগ 1.10.32 এবং 1.10.33 থেকে এসেছে। এই বইটি নৈতিকতার তত্ত্বের উপর একটি গ্রন্থ, রেনেসাঁর সময় খুব জনপ্রিয়। Lorem Ipsum এর প্রথম লাইন, \"Lorem ipsum dolor sit amet..\", 1.10.32 ধারার একটি লাইন থেকে এসেছে।</div><div><br></div><div>1500 এর দশক থেকে ব্যবহৃত Lorem Ipsum-এর আদর্শ খণ্ডটি আগ্রহীদের জন্য নীচে পুনরুত্পাদন করা হয়েছে। সিসেরোর \"ডি ফিনিবাস বোনোরাম এট ম্যালোরাম\" এর বিভাগ 1.10.32 এবং 1.10.33ও তাদের সঠিক মূল আকারে পুনরুত্পাদন করা হয়েছে, এইচ. র্যাকহ্যামের 1914 সালের অনুবাদ থেকে ইংরেজি সংস্করণ সহ।</div>', NULL, NULL),
(10, 6, 'What is Lorem Ipsum?', 'Lorem Ipsum কি?', 'media/post/1740071770004238.jpg', '<div>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</div><div><br></div><div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</div>', '<div>জনপ্রিয় বিশ্বাসের বিপরীতে, Lorem Ipsum কেবল এলোমেলো পাঠ্য নয়। এটি 45 খ্রিস্টপূর্বাব্দের ধ্রুপদী ল্যাটিন সাহিত্যের একটি অংশে শিকড় রয়েছে, এটি 2000 বছরেরও বেশি পুরানো। ভার্জিনিয়ার হ্যাম্পডেন-সিডনি কলেজের একজন ল্যাটিন অধ্যাপক রিচার্ড ম্যাকক্লিনটক লোরেম ইপসাম প্যাসেজ থেকে আরও অস্পষ্ট ল্যাটিন শব্দ কনসেক্টুরের সন্ধান করেছিলেন এবং শাস্ত্রীয় সাহিত্যে এই শব্দের উদ্ধৃতিগুলির মধ্য দিয়ে গিয়ে সন্দেহাতীত উত্সটি আবিষ্কার করেছিলেন। লোরেম ইপসাম 45 খ্রিস্টপূর্বাব্দে লেখা সিসেরোর \"ডি ফিনিবাস বোনরাম এট ম্যালোরাম\" (দ্য এক্সট্রিমস অফ গুড অ্যান্ড ইভিল) এর বিভাগ 1.10.32 এবং 1.10.33 থেকে এসেছে। এই বইটি নৈতিকতার তত্ত্বের উপর একটি গ্রন্থ, রেনেসাঁর সময় খুব জনপ্রিয়। Lorem Ipsum এর প্রথম লাইন, \"Lorem ipsum dolor sit amet..\", 1.10.32 ধারার একটি লাইন থেকে এসেছে।</div><div><br></div><div>1500 এর দশক থেকে ব্যবহৃত Lorem Ipsum-এর আদর্শ খণ্ডটি আগ্রহীদের জন্য নীচে পুনরুত্পাদন করা হয়েছে। সিসেরোর \"ডি ফিনিবাস বোনোরাম এট ম্যালোরাম\" এর বিভাগ 1.10.32 এবং 1.10.33ও তাদের সঠিক মূল আকারে পুনরুত্পাদন করা হয়েছে, এইচ. র্যাকহ্যামের 1914 সালের অনুবাদ থেকে ইংরেজি সংস্করণ সহ।</div>', NULL, NULL),
(11, 6, 'Where does it come from?', 'এটা কোথা থেকে এসেছে?', 'media/post/1740071829341611.jpg', '<textarea aria-label=\"Source text\" aria-autocomplete=\"list\" aria-expanded=\"false\" aria-controls=\"kvLWu\" class=\"er8xn\" jsaction=\"blur:TP1Wfd; click:R8nDBd; focus:dFlNRb,HCeAxb; input:r9XDpf,Gyn8rd; mouseup:BR6jm; keydown:O0Dsab; keyup:pHu1gc; paste:puy29d;\" jsname=\"BJE2fc\" autocapitalize=\"off\" autocomplete=\"off\" autocorrect=\"off\" role=\"combobox\" rows=\"1\" placeholder=\"\" spellcheck=\"false\" style=\"-webkit-tap-highlight-color: transparent; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-width: initial; border-style: none; border-color: initial; color: rgb(60, 64, 67); flex: 1 1 0%; overflow-y: hidden; padding: 0px; resize: none; min-height: 74px; width: 544px; z-index: 1; direction: ltr; font-size: 18px; line-height: 28px; height: 504px;\">&lt;div&gt;&lt;br class=\"Apple-interchange-newline\"&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.&lt;/div&gt;</textarea><div class=\"D5aOJc vJwDU\" jscontroller=\"gWGePc\" jsname=\"lKng5e\" style=\"-webkit-tap-highlight-color: transparent; padding: 20px 58px 20px 24px; margin: 0px; overflow: hidden; visibility: hidden; white-space: pre-wrap; z-index: 0; word-break: break-word; overflow-wrap: break-word; direction: ltr; max-height: 65px; font-size: 24px; line-height: 32px; position: absolute; left: 0px; right: 0px; top: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif;\"></div><div class=\"hlJJmd\" style=\"-webkit-tap-highlight-color: transparent; position: absolute; left: 0px; right: 0px; top: 0px; color: rgba(0, 0, 0, 0.87); font-family: Roboto, RobotoDraft, Helvetica, Arial, sans-serif; font-size: medium;\"><div class=\"D5aOJc Hapztf\" jscontroller=\"gWGePc\" jsname=\"KfPmsf\" style=\"-webkit-tap-highlight-color: transparent; padding: 20px 58px 20px 24px; direction: ltr; font-size: 18px; margin: 0px; overflow: hidden; visibility: hidden; white-space: pre-wrap; z-index: 0; word-break: break-word; overflow-wrap: break-word; line-height: 28px;\"></div><div class=\"Bmcqed\" jsname=\"AaF9Fc\" soy-skip=\"\" ssk=\"6:KYzJbc\" style=\"-webkit-tap-highlight-color: transparent; position: absolute; width: 626px; z-index: 2;\"><div jsaction=\"Raasr:bdSded;S2duZe:mAkLzf,BPNeHb,n3ah2d;ybxyWe:YHBut,L76sMb;ErIIx:BPNeHb,Eqdykf;nAuWDe:BPNeHb,xwRzhd;E2K7zf:SshWL;aa5XPc:Er30lb,UFDLdd;U9Zrx:kNWkF;PW9Uk:kNWkF;HgCKf:GKgyhe;l2GTKd:kNWkF;wvqTJf:xWqg4c,UFDLdd;\" jscontroller=\"xdp6Ne\" jsmodel=\"WYNSOe\" data-id=\"kvLWu\" style=\"-webkit-tap-highlight-color: transparent;\"></div></div></div>                   	\r\n                   <div><br></div>', '<div><div>জনপ্রিয় বিশ্বাসের বিপরীতে, Lorem Ipsum কেবল এলোমেলো পাঠ্য নয়। এটি 45 খ্রিস্টপূর্বাব্দের ধ্রুপদী ল্যাটিন সাহিত্যের একটি অংশে শিকড় রয়েছে, এটি 2000 বছরেরও বেশি পুরানো। ভার্জিনিয়ার হ্যাম্পডেন-সিডনি কলেজের একজন ল্যাটিন অধ্যাপক রিচার্ড ম্যাকক্লিনটক লোরেম ইপসাম প্যাসেজ থেকে আরও অস্পষ্ট ল্যাটিন শব্দ কনসেক্টুরের সন্ধান করেছিলেন এবং শাস্ত্রীয় সাহিত্যে এই শব্দের উদ্ধৃতিগুলির মধ্য দিয়ে গিয়ে সন্দেহাতীত উত্সটি আবিষ্কার করেছিলেন। লোরেম ইপসাম 45 খ্রিস্টপূর্বাব্দে লেখা সিসেরোর \"ডি ফিনিবাস বোনরাম এট ম্যালোরাম\" (দ্য এক্সট্রিমস অফ গুড অ্যান্ড ইভিল) এর বিভাগ 1.10.32 এবং 1.10.33 থেকে এসেছে। এই বইটি নৈতিকতার তত্ত্বের উপর একটি গ্রন্থ, রেনেসাঁর সময় খুব জনপ্রিয়। Lorem Ipsum এর প্রথম লাইন, \"Lorem ipsum dolor sit amet..\", 1.10.32 ধারার একটি লাইন থেকে এসেছে।</div><div><br></div><div>1500 এর দশক থেকে ব্যবহৃত Lorem Ipsum-এর আদর্শ খণ্ডটি আগ্রহীদের জন্য নীচে পুনরুত্পাদন করা হয়েছে। সিসেরোর \"ডি ফিনিবাস বোনোরাম এট ম্যালোরাম\" এর বিভাগ 1.10.32 এবং 1.10.33ও তাদের সঠিক মূল আকারে পুনরুত্পাদন করা হয়েছে, এইচ. র্যাকহ্যামের 1914 সালের অনুবাদ থেকে ইংরেজি সংস্করণ সহ।</div></div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(4, 'javascript', 'জাভাস্ক্রিপ্ট', NULL, NULL),
(5, 'java', 'জাভা', NULL, NULL),
(6, 'web development', 'ওয়েব ডেভেলপমেন্ট', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(24, 11, 23, 22, 'Man slide sandle', '54544', '2', 'product description&nbsp;', 'black,skyblue', 's,m,l', '220', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 'media/product/1739977863933326.png', 'media/product/1739977864031954.png', 'media/product/1739977864070392.png', 1, NULL, NULL),
(25, 13, 27, 23, 'Celeron N4020 15.6\" HD Laptop', '94542', '10', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Specification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></colgroup><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Basic Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Processor</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel Celeron N4020 Processor (4M Cache,1.10 GHz up to 2.80 GHz)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Display</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">15.6\" HD (1366×768) TN 220nits Anti-glare Display</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Memory</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">4GB DDR4 2400Mhz RAM<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Storage</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1TB 5400rpm HDD</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Graphics</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel UHD Graphics 600</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Chipset</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel SoC Platform</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Operating System</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Windows 10 Home</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Battery</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">2 Cell Li-Polymer 35Wh</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Adapter</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">45W Round Tip (2-pin, Wall-mount)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Stereo speakers, 1.5W x2, Dolby Audio<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2x, Array Microphone</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Special Feature</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Firmware TPM 2.0</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Input Devices</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Keyboard</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Full size English (US)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Optical Drive</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">N/A</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">WebCam</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">720p HD Webcam with Privacy Shutter<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Card Reader</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">SD card reader</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Network &amp; Wireless Connectivity</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Wi-Fi</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">WiFi 2 x 2, 1 x 1 AC</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Bluetooth</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Bluetooth Version 5.0</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Ports, Connectors &amp; Slots</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">USB (s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x USB 2.0<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2x USB 3.2 Gen 1</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">HDMI</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x HDMI 1.4b</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio Jack Combo</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x Headphone/microphone combo jack (3.5mm)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Extra M.2 Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Yes</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Supported SSD Type</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">M.2 NVME PCIe<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Dimensions (W x D x H)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">362.2 x 253.4 x 19.9 mm (14.26 x 9.98 x 0.78 inches)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Weight</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1.7 kg (3.75 lbs)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color(s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Platimun Grey</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Warranty</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">2 years International Limited Warranty (Terms &amp; condition Apply As Per Lenovo)<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px; text-align: justify;\">Lenovo IdeaPad Slim 3i Celeron N4020 15.6\" HD Laptop&nbsp;with Windows 10</h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Lenovo IdeaPad Slim 3i Laptop comes with Intel Celeron N4020 Processor (4M Cache,1.10 GHz up to 2.80 GHz), 4GB DDR4 2400Mhz&nbsp;RAM, 1TB 5400rpm HDD, Intel UHD Graphics 600, and Windows 10 Home operating system. This laptop is also featured with a 2 Cell Li-Polymer battery, Full-size English (US) keyboard, 720p HD Webcam with Privacy Shutter, an SD card reader. Here, WiFi 2 x 2, 1 x 1 AC and Bluetooth Version 5.0 Network &amp; Wireless Connectivity are available. In this laptop, it has 2 x USB 3.1 (Gen 1)USB 2.0, HDMI 1.4b, Headphone / mic combo, 2 x 1.5W speakers Dolby Audio Ports, Connectors &amp; Slots and Finger Print Sensor. The Lenovo IdeaPad Slim 3i Laptop has 02 years International Limited Warranty (Terms &amp; condition Apply As Per Lenovo).</p></div></section>', 'silver', NULL, '32000', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 'media/product/1740067082888047.png', 'media/product/1740066970451846.jpg', 'media/product/1740066970483033.jpg', 1, NULL, NULL),
(26, 13, 27, 23, 'CDC N4020 10.1\" HD Touch Laptop', '34541', '5', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Specification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></colgroup><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Basic Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Processor</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel Celeron N4020 Processor (4M Cache,1.10 GHz up to 2.80 GHz)<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Display</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">10.1\" (1280 x 800) HD IPS WXGA LED Antiscratch Brightness: 300nits, Aspect Ratio: 16:10, Color Gamut: 50% NTSC Display</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Memory</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">4 GB DDR4 RAM</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Storage</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">128GB eMMC</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Graphics</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel UHD 600 Graphics</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Operating System</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Genuine Win 10 home</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Battery</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">39Wh, Li-Polymer</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Adapter</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">45W AC adapter</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">High Definition (HD) Audio, Stereo speakers, 1W x 2, Dolby Audio Premium</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Input Devices</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Keyboard</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Standard Keyboard withTouchpad</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">WebCam</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Yes</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Network &amp; Wireless Connectivity</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">LAN</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Gigabit Lan</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Wi-Fi</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">802.11ac 1x1</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Bluetooth</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Bluetooth 4.2</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Ports, Connectors &amp; Slots</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">USB (s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">2 x USB 2.0 Type-A<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1 x USB 3.2 Gen 1 Type-C</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio Jack Combo</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1 x Headphone/ Microphone Combo</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Dimensions (W x D x H)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">249 x 178 x 9.5mm (Pad),<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">249 x 186 x 8.5 mm (Keyboard Dock)<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color(s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Mineral Gray</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Warranty</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">02 years International Limited Warranty (1 year for Battery and Adapter, Terms &amp; condition Apply As Per Lenovo)</td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Lenovo IdeaPad D330 10IGL Intel CDC N4020 10.1\" HD Touch Laptop</span></h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Ideapad D330 has computing power and all the fun and mobility of a lightweight tablet. From multitasking to connecting with friends online and streaming shows. This Ideapad D330 featured 4GB DDR4 RAM, 128GB eMMC and Intel UHD 600 Graphics, and Windows 10 Home. The Lenovo Ideapad D330 comes with 10.1\" (1280 x 800) HD IPS WXGA LED Antiscratch Brightness: 300nits, Aspect Ratio: 16:10, Color Gamut: 50% NTSC Display. This Lenovo IdeaPad D330 has an abundance of ports, including a USB-C 3.1 to help you charge other devices or transfer data at speeds up to 10 Gbps. Its display can generate lifelike clarity with 2S stereo Speakers Dolby Premium Audio is the perfect combination for entertainment. This Lenovo IdeaPad D330 10IGL comes with 02 years International Limited Warranty (1 year for Battery and Adapter, Terms &amp; Conditions Apply As Per Lenovo)</p></div></section><section class=\"latest-price bg-white m-tb-15\" id=\"latest-price\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">What is the price of Lenovo IdeaPad D330 10IGL Intel CDC 10.1\" HD Touch Laptop in Bangladesh?</h2></div><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The latest price of Lenovo IdeaPad D330 10IGL Intel CDC 10.1\" HD Touch Laptop in Bangladesh is 36,500৳. You can buy the Lenovo IdeaPad D330 10IGL Intel CDC 10.1\" HD Touch Laptop at best price from our website or visit any of our showrooms.</p></section>', 'silver,white', NULL, '150000', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740067259040022.png', 'media/product/1740067259086684.jpg', 'media/product/1740067259117295.jpg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(27, 13, 27, 23, 'Asus Vivobook X515MA Celeron', '64542', '5', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Specification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></colgroup><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Basic Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Processor</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel Celeron Processor N4020 (4M Cache, 1.10 GHz up to 2.80 GHz)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Display</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">15.6-inch HD (1366 x 768) 16:9 aspect ratio</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Memory</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">4GB DDR4 RAM</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Storage</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1TB SATA 5400RPM 2.5\" HDD</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Graphics</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Intel UHD Graphics 600</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Operating System</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Windows 11 Home</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Battery</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">37WHrs, 2S1P, 2-cell Li-ion</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Adapter</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">ø4.0, 33W AC Adapter, Output: 19V DC, 1.75A, 33W, Input: 100-240V AC 50/60Hz universal</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">SonicMaster<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Built-in speaker<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Built-in microphone</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Input Devices</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Keyboard</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Backlit Chiclet Keyboard with Num-key</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Optical Drive</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">N/A</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">WebCam</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">VGA Webcam</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Network &amp; Wireless Connectivity</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Wi-Fi</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Wi-Fi 5(802.11ac)</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Bluetooth</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Bluetooth 4.1 (Dual band) 1*1</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Ports, Connectors &amp; Slots</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">USB (s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x USB 3.2 Gen 1 Type-C<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">2x USB 2.0 Type-A</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">HDMI</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x HDMI 1.4</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Audio Jack Combo</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1x 3.5mm Combo Audio Jack</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Extra RAM Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">N/A</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Extra M.2 Slot</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Yes</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Supported SSD Type</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">M.2 NVMe</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Weight</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1.80 kg</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color(s)</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Transparent Silver (BR763W-X515MA)<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Slate Gray (BR662W-X515MA)</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Warranty</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">02 years International Limited Warranty (Battery 1 year)</td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px; text-align: justify;\">Asus Vivobook X515MA Celeron N4020 15.6\" HD Laptop<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Asus Vivobook X515MA laptop comes with Intel Celeron Processor N4020 (4M Cache, 1.10 GHz up to 2.80 GHz) and 4GB DDR4 RAM. It has a 1TB SATA 5400RPM 2.5\" HDD and it also comes with 1x M.2 2280 PCIe 3.0x2 Slot. This laptop has been integrated with Intel UHD Graphics 600 and it has a 15.6-inch HD (1366 x 768) display with a 16:9 aspect ratio. It runs on Windows 11 Home operating system. This whole system is powered by a 37WHrs, 2S1P, 2-cell Li-ion battery and comes with a Ã¸4.0, 33W AC Adapter, Output: 19V DC, 1.75A, 33W, Input: 100-240V AC 50/60Hz universal. This laptop has a VGA Webcam and Built-in speaker with SonicMaster. The Asus Vivobook X515MA offers Wi-Fi 5(802.11ac) and Bluetooth 4.1 (Dual band) 1*1 for wireless connectivity. The laptop is designed with 1x USB 3.0 Gen 1, 2x USB 2.0, 1 x HDMI ports. The Asus Vivobook X515MA Laptop comes with 2 years International Limited Warranty (Battery 1 year).<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></p></div></section><section class=\"latest-price bg-white m-tb-15\" id=\"latest-price\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">What is the price of Asus Vivobook X515MA Celeron N4020 15.6\" Laptop in Bangladesh?</h2></div><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The latest price of Asus Vivobook X515MA Celeron N4020 15.6\" Laptop in Bangladesh is 38,000৳. You can buy the Asus Vivobook X515MA Celeron N4020 15.6\" Laptop at best price from our website or visit any of our showrooms.</p></section>', 'white,silver,black', NULL, '50000', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740067449326495.png', 'media/product/1740067449378024.jpg', 'media/product/1740067449409176.jpg', 1, NULL, NULL),
(28, 13, 28, 22, 'Edifier G3 Gaming Headphone Iron Gray', '75452', '10', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Specification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></colgroup><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Technical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Frequency Range</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">20Hz～20kHz</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Impedance</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">40Ω</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Input Jack</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">3.5 mm</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Others</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">CONNECTOR TYPE: Straight<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">SOUND PRESSURE LEVEL: 94dB<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">CABLE TYPE: Single Sided<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">INLINE CONTROL: Yes<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">DRIVER DIAMETER: 40mm</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Weight</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">0.35KG</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Iron Gray</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Cable Length</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">3m</td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px;\"><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Become the game</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Donâ€™t just play the game, be part of it. The G3 headset takes its design inspiration from sci-fi futuristic games so you feel fully immersed. Thanks to the Digital Audio Processing Technology (DSP) never go without having a fully realized fantastic sound.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Play for endless hours</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Leather lining provides extreme comfort for long hours of gaming. Telescopic adjustable headband makes it so you can fit this headset to any size.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Style that is out of this world</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Light up your world with the G3â€™s LED light indicator. Easily reference which EQ mode you are in. Keep cool in game mode with blue LEDs and heat things up in music mode with red LEDs.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Extra strength</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Double voice coil CCA adds longer life to your headphones. 40mm high magnetic neodymium unit provides extraterrestrial, clear sound.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Durable</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Edifier does itâ€™s best to lessen the harm to the environment. The G3 is manufactured with environmentally friendly PVC material. Using ABS and PP high-strength engineering plastic for added strength. Making it more resistant to damage.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Mic rotation</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The 120-degree rotating microphone easily picks up your voice. Fully get in the game without distractions with the G3 background noise cancellation feature.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Control</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Easily take control of your sound with the built-in mic located on the wire. Control volume, mute, extra bass, mic on/off and EQ preset mode.</p></div></section>', 'black,silver', NULL, '1000', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740067627819339.png', 'media/product/1740067627877208.jpg', 'media/product/1740067627908371.jpg', 1, NULL, NULL),
(29, 13, 28, 23, 'Edifier K550 headphone Single Plug', '67542', '5', '<section class=\"specification-tab m-tb-10\" id=\"specification\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Specification</h2></div><table class=\"data-table flex-table\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; margin: -20px 0px 0px; padding: 0px; display: flex; flex-direction: column; width: 920px;\"><colgroup style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><col class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></colgroup><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Technical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Frequency Range</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">20Hz～20kHz</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Impedance</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">32Ω</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Input Jack</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">3.5 mm</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Others</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">SOUND PRESSURE LEVEL: 91dB<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">RATED INPUT POWER 20mW</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Physical Specification</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Color</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">Black / White / Red</td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Cable Length</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">2m</td></tr></tbody><thead style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"heading-row\" colspan=\"3\" style=\"box-sizing: border-box; margin: 20px 0px 0px; padding: 6px 20px; flex: 1 1 auto; display: flex; background: rgba(55, 73, 187, 0.05); color: rgb(55, 73, 187); font-size: 16px; line-height: 30px; font-weight: bold; border-radius: 5px;\">Warranty Information</td></tr></thead><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px; display: flex;\"><td class=\"name\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 0 0 250px; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239); color: rgb(102, 102, 102);\">Manufacturing Warranty</td><td class=\"value\" style=\"box-sizing: border-box; margin: 0px; padding: 10px 20px; flex: 1 1 auto; display: flex; line-height: 22px; border-bottom: 1px solid rgb(236, 237, 239);\">1 year warranty</td></tr></tbody></table></section><section class=\"description bg-white m-tb-15\" id=\"description\" style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 20px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-radius: 4px; box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 1px; font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px;\"><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">On-Ears Style and Profile</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The K550 headset has an on-ear style that rests comfortably on your ears. The ear pads are made from soft foam and the headset itself is incredibly light weight. This headset lets you rest your ears for a full work day without any complaints.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Easy-to-Use Headset</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The K550 is the ideal headset for computer users who want a simple solution to have both audio and a microphone. Equipped with 30mm Neodymium units, you will experience a balanced sound ranging from music, videos to internet calls. Edifier also offers a great fit. Easily adjust the headband for a perfect, comfortable fit.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Clear Projecting Sound</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Use the microphone on the K550 headset to clearly project your voice on VoIP programs. Useful for talking with your family across the country or using on business meetings and other uses. You can swivel the microphone up and down to clear your face of the boom microphone. The headset also has an inline control for both volume and muting the headset</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-weight: bold; font-size: 18px; line-height: 24px;\">Choose the Style You Want</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">Choose from three different colored models. The K550 headset is available between black, white, and red.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; color: rgb(1, 19, 45); line-height: 26px;\">The&nbsp;Edifier K550 comes with 1 year warranty.</p></div></section>', 'red,white,silver', NULL, '800', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740067849560375.png', 'media/product/1740067849655923.jpg', 'media/product/1740067849688144.jpg', 1, NULL, NULL),
(30, 11, 25, 22, 'Switch band digital watch', '78742', '5', 'watch description&nbsp;', 'black,white,silver', NULL, '4000', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 'media/product/1740068678788529.jpg', 'media/product/1740068678871571.jpg', 'media/product/1740068678916143.jpg', 1, NULL, NULL),
(31, 11, 24, 22, 'Suit Coat Blazer Price BD', '24545', '5', 'balazar description&nbsp;', 'black,navyblue,silver', 's,ml,m,l,sl', '2000', NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, 'media/product/1740069111835886.png', 'media/product/1740070861297868.png', 'media/product/1740069111923127.jpg', 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(32, 11, 30, 22, 'Short Sleeve Print Men T Shirt', '45412', '5', '<div class=\"product-details-text-wrapper\" style=\"padding: 0px; margin: 10px 0px 20px; box-sizing: border-box; width: 907.188px; float: left; color: rgb(51, 51, 51); font-family: SolaimanLipi, helvetica, verdana;\"><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Product: short sleeve Print men T shirt casual summer loose men tshirt cool o-neck t-shirt male men tee shirt</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Colour: Red</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Quantity: 1 Pcs</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Made in Bangladesh</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">100% Good Product</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Product Type: T-shirt</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Main Material: Taiwan CVC</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Stylish and Fashionable</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Gsm: 160-170</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: S, M, L, XL, XXL</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: S-Length 26, Chest 36</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: M-Length 27, Chest 38</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: L-Length 28, Chest 40</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: XL-Length 29, Chest 42</span></div><div class=\"product-details-text\" style=\"padding: 0px; margin: 0px; box-sizing: border-box; width: 907.188px; float: left; line-height: 27px; color: rgb(93, 90, 90);\"><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; box-sizing: border-box; border: 0px; margin-top: -5px !important;\"></span><span style=\"padding: 0px; margin: 0px 10px 0px 0px; box-sizing: border-box;\">Size: XXL-Length 30, Chest 44</span></div></div><h3 style=\"padding: 0px; margin: 20px 0px 18.1406px; box-sizing: border-box; font-family: SolaimanLipi, Vrinda, Helvetica, Verdana, sans-serif; color: rgb(51, 51, 51); font-size: 14px;\"><span class=\"deal-title-new\" style=\"padding: 0px; margin: 0px; box-sizing: border-box;\">Short Sleeve Print Men T Shirt</span>&nbsp;Buy at best price in Bangladesh</h3>', 'green,yellow,red', 's,ml,m,l', '250', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 'media/product/1740069422764222.jfif', 'media/product/1740069422848734.jfif', 'media/product/1740069422928198.jfif', 1, NULL, NULL),
(33, 11, 30, 22, 'Slim-fit Cotton Short Sleeve T-shirt', '46371', '10', '<table class=\"woocommerce-product-attributes shop_attributes\" style=\"box-sizing: border-box; border-spacing: 0px; border: none; margin: 0px auto; width: 760.5px; color: rgb(102, 102, 102); font-family: Poppins;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_color\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">COLOR</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Yellow</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_size\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024); color: rgb(51, 51, 51); text-transform: uppercase;\">SIZE</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">XS, S, M, L, XL, XXL</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_fit\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">FIT</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Slim</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_fabric\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024); color: rgb(51, 51, 51); text-transform: uppercase;\">FABRIC</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Cotton</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_wash-care\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">WASH CARE</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Wash separately in mild detergent/ machine wash bellow 30â„ƒ</p></td></tr></tbody></table>', 'red,yello,yellow-blue', 's,m,l', '260', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740069617906369.png', 'media/product/1740069617968361.jpg', 'media/product/1740069618071243.jpg', 1, NULL, NULL),
(34, 12, 26, 22, 'Green Crap Silk Salwar Kameez', '84541', '10', '<ul class=\"tabs wc-tabs\" role=\"tablist\" style=\"box-sizing: border-box; list-style: none; padding: 0px; margin-right: 0px; margin-bottom: 45px; margin-left: 0px; overflow: hidden; position: relative; text-align: center; color: rgb(74, 65, 65); font-family: Poppins;\"><li class=\"description_tab active\" id=\"tab-title-description\" role=\"tab\" aria-controls=\"tab-description\" style=\"box-sizing: border-box; margin: 0px; border-width: initial; border-style: none; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(255, 255, 255); border-left-color: initial; border-image: initial; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; display: inline-block; position: relative; z-index: 2; border-radius: 0px; padding: 0px 15px;\"><a href=\"https://www.lerevecraze.com/product/skd15942/#tab-description\" style=\"box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); transition-duration: 0.5s; transition-timing-function: ease; display: inline-block; padding: 0px; font-size: 18px; text-shadow: inherit;\">Product Details</a></li></ul><div class=\"woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab\" id=\"tab-description\" role=\"tabpanel\" aria-labelledby=\"tab-title-description\" style=\"box-sizing: border-box; margin: 0px 0px 100px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\"><table class=\"woocommerce-product-attributes shop_attributes\" style=\"box-sizing: border-box; border-spacing: 0px; border: none; margin: 0px auto; width: 760.5px;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_color\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">COLOR</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Green</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_size\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024); color: rgb(51, 51, 51); text-transform: uppercase;\">SIZE</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">32, 34, 36, 38, 40, 42, 44</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_fit\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">FIT</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Regular</p></td></tr></tbody></table></div>', 'green', 's,m,l,ml,sl,ll', '2000', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740070078986085.jpg', 'media/product/1740070079104300.jpg', 'media/product/1740070079203889.jpg', 1, NULL, NULL),
(35, 12, 26, 22, 'Burgundy Art silk Long Kameez', '12345', '5', '<ul class=\"tabs wc-tabs\" role=\"tablist\" style=\"box-sizing: border-box; list-style: none; padding: 0px; margin-right: 0px; margin-bottom: 45px; margin-left: 0px; overflow: hidden; position: relative; text-align: center; color: rgb(74, 65, 65); font-family: Poppins;\"><li class=\"description_tab active\" id=\"tab-title-description\" role=\"tab\" aria-controls=\"tab-description\" style=\"box-sizing: border-box; margin: 0px; border-width: initial; border-style: none; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(255, 255, 255); border-left-color: initial; border-image: initial; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; display: inline-block; position: relative; z-index: 2; border-radius: 0px; padding: 0px 15px;\"><a href=\"https://www.lerevecraze.com/product/lkz15811/#tab-description\" style=\"box-sizing: border-box; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); transition-duration: 0.5s; transition-timing-function: ease; display: inline-block; padding: 0px; font-size: 18px; text-shadow: inherit;\">Product Details</a></li></ul><div class=\"woocommerce-Tabs-panel woocommerce-Tabs-panel--description panel entry-content wc-tab\" id=\"tab-description\" role=\"tabpanel\" aria-labelledby=\"tab-title-description\" style=\"box-sizing: border-box; margin: 0px 0px 100px; padding: 0px; color: rgb(102, 102, 102); font-family: Poppins;\"><table class=\"woocommerce-product-attributes shop_attributes\" style=\"box-sizing: border-box; border-spacing: 0px; border: none; margin: 0px auto; width: 760.5px;\"><tbody style=\"box-sizing: border-box;\"><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_color\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">COLOR</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Red</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_size\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024); color: rgb(51, 51, 51); text-transform: uppercase;\">SIZE</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">XS, S, M, L, XL, XXL</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_pa_fit\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">FIT</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Regular</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_fabric\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024); color: rgb(51, 51, 51); text-transform: uppercase;\">FABRIC</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5; background: rgba(0, 0, 0, 0.024);\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Art silk</p></td></tr><tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_style\" style=\"box-sizing: border-box;\"><th class=\"woocommerce-product-attributes-item__label\" style=\"box-sizing: border-box; padding: 10px 20px; border-top: none; border-right: none; border-bottom: 1px solid rgb(242, 242, 242); border-left: none; border-image: initial; width: 150px; margin: 0px; line-height: 1.5; color: rgb(51, 51, 51); text-transform: uppercase;\">STYLE</th><td class=\"woocommerce-product-attributes-item__value\" style=\"box-sizing: border-box; padding: 10px 20px; border: none; font-style: italic; margin: 0px; line-height: 1.5;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px;\">Allover screen printed 2 parted kamij with 3 quarter sleeves &amp; karchupi added.</p></td></tr></tbody></table></div>', 'red', 's,m,l', '2500', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740070225129703.png', 'media/product/1740070225183908.jpg', 'media/product/1740070225232856.jpg', 1, NULL, NULL),
(36, 14, 29, 22, 'Teddy Air Chair Price in Bangladesh', '54234', '5', '<div class=\"eight columns product-desc-device\" style=\"width: 705.062px; float: left; box-sizing: border-box; margin-left: 0px; color: rgb(34, 34, 34); font-family: Raleway, HelveticaNeue, &quot;Helvetica Neue&quot;, &quot;Hind Siliguri&quot;, Helvetica, Arial, sans-serif; font-size: 16.5px;\"><div class=\"b-top\" style=\"margin-top: 1.5em;\"><h2 style=\"margin-bottom: 1rem; font-weight: bold; font-size: 1.1em; line-height: 1.25; letter-spacing: -0.1rem;\">Highlights</h2></div><div class=\"s-top\" style=\"margin-top: 0.5em;\"><p style=\"margin-bottom: 0.5em; line-height: 2em;\">74 x 64 x 65 cm dimension<br>Made in China</p></div><div class=\"s-bottom b-top\" style=\"margin-top: 1.5em; margin-bottom: 0.5em;\"><h2 style=\"margin-bottom: 1rem; font-weight: bold; font-size: 1.1em; line-height: 1.25; letter-spacing: -0.1rem;\">Full Specification</h2></div><div class=\"product-desc-feature\"><table style=\"margin-bottom: 2.5rem; border-spacing: 0px; width: 705.062px;\"><tbody><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Rating</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\"><img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"border: 0px; width: 15px; height: 14px;\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"border: 0px; width: 15px; height: 14px;\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"border: 0px; width: 15px; height: 14px;\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"border: 0px; width: 15px; height: 14px;\">&nbsp;<img src=\"https://www.bdstall.com/asset/static-image/no-rating.png\" style=\"border: 0px; width: 15px; height: 14px;\"></td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">ID</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\">67117</td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Lowest Price</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\">৳ 1,480</td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Item</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\"><a href=\"https://www.bdstall.com/toys/\" style=\"color: green;\">Toy</a></td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Status</th><td class=\"\" style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\">In Stock</td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Updated</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\">29 days ago</td></tr><tr style=\"border: 1px solid rgb(225, 225, 225);\"><th style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225); font-weight: normal; background-color: rgb(239, 240, 242); width: 264.625px;\">Seller Location</th><td style=\"padding: 0.5em; border-bottom: 1px solid rgb(225, 225, 225);\">Dhaka, Bangladesh</td></tr></tbody></table></div><div class=\"b-top\" style=\"margin-top: 1.5em;\"><h2 style=\"margin-bottom: 1rem; font-weight: bold; font-size: 1.1em; line-height: 1.25; letter-spacing: -0.1rem;\">Description</h2></div><div class=\"s-top\" style=\"margin-top: 0.5em;\"><p style=\"margin-bottom: 0.5em; line-height: 2em;\">This teddy air chair is quite durable, and your child will enjoy playing with it for a long time. It is made of soft plastic material that is safe for your child\'s body and provides comfort while playing. It\'s ideal for entertaining kids aged 1 to 6.</p></div><div class=\"b-top\" style=\"margin-top: 1.5em;\"><b style=\"font-weight: bold;\"></b><p style=\"margin-bottom: 0.5em; line-height: 2em;\"></p></div><div class=\"product-review b-top\" style=\"margin-top: 1.5em;\"><form name=\"clientForm\" method=\"post\" enctype=\"multipart/form-data\" style=\"margin-bottom: 2.5rem;\"><div class=\"b-bottom\" style=\"margin-bottom: 1.5em;\"><div class=\"contact s-bottom\" style=\"margin-bottom: 0.5em; font-size: 1.1em; font-weight: bold;\"><br></div></div><div><a style=\"color: green;\"><br></a></div></form></div></div>', 'yellow', NULL, '2000', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1740070470388775.png', 'media/product/1740070470454052.jpg', 'media/product/1740070470482663.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'LH Ecommerce', 'Learn Hunter', 'Ecommerce,Online Store', 'lorem ipsum etc etce ect ;learn hunter is one of the best youtibe channle .....', '112d12812891', '217312381', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '0', '7', 'Echovel', 'echovel18@gmail.com', '01900000000', 'Dhaka mirpur 1204 muktobangla', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01961363543', '01961363543', 'webdevprojectteam7@gmail.com', 'EchoStore', 'Dhaka mohammadpur,satmosjid road', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com', 'https://www.facebook.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(23, 11, 'Shoes', NULL, NULL),
(24, 11, 'blazar', NULL, NULL),
(25, 11, 'watch', NULL, NULL),
(26, 12, 'dress', NULL, NULL),
(27, 13, 'laptop', NULL, NULL),
(28, 13, 'headphone', NULL, NULL),
(29, 14, 'toy', NULL, NULL),
(30, 11, 'T-shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sohidul Islam', NULL, 'sohidulislam@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$AXmPJQ.tg/8z5VJr6Z9Ar.XJzte2Ytw058vRAes3CxI7CXwAr/CT6', NULL, '2019-10-04 23:27:57', '2019-10-04 23:27:57'),
(14, 'gaiteam7', '01902957799', 'gaiteam7@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$RyQUaefSrevU3D.rP8WP8.liiUWC.PMKd3vgohrzpkaMiAJZJKyfG', NULL, '2022-08-02 00:22:06', '2022-08-02 00:22:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, 15, NULL, NULL),
(7, 3, 13, NULL, NULL),
(8, 3, 17, NULL, NULL),
(9, 4, 23, NULL, NULL),
(10, 4, 21, NULL, NULL),
(11, 4, 20, NULL, NULL),
(12, 5, 17, NULL, NULL),
(13, 5, 22, NULL, NULL),
(17, 14, 24, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
