-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 02:37 PM
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
-- Database: `gogoads`
--

-- --------------------------------------------------------

--
-- Table structure for table `auths`
--

CREATE TABLE `auths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL COMMENT '1 = Admin',
  `mobile1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) DEFAULT 0,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `dob` date DEFAULT NULL,
  `facebook_id` bigint(20) DEFAULT NULL,
  `google_id` bigint(20) DEFAULT NULL,
  `package_id` int(10) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `seller_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Individual Seller',
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code_expire` datetime DEFAULT NULL,
  `is_first_login` tinyint(4) NOT NULL DEFAULT 1,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Admin',
  `can_login` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Can login, 0 = Can not login',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_setting_access` int(1) NOT NULL DEFAULT 0,
  `profile_pic` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_mime_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auths`
--

INSERT INTO `auths` (`id`, `username`, `name`, `email`, `address`, `mobile_no`, `password`, `salt`, `model_id`, `mobile1`, `mobile1_is_verified`, `gender`, `dob`, `facebook_id`, `google_id`, `package_id`, `is_active`, `seller_type`, `activation_code`, `activation_code_expire`, `is_first_login`, `user_type`, `can_login`, `status`, `created_by`, `updated_by`, `remember_token`, `city`, `total_post`, `created_at`, `updated_at`, `web_setting_access`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `first_name`, `last_name`, `designation`) VALUES
(1, 'sadmin', NULL, 'admin@gmail.com', NULL, '01681944126', '$2y$10$VFm643nOKw7wq.0N9mUKyeUA4wfq0igfJE0QXP5Q0qZhcUO7Nn0Ty', NULL, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, NULL, '2022-07-28 14:11:49', 1, 'profile_28072022_1659017509.jpg', 'http://localhost/test/gogoads/public/media/images/profile/profile_28072022_1659017509.jpg', NULL, 'Maidul', 'Maidul', 'Developer'),
(21, 'Manager', NULL, 'Manager@gmail.com', NULL, '01681944126', '$2y$10$X5TDs4BFzFGOXx9qh/ZW2.rHmHIcLB.WhhPRp586Tn4VIZ2l9WKi6', NULL, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, '2022-07-28 14:39:03', '2022-07-28 14:40:37', 0, 'profile_28072022_1659019143.jpg', 'http://localhost/test/gogoads/public/media/images/profile/profile_28072022_1659019143.jpg', NULL, 'Manager', 'Manager', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `auth_role`
--

CREATE TABLE `auth_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `custom_permission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_role`
--

INSERT INTO `auth_role` (`id`, `auth_id`, `role_id`, `user_group_id`, `custom_permission`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, '2020-10-03 07:06:35', '2022-07-28 14:11:37'),
(3, 21, 8, 3, NULL, '2022-07-28 14:39:03', '2022-07-28 14:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `backup_admin_users`
--

CREATE TABLE `backup_admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_mime_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_type` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backup_admin_users`
--

INSERT INTO `backup_admin_users` (`id`, `first_name`, `last_name`, `designation`, `auth_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `status`, `created_at`, `updated_at`, `deleted_at`, `user_type`) VALUES
(3, 'Super', 'Admin', 'Super', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0),
(4, 'Admin', 'General', 'General Admin', 2, 'profile_12072021_1626107790.jpg', '/media/images/profile/profile_12072021_1626107790.jpg', NULL, 1, '2020-10-03 07:06:35', '2021-07-12 16:36:30', NULL, 0),
(6, 'Sale', 'Manager', 'Sales', 16, 'profile_12072021_1626108493.jpg', 'https://panel.dalalbazar.com/media/images/profile/profile_12072021_1626108493.jpg', NULL, 1, '2020-10-09 04:59:28', '2021-07-12 16:48:13', NULL, 0);

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
-- Table structure for table `gyms`
--

CREATE TABLE `gyms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `established` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gyms`
--

INSERT INTO `gyms` (`id`, `name`, `code`, `moto`, `address`, `established`, `logo`, `logo_url`, `banner`, `banner_url`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Banani', '001', 'We Build', 'Banani', '1999', 'logo_04102020_1601816194.png', 'http://www.boilerplate-admin.local/media/images/gym/logo_04102020_1601816194.png', 'banner_04102020_1601816194.jpg', 'http://www.boilerplate-admin.local/media/images/gym/banner_04102020_1601816194.jpg', 1, 0, 0, 0, '2020-10-03 06:56:34', '2020-10-03 06:56:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_09_30_123517_create_permission_groups_table', 1),
(4, '2019_09_30_123523_create_permissions_table', 1),
(5, '2019_09_30_123524_create_roles_table', 1),
(6, '2019_09_30_123525_create_group_role_permission_table', 1),
(7, '2019_09_30_123526_create_models_table', 1),
(8, '2019_09_30_123527_create_auths_table', 1),
(9, '2019_09_30_123528_create_auth_group_role_table', 1),
(10, '2019_10_01_073858_create_admin_users_table', 1),
(11, '2019_10_02_073857_create_users_table', 1),
(12, '2020_01_21_060402_create_tokens_table', 1),
(13, '2020_01_22_190558_create_verify_mobile_no_table', 1),
(14, '2020_01_28_173236_create_table_workout_body_part', 1),
(15, '2020_01_28_173340_create_table_workout_items', 1),
(16, '2020_02_12_064858_create_gyms_table', 1),
(17, '2020_02_18_102849_add_gym_id_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_key` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('b328660f-fb16-4f80-a5b3-04879b32739f', 'App\\Notifications\\WellComeNotification', 'App\\User', 3, '{\"user_id\":3}', NULL, '2022-07-28 15:16:18', '2022-07-28 15:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_group_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `permission_group_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 'view_admin_user', 'View', 9, 1, NULL, '2020-10-07 00:27:01', '2020-10-07 00:27:01'),
(12, 'add_admin_user', 'Add', 9, 1, NULL, '2020-10-07 00:27:23', '2020-10-07 00:27:23'),
(13, 'edit_admin_user', 'Edit', 9, 1, NULL, '2020-10-07 00:27:38', '2020-10-07 00:27:38'),
(14, 'delete_admin_user', 'Delete', 9, 1, NULL, '2020-10-07 00:27:57', '2020-10-07 00:27:57'),
(15, 'execute_admin_user', 'Execute', 9, 1, NULL, '2020-10-07 00:28:13', '2020-10-07 00:28:13'),
(16, 'view_role', 'View', 8, 1, NULL, '2020-10-07 00:30:09', '2020-10-07 00:30:09'),
(17, 'add_role', 'Add', 8, 1, NULL, '2020-10-07 00:30:20', '2020-10-07 00:30:20'),
(18, 'edit_role', 'Edit', 8, 1, NULL, '2020-10-07 00:30:30', '2020-10-07 00:30:30'),
(19, 'delete_role', 'Delete', 8, 1, NULL, '2020-10-07 00:30:43', '2020-10-07 00:30:43'),
(20, 'execute_role', 'Execute', 8, 1, NULL, '2020-10-07 00:30:53', '2020-10-07 00:30:53'),
(21, 'view_menu', 'View', 10, 1, NULL, '2020-10-07 02:46:54', '2020-10-07 03:17:16'),
(22, 'new_menu', 'Add', 10, 1, NULL, '2020-10-07 02:47:09', '2020-10-07 03:17:26'),
(23, 'edit_menu', 'Edit', 10, 1, NULL, '2020-10-07 02:47:30', '2020-10-07 03:17:34'),
(24, 'delete_menu', 'Delete', 10, 1, NULL, '2020-10-07 02:48:04', '2020-10-07 03:17:48'),
(25, 'view_action', 'View', 11, 1, NULL, '2020-10-07 03:18:47', '2020-10-07 03:18:47'),
(26, 'new_action', 'Add', 11, 1, NULL, '2020-10-07 03:19:23', '2020-10-07 03:19:23'),
(27, 'edit_action', 'Edit', 11, 1, NULL, '2020-10-07 03:19:43', '2020-10-07 03:19:43'),
(28, 'delete_action', 'Delete', 11, 1, NULL, '2020-10-07 03:19:52', '2020-10-07 03:19:52'),
(29, 'assign_user_access', 'Can Assign User Access', 12, 1, NULL, '2020-10-09 05:51:48', '2020-10-09 05:51:48'),
(30, 'view_product', 'View', 10, 1, NULL, '2020-10-16 11:48:56', '2020-10-16 11:48:56'),
(31, 'new_prodcut', 'New', 10, 1, NULL, '2020-10-16 11:51:32', '2020-10-16 11:51:32'),
(32, 'view_product', 'View Product', 13, 1, NULL, '2021-07-12 16:02:35', '2021-07-12 16:02:35'),
(33, 'edit_product', 'Edit Product', 13, 1, NULL, '2021-07-12 16:02:52', '2021-07-12 16:02:52'),
(34, 'delete_product', 'Delete Product', 13, 1, NULL, '2021-07-12 16:03:05', '2021-07-12 16:03:05'),
(35, 'view_model', 'View Model', 18, 1, NULL, '2021-07-12 16:03:29', '2021-07-12 16:03:29'),
(36, 'new_model', 'New', 18, 1, NULL, '2021-07-12 16:04:09', '2021-07-12 16:11:47'),
(37, 'edit_model', 'Edit', 18, 1, NULL, '2021-07-12 16:10:15', '2021-07-12 16:12:07'),
(38, 'delete_model', 'Delete', 18, 1, NULL, '2021-07-12 16:12:26', '2021-07-12 16:12:26'),
(39, 'view_brand', 'View', 17, 1, NULL, '2021-07-12 16:12:39', '2021-07-12 16:12:39'),
(40, 'new_brand', 'New', 17, 1, NULL, '2021-07-12 16:12:56', '2021-07-12 16:12:56'),
(41, 'edit_brand', 'Edit', 17, 1, NULL, '2021-07-12 16:13:09', '2021-07-12 16:13:09'),
(42, 'delete_brand', 'Delete', 17, 1, NULL, '2021-07-12 16:13:20', '2021-07-12 16:13:20'),
(43, 'view_package', 'View', 14, 1, NULL, '2021-07-12 16:13:34', '2021-07-12 16:13:34'),
(44, 'new_package', 'New', 14, 1, NULL, '2021-07-12 16:13:46', '2021-07-12 16:13:46'),
(45, 'edit_package', 'Edit', 14, 1, NULL, '2021-07-12 16:14:00', '2021-07-12 16:14:00'),
(46, 'edit_package', 'Edit', 14, 1, NULL, '2021-07-12 16:14:01', '2021-07-12 16:14:01'),
(47, 'view_city', 'View', 19, 1, NULL, '2021-07-12 16:14:25', '2021-07-12 16:14:25'),
(48, 'view_division', 'View', 20, 1, NULL, '2021-07-12 16:14:40', '2021-07-12 16:14:40'),
(49, 'view_area', 'View', 21, 1, NULL, '2021-07-12 16:14:57', '2021-07-12 16:14:57'),
(50, 'new_area', 'New', 21, 1, NULL, '2021-07-12 16:15:09', '2021-07-12 16:15:09'),
(51, 'edit_area', 'Edit', 21, 1, NULL, '2021-07-12 16:15:24', '2021-07-12 16:15:24'),
(52, 'delete_area', 'Delete', 21, 1, NULL, '2021-07-12 16:15:49', '2021-07-12 16:15:49'),
(53, 'view_product_type', 'View', 22, 1, NULL, '2021-07-12 16:16:31', '2021-07-12 16:16:31'),
(54, 'new_product_type', 'New', 22, 1, NULL, '2021-07-12 16:16:44', '2021-07-12 16:16:44'),
(55, 'edit_product_type', 'Edit', 22, 1, NULL, '2021-07-12 16:16:58', '2021-07-12 16:16:58'),
(56, 'delete_product_type', 'Delete', 22, 1, NULL, '2021-07-12 16:17:10', '2021-07-12 16:17:10'),
(57, 'view_customer', 'View', 25, 1, NULL, '2021-07-12 16:18:52', '2021-07-12 16:18:52'),
(58, 'edit_customer', 'Edit', 25, 1, NULL, '2021-07-12 16:19:09', '2021-07-12 16:19:09'),
(59, 'view_category', 'View', 16, 1, NULL, '2021-07-12 16:20:03', '2021-07-12 16:20:03'),
(60, 'new_category', 'New', 16, 1, NULL, '2021-07-12 16:20:32', '2021-07-12 16:20:32'),
(61, 'edit_category', 'Edit', 16, 1, NULL, '2021-07-12 16:20:46', '2021-07-12 16:20:46'),
(62, 'delete_category', 'Delete', 16, 1, NULL, '2021-07-12 16:20:58', '2021-07-12 16:20:58'),
(63, 'view_sub_category', 'View', 16, 1, NULL, '2021-07-12 16:22:20', '2021-07-12 16:22:20'),
(64, 'view_promotion', 'View', 15, 1, NULL, '2021-07-12 16:22:45', '2021-07-12 16:22:45'),
(65, 'edit_promotion', 'Edit', 15, 1, NULL, '2021-07-12 16:22:56', '2021-07-12 16:22:56'),
(66, 'view_client_query', 'View', 23, 1, NULL, '2021-07-12 16:23:16', '2021-07-12 16:23:16'),
(67, 'edit_client_query', 'Edit', 23, 1, NULL, '2021-07-12 16:23:25', '2021-07-12 16:23:25'),
(68, 'view_faq', 'View', 24, 1, NULL, '2021-07-12 16:23:39', '2021-07-12 16:23:39'),
(69, 'edit_faq', 'Edit', 24, 1, NULL, '2021-07-12 16:25:12', '2021-07-12 16:25:12'),
(70, 'delete_faq', 'Delete', 24, 1, NULL, '2021-07-12 16:25:33', '2021-07-12 16:25:33'),
(71, 'new_faq', 'New', 24, 1, NULL, '2021-07-12 16:25:51', '2021-07-12 16:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `group_name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TEST', 1, NULL, '2022-07-28 14:42:01', '2022-07-28 14:42:01'),
(8, 'User role', 1, NULL, '2020-10-07 00:22:35', '2020-10-07 00:22:35'),
(9, 'Admin User', 1, NULL, '2020-10-07 00:23:50', '2020-10-07 00:23:50'),
(10, 'Menu', 1, NULL, '2020-10-07 02:36:05', '2020-10-07 02:36:05'),
(11, 'Action', 1, NULL, '2020-10-07 03:15:36', '2020-10-07 03:15:36'),
(12, 'Assign Access', 1, NULL, '2020-10-09 05:51:17', '2020-10-09 05:51:17'),
(13, 'Product', 1, NULL, '2021-07-12 15:58:38', '2021-07-12 15:58:38'),
(14, 'Package', 1, NULL, '2021-07-12 15:59:09', '2021-07-12 15:59:09'),
(15, 'Promotion', 1, NULL, '2021-07-12 15:59:40', '2021-07-12 15:59:40'),
(16, 'Category', 1, NULL, '2021-07-12 15:59:55', '2021-07-12 15:59:55'),
(17, 'Product Brand', 1, NULL, '2021-07-12 16:00:08', '2021-07-12 16:00:08'),
(18, 'Product Model', 1, NULL, '2021-07-12 16:00:18', '2021-07-12 16:00:18'),
(19, 'City', 1, NULL, '2021-07-12 16:00:45', '2021-07-12 16:00:45'),
(20, 'Division', 1, NULL, '2021-07-12 16:00:52', '2021-07-12 16:00:52'),
(21, 'Area', 1, NULL, '2021-07-12 16:01:04', '2021-07-12 16:01:04'),
(22, 'Product Type', 1, NULL, '2021-07-12 16:01:23', '2021-07-12 16:01:23'),
(23, 'Client Query', 1, NULL, '2021-07-12 16:01:39', '2021-07-12 16:01:39'),
(24, 'FAQ', 1, NULL, '2021-07-12 16:01:47', '2021-07-12 16:01:47'),
(25, 'Customer', 1, NULL, '2021-07-12 16:18:38', '2021-07-12 16:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `prd_ads`
--

CREATE TABLE `prd_ads` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(124) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prd_ad_details`
--

CREATE TABLE `prd_ad_details` (
  `pk_no` int(11) NOT NULL,
  `prd_ad_id` int(11) DEFAULT NULL COMMENT 'from prd_ads id',
  `name` varchar(124) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand`
--

CREATE TABLE `prd_brand` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) DEFAULT 0,
  `order_id` int(10) DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Brand Master Setup Table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_brand`
--

INSERT INTO `prd_brand` (`pk_no`, `cat_pk_no`, `scat_pk_no`, `name`, `name_bn`, `code`, `comments`, `is_active`, `is_delete`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 104, 21, 'Samsung', NULL, NULL, NULL, 1, 0, 0, NULL, NULL, NULL, NULL),
(2, 1, 14, 'Other brand', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:09:27', NULL, '2020-12-13 07:09:27'),
(3, 8, 70, 'Sofa', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:18:07', NULL, '2020-12-13 07:18:07'),
(4, 8, 72, 'Beds', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:22:38', NULL, '2020-12-13 07:22:38'),
(5, 2, 20, 'Lenovo', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:27:08', NULL, '2020-12-13 07:27:08'),
(6, 2, 25, 'Canon', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:37:31', NULL, '2020-12-13 07:37:31'),
(7, 4, 35, 'Guild', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:42:11', NULL, '2020-12-13 07:42:11'),
(8, 4, 36, 'Sony', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:45:25', NULL, '2020-12-13 07:45:25'),
(9, 5, 45, 'The Diamond Band', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:51:50', NULL, '2020-12-13 07:51:50'),
(10, 5, 47, 'Cartier', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:55:24', NULL, '2020-12-13 07:55:24'),
(11, 6, 53, 'Pure', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 07:59:00', NULL, '2020-12-13 07:59:00'),
(12, 6, 55, 'Toys', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:06:07', NULL, '2020-12-13 08:06:07'),
(13, 94, 95, 'Grocery', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:11:49', NULL, '2020-12-13 08:11:49'),
(14, 94, 96, 'Egg Holder', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:15:31', NULL, '2020-12-13 08:15:31'),
(15, 104, 21, 'Asus', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:19:14', NULL, '2020-12-13 08:19:14'),
(16, 104, 26, 'Apple', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:23:01', NULL, '2020-12-13 08:23:01'),
(17, 94, 100, 'CHOCO CARNATION', NULL, NULL, NULL, 1, 0, 0, 1, '2020-12-13 08:26:50', NULL, '2020-12-13 08:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category`
--

CREATE TABLE `prd_category` (
  `pk_no` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(4) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `url_slug` varchar(124) DEFAULT NULL,
  `name_bn` varchar(20) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `seo_des` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `is_top` int(1) DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `is_feature` int(1) DEFAULT NULL,
  `hs_prefix` varchar(20) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `order_id` int(10) DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_highlight` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='category master setup table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_category`
--

INSERT INTO `prd_category` (`pk_no`, `parent_id`, `code`, `name`, `url_slug`, `name_bn`, `description`, `seo_des`, `logo`, `icon`, `banner`, `is_top`, `is_new`, `is_feature`, `hs_prefix`, `comments`, `is_active`, `is_delete`, `total_post`, `active_post`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `is_highlight`) VALUES
(1, 0, '11', 'Cars & Vehicles', 'cars-vehicles', NULL, 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', NULL, 'category_log_5fe8202d6d53d.png', NULL, 1, 0, 0, NULL, NULL, 1, 0, 3, 0, 4, 1, '2020-11-15 17:21:12', 1, '2020-12-27 05:48:29', 0),
(2, 0, '12', 'Electronics & Gedgets', 'electronics-gedgets', NULL, 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', NULL, 'category_log_5fb2b58af0dc9.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 9, 0, 4, 1, '2020-11-16 17:23:22', 1, '2020-12-18 07:54:24', 0),
(3, 0, '13', 'Property for Rent/Sell', 'property', NULL, 'View listings for property in Bangladesh. Find the cheapest rates for apartments, commercial and residential properties, as well as for land and plots.', 'View listings for property in Bangladesh. Find the cheapest rates for apartments, commercial and residential properties, as well as for land and plots.', NULL, 'category_log_5fe78321e6fb1.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 7, 0, 1, 1, '2020-11-16 17:24:29', 1, '2020-12-26 18:38:25', 1),
(4, 0, '14', 'Sports & responsive', 'sports-responsive', NULL, 'Buy and sell used musical instruments, sports gear and accessories, art and collectibles and items for kids here.', 'Buy and sell used musical instruments, sports gear and accessories, art and collectibles and items for kids here.', NULL, 'category_log_5fb2b656e349a.png', NULL, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:26:46', 1, '2020-11-16 17:26:46', 0),
(5, 0, '15', 'Fashion & Beauty', 'fashion-beauty', NULL, 'Buy and sell clothing, garments, shoes and other personal items including handbags, perfumes etc.', 'Buy and sell clothing, garments, shoes and other personal items including handbags, perfumes etc.', NULL, 'category_log_5fb2b67d5307e.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 6, 0, 4, 1, '2020-11-16 17:27:25', 1, '2020-12-18 07:54:36', 0),
(6, 0, '16', 'Pets & Animals', 'pets-animals', NULL, 'Search from the widest variety of pets in Bangladesh. Select from dogs, puppies, cats, kittens, birds and other domesticated animals.', 'Search from the widest variety of pets in Bangladesh. Select from dogs, puppies, cats, kittens, birds and other domesticated animals.', NULL, 'category_log_5fb2b70570133.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:29:41', 1, '2020-12-21 19:37:44', 0),
(7, 0, '17', 'Job Openings', 'jobs', NULL, 'Post and apply for jobs and career opportunities in Bangladesh. Search for job vacancies in your city.', 'Post and apply for jobs and career opportunities in Bangladesh. Search for job vacancies in your city.', NULL, 'category_log_5fe783bc456e6.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 1, 0, 2, 1, '2020-11-16 17:30:12', 1, '2020-12-26 18:41:00', 1),
(8, 0, '18', 'Home Appliances', 'home-appliances', NULL, 'Buy and sell new and used home appliances including furniture, kitchen items, gardening products and other items for your garden.', 'Buy and sell new and used home appliances including furniture, kitchen items, gardening products and other items for your garden.', NULL, 'category_log_5fe820fd53eb2.png', NULL, 1, 0, 1, NULL, NULL, 1, 0, 0, 0, 3, 1, '2020-11-16 17:30:59', 1, '2020-12-27 05:51:57', 0),
(9, 0, '19', 'Matrimony Services', 'matrimony-services', NULL, NULL, NULL, NULL, 'category_log_5fb2b77f7bad7.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:31:43', 1, '2020-12-26 19:03:47', 0),
(11, 0, '21', 'Miscellaneous', 'miscellaneous', NULL, NULL, NULL, NULL, 'category_log_5fb2b83daaa73.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 0, 0, 6, 1, '2020-11-16 17:34:53', 1, '2020-12-21 19:37:52', 0),
(12, 0, '22', 'Books & Magazines', 'books-magazines', NULL, NULL, NULL, NULL, 'category_log_5fb2b88671c88.png', NULL, 1, 0, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:36:06', 1, '2020-12-21 19:37:48', 0),
(13, 1, '23', 'Cars & Buses', 'cars--buses', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:41:37', NULL, '2020-11-16 17:41:37', 0),
(14, 1, '24', 'Motorbikes & Scooters', 'motorbikes-scooters', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:41:47', NULL, '2020-11-16 17:41:47', 0),
(15, 1, '25', 'Bicycles And Three Wheelers', 'bicycles-and-three-wheelers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:41:56', NULL, '2020-11-16 17:41:56', 0),
(17, 1, '27', 'Trucks, Vans & Buses', 'trucks-vans-buses', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:42:17', NULL, '2020-11-16 17:42:17', 0),
(18, 1, '28', 'Tractors & Heavy-Duty', 'tractors-heavyduty', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:42:26', NULL, '2020-11-16 17:42:26', 0),
(19, 1, '29', 'Auto Parts & Accessories', 'auto-parts-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:42:52', NULL, '2020-11-16 17:42:52', 0),
(20, 2, '30', 'Laptop & Computer', 'laptop-computer', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 2, 0, 4, 1, '2020-11-16 17:43:02', NULL, '2020-11-16 17:43:02', 0),
(21, 104, '31', 'Mobile Phones', 'mobile-phones', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 7, 0, 4, 1, '2020-11-16 17:43:10', NULL, '2020-11-16 17:43:10', 0),
(22, 2, '32', 'Phablet & Tablets', 'phablet-tablets', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:43:22', NULL, '2020-11-16 17:43:22', 0),
(23, 2, '33', 'Audio & MP', 'audio-mp', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:43:31', NULL, '2020-11-16 17:43:31', 0),
(24, 2, '34', 'Accessories', 'accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:43:39', NULL, '2020-11-16 17:43:39', 0),
(25, 2, '35', 'Cameras', 'cameras', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:43:46', NULL, '2020-11-16 17:43:46', 0),
(26, 104, '36', 'Mobile Accessories', 'mobile-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 1, 1, '2020-11-16 17:43:53', 1, '2020-12-18 06:18:04', 0),
(27, 2, '37', 'TV & Video', 'tv-video', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:44:02', NULL, '2020-11-16 17:44:02', 0),
(28, 2, '38', 'Other Electronics', 'other-electronics', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:44:13', NULL, '2020-11-16 17:44:13', 0),
(29, 2, '39', 'TV & Video Accessories', 'tv-video-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:44:26', NULL, '2020-11-16 17:44:26', 0),
(30, 3, '40', 'Houses', 'houses', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 4, 1, '2020-11-16 17:44:38', NULL, '2020-11-16 17:44:38', 0),
(31, 3, '41', 'Rooms', 'rooms', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:44:46', NULL, '2020-11-16 17:44:46', 0),
(32, 3, '42', 'Plots & Lands', 'plots-lands', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:45:00', NULL, '2020-11-16 17:45:00', 0),
(33, 3, '43', 'Apartments & Flats', 'apartment-flats', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 6, 0, 4, 1, '2020-11-16 17:45:27', NULL, '2020-11-16 17:45:27', 0),
(34, 4, '44', 'All Hobbies, Sports & Kids', 'all-hobbies-sports--kids', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:05:55', NULL, '2020-11-16 18:05:55', 0),
(35, 4, '45', 'Musical Instruments', 'musical-instruments', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:06:09', NULL, '2020-11-16 18:06:09', 0),
(36, 4, '46', 'Sports', 'sports', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:06:23', NULL, '2020-11-16 18:06:23', 0),
(37, 4, '47', 'Fitness & Gym', 'fitness-gym', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:06:38', NULL, '2020-11-16 18:06:38', 0),
(38, 4, '48', 'Music, Books & Movies', 'music-books-movies', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:06:49', NULL, '2020-11-16 18:06:49', 0),
(39, 4, '49', 'Children\'s Items', 'childrens-items', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:07:06', NULL, '2020-11-16 18:07:06', 0),
(40, 4, '50', 'Other Hobby, Sport & Kids items', 'other-hobby-sport-kids-items', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:07:18', NULL, '2020-11-16 18:07:18', 0),
(42, 5, '52', 'Men\'s Clothing & Accessories', 'mens-clothing-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 6, 0, 4, 1, '2020-11-16 18:07:59', NULL, '2020-11-16 18:07:59', 0),
(43, 5, '53', 'Women\'s Clothing & Accessories', 'womens-clothing-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:08:14', NULL, '2020-11-16 18:08:14', 0),
(44, 5, '54', 'Children\'s Clothing & Accessories', 'childrens-clothing-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:08:24', NULL, '2020-11-16 18:08:24', 0),
(45, 5, '55', 'Jewellery', 'jewellery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:08:38', NULL, '2020-11-16 18:08:38', 0),
(46, 5, '56', 'Optical Items', 'optical-items', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:09:09', NULL, '2020-11-16 18:09:09', 0),
(47, 5, '57', 'Watches', 'watches', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:09:31', NULL, '2020-11-16 18:09:31', 0),
(48, 5, '58', 'Bags', 'bags', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:09:57', NULL, '2020-11-16 18:09:57', 0),
(49, 5, '59', 'Wholesale - Bulk', 'wholesale-bulk', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:10:22', NULL, '2020-11-16 18:10:22', 0),
(50, 5, '60', 'Beauty Products', 'beauty-products', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:10:35', NULL, '2020-11-16 18:10:35', 0),
(51, 5, '61', 'Other Items', 'other-items', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:10:49', NULL, '2020-11-16 18:10:49', 0),
(53, 6, '63', 'Pets', 'pets', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:13:02', NULL, '2020-11-16 18:13:02', 0),
(54, 6, '64', 'Farm Animals', 'farm-animals', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:13:13', NULL, '2020-11-16 18:13:13', 0),
(55, 6, '65', 'Pet & Animal Accessories', 'pet-animal-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:13:24', NULL, '2020-11-16 18:13:24', 0),
(56, 6, '66', 'Other Pets & Animals', 'other-pets--animals', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:13:39', NULL, '2020-11-16 18:13:39', 0),
(57, 7, '67', 'IT & Telecom', 'it-telecom', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:17:11', NULL, '2020-11-16 18:17:11', 0),
(58, 7, '68', 'Security Services', 'security-services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:17:35', NULL, '2020-11-16 18:17:35', 0),
(59, 7, '69', 'Consumer Goods & Durables', 'consumer-goods-durables', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:17:47', NULL, '2020-11-16 18:17:47', 0),
(60, 7, '70', 'Ecommerce & Internet', 'ecommerce-internet', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:17:59', NULL, '2020-11-16 18:17:59', 0),
(61, 7, '71', 'Garments & Textile', 'garments--textile', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:18:13', NULL, '2020-11-16 18:18:13', 0),
(62, 7, '72', 'Logistics & Transportation', 'logistics-transportation', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:18:25', NULL, '2020-11-16 18:18:25', 0),
(64, 7, '74', 'Manufacturing', 'manufacturing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:20:48', NULL, '2020-11-16 18:20:48', 0),
(65, 7, '75', 'Hotel, Travel & Leisure', 'hotel-travel-leisure', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:21:05', NULL, '2020-11-16 18:21:05', 0),
(66, 7, '76', 'Consulting', 'consulting', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:21:21', NULL, '2020-11-16 18:21:21', 0),
(67, 7, '77', 'Agriculture & Food Processing', 'agriculture-food-processing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:21:32', NULL, '2020-11-16 18:21:32', 0),
(68, 7, '78', 'Others', 'others', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:24:03', NULL, '2020-11-16 18:24:03', 0),
(70, 8, '80', 'Living Room Furniture', 'living-room-furniture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:25:02', NULL, '2020-11-16 18:25:02', 0),
(71, 8, '81', 'Kitchen & Dining Furniture', 'kitchen-dining-furniture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:25:15', NULL, '2020-11-16 18:25:15', 0),
(72, 8, '82', 'Bedroom Furniture', 'bedroom-furniture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:25:34', NULL, '2020-11-16 18:25:34', 0),
(73, 8, '83', 'Office & Shop Furniture', 'office-shop-furniture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:25:46', NULL, '2020-11-16 18:25:46', 0),
(74, 8, '84', 'Children\'s Furniture', 'childrens-furniture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:26:19', NULL, '2020-11-16 18:26:19', 0),
(75, 8, '85', 'ACs & Home Electronics', 'acs-home-electronics', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:26:55', NULL, '2020-11-16 18:26:55', 0),
(77, 8, '87', 'Household Items', 'household-items', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:27:43', NULL, '2020-11-16 18:27:43', 0),
(78, 8, '88', 'Home Textiles & Decoration', 'home-textiles--decoration', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:28:01', NULL, '2020-11-16 18:28:01', 0),
(80, 12, '90', 'Textbooks', 'textbooks', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 80, 1, '2020-11-16 18:31:41', 1, '2020-12-18 06:17:05', 0),
(81, 12, '91', 'Tuition', 'tuition', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:31:58', NULL, '2020-11-16 18:31:58', 0),
(82, 12, '92', 'Courses', 'courses', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:32:07', NULL, '2020-11-16 18:32:07', 0),
(83, 12, '93', 'Study Abroad', 'study-abroad', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:32:21', NULL, '2020-11-16 18:32:21', 0),
(84, 12, '94', 'Other Books', 'other-books', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:32:35', NULL, '2020-11-16 18:32:35', 0),
(85, 0, '95', 'Agriculture', 'agriculture', NULL, NULL, NULL, NULL, 'category_log_5fd8e50cbe19c.png', NULL, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:37:16', 1, '2020-12-15 16:32:12', 0),
(87, 85, '97', 'Crops, Seeds & Plants', 'crops-seeds--plants', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:39:38', NULL, '2020-11-16 18:39:38', 0),
(88, 85, '98', 'Farming Tools & Machinery', 'farming-tools--machinery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:39:51', NULL, '2020-11-16 18:39:51', 0),
(89, 85, '99', 'Other Agriculture', 'other-agriculture', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 18:40:03', NULL, '2020-11-16 18:40:03', 0),
(93, 1, '103', 'Car Rentals & Auto Services', 'car-rentals--auto-services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:22:15', NULL, '2020-11-17 20:22:15', 0),
(94, 0, '104', 'Essential', 'essential', NULL, NULL, NULL, NULL, 'category_log_5fe822230625e.png', NULL, 1, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:33:00', 1, '2020-12-27 05:56:51', 0),
(95, 94, '105', 'Grocery', 'grocery', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:33:24', NULL, '2020-11-17 20:33:24', 0),
(96, 94, '106', 'Fruits & Vegetables', 'fruits--vegetables', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:33:36', NULL, '2020-11-17 20:33:36', 0),
(97, 94, '107', 'Meat & Seafood', 'meat--seafood', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:33:50', NULL, '2020-11-17 20:33:50', 0),
(98, 94, '108', 'Baby Products', 'baby-products', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:34:06', NULL, '2020-11-17 20:34:06', 0),
(99, 94, '109', 'Healthcare', 'healthcare', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:34:19', NULL, '2020-11-17 20:34:19', 0),
(100, 94, '110', 'Household', 'household', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:34:39', NULL, '2020-11-17 20:34:39', 0),
(101, 94, '111', 'Other Essentials', 'other-essentials', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-17 20:34:50', NULL, '2020-11-17 20:34:50', 0),
(104, 0, '112', 'Mobiles', 'mobiles', NULL, 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', NULL, 'category_log_5fe786c5db223.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 15, 0, 1, 1, '2020-11-16 17:21:12', 1, '2020-12-26 18:53:57', 0),
(107, 3, '113', 'Commercial Property', 'commercial-property', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:45:27', NULL, '2020-11-16 17:45:27', 0),
(108, 104, '118', 'SIM Cards', 'sim-cards', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 1, '2021-01-17 19:00:04', NULL, '2021-01-17 19:00:04', 0),
(109, 104, '119', 'Mobile Phone Services', 'mobile-phone-services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 7, 0, 0, 1, '2021-01-17 19:00:17', NULL, '2021-01-17 19:00:17', 0),
(110, 2, '120', 'Desktop Computers', 'desktop-computers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 4, 0, 0, 1, '2021-01-17 19:00:49', NULL, '2021-01-17 19:00:49', 0),
(111, 2, '121', 'Laptops', 'laptops', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '2021-01-17 19:01:26', 1, '2021-01-17 19:02:47', 0),
(112, 2, '122', 'Laptop & Computer Accessories', 'laptop-computer-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '2021-01-17 19:01:33', 1, '2021-01-17 19:02:37', 0),
(113, 2, '123', 'Tablets & Accessories', 'tablets-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 1, '2021-01-17 19:01:41', NULL, '2021-01-17 19:01:41', 0),
(114, 2, '124', 'Photocopiers', 'photocopiers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-17 19:03:05', NULL, '2021-01-17 19:03:05', 0),
(116, 7, '126', 'sales', 'sales', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-24 16:03:27', NULL, '2021-01-24 16:03:27', 0),
(117, 7, '127', 'Marketing', 'marketing', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-24 16:26:47', NULL, '2021-01-24 16:26:47', 0),
(118, 7, '128', 'Supervisor', 'supervisor', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-25 06:24:22', NULL, '2021-01-25 06:24:22', 0),
(119, 7, '129', 'Office Admin', 'office-admin', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 1, '2021-01-25 15:18:26', NULL, '2021-01-25 15:18:26', 0),
(120, 8, '130', 'Refrigerators & Freezers', 'refrigerators-freezers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-02-13 15:36:47', NULL, '2021-02-13 15:36:47', 0),
(121, 0, '131', 'Business & Industry', 'business-industry', NULL, NULL, NULL, 'category_log_6027f5e644397.png', 'category_log_6027f5869fd0b.png', NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '2021-02-13 15:38:09', 1, '2021-02-13 15:54:09', 0),
(122, 121, '132', 'Industry Machinery & Tools', 'industry-machinery-tools', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-02-13 15:38:38', NULL, '2021-02-13 15:38:38', 0),
(123, 2, '133', 'Video Game Consoles & Accessories', 'video-game-consoles-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-02-15 17:43:59', NULL, '2021-02-15 17:43:59', 0),
(124, 104, '134', 'New Mobile', 'new-mobile', NULL, 'New Mobile', 'New Mobile', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 16, '2021-07-12 17:44:04', NULL, '2021-07-12 17:44:04', 0);

--
-- Triggers `prd_category`
--
DELIMITER $$
CREATE TRIGGER `before_prd_category_insert` BEFORE INSERT ON `prd_category` FOR EACH ROW begin
    declare var_pkcode int(2) default 0;
    declare var_order_id int(3) default 0;

    if new.code is null then

      select auto_increment into var_pkcode
      from information_schema.tables
      where table_name = 'prd_category'
      and table_schema = database();
      set new.code = var_pkcode+10 ;
    end if;

    if new.order_id is null then

    select ifnull(max(order_id),0) into var_order_id from  prd_category
    where parent_id = new.parent_id;

      set new.order_id = var_order_id+1 ;
    end if;

  end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_prd_category_update` BEFORE UPDATE ON `prd_category` FOR EACH ROW begin
    declare var_order_id int(3) default 0;

    if new.order_id is null then

    select ifnull(max(order_id),0) into var_order_id from  prd_category
    where parent_id = new.parent_id;

      set new.order_id = var_order_id+1 ;
    end if;

  end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prd_favourites`
--

CREATE TABLE `prd_favourites` (
  `pk_no` int(11) NOT NULL,
  `f_customer_pk_no` int(10) DEFAULT NULL,
  `f_prd_pk_no` int(10) DEFAULT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prd_features`
--

CREATE TABLE `prd_features` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) DEFAULT 0,
  `order_id` int(10) DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Brand Master Setup Table' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prd_img_library`
--

CREATE TABLE `prd_img_library` (
  `pk_no` int(11) NOT NULL,
  `f_prd_master_no` int(11) DEFAULT NULL,
  `img_name` varchar(200) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_img_library`
--

INSERT INTO `prd_img_library` (`pk_no`, `f_prd_master_no`, `img_name`, `serial_no`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '393761658396857.jpg', 1, NULL, NULL, NULL, NULL),
(2, 2, '378251658398078.jpg', 1, NULL, NULL, NULL, NULL),
(3, 2, '309371658398078.jpg', 2, NULL, NULL, NULL, NULL),
(4, 3, '16991658398925.jpg', 1, NULL, NULL, NULL, NULL),
(5, 3, '255711658398926.jpg', 2, NULL, NULL, NULL, NULL),
(6, 3, '800221658398926.jpg', 3, NULL, NULL, NULL, NULL),
(7, 4, '523921658399132.jpg', 1, NULL, NULL, NULL, NULL),
(8, 4, '408561658399132.jpg', 2, NULL, NULL, NULL, NULL),
(9, 5, '426731658399357.jpg', 1, NULL, NULL, NULL, NULL),
(10, 5, '7471658399357.jpg', 3, NULL, NULL, NULL, NULL),
(11, 6, '21511658399478.png', 1, NULL, NULL, NULL, NULL),
(12, 6, '812281658399478.png', 2, NULL, NULL, NULL, NULL),
(13, 7, '521881658399596.jpg', 1, NULL, NULL, NULL, NULL),
(14, 7, '754681658399596.jpg', 2, NULL, NULL, NULL, NULL),
(15, 7, '673931658399596.png', 3, NULL, NULL, NULL, NULL),
(16, 8, '204041658399794.jpg', 1, NULL, NULL, NULL, NULL),
(17, 8, '144531658399794.jpg', 2, NULL, NULL, NULL, NULL),
(18, 8, '203771658399794.jpg', 3, NULL, NULL, NULL, NULL),
(19, 9, '690161658399971.jpg', 1, NULL, NULL, NULL, NULL),
(20, 9, '612931658399971.jpg', 2, NULL, NULL, NULL, NULL),
(21, 10, '889731658400134.jpg', 1, NULL, NULL, NULL, NULL),
(22, 10, '675141658400134.jpg', 2, NULL, NULL, NULL, NULL),
(23, 10, '61621658400134.jpg', 3, NULL, NULL, NULL, NULL);

--
-- Triggers `prd_img_library`
--
DELIMITER $$
CREATE TRIGGER `before_prd_img_library_insert` BEFORE INSERT ON `prd_img_library` FOR EACH ROW begin 
    declare var_serial_no int(2) default 0; 

        if new.serial_no is null then 

                select ifnull(max(serial_no),0) into var_serial_no 
                        from prd_img_library 
                        where f_prd_master_no = new.f_prd_master_no; 
                        set new.serial_no = var_serial_no+1; 
                
        end if; 

    end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prd_master`
--

CREATE TABLE `prd_master` (
  `pk_no` int(11) NOT NULL,
  `ad_type` varchar(10) DEFAULT NULL COMMENT 'sell, buy',
  `area_id` int(10) DEFAULT NULL,
  `city_division` varchar(20) DEFAULT NULL,
  `city_division_pk_no` int(2) DEFAULT NULL,
  `area_url_slug` varchar(40) DEFAULT NULL,
  `city_division_url_slug` varchar(40) DEFAULT NULL,
  `customer_pk_no` bigint(20) DEFAULT NULL,
  `main_category` varchar(20) DEFAULT NULL,
  `f_cat_pk_no` int(10) DEFAULT NULL,
  `cat_url_slug` varchar(40) DEFAULT NULL,
  `f_scat_pk_no` int(11) DEFAULT NULL,
  `scat_url_slug` varchar(40) DEFAULT NULL,
  `code` int(10) DEFAULT 0,
  `ad_title` varchar(100) DEFAULT NULL,
  `url_slug` varchar(100) DEFAULT NULL,
  `f_brand` int(11) DEFAULT NULL,
  `brand_name` varchar(20) DEFAULT NULL,
  `f_model` int(11) DEFAULT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `prod_feature` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `price_unit` varchar(124) DEFAULT NULL COMMENT 'like ''total price'' or per sqft''',
  `is_negotiable` tinyint(4) DEFAULT 0,
  `price_to` float DEFAULT NULL,
  `vacanci` int(11) DEFAULT NULL,
  `business_function` varchar(124) DEFAULT NULL,
  `deadline` date DEFAULT NULL COMMENT 'job application deadline',
  `company_name` varchar(100) DEFAULT NULL COMMENT 'company name / employer name',
  `logo` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `authenticity` varchar(50) DEFAULT NULL,
  `using_condition` varchar(20) DEFAULT NULL COMMENT 'used, new',
  `prod_type` varchar(124) DEFAULT NULL COMMENT 'come from prd_type table ',
  `mobile1` varchar(20) DEFAULT NULL,
  `mobile2` varchar(20) DEFAULT NULL,
  `is_hide_mobile1` tinyint(4) DEFAULT 0,
  `is_hide_mobile2` tinyint(4) DEFAULT 0,
  `model_year` int(4) DEFAULT NULL COMMENT 'Car model year',
  `registration_year` int(4) DEFAULT NULL COMMENT 'for car category',
  `transmission` varchar(55) DEFAULT NULL COMMENT 'for car category ',
  `address` varchar(124) DEFAULT NULL,
  `body_type` varchar(55) DEFAULT NULL COMMENT 'for car category ',
  `fuel_type` varchar(55) DEFAULT NULL,
  `engine_capacity` int(2) DEFAULT NULL COMMENT 'For car category ',
  `kilometers_run` int(10) DEFAULT NULL COMMENT 'for car category ',
  `bed_no` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `bath_no` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `land_size` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `land_unit` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `house_size` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `house_unit` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `property_address` varchar(512) DEFAULT NULL COMMENT 'for property category',
  `flat_size` varchar(124) DEFAULT NULL COMMENT 'for property category',
  `gender` varchar(24) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `is_terms_condition` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `approved_by` int(2) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_view` int(10) NOT NULL DEFAULT 0,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_by` int(10) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `promotion` varchar(20) DEFAULT 'Basic' COMMENT 'Basic, Top, Urgent, Feature',
  `promotion_to` date DEFAULT NULL,
  `thumb` varchar(55) DEFAULT NULL,
  `search_key` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_master`
--

INSERT INTO `prd_master` (`pk_no`, `ad_type`, `area_id`, `city_division`, `city_division_pk_no`, `area_url_slug`, `city_division_url_slug`, `customer_pk_no`, `main_category`, `f_cat_pk_no`, `cat_url_slug`, `f_scat_pk_no`, `scat_url_slug`, `code`, `ad_title`, `url_slug`, `f_brand`, `brand_name`, `f_model`, `model_name`, `prod_feature`, `price`, `price_unit`, `is_negotiable`, `price_to`, `vacanci`, `business_function`, `deadline`, `company_name`, `logo`, `description`, `edition`, `authenticity`, `using_condition`, `prod_type`, `mobile1`, `mobile2`, `is_hide_mobile1`, `is_hide_mobile2`, `model_year`, `registration_year`, `transmission`, `address`, `body_type`, `fuel_type`, `engine_capacity`, `kilometers_run`, `bed_no`, `bath_no`, `land_size`, `land_unit`, `house_size`, `house_unit`, `property_address`, `flat_size`, `gender`, `user_name`, `is_terms_condition`, `comments`, `is_active`, `approved_by`, `approved_at`, `created_by`, `created_at`, `updated_by`, `updated_at`, `total_view`, `is_delete`, `deleted_by`, `deleted_at`, `promotion`, `promotion_to`, `thumb`, `search_key`) VALUES
(1, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 1, 'general', 104, 'mobiles', 109, 'mobile-phone-services', 101, 'Asus Rog Gaming core i7 11th Gen 16gb Ram', 'asus-rog-gaming-core-i7-11th-gen-16gb-ram', NULL, NULL, NULL, NULL, NULL, 500, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'House #2, Road #2, Block-K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:16:36', NULL, '2022-07-21 15:47:37', NULL, '2022-07-21 23:26:41', 2, 0, NULL, NULL, 'Urgent', NULL, '393761658396857.jpg', 'mirpur dhaka general mobile-phone-services Asus Rog Gaming core i7 11th Gen 16gb Ram  500 new01767671133House #2, Road #2, Block-KLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(2, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 1, 'general', 104, 'mobiles', 108, 'sim-cards', 102, 'Realme Narzo50 6/128LikeNew (Used)', 'realme-narzo50-6-128likenew-used', NULL, NULL, NULL, NULL, NULL, 19490, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'House #2, Road #2, Block-K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:16:47', NULL, '2022-07-21 16:07:58', NULL, '2022-07-21 19:19:37', 1, 0, NULL, NULL, 'Urgent', NULL, '378251658398078.jpg', 'mirpur dhaka general sim-cards Realme Narzo50 6/128LikeNew (Used)  19490 new01767671133House #2, Road #2, Block-KLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(3, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 1, 'general', 104, 'mobiles', 109, 'mobile-phone-services', 103, 'Xiaomi Poco X3', 'xiaomi-poco-x3', NULL, NULL, NULL, NULL, NULL, 15999, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'House #2, Road #2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:16:57', NULL, '2022-07-21 16:22:05', NULL, '2022-07-21 19:33:36', 1, 0, NULL, NULL, 'Urgent', NULL, '16991658398925.jpg', 'mirpur dhaka general mobile-phone-services Xiaomi Poco X3  15999 new01767671133House #2, Road #2The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(4, 'sell', 55, 'city', 8, 'gollamari', 'khulna', 1, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 104, 'Travel Storage Bag', 'travel-storage-bag', NULL, NULL, NULL, NULL, NULL, 520, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:17:05', NULL, '2022-07-21 16:25:32', NULL, '2022-07-21 16:25:32', 0, 0, NULL, NULL, 'Urgent', NULL, '523921658399132.jpg', 'gollamari khulna general mens-clothing-accessories Travel Storage Bag  520 new01767671133dhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(5, 'sell', 12, 'city', 5, 'mogbazar', 'dhaka', 1, 'general', 1, 'cars-vehicles', 13, 'cars--buses', 105, 'Toyota Noah X Pearl Color 2001', 'toyota-noah-x-pearl-color-2001', NULL, NULL, NULL, NULL, NULL, 895000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, 'Manual', 'Dhaka', NULL, 'Diseel, Electric, Petrol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:15:31', NULL, '2022-07-21 16:29:17', NULL, '2022-07-21 23:19:41', 2, 0, NULL, NULL, 'Basic', NULL, '426731658399357.jpg', 'mogbazar dhaka general cars--buses Toyota Noah X Pearl Color 2001  895000 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(6, 'sell', 50, 'city', 7, 'shibgonj', 'sylhet', 1, 'general', 1, 'cars-vehicles', 14, 'motorbikes-scooters', 106, 'Honda Hornet . 2020', 'honda-hornet-2020', NULL, NULL, NULL, NULL, NULL, 170000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:17:40', NULL, '2022-07-21 16:31:18', NULL, '2022-07-21 16:31:18', 0, 0, NULL, NULL, 'Feature', NULL, '21511658399478.png', 'shibgonj sylhet general motorbikes-scooters Honda Hornet . 2020  170000 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(7, 'sell', 9, 'city', 5, 'mohammadpur', 'dhaka', 1, 'general', 1, 'cars-vehicles', 15, 'bicycles-and-three-wheelers', 107, 'Hero Hunk DD 2018', 'hero-hunk-dd-2018', NULL, NULL, NULL, NULL, NULL, 110000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:17:18', NULL, '2022-07-21 16:33:16', NULL, '2022-07-21 19:17:48', 1, 0, NULL, NULL, 'Urgent', NULL, '521881658399596.jpg', 'mohammadpur dhaka general bicycles-and-three-wheelers Hero Hunk DD 2018  110000 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(8, 'sell', 15, 'city', 8, 'khulna-city', 'khulna', 1, 'general', 2, 'electronics-gedgets', 110, 'desktop-computers', 108, 'Fresh Gaming PC', 'fresh-gaming-pc', NULL, NULL, NULL, NULL, NULL, 60000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:15:41', NULL, '2022-07-21 16:36:34', NULL, '2022-07-21 16:36:34', 0, 0, NULL, NULL, 'Basic', NULL, '204041658399794.jpg', 'khulna-city khulna general desktop-computers Fresh Gaming PC  60000 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(9, 'sell', 16, 'city', 9, 'barishal-city', 'barishal', 1, 'general', 2, 'electronics-gedgets', 110, 'desktop-computers', 109, 'TV 40\" Smart wi-fi FULL HD LED TV. GUARANTY 5 YEAR', 'tv-40-smart-wi-fi-full-hd-led-tv-guaranty-5-year', NULL, NULL, NULL, NULL, NULL, 15999, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-21 19:15:46', NULL, '2022-07-21 16:39:31', NULL, '2022-07-21 22:47:01', 1, 0, NULL, NULL, 'Basic', NULL, '690161658399971.jpg', 'barishal-city barishal general desktop-computers TV 40\" Smart wi-fi FULL HD LED TV. GUARANTY 5 YEAR  15999 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(10, 'sell', 55, 'city', 8, 'gollamari', 'khulna', 2, 'general', 2, 'electronics-gedgets', 113, 'tablets-accessories', 110, 'Mac mini A1347 (Late 2014) Outer Case', 'mac-mini-a1347-late-2014-outer-case', NULL, NULL, NULL, NULL, NULL, 15000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 'original', 'new', NULL, '01767671133', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony', 1, NULL, 1, 1, '2022-07-26 14:43:38', NULL, '2022-07-21 16:42:14', NULL, '2022-07-26 14:43:57', 0, 0, NULL, NULL, 'Feature', '2022-08-02', '889731658400134.jpg', 'gollamari khulna general tablets-accessories Mac mini A1347 (Late 2014) Outer Case  15000 new01767671133DhakaThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.');

--
-- Triggers `prd_master`
--
DELIMITER $$
CREATE TRIGGER `after_prd_master_delete` AFTER DELETE ON `prd_master` FOR EACH ROW begin 

    update ss_customers 
        set total_post = total_post-1
        where id = old.customer_pk_no;
    update prd_category 
        set total_post = total_post-1
        where pk_no = old.f_cat_pk_no;
    update prd_category 
        set total_post = total_post-1
        where pk_no = old.f_scat_pk_no;
    
    if old.city_division = 'city' then
    update ss_cities 
        set total_post = total_post-1
        where pk_no = old.city_division_pk_no;
    end if;

    if old.city_division = 'division' then
    update ss_divisions 
        set total_post = total_post-1
        where pk_no = old.city_division_pk_no;
    end if;

    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_prd_master_insert` AFTER INSERT ON `prd_master` FOR EACH ROW begin 
    declare var_serial_no int(2) default 0; 

    update ss_customers 
        set total_post = total_post+1
        where id = new.customer_pk_no;
    update prd_category 
        set total_post = total_post+1
        where pk_no = new.f_cat_pk_no;
    update prd_category 
        set total_post = total_post+1
        where pk_no = new.f_scat_pk_no;
        
        if new.city_division = 'city' then
    update ss_cities 
        set total_post = total_post+1
        where pk_no = new.city_division_pk_no;
    end if;

    if new.city_division = 'division' then
    update ss_divisions 
        set total_post = total_post+1
        where pk_no = new.city_division_pk_no;
    end if;

    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_prd_master_update` AFTER UPDATE ON `prd_master` FOR EACH ROW begin 
    
    if old.f_cat_pk_no <> new.f_cat_pk_no then
    update prd_category 
        set total_post = total_post+1
        where pk_no = new.f_cat_pk_no;
    update prd_category 
        set total_post = total_post-1
        where pk_no = old.f_cat_pk_no;
    end if;

    if old.f_scat_pk_no <> new.f_scat_pk_no then
    update prd_category 
        set total_post = total_post+1
        where pk_no = new.f_scat_pk_no;

    update prd_category 
        set total_post = total_post-1
        where pk_no = old.f_scat_pk_no; 
    end if;


    if new.city_division = 'city' then
        if old.city_division_pk_no <> new.city_division_pk_no then
                update ss_cities 
                set total_post = total_post+1
                where pk_no = new.city_division_pk_no;

                update ss_cities 
                set total_post = total_post-1
                where pk_no = old.city_division_pk_no;

        end if;

    end if;


    if new.city_division = 'division' then
        if new.city_division_pk_no <> old.city_division_pk_no then 
        update ss_divisions 
        set total_post = total_post+1
        where pk_no = new.city_division_pk_no;

        update ss_divisions 
        set total_post = total_post-1
        where pk_no = old.city_division_pk_no;

        end if;

    end if;

    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_prd_master_insert` BEFORE INSERT ON `prd_master` FOR EACH ROW begin 
    	declare var_keyword_search varchar(5000) default null; 
	declare var_description varchar(4000) default null; 
	declare var_area_url_slug varchar(40) default null; 
	declare var_code int(10) default 0; 

       declare var_city_division_url_slug varchar(40) default null; 
       declare var_cat_url_slug varchar(40) default null; 
       declare var_scat_url_slug varchar(40) default null;

       select IFNULL(max(code),100) into var_code
                   from prd_master;
                   SET new.code = var_code+1 ;

           select url_slug into var_cat_url_slug 
           from prd_category 
           where pk_no = NEW.f_cat_pk_no;

        select url_slug into var_scat_url_slug 
           from prd_category 
           where pk_no = NEW.f_scat_pk_no;

       select url_slug into var_area_url_slug 
           from ss_areas 
           where pk_no = NEW.area_id;

       if new.city_division = 'city' then
       select url_slug into var_city_division_url_slug 
           from ss_cities 
           where pk_no = new.city_division_pk_no ;
       elseif new.city_division = 'division' then
       select url_slug into var_city_division_url_slug 
           from ss_divisions 
           where pk_no = new.city_division_pk_no ;
       else set var_city_division_url_slug = null;
       end if; 


           set new.city_division_url_slug = var_city_division_url_slug;
        set new.area_url_slug = var_area_url_slug ;
       
           set new.cat_url_slug = var_cat_url_slug ;
           set new.scat_url_slug = var_scat_url_slug ;


	set var_keyword_search = concat(new.area_url_slug , ' ', ifnull(new.city_division_url_slug,''), ' ', ifnull(new.main_category, ''), ' ', ifnull(new.scat_url_slug, ''), ' ', ifnull(new.ad_title,''), ' ', ifnull(new.brand_name,''), ' ', ifnull(new.model_name,''), ifnull(new.prod_feature,''), ifnull(new.price, ''), ifnull(new.business_function,''), ifnull(new.company_name,' '), ifnull(new.using_condition,''), ifnull(new.mobile1,''),ifnull(new.mobile2,''), ifnull(new.address,''),ifnull(new.property_address,''));
	-- set var_keyword_search = substring(var_keyword_search,1,4880);

	set new.search_key = concat(var_keyword_search,new.description) ;

    end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_prd_master_update` BEFORE UPDATE ON `prd_master` FOR EACH ROW begin 
    declare var_area_url_slug varchar(40) default null;  
    declare var_city_division_url_slug varchar(40) default null; 
    declare var_cat_url_slug varchar(40) default null; 
    declare var_scat_url_slug varchar(40) default null;
    declare var_thumb varchar(50) default null;
    declare var_keyword_search LONGTEXT CHARACTER SET utf8; 
	declare var_description LONGTEXT default null; 
    

    select url_slug into var_cat_url_slug 
        from prd_category 
        where pk_no = NEW.f_cat_pk_no;

    select url_slug into var_scat_url_slug 
        from prd_category 
        where pk_no = NEW.f_scat_pk_no;

    select url_slug into var_area_url_slug 
        from ss_areas 
        where pk_no = NEW.area_id;
    if new.city_division = 'city' then
    select url_slug into var_city_division_url_slug 
        from ss_cities 
        where pk_no = new.city_division_pk_no ;
    elseif new.city_division = 'division' then
    select url_slug into var_city_division_url_slug 
        from ss_divisions 
        where pk_no = new.city_division_pk_no ;
    else set var_city_division_url_slug = null;
    end if; 
    IF new.is_active = '1' THEN 
        SELECT prd_img_library.img_name into var_thumb 
        from prd_img_library 
        where  prd_img_library.f_prd_master_no = new.pk_no and prd_img_library.serial_no = 1 limit 1 ;
        END IF;

    set new.thumb = var_thumb; 


    set new.city_division_url_slug = var_city_division_url_slug;

    set new.area_url_slug = var_area_url_slug;
    set new.cat_url_slug = var_cat_url_slug ;
    set new.scat_url_slug = var_scat_url_slug ;


	-- SELECT fnStripTags(IFNULL(new.description,'')) INTO var_description; 

		set var_keyword_search = concat(new.area_url_slug , ' ', ifnull(new.city_division_url_slug,''), ' ', ifnull(new.main_category, ''), ' ', ifnull(new.scat_url_slug, ''), ' ', ifnull(new.ad_title,''), ' ', ifnull(new.brand_name,''), ' ', ifnull(new.model_name,''), ifnull(new.prod_feature,''), ifnull(new.price, ''), ifnull(new.business_function,''), ifnull(new.company_name,' '), ifnull(new.using_condition,''), ifnull(new.mobile1,''),ifnull(new.mobile2,''), ifnull(new.address,''),ifnull(new.property_address,'')); 
        
		-- set var_keyword_search = substring(var_keyword_search,1,4890); 
         
         -- INSERT INTO r VALUES(var_description);
         -- set var_keyword_search = new.description;

		set new.search_key = concat(var_keyword_search,new.description);
    

    end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prd_model`
--

CREATE TABLE `prd_model` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL COMMENT 'subcategory from category table\r\n',
  `brand_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) DEFAULT 0,
  `order_id` int(10) DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Brand Master Setup Table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_model`
--

INSERT INTO `prd_model` (`pk_no`, `cat_pk_no`, `scat_pk_no`, `brand_pk_no`, `name`, `name_bn`, `code`, `comments`, `is_active`, `is_delete`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 104, 21, 1, 'Galaxy Grand Prime', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL),
(2, 1, 14, 2, 'Other model', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL),
(3, 104, 21, 15, 'ZenFone Max', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL);

--
-- Triggers `prd_model`
--
DELIMITER $$
CREATE TRIGGER `before_prd_brand_insert` BEFORE INSERT ON `prd_model` FOR EACH ROW BEGIN
                declare var_order_id int(4) default 0 ;

                select IFNULL(max(order_id),0) into var_order_id
                        from prd_brand
                        where cat_pk_no  = NEW.cat_pk_no ;
                SET NEW.order_id = var_order_id+1 ;
    


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_prd_brand_update` BEFORE UPDATE ON `prd_model` FOR EACH ROW BEGIN
                declare var_order_id int(4) default 0 ;

                select IFNULL(max(order_id),0) into var_order_id
                        from prd_brand
                        where cat_pk_no  = NEW.cat_pk_no ;
                SET NEW.order_id = var_order_id+1 ;
    


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prd_reports`
--

CREATE TABLE `prd_reports` (
  `pk_no` int(11) NOT NULL,
  `prod_pk_no` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'unseen =0, seen = 1, replied = 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prd_reports`
--

INSERT INTO `prd_reports` (`pk_no`, `prod_pk_no`, `email`, `reason`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 24, 'ertyu@mail.com', 'Fraud', '<a href=\"https://evereest.ru/\">купить холодильник бу</a>https://evereest.ru/   https://evereest.ru/kupit-b-u-stiralnuyu-mashinku/ https://evereest.ru/kupit-b-u-xolodilnik-v-spb/', '2021-01-31', '2021-01-31', 0),
(3, 24, 'jojohn10739@yandex.ru', 'Duplicat', '<a href=\"https://everestbu.ru\">секс проститутки</a> \r\n<a href=\"https://everestbu.ru/shop/stiralnie-mashini\">секс проститутки</a> \r\n<a href=\"https://everestbu.ru/shop/xolodilniki\">секс проститутки</a>', '2021-02-02', '2021-02-02', 0),
(5, 24, 'carlosgrebt@gmail.com', 'Duplicat', '<a href=http://zrenieblog.ru>Detail</a> <a href=http://zrenieblog.ru>http://zrenieblog.ru</a> http://zrenieblog.ru  <a href=\"http://zrenieblog.ru\">http://zrenieblog.ru</a> \r\n \r\n歷史 \r\n \r\n六七千年前的先民就開始釣魚。周文王曾和兒子們在靈沼釣魚取樂。戰國時范蠡也愛釣魚，常把所釣之魚供給越王勾踐食用。 二十世紀八十年代，中國大陸的各級釣魚協會成立，釣魚地點也從自然水域向養殖水域過度，所釣之魚則從粗養向細養過度。人數增多、水體污染及濫捕濫撈導致釣魚難度上升。釣魚協會開始與漁民和農民簽訂文件，使更多釣者能夠在養殖水域釣魚，達到了雙贏的目的。 二十世紀九十年代初，來自台灣的懸釣法走紅大陸，各地開始建造標準釣池。 二十世紀末，發達國家的釣者提倡回顧自然，引發新一輪野釣戰，而中國的釣者則更青睞精養魚池。<>] \r\n工具 \r\n一种钓鱼竿机械部分示意图 \r\n \r\n最基本的钓具包括：鱼竿、鱼线、鱼钩、沉坨（又名沉子）、浮标（又名鱼漂）、鱼饵。<>]:1其他辅助钓具包括：失手绳、钓箱、线轮、抄网、鱼篓、渔具盒、钓鱼服、钓鱼鞋等。<>]:1 \r\n \r\n钓竿一般由玻璃纖維或碳纖維轻而有力的竿状物质製成，钓竿和鱼饵用丝线联接。一般的鱼饵可以是蚯蚓、米饭、蝦子、菜叶、苍蝇、蛆等，现代有专门制作好（多数由自己配置的半成品）的粉製鱼饵出售。鱼饵挂在鱼鉤上，不同的對象鱼有不同的釣組配置。在周围水面撒一些誘餌通常会有較好的集魚效果。 \r\n钓具 \r\n鱼竿 \r\n主条目：鱼竿 \r\n \r\n钓鱼的鱼竿按照材质包括：传统竹竿、玻璃纤维竿、碳素竿，按照钓法包括：手竿、矶竿、海竿（又名甩竿），按照所钓鱼类包括：溪流小继竿、日鲫竿（又名河内竿）、鲤竿、矶中小物竿。<>]:6-8 \r\n鱼钩 \r\n主条目：鱼钩 \r\n \r\n鱼钩就是垂钓用的钩，主要分为：有倒钩、无倒钩、毛钩。<>]:14 \r\n鱼线 \r\n主条目：鱼线 \r\n \r\n鱼线就是垂钓时绑接鱼竿和鱼钩的线，历史上曾使用蚕丝（远古日本）、发丝（江户时期日本）、马尾（西欧）、二枚贝（地中海）、蛛网丝（夏威夷）、琼麻（东南亚）、尼龙钓线（美国）。<>]:25 \r\n鱼漂 \r\n主条目：鱼漂 \r\n \r\n鱼漂又名浮标，垂钓时栓在鱼线上的能漂浮的东西，主要用于搜集水底情报，查看鱼汛，观察鱼饵存留状态，以及水底水流起伏变化。<>]:36 \r\n鱼饵 \r\n主条目：鱼饵', '2021-02-12', '2021-02-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prd_type`
--

CREATE TABLE `prd_type` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prd_type`
--

INSERT INTO `prd_type` (`pk_no`, `cat_pk_no`, `scat_pk_no`, `name`, `name_bn`, `url_slug`, `order_id`, `status`, `comments`, `is_active`, `is_delete`, `total_post`, `active_post`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(7, 1, 15, 'Bicycles', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 19:53:56', NULL, '2020-11-17 19:53:56'),
(8, 1, 15, 'Three Wheelers & CNGs', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 19:54:16', 1, '2020-11-17 20:16:04'),
(12, 1, 17, 'Trucks', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:16:38', NULL, '2020-11-17 20:16:38'),
(13, 1, 17, 'Buses', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:17:03', NULL, '2020-11-17 20:17:03'),
(14, 1, 17, 'Vans', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:17:21', NULL, '2020-11-17 20:17:21'),
(15, 1, 18, 'Tractors', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:17:56', NULL, '2020-11-17 20:17:56'),
(16, 1, 18, 'Heavy-Duty', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:18:09', NULL, '2020-11-17 20:18:09'),
(17, 1, 19, 'Safety & Security', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:18:52', NULL, '2020-11-17 20:18:52'),
(18, 1, 19, 'Maintenance & Repair', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:19:05', NULL, '2020-11-17 20:19:05'),
(19, 1, 19, 'Audio & Video', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:19:32', NULL, '2020-11-17 20:19:32'),
(20, 1, 19, 'Tyres & Rims', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:19:51', NULL, '2020-11-17 20:19:51'),
(21, 1, 19, 'Auto parts', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:20:11', NULL, '2020-11-17 20:20:11'),
(22, 1, 19, 'Other Accessories', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:20:49', NULL, '2020-11-17 20:20:49'),
(23, 1, 93, 'Car Maintenance', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:22:51', NULL, '2020-11-17 20:22:51'),
(24, 1, 93, 'Two Wheeler Maintenance', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:23:13', NULL, '2020-11-17 20:23:13'),
(25, 1, 93, 'Commercial Vehicle Rentals', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:23:44', NULL, '2020-11-17 20:23:44'),
(26, 1, 93, 'Rent A Car', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:24:04', NULL, '2020-11-17 20:24:04'),
(27, 1, 93, 'Other Services', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:24:27', NULL, '2020-11-17 20:24:27'),
(28, 94, 95, 'Beverages', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:43:29', NULL, '2020-11-17 20:43:29'),
(29, 94, 95, 'Frozen', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:43:44', NULL, '2020-11-17 20:43:44'),
(30, 94, 95, 'Rice & Pulses', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:44:26', NULL, '2020-11-17 20:44:26'),
(31, 94, 95, 'Canned, Dry & Packaged Foods', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:49:37', NULL, '2020-11-17 20:49:37'),
(32, 94, 95, 'Dairy & Chilled', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:50:06', NULL, '2020-11-17 20:50:06'),
(33, 94, 95, 'Biscuits, Snacks & Chocolates', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:50:26', NULL, '2020-11-17 20:50:26'),
(34, 94, 95, 'Baking & Cooking', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:50:40', NULL, '2020-11-17 20:50:40'),
(35, 94, 95, 'Bakery', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:51:02', NULL, '2020-11-17 20:51:02'),
(36, 94, 95, 'Personal Care', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:51:16', NULL, '2020-11-17 20:51:16'),
(37, 94, 95, 'Other', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-17 20:51:37', NULL, '2020-11-17 20:51:37'),
(39, 94, 100, 'Clenning', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:09:34', NULL, '2020-11-18 13:09:34'),
(40, 94, 100, 'Cleaning', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:11:53', NULL, '2020-11-18 13:11:53'),
(41, 94, 100, 'Laundry', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:12:08', NULL, '2020-11-18 13:12:08'),
(42, 94, 100, 'Dish Washing', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:12:21', NULL, '2020-11-18 13:12:21'),
(43, 94, 100, 'Tissues & Disposables', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:12:32', NULL, '2020-11-18 13:12:32'),
(44, 94, 100, 'Freshners', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:12:48', NULL, '2020-11-18 13:12:48'),
(45, 94, 100, 'Repellents', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 13:13:00', NULL, '2020-11-18 13:13:00'),
(47, 2, 20, 'Motherboards', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:03:15', NULL, '2020-11-18 14:03:15'),
(48, 2, 20, 'Keyboards', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:03:31', NULL, '2020-11-18 14:03:31'),
(49, 2, 20, 'Processors', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:03:50', NULL, '2020-11-18 14:03:50'),
(50, 2, 20, 'Monitors', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:04:02', NULL, '2020-11-18 14:04:02'),
(51, 2, 20, 'Hard Drives', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:04:09', NULL, '2020-11-18 14:04:09'),
(52, 2, 20, 'Graphics Cards', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:04:21', NULL, '2020-11-18 14:04:21'),
(53, 2, 20, 'Software', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:04:34', NULL, '2020-11-18 14:04:34'),
(54, 2, 20, 'Mouse', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:04:51', NULL, '2020-11-18 14:04:51'),
(55, 2, 20, 'Modems & Routers', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:05:09', NULL, '2020-11-18 14:05:09'),
(56, 2, 20, 'Printers & Scanners', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:05:29', NULL, '2020-11-18 14:05:29'),
(57, 2, 20, 'RAMs', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:05:42', NULL, '2020-11-18 14:05:42'),
(58, 2, 20, 'Pendrive', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:05:53', NULL, '2020-11-18 14:05:53'),
(59, 2, 20, 'UPS', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:06:13', NULL, '2020-11-18 14:06:13'),
(60, 2, 20, 'Laptop Batteries', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:06:26', NULL, '2020-11-18 14:06:26'),
(61, 2, 20, 'Others', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:06:40', NULL, '2020-11-18 14:06:40'),
(62, 2, 27, 'Projectors', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:07:23', NULL, '2020-11-18 14:07:23'),
(63, 2, 27, 'Video Players', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:07:35', NULL, '2020-11-18 14:07:35'),
(64, 2, 27, 'TV Boxes & Cards', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:07:49', NULL, '2020-11-18 14:07:49'),
(66, 2, 25, 'Cameras', NULL, NULL, 19, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:09:00', NULL, '2020-11-18 14:09:00'),
(67, 2, 25, 'Camera Accessories', NULL, NULL, 20, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:09:09', NULL, '2020-11-18 14:09:09'),
(68, 2, 25, 'Security & Surveillance Cameras', NULL, NULL, 21, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:09:18', NULL, '2020-11-18 14:09:18'),
(69, 2, 25, 'Camcorders', NULL, NULL, 22, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:09:30', NULL, '2020-11-18 14:09:30'),
(70, 2, 25, 'Lens', NULL, NULL, 23, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:09:39', NULL, '2020-11-18 14:09:39'),
(72, 2, 23, 'Earphones & Headphones', NULL, NULL, 24, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:10:19', NULL, '2020-11-18 14:10:19'),
(73, 2, 23, 'MP3 Players', NULL, NULL, 25, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:10:30', NULL, '2020-11-18 14:10:30'),
(74, 2, 23, 'Sound Systems', NULL, NULL, 26, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:10:40', NULL, '2020-11-18 14:10:40'),
(76, 5, 42, 'Shirts', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:17:06', NULL, '2020-11-18 14:17:06'),
(77, 5, 42, 'Tshirts', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:17:35', NULL, '2020-11-18 14:17:35'),
(78, 5, 42, 'Pants', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:17:48', NULL, '2020-11-18 14:17:48'),
(79, 5, 42, 'Suits & Blazers', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:18:02', NULL, '2020-11-18 14:18:02'),
(81, 5, 42, 'Jackets', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:18:15', NULL, '2020-11-18 14:18:15'),
(82, 5, 42, 'Hoodies & Sweaters', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:18:27', NULL, '2020-11-18 14:18:27'),
(83, 5, 42, 'Traditional Wear', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:18:43', NULL, '2020-11-18 14:18:43'),
(84, 5, 42, 'Innerwear & Accessories', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:19:01', NULL, '2020-11-18 14:19:01'),
(85, 5, 42, 'Shoes', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:19:13', NULL, '2020-11-18 14:19:13'),
(86, 5, 43, 'Traditonal Wear', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:19:46', NULL, '2020-11-18 14:19:46'),
(87, 5, 43, 'Western Wear', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:19:58', NULL, '2020-11-18 14:19:58'),
(89, 5, 43, 'Winter Wear', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:20:22', NULL, '2020-11-18 14:20:22'),
(93, 5, 45, 'Earrings', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:03', NULL, '2020-11-18 14:22:03'),
(94, 5, 45, 'Rings', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:13', NULL, '2020-11-18 14:22:13'),
(95, 5, 45, 'Jewellery Sets', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:23', NULL, '2020-11-18 14:22:23'),
(96, 5, 45, 'Necklaces', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:33', NULL, '2020-11-18 14:22:33'),
(97, 5, 45, 'Bangles & Bracelets', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:42', NULL, '2020-11-18 14:22:42'),
(98, 5, 45, 'Gems', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:22:55', NULL, '2020-11-18 14:22:55'),
(99, 5, 45, 'Others', NULL, NULL, 19, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:23:06', NULL, '2020-11-18 14:23:06'),
(100, 5, 47, 'Analog', NULL, NULL, 20, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:23:49', NULL, '2020-11-18 14:23:49'),
(101, 5, 47, 'Chronograph', NULL, NULL, 21, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:23:58', NULL, '2020-11-18 14:23:58'),
(102, 5, 47, 'Smart Watches', NULL, NULL, 22, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:24:07', NULL, '2020-11-18 14:24:07'),
(103, 5, 47, 'Digital', NULL, NULL, 23, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:24:16', NULL, '2020-11-18 14:24:16'),
(104, 5, 47, 'Sports & Fitness Gadgets', NULL, NULL, 24, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:24:28', NULL, '2020-11-18 14:24:28'),
(105, 5, 50, 'Hair Care', NULL, NULL, 25, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:29:10', NULL, '2020-11-18 14:29:10'),
(106, 5, 50, 'Grooming', NULL, NULL, 26, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:29:20', NULL, '2020-11-18 14:29:20'),
(107, 5, 50, 'Bodycare', NULL, NULL, 27, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:29:29', NULL, '2020-11-18 14:29:29'),
(108, 5, 50, 'Perfumes', NULL, NULL, 28, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:29:39', NULL, '2020-11-18 14:29:39'),
(109, 5, 50, 'Cosmetics', NULL, NULL, 29, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:29:49', NULL, '2020-11-18 14:29:49'),
(110, 6, 53, 'Bird', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:32:07', NULL, '2020-11-18 14:32:07'),
(111, 6, 53, 'Cat', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:32:20', NULL, '2020-11-18 14:32:20'),
(112, 6, 53, 'Dog', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:32:31', NULL, '2020-11-18 14:32:31'),
(113, 6, 53, 'Fish', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:32:49', NULL, '2020-11-18 14:32:49'),
(114, 6, 53, 'Guinea pig / mouse', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:32:58', NULL, '2020-11-18 14:32:58'),
(115, 6, 53, 'Rabbit', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:33:10', NULL, '2020-11-18 14:33:10'),
(116, 6, 53, 'Reptile', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:33:19', NULL, '2020-11-18 14:33:19'),
(117, 6, 53, 'Other', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-11-18 14:33:29', NULL, '2020-11-18 14:33:29'),
(118, 7, 58, 'Full Time', NULL, 'full-time', 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL),
(134, 94, 97, 'Fish', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:52:25', NULL, '2020-12-01 11:52:25'),
(135, 94, 97, 'Beef', NULL, NULL, 19, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:52:54', NULL, '2020-12-01 11:52:54'),
(136, 94, 97, 'Mutton', NULL, NULL, 20, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:53:03', NULL, '2020-12-01 11:53:03'),
(137, 94, 97, 'Chicken', NULL, NULL, 21, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:53:12', NULL, '2020-12-01 11:53:12'),
(138, 94, 98, 'Baby food', NULL, NULL, 22, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:53:33', NULL, '2020-12-01 11:53:33'),
(139, 94, 98, 'Diapers & Wipes', NULL, NULL, 23, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:53:44', NULL, '2020-12-01 11:53:44'),
(140, 94, 98, 'Skin & Haircare', NULL, NULL, 24, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:53:54', NULL, '2020-12-01 11:53:54'),
(141, 94, 98, 'Baby accessories', NULL, NULL, 25, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:54:06', NULL, '2020-12-01 11:54:06'),
(142, 94, 98, 'For Mom', NULL, NULL, 26, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:54:18', NULL, '2020-12-01 11:54:18'),
(149, 8, 70, 'Sofas', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:04', NULL, '2020-12-01 11:58:04'),
(150, 8, 70, 'TV Stands', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:15', NULL, '2020-12-01 11:58:15'),
(151, 8, 70, 'Showcases', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:25', NULL, '2020-12-01 11:58:25'),
(152, 8, 70, 'Shoe Racks', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:35', NULL, '2020-12-01 11:58:35'),
(153, 8, 70, 'Centre & Side Tables', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:44', NULL, '2020-12-01 11:58:44'),
(154, 8, 70, 'Bookcases & Shelves', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:58:53', NULL, '2020-12-01 11:58:53'),
(155, 8, 70, 'Tables & Chairs', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:59:01', NULL, '2020-12-01 11:59:01'),
(156, 8, 70, 'Others', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:59:10', NULL, '2020-12-01 11:59:10'),
(157, 8, 71, 'Cabinets', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:59:47', NULL, '2020-12-01 11:59:47'),
(158, 8, 71, 'Dining Tables & Chairs', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 11:59:56', NULL, '2020-12-01 11:59:56'),
(159, 8, 71, 'Racks & Trolleys', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:00:05', NULL, '2020-12-01 12:00:05'),
(161, 8, 72, 'Beds', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:00:32', NULL, '2020-12-01 12:00:32'),
(162, 8, 72, 'Dressing Tables', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:00:40', NULL, '2020-12-01 12:00:40'),
(163, 8, 72, 'Wardrobes', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:00:48', NULL, '2020-12-01 12:00:48'),
(165, 8, 73, 'Office Chairs', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:02:16', NULL, '2020-12-01 12:02:16'),
(166, 8, 73, 'Desks', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:02:24', NULL, '2020-12-01 12:02:24'),
(167, 8, 73, 'Conference Tables', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:02:32', NULL, '2020-12-01 12:02:32'),
(168, 8, 73, 'Workstations', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:02:42', NULL, '2020-12-01 12:02:42'),
(169, 8, 73, 'Reception Tables', NULL, NULL, 19, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:02:50', NULL, '2020-12-01 12:02:50'),
(170, 8, 73, 'Display Racks', NULL, NULL, 20, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:03:00', NULL, '2020-12-01 12:03:00'),
(172, 8, 75, 'ACs & Coolers', NULL, NULL, 21, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:03:43', NULL, '2020-12-01 12:03:43'),
(173, 8, 75, 'Fans', NULL, NULL, 22, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:03:54', NULL, '2020-12-01 12:03:54'),
(174, 8, 75, 'Heaters', NULL, NULL, 23, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:04:04', NULL, '2020-12-01 12:04:04'),
(175, 8, 75, 'Solar System', NULL, NULL, 24, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:04:16', NULL, '2020-12-01 12:04:16'),
(176, 8, 75, 'IPS', NULL, NULL, 25, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:04:25', NULL, '2020-12-01 12:04:25'),
(177, 8, 75, 'Generators', NULL, NULL, 26, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:04:34', NULL, '2020-12-01 12:04:34'),
(178, 8, 75, 'Lighting', NULL, NULL, 27, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:04:43', NULL, '2020-12-01 12:04:43'),
(179, 8, 77, 'Bathroom Products', NULL, NULL, 28, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:05:31', NULL, '2020-12-01 12:05:31'),
(180, 8, 77, 'Tools & Machineries', NULL, NULL, 29, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:05:40', NULL, '2020-12-01 12:05:40'),
(181, 8, 77, 'Doors', NULL, NULL, 30, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:05:47', NULL, '2020-12-01 12:05:47'),
(182, 8, 77, 'Kitchen & Dining', NULL, NULL, 31, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:05:57', NULL, '2020-12-01 12:05:57'),
(183, 8, 77, 'Sewing Machines', NULL, NULL, 32, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:06:05', NULL, '2020-12-01 12:06:05'),
(185, 8, 78, 'Curtains', NULL, NULL, 33, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:06:37', NULL, '2020-12-01 12:06:37'),
(186, 8, 78, 'Cushions & Covers', NULL, NULL, 34, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:06:47', NULL, '2020-12-01 12:06:47'),
(187, 8, 78, 'Mattresses & Bedding', NULL, NULL, 35, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:06:55', NULL, '2020-12-01 12:06:55'),
(188, 8, 78, 'Carpets', NULL, NULL, 36, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:07:05', NULL, '2020-12-01 12:07:05'),
(189, 8, 78, 'Home Decor', NULL, NULL, 37, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:07:14', NULL, '2020-12-01 12:07:14'),
(190, 8, 78, 'Handicrafts', NULL, NULL, 38, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:07:22', NULL, '2020-12-01 12:07:22'),
(191, 8, 78, 'Antiques', NULL, NULL, 39, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:07:31', NULL, '2020-12-01 12:07:31'),
(192, 8, 78, 'Paintings', NULL, NULL, 40, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:07:40', NULL, '2020-12-01 12:07:40'),
(204, 4, 35, 'Keyboard & Piano', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:13:37', NULL, '2020-12-01 12:13:37'),
(205, 4, 35, 'Percussion & Drums', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:13:47', NULL, '2020-12-01 12:13:47'),
(206, 4, 35, 'String Instruments & Amplifiers', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:13:56', NULL, '2020-12-01 12:13:56'),
(207, 4, 35, 'Studio & Live Music Equipment', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:14:05', NULL, '2020-12-01 12:14:05'),
(208, 4, 35, 'Vinyl', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:14:20', NULL, '2020-12-01 12:14:20'),
(209, 4, 35, 'Woodwind & Brass', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:14:32', NULL, '2020-12-01 12:14:32'),
(210, 4, 35, 'Others', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:14:45', NULL, '2020-12-01 12:14:45'),
(211, 4, 36, 'Boxing & Martial Arts', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:15:23', NULL, '2020-12-01 12:15:23'),
(212, 4, 36, 'Cricket', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:15:31', NULL, '2020-12-01 12:15:31'),
(213, 4, 36, 'Fishing & Camping', NULL, NULL, 10, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:15:39', NULL, '2020-12-01 12:15:39'),
(214, 4, 36, 'Football', NULL, NULL, 11, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:15:47', NULL, '2020-12-01 12:15:47'),
(215, 4, 36, 'Games & Board Games', NULL, NULL, 12, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:15:56', NULL, '2020-12-01 12:15:56'),
(216, 4, 36, 'Hockey', NULL, NULL, 13, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:16:05', NULL, '2020-12-01 12:16:05'),
(217, 4, 36, 'Indoor Sports', NULL, NULL, 14, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:16:14', NULL, '2020-12-01 12:16:14'),
(219, 4, 37, 'Dumbbells', NULL, NULL, 15, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:16:47', NULL, '2020-12-01 12:16:47'),
(220, 4, 37, 'Treadmills', NULL, NULL, 16, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:16:53', NULL, '2020-12-01 12:16:53'),
(221, 4, 37, 'Exercise Bikes', NULL, NULL, 17, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:17:03', NULL, '2020-12-01 12:17:03'),
(222, 4, 37, 'Weight Loss', NULL, NULL, 18, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:17:13', NULL, '2020-12-01 12:17:13'),
(224, 4, 38, 'Books & Novels', NULL, NULL, 19, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:17:43', NULL, '2020-12-01 12:17:43'),
(225, 4, 38, 'DVDs & CDs', NULL, NULL, 20, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:17:51', NULL, '2020-12-01 12:17:51'),
(226, 4, 38, 'Magazines & Comics', NULL, NULL, 21, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:18:00', NULL, '2020-12-01 12:18:00'),
(228, 4, 39, 'Baby Care', NULL, NULL, 22, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:18:29', NULL, '2020-12-01 12:18:29'),
(229, 4, 39, 'Car Seats & Carriers', NULL, NULL, 23, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:18:39', NULL, '2020-12-01 12:18:39'),
(230, 4, 39, 'Prams & Strollers', NULL, NULL, 24, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:18:49', NULL, '2020-12-01 12:18:49'),
(231, 4, 39, 'Toys', NULL, NULL, 25, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:18:58', NULL, '2020-12-01 12:18:58'),
(233, 3, 107, 'Building', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:20:34', NULL, '2020-12-01 12:20:34'),
(234, 3, 107, 'Factory / Mill', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:20:55', NULL, '2020-12-01 12:20:55'),
(235, 3, 107, 'Hotel', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:02', NULL, '2020-12-01 12:21:02'),
(236, 3, 107, 'Office', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:09', NULL, '2020-12-01 12:21:09'),
(237, 3, 107, 'Restaurant', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:17', NULL, '2020-12-01 12:21:17'),
(238, 3, 107, 'Shop', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:23', NULL, '2020-12-01 12:21:23'),
(239, 3, 107, 'Warehouse', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:30', NULL, '2020-12-01 12:21:30'),
(240, 3, 107, 'Other', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:21:37', NULL, '2020-12-01 12:21:37'),
(245, 104, 26, 'Power Banks', NULL, NULL, 1, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:24:31', NULL, '2020-12-01 12:24:31'),
(246, 104, 26, 'Screen Protectors', NULL, NULL, 2, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:24:42', NULL, '2020-12-01 12:24:42'),
(247, 104, 26, 'Chargers', NULL, NULL, 3, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:24:49', NULL, '2020-12-01 12:24:49'),
(248, 104, 26, 'Cables', NULL, NULL, 4, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:24:58', NULL, '2020-12-01 12:24:58'),
(249, 104, 26, 'Holders & Stands', NULL, NULL, 5, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:25:05', NULL, '2020-12-01 12:25:05'),
(250, 104, 26, 'Bags & Cases', NULL, NULL, 6, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:25:11', NULL, '2020-12-01 12:25:11'),
(251, 104, 26, 'VR Boxes', NULL, NULL, 7, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:25:16', NULL, '2020-12-01 12:25:16'),
(252, 104, 26, 'Selfie Sticks', NULL, NULL, 8, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:25:22', NULL, '2020-12-01 12:25:22'),
(253, 104, 26, 'Others', NULL, NULL, 9, NULL, NULL, 1, 0, 0, 0, 1, '2020-12-01 12:25:28', NULL, '2020-12-01 12:25:28');

--
-- Triggers `prd_type`
--
DELIMITER $$
CREATE TRIGGER `before_prd_type_insert` BEFORE INSERT ON `prd_type` FOR EACH ROW BEGIN
                declare var_order_id int(4) default 0 ;

                select IFNULL(max(order_id),0) into var_order_id
                        from prd_type
                        where cat_pk_no  = NEW.cat_pk_no ;
                SET NEW.order_id = var_order_id+1 ;
    


END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_prd_type_update` BEFORE UPDATE ON `prd_type` FOR EACH ROW BEGIN
                declare var_order_id int(4) default 0 ;

                select IFNULL(max(order_id),0) into var_order_id
                        from prd_type
                        where cat_pk_no  = NEW.cat_pk_no ;
                SET NEW.order_id = var_order_id+1 ;
    


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prod_job_preference`
--

CREATE TABLE `prod_job_preference` (
  `pk_no` int(10) NOT NULL,
  `prod_pk_no` int(10) DEFAULT NULL,
  `mini_qualification` varchar(100) DEFAULT NULL,
  `req_expriance` varchar(100) DEFAULT NULL,
  `edu_specialization` varchar(100) DEFAULT NULL,
  `receive_applications_via` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `max_age` int(2) DEFAULT NULL,
  `pref_gender` varchar(60) DEFAULT NULL,
  `application_requirements` varchar(255) DEFAULT NULL,
  `role_designation` varchar(100) DEFAULT NULL,
  `total_vacancies` int(10) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `business_function` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `status`, `created_by`, `edited_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super admin', 1, 1, 0, '2020-03-03 06:42:11', '2020-03-03 06:42:11', '2017-03-11 16:42:11'),
(8, 'Admin', 1, 1, 0, '2020-03-03 06:42:11', '2020-03-03 06:42:11', NULL),
(12, 'Maneger', 1, 1, 1, NULL, '2020-10-06 05:02:37', '2021-07-12 17:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `permissions`, `role_id`, `created_at`, `updated_at`) VALUES
(1, ',view_dashboard,', 1, NULL, NULL),
(2, ',view_role,edit_role,view_action,delete_action,view_category,new_category,edit_category,view_sub_category,', 12, '2020-10-06 05:02:37', '2021-07-12 17:43:25'),
(3, ',view_dashboard,add_user_report,execute_dashboard,view_role,', 8, NULL, NULL),
(4, ',view_role,view_admin_user,view_menu,view_action,new_action,', 0, '2022-07-28 15:00:51', '2022-07-28 15:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) NOT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8 DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 DEFAULT NULL,
  `website_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_address` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `whatsapp_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `website_title`, `logo`, `favicon`, `meta_keyword`, `meta_description`, `website_email`, `phone`, `address`, `map_address`, `facebook_link`, `twitter_link`, `instagram_link`, `linkedin_link`, `whatsapp_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(12, 'abubazar.com', 'uploads/2022/06/1655658537-logo-02.jpg', 'uploads/2022/06/1655658561-logo-02.jpg', 'abubazar.com', 'Gogoads', 'siteemail@gmail.com', '01478523690', 'Konabari, Gazipur, Dhaka', 'Dhaka, Bangladesh', 'facebook.com', 'twitter.com', 'instagram.com', 'linkedin.com', 'whatsapp.com', 'youtube.com', '2022-05-17 14:57:55', '2022-07-21 15:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `sls_payments`
--

CREATE TABLE `sls_payments` (
  `pk_no` bigint(20) NOT NULL,
  `f_customer_pk_no` int(10) DEFAULT NULL,
  `status` varchar(124) DEFAULT NULL,
  `tran_date` date DEFAULT NULL,
  `tran_id` varchar(124) DEFAULT NULL,
  `val_id` varchar(124) DEFAULT NULL,
  `amount` float(11,3) DEFAULT NULL,
  `store_amount` float(11,3) DEFAULT NULL,
  `bank_tran_id` varchar(124) DEFAULT NULL,
  `card_type` varchar(124) DEFAULT NULL,
  `emi_instalment` varchar(124) DEFAULT NULL,
  `emi_amount` float(11,3) DEFAULT NULL,
  `emi_description` varchar(124) DEFAULT NULL,
  `emi_issuer` varchar(124) DEFAULT NULL,
  `card_no` varchar(124) DEFAULT NULL,
  `card_issuer` varchar(124) DEFAULT NULL,
  `card_brand` varchar(124) DEFAULT NULL,
  `card_issuer_country` varchar(124) DEFAULT NULL,
  `card_issuer_country_code` varchar(124) DEFAULT NULL,
  `APIConnect` varchar(124) DEFAULT NULL,
  `validated_on` varchar(124) DEFAULT NULL,
  `gw_version` varchar(124) DEFAULT NULL,
  `payment_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `payment_type` varchar(40) DEFAULT NULL,
  `f_prod_pk_no` int(10) DEFAULT NULL,
  `f_promotion_details_no` int(3) DEFAULT NULL,
  `f_package_pk_no` int(3) DEFAULT NULL,
  `add_limit` varchar(10) DEFAULT '0',
  `expired_on` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sls_payments`
--

INSERT INTO `sls_payments` (`pk_no`, `f_customer_pk_no`, `status`, `tran_date`, `tran_id`, `val_id`, `amount`, `store_amount`, `bank_tran_id`, `card_type`, `emi_instalment`, `emi_amount`, `emi_description`, `emi_issuer`, `card_no`, `card_issuer`, `card_brand`, `card_issuer_country`, `card_issuer_country_code`, `APIConnect`, `validated_on`, `gw_version`, `payment_at`, `created_at`, `created_by`, `updated_at`, `updated_by`, `payment_type`, `f_prod_pk_no`, `f_promotion_details_no`, `f_package_pk_no`, `add_limit`, `expired_on`, `date`) VALUES
(3, 2, 'Free', NULL, NULL, NULL, 0.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-24 01:08:04', NULL, NULL, '2022-07-24 01:08:04', 2, '2022-07-24 01:08:04', NULL, NULL, NULL, NULL, 1, '0', '2022-08-24 01:08:04', NULL),
(4, 2, 'VALID', '2022-07-24', 'HJNS75STXDRH4', 'EC-3W83969444672810Y', 2000.000, NULL, NULL, 'PayPal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-24 01:09:03', NULL, '2022-07-24 01:09:03', '2022-07-24 01:09:03', 2, '2022-07-24 01:09:03', NULL, 'package', NULL, NULL, 2, '2', '2022-08-24 01:09:03', NULL),
(5, 2, 'Due', '2022-07-25', NULL, NULL, 2000.000, NULL, NULL, 'offline_payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 23:40:16', NULL, '2022-07-25 23:40:16', '2022-07-25 23:40:16', 2, '2022-07-25 23:40:16', NULL, 'package', NULL, NULL, 2, '2', '2022-08-25 23:40:16', NULL),
(6, 2, 'Due', '2022-07-25', NULL, NULL, 5000.000, NULL, NULL, 'offline_payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 23:57:10', NULL, '2022-07-25 23:57:10', '2022-07-25 23:57:10', 2, '2022-07-26 14:22:05', 1, 'package', NULL, NULL, 3, '50', '2022-09-25 23:57:10', NULL),
(7, 2, 'Due', '2022-07-26', NULL, NULL, 900.000, NULL, NULL, 'offline_payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 14:35:12', NULL, '2022-07-26 14:35:12', '2022-07-26 14:35:12', 2, '2022-07-26 14:35:12', NULL, 'promotion', 10, 3, NULL, '0', '2022-08-02 14:35:12', NULL),
(8, 2, 'VALID', '2022-07-26', NULL, NULL, 1350.000, NULL, NULL, 'offline_payment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-26 14:43:57', NULL, '2022-07-26 14:43:57', '2022-07-26 14:43:57', 2, '2022-07-26 21:12:03', 1, 'promotion', 10, 5, NULL, '0', '2022-08-02 14:43:57', NULL),
(9, 3, 'Free', NULL, NULL, NULL, 0.000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-28 21:16:13', NULL, NULL, '2022-07-28 21:16:13', 3, '2022-07-28 21:16:13', NULL, NULL, NULL, NULL, 1, '0', '2022-08-28 21:16:13', NULL);

--
-- Triggers `sls_payments`
--
DELIMITER $$
CREATE TRIGGER `after_sls_payments_insert` AFTER INSERT ON `sls_payments` FOR EACH ROW begin 
	declare var_promotion varchar(40) default 'Basic'; 
	declare var_day_limit int default 0; 
			
			if new.payment_type = 'promotion' then 
				select title, day_limit into var_promotion, var_day_limit
					from sls_promotion_details 
					where round(price) = round(new.amount)
					and pk_no = new.f_promotion_details_no;

				update prd_master 
					set promotion = var_promotion, 
					promotion_to = DATE(NOW() + INTERVAL var_day_limit DAY)  
					where prd_master.pk_no = new.f_prod_pk_no;
			
			end if;

			if new.payment_type = 'package' then 
				update ss_customers 
					set package_id = new.f_package_pk_no,
					package_start_date = CURRENT_DATE(),
					 package_end_date = DATE(NOW() + interval 30 day) 
				where ss_customers.id = new.f_customer_pk_no ;
			end if;

	end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sls_promotions`
--

CREATE TABLE `sls_promotions` (
  `pk_no` int(3) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(3) DEFAULT NULL,
  `updated_by` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sls_promotions`
--

INSERT INTO `sls_promotions` (`pk_no`, `title`, `name`, `description`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Top', 'Top', 'Place your ad at Top of listing to get more views and be part of our advertisement', 1, NULL, NULL, NULL, NULL),
(2, 'Urgent', 'Urgent', 'Place your ad at Urgent of listing to get more views and be part of our advertisement', 1, NULL, NULL, NULL, NULL),
(3, 'Feature', 'Feature', 'Place your ad at Featured of listing to get more views and be part of our advertisement', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sls_promotion_details`
--

CREATE TABLE `sls_promotion_details` (
  `pk_no` int(3) NOT NULL,
  `f_promotion_pk_no` int(3) NOT NULL,
  `day_limit` int(3) NOT NULL DEFAULT 0,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(3) DEFAULT NULL,
  `updated_by` int(3) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sls_promotion_details`
--

INSERT INTO `sls_promotion_details` (`pk_no`, `f_promotion_pk_no`, `day_limit`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `title`) VALUES
(1, 1, 6, 700, 1, NULL, '2020-12-22 20:17:31', NULL, 1, 'Top'),
(2, 1, 15, 1000, 1, NULL, NULL, NULL, NULL, 'Top'),
(3, 2, 7, 1000, 1, NULL, NULL, NULL, NULL, 'Urgent'),
(4, 2, 15, 1500, 1, NULL, NULL, NULL, NULL, 'Urgent'),
(5, 3, 7, 1500, 1, NULL, NULL, NULL, NULL, 'Feature'),
(6, 3, 15, 2000, 1, NULL, NULL, NULL, NULL, 'Feature');

-- --------------------------------------------------------

--
-- Table structure for table `ss_areas`
--

CREATE TABLE `ss_areas` (
  `pk_no` int(11) NOT NULL,
  `city_division` enum('city','division') COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_pk_no` int(11) DEFAULT NULL,
  `division_pk_no` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_areas`
--

INSERT INTO `ss_areas` (`pk_no`, `city_division`, `city_pk_no`, `division_pk_no`, `name`, `name_bn`, `url_slug`, `order_id`, `status`, `comments`, `is_active`, `is_delete`, `total_post`, `active_post`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(2, 'division', NULL, 5, 'Gazipur', NULL, 'gazipur', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-11-06 18:23:52', NULL, '2020-11-06 18:23:52'),
(4, 'division', NULL, 5, 'Narayanganj', NULL, 'narayanganj', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-11-06 18:31:47', NULL, '2020-11-06 19:21:46'),
(8, 'city', 5, NULL, 'Mirpur', NULL, 'mirpur', 1, NULL, NULL, 0, 0, 0, 0, NULL, '2020-11-06 19:32:07', NULL, '2020-11-07 15:25:52'),
(9, 'city', 5, NULL, 'Mohammadpur', NULL, 'mohammadpur', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-11-06 19:32:31', NULL, '2020-11-06 19:32:31'),
(12, 'city', 5, NULL, 'Mogbazar', NULL, 'mogbazar', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-11-07 15:29:19', NULL, '2020-11-07 15:29:19'),
(13, 'city', 6, NULL, 'GEC More', NULL, 'gec-more', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:31:00', NULL, '2020-12-12 18:31:00'),
(14, 'city', 7, NULL, 'Sylhet CIty', NULL, 'sylhet-city', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:31:27', NULL, '2020-12-12 18:31:27'),
(15, 'city', 8, NULL, 'Khulna City', NULL, 'khulna-city', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:31:40', NULL, '2020-12-12 18:31:40'),
(16, 'city', 9, NULL, 'Barishal City', NULL, 'barishal-city', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:31:50', NULL, '2020-12-12 18:31:50'),
(17, 'city', 10, NULL, 'Rajshahi City', NULL, 'rajshahi-city', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:31:59', NULL, '2020-12-12 18:31:59'),
(18, 'city', 11, NULL, 'Rangpur', NULL, 'rangpur', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:32:09', NULL, '2020-12-12 18:32:09'),
(19, 'city', 12, NULL, 'Mymensigh City', NULL, 'mymensigh-city', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:32:40', NULL, '2020-12-12 18:32:40'),
(20, 'division', NULL, 6, 'Commila', NULL, 'commila', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:33:07', NULL, '2020-12-12 18:33:07'),
(21, 'division', NULL, 7, 'SUnamganj', NULL, 'sunamganj', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:33:17', NULL, '2020-12-12 18:33:17'),
(22, 'division', NULL, 8, 'Mongla', NULL, 'mongla', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:33:29', NULL, '2020-12-12 18:33:29'),
(23, 'division', NULL, 9, 'Bhola', NULL, 'bhola', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:33:40', NULL, '2020-12-12 18:33:40'),
(24, 'division', NULL, 10, 'Dinajpur', NULL, 'dinajpur', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:33:53', NULL, '2020-12-12 18:33:53'),
(25, 'division', NULL, 11, 'Chilmari', NULL, 'chilmari', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:34:05', NULL, '2020-12-12 18:34:05'),
(26, 'division', NULL, 12, 'Netrokona', NULL, 'netrokona', 1, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-12 18:34:16', NULL, '2020-12-12 18:34:16'),
(27, 'city', 5, NULL, 'Banglamotor', NULL, 'banglamotor', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:06:22', NULL, '2020-12-13 09:06:22'),
(28, 'city', 5, NULL, 'Elephant Road', NULL, 'elephant-road', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:07:40', NULL, '2020-12-13 09:07:40'),
(29, 'city', 5, NULL, 'Uttara', NULL, 'uttara', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:16:53', NULL, '2020-12-13 09:16:53'),
(30, 'city', 5, NULL, 'Savar', NULL, 'savar', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:17:21', NULL, '2020-12-13 09:17:21'),
(31, 'city', 5, NULL, 'Jatrabari', NULL, 'jatrabari', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:17:48', NULL, '2020-12-13 09:17:48'),
(32, 'city', 5, NULL, 'Sutrapur', NULL, 'sutrapur', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:20:06', NULL, '2020-12-13 09:20:06'),
(33, 'city', 5, NULL, 'Cantonment', NULL, 'cantonment', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:20:22', NULL, '2020-12-13 09:20:22'),
(34, 'city', 5, NULL, 'Dohar', NULL, 'dohar', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:21:01', NULL, '2020-12-13 09:21:01'),
(35, 'city', 6, NULL, 'Satkania', NULL, 'satkania', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:21:34', NULL, '2020-12-13 09:21:34'),
(36, 'city', 6, NULL, 'Baizid', NULL, 'baizid', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:22:38', NULL, '2020-12-13 09:22:38'),
(37, 'city', 6, NULL, 'Muradpur', NULL, 'muradpur', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:22:57', NULL, '2020-12-13 09:22:57'),
(38, 'city', 6, NULL, 'Khulshi', NULL, 'khulshi', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:23:13', NULL, '2020-12-13 09:23:13'),
(39, 'city', 6, NULL, 'Hathazari', NULL, 'hathazari', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:23:31', NULL, '2020-12-13 09:23:31'),
(40, 'city', 6, NULL, 'Cornelhat', NULL, 'cornelhat', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:23:43', NULL, '2020-12-13 09:23:43'),
(41, 'city', 6, NULL, 'Patenga', NULL, 'patenga', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:23:56', NULL, '2020-12-13 09:23:56'),
(42, 'city', 6, NULL, 'Lalkhan Bazar', NULL, 'lalkhan-bazar', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:24:08', NULL, '2020-12-13 09:24:08'),
(43, 'city', 6, NULL, 'Bandar', NULL, 'bandar', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:24:19', NULL, '2020-12-13 09:24:19'),
(44, 'city', 6, NULL, 'Bakoliya', NULL, 'bakoliya', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:24:30', NULL, '2020-12-13 09:24:30'),
(45, 'city', 6, NULL, 'Jamalkhan', NULL, 'jamalkhan', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:24:40', NULL, '2020-12-13 09:24:40'),
(46, 'city', 6, NULL, 'Double Mooring', NULL, 'double-mooring', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:24:51', NULL, '2020-12-13 09:24:51'),
(47, 'city', 7, NULL, 'Zinda Bazar', NULL, 'zinda-bazar', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:25:27', NULL, '2020-12-13 09:25:27'),
(48, 'city', 7, NULL, 'Bandar Bazar', NULL, 'bandar-bazar', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:25:42', NULL, '2020-12-13 09:25:42'),
(49, 'city', 7, NULL, 'Amber Khana', NULL, 'amber-khana', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:25:54', NULL, '2020-12-13 09:25:54'),
(50, 'city', 7, NULL, 'Shibgonj', NULL, 'shibgonj', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:26:12', NULL, '2020-12-13 09:26:12'),
(51, 'city', 7, NULL, 'Uposhohor', NULL, 'uposhohor', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:26:25', NULL, '2020-12-13 09:26:25'),
(52, 'city', 7, NULL, 'Akhalia', NULL, 'akhalia', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:26:35', NULL, '2020-12-13 09:26:35'),
(53, 'city', 7, NULL, 'Subid Bazar', NULL, 'subid-bazar', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:26:49', NULL, '2020-12-13 09:26:49'),
(54, 'city', 8, NULL, 'Rupsa', NULL, 'rupsa', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:28:01', NULL, '2020-12-13 09:28:01'),
(55, 'city', 8, NULL, 'Gollamari', NULL, 'gollamari', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:28:12', NULL, '2020-12-13 09:28:12'),
(56, 'city', 8, NULL, 'Dumuria', NULL, 'dumuria', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:28:24', NULL, '2020-12-13 09:28:24'),
(57, 'city', 8, NULL, 'Tootpara', NULL, 'tootpara', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:28:54', NULL, '2020-12-13 09:28:54'),
(58, 'city', 8, NULL, 'Pabla', NULL, 'pabla', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:29:09', NULL, '2020-12-13 09:29:09'),
(59, 'city', 9, NULL, 'Chand Mari', NULL, 'chand-mari', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:29:45', NULL, '2020-12-13 09:29:45'),
(60, 'city', 9, NULL, 'Launch Ghat', NULL, 'launch-ghat', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:30:00', NULL, '2020-12-13 09:30:00'),
(61, 'city', 9, NULL, 'Uttar Alekanda', NULL, 'uttar-alekanda', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:30:18', NULL, '2020-12-13 09:30:18'),
(62, 'city', 9, NULL, 'Puran Bazar', NULL, 'puran-bazar', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:30:40', NULL, '2020-12-13 09:30:40'),
(63, 'city', 9, NULL, 'Kalizira', NULL, 'kalizira', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:30:57', NULL, '2020-12-13 09:30:57'),
(64, 'city', 9, NULL, 'Chawk Bazar', NULL, 'chawk-bazar', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 09:31:13', NULL, '2020-12-13 09:31:13'),
(65, 'city', 5, NULL, 'Dhanmondi', NULL, 'dhanmondi', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 10:37:05', NULL, '2020-12-13 10:37:05'),
(66, 'city', 6, NULL, 'Agrabad', NULL, 'agrabad', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:10:39', NULL, '2020-12-13 11:10:39'),
(67, 'city', 6, NULL, 'Kotwali', NULL, 'kotwali', 15, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:10:45', NULL, '2020-12-13 11:10:45'),
(68, 'city', 6, NULL, 'Chawkbazar', NULL, 'chawkbazar', 16, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:10:55', NULL, '2020-12-13 11:10:55'),
(69, 'city', 6, NULL, 'Nasirabad', NULL, 'nasirabad', 17, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:11:02', NULL, '2020-12-13 11:11:02'),
(70, 'city', 6, NULL, 'Halishahar', NULL, 'halishahar', 18, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:11:10', NULL, '2020-12-13 11:11:10'),
(71, 'city', 7, NULL, 'South Surma', NULL, 'south-surma', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:12:14', NULL, '2020-12-13 11:12:14'),
(72, 'city', 8, NULL, 'Khulna Sadar', NULL, 'khulna-sadar', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:12:29', NULL, '2020-12-13 11:12:29'),
(73, 'city', 8, NULL, 'Daulatpur', NULL, 'daulatpur', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:12:51', NULL, '2020-12-13 11:12:51'),
(74, 'city', 8, NULL, 'Sonadanga', NULL, 'sonadanga', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:13:02', NULL, '2020-12-13 11:13:02'),
(75, 'city', 8, NULL, 'Khalishpur', NULL, 'khalishpur', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:13:08', NULL, '2020-12-13 11:13:08'),
(76, 'city', 8, NULL, 'Boyra Bazar', NULL, 'boyra-bazar', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:13:19', NULL, '2020-12-13 11:13:19'),
(77, 'city', 9, NULL, 'Sadar Road', NULL, 'sadar-road', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:13:45', NULL, '2020-12-13 11:13:45'),
(78, 'city', 9, NULL, 'Nattullabad', NULL, 'nattullabad', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:13:52', NULL, '2020-12-13 11:13:52'),
(79, 'city', 9, NULL, 'Rupatali', NULL, 'rupatali', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:04', NULL, '2020-12-13 11:14:04'),
(80, 'city', 9, NULL, 'Nobogram Road', NULL, 'nobogram-road', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:12', NULL, '2020-12-13 11:14:12'),
(81, 'city', 9, NULL, 'Gournadi', NULL, 'gournadi', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:34', NULL, '2020-12-13 11:14:34'),
(82, 'city', 10, NULL, 'New Market', NULL, 'new-market', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:41', NULL, '2020-12-13 11:14:41'),
(83, 'city', 10, NULL, 'Shaheb Bazar', NULL, 'shaheb-bazar', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:48', NULL, '2020-12-13 11:14:48'),
(84, 'city', 10, NULL, 'Motihar', NULL, 'motihar', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:14:57', NULL, '2020-12-13 11:14:57'),
(85, 'city', 10, NULL, 'Shiroil', NULL, 'shiroil', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:15:06', NULL, '2020-12-13 11:15:06'),
(86, 'city', 10, NULL, 'Uposahar', NULL, 'uposahar', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:15:14', NULL, '2020-12-13 11:15:14'),
(87, 'city', 11, NULL, 'Shapla Chottor', NULL, 'shapla-chottor', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:15:27', NULL, '2020-12-13 11:15:27'),
(88, 'city', 11, NULL, 'Dhap', NULL, 'dhap', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:15:38', NULL, '2020-12-13 11:15:38'),
(89, 'city', 11, NULL, 'Lalbag Mor', NULL, 'lalbag-mor', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:15:45', NULL, '2020-12-13 11:15:45'),
(90, 'city', 12, NULL, 'Ganginar par', NULL, 'ganginar-par', 2, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:16:21', NULL, '2020-12-13 11:16:21'),
(91, 'city', 12, NULL, 'Chorpara', NULL, 'chorpara', 3, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:16:33', NULL, '2020-12-13 11:16:33'),
(92, 'city', 12, NULL, 'Town Hall', NULL, 'town-hall', 4, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:16:48', NULL, '2020-12-13 11:16:48'),
(93, 'city', 12, NULL, 'Valuka', NULL, 'valuka', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:16:56', NULL, '2020-12-13 11:16:56'),
(94, 'city', 12, NULL, 'Muktagacha', NULL, 'muktagacha', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2020-12-13 11:17:07', NULL, '2020-12-13 11:17:07'),
(95, 'city', 5, 5, 'Badda', NULL, 'badda', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 18:45:05', NULL, '2021-01-17 18:45:05'),
(96, 'city', 5, 5, 'Gulshan', NULL, 'gulshan', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 18:50:25', NULL, '2021-01-17 18:50:25'),
(97, 'city', 5, 5, 'Banani', NULL, 'banani', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 18:50:50', NULL, '2021-01-17 18:50:50'),
(98, 'city', 6, 6, 'Fatikchari', NULL, 'fatikchari', 19, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 18:52:36', NULL, '2021-01-17 18:52:36'),
(99, 'city', 5, 5, 'Bangshal', NULL, 'bangshal', 15, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:05:25', NULL, '2021-01-17 19:05:25'),
(100, 'city', 5, 5, 'Basabo', NULL, 'basabo', 16, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:05:32', NULL, '2021-01-17 19:05:32'),
(101, 'city', 5, 5, 'Basundhara', NULL, 'basundhara', 17, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:05:39', NULL, '2021-01-17 19:05:39'),
(102, 'city', 5, 5, 'Demra', NULL, 'demra', 18, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:05:46', NULL, '2021-01-17 19:05:46'),
(103, 'city', 5, 5, 'Paltan', NULL, 'paltan', 19, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:05:53', NULL, '2021-01-17 19:05:53'),
(104, 'city', 5, 5, 'Purbachal', NULL, 'purbachal', 20, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:06:00', NULL, '2021-01-17 19:06:00'),
(105, 'city', 5, 5, 'Ramna', NULL, 'ramna', 21, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:06:13', NULL, '2021-01-17 19:06:13'),
(106, 'city', 5, 5, 'Lalbag', NULL, 'lalbag', 22, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:06:28', NULL, '2021-01-17 19:06:28'),
(107, 'city', 5, 5, 'Mohakhali', NULL, 'mohakhali', 23, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:07:22', NULL, '2021-01-17 19:07:22'),
(108, 'city', 5, 5, 'Nawabganj', NULL, 'nawabganj', 24, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:07:30', NULL, '2021-01-17 19:07:30'),
(109, 'city', 5, 5, 'Rampura', NULL, 'rampura', 25, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:07:36', NULL, '2021-01-17 19:07:36'),
(110, 'city', 5, 5, 'Tejgaon', NULL, 'tejgaon', 26, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:07:42', NULL, '2021-01-17 19:07:42'),
(111, 'city', 6, 6, 'Anderkilla', NULL, 'anderkilla', 20, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:08:06', NULL, '2021-01-17 19:08:06'),
(112, 'city', 6, 6, 'Anwara', NULL, 'anwara', 21, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:08:12', NULL, '2021-01-17 19:08:12'),
(113, 'city', 6, 6, 'Banskhali', NULL, 'banskhali', 22, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:08:42', NULL, '2021-01-17 19:08:42'),
(114, 'city', 6, 6, 'Boalkhali', NULL, 'boalkhali', 23, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:08:48', NULL, '2021-01-17 19:08:48'),
(115, 'city', 6, 6, 'Chandanaish', NULL, 'chandanaish', 24, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:08:55', NULL, '2021-01-17 19:08:55'),
(116, 'city', 6, 6, 'Chandgaon', NULL, 'chandgaon', 25, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:09:06', NULL, '2021-01-17 19:09:06'),
(117, 'city', 6, 6, 'Panchlaish', NULL, 'panchlaish', 26, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:09:36', NULL, '2021-01-17 19:09:36'),
(118, 'city', 6, 6, 'Patiya', NULL, 'patiya', 27, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:09:49', NULL, '2021-01-17 19:09:49'),
(119, 'city', 6, 6, 'Rangunia', NULL, 'rangunia', 28, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:09:56', NULL, '2021-01-17 19:09:56'),
(120, 'city', 6, 6, 'Raozan', NULL, 'raozan', 29, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:03', NULL, '2021-01-17 19:10:03'),
(121, 'city', 7, 7, 'Dargah Mahalla', NULL, 'dargah-mahalla', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:25', NULL, '2021-01-17 19:10:25'),
(122, 'city', 7, 7, 'Fenchuganj', NULL, 'fenchuganj', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:32', NULL, '2021-01-17 19:10:32'),
(123, 'city', 7, 7, 'Golapganj', NULL, 'golapganj', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:41', NULL, '2021-01-17 19:10:41'),
(124, 'city', 7, 7, 'Gowainghat', NULL, 'gowainghat', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:53', NULL, '2021-01-17 19:10:53'),
(125, 'city', 7, 7, 'Jaintapur', NULL, 'jaintapur', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:10:59', NULL, '2021-01-17 19:10:59'),
(126, 'city', 7, 7, 'Kajal Shah', NULL, 'kajal-shah', 15, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:06', NULL, '2021-01-17 19:11:06'),
(127, 'city', 7, 7, 'Kanaighat', NULL, 'kanaighat', 16, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:14', NULL, '2021-01-17 19:11:14'),
(128, 'city', 7, 7, 'Kumar para', NULL, 'kumar-para', 17, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:20', NULL, '2021-01-17 19:11:20'),
(129, 'city', 7, 7, 'Lama Bazar', NULL, 'lama-bazar', 18, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:28', NULL, '2021-01-17 19:11:28'),
(130, 'city', 7, 7, 'Majortila', NULL, 'majortila', 19, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:36', NULL, '2021-01-17 19:11:36'),
(131, 'city', 7, 7, 'Nayasarak', NULL, 'nayasarak', 20, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:43', NULL, '2021-01-17 19:11:43'),
(132, 'city', 7, 7, 'Osmani Nagar', NULL, 'osmani-nagar', 21, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:50', NULL, '2021-01-17 19:11:50'),
(133, 'city', 7, 7, 'Pathan Tula', NULL, 'pathan-tula', 22, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:11:57', NULL, '2021-01-17 19:11:57'),
(134, 'city', 7, 7, 'Shahi Eidgah', NULL, 'shahi-eidgah', 23, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:12:04', NULL, '2021-01-17 19:12:04'),
(135, 'city', 7, 7, 'Shahporan', NULL, 'shahporan', 24, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:12:11', NULL, '2021-01-17 19:12:11'),
(136, 'city', 7, 7, 'Subhani Ghat', NULL, 'subhani-ghat', 25, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:12:18', NULL, '2021-01-17 19:12:18'),
(137, 'city', 7, 7, 'Zakiganj', NULL, 'zakiganj', 26, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:12:41', NULL, '2021-01-17 19:12:41'),
(138, 'city', 8, 8, 'Batighata', NULL, 'batighata', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:14:30', NULL, '2021-01-17 19:14:30'),
(139, 'city', 8, 8, 'Dacope', NULL, 'dacope', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:14:37', NULL, '2021-01-17 19:14:37'),
(140, 'city', 8, 8, 'Dakbangla', NULL, 'dakbangla', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:14:45', NULL, '2021-01-17 19:14:45'),
(141, 'city', 8, 8, 'Dighalia', NULL, 'dighalia', 15, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:14:57', NULL, '2021-01-17 19:14:57'),
(142, 'city', 8, 8, 'Keshabpur', NULL, 'keshabpur', 16, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:15:17', NULL, '2021-01-17 19:15:17'),
(143, 'city', 8, 8, 'Koyla Ghat', NULL, 'koyla-ghat', 17, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:15:25', NULL, '2021-01-17 19:15:25'),
(144, 'city', 8, 8, 'Koyra', NULL, 'koyra', 18, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:15:31', NULL, '2021-01-17 19:15:31'),
(145, 'city', 8, 8, 'Lobon Chora', NULL, 'lobon-chora', 19, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:15:39', NULL, '2021-01-17 19:15:39'),
(146, 'city', 8, 8, 'Nirala', NULL, 'nirala', 20, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:15:47', NULL, '2021-01-17 19:15:47'),
(147, 'city', 8, 8, 'Paikgachha', NULL, 'paikgachha', 21, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:16:02', NULL, '2021-01-17 19:16:02'),
(148, 'city', 8, 8, 'Phultala', NULL, 'phultala', 22, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:16:09', NULL, '2021-01-17 19:16:09'),
(149, 'city', 8, 8, 'Rayermohol', NULL, 'rayermohol', 23, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:16:16', NULL, '2021-01-17 19:16:16'),
(150, 'city', 8, 8, 'Terokhada', NULL, 'terokhada', 24, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:16:33', NULL, '2021-01-17 19:16:33'),
(151, 'city', 9, 9, 'Amtala', NULL, 'amtala', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:17:31', NULL, '2021-01-17 19:17:31'),
(152, 'city', 9, 9, 'Bakerganj', NULL, 'bakerganj', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:17:42', NULL, '2021-01-17 19:17:42'),
(153, 'city', 9, 9, 'Banglabazar', NULL, 'banglabazar', 15, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:17:50', NULL, '2021-01-17 19:17:50'),
(154, 'city', 9, 9, 'Beltola Feri Ghat', NULL, 'beltola-feri-ghat', 16, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:17:58', NULL, '2021-01-17 19:17:58'),
(155, 'city', 9, 9, 'City Gate Barishal (Gorierpar)', NULL, 'city-gate-barishal-gorierpar', 17, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:18:20', NULL, '2021-01-17 19:18:20'),
(156, 'city', 9, 9, 'Kashipur Bazar', NULL, 'kashipur-bazar', 18, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:18:41', NULL, '2021-01-17 19:18:41'),
(157, 'city', 9, 9, 'Mehendiganj', NULL, 'mehendiganj', 19, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:18:57', NULL, '2021-01-17 19:18:57'),
(158, 'city', 9, 9, 'Natun Bazar', NULL, 'natun-bazar', 20, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:19:06', NULL, '2021-01-17 19:19:06'),
(159, 'city', 9, 9, 'Nazirmoholla', NULL, 'nazirmoholla', 21, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:19:15', NULL, '2021-01-17 19:19:15'),
(160, 'city', 5, 5, 'Gopalganj', NULL, 'gopalganj', 27, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 19:52:44', NULL, '2021-01-17 19:52:44'),
(161, 'city', 5, 5, 'Motijheel,', NULL, 'motijheel', 28, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-17 20:06:10', NULL, '2021-01-17 20:06:10'),
(162, 'city', 5, 5, 'Wari', NULL, 'wari', 29, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 07:44:22', NULL, '2021-01-18 07:44:22'),
(163, 'city', 5, 5, 'Khilgaon', NULL, 'khilgaon', 30, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 07:48:23', NULL, '2021-01-18 07:48:23'),
(164, 'city', 10, 10, 'Bogura', NULL, 'bogura', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 08:40:40', NULL, '2021-01-18 08:40:40'),
(165, 'city', 5, 5, 'Khilkhet', NULL, 'khilkhet', 31, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 08:55:59', NULL, '2021-01-18 08:55:59'),
(166, 'city', 5, 5, 'Farmgate', NULL, 'farmgate', 32, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 09:12:39', NULL, '2021-01-18 09:12:39'),
(167, 'city', 10, 10, 'Pabna', NULL, 'pabna', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 09:59:38', NULL, '2021-01-18 09:59:38'),
(168, 'city', 12, 12, 'Jamalpur', NULL, 'jamalpur', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 10:03:53', NULL, '2021-01-18 10:03:53'),
(169, 'city', 5, 5, 'Faridpur', NULL, 'faridpur', 33, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 10:33:57', NULL, '2021-01-18 10:33:57'),
(170, 'city', 8, 8, 'Bagerhat', NULL, 'bagerhat', 25, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 13:31:25', NULL, '2021-01-18 13:31:25'),
(171, 'city', 5, 5, 'Dhamrai', NULL, 'dhamrai', 34, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 16:55:51', NULL, '2021-01-18 16:55:51'),
(172, 'city', 8, 8, 'Kushtia', NULL, 'kushtia', 26, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-18 17:29:55', NULL, '2021-01-18 17:29:55'),
(173, 'city', 9, 9, 'Jhalokati', NULL, 'jhalokati', 22, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 05:46:54', NULL, '2021-01-19 05:46:54'),
(174, 'city', 7, 7, 'Maulvi Bazar', NULL, 'maulvi-bazar', 27, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 06:31:56', NULL, '2021-01-19 06:31:56'),
(175, 'city', 6, 6, 'Pahartali', NULL, 'pahartali', 30, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 07:03:16', NULL, '2021-01-19 07:03:16'),
(176, 'city', 5, 5, 'Malibag', NULL, 'malibag', 35, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 08:43:57', NULL, '2021-01-19 08:43:57'),
(177, 'city', 8, 8, 'Jhenaidah', NULL, 'jhenaidah', 27, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 08:47:06', NULL, '2021-01-19 08:47:06'),
(178, 'city', 6, 6, 'Cumilla', NULL, 'cumilla', 31, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 08:53:42', NULL, '2021-01-19 08:53:42'),
(179, 'city', 5, 5, 'Baridhara', NULL, 'baridhara', 36, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 09:15:02', NULL, '2021-01-19 09:15:02'),
(180, 'city', 8, 8, 'Satkhira', NULL, 'satkhira', 28, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 09:35:20', NULL, '2021-01-19 09:35:20'),
(181, 'city', 5, 5, 'Keraniganj', NULL, 'keraniganj', 37, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 11:05:44', NULL, '2021-01-19 11:05:44'),
(182, 'city', 6, 6, 'Brahmanbaria', NULL, 'brahmanbaria', 32, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 15:23:47', NULL, '2021-01-19 15:23:47'),
(183, 'city', 6, 6, 'Chandpur', NULL, 'chandpur', 33, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 15:36:27', NULL, '2021-01-19 15:36:27'),
(184, 'city', 5, 5, 'Narsingdi', NULL, 'narsingdi', 38, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 16:13:36', NULL, '2021-01-19 16:13:36'),
(185, 'city', 5, 5, 'Munshiganj', NULL, 'munshiganj', 39, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 16:22:22', NULL, '2021-01-19 16:22:22'),
(186, 'city', 8, 8, 'Magura', NULL, 'magura', 29, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 16:34:22', NULL, '2021-01-19 16:34:22'),
(187, 'city', 5, 5, 'Cantonmen', NULL, 'cantonmen', 40, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 16:38:11', NULL, '2021-01-19 16:38:11'),
(188, 'city', 10, 10, 'Rajpara', NULL, 'rajpara', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 17:10:53', NULL, '2021-01-19 17:10:53'),
(189, 'city', 11, 11, 'Bodorganj', NULL, 'bodorganj', 5, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 17:16:18', NULL, '2021-01-19 17:16:18'),
(190, 'city', 5, 5, 'Kishoregani', NULL, 'kishoregani', 41, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 17:19:21', NULL, '2021-01-19 17:19:21'),
(191, 'city', 5, 5, 'Chaukbazar', NULL, 'chaukbazar', 42, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 17:26:59', NULL, '2021-01-19 17:26:59'),
(192, 'city', 11, 11, 'Saidpur', NULL, 'saidpur', 6, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-19 17:38:43', NULL, '2021-01-19 17:38:43'),
(193, 'city', 6, 6, 'Cox\'s Bazar', NULL, 'cox-s-bazar', 34, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 06:54:30', NULL, '2021-01-20 06:54:30'),
(194, 'city', 10, 10, 'Sirajganj', NULL, 'sirajganj', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 07:29:15', NULL, '2021-01-20 07:29:15'),
(195, 'city', 6, 6, 'Noakhali', NULL, 'noakhali', 35, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 10:46:21', NULL, '2021-01-20 10:46:21'),
(196, 'city', 12, 12, 'Sherpur', NULL, 'sherpur', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 17:10:03', NULL, '2021-01-20 17:10:03'),
(197, 'city', 11, 11, 'Mithapukur', NULL, 'mithapukur', 7, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 17:38:15', NULL, '2021-01-20 17:38:15'),
(198, 'city', 11, 11, 'Kachari Bazaar', NULL, 'kachari-bazaar', 8, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 17:40:25', NULL, '2021-01-20 17:40:25'),
(199, 'city', 11, 11, 'Shatmatha Chottor', NULL, 'shatmatha-chottor', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 17:49:33', NULL, '2021-01-20 17:49:33'),
(200, 'city', 11, 11, 'Modern More', NULL, 'modern-more', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 18:01:36', NULL, '2021-01-20 18:01:36'),
(201, 'city', 10, 10, 'Rajpar', NULL, 'rajpar', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 18:12:27', NULL, '2021-01-20 18:12:27'),
(202, 'city', 10, 10, 'Boalia', NULL, 'boalia', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 18:17:55', NULL, '2021-01-20 18:17:55'),
(203, 'city', 10, 10, 'Chhota Banagram', NULL, 'chhota-banagram', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 18:21:32', NULL, '2021-01-20 18:21:32'),
(204, 'city', 10, 10, 'Padma Residental Area', NULL, 'padma-residental-area', 14, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-20 18:40:30', NULL, '2021-01-20 18:40:30'),
(205, 'city', 12, 12, 'Naumahal', NULL, 'naumahal', 9, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 07:16:41', NULL, '2021-01-21 07:16:41'),
(206, 'city', 12, 12, 'Kewatkhali', NULL, 'kewatkhali', 10, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 07:29:59', NULL, '2021-01-21 07:29:59'),
(207, 'city', 7, 7, 'Bagh Bari (Baghbari)', NULL, 'bagh-bari-baghbari', 28, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 08:50:11', NULL, '2021-01-21 08:50:11'),
(208, 'division', NULL, 7, 'Beanibazar', NULL, 'beanibazar', 29, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 09:00:50', NULL, '2021-01-21 09:00:50'),
(209, 'city', 11, 11, 'Pourobazar', NULL, 'pourobazar', 11, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 09:05:28', NULL, '2021-01-21 09:05:28'),
(210, 'city', 11, 11, 'jahaj Company More', NULL, 'jahaj-company-more', 12, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 09:09:01', NULL, '2021-01-21 09:09:01'),
(211, 'city', 11, 11, 'Shathibari', NULL, 'shathibari', 13, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-21 09:28:06', NULL, '2021-01-21 09:28:06'),
(212, 'city', 9, 9, 'Pirojpur', NULL, 'pirojpur', 23, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-22 09:04:01', NULL, '2021-01-22 09:04:01'),
(214, 'city', 5, 5, 'Kamrangirchar', NULL, 'kamrangirchar', 43, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-24 16:22:07', NULL, '2021-01-24 16:22:07'),
(215, 'city', 7, 7, 'Habiganj', NULL, 'habiganj', 29, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-24 16:40:56', NULL, '2021-01-24 16:40:56'),
(216, 'city', 5, 5, 'Tangail', NULL, 'tangail', 44, NULL, NULL, 1, 0, 0, 0, NULL, '2021-01-24 16:49:41', NULL, '2021-01-24 16:49:41'),
(217, 'city', 6, 6, 'Sholashahar', NULL, 'sholashahar', 36, NULL, NULL, 1, 0, 0, 0, NULL, '2021-02-13 16:26:14', NULL, '2021-02-13 16:26:14');

--
-- Triggers `ss_areas`
--
DELIMITER $$
CREATE TRIGGER `before_ss_areas_insert` BEFORE INSERT ON `ss_areas` FOR EACH ROW BEGIN
    declare vorder_id int(10) default 0;

    IF NEW.order_id IS NULL THEN
        IF NEW.city_division = 'city' THEN
                select IFNULL(max(order_id),0) into vorder_id
                from ss_areas
                where city_pk_no = NEW.city_pk_no;
        ELSE

        select IFNULL(max(order_id),0) into vorder_id
        from ss_areas
        where division_pk_no = NEW.division_pk_no;

        END IF;
        
        SET NEW.order_id = vorder_id+1 ;

    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ss_business_function`
--

CREATE TABLE `ss_business_function` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_business_function`
--

INSERT INTO `ss_business_function` (`pk_no`, `name`, `name_bn`, `url_slug`, `order_id`, `status`, `comments`, `is_active`, `is_delete`, `total_post`, `active_post`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Administration', NULL, 'administration', 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL),
(2, 'accounting_finance', NULL, 'ccounting &amp; Finance', 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL),
(3, 'customer_support', NULL, 'Customer Support', 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL),
(4, 'data_entry_analysis', NULL, 'Data Entry &amp; Analysis', 1, 1, NULL, 1, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_chat`
--

CREATE TABLE `ss_chat` (
  `id` bigint(20) NOT NULL,
  `prd_pk_no` int(10) DEFAULT NULL,
  `owner_pk_no` int(10) DEFAULT NULL,
  `to_pk_no` int(10) DEFAULT NULL,
  `from_pk_no` int(10) DEFAULT NULL,
  `to_name` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `data_set` bigint(20) NOT NULL DEFAULT 0,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Triggers `ss_chat`
--
DELIMITER $$
CREATE TRIGGER `before_ss_chat_insert` BEFORE INSERT ON `ss_chat` FOR EACH ROW begin
			
			declare var_customer_no int(11) default 0;
            declare var_to_name varchar(100) default null;
            declare var_from_name varchar(100) default null;
            

			select customer_pk_no into var_customer_no
				from prd_master
				where pk_no = new.prd_pk_no ;
			
            SELECT name into var_to_name from ss_customers 
            WHERE id = new.to_pk_no ;
            
            SELECT name into var_from_name from ss_customers 
            WHERE id = new.from_pk_no ;
		
			SET new.owner_pk_no = var_customer_no ;
            SET new.to_name = var_to_name;
            set new.from_name = var_from_name;
		


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ss_cities`
--

CREATE TABLE `ss_cities` (
  `pk_no` int(11) NOT NULL,
  `country_pk_no` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT 1,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_cities`
--

INSERT INTO `ss_cities` (`pk_no`, `country_pk_no`, `name`, `name_bn`, `url_slug`, `order_id`, `status`, `comments`, `is_active`, `total_post`, `active_post`, `created_by`, `created_at`, `updated_by`, `updated_at`, `image`) VALUES
(5, 3, 'Dhaka', NULL, 'dhaka', 1, NULL, NULL, 1, 31, 0, 1, '2020-11-06 15:38:26', NULL, '2020-11-06 15:38:26', 'dhaka.jpg'),
(6, 3, 'Chattogram', NULL, 'chattogram', 2, NULL, NULL, 1, 1, 0, 1, '2020-11-06 15:42:21', NULL, '2020-11-06 15:42:21', 'chittagong.jpg'),
(7, 3, 'Sylhet', NULL, 'sylhet', 3, NULL, NULL, 1, 1, 0, 1, '2020-11-06 15:42:36', NULL, '2020-11-06 15:42:36', 'sylhet.jpg'),
(8, 3, 'Khulna', NULL, 'khulna', 4, NULL, NULL, 1, 4, 0, 1, '2020-11-06 15:42:50', NULL, '2020-11-06 15:42:50', 'khulna.jpg'),
(9, 3, 'Barishal', NULL, 'barishal', 5, NULL, NULL, 1, 1, 0, 1, '2020-11-06 15:43:03', NULL, '2020-11-06 15:43:03', 'barisal.jpg'),
(10, 3, 'Rajshahi', NULL, 'rajshahi', 6, NULL, NULL, 1, 3, 0, 1, '2020-11-06 15:43:12', NULL, '2020-11-06 15:43:12', 'rajshahi.jpg'),
(11, 3, 'Rangpur', NULL, 'rangpur', 7, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:24', NULL, '2020-11-06 15:43:24', 'rangpur.jpg'),
(12, 3, 'Mymensingh', NULL, 'mymensingh', 8, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:39', NULL, '2020-11-06 15:43:39', 'mymensingh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ss_contact`
--

CREATE TABLE `ss_contact` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'unseen =0, seen = 1, replied = 2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_contact`
--

INSERT INTO `ss_contact` (`pk_no`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Rony', 'rony@gmail.com', 'This is test Message', 'This is test Message', '2020-12-10', '2020-12-10', 0),
(2, 'Rony', 'rony@gmail.com', 'This is test Message', 'This is test Message', '2020-12-10', '2020-12-10', 0),
(3, 'Kamrul', 'kamrul@gmail.com', 'Post Ad', 'Hi\r\nthis message about post ad', '2020-12-10', '2020-12-10', 0),
(4, 'Kamrul', 'kamrul@gmail.com', 'Post Ad', 'hi', '2020-12-10', '2020-12-10', 0),
(5, 'dsfgsdf', 'gadsf@gmail.com', 'sdlkfja', 'kljsdflsdf', '2020-12-10', '2020-12-10', 0),
(6, 'Rony', 'rony@gmail.com', 'testing message', 'hello world !!', '2021-01-04', '2021-01-04', 0),
(7, 'Mashroor Ahmed', 'mashroor.ahmed@nagad.com.bd', 'Nagad Solutions', 'Dear Sir, Good day. We are interested to share Nagad Solutions for your Organization. Requesting to contact with me for any query.\r\nBest Regards\r\nMashroor Ahmed', '2021-02-17', '2021-02-17', 0),
(8, 'Mohammad moniruzzaman', 'redohyahmed@gmail.com', 'New R15 v3 Indonesia yamaha  new blue clour bike,, oder to buy in daraj 50% discounts facilities.', 'Hallo dear sir / madam \r\nI am new register.. Need to business with daraj so please need to get ur 50% discounts offer a new bike. New R15 v3 Indonesia yamaha  new blue clour bike,,\r\n  buy in daraj 50% discounts facilities.  How can i get an offer and  oder.? \r\nThanks \r\nMohammad Moniruzzaman\r\n01933885888', '2021-07-01', '2021-07-01', 0),
(9, 'Kalim ullah', 'kolimullahcox@gmail.com', 'Login problem', 'Login problems password not match boltece', '2021-07-02', '2021-07-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ss_country`
--

CREATE TABLE `ss_country` (
  `pk_no` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `order_id` int(2) NOT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ss_country`
--

INSERT INTO `ss_country` (`pk_no`, `code`, `name`, `comments`, `is_active`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'UK', 'United Kingdom ', NULL, 1, 3, NULL, NULL, NULL, NULL),
(2, 'MY', 'Malaysia', NULL, 1, 2, NULL, NULL, NULL, NULL),
(3, 'BN', 'Bangladesh', NULL, 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ss_currency`
--

CREATE TABLE `ss_currency` (
  `pk_no` int(11) NOT NULL,
  `code` varchar(4) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ss_currency`
--

INSERT INTO `ss_currency` (`pk_no`, `code`, `name`) VALUES
(1, 'GBP', 'GB Pound'),
(2, 'RM', 'MY Ringit'),
(3, 'BDT', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `ss_customers`
--

CREATE TABLE `ss_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'Individual Seller',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `mobile2_is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `mobile1_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile1_otp_code_extime` datetime DEFAULT NULL,
  `mobile2_otp_code_extime` datetime DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT 1,
  `is_delete` tinyint(4) DEFAULT 0,
  `gender` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_education` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education_ins` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'highest_education_institution',
  `experience_year` decimal(2,2) DEFAULT NULL,
  `skill_summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_industry` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_function` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Current Business Function',
  `current_designation` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_started` datetime DEFAULT NULL,
  `job_notice_period` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notice period (in days)',
  `current_job_responsibility` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_salary` decimal(6,2) DEFAULT NULL COMMENT 'Current salary (per month) (Tk)',
  `cv` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Supported file formats: DOC, DOCX, PDF, TIFF, JPG, PNG',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id` bigint(20) UNSIGNED DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gym_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_mime_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `total_favorite` int(5) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(3) DEFAULT 1,
  `package_start_date` date DEFAULT NULL,
  `package_end_date` date DEFAULT NULL,
  `promotion` int(1) NOT NULL DEFAULT 0 COMMENT 'I want to receive news and promotion updates',
  `tc` int(1) NOT NULL DEFAULT 0 COMMENT 'Terms & Condition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_customers`
--

INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`, `promotion`, `tc`) VALUES
(1, 'Individual Seller', 'Rony', 'ronymia.tech@gmail.com', '01767671133', NULL, 1, 0, '3777', '', '2022-07-21 10:43:14', '2022-07-21 10:43:14', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/zpcanABjUZOTiDoXEn.lOC05huHQYzC2rwsykxaMaCIqdcZY9obK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, 0, 1, '2022-07-21 15:44:16', '2022-07-21 15:47:24', NULL, 'Dhaka', NULL, 4, '2022-07-21', '2022-08-20', 1, 1),
(2, 'Individual Seller', 'Md Omit Hasan', 'omit@gmail.com', '01916962118', NULL, 1, 0, '', '', '2022-07-26 14:30:20', '2022-07-26 14:30:20', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RakH.8CEAu17H7T/U5v5W.ilCQcKbNnNJO8U9C0kD6PWE6zbpqvya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2022-07-23 19:08:04', '2022-07-23 19:08:04', NULL, NULL, NULL, 3, '2022-07-25', '2022-08-24', 1, 1),
(3, 'Individual Seller', 'Maidul', 'maidul@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RzOAv1TwNrbPQWHr4ABtD.M63xbsfLsgIcLo7E2lxpbwtImxq.rx6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2022-07-28 15:16:13', '2022-07-28 15:16:13', NULL, NULL, NULL, 1, NULL, NULL, 1, 1);

--
-- Triggers `ss_customers`
--
DELIMITER $$
CREATE TRIGGER `before_ss_customers_update` BEFORE UPDATE ON `ss_customers` FOR EACH ROW begin
    declare PKCODE int(2) default 0;

        if new.mobile1_otp_code is not null then

                set new.mobile1_otp_code_extime = DATE_ADD(now(), INTERVAL 60 SECOND);
        
        end if;
        if new.mobile2_otp_code is not null then

                set new.mobile2_otp_code_extime = DATE_ADD(now(), INTERVAL 60 SECOND);
        
        end if;

    end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ss_divisions`
--

CREATE TABLE `ss_divisions` (
  `pk_no` int(11) NOT NULL,
  `country_pk_no` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT 1,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_divisions`
--

INSERT INTO `ss_divisions` (`pk_no`, `country_pk_no`, `name`, `name_bn`, `url_slug`, `order_id`, `status`, `comments`, `is_active`, `total_post`, `active_post`, `created_by`, `created_at`, `updated_by`, `updated_at`, `image`) VALUES
(5, 3, 'Dhaka-Division', NULL, 'dhaka-division', 1, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:38:26', NULL, '2020-11-06 15:38:26', 'dhaka.jpg'),
(6, 3, 'Chattogram-Division', NULL, 'chattogram-division', 2, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:42:21', NULL, '2020-11-06 15:42:21', 'chittagong.jpg'),
(7, 3, 'Sylhet-Division', NULL, 'sylhet-division', 3, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:42:36', NULL, '2020-11-06 15:42:36', 'sylhet.jpg'),
(8, 3, 'Khulna-Division', NULL, 'khulna-division', 4, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:42:50', NULL, '2020-11-06 15:42:50', 'khulna.jpg'),
(9, 3, 'Barishal-Division', NULL, 'barishal-division', 5, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:03', NULL, '2020-11-06 15:43:03', 'rajshahi.jpg'),
(10, 3, 'Rajshahi-Division', NULL, 'rajshahi-division', 6, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:12', NULL, '2020-11-06 15:43:12', 'rangpur.jpg'),
(11, 3, 'Rangpur-Division', NULL, 'rangpur-division', 7, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:24', NULL, '2020-11-06 15:43:24', 'barisal.jpg'),
(12, 3, 'Mymensingh-Division', NULL, 'mymensingh-division', 8, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:39', NULL, '2020-11-06 15:43:39', 'mymensingh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ss_employment_history`
--

CREATE TABLE `ss_employment_history` (
  `pk_no` int(11) NOT NULL,
  `customer_pk_no` int(10) DEFAULT NULL,
  `institution_name` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business _function` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `job_responsibility` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_faq`
--

CREATE TABLE `ss_faq` (
  `pk_no` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(2) DEFAULT NULL,
  `updated_by` int(2) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_faq`
--

INSERT INTO `ss_faq` (`pk_no`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `is_active`) VALUES
(1, 'In which process will I post an ad on Dalalbazar.com?', 'Posting an ad on Dalalbazar.com is fast and simple. For posting an ad on Dalalbazar.com just follow the below instructions.\r\ni)        For posting an ad on Dalalbazar.com, firstly you have to log in.\r\nii)        After reviewing your ad, we will show Your ad on our website for the expected clients.', '2020-12-15 16:45:14', '2020-12-26 22:38:31', '0000-00-00 00:00:00', NULL, 1, 1),
(2, 'How can I delete my posted ad on Dalalbazar.com?', 'To delete an ad on Dalalbazar.com, please go to your ad\'s page and click on the \"Delete ad\" option.', '2020-12-15 16:45:14', '2020-12-26 22:40:29', '0000-00-00 00:00:00', NULL, 1, 1),
(3, 'Why has my ad been rejected ?', 'All of the ads are manually reviewed - if your ad violates our posting rules it will be rejected. You can read what changes you have to make before the ad can be approved in the rejection email as well as bottom of your rejected ad from user dashboard.', '2020-12-15 16:45:14', '2021-01-07 22:43:20', '0000-00-00 00:00:00', NULL, 1, 1),
(4, 'What can I do for editing my ad?', 'To edit an ad, please go to your ad\'s page and click on the \"Edit ad\" option.', '2020-12-15 16:45:14', '2022-07-25 01:35:05', '0000-00-00 00:00:00', NULL, 1, 0),
(5, 'How can I set a new password on Dalalbazar.com?', 'To set a new Dalalbazar.com password, please log in to your account, go to the \"Settings\" page and enter a new password. If you forget your Dalalbazar.com password, you can go to the log-in page and click on the \"Forgot your password?\" link\r\nIf you have created an account via Facebook, you will not have a Dalalbazar.com password. You can log in to your account via Facebook without a password.', '2020-12-15 16:12:54', '2020-12-26 22:43:10', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_industry`
--

CREATE TABLE `ss_industry` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_job_title`
--

CREATE TABLE `ss_job_title` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `active_post` int(10) NOT NULL DEFAULT 0,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_location`
--

CREATE TABLE `ss_location` (
  `pk_no` int(11) NOT NULL,
  `divisions_pk_no` int(11) NOT NULL DEFAULT 0,
  `city_pk_no` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `is_popular` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_packages`
--

CREATE TABLE `ss_packages` (
  `pk_no` int(3) NOT NULL,
  `ad_limit_in_montrh` int(11) DEFAULT NULL,
  `title` varchar(124) DEFAULT NULL,
  `title_bn` varchar(125) DEFAULT NULL,
  `price_per_month` float DEFAULT NULL,
  `support_duration` varchar(124) DEFAULT NULL,
  `discount_on_promotion` float DEFAULT NULL,
  `package_duration` varchar(10) DEFAULT '0',
  `sms_feature` tinyint(1) DEFAULT 1,
  `email_feature` tinyint(1) DEFAULT 1,
  `shop_page` tinyint(1) DEFAULT 1,
  `analytics` tinyint(1) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `order_id` int(3) NOT NULL DEFAULT 1,
  `created_by` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(3) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_packages`
--

INSERT INTO `ss_packages` (`pk_no`, `ad_limit_in_montrh`, `title`, `title_bn`, `price_per_month`, `support_duration`, `discount_on_promotion`, `package_duration`, `sms_feature`, `email_feature`, `shop_page`, `analytics`, `is_active`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2, 'Free', NULL, 2000, '24/7 Live Support', 5, '2', 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 'Personal', NULL, 2000, '24/7 Live Support', 5, '1', 0, 1, 1, 1, 1, 2, NULL, NULL, 1, '2022-07-21 23:39:15'),
(3, 50, 'Business', NULL, 5000, '24/7 Live Support', 10, '2', 1, 1, 1, 1, 1, 3, NULL, NULL, NULL, NULL),
(4, 200, 'Business Premium', NULL, 7000, '24/7 Live Support', 10, '2', 1, 1, 1, 1, 1, 4, NULL, NULL, NULL, NULL),
(5, 3, 'Gold', NULL, 5000, '24/7 Live Support', 20, '2', 1, 1, 1, 1, 1, 5, 1, '2022-06-16 00:39:59', NULL, '2022-06-16 00:39:59'),
(6, 4, 'Gold', NULL, 5000, '24/7 Live Support', 200, '2', 1, 1, 1, 1, 1, 6, 1, '2022-06-16 00:41:10', 1, '2022-06-16 01:06:48'),
(7, 50, 'test', NULL, 49, '20', NULL, '9', 1, 1, 1, 1, 1, 1, 1, '2022-07-21 22:43:59', 1, '2022-07-21 22:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `ss_paging`
--

CREATE TABLE `ss_paging` (
  `id` int(10) NOT NULL,
  `total_record` int(3) DEFAULT NULL,
  `Top` int(3) DEFAULT NULL,
  `Feature` int(3) DEFAULT NULL,
  `Urgent` int(3) DEFAULT NULL,
  `Basic` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_paging`
--

INSERT INTO `ss_paging` (`id`, `total_record`, `Top`, `Feature`, `Urgent`, `Basic`) VALUES
(1, 20, 2, 5, 5, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ss_shop`
--

CREATE TABLE `ss_shop` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url_slug` varchar(124) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `customer_pk_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_shop`
--

INSERT INTO `ss_shop` (`pk_no`, `name`, `url_slug`, `address`, `contact`, `open_time`, `banner`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_active`, `customer_pk_no`) VALUES
(1, 'Bikroy Guru', NULL, 'BikroyGuru, Shop No. 08, (First Floor) A R Corner, Pabna Sadar, Pabna', '01885475412', '10:00 am to 09:00 pm', '46712.png', 'We sell and purchases all kinds of electronics item likes phone laptop tab ipad imac camera and phone  laptop all of the accessories. All are imported product. You can get all branded product at a reasonable price in our shop.Bikroy Guru is a reputed company. We do business from many years ago.Bikroy Guru is a famous company in Pabna. We sell your desired product.', 1, 1, '2022-07-21 15:50:01', '2022-07-21 15:51:02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_subscribe`
--

CREATE TABLE `ss_subscribe` (
  `pk_no` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expire` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Alive, 0 = Expire',
  `started_at` datetime NOT NULL,
  `expire_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'Individual Seller',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `mobile2_is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `mobile1_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile1_otp_code_extime` datetime DEFAULT NULL,
  `mobile2_otp_code_extime` datetime DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT 1,
  `is_delete` tinyint(4) DEFAULT 0,
  `gender` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_education` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highest_education_ins` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'highest_education_institution',
  `experience_year` decimal(2,2) DEFAULT NULL,
  `skill_summary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_industry` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_function` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Current Business Function',
  `current_designation` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_started` datetime DEFAULT NULL,
  `job_notice_period` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notice period (in days)',
  `current_job_responsibility` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_salary` decimal(6,2) DEFAULT NULL COMMENT 'Current salary (per month) (Tk)',
  `cv` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Supported file formats: DOC, DOCX, PDF, TIFF, JPG, PNG',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gym_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_mime_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0,
  `total_post` int(10) NOT NULL DEFAULT 0,
  `total_favorite` int(5) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(3) DEFAULT NULL,
  `package_start_date` date DEFAULT NULL,
  `package_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(1, 'Individual', 'Mahi', 'mahi@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LZOFwask9Vlm9tinzRnGXepiareXpb6VJ6ctmPKuG0m1NY0OAppK.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2020-11-08 10:08:54', '2020-11-09 11:51:53', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Individual', 'maidul', 'maidul.tech@gmail.com', '01681944126', '01766682123', 1, 0, '5931', '8587', '2020-12-18 00:31:42', '2020-12-18 00:31:42', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xbK9F3u3PAmc45YU9vbJfOXG8fMijdO//Kys5EcKbiQXAW8TZjC8W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 1, '2020-11-13 20:16:21', '2020-12-17 06:30:42', NULL, 'Dhaka', NULL, NULL, NULL, NULL),
(3, 'Individual', 'Rabin', 'rabinmia7578@gmail.com', '01984594919', NULL, 1, 0, '2333', '', '2020-12-18 11:34:00', '2020-12-18 11:34:00', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XVE5h8XrLjomNrFkptJ0qu6BSD1pwtfuCjSiTvYiI2O43.MptRzJW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2020-12-12 02:17:39', '2020-12-12 14:28:10', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Individual Seller', 'joy shahriar', 'hakimali111333@gmail.com', '01984594919', NULL, 0, 0, '3772', '', '2020-12-13 15:39:12', '2020-12-13 15:39:12', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZWQ3UzVJItzHwNm77hnPXeTvmO3x4fXs7edjeq7cvjeYSpDq6crce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2020-12-12 15:33:59', '2020-12-12 15:38:12', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `role_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 1, 1, NULL, NULL, '2020-10-09 02:45:46'),
(3, 'General Admin Group', 8, 1, NULL, '2020-10-09 02:33:26', '2020-10-09 02:45:57'),
(4, 'Sales Manger Group', 12, 1, NULL, '2020-10-09 02:34:06', '2020-10-09 02:46:01'),
(5, 'Data Entry Operator1', 12, 1, NULL, '2022-07-28 14:55:26', '2022-07-28 14:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `verify_mobile_no`
--

CREATE TABLE `verify_mobile_no` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Admin, 1 = User',
  `purpose` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = Verify-mobile,  1 = Reset-password 2= Forgot-password',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Last-one, 0 = Used, 2 = Unused',
  `expire_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workout_body_parts`
--

CREATE TABLE `workout_body_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_body_parts`
--

INSERT INTO `workout_body_parts` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Arm', 1, '2020-10-03 07:20:40', '2020-10-03 07:20:40'),
(3, 'qweqe', 1, '2020-10-06 06:57:11', '2020-10-06 06:57:11'),
(4, '1231231', 1, '2020-10-06 06:57:31', '2020-10-06 06:57:31'),
(5, 'asd', 1, '2020-10-06 06:58:41', '2020-10-06 06:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `workout_items`
--

CREATE TABLE `workout_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workout_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_parts_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_items`
--

INSERT INTO `workout_items` (`id`, `workout_name`, `photo`, `photo_url`, `body_parts_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test 1', 'workout_item_04102020_1601817674.png', 'http://www.boilerplate-admin.local/media/images/workout-item/workout_item_04102020_1601817674.png', 2, 1, '2020-10-03 07:21:14', '2020-10-03 07:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auths`
--
ALTER TABLE `auths`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auths_email_unique` (`email`);

--
-- Indexes for table `auth_role`
--
ALTER TABLE `auth_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backup_admin_users`
--
ALTER TABLE `backup_admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_auth_id_foreign` (`auth_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_permission_group_id_foreign` (`permission_group_id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_ads`
--
ALTER TABLE `prd_ads`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_ad_details`
--
ALTER TABLE `prd_ad_details`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_favourites`
--
ALTER TABLE `prd_favourites`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_features`
--
ALTER TABLE `prd_features`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_img_library`
--
ALTER TABLE `prd_img_library`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_master`
--
ALTER TABLE `prd_master`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_model`
--
ALTER TABLE `prd_model`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_reports`
--
ALTER TABLE `prd_reports`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prd_type`
--
ALTER TABLE `prd_type`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `prod_job_preference`
--
ALTER TABLE `prod_job_preference`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sls_payments`
--
ALTER TABLE `sls_payments`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `sls_promotions`
--
ALTER TABLE `sls_promotions`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `sls_promotion_details`
--
ALTER TABLE `sls_promotion_details`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_areas`
--
ALTER TABLE `ss_areas`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_business_function`
--
ALTER TABLE `ss_business_function`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_chat`
--
ALTER TABLE `ss_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_cities`
--
ALTER TABLE `ss_cities`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_contact`
--
ALTER TABLE `ss_contact`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_country`
--
ALTER TABLE `ss_country`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_currency`
--
ALTER TABLE `ss_currency`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_customers`
--
ALTER TABLE `ss_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_divisions`
--
ALTER TABLE `ss_divisions`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_employment_history`
--
ALTER TABLE `ss_employment_history`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_faq`
--
ALTER TABLE `ss_faq`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_industry`
--
ALTER TABLE `ss_industry`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_job_title`
--
ALTER TABLE `ss_job_title`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_location`
--
ALTER TABLE `ss_location`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_packages`
--
ALTER TABLE `ss_packages`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_paging`
--
ALTER TABLE `ss_paging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_shop`
--
ALTER TABLE `ss_shop`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `ss_subscribe`
--
ALTER TABLE `ss_subscribe`
  ADD PRIMARY KEY (`pk_no`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verify_mobile_no`
--
ALTER TABLE `verify_mobile_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workout_body_parts`
--
ALTER TABLE `workout_body_parts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auths`
--
ALTER TABLE `auths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `auth_role`
--
ALTER TABLE `auth_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `prd_ads`
--
ALTER TABLE `prd_ads`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_ad_details`
--
ALTER TABLE `prd_ad_details`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `prd_favourites`
--
ALTER TABLE `prd_favourites`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_features`
--
ALTER TABLE `prd_features`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_img_library`
--
ALTER TABLE `prd_img_library`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `prd_master`
--
ALTER TABLE `prd_master`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prd_model`
--
ALTER TABLE `prd_model`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prd_reports`
--
ALTER TABLE `prd_reports`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prd_type`
--
ALTER TABLE `prd_type`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `prod_job_preference`
--
ALTER TABLE `prod_job_preference`
  MODIFY `pk_no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sls_payments`
--
ALTER TABLE `sls_payments`
  MODIFY `pk_no` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sls_promotions`
--
ALTER TABLE `sls_promotions`
  MODIFY `pk_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sls_promotion_details`
--
ALTER TABLE `sls_promotion_details`
  MODIFY `pk_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ss_areas`
--
ALTER TABLE `ss_areas`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `ss_business_function`
--
ALTER TABLE `ss_business_function`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ss_chat`
--
ALTER TABLE `ss_chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_cities`
--
ALTER TABLE `ss_cities`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ss_contact`
--
ALTER TABLE `ss_contact`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ss_country`
--
ALTER TABLE `ss_country`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_currency`
--
ALTER TABLE `ss_currency`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_customers`
--
ALTER TABLE `ss_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_divisions`
--
ALTER TABLE `ss_divisions`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ss_employment_history`
--
ALTER TABLE `ss_employment_history`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_faq`
--
ALTER TABLE `ss_faq`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ss_industry`
--
ALTER TABLE `ss_industry`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_job_title`
--
ALTER TABLE `ss_job_title`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_location`
--
ALTER TABLE `ss_location`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ss_packages`
--
ALTER TABLE `ss_packages`
  MODIFY `pk_no` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ss_paging`
--
ALTER TABLE `ss_paging`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_shop`
--
ALTER TABLE `ss_shop`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_subscribe`
--
ALTER TABLE `ss_subscribe`
  MODIFY `pk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verify_mobile_no`
--
ALTER TABLE `verify_mobile_no`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workout_body_parts`
--
ALTER TABLE `workout_body_parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
