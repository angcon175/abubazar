-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 21, 2022 at 05:51 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dalalbazar_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic_mime_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_auth_id_foreign` (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `designation`, `auth_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Super', 'Admin', 'Super', 1, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, 'Admin', 'General', 'General Admin', 2, 'profile_12072021_1626107790.jpg', '/media/images/profile/profile_12072021_1626107790.jpg', NULL, 1, '2020-10-03 07:06:35', '2021-07-12 16:36:30', NULL),
(6, 'Sale', 'Manager', 'Sales', 16, 'profile_12072021_1626108493.jpg', 'https://panel.dalalbazar.com/media/images/profile/profile_12072021_1626108493.jpg', NULL, 1, '2020-10-09 04:59:28', '2021-07-12 16:48:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auths`
--

DROP TABLE IF EXISTS `auths`;
CREATE TABLE IF NOT EXISTS `auths` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL COMMENT '1 = Admin',
  `mobile1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) DEFAULT '0',
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `dob` date DEFAULT NULL,
  `facebook_id` bigint(20) DEFAULT NULL,
  `google_id` bigint(20) DEFAULT NULL,
  `package_id` int(10) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '0',
  `seller_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Individual Seller',
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code_expire` datetime DEFAULT NULL,
  `is_first_login` tinyint(4) NOT NULL DEFAULT '1',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Admin',
  `can_login` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = Can login, 0 = Can not login',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = Active, 0 = Inactive',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_post` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_setting_access` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `auths_mobile_no_unique` (`mobile_no`),
  UNIQUE KEY `auths_username_unique` (`username`),
  UNIQUE KEY `auths_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auths`
--

INSERT INTO `auths` (`id`, `username`, `name`, `email`, `address`, `mobile_no`, `password`, `salt`, `model_id`, `mobile1`, `mobile1_is_verified`, `gender`, `dob`, `facebook_id`, `google_id`, `package_id`, `is_active`, `seller_type`, `activation_code`, `activation_code_expire`, `is_first_login`, `user_type`, `can_login`, `status`, `created_by`, `updated_by`, `remember_token`, `city`, `total_post`, `created_at`, `updated_at`, `web_setting_access`) VALUES
(1, 'sadmin', NULL, 'admin@admin.com', NULL, '0171682457', '$2y$10$ND8HYnzYEhJ4phCTuulYvO6kLbwpwahMmK92YUPIq2/gLJn4ATBSO', NULL, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 1),
(2, 'admin', NULL, 'superadmin@dalalbazar.com', NULL, '01918993427', '$2y$10$ND8HYnzYEhJ4phCTuulYvO6kLbwpwahMmK92YUPIq2/gLJn4ATBSO', NULL, 1, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, '2020-10-03 07:06:35', '2021-07-12 16:36:30', 1),
(16, 'sales', NULL, 'manager@dalalbazar.com', NULL, '01716824760', '$2y$10$ND8HYnzYEhJ4phCTuulYvO6kLbwpwahMmK92YUPIq2/gLJn4ATBSO', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, '2020-10-09 04:59:28', '2021-07-12 17:13:46', 0),
(17, NULL, 'Md Omit Hasan', 'omit@gmail.com', NULL, '0191696258', '$2y$10$ND8HYnzYEhJ4phCTuulYvO6kLbwpwahMmK92YUPIq2/gLJn4ATBSO', NULL, 0, NULL, 0, 1, NULL, NULL, NULL, NULL, 0, 'Individual Seller', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, NULL, 0, '2022-06-15 17:28:19', '2022-06-15 17:28:19', 0),
(19, NULL, 'Md Omit Hasan', 'omi@gmail.com', 'Dhaka', '', '$2y$10$IHBA6GTHqmJFpSbGEu384Orgm77JolpQAPVuu7SgUm6iwFwtNQ1Ke', NULL, 0, '01916962118', 1, 1, NULL, NULL, NULL, 6, 1, 'Individual', NULL, NULL, 1, 0, 1, 1, 0, 0, NULL, 'Dhaka', 3, '2022-06-20 15:08:49', '2022-06-21 17:09:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_role`
--

DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE IF NOT EXISTS `auth_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_group_id` int(11) DEFAULT NULL,
  `custom_permission` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_role`
--

INSERT INTO `auth_role` (`id`, `auth_id`, `role_id`, `user_group_id`, `custom_permission`, `created_at`, `updated_at`) VALUES
(1, 2, 8, 3, NULL, '2020-10-03 07:06:35', '2020-10-09 04:31:06'),
(2, 16, 12, 4, NULL, '2020-10-09 04:59:28', '2021-07-12 16:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gyms`
--

DROP TABLE IF EXISTS `gyms`;
CREATE TABLE IF NOT EXISTS `gyms` (
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
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `deleted_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
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

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
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

DROP TABLE IF EXISTS `models`;
CREATE TABLE IF NOT EXISTS `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_key` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('003dc66b-de9c-4d55-9b57-605bc91f8192', 'App\\Notifications\\WellComeNotification', 'App\\User', 215, '{\"user_id\":215}', NULL, '2021-06-30 22:02:17', '2021-06-30 22:02:17'),
('00a4a156-b5ab-4c4d-a4e5-c45fe47f2e48', 'App\\Notifications\\WellComeNotification', 'App\\User', 227, '{\"user_id\":227}', NULL, '2021-06-30 23:11:42', '2021-06-30 23:11:42'),
('00af2180-6f35-4e59-8034-d1e186600871', 'App\\Notifications\\WellComeNotification', 'App\\User', 431, '{\"user_id\":431}', NULL, '2021-07-02 01:49:15', '2021-07-02 01:49:15'),
('013c97bd-cc5f-4fa8-9e77-c82a6099f7f0', 'App\\Notifications\\WellComeNotification', 'App\\User', 159, '{\"user_id\":159}', NULL, '2021-06-30 14:18:33', '2021-06-30 14:18:33'),
('01c53583-2a3e-486a-8a3b-942cb8e64800', 'App\\Notifications\\WellComeNotification', 'App\\User', 277, '{\"user_id\":277}', NULL, '2021-07-01 12:16:15', '2021-07-01 12:16:15'),
('01f3083c-8e70-402a-87fc-fbdb9782e0f2', 'App\\Notifications\\WellComeNotification', 'App\\User', 425, '{\"user_id\":425}', NULL, '2021-07-02 01:34:57', '2021-07-02 01:34:57'),
('01f64db0-47da-46a9-8769-beca451438a9', 'App\\Notifications\\WellComeNotification', 'App\\User', 343, '{\"user_id\":343}', NULL, '2021-07-01 23:02:23', '2021-07-01 23:02:23'),
('02ec7b73-b322-4a37-a738-bc92b622f83f', 'App\\Notifications\\WellComeNotification', 'App\\User', 133, '{\"user_id\":133}', NULL, '2021-06-30 11:02:39', '2021-06-30 11:02:39'),
('03182bc2-f2d5-4dc7-b268-4677cd4c63d7', 'App\\Notifications\\WellComeNotification', 'App\\User', 209, '{\"user_id\":209}', NULL, '2021-06-30 21:38:15', '2021-06-30 21:38:15'),
('032d6f9b-9f87-4ddb-b882-2ceb59510854', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 01:14:45', '2021-07-02 01:14:45'),
('034fb815-cd2a-48b7-a9c0-e20656096723', 'App\\Notifications\\WellComeNotification', 'App\\User', 474, '{\"user_id\":474}', NULL, '2021-07-02 06:27:55', '2021-07-02 06:27:55'),
('03c77395-076a-4689-863b-789f095e8ea2', 'App\\Notifications\\WellComeNotification', 'App\\User', 166, '{\"user_id\":166}', NULL, '2021-06-30 15:24:49', '2021-06-30 15:24:49'),
('03f5451d-f05d-49da-ab1f-5448aee6e9ed', 'App\\Notifications\\WellComeNotification', 'App\\User', 549, '{\"user_id\":549}', NULL, '2021-07-08 01:36:28', '2021-07-08 01:36:28'),
('04542526-c2ad-49b8-b518-7664e2088976', 'App\\Notifications\\WellComeNotification', 'App\\User', 481, '{\"user_id\":481}', NULL, '2021-07-02 09:14:13', '2021-07-02 09:14:13'),
('05602787-737a-44b6-b9f8-b2f388f05e42', 'App\\Notifications\\WellComeNotification', 'App\\User', 204, '{\"user_id\":204}', NULL, '2021-06-30 20:28:27', '2021-06-30 20:28:27'),
('057da807-6dc9-4d2e-8728-cc4de7ee12ef', 'App\\Notifications\\WellComeNotification', 'App\\User', 315, '{\"user_id\":315}', NULL, '2021-07-01 21:50:42', '2021-07-01 21:50:42'),
('05d66112-b184-4dcf-aca8-57030130d24e', 'App\\Notifications\\WellComeNotification', 'App\\User', 99, '{\"user_id\":99}', NULL, '2021-06-30 00:42:28', '2021-06-30 00:42:28'),
('06155e35-9330-4a1c-a386-2da85c817989', 'App\\Notifications\\WellComeNotification', 'App\\User', 441, '{\"user_id\":441}', NULL, '2021-07-02 02:17:30', '2021-07-02 02:17:30'),
('0625e621-26e9-45aa-beef-75e7881dbd68', 'App\\Notifications\\WellComeNotification', 'App\\User', 458, '{\"user_id\":458}', NULL, '2021-07-02 03:33:19', '2021-07-02 03:33:19'),
('0664cabb-7cba-4640-a01f-110fac4468d6', 'App\\Notifications\\WellComeNotification', 'App\\User', 346, '{\"user_id\":346}', NULL, '2021-07-01 23:08:36', '2021-07-01 23:08:36'),
('0693ecd1-f11e-44b5-a38c-94489735045d', 'App\\Notifications\\WellComeNotification', 'App\\User', 584, '{\"user_id\":584}', NULL, '2021-07-10 08:04:04', '2021-07-10 08:04:04'),
('06acaa9f-6689-4b37-9b2c-b99acf40da7d', 'App\\Notifications\\WellComeNotification', 'App\\User', 466, '{\"user_id\":466}', NULL, '2021-07-02 04:22:57', '2021-07-02 04:22:57'),
('06bc6b7c-0285-4512-b83f-68bcf6664ed4', 'App\\Notifications\\WellComeNotification', 'App\\User', 237, '{\"user_id\":237}', NULL, '2021-07-01 00:10:39', '2021-07-01 00:10:39'),
('072e5bdf-b4db-4c7f-9ea8-6662c94fec7d', 'App\\Notifications\\WellComeNotification', 'App\\User', 35, '{\"user_id\":35}', NULL, '2021-06-29 18:16:40', '2021-06-29 18:16:40'),
('075238b2-790f-4e60-8ebe-c7d92f2c71cb', 'App\\Notifications\\WellComeNotification', 'App\\User', 120, '{\"user_id\":120}', NULL, '2021-06-30 07:52:36', '2021-06-30 07:52:36'),
('07931a2e-1dfc-40c4-bc71-5c23baddd9a8', 'App\\Notifications\\WellComeNotification', 'App\\User', 591, '{\"user_id\":591}', NULL, '2021-07-10 17:52:20', '2021-07-10 17:52:20'),
('079dcea9-e793-4df9-901b-089932344f98', 'App\\Notifications\\WellComeNotification', 'App\\User', 224, '{\"user_id\":224}', NULL, '2021-06-30 22:52:37', '2021-06-30 22:52:37'),
('07a93827-b289-483d-91ac-c7f47400d057', 'App\\Notifications\\WellComeNotification', 'App\\User', 178, '{\"user_id\":178}', NULL, '2021-06-30 16:26:52', '2021-06-30 16:26:52'),
('07b89ee2-3b97-47d0-97e7-702d31dcd0ca', 'App\\Notifications\\WellComeNotification', 'App\\User', 460, '{\"user_id\":460}', NULL, '2021-07-02 03:53:24', '2021-07-02 03:53:24'),
('080a2f81-35ff-4d77-8423-aa1b3446237e', 'App\\Notifications\\WellComeNotification', 'App\\User', 585, '{\"user_id\":585}', NULL, '2021-07-10 09:24:13', '2021-07-10 09:24:13'),
('08514757-761d-4ffe-931c-3e32456100c6', 'App\\Notifications\\WellComeNotification', 'App\\User', 288, '{\"user_id\":288}', NULL, '2021-07-01 14:56:21', '2021-07-01 14:56:21'),
('09261132-b32c-4cd0-ab92-d9de8acb42a7', 'App\\Notifications\\WellComeNotification', 'App\\User', 520, '{\"user_id\":520}', NULL, '2021-07-06 01:17:11', '2021-07-06 01:17:11'),
('0a1a3e4f-1b27-4e6e-9e66-42e04cee4eeb', 'App\\Notifications\\WellComeNotification', 'App\\User', 524, '{\"user_id\":524}', NULL, '2021-07-06 07:50:17', '2021-07-06 07:50:17'),
('0cac75d7-4308-4fbd-aa6a-9d702ea2edfe', 'App\\Notifications\\WellComeNotification', 'App\\User', 388, '{\"user_id\":388}', NULL, '2021-07-02 00:25:42', '2021-07-02 00:25:42'),
('0dc21df4-544f-4edd-897d-5c84d8a8a4a5', 'App\\Notifications\\WellComeNotification', 'App\\User', 174, '{\"user_id\":174}', NULL, '2021-06-30 16:08:01', '2021-06-30 16:08:01'),
('0dccae64-441e-4e12-b018-468d7556d294', 'App\\Notifications\\WellComeNotification', 'App\\User', 477, '{\"user_id\":477}', NULL, '2021-07-02 07:52:40', '2021-07-02 07:52:40'),
('0e23d6ee-4baa-4a66-8af2-6aed24f81cea', 'App\\Notifications\\WellComeNotification', 'App\\User', 534, '{\"user_id\":534}', NULL, '2021-07-07 04:48:18', '2021-07-07 04:48:18'),
('0e50f9dc-f21e-4a79-a549-95d4b71d0bab', 'App\\Notifications\\WellComeNotification', 'App\\User', 280, '{\"user_id\":280}', NULL, '2021-07-01 12:46:26', '2021-07-01 12:46:26'),
('0eb71803-bd59-4041-a79c-148e6f6bc807', 'App\\Notifications\\WellComeNotification', 'App\\User', 471, '{\"user_id\":471}', NULL, '2021-07-02 05:16:54', '2021-07-02 05:16:54'),
('0eecbbc8-6242-4f99-891c-edf9c598ee85', 'App\\Notifications\\WellComeNotification', 'App\\User', 353, '{\"user_id\":353}', NULL, '2021-07-01 23:17:52', '2021-07-01 23:17:52'),
('0f3440fa-6bf9-4ab6-852b-90f762040d63', 'App\\Notifications\\WellComeNotification', 'App\\User', 496, '{\"user_id\":496}', NULL, '2021-07-03 03:45:09', '2021-07-03 03:45:09'),
('0f49d08e-5fa2-408a-8edc-8bee04fe37d8', 'App\\Notifications\\WellComeNotification', 'App\\User', 325, '{\"user_id\":325}', NULL, '2021-07-01 22:35:41', '2021-07-01 22:35:41'),
('0fa6d9ab-75b5-4f07-afb4-18447b31be39', 'App\\Notifications\\WellComeNotification', 'App\\User', 483, '{\"user_id\":483}', NULL, '2021-07-02 09:40:56', '2021-07-02 09:40:56'),
('0fe4e7c7-46c8-4812-97ac-377f3cd4b548', 'App\\Notifications\\WellComeNotification', 'App\\User', 439, '{\"user_id\":439}', NULL, '2021-07-02 02:15:53', '2021-07-02 02:15:53'),
('0ff7cd22-a359-4e1a-801d-654f45ae114e', 'App\\Notifications\\WellComeNotification', 'App\\User', 216, '{\"user_id\":216}', NULL, '2021-06-30 22:13:58', '2021-06-30 22:13:58'),
('1053aae5-9f8a-4a8a-bb44-493a08e79d7f', 'App\\Notifications\\WellComeNotification', 'App\\User', 17, '{\"user_id\":17}', NULL, '2021-06-29 16:55:30', '2021-06-29 16:55:30'),
('107aa8b9-7ae0-4324-adaf-cf959b643bdb', 'App\\Notifications\\WellComeNotification', 'App\\User', 231, '{\"user_id\":231}', NULL, '2021-06-30 23:32:39', '2021-06-30 23:32:39'),
('10a84f08-67e5-44ce-8eb0-77c024e1af58', 'App\\Notifications\\WellComeNotification', 'App\\User', 153, '{\"user_id\":153}', NULL, '2021-06-30 13:38:01', '2021-06-30 13:38:01'),
('1152f06d-a62b-467d-876a-a775fbb4e710', 'App\\Notifications\\WellComeNotification', 'App\\User', 485, '{\"user_id\":485}', NULL, '2021-07-02 11:35:59', '2021-07-02 11:35:59'),
('115cdb33-dc08-4252-8405-2472808c6ef6', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 01:13:20', '2021-07-02 01:13:20'),
('11a54d60-b1b0-47ef-9638-fa3bee9e0eb8', 'App\\Notifications\\WellComeNotification', 'App\\User', 587, '{\"user_id\":587}', NULL, '2021-07-10 11:48:07', '2021-07-10 11:48:07'),
('11ab7788-d60b-4302-8d10-e3eb34993ee2', 'App\\Notifications\\WellComeNotification', 'App\\User', 371, '{\"user_id\":371}', NULL, '2021-07-01 23:59:39', '2021-07-01 23:59:39'),
('11b84bee-a744-42a8-9448-17e83de2f1d2', 'App\\Notifications\\WellComeNotification', 'App\\User', 31, '{\"user_id\":31}', NULL, '2021-06-29 17:56:23', '2021-06-29 17:56:23'),
('11e3a741-33a2-419c-a79b-a09260517b9d', 'App\\Notifications\\WellComeNotification', 'App\\User', 144, '{\"user_id\":144}', NULL, '2021-06-30 12:50:46', '2021-06-30 12:50:46'),
('12585332-40ae-472e-9658-e9d93ff8387e', 'App\\Notifications\\WellComeNotification', 'App\\User', 158, '{\"user_id\":158}', NULL, '2021-06-30 14:01:14', '2021-06-30 14:01:14'),
('12709eb9-29f6-45e6-9221-c5b58cb82f53', 'App\\Notifications\\WellComeNotification', 'App\\User', 464, '{\"user_id\":464}', NULL, '2021-07-02 04:12:19', '2021-07-02 04:12:19'),
('129a1f0b-f061-4426-bded-46885e05c421', 'App\\Notifications\\WellComeNotification', 'App\\User', 539, '{\"user_id\":539}', NULL, '2021-07-07 11:22:33', '2021-07-07 11:22:33'),
('12c4a7db-9250-4dfb-8e9f-28f1af6376f4', 'App\\Notifications\\WellComeNotification', 'App\\User', 322, '{\"user_id\":322}', NULL, '2021-07-01 22:33:13', '2021-07-01 22:33:13'),
('12cc4e27-68da-49b0-8149-0a788f4abd79', 'App\\Notifications\\WellComeNotification', 'App\\User', 285, '{\"user_id\":285}', NULL, '2021-07-01 14:31:42', '2021-07-01 14:31:42'),
('12df673a-ee10-4c7a-a4e0-6fca0c35687c', 'App\\Notifications\\WellComeNotification', 'App\\User', 182, '{\"user_id\":182}', NULL, '2021-06-30 16:53:01', '2021-06-30 16:53:01'),
('136a6fcc-4edd-474c-982a-9a4e80ee2153', 'App\\Notifications\\WellComeNotification', 'App\\User', 350, '{\"user_id\":350}', NULL, '2021-07-01 23:16:00', '2021-07-01 23:16:00'),
('13927e66-e834-48b3-a84c-8c730e6c107c', 'App\\Notifications\\WellComeNotification', 'App\\User', 487, '{\"user_id\":487}', NULL, '2021-07-02 13:20:57', '2021-07-02 13:20:57'),
('142b328f-7089-4ecd-9184-7ccf5b0e478c', 'App\\Notifications\\WellComeNotification', 'App\\User', 453, '{\"user_id\":453}', NULL, '2021-07-02 03:13:39', '2021-07-02 03:13:39'),
('1431b07f-0972-4eda-ad7d-41eb02b69f73', 'App\\Notifications\\WellComeNotification', 'App\\User', 65, '{\"user_id\":65}', NULL, '2021-06-29 21:08:17', '2021-06-29 21:08:17'),
('14447339-004b-456f-a10e-2845130ad8ba', 'App\\Notifications\\WellComeNotification', 'App\\User', 429, '{\"user_id\":429}', NULL, '2021-07-02 01:45:55', '2021-07-02 01:45:55'),
('144d4659-5f98-46e4-90d0-c7f7e2f3eed7', 'App\\Notifications\\WellComeNotification', 'App\\User', 304, '{\"user_id\":304}', NULL, '2021-07-01 19:31:48', '2021-07-01 19:31:48'),
('15d77dfc-a48f-4f21-a31b-3899921e0c21', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 18:24:09', '2021-06-29 18:24:09'),
('163c8111-5e97-480e-a49e-9a60d48cbc22', 'App\\Notifications\\WellComeNotification', 'App\\User', 271, '{\"user_id\":271}', NULL, '2021-07-01 11:08:19', '2021-07-01 11:08:19'),
('1643e79a-efad-4cf1-924b-64e78c0091f6', 'App\\Notifications\\WellComeNotification', 'App\\User', 578, '{\"user_id\":578}', NULL, '2021-07-09 23:53:51', '2021-07-09 23:53:51'),
('177af39a-bdb0-4e3d-abf7-6ec17f033542', 'App\\Notifications\\WellComeNotification', 'App\\User', 588, '{\"user_id\":588}', NULL, '2021-07-10 13:04:06', '2021-07-10 13:04:06'),
('17d60339-9138-4743-b450-997a38c440e4', 'App\\Notifications\\WellComeNotification', 'App\\User', 5, '{\"user_id\":5}', NULL, '2021-06-29 15:35:18', '2021-06-29 15:35:18'),
('18f4cc17-56c8-45b3-a076-9fb93a8f843c', 'App\\Notifications\\WellComeNotification', 'App\\User', 113, '{\"user_id\":113}', NULL, '2021-07-03 00:38:14', '2021-07-03 00:38:14'),
('192a4834-c412-4815-a014-bfad0114e3ab', 'App\\Notifications\\WellComeNotification', 'App\\User', 478, '{\"user_id\":478}', NULL, '2021-07-02 07:58:16', '2021-07-02 07:58:16'),
('195701d2-b4e1-4fd3-9890-25cc411d8d98', 'App\\Notifications\\WellComeNotification', 'App\\User', 238, '{\"user_id\":238}', NULL, '2021-07-01 00:23:05', '2021-07-01 00:23:05'),
('1ae30ae4-5ae5-4d4c-9fc3-9fc25b1e35b2', 'App\\Notifications\\WellComeNotification', 'App\\User', 574, '{\"user_id\":574}', NULL, '2021-07-09 18:16:47', '2021-07-09 18:16:47'),
('1aeb5a39-6046-4a1b-aaa9-e57d3bae828f', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 17:55:40', '2021-06-30 17:55:40'),
('1b0da117-4abf-473a-ac21-87c04642d814', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 18:48:16', '2021-06-29 18:48:16'),
('1b20aab6-487e-4635-b6bd-bef77d509f36', 'App\\Notifications\\WellComeNotification', 'App\\User', 364, '{\"user_id\":364}', NULL, '2021-07-01 23:39:28', '2021-07-01 23:39:28'),
('1bbc4c41-b243-4ca9-9680-b1946b7cc756', 'App\\Notifications\\WellComeNotification', 'App\\User', 210, '{\"user_id\":210}', NULL, '2021-06-30 21:40:12', '2021-06-30 21:40:12'),
('1bd43f45-ef93-42b3-a712-574fabfa9d89', 'App\\Notifications\\WellComeNotification', 'App\\User', 556, '{\"user_id\":556}', NULL, '2021-07-08 13:00:39', '2021-07-08 13:00:39'),
('1bd97d60-46d9-4565-91e2-929ad3c3939f', 'App\\Notifications\\WellComeNotification', 'App\\User', 360, '{\"user_id\":360}', NULL, '2021-07-01 23:34:31', '2021-07-01 23:34:31'),
('1ce2ab18-ff7f-49b5-9190-22096da71dee', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 19:49:01', '2021-06-29 19:49:01'),
('1d416d96-3f80-4bcd-ae6f-651e7d141e8a', 'App\\Notifications\\WellComeNotification', 'App\\User', 56, '{\"user_id\":56}', NULL, '2021-06-29 20:18:47', '2021-06-29 20:18:47'),
('1d4e7a84-8445-497f-aabb-e8ea1ec60242', 'App\\Notifications\\WellComeNotification', 'App\\User', 501, '{\"user_id\":501}', NULL, '2021-07-03 10:11:43', '2021-07-03 10:11:43'),
('1d62b2ce-276f-43c5-a5c6-15511dda18c5', 'App\\Notifications\\WellComeNotification', 'App\\User', 296, '{\"user_id\":296}', NULL, '2021-07-01 17:00:54', '2021-07-01 17:00:54'),
('1d6513e3-9ea4-418c-a3b0-1b1947cbc007', 'App\\Notifications\\WellComeNotification', 'App\\User', 602, '{\"user_id\":602}', NULL, '2021-07-11 15:46:48', '2021-07-11 15:46:48'),
('1daf4520-2141-4248-8184-d2bef1e7deeb', 'App\\Notifications\\WellComeNotification', 'App\\User', 253, '{\"user_id\":253}', NULL, '2021-07-01 02:19:42', '2021-07-01 02:19:42'),
('1dc5cd56-4b01-46a6-92c9-009b7e233eb2', 'App\\Notifications\\WellComeNotification', 'App\\User', 283, '{\"user_id\":283}', NULL, '2021-07-01 13:49:55', '2021-07-01 13:49:55'),
('1e56dead-dff6-4619-a800-5ec7de2d2029', 'App\\Notifications\\WellComeNotification', 'App\\User', 480, '{\"user_id\":480}', NULL, '2021-07-02 09:04:50', '2021-07-02 09:04:50'),
('1ec98864-d0c9-4955-aff7-45bb66272f53', 'App\\Notifications\\WellComeNotification', 'App\\User', 566, '{\"user_id\":566}', NULL, '2021-07-09 00:52:29', '2021-07-09 00:52:29'),
('1f2d8508-1dfe-4f60-b5e1-23af8bad2879', 'App\\Notifications\\WellComeNotification', 'App\\User', 354, '{\"user_id\":354}', NULL, '2021-07-01 23:18:34', '2021-07-01 23:18:34'),
('1fa44d65-9c10-4f98-88a0-df39dd056650', 'App\\Notifications\\WellComeNotification', 'App\\User', 273, '{\"user_id\":273}', NULL, '2021-07-01 11:41:21', '2021-07-01 11:41:21'),
('1fe24165-0c69-4b45-897f-d0b886cc9cc1', 'App\\Notifications\\WellComeNotification', 'App\\User', 19, '{\"user_id\":19}', NULL, '2021-06-29 17:05:22', '2021-06-29 17:05:22'),
('2063d743-c84d-431d-898d-7a9b4750f8cb', 'App\\Notifications\\WellComeNotification', 'App\\User', 242, '{\"user_id\":242}', NULL, '2021-07-01 00:39:10', '2021-07-01 00:39:10'),
('21348e63-8ceb-45f4-a3e9-7af023e3039c', 'App\\Notifications\\WellComeNotification', 'App\\User', 552, '{\"user_id\":552}', NULL, '2021-07-08 03:00:09', '2021-07-08 03:00:09'),
('214a73ee-c681-4320-82f6-210563e99183', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 20:41:42', '2021-06-29 20:41:42'),
('21a08ac1-3912-47d7-81e4-195487a607e2', 'App\\Notifications\\WellComeNotification', 'App\\User', 87, '{\"user_id\":87}', NULL, '2021-06-29 23:28:57', '2021-06-29 23:28:57'),
('21e4ee21-fa67-46d3-b57d-fb3f62dcf5f4', 'App\\Notifications\\WellComeNotification', 'App\\User', 40, '{\"user_id\":40}', NULL, '2021-06-29 18:51:38', '2021-06-29 18:51:38'),
('21f95eb3-cb30-4426-97d2-c6f4739f907d', 'App\\Notifications\\WellComeNotification', 'App\\User', 310, '{\"user_id\":310}', NULL, '2021-07-01 20:50:31', '2021-07-01 20:50:31'),
('2230959b-bc9c-411a-a8c2-3fd5b4c18bf9', 'App\\Notifications\\WellComeNotification', 'App\\User', 262, '{\"user_id\":262}', NULL, '2021-07-01 05:15:10', '2021-07-01 05:15:10'),
('22dd6862-0e98-4950-9a3b-a23d09531339', 'App\\Notifications\\WellComeNotification', 'App\\User', 550, '{\"user_id\":550}', NULL, '2021-07-08 02:11:28', '2021-07-08 02:11:28'),
('2345ed77-febc-4fca-a1e5-36f54ebb1e18', 'App\\Notifications\\WellComeNotification', 'App\\User', 28, '{\"user_id\":28}', NULL, '2021-06-29 17:46:28', '2021-06-29 17:46:28'),
('2492cbe8-52de-42c2-be6c-a4b8274601fd', 'App\\Notifications\\WellComeNotification', 'App\\User', 194, '{\"user_id\":194}', NULL, '2021-06-30 18:34:07', '2021-06-30 18:34:07'),
('24ce91d0-9858-4ebd-9f14-3d32c08a75ef', 'App\\Notifications\\WellComeNotification', 'App\\User', 66, '{\"user_id\":66}', NULL, '2021-06-29 21:13:27', '2021-06-29 21:13:27'),
('24e2e5e0-587b-4cfb-8475-05a524106c64', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 00:41:18', '2021-06-30 00:41:18'),
('2573a86a-c028-410d-96e8-832d7fcc9d49', 'App\\Notifications\\WellComeNotification', 'App\\User', 373, '{\"user_id\":373}', NULL, '2021-07-02 00:02:12', '2021-07-02 00:02:12'),
('25b0dd90-6864-4117-a742-6be0691c7c3d', 'App\\Notifications\\WellComeNotification', 'App\\User', 533, '{\"user_id\":533}', NULL, '2021-07-07 03:54:39', '2021-07-07 03:54:39'),
('279cfa6f-9b84-48f9-9ae9-49421b521af5', 'App\\Notifications\\WellComeNotification', 'App\\User', 508, '{\"user_id\":508}', NULL, '2021-07-04 19:03:21', '2021-07-04 19:03:21'),
('2866ba2f-fc55-4ed6-85ff-03194cf9f95d', 'App\\Notifications\\WellComeNotification', 'App\\User', 326, '{\"user_id\":326}', NULL, '2021-07-01 22:37:15', '2021-07-01 22:37:15'),
('287ea05a-8d40-4884-9479-27dfd1ab6bea', 'App\\Notifications\\WellComeNotification', 'App\\User', 345, '{\"user_id\":345}', NULL, '2021-07-01 23:06:54', '2021-07-01 23:06:54'),
('2901ba04-df8c-4ed1-a610-d2c617b9f680', 'App\\Notifications\\WellComeNotification', 'App\\User', 126, '{\"user_id\":126}', NULL, '2021-06-30 09:44:05', '2021-06-30 09:44:05'),
('29183146-8a89-4b9b-8d22-dec78c762824', 'App\\Notifications\\WellComeNotification', 'App\\User', 10, '{\"user_id\":10}', NULL, '2021-06-29 16:17:23', '2021-06-29 16:17:23'),
('297fbfdf-57c5-4f4b-b317-ecebe102b6e1', 'App\\Notifications\\WellComeNotification', 'App\\User', 518, '{\"user_id\":518}', NULL, '2021-07-05 22:29:58', '2021-07-05 22:29:58'),
('2b41df3a-8b97-4ba1-bb7c-5aff884a93dc', 'App\\Notifications\\WellComeNotification', 'App\\User', 426, '{\"user_id\":426}', NULL, '2021-07-02 01:41:18', '2021-07-02 01:41:18'),
('2bc5e5c6-320b-4f4d-89f4-98b88606abfb', 'App\\Notifications\\WellComeNotification', 'App\\User', 349, '{\"user_id\":349}', NULL, '2021-07-01 23:14:05', '2021-07-01 23:14:05'),
('2c865ebd-9550-4b91-a06c-4801df69c2b0', 'App\\Notifications\\WellComeNotification', 'App\\User', 489, '{\"user_id\":489}', NULL, '2021-07-02 18:30:32', '2021-07-02 18:30:32'),
('2cdb6627-a65c-4dd6-b260-72f044f39ff4', 'App\\Notifications\\WellComeNotification', 'App\\User', 424, '{\"user_id\":424}', NULL, '2021-07-02 01:34:57', '2021-07-02 01:34:57'),
('2d5957cf-dcab-4d54-836d-c254ab97ddec', 'App\\Notifications\\WellComeNotification', 'App\\User', 592, '{\"user_id\":592}', NULL, '2021-07-10 20:09:39', '2021-07-10 20:09:39'),
('2d7a7e34-01b8-4998-8e9d-832d5ec862e1', 'App\\Notifications\\WellComeNotification', 'App\\User', 561, '{\"user_id\":561}', NULL, '2021-07-08 17:47:37', '2021-07-08 17:47:37'),
('2e1421d6-e4cd-4351-bd01-d58c550e9dce', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 23:59:23', '2021-06-29 23:59:23'),
('2e912dea-7424-4ad7-a6b7-621269d7d5b0', 'App\\Notifications\\WellComeNotification', 'App\\User', 495, '{\"user_id\":495}', NULL, '2021-07-03 01:18:47', '2021-07-03 01:18:47'),
('2f008771-1d0a-422f-bcd3-906c709b9a9f', 'App\\Notifications\\WellComeNotification', 'App\\User', 571, '{\"user_id\":571}', NULL, '2021-07-09 16:21:22', '2021-07-09 16:21:22'),
('2f537349-76d9-4005-86c8-be26828a35de', 'App\\Notifications\\WellComeNotification', 'App\\User', 177, '{\"user_id\":177}', NULL, '2021-06-30 16:17:01', '2021-06-30 16:17:01'),
('30b04f2d-7174-45df-877c-990a4e463326', 'App\\Notifications\\WellComeNotification', 'App\\User', 188, '{\"user_id\":188}', NULL, '2021-06-30 17:52:14', '2021-06-30 17:52:14'),
('30bfc12e-0530-44ba-8fa9-2bfc4704aae6', 'App\\Notifications\\WellComeNotification', 'App\\User', 236, '{\"user_id\":236}', NULL, '2021-06-30 23:58:50', '2021-06-30 23:58:50'),
('314d6010-ef94-42a3-b740-cb368b1f2d84', 'App\\Notifications\\WellComeNotification', 'App\\User', 462, '{\"user_id\":462}', NULL, '2021-07-02 04:05:57', '2021-07-02 04:05:57'),
('315dc9f5-8172-46be-9409-1e7db1b3e9fc', 'App\\Notifications\\WellComeNotification', 'App\\User', 490, '{\"user_id\":490}', NULL, '2021-07-02 21:05:21', '2021-07-02 21:05:21'),
('325b7848-2386-4714-9b5b-b2f7dc4575ec', 'App\\Notifications\\WellComeNotification', 'App\\User', 327, '{\"user_id\":327}', NULL, '2021-07-01 22:39:10', '2021-07-01 22:39:10'),
('327f989a-dfa3-4924-bb2c-42f9fe7f4105', 'App\\Notifications\\WellComeNotification', 'App\\User', 498, '{\"user_id\":498}', NULL, '2021-07-03 06:49:53', '2021-07-03 06:49:53'),
('32d64933-0cdc-4e3b-9972-c77913eea03f', 'App\\Notifications\\WellComeNotification', 'App\\User', 510, '{\"user_id\":510}', NULL, '2021-07-05 02:17:26', '2021-07-05 02:17:26'),
('33642d3b-68e6-4948-ae07-dde05b744927', 'App\\Notifications\\WellComeNotification', 'App\\User', 105, '{\"user_id\":105}', NULL, '2021-06-30 01:41:16', '2021-06-30 01:41:16'),
('340e3b03-190c-412e-988c-1ee65d9df49e', 'App\\Notifications\\WellComeNotification', 'App\\User', 365, '{\"user_id\":365}', NULL, '2021-07-01 23:41:09', '2021-07-01 23:41:09'),
('34182de3-93a9-4817-a133-8cd49ad7eaa4', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 14:00:21', '2021-07-02 14:00:21'),
('3455e14a-ad77-4653-aa12-7bd513d90ab8', 'App\\Notifications\\WellComeNotification', 'App\\User', 156, '{\"user_id\":156}', NULL, '2021-06-30 15:04:07', '2021-06-30 15:04:07'),
('34659825-585b-4569-8261-69644c214434', 'App\\Notifications\\WellComeNotification', 'App\\User', 570, '{\"user_id\":570}', NULL, '2021-07-09 15:49:26', '2021-07-09 15:49:26'),
('3471ef93-a86c-4fa0-a578-3bd88b6aaea9', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 01:00:11', '2021-07-02 01:00:11'),
('36bc4fcb-cd7a-41cb-be2a-6a30c1211411', 'App\\Notifications\\WellComeNotification', 'App\\User', 514, '{\"user_id\":514}', NULL, '2021-07-05 18:49:08', '2021-07-05 18:49:08'),
('37f31d6d-ed3a-4009-895b-23dbdde4d7ce', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 23:23:54', '2021-06-30 23:23:54'),
('387c7bf8-7d40-48ef-ae8d-8c245248e8c8', 'App\\Notifications\\WellComeNotification', 'App\\User', 196, '{\"user_id\":196}', NULL, '2021-06-30 18:55:18', '2021-06-30 18:55:18'),
('389eabf3-8e6e-439d-ace7-7be34b91f663', 'App\\Notifications\\WellComeNotification', 'App\\User', 583, '{\"user_id\":583}', NULL, '2021-07-10 05:25:35', '2021-07-10 05:25:35'),
('38ade687-8ce8-4135-b473-2aca050bede5', 'App\\Notifications\\WellComeNotification', 'App\\User', 171, '{\"user_id\":171}', NULL, '2021-06-30 15:52:15', '2021-06-30 15:52:15'),
('38ffef6d-7554-407b-9f28-400459ae220f', 'App\\Notifications\\WellComeNotification', 'App\\User', 572, '{\"user_id\":572}', NULL, '2021-07-09 17:09:02', '2021-07-09 17:09:02'),
('3938067d-3553-4447-bd7d-df822fe13b33', 'App\\Notifications\\WellComeNotification', 'App\\User', 356, '{\"user_id\":356}', NULL, '2021-07-01 23:23:04', '2021-07-01 23:23:04'),
('3975d12b-749f-4625-90ee-b5d1deee6b6f', 'App\\Notifications\\WellComeNotification', 'App\\User', 246, '{\"user_id\":246}', NULL, '2021-07-01 00:56:02', '2021-07-01 00:56:02'),
('397ffd13-0205-4e3a-85e1-b41e92b37db8', 'App\\Notifications\\WellComeNotification', 'App\\User', 8, '{\"user_id\":8}', NULL, '2021-06-29 16:02:39', '2021-06-29 16:02:39'),
('39b283c0-60f4-4ac8-bd28-123a3a27ff11', 'App\\Notifications\\WellComeNotification', 'App\\User', 189, '{\"user_id\":189}', NULL, '2021-06-30 17:53:42', '2021-06-30 17:53:42'),
('39d35ea7-d866-492d-afb9-8498819a5a11', 'App\\Notifications\\WellComeNotification', 'App\\User', 202, '{\"user_id\":202}', NULL, '2021-06-30 20:19:28', '2021-06-30 20:19:28'),
('3b273b15-1d02-4f93-9569-dc3a47f001f9', 'App\\Notifications\\WellComeNotification', 'App\\User', 48, '{\"user_id\":48}', NULL, '2021-06-29 19:31:20', '2021-06-29 19:31:20'),
('3b784666-8853-4eb5-a5d1-429d5c49a104', 'App\\Notifications\\WellComeNotification', 'App\\User', 199, '{\"user_id\":199}', NULL, '2021-06-30 20:10:04', '2021-06-30 20:10:04'),
('3b956377-4312-4805-819e-c6160350163a', 'App\\Notifications\\WellComeNotification', 'App\\User', 163, '{\"user_id\":163}', NULL, '2021-06-30 14:48:38', '2021-06-30 14:48:38'),
('3bba6e9a-1a00-4bfe-8d19-7bd9efbe673a', 'App\\Notifications\\WellComeNotification', 'App\\User', 71, '{\"user_id\":71}', NULL, '2021-06-29 21:57:10', '2021-06-29 21:57:10'),
('3cbb5051-6043-4354-b378-2e3fc9ffbe28', 'App\\Notifications\\WellComeNotification', 'App\\User', 32, '{\"user_id\":32}', NULL, '2021-06-29 17:57:24', '2021-06-29 17:57:24'),
('3d0be258-cb43-4288-8758-f6c5bd3d76f2', 'App\\Notifications\\WellComeNotification', 'App\\User', 402, '{\"user_id\":402}', NULL, '2021-07-02 00:37:08', '2021-07-02 00:37:08'),
('3df35bb0-b790-4eb0-b906-ad693ead2546', 'App\\Notifications\\WellComeNotification', 'App\\User', 391, '{\"user_id\":391}', NULL, '2021-07-02 00:27:23', '2021-07-02 00:27:23'),
('3e1f0e9c-7f29-4793-aa16-f41b900a0b33', 'App\\Notifications\\WellComeNotification', 'App\\User', 543, '{\"user_id\":543}', NULL, '2021-07-07 15:01:36', '2021-07-07 15:01:36'),
('3e7c96c1-af3b-4575-be3a-4048f130672c', 'App\\Notifications\\WellComeNotification', 'App\\User', 205, '{\"user_id\":205}', NULL, '2021-06-30 20:29:51', '2021-06-30 20:29:51'),
('3f115d5e-5847-487e-bde7-3515ced2116e', 'App\\Notifications\\WellComeNotification', 'App\\User', 525, '{\"user_id\":525}', NULL, '2021-07-06 12:03:14', '2021-07-06 12:03:14'),
('3f6d22a9-c1fc-44e5-bdd2-5a8af6bb300b', 'App\\Notifications\\WellComeNotification', 'App\\User', 119, '{\"user_id\":119}', NULL, '2021-06-30 07:42:54', '2021-06-30 07:42:54'),
('3f9cc610-c4f5-4fc9-a321-836b2c4e14e7', 'App\\Notifications\\WellComeNotification', 'App\\User', 148, '{\"user_id\":148}', NULL, '2021-06-30 13:10:59', '2021-06-30 13:10:59'),
('3fd7ea24-84ab-4ae8-8aad-4890dad91d40', 'App\\Notifications\\WellComeNotification', 'App\\User', 576, '{\"user_id\":576}', NULL, '2021-07-09 22:04:53', '2021-07-09 22:04:53'),
('3ffc3e83-56cd-4da9-8794-f433a38fc815', 'App\\Notifications\\WellComeNotification', 'App\\User', 436, '{\"user_id\":436}', NULL, '2021-07-02 02:11:06', '2021-07-02 02:11:06'),
('40395a73-59ce-489f-8f43-331d8963b2d4', 'App\\Notifications\\WellComeNotification', 'App\\User', 475, '{\"user_id\":475}', NULL, '2021-07-02 06:39:00', '2021-07-02 06:39:00'),
('4085049a-9076-449f-9240-fc2dd6c0e36a', 'App\\Notifications\\WellComeNotification', 'App\\User', 319, '{\"user_id\":319}', NULL, '2021-07-01 22:28:25', '2021-07-01 22:28:25'),
('40e81ecc-6671-490d-927d-1e51b0de0ec5', 'App\\Notifications\\WellComeNotification', 'App\\User', 2, '{\"user_id\":2}', NULL, '2021-06-29 15:23:23', '2021-06-29 15:23:23'),
('4102c074-64a5-4026-929f-74e7e502415f', 'App\\Notifications\\WellComeNotification', 'App\\User', 27, '{\"user_id\":27}', NULL, '2021-06-29 17:35:07', '2021-06-29 17:35:07'),
('41638582-a29a-41e7-9ce4-944b95515955', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 17:17:51', '2021-06-29 17:17:51'),
('41f52383-dd33-4e52-b8a2-44e8c2810bc5', 'App\\Notifications\\WellComeNotification', 'App\\User', 20, '{\"user_id\":20}', NULL, '2021-06-29 17:10:53', '2021-06-29 17:10:53'),
('420a234a-f0b1-43c3-b510-d4b8ea200d60', 'App\\Notifications\\WellComeNotification', 'App\\User', 122, '{\"user_id\":122}', NULL, '2021-06-30 08:14:01', '2021-06-30 08:14:01'),
('42cb0e73-9733-4d85-a4d2-b3cfe4270957', 'App\\Notifications\\WellComeNotification', 'App\\User', 595, '{\"user_id\":595}', NULL, '2021-07-11 00:35:29', '2021-07-11 00:35:29'),
('43abd5c3-0e78-4531-9c1b-ada40e1dd894', 'App\\Notifications\\WellComeNotification', 'App\\User', 337, '{\"user_id\":337}', NULL, '2021-07-01 22:53:21', '2021-07-01 22:53:21'),
('443bd6c7-b14d-4f63-b611-668ef0d69cb9', 'App\\Notifications\\WellComeNotification', 'App\\User', 389, '{\"user_id\":389}', NULL, '2021-07-02 00:25:59', '2021-07-02 00:25:59'),
('446f4290-8be7-4bda-bd1a-d3a3d1d9a18c', 'App\\Notifications\\WellComeNotification', 'App\\User', 183, '{\"user_id\":183}', NULL, '2021-06-30 17:18:19', '2021-06-30 17:18:19'),
('458f5397-94ec-4391-8bd7-c45d6b333b7a', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 08:48:50', '2021-06-30 08:48:50'),
('4592d8c8-f2ee-4abd-9937-292ca13af6bc', 'App\\Notifications\\WellComeNotification', 'App\\User', 190, '{\"user_id\":190}', NULL, '2021-06-30 18:03:52', '2021-06-30 18:03:52'),
('45935b99-1d6a-48d8-86c4-447ab80fc287', 'App\\Notifications\\WellComeNotification', 'App\\User', 50, '{\"user_id\":50}', NULL, '2021-06-29 19:32:12', '2021-06-29 19:32:12'),
('463dc2fe-bfd9-41bf-85a2-a819ab53e131', 'App\\Notifications\\WellComeNotification', 'App\\User', 465, '{\"user_id\":465}', NULL, '2021-07-02 04:16:15', '2021-07-02 04:16:15'),
('4686a5e3-0d0a-4bc7-94b3-ba9666c230d9', 'App\\Notifications\\WellComeNotification', 'App\\User', 573, '{\"user_id\":573}', NULL, '2021-07-09 17:43:28', '2021-07-09 17:43:28'),
('46bba1b4-fd56-43b5-b58a-2e6a81a6c06a', 'App\\Notifications\\WellComeNotification', 'App\\User', 541, '{\"user_id\":541}', NULL, '2021-07-07 13:08:22', '2021-07-07 13:08:22'),
('46c206da-efa2-4767-9f4d-5c8347cbe0eb', 'App\\Notifications\\WellComeNotification', 'App\\User', 445, '{\"user_id\":445}', NULL, '2021-07-02 02:24:47', '2021-07-02 02:24:47'),
('4730ce8a-0475-4e43-abbf-ca4e1fb3ca9b', 'App\\Notifications\\WellComeNotification', 'App\\User', 203, '{\"user_id\":203}', NULL, '2021-06-30 20:25:35', '2021-06-30 20:25:35'),
('474a8a9a-0757-4f8a-97ab-51aecd308dfb', 'App\\Notifications\\WellComeNotification', 'App\\User', 313, '{\"user_id\":313}', NULL, '2021-07-01 21:27:57', '2021-07-01 21:27:57'),
('47789d9e-6dc1-4d9d-b9a1-86d6db02a9dc', 'App\\Notifications\\WellComeNotification', 'App\\User', 276, '{\"user_id\":276}', NULL, '2021-07-01 12:15:09', '2021-07-01 12:15:09'),
('47a5042a-b604-427b-a908-77f0ff4d7ef5', 'App\\Notifications\\WellComeNotification', 'App\\User', 586, '{\"user_id\":586}', NULL, '2021-07-10 10:13:56', '2021-07-10 10:13:56'),
('4810dd2a-1e0f-411b-9456-ec4f29782ec1', 'App\\Notifications\\WellComeNotification', 'App\\User', 23, '{\"user_id\":23}', NULL, '2021-06-29 17:21:13', '2021-06-29 17:21:13'),
('481ce44b-2dec-4133-95b5-be542e760c76', 'App\\Notifications\\WellComeNotification', 'App\\User', 449, '{\"user_id\":449}', NULL, '2021-07-02 02:50:04', '2021-07-02 02:50:04'),
('481d6799-c458-44fb-8d87-862614cfdd8e', 'App\\Notifications\\WellComeNotification', 'App\\User', 161, '{\"user_id\":161}', NULL, '2021-06-30 14:30:33', '2021-06-30 14:30:33'),
('48422d46-0ed2-42c0-8f99-ab9d2107de87', 'App\\Notifications\\WellComeNotification', 'App\\User', 12, '{\"user_id\":12}', NULL, '2021-06-29 16:20:27', '2021-06-29 16:20:27'),
('48587563-188c-4f12-ad0b-18528d25aaa5', 'App\\Notifications\\WellComeNotification', 'App\\User', 558, '{\"user_id\":558}', NULL, '2021-07-08 16:07:58', '2021-07-08 16:07:58'),
('497c06a6-3736-4888-b5d6-5a6b4dd47ffa', 'App\\Notifications\\WellComeNotification', 'App\\User', 38, '{\"user_id\":38}', NULL, '2021-06-29 18:29:38', '2021-06-29 18:29:38'),
('4a361992-208c-43a0-848e-21510cf58796', 'App\\Notifications\\WellComeNotification', 'App\\User', 92, '{\"user_id\":92}', NULL, '2021-06-29 23:47:41', '2021-06-29 23:47:41'),
('4c6b915a-657b-46f6-a212-64fe401ee114', 'App\\Notifications\\WellComeNotification', 'App\\User', 569, '{\"user_id\":569}', NULL, '2021-07-09 15:46:23', '2021-07-09 15:46:23'),
('4e8f0f0f-40fc-40cc-b68e-cca8c7cfd906', 'App\\Notifications\\WellComeNotification', 'App\\User', 593, '{\"user_id\":593}', NULL, '2021-07-10 21:54:52', '2021-07-10 21:54:52'),
('4ebe9b12-2787-4ad5-9c6f-6f9627747d71', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 08:30:37', '2021-07-01 08:30:37'),
('4f9f313b-cf2f-4680-8c2b-6346a00376ef', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 20:36:54', '2021-06-29 20:36:54'),
('4fd39348-20d2-4716-89a6-48bfbe607eca', 'App\\Notifications\\WellComeNotification', 'App\\User', 255, '{\"user_id\":255}', NULL, '2021-07-01 02:52:39', '2021-07-01 02:52:39'),
('502f44bf-bc54-4967-ae8a-a128d9623a39', 'App\\Notifications\\WellComeNotification', 'App\\User', 154, '{\"user_id\":154}', NULL, '2021-06-30 13:38:12', '2021-06-30 13:38:12'),
('509c8969-87d4-4304-81bd-ab2106791bc5', 'App\\Notifications\\WellComeNotification', 'App\\User', 128, '{\"user_id\":128}', NULL, '2021-06-30 10:06:13', '2021-06-30 10:06:13'),
('50a0b228-e464-4f60-a308-e0e17618fc02', 'App\\Notifications\\WellComeNotification', 'App\\User', 409, '{\"user_id\":409}', NULL, '2021-07-02 00:49:27', '2021-07-02 00:49:27'),
('511e386e-645f-49b6-8443-b80098ed0fd5', 'App\\Notifications\\WellComeNotification', 'App\\User', 33, '{\"user_id\":33}', NULL, '2021-06-29 18:00:15', '2021-06-29 18:00:15'),
('51a6ba95-1bc9-4364-91d8-410d69672253', 'App\\Notifications\\WellComeNotification', 'App\\User', 479, '{\"user_id\":479}', NULL, '2021-07-02 08:05:42', '2021-07-02 08:05:42'),
('5254ce82-4980-4e24-af91-85495134317d', 'App\\Notifications\\WellComeNotification', 'App\\User', 264, '{\"user_id\":264}', NULL, '2021-07-01 07:10:07', '2021-07-01 07:10:07'),
('527de3e0-fe0a-41ca-ad8c-7cb464f5f879', 'App\\Notifications\\WellComeNotification', 'App\\User', 259, '{\"user_id\":259}', NULL, '2021-07-01 04:47:29', '2021-07-01 04:47:29'),
('53bfbf69-d319-4d7d-831f-34d9cda572b0', 'App\\Notifications\\WellComeNotification', 'App\\User', 486, '{\"user_id\":486}', NULL, '2021-07-02 11:59:20', '2021-07-02 11:59:20'),
('557153e4-422a-4800-b247-a0f252da8ece', 'App\\Notifications\\WellComeNotification', 'App\\User', 396, '{\"user_id\":396}', NULL, '2021-07-02 00:31:59', '2021-07-02 00:31:59'),
('55957947-9d6b-4dbb-a394-461a5be87986', 'App\\Notifications\\WellComeNotification', 'App\\User', 186, '{\"user_id\":186}', NULL, '2021-06-30 17:33:15', '2021-06-30 17:33:15'),
('55b421e5-85b0-4611-b59c-7f70d285d1ec', 'App\\Notifications\\WellComeNotification', 'App\\User', 545, '{\"user_id\":545}', NULL, '2021-07-07 18:34:37', '2021-07-07 18:34:37'),
('56731020-c6b0-491e-acd9-b17d1e0026e9', 'App\\Notifications\\WellComeNotification', 'App\\User', 324, '{\"user_id\":324}', NULL, '2021-07-01 22:33:39', '2021-07-01 22:33:39'),
('56b67395-799d-480c-802d-b23585e62ff1', 'App\\Notifications\\WellComeNotification', 'App\\User', 96, '{\"user_id\":96}', NULL, '2021-06-30 00:19:14', '2021-06-30 00:19:14'),
('56d6c599-ae67-41b7-8578-72c696f4cd01', 'App\\Notifications\\WellComeNotification', 'App\\User', 51, '{\"user_id\":51}', NULL, '2021-06-29 19:34:28', '2021-06-29 19:34:28'),
('57db0d7a-9a8d-44d8-8705-6a2903e420aa', 'App\\Notifications\\WellComeNotification', 'App\\User', 577, '{\"user_id\":577}', NULL, '2021-07-09 22:59:25', '2021-07-09 22:59:25'),
('5859c9dc-3ed4-425d-b37d-fb67405558be', 'App\\Notifications\\WellComeNotification', 'App\\User', 44, '{\"user_id\":44}', NULL, '2021-06-29 19:01:55', '2021-06-29 19:01:55'),
('58bfbe85-9657-4c82-b54f-0d3fc678c1c4', 'App\\Notifications\\WellComeNotification', 'App\\User', 243, '{\"user_id\":243}', NULL, '2021-07-01 00:43:38', '2021-07-01 00:43:38'),
('59aee1c5-18bf-4a35-b2ef-d15e91cdb358', 'App\\Notifications\\WellComeNotification', 'App\\User', 162, '{\"user_id\":162}', NULL, '2021-06-30 14:35:05', '2021-06-30 14:35:05'),
('5a1f3cbb-579b-47d2-9236-39cc95738d29', 'App\\Notifications\\WellComeNotification', 'App\\User', 6, '{\"user_id\":6}', NULL, '2021-06-29 15:50:30', '2021-06-29 15:50:30'),
('5a92f2dd-d2a4-4c87-88d8-0bfdd190d1de', 'App\\Notifications\\WellComeNotification', 'App\\User', 82, '{\"user_id\":82}', NULL, '2021-06-29 22:37:49', '2021-06-29 22:37:49'),
('5c8ef5ba-e3c4-4a6a-bd8a-cd7019e2aca8', 'App\\Notifications\\WellComeNotification', 'App\\User', 252, '{\"user_id\":252}', NULL, '2021-07-01 02:08:52', '2021-07-01 02:08:52'),
('5cfcb7e9-0f4e-422f-b09f-1ecba94beb4e', 'App\\Notifications\\WellComeNotification', 'App\\User', 555, '{\"user_id\":555}', NULL, '2021-07-08 08:55:43', '2021-07-08 08:55:43'),
('5d047ec2-0901-47b9-b721-675f172c2484', 'App\\Notifications\\WellComeNotification', 'App\\User', 502, '{\"user_id\":502}', NULL, '2021-07-03 10:15:40', '2021-07-03 10:15:40'),
('5df6ae09-cddd-4388-b445-c17bed310e2e', 'App\\Notifications\\WellComeNotification', 'App\\User', 516, '{\"user_id\":516}', NULL, '2021-07-05 19:51:43', '2021-07-05 19:51:43'),
('5eb32532-9d87-4db5-b99a-57a09e622155', 'App\\Notifications\\WellComeNotification', 'App\\User', 540, '{\"user_id\":540}', NULL, '2021-07-07 11:54:05', '2021-07-07 11:54:05'),
('5f0e40c8-decb-43c1-892b-1407f145fa8d', 'App\\Notifications\\WellComeNotification', 'App\\User', 121, '{\"user_id\":121}', NULL, '2021-06-30 08:11:50', '2021-06-30 08:11:50'),
('5f96e7a3-bdc5-4006-83f7-a0f0f63a0492', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 08:59:52', '2021-06-30 08:59:52'),
('5fd1d59d-6d27-4a01-85a4-98ecc26a340f', 'App\\Notifications\\WellComeNotification', 'App\\User', 563, '{\"user_id\":563}', NULL, '2021-07-08 22:52:19', '2021-07-08 22:52:19'),
('60ac2efb-cba7-4c7f-a797-90ca55335654', 'App\\Notifications\\WellComeNotification', 'App\\User', 538, '{\"user_id\":538}', NULL, '2021-07-07 10:07:10', '2021-07-07 10:07:10'),
('61238faf-5505-4294-be89-5c1e344cda76', 'App\\Notifications\\WellComeNotification', 'App\\User', 193, '{\"user_id\":193}', NULL, '2021-06-30 18:26:39', '2021-06-30 18:26:39'),
('618e0bb0-dfef-4ad6-b5f7-c0b888901c4c', 'App\\Notifications\\WellComeNotification', 'App\\User', 58, '{\"user_id\":58}', NULL, '2021-06-29 20:24:31', '2021-06-29 20:24:31'),
('61e4d36d-c11c-4542-8367-7975ff18cc4e', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 19:43:49', '2021-06-30 19:43:49'),
('62057238-e08e-4577-8a36-6f6a54fe09a4', 'App\\Notifications\\WellComeNotification', 'App\\User', 522, '{\"user_id\":522}', NULL, '2021-07-06 04:47:28', '2021-07-06 04:47:28'),
('62115c66-1209-4cdc-a7d5-26dca089bffe', 'App\\Notifications\\WellComeNotification', 'App\\User', 454, '{\"user_id\":454}', NULL, '2021-07-02 03:16:28', '2021-07-02 03:16:28'),
('6263d8d2-ccfc-49a2-8f73-7e564938b55d', 'App\\Notifications\\WellComeNotification', 'App\\User', 553, '{\"user_id\":553}', NULL, '2021-07-08 04:26:32', '2021-07-08 04:26:32'),
('62cb13c4-e6c3-431b-b765-2d13238ccce8', 'App\\Notifications\\WellComeNotification', 'App\\User', 387, '{\"user_id\":387}', NULL, '2021-07-02 00:25:40', '2021-07-02 00:25:40'),
('62ef939f-576b-4ac6-a08d-d22a25067260', 'App\\Notifications\\WellComeNotification', 'App\\User', 137, '{\"user_id\":137}', NULL, '2021-06-30 11:54:00', '2021-06-30 11:54:00'),
('630ab432-c538-4870-8f32-df4660cf9b68', 'App\\Notifications\\WellComeNotification', 'App\\User', 535, '{\"user_id\":535}', NULL, '2021-07-07 05:02:16', '2021-07-07 05:02:16'),
('63be8b76-5a75-4383-8985-301f89023fe2', 'App\\Notifications\\WellComeNotification', 'App\\User', 64, '{\"user_id\":64}', NULL, '2021-06-29 20:53:03', '2021-06-29 20:53:03'),
('63d3312e-df30-4fa1-8f4f-adf1e92800e7', 'App\\Notifications\\WellComeNotification', 'App\\User', 366, '{\"user_id\":366}', NULL, '2021-07-01 23:43:40', '2021-07-01 23:43:40'),
('650786bb-5011-40b4-92ff-95a414499062', 'App\\Notifications\\WellComeNotification', 'App\\User', 512, '{\"user_id\":512}', NULL, '2021-07-05 18:23:50', '2021-07-05 18:23:50'),
('66911247-3664-4e8b-9b7a-ab34b526557b', 'App\\Notifications\\WellComeNotification', 'App\\User', 9, '{\"user_id\":9}', NULL, '2021-06-29 16:13:18', '2021-06-29 16:13:18'),
('67a442cc-e84c-49ef-bffe-89f1ebada506', 'App\\Notifications\\WellComeNotification', 'App\\User', 222, '{\"user_id\":222}', NULL, '2021-06-30 22:46:15', '2021-06-30 22:46:15'),
('67df3688-6cf0-4d1a-ac38-1838cffe5db8', 'App\\Notifications\\WellComeNotification', 'App\\User', 155, '{\"user_id\":155}', NULL, '2021-06-30 13:50:25', '2021-06-30 13:50:25'),
('680db823-624b-4ef7-97a5-6b2210bc6990', 'App\\Notifications\\WellComeNotification', 'App\\User', 53, '{\"user_id\":53}', NULL, '2021-06-29 19:48:44', '2021-06-29 19:48:44'),
('681913fd-2414-46a9-b803-c2beacd3247b', 'App\\Notifications\\WellComeNotification', 'App\\User', 376, '{\"user_id\":376}', NULL, '2021-07-02 00:11:36', '2021-07-02 00:11:36'),
('683326a5-2520-451a-8f04-56f6d6c05256', 'App\\Notifications\\WellComeNotification', 'App\\User', 62, '{\"user_id\":62}', NULL, '2021-06-29 20:34:33', '2021-06-29 20:34:33'),
('684eb23e-fc6f-4b7b-be96-79ab83cc0664', 'App\\Notifications\\WellComeNotification', 'App\\User', 176, '{\"user_id\":176}', NULL, '2021-06-30 16:13:58', '2021-06-30 16:13:58'),
('68bdeb62-c857-4596-b184-2148d97572d7', 'App\\Notifications\\WellComeNotification', 'App\\User', 338, '{\"user_id\":338}', NULL, '2021-07-01 22:54:36', '2021-07-01 22:54:36'),
('68e74b02-5fa0-47ff-9a7b-8bc234e63268', 'App\\Notifications\\WellComeNotification', 'App\\User', 554, '{\"user_id\":554}', NULL, '2021-07-08 04:51:45', '2021-07-08 04:51:45'),
('6a6938ee-7b92-4fcb-a524-fdab6150de0e', 'App\\Notifications\\WellComeNotification', 'App\\User', 129, '{\"user_id\":129}', NULL, '2021-06-30 10:25:06', '2021-06-30 10:25:06'),
('6c12f7f9-5313-4bda-a8df-bda661e4802d', 'App\\Notifications\\WellComeNotification', 'App\\User', 141, '{\"user_id\":141}', NULL, '2021-06-30 12:24:47', '2021-06-30 12:24:47'),
('6c34c188-82ab-426e-b58b-4e5e91ad3346', 'App\\Notifications\\WellComeNotification', 'App\\User', 415, '{\"user_id\":415}', NULL, '2021-07-02 01:09:11', '2021-07-02 01:09:11'),
('6cd4d815-bcac-4a14-8b9c-2664fb545251', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 00:46:54', '2021-07-02 00:46:54'),
('6d1f9d60-e08b-4cf5-b250-5f812d31afca', 'App\\Notifications\\WellComeNotification', 'App\\User', 459, '{\"user_id\":459}', NULL, '2021-07-02 03:43:21', '2021-07-02 03:43:21'),
('6d91bd62-d36d-4f7b-996f-975a52699704', 'App\\Notifications\\WellComeNotification', 'App\\User', 98, '{\"user_id\":98}', NULL, '2021-06-30 00:35:29', '2021-06-30 00:35:29'),
('6df232eb-0416-4de7-a2ba-d467715ca31b', 'App\\Notifications\\WellComeNotification', 'App\\User', 139, '{\"user_id\":139}', NULL, '2021-06-30 12:13:44', '2021-06-30 12:13:44'),
('6ec1aeee-48e8-4fac-a9fa-d9cf404c08f8', 'App\\Notifications\\WellComeNotification', 'App\\User', 531, '{\"user_id\":531}', NULL, '2021-07-06 23:49:49', '2021-07-06 23:49:49'),
('6f017aaf-1ed5-43fb-8ca2-c4c07eae5203', 'App\\Notifications\\WellComeNotification', 'App\\User', 547, '{\"user_id\":547}', NULL, '2021-07-08 01:24:56', '2021-07-08 01:24:56'),
('6f7774cf-c8a7-4167-81e2-b395745a8971', 'App\\Notifications\\WellComeNotification', 'App\\User', 472, '{\"user_id\":472}', NULL, '2021-07-02 05:29:33', '2021-07-02 05:29:33'),
('701bf50b-c70a-493f-a8e8-ccb66becbc93', 'App\\Notifications\\WellComeNotification', 'App\\User', 403, '{\"user_id\":403}', NULL, '2021-07-02 00:38:40', '2021-07-02 00:38:40'),
('711ac181-54bd-45f5-bdb6-88d1ca0cafc1', 'App\\Notifications\\WellComeNotification', 'App\\User', 175, '{\"user_id\":175}', NULL, '2021-06-30 16:11:55', '2021-06-30 16:11:55'),
('71519464-7c84-41b7-8c52-2e5c691c65ef', 'App\\Notifications\\WellComeNotification', 'App\\User', 372, '{\"user_id\":372}', NULL, '2021-07-02 00:02:02', '2021-07-02 00:02:02'),
('71d9fe9a-c07f-4b60-b83c-cbbd0b87612a', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 01:53:11', '2021-06-30 01:53:11'),
('7208354c-ffc6-4a6e-9251-c2e3958376b2', 'App\\Notifications\\WellComeNotification', 'App\\User', 517, '{\"user_id\":517}', NULL, '2021-07-05 21:25:12', '2021-07-05 21:25:12'),
('72580428-19ce-452f-8f4e-10103e6560e7', 'App\\Notifications\\WellComeNotification', 'App\\User', 355, '{\"user_id\":355}', NULL, '2021-07-01 23:22:13', '2021-07-01 23:22:13'),
('72a0648c-f2a6-48b7-bd75-b231de468848', 'App\\Notifications\\WellComeNotification', 'App\\User', 39, '{\"user_id\":39}', NULL, '2021-06-29 18:50:55', '2021-06-29 18:50:55'),
('72dc342e-ee2b-49d6-ba87-5b6ca43f4aee', 'App\\Notifications\\WellComeNotification', 'App\\User', 275, '{\"user_id\":275}', NULL, '2021-07-01 12:13:39', '2021-07-01 12:13:39'),
('72fde031-39b0-4c29-a44d-1f24b864747f', 'App\\Notifications\\WellComeNotification', 'App\\User', 134, '{\"user_id\":134}', NULL, '2021-06-30 11:33:57', '2021-06-30 11:33:57'),
('7399d4c7-7c55-4c4c-ad50-60f7fa5fd04c', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 20:39:52', '2021-06-29 20:39:52'),
('74c11e18-ad18-4887-b15b-13342bc8cd6d', 'App\\Notifications\\WellComeNotification', 'App\\User', 43, '{\"user_id\":43}', NULL, '2021-06-29 18:54:02', '2021-06-29 18:54:02'),
('751b4b2b-f071-4b68-89a3-a37d98e52288', 'App\\Notifications\\WellComeNotification', 'App\\User', 229, '{\"user_id\":229}', NULL, '2021-06-30 23:16:30', '2021-06-30 23:16:30'),
('75791ab5-adbe-4547-a2cd-ed3263260ccd', 'App\\Notifications\\WellComeNotification', 'App\\User', 564, '{\"user_id\":564}', NULL, '2021-07-08 23:15:10', '2021-07-08 23:15:10'),
('75b424a1-a27e-44d0-9523-3e0f0a66346d', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 21:04:27', '2021-06-29 21:04:27'),
('76524ada-a4ef-4c36-98ab-c4c89adb4a8a', 'App\\Notifications\\WellComeNotification', 'App\\User', 200, '{\"user_id\":200}', NULL, '2021-06-30 20:13:09', '2021-06-30 20:13:09'),
('7781eb24-7961-4494-bc75-c48348b49fc5', 'App\\Notifications\\WellComeNotification', 'App\\User', 125, '{\"user_id\":125}', NULL, '2021-06-30 09:33:20', '2021-06-30 09:33:20'),
('7834aa71-bc88-4b97-b7ad-ab6713ea86fa', 'App\\Notifications\\WellComeNotification', 'App\\User', 184, '{\"user_id\":184}', NULL, '2021-06-30 17:19:45', '2021-06-30 17:19:45'),
('78852b2a-366e-4966-ade0-bb262f56d85b', 'App\\Notifications\\WellComeNotification', 'App\\User', 321, '{\"user_id\":321}', NULL, '2021-07-01 22:32:03', '2021-07-01 22:32:03'),
('788d0ac1-1266-46bc-b0ef-21f0b279ed55', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 00:32:44', '2021-07-02 00:32:44'),
('78c7ea73-a109-441e-8931-e09cf8666d83', 'App\\Notifications\\WellComeNotification', 'App\\User', 607, '{\"user_id\":607}', NULL, '2021-07-12 06:17:27', '2021-07-12 06:17:27'),
('79206c3d-d89d-4c43-ac57-9cebfce04b2f', 'App\\Notifications\\WellComeNotification', 'App\\User', 450, '{\"user_id\":450}', NULL, '2021-07-02 03:03:58', '2021-07-02 03:03:58'),
('79b0751a-c702-45a9-b5e9-2ef2f1d3076a', 'App\\Notifications\\WellComeNotification', 'App\\User', 369, '{\"user_id\":369}', NULL, '2021-07-01 23:51:15', '2021-07-01 23:51:15'),
('79d90cf2-c0b1-4a72-9500-3155b4da48b5', 'App\\Notifications\\WellComeNotification', 'App\\User', 269, '{\"user_id\":269}', NULL, '2021-07-01 09:56:11', '2021-07-01 09:56:11'),
('79f6b42f-c7e5-4cd7-a3dc-c8b6dc6ac390', 'App\\Notifications\\WellComeNotification', 'App\\User', 506, '{\"user_id\":506}', NULL, '2021-07-04 04:53:07', '2021-07-04 04:53:07'),
('7ad659ff-3749-4448-8a6d-4ae74761ccee', 'App\\Notifications\\WellComeNotification', 'App\\User', 605, '{\"user_id\":605}', NULL, '2021-07-12 03:12:48', '2021-07-12 03:12:48'),
('7b3f1bec-4204-4dba-9931-c9605932bb20', 'App\\Notifications\\WellComeNotification', 'App\\User', 61, '{\"user_id\":61}', NULL, '2021-06-29 20:33:20', '2021-06-29 20:33:20'),
('7bd41d15-953e-4d7c-a64d-10a13f906070', 'App\\Notifications\\WellComeNotification', 'App\\User', 408, '{\"user_id\":408}', NULL, '2021-07-02 00:44:04', '2021-07-02 00:44:04'),
('7beae760-c721-4062-8809-857c66452353', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 20:07:31', '2021-06-29 20:07:31'),
('7c85b771-4804-474f-83d5-7961374ec255', 'App\\Notifications\\WellComeNotification', 'App\\User', 234, '{\"user_id\":234}', NULL, '2021-06-30 23:54:19', '2021-06-30 23:54:19'),
('7cb283c3-fce8-4451-8f59-bb08da40e9e5', 'App\\Notifications\\WellComeNotification', 'App\\User', 108, '{\"user_id\":108}', NULL, '2021-06-30 02:05:39', '2021-06-30 02:05:39');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('7d7846a1-dddd-4e3a-8102-e3fa85c9ad44', 'App\\Notifications\\WellComeNotification', 'App\\User', 437, '{\"user_id\":437}', NULL, '2021-07-02 02:12:30', '2021-07-02 02:12:30'),
('7dbe4899-2270-46e4-9690-f4b169d71be9', 'App\\Notifications\\WellComeNotification', 'App\\User', 116, '{\"user_id\":116}', NULL, '2021-06-30 06:17:40', '2021-06-30 06:17:40'),
('7e55d1f7-41a9-44f6-9f04-205139e61820', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 00:01:50', '2021-06-30 00:01:50'),
('7f8ae1f2-31dc-4ae0-8936-1d4948aaabf3', 'App\\Notifications\\WellComeNotification', 'App\\User', 67, '{\"user_id\":67}', NULL, '2021-06-29 21:15:15', '2021-06-29 21:15:15'),
('8057de3c-83be-451a-b1d8-9036e1f037d9', 'App\\Notifications\\WellComeNotification', 'App\\User', 274, '{\"user_id\":274}', NULL, '2021-07-01 12:04:55', '2021-07-01 12:04:55'),
('80e04384-9e99-4f20-aa6c-b44be5530793', 'App\\Notifications\\WellComeNotification', 'App\\User', 536, '{\"user_id\":536}', NULL, '2021-07-07 05:42:32', '2021-07-07 05:42:32'),
('80e441c4-cfca-4347-9aab-7a5873a4e234', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 16:21:28', '2021-07-01 16:21:28'),
('825c32e8-61ad-48d5-926d-3aa9311c5fb0', 'App\\Notifications\\WellComeNotification', 'App\\User', 250, '{\"user_id\":250}', NULL, '2021-07-01 01:59:01', '2021-07-01 01:59:01'),
('82f1a368-1e3e-44a1-aa7e-cce0e3b04945', 'App\\Notifications\\WellComeNotification', 'App\\User', 249, '{\"user_id\":249}', NULL, '2021-07-01 01:45:38', '2021-07-01 01:45:38'),
('83071784-a27a-4d78-87aa-694755e5344c', 'App\\Notifications\\WellComeNotification', 'App\\User', 511, '{\"user_id\":511}', NULL, '2021-07-05 03:21:45', '2021-07-05 03:21:45'),
('851963dc-c71f-4923-8ad1-3beb6eb30db0', 'App\\Notifications\\WellComeNotification', 'App\\User', 123, '{\"user_id\":123}', NULL, '2021-06-30 08:52:47', '2021-06-30 08:52:47'),
('86451657-2398-4ad1-967d-c0e9699d19e0', 'App\\Notifications\\WellComeNotification', 'App\\User', 581, '{\"user_id\":581}', NULL, '2021-07-10 01:47:32', '2021-07-10 01:47:32'),
('86ded93b-679b-4bfd-a6d8-4efb1c4dc58a', 'App\\Notifications\\WellComeNotification', 'App\\User', 299, '{\"user_id\":299}', NULL, '2021-07-01 18:08:45', '2021-07-01 18:08:45'),
('86e573e0-38f0-4ccc-8e25-f2b65e23f7d0', 'App\\Notifications\\WellComeNotification', 'App\\User', 307, '{\"user_id\":307}', NULL, '2021-07-01 19:44:56', '2021-07-01 19:44:56'),
('8778fb66-6675-49dd-b81b-44f954e63428', 'App\\Notifications\\WellComeNotification', 'App\\User', 604, '{\"user_id\":604}', NULL, '2021-07-12 00:47:44', '2021-07-12 00:47:44'),
('87991ac4-e49b-432b-ad5e-2ac2244563bb', 'App\\Notifications\\WellComeNotification', 'App\\User', 165, '{\"user_id\":165}', NULL, '2021-06-30 15:08:19', '2021-06-30 15:08:19'),
('87a6257a-5293-4602-aca2-182015bbb9f1', 'App\\Notifications\\WellComeNotification', 'App\\User', 76, '{\"user_id\":76}', NULL, '2021-06-29 22:13:42', '2021-06-29 22:13:42'),
('87af3009-2077-4a22-97c3-f36b0866046c', 'App\\Notifications\\WellComeNotification', 'App\\User', 26, '{\"user_id\":26}', NULL, '2021-06-29 17:30:48', '2021-06-29 17:30:48'),
('88193f70-789b-454e-9b92-e6465cce1475', 'App\\Notifications\\WellComeNotification', 'App\\User', 598, '{\"user_id\":598}', NULL, '2021-07-11 11:24:02', '2021-07-11 11:24:02'),
('8901f5cb-0df4-4086-a08e-289c2ef7cd15', 'App\\Notifications\\WellComeNotification', 'App\\User', 70, '{\"user_id\":70}', NULL, '2021-06-29 21:48:22', '2021-06-29 21:48:22'),
('898de707-b122-42bb-9c61-0a420787ada9', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 21:39:45', '2021-06-30 21:39:45'),
('8991dbdb-0bf6-4822-b9dc-8429406704f2', 'App\\Notifications\\WellComeNotification', 'App\\User', 107, '{\"user_id\":107}', NULL, '2021-06-30 01:49:12', '2021-06-30 01:49:12'),
('899d6256-3c96-4d01-891f-95dbc1afda2b', 'App\\Notifications\\WellComeNotification', 'App\\User', 397, '{\"user_id\":397}', NULL, '2021-07-02 00:33:46', '2021-07-02 00:33:46'),
('89d2679c-c346-4d33-99f3-1fad04b41748', 'App\\Notifications\\WellComeNotification', 'App\\User', 88, '{\"user_id\":88}', NULL, '2021-06-29 23:32:07', '2021-06-29 23:32:07'),
('8a945ee9-3b1c-4f37-905f-ef335ee24cca', 'App\\Notifications\\WellComeNotification', 'App\\User', 85, '{\"user_id\":85}', NULL, '2021-06-29 22:55:29', '2021-06-29 22:55:29'),
('8aeccc96-dd94-4b42-b3a3-e054bdd3d4c9', 'App\\Notifications\\WellComeNotification', 'App\\User', 504, '{\"user_id\":504}', NULL, '2021-07-03 22:55:54', '2021-07-03 22:55:54'),
('8ba9a2f1-b3e6-4904-81a2-e0e3d862fe99', 'App\\Notifications\\WellComeNotification', 'App\\User', 488, '{\"user_id\":488}', NULL, '2021-07-02 18:23:25', '2021-07-02 18:23:25'),
('8be78012-94b8-4f59-9abc-9c0f9cb9b2c7', 'App\\Notifications\\WellComeNotification', 'App\\User', 110, '{\"user_id\":110}', NULL, '2021-06-30 02:54:15', '2021-06-30 02:54:15'),
('8c96886d-ad47-4eb6-bfb5-7d0741a38e91', 'App\\Notifications\\WellComeNotification', 'App\\User', 140, '{\"user_id\":140}', NULL, '2021-06-30 12:16:58', '2021-06-30 12:16:58'),
('8d074a9f-288d-4e66-94a5-e5f00c9a2f28', 'App\\Notifications\\WellComeNotification', 'App\\User', 565, '{\"user_id\":565}', NULL, '2021-07-08 23:52:03', '2021-07-08 23:52:03'),
('8d112112-c726-485c-849b-16c87703930e', 'App\\Notifications\\WellComeNotification', 'App\\User', 289, '{\"user_id\":289}', NULL, '2021-07-01 15:09:18', '2021-07-01 15:09:18'),
('8d823e04-20d1-4ae1-bc98-19866c21d929', 'App\\Notifications\\WellComeNotification', 'App\\User', 596, '{\"user_id\":596}', NULL, '2021-07-11 01:41:18', '2021-07-11 01:41:18'),
('8d94e4a2-120b-4bd3-a14f-984c6bc52b20', 'App\\Notifications\\WellComeNotification', 'App\\User', 37, '{\"user_id\":37}', NULL, '2021-06-29 18:24:38', '2021-06-29 18:24:38'),
('8def8cfe-db51-41a3-b2a7-a6ece76b89af', 'App\\Notifications\\WellComeNotification', 'App\\User', 375, '{\"user_id\":375}', NULL, '2021-07-02 00:08:30', '2021-07-02 00:08:30'),
('8fbd850d-38fd-48a7-976a-4dfd411ec90b', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 07:40:28', '2021-06-30 07:40:28'),
('8ff68b20-e7b8-4525-b09d-f2fe29f8d879', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 21:07:24', '2021-06-29 21:07:24'),
('9018e846-ebc9-41a6-9023-2b1c977221d7', 'App\\Notifications\\WellComeNotification', 'App\\User', 597, '{\"user_id\":597}', NULL, '2021-07-11 11:08:04', '2021-07-11 11:08:04'),
('90446927-9ead-422b-a542-d8e41a8a4cd2', 'App\\Notifications\\WellComeNotification', 'App\\User', 557, '{\"user_id\":557}', NULL, '2021-07-08 13:19:16', '2021-07-08 13:19:16'),
('90b52a22-7a2d-4545-b7fe-360c2c7fe84a', 'App\\Notifications\\WellComeNotification', 'App\\User', 317, '{\"user_id\":317}', NULL, '2021-07-01 22:14:24', '2021-07-01 22:14:24'),
('90f17f77-df97-466d-b07d-5384843b1e1c', 'App\\Notifications\\WellComeNotification', 'App\\User', 589, '{\"user_id\":589}', NULL, '2021-07-10 14:41:03', '2021-07-10 14:41:03'),
('91452759-ac8a-475f-aed1-b068d00ed941', 'App\\Notifications\\WellComeNotification', 'App\\User', 290, '{\"user_id\":290}', NULL, '2021-07-01 15:31:27', '2021-07-01 15:31:27'),
('91491101-0758-4bdd-96f6-3935c0bf8952', 'App\\Notifications\\WellComeNotification', 'App\\User', 152, '{\"user_id\":152}', NULL, '2021-06-30 13:36:26', '2021-06-30 13:36:26'),
('918fc290-2569-4712-a0e6-d3588fbbbd3f', 'App\\Notifications\\WellComeNotification', 'App\\User', 279, '{\"user_id\":279}', NULL, '2021-07-01 12:43:00', '2021-07-01 12:43:00'),
('91afc373-0fa2-4a28-b005-debb392d9d6b', 'App\\Notifications\\WellComeNotification', 'App\\User', 260, '{\"user_id\":260}', NULL, '2021-07-01 04:57:12', '2021-07-01 04:57:12'),
('926cbbe0-023a-4b4d-b239-78ab0c46d590', 'App\\Notifications\\WellComeNotification', 'App\\User', 497, '{\"user_id\":497}', NULL, '2021-07-03 04:18:42', '2021-07-03 04:18:42'),
('9357b65a-0a5a-4936-b878-56c51166ac36', 'App\\Notifications\\WellComeNotification', 'App\\User', 329, '{\"user_id\":329}', NULL, '2021-07-01 22:39:57', '2021-07-01 22:39:57'),
('93966bd0-409f-45ad-8cfe-7531d285fde7', 'App\\Notifications\\WellComeNotification', 'App\\User', 248, '{\"user_id\":248}', NULL, '2021-07-01 01:29:22', '2021-07-01 01:29:22'),
('93d0743a-7091-4b35-b748-496b2c20cdaa', 'App\\Notifications\\WellComeNotification', 'App\\User', 156, '{\"user_id\":156}', NULL, '2021-06-30 13:54:43', '2021-06-30 13:54:43'),
('9541160a-616d-4ba4-b7ef-06476cdebe47', 'App\\Notifications\\WellComeNotification', 'App\\User', 11, '{\"user_id\":11}', NULL, '2021-06-29 16:17:39', '2021-06-29 16:17:39'),
('95dbd612-ccb8-4e63-b230-88d85bb08ada', 'App\\Notifications\\WellComeNotification', 'App\\User', 567, '{\"user_id\":567}', NULL, '2021-07-09 04:29:43', '2021-07-09 04:29:43'),
('961e5292-13e5-4a2d-9838-4c9edb41044f', 'App\\Notifications\\WellComeNotification', 'App\\User', 185, '{\"user_id\":185}', NULL, '2021-06-30 17:21:40', '2021-06-30 17:21:40'),
('962c0f01-637b-415e-9f12-08cb6c98020e', 'App\\Notifications\\WellComeNotification', 'App\\User', 519, '{\"user_id\":519}', NULL, '2021-07-05 22:56:54', '2021-07-05 22:56:54'),
('973fae61-323c-4f68-9624-046a7bbfb37b', 'App\\Notifications\\WellComeNotification', 'App\\User', 306, '{\"user_id\":306}', NULL, '2021-07-01 19:37:18', '2021-07-01 19:37:18'),
('975aa0ff-34a8-406d-bfe2-edc0ebdb1409', 'App\\Notifications\\WellComeNotification', 'App\\User', 601, '{\"user_id\":601}', NULL, '2021-07-11 14:40:06', '2021-07-11 14:40:06'),
('9826404f-feb6-41b3-a1d6-44ee3fa30224', 'App\\Notifications\\WellComeNotification', 'App\\User', 111, '{\"user_id\":111}', NULL, '2021-06-30 02:59:05', '2021-06-30 02:59:05'),
('9a6b4dad-1a76-4293-9b76-4e6b5f988471', 'App\\Notifications\\WellComeNotification', 'App\\User', 136, '{\"user_id\":136}', NULL, '2021-06-30 11:46:57', '2021-06-30 11:46:57'),
('9acfe5c1-0d00-4993-be67-0963ebeb59f5', 'App\\Notifications\\WellComeNotification', 'App\\User', 468, '{\"user_id\":468}', NULL, '2021-07-02 04:33:26', '2021-07-02 04:33:26'),
('9b2e8bce-1306-456f-9123-01929e629f24', 'App\\Notifications\\WellComeNotification', 'App\\User', 170, '{\"user_id\":170}', NULL, '2021-06-30 15:48:46', '2021-06-30 15:48:46'),
('9b4e48a1-8fb9-4177-b0ff-32ca9d761c18', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-07-01 03:00:58', '2021-07-01 03:00:58'),
('9ba25565-27b6-4ff1-bd46-7524991b5657', 'App\\Notifications\\WellComeNotification', 'App\\User', 505, '{\"user_id\":505}', NULL, '2021-07-04 01:53:32', '2021-07-04 01:53:32'),
('9c076b5f-69ce-4b7d-9025-0dc32d208d8e', 'App\\Notifications\\WellComeNotification', 'App\\User', 73, '{\"user_id\":73}', NULL, '2021-06-29 22:03:03', '2021-06-29 22:03:03'),
('9c62efc2-6947-455d-bba2-2bf2094885ee', 'App\\Notifications\\WellComeNotification', 'App\\User', 239, '{\"user_id\":239}', NULL, '2021-07-01 00:28:17', '2021-07-01 00:28:17'),
('9cde79dc-bd38-4a01-97e3-eea063efe589', 'App\\Notifications\\WellComeNotification', 'App\\User', 75, '{\"user_id\":75}', NULL, '2021-06-29 22:10:49', '2021-06-29 22:10:49'),
('9d275baa-2706-4acb-b9df-b798e7ff3b12', 'App\\Notifications\\WellComeNotification', 'App\\User', 352, '{\"user_id\":352}', NULL, '2021-07-01 23:17:31', '2021-07-01 23:17:31'),
('9d39b134-8b84-4110-80bf-c40a5b0aaf4f', 'App\\Notifications\\WellComeNotification', 'App\\User', 394, '{\"user_id\":394}', NULL, '2021-07-02 00:30:51', '2021-07-02 00:30:51'),
('9e12ecf9-242d-46ba-8250-805f464bf9a4', 'App\\Notifications\\WellComeNotification', 'App\\User', 72, '{\"user_id\":72}', NULL, '2021-06-29 21:58:07', '2021-06-29 21:58:07'),
('9e544530-6071-46f4-9bd7-21688ca0f653', 'App\\Notifications\\WellComeNotification', 'App\\User', 532, '{\"user_id\":532}', NULL, '2021-07-07 00:55:47', '2021-07-07 00:55:47'),
('9ecb7069-1743-4a4c-81fa-409285e55c91', 'App\\Notifications\\WellComeNotification', 'App\\User', 297, '{\"user_id\":297}', NULL, '2021-07-01 23:36:46', '2021-07-01 23:36:46'),
('a03ea7a3-ad3e-4634-83e2-337624255788', 'App\\Notifications\\WellComeNotification', 'App\\User', 258, '{\"user_id\":258}', NULL, '2021-07-01 03:33:28', '2021-07-01 03:33:28'),
('a07d7b5a-1f6d-4b47-b122-378ece25da0d', 'App\\Notifications\\WellComeNotification', 'App\\User', 393, '{\"user_id\":393}', NULL, '2021-07-02 00:30:26', '2021-07-02 00:30:26'),
('a0b427b9-6a15-488d-a7be-9dd559659221', 'App\\Notifications\\WellComeNotification', 'App\\User', 106, '{\"user_id\":106}', NULL, '2021-06-30 01:49:11', '2021-06-30 01:49:11'),
('a18c86fc-0e06-42cb-b618-c8a87e9a70b0', 'App\\Notifications\\WellComeNotification', 'App\\User', 173, '{\"user_id\":173}', NULL, '2021-06-30 15:57:12', '2021-06-30 15:57:12'),
('a1d2048d-392d-42af-9afa-cca0b693e189', 'App\\Notifications\\WellComeNotification', 'App\\User', 284, '{\"user_id\":284}', NULL, '2021-07-01 14:27:39', '2021-07-01 14:27:39'),
('a26727e6-9924-41fa-ac4e-43b3abe83ebb', 'App\\Notifications\\WellComeNotification', 'App\\User', 334, '{\"user_id\":334}', NULL, '2021-07-01 22:47:37', '2021-07-01 22:47:37'),
('a28cab59-d60c-4e88-8fa9-699ef6579900', 'App\\Notifications\\WellComeNotification', 'App\\User', 303, '{\"user_id\":303}', NULL, '2021-07-01 18:50:00', '2021-07-01 18:50:00'),
('a2d2c882-3814-4b4d-a5f9-6ef68b596eff', 'App\\Notifications\\WellComeNotification', 'App\\User', 118, '{\"user_id\":118}', NULL, '2021-06-30 07:32:31', '2021-06-30 07:32:31'),
('a33cb1f1-a8b3-4ffb-9ea7-0f02503ad7aa', 'App\\Notifications\\WellComeNotification', 'App\\User', 18, '{\"user_id\":18}', NULL, '2021-06-29 16:57:26', '2021-06-29 16:57:26'),
('a35064dd-412d-4f45-b974-f6eba2b83c56', 'App\\Notifications\\WellComeNotification', 'App\\User', 282, '{\"user_id\":282}', NULL, '2021-07-01 13:18:41', '2021-07-01 13:18:41'),
('a43e99f6-80c2-4cc4-b415-f1994000fd68', 'App\\Notifications\\WellComeNotification', 'App\\User', 368, '{\"user_id\":368}', NULL, '2021-07-01 23:47:26', '2021-07-01 23:47:26'),
('a46e8ea9-52f4-4096-b9f7-05b95ae01801', 'App\\Notifications\\WellComeNotification', 'App\\User', 366, '{\"user_id\":366}', NULL, '2021-07-01 23:49:42', '2021-07-01 23:49:42'),
('a4e21c3b-ebc9-40ad-9ce3-0354676fd733', 'App\\Notifications\\WellComeNotification', 'App\\User', 305, '{\"user_id\":305}', NULL, '2021-07-01 19:33:08', '2021-07-01 19:33:08'),
('a6d39e05-d69d-42d0-a36b-cea8f8ecd40e', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 01:38:43', '2021-07-02 01:38:43'),
('a73faa74-e865-4834-9b24-fd06d81b05eb', 'App\\Notifications\\WellComeNotification', 'App\\User', 157, '{\"user_id\":157}', NULL, '2021-06-30 13:54:50', '2021-06-30 13:54:50'),
('a7f35250-5972-4238-9653-a93b249c5af3', 'App\\Notifications\\WellComeNotification', 'App\\User', 476, '{\"user_id\":476}', NULL, '2021-07-02 07:31:30', '2021-07-02 07:31:30'),
('a8a5fd4e-ac90-4265-b344-afff9dddf33b', 'App\\Notifications\\WellComeNotification', 'App\\User', 548, '{\"user_id\":548}', NULL, '2021-07-08 01:32:22', '2021-07-08 01:32:22'),
('a8eb6634-3157-468e-9fea-51f16ddacd6f', 'App\\Notifications\\WellComeNotification', 'App\\User', 528, '{\"user_id\":528}', NULL, '2021-07-06 19:13:21', '2021-07-06 19:13:21'),
('a903720f-6554-408d-bb0b-94d0759a453c', 'App\\Notifications\\WellComeNotification', 'App\\User', 377, '{\"user_id\":377}', NULL, '2021-07-02 00:13:25', '2021-07-02 00:13:25'),
('a93a3f92-91ff-4925-8543-ec8804027269', 'App\\Notifications\\WellComeNotification', 'App\\User', 263, '{\"user_id\":263}', NULL, '2021-07-01 06:31:30', '2021-07-01 06:31:30'),
('ab08d9bf-4d28-481c-9c32-1cab3c7dc19d', 'App\\Notifications\\WellComeNotification', 'App\\User', 211, '{\"user_id\":211}', NULL, '2021-06-30 21:40:51', '2021-06-30 21:40:51'),
('ab2626b5-bee8-49f6-8da5-da2cf8d24a28', 'App\\Notifications\\WellComeNotification', 'App\\User', 404, '{\"user_id\":404}', NULL, '2021-07-02 00:39:40', '2021-07-02 00:39:40'),
('abc96cce-e3b7-4782-9ba4-8ad22ddfd76b', 'App\\Notifications\\WellComeNotification', 'App\\User', 57, '{\"user_id\":57}', NULL, '2021-06-29 20:24:20', '2021-06-29 20:24:20'),
('ac41dbc4-1185-4b65-8846-014e8d04c187', 'App\\Notifications\\WellComeNotification', 'App\\User', 330, '{\"user_id\":330}', NULL, '2021-07-01 22:40:04', '2021-07-01 22:40:04'),
('ac7e6e10-c140-420b-812c-bd2516fb9e28', 'App\\Notifications\\WellComeNotification', 'App\\User', 97, '{\"user_id\":97}', NULL, '2021-06-30 00:25:48', '2021-06-30 00:25:48'),
('ac8c9476-3b19-433f-8eb7-263bd9e91ada', 'App\\Notifications\\WellComeNotification', 'App\\User', 332, '{\"user_id\":332}', NULL, '2021-07-01 22:41:29', '2021-07-01 22:41:29'),
('acb592a7-574a-4b3a-bb34-8739f93f96b0', 'App\\Notifications\\WellComeNotification', 'App\\User', 272, '{\"user_id\":272}', NULL, '2021-07-01 11:38:15', '2021-07-01 11:38:15'),
('ad01ad91-4495-4530-99de-baeafe10863f', 'App\\Notifications\\WellComeNotification', 'App\\User', 225, '{\"user_id\":225}', NULL, '2021-06-30 23:00:30', '2021-06-30 23:00:30'),
('ad495218-7d00-4f07-aa92-3ed91ca65dc3', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 00:40:07', '2021-06-30 00:40:07'),
('ad55b22f-c862-4e2e-9ba9-b2998bfb532b', 'App\\Notifications\\WellComeNotification', 'App\\User', 228, '{\"user_id\":228}', NULL, '2021-06-30 23:15:37', '2021-06-30 23:15:37'),
('ad5b582a-eb0f-4538-a31c-3c3318705910', 'App\\Notifications\\WellComeNotification', 'App\\User', 521, '{\"user_id\":521}', NULL, '2021-07-06 03:17:24', '2021-07-06 03:17:24'),
('ad807812-28e5-4b2c-acbb-48070e937e5d', 'App\\Notifications\\WellComeNotification', 'App\\User', 132, '{\"user_id\":132}', NULL, '2021-06-30 10:42:19', '2021-06-30 10:42:19'),
('add673ba-110b-4993-95c5-6c27b83fbfd3', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 16:52:38', '2021-06-29 16:52:38'),
('ae643ca4-ed34-4199-a625-51a059e7e226', 'App\\Notifications\\WellComeNotification', 'App\\User', 482, '{\"user_id\":482}', NULL, '2021-07-02 09:32:02', '2021-07-02 09:32:02'),
('aeda80cd-471f-4240-8b6a-18a31b2431c2', 'App\\Notifications\\WellComeNotification', 'App\\User', 244, '{\"user_id\":244}', NULL, '2021-07-01 00:45:44', '2021-07-01 00:45:44'),
('afb4356c-3b48-4dd6-a727-1d87b605973a', 'App\\Notifications\\WellComeNotification', 'App\\User', 230, '{\"user_id\":230}', NULL, '2021-06-30 23:32:30', '2021-06-30 23:32:30'),
('b01dd56d-7ee3-490b-aca3-04185bf630b7', 'App\\Notifications\\WellComeNotification', 'App\\User', 22, '{\"user_id\":22}', NULL, '2021-06-29 17:19:27', '2021-06-29 17:19:27'),
('b048aece-e9c6-46e8-b0e9-bd028de1842e', 'App\\Notifications\\WellComeNotification', 'App\\User', 370, '{\"user_id\":370}', NULL, '2021-07-01 23:54:26', '2021-07-01 23:54:26'),
('b04e6aeb-a031-4883-89cf-230fc5e40074', 'App\\Notifications\\WellComeNotification', 'App\\User', 179, '{\"user_id\":179}', NULL, '2021-06-30 16:27:36', '2021-06-30 16:27:36'),
('b063a082-4baf-4a19-8961-7e33361e49b1', 'App\\Notifications\\WellComeNotification', 'App\\User', 608, '{\"user_id\":608}', NULL, '2021-07-12 10:33:28', '2021-07-12 10:33:28'),
('b0993f24-8c21-4903-97a9-effe2e50a9ba', 'App\\Notifications\\WellComeNotification', 'App\\User', 201, '{\"user_id\":201}', NULL, '2021-06-30 20:18:14', '2021-06-30 20:18:14'),
('b0deb76e-e7c7-4650-b10a-ee0ba9f08285', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 00:39:23', '2021-07-02 00:39:23'),
('b137fbc7-f2ed-491e-af5b-fce7684c922b', 'App\\Notifications\\WellComeNotification', 'App\\User', 342, '{\"user_id\":342}', NULL, '2021-07-01 23:01:42', '2021-07-01 23:01:42'),
('b1462be4-c0e6-44dc-9c75-9d0d89ad4f52', 'App\\Notifications\\WellComeNotification', 'App\\User', 241, '{\"user_id\":241}', NULL, '2021-07-01 00:29:54', '2021-07-01 00:29:54'),
('b18e5999-6c9e-4e4f-91a2-8a4fc92a541e', 'App\\Notifications\\WellComeNotification', 'App\\User', 3, '{\"user_id\":3}', NULL, '2021-06-29 15:27:37', '2021-06-29 15:27:37'),
('b19181bb-8d94-4f7d-932f-03adf74b7cc8', 'App\\Notifications\\WellComeNotification', 'App\\User', 418, '{\"user_id\":418}', NULL, '2021-07-02 01:14:50', '2021-07-02 01:14:50'),
('b1d60143-9415-4f57-85e3-2cdc381801d5', 'App\\Notifications\\WellComeNotification', 'App\\User', 507, '{\"user_id\":507}', NULL, '2021-07-04 09:36:44', '2021-07-04 09:36:44'),
('b1ebe1f5-2fcb-400e-b540-443aba365598', 'App\\Notifications\\WellComeNotification', 'App\\User', 83, '{\"user_id\":83}', NULL, '2021-06-29 22:38:38', '2021-06-29 22:38:38'),
('b248dd17-46ea-4fe6-8c0f-66686765dfae', 'App\\Notifications\\WellComeNotification', 'App\\User', 378, '{\"user_id\":378}', NULL, '2021-07-02 00:14:08', '2021-07-02 00:14:08'),
('b25c3963-3fc7-465c-a6f8-49f1a6984cb4', 'App\\Notifications\\WellComeNotification', 'App\\User', 414, '{\"user_id\":414}', NULL, '2021-07-02 01:04:10', '2021-07-02 01:04:10'),
('b2bbabb8-6125-4c8e-b728-73aa132aa4b8', 'App\\Notifications\\WellComeNotification', 'App\\User', 503, '{\"user_id\":503}', NULL, '2021-07-03 11:59:27', '2021-07-03 11:59:27'),
('b2c0bf22-709b-49e8-9132-72a67dcb0a83', 'App\\Notifications\\WellComeNotification', 'App\\User', 323, '{\"user_id\":323}', NULL, '2021-07-01 22:33:14', '2021-07-01 22:33:14'),
('b3878892-3052-4632-8df0-57f0bb98a7b6', 'App\\Notifications\\WellComeNotification', 'App\\User', 172, '{\"user_id\":172}', NULL, '2021-06-30 15:55:00', '2021-06-30 15:55:00'),
('b43693e6-75a3-45cd-a080-2624dd4b5ed0', 'App\\Notifications\\WellComeNotification', 'App\\User', 500, '{\"user_id\":500}', NULL, '2021-07-03 08:31:48', '2021-07-03 08:31:48'),
('b4848e60-0b7c-40a1-b052-080bcd08c0ce', 'App\\Notifications\\WellComeNotification', 'App\\User', 380, '{\"user_id\":380}', NULL, '2021-07-02 00:18:41', '2021-07-02 00:18:41'),
('b5399af4-092f-40c6-a1bb-199a7e5015b4', 'App\\Notifications\\WellComeNotification', 'App\\User', 407, '{\"user_id\":407}', NULL, '2021-07-02 00:41:57', '2021-07-02 00:41:57'),
('b61aaf29-4d8d-4d3b-914a-9cf6d65c70b7', 'App\\Notifications\\WellComeNotification', 'App\\User', 336, '{\"user_id\":336}', NULL, '2021-07-01 22:52:23', '2021-07-01 22:52:23'),
('b6461c52-83c2-47e3-9517-2a3b78e27cd5', 'App\\Notifications\\WellComeNotification', 'App\\User', 374, '{\"user_id\":374}', NULL, '2021-07-02 00:05:29', '2021-07-02 00:05:29'),
('b647a253-d03e-46a4-8d2c-d92b89f2a9c5', 'App\\Notifications\\WellComeNotification', 'App\\User', 603, '{\"user_id\":603}', NULL, '2021-07-11 22:08:14', '2021-07-11 22:08:14'),
('b6656060-651a-43a6-b5f3-f37703febd1a', 'App\\Notifications\\WellComeNotification', 'App\\User', 401, '{\"user_id\":401}', NULL, '2021-07-02 00:36:21', '2021-07-02 00:36:21'),
('b6f18019-5d54-4e35-9fd4-3a800e33fa04', 'App\\Notifications\\WellComeNotification', 'App\\User', 214, '{\"user_id\":214}', NULL, '2021-06-30 21:48:53', '2021-06-30 21:48:53'),
('b765823f-f300-4bc3-87f6-1ae28b642201', 'App\\Notifications\\WellComeNotification', 'App\\User', 357, '{\"user_id\":357}', NULL, '2021-07-01 23:31:04', '2021-07-01 23:31:04'),
('b7e71651-9eed-4f04-94ed-69e121673714', 'App\\Notifications\\WellComeNotification', 'App\\User', 149, '{\"user_id\":149}', NULL, '2021-06-30 13:17:22', '2021-06-30 13:17:22'),
('b8999a03-2f50-4c93-9c7b-597cb9b7bcb0', 'App\\Notifications\\WellComeNotification', 'App\\User', 208, '{\"user_id\":208}', NULL, '2021-06-30 20:57:19', '2021-06-30 20:57:19'),
('b89ee862-b34f-4eac-af32-0a82b0da223d', 'App\\Notifications\\WellComeNotification', 'App\\User', 15, '{\"user_id\":15}', NULL, '2021-06-29 16:31:24', '2021-06-29 16:31:24'),
('b8e5e790-60df-4ca2-9281-fa06e701d4ab', 'App\\Notifications\\WellComeNotification', 'App\\User', 361, '{\"user_id\":361}', NULL, '2021-07-01 23:34:54', '2021-07-01 23:34:54'),
('b907064e-d085-4075-91d8-6e6c3f1a1ca8', 'App\\Notifications\\WellComeNotification', 'App\\User', 358, '{\"user_id\":358}', NULL, '2021-07-01 23:31:52', '2021-07-01 23:31:52'),
('b91f3f91-75fd-4c07-87c5-30f7feb98e7c', 'App\\Notifications\\WellComeNotification', 'App\\User', 195, '{\"user_id\":195}', NULL, '2021-06-30 18:48:41', '2021-06-30 18:48:41'),
('b94f5942-e5c8-4803-b09f-3c8c09a2fcd7', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 00:34:36', '2021-07-02 00:34:36'),
('ba75666f-a499-4de4-b56c-33af17aadef4', 'App\\Notifications\\WellComeNotification', 'App\\User', 344, '{\"user_id\":344}', NULL, '2021-07-01 23:04:50', '2021-07-01 23:04:50'),
('bb4703f1-bec6-44d2-8e01-a15628742a37', 'App\\Notifications\\WellComeNotification', 'App\\User', 79, '{\"user_id\":79}', NULL, '2021-06-29 22:28:17', '2021-06-29 22:28:17'),
('bbd31248-8ade-483d-929a-b84ff6f78540', 'App\\Notifications\\WellComeNotification', 'App\\User', 212, '{\"user_id\":212}', NULL, '2021-06-30 21:42:03', '2021-06-30 21:42:03'),
('bc2a6aba-98e7-440c-b1e2-0b5829b3ca16', 'App\\Notifications\\WellComeNotification', 'App\\User', 551, '{\"user_id\":551}', NULL, '2021-07-08 02:47:50', '2021-07-08 02:47:50'),
('bcece774-0a58-49e1-98ef-bcd5f68b44e4', 'App\\Notifications\\WellComeNotification', 'App\\User', 113, '{\"user_id\":113}', NULL, '2021-06-30 03:06:40', '2021-06-30 03:06:40'),
('bd30fda5-8ba2-4c8e-9fbe-8212b093bc95', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 00:36:26', '2021-07-02 00:36:26'),
('bd33b10f-ceca-459d-8f1e-48505fd694e5', 'App\\Notifications\\WellComeNotification', 'App\\User', 366, '{\"user_id\":366}', NULL, '2021-07-01 23:49:56', '2021-07-01 23:49:56'),
('bd96205f-ff66-4634-9916-a4de0239c122', 'App\\Notifications\\WellComeNotification', 'App\\User', 226, '{\"user_id\":226}', NULL, '2021-06-30 23:06:00', '2021-06-30 23:06:00'),
('bdd04fff-acc5-4fa5-97e6-22e16647bd40', 'App\\Notifications\\WellComeNotification', 'App\\User', 440, '{\"user_id\":440}', NULL, '2021-07-02 02:17:04', '2021-07-02 02:17:04'),
('c0ed32bd-970b-4227-a642-06119db3fe2b', 'App\\Notifications\\WellComeNotification', 'App\\User', 240, '{\"user_id\":240}', NULL, '2021-07-01 00:29:22', '2021-07-01 00:29:22'),
('c1ec0fe8-12bd-4b06-a0b0-28cc7f154a84', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 22:55:17', '2021-06-30 22:55:17'),
('c228370d-9246-4687-9783-769a8eb6fa46', 'App\\Notifications\\WellComeNotification', 'App\\User', 104, '{\"user_id\":104}', NULL, '2021-06-30 01:38:29', '2021-06-30 01:38:29'),
('c2308ef1-56c3-411a-843e-a8b2817927cb', 'App\\Notifications\\WellComeNotification', 'App\\User', 63, '{\"user_id\":63}', NULL, '2021-06-29 20:52:35', '2021-06-29 20:52:35'),
('c4038c6b-259b-49cc-a393-f76d2783ecac', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 23:55:34', '2021-06-29 23:55:34'),
('c443be9e-6b25-4e42-b16b-61344aec4888', 'App\\Notifications\\WellComeNotification', 'App\\User', 84, '{\"user_id\":84}', NULL, '2021-06-29 22:41:20', '2021-06-29 22:41:20'),
('c50db9b0-5ef0-45c5-8b7f-ceedb97d6bf3', 'App\\Notifications\\WellComeNotification', 'App\\User', 278, '{\"user_id\":278}', NULL, '2021-07-01 12:19:17', '2021-07-01 12:19:17'),
('c5347de1-ff86-4668-befa-141693069853', 'App\\Notifications\\WellComeNotification', 'App\\User', 197, '{\"user_id\":197}', NULL, '2021-06-30 19:00:43', '2021-06-30 19:00:43'),
('c641dc15-ffed-47de-bda3-acf735bf302d', 'App\\Notifications\\WellComeNotification', 'App\\User', 347, '{\"user_id\":347}', NULL, '2021-07-01 23:08:47', '2021-07-01 23:08:47'),
('c6996dc8-0f78-4c29-bfbe-c828451774ec', 'App\\Notifications\\WellComeNotification', 'App\\User', 78, '{\"user_id\":78}', NULL, '2021-06-29 22:25:42', '2021-06-29 22:25:42'),
('c6c74509-d492-4a79-b526-fbe8b44d4621', 'App\\Notifications\\WellComeNotification', 'App\\User', 46, '{\"user_id\":46}', NULL, '2021-06-29 19:07:28', '2021-06-29 19:07:28'),
('c7574db1-2845-4046-a5fe-1ed35c0aff1f', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 22:50:15', '2021-06-29 22:50:15'),
('c866b967-2f2a-4121-b885-742a8c5d4d19', 'App\\Notifications\\WellComeNotification', 'App\\User', 417, '{\"user_id\":417}', NULL, '2021-07-02 01:11:55', '2021-07-02 01:11:55'),
('c92833ec-9523-4785-9827-9c8dd913fa8c', 'App\\Notifications\\WellComeNotification', 'App\\User', 287, '{\"user_id\":287}', NULL, '2021-07-01 14:49:16', '2021-07-01 14:49:16'),
('c970b454-4a58-49c3-b9c9-5bbf25bb6690', 'App\\Notifications\\WellComeNotification', 'App\\User', 52, '{\"user_id\":52}', NULL, '2021-06-29 19:38:42', '2021-06-29 19:38:42'),
('c97b2d5c-8960-496e-a613-76c4ea25e6b1', 'App\\Notifications\\WellComeNotification', 'App\\User', 181, '{\"user_id\":181}', NULL, '2021-06-30 16:50:04', '2021-06-30 16:50:04'),
('c99978db-6f33-4fb1-a189-0fa349447b5c', 'App\\Notifications\\WellComeNotification', 'App\\User', 247, '{\"user_id\":247}', NULL, '2021-07-01 01:15:26', '2021-07-01 01:15:26'),
('c9deb49a-e5e9-4860-8fbf-bdc292949e3c', 'App\\Notifications\\WellComeNotification', 'App\\User', 473, '{\"user_id\":473}', NULL, '2021-07-02 05:53:58', '2021-07-02 05:53:58'),
('ca3f6103-8d41-4604-9b0a-ca99f3851bdc', 'App\\Notifications\\WellComeNotification', 'App\\User', 146, '{\"user_id\":146}', NULL, '2021-06-30 13:07:20', '2021-06-30 13:07:20'),
('ca50ae89-9fcb-4e2b-8eba-41e1fd9433e8', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 22:34:14', '2021-06-29 22:34:14'),
('ca5bf538-e9a1-4965-becc-d0ba37c8aa3d', 'App\\Notifications\\WellComeNotification', 'App\\User', 493, '{\"user_id\":493}', NULL, '2021-07-02 23:06:57', '2021-07-02 23:06:57'),
('ca73ea7c-9f93-4115-9095-e9e669699d9d', 'App\\Notifications\\WellComeNotification', 'App\\User', 251, '{\"user_id\":251}', NULL, '2021-07-01 01:59:54', '2021-07-01 01:59:54'),
('cb39081b-aec9-430a-a26b-dcc36ec28f4f', 'App\\Notifications\\WellComeNotification', 'App\\User', 513, '{\"user_id\":513}', NULL, '2021-07-05 18:44:40', '2021-07-05 18:44:40'),
('cce6df21-909b-4267-bedf-41df7aed516b', 'App\\Notifications\\WellComeNotification', 'App\\User', 399, '{\"user_id\":399}', NULL, '2021-07-02 00:34:53', '2021-07-02 00:34:53'),
('ce656307-8c20-44ee-914a-b18e4707c593', 'App\\Notifications\\WellComeNotification', 'App\\User', 41, '{\"user_id\":41}', NULL, '2021-06-29 18:51:50', '2021-06-29 18:51:50'),
('cecb09fd-cde9-46d0-ab76-b7b18bc859d5', 'App\\Notifications\\WellComeNotification', 'App\\User', 582, '{\"user_id\":582}', NULL, '2021-07-10 05:20:02', '2021-07-10 05:20:02'),
('cf5c8a70-3e67-49a5-8185-cb48da5a217d', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 17:27:18', '2021-07-01 17:27:18'),
('cf7bb043-236f-41f5-a135-30467224ada8', 'App\\Notifications\\WellComeNotification', 'App\\User', 494, '{\"user_id\":494}', NULL, '2021-07-03 00:41:22', '2021-07-03 00:41:22'),
('d0852f27-ecdd-4740-a3d8-1727c31a20ee', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 20:36:47', '2021-07-01 20:36:47'),
('d11cdca8-39c3-4b1a-85c9-e775b0d6fec6', 'App\\Notifications\\WellComeNotification', 'App\\User', 410, '{\"user_id\":410}', NULL, '2021-07-02 00:53:02', '2021-07-02 00:53:02'),
('d149b23f-6c96-45ac-b510-f8e2643a784e', 'App\\Notifications\\WellComeNotification', 'App\\User', 509, '{\"user_id\":509}', NULL, '2021-07-05 00:18:15', '2021-07-05 00:18:15'),
('d167f44c-a4fa-44b0-bbbb-993659632898', 'App\\Notifications\\WellComeNotification', 'App\\User', 147, '{\"user_id\":147}', NULL, '2021-06-30 13:09:43', '2021-06-30 13:09:43'),
('d2c393f7-6f57-4c64-960c-90513cebc361', 'App\\Notifications\\WellComeNotification', 'App\\User', 529, '{\"user_id\":529}', NULL, '2021-07-06 20:19:38', '2021-07-06 20:19:38'),
('d2f10c05-e7c0-4259-bd06-51b2112dfb80', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 13:06:41', '2021-07-01 13:06:41'),
('d36c2195-9781-4013-924c-c7dacdde6ab2', 'App\\Notifications\\WellComeNotification', 'App\\User', 169, '{\"user_id\":169}', NULL, '2021-06-30 15:48:36', '2021-06-30 15:48:36'),
('d4a77b6a-d6c3-4540-806b-e03fc8dc8743', 'App\\Notifications\\WellComeNotification', 'App\\User', 257, '{\"user_id\":257}', NULL, '2021-07-01 03:23:53', '2021-07-01 03:23:53'),
('d4eab639-5725-45a5-8483-6b361e228f69', 'App\\Notifications\\WellComeNotification', 'App\\User', 544, '{\"user_id\":544}', NULL, '2021-07-07 18:18:04', '2021-07-07 18:18:04'),
('d519812c-3413-431e-8b21-e77986f4d868', 'App\\Notifications\\WellComeNotification', 'App\\User', 537, '{\"user_id\":537}', NULL, '2021-07-07 06:49:03', '2021-07-07 06:49:03'),
('d5868023-d425-445f-870e-903913720e21', 'App\\Notifications\\WellComeNotification', 'App\\User', 42, '{\"user_id\":42}', NULL, '2021-06-29 18:52:17', '2021-06-29 18:52:17'),
('d59e1b24-efc4-4898-b2bf-89ca06b17058', 'App\\Notifications\\WellComeNotification', 'App\\User', 392, '{\"user_id\":392}', NULL, '2021-07-02 00:28:55', '2021-07-02 00:28:55'),
('d5e7d233-97ae-4e9e-9ed6-7db7654f754d', 'App\\Notifications\\WellComeNotification', 'App\\User', 295, '{\"user_id\":295}', NULL, '2021-07-01 16:43:32', '2021-07-01 16:43:32'),
('d5f5dae1-f33f-42b1-a0fd-56fa9e7d81c0', 'App\\Notifications\\WellComeNotification', 'App\\User', 13, '{\"user_id\":13}', NULL, '2021-06-29 16:23:44', '2021-06-29 16:23:44'),
('d5f5e5a6-25a4-440c-8c15-0c577ceb9055', 'App\\Notifications\\WellComeNotification', 'App\\User', 427, '{\"user_id\":427}', NULL, '2021-07-02 01:45:01', '2021-07-02 01:45:01'),
('d63fbbe8-8acb-426f-98b1-e37bd13ebdcf', 'App\\Notifications\\WellComeNotification', 'App\\User', 160, '{\"user_id\":160}', NULL, '2021-06-30 14:23:08', '2021-06-30 14:23:08'),
('d643a1ab-dffc-45eb-9a62-6e59f419a746', 'App\\Notifications\\WellComeNotification', 'App\\User', 446, '{\"user_id\":446}', NULL, '2021-07-02 02:37:33', '2021-07-02 02:37:33'),
('d6523c47-b4d9-4090-a73c-20f1744f8eef', 'App\\Notifications\\WellComeNotification', 'App\\User', 351, '{\"user_id\":351}', NULL, '2021-07-01 23:16:05', '2021-07-01 23:16:05'),
('d6b83a57-6420-4159-b0c2-ec9d62d7b88b', 'App\\Notifications\\WellComeNotification', 'App\\User', 580, '{\"user_id\":580}', NULL, '2021-07-10 00:07:49', '2021-07-10 00:07:49'),
('d6e35bde-cbf9-43b7-b2a1-2c71a0843ee3', 'App\\Notifications\\WellComeNotification', 'App\\User', 145, '{\"user_id\":145}', NULL, '2021-06-30 12:56:46', '2021-06-30 12:56:46'),
('d7fccc90-a580-4bb0-8b9d-9fab83cefb65', 'App\\Notifications\\WellComeNotification', 'App\\User', 430, '{\"user_id\":430}', NULL, '2021-07-02 01:46:23', '2021-07-02 01:46:23'),
('d9e03444-4d13-43bd-b0d3-f936e64c3c5c', 'App\\Notifications\\WellComeNotification', 'App\\User', 245, '{\"user_id\":245}', NULL, '2021-07-01 00:46:40', '2021-07-01 00:46:40'),
('d9f907b3-a3e3-4f5e-b983-c0bc0fae515e', 'App\\Notifications\\WellComeNotification', 'App\\User', 492, '{\"user_id\":492}', NULL, '2021-07-02 22:51:09', '2021-07-02 22:51:09'),
('da3b94ac-da54-4fb8-84e7-81d13952307b', 'App\\Notifications\\WellComeNotification', 'App\\User', 599, '{\"user_id\":599}', NULL, '2021-07-11 12:38:03', '2021-07-11 12:38:03'),
('dab2df81-8524-41ad-a45d-34cc433bb34e', 'App\\Notifications\\WellComeNotification', 'App\\User', 384, '{\"user_id\":384}', NULL, '2021-07-02 00:22:25', '2021-07-02 00:22:25'),
('dad464e4-ca0f-4274-96e5-cb78678d4979', 'App\\Notifications\\WellComeNotification', 'App\\User', 411, '{\"user_id\":411}', NULL, '2021-07-02 00:53:52', '2021-07-02 00:53:52'),
('db3150bd-a8b3-44b6-a4cd-c75900bf7787', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 12:12:40', '2021-07-01 12:12:40'),
('db484c28-0304-4da3-93ae-0257e91a7621', 'App\\Notifications\\WellComeNotification', 'App\\User', 433, '{\"user_id\":433}', NULL, '2021-07-02 01:55:29', '2021-07-02 01:55:29'),
('db68a515-8047-400f-9913-1ce5aa55a145', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 02:17:02', '2021-06-30 02:17:02'),
('dc1cc2f7-3c8b-42f4-883f-bda1729b2b86', 'App\\Notifications\\WellComeNotification', 'App\\User', 270, '{\"user_id\":270}', NULL, '2021-07-01 10:54:09', '2021-07-01 10:54:09'),
('dc3d1a3d-3400-4271-855f-fe254ca3cb49', 'App\\Notifications\\WellComeNotification', 'App\\User', 335, '{\"user_id\":335}', NULL, '2021-07-01 22:48:58', '2021-07-01 22:48:58'),
('dc78aa43-d312-435e-88e7-fdbc920aab77', 'App\\Notifications\\WellComeNotification', 'App\\User', 432, '{\"user_id\":432}', NULL, '2021-07-02 01:49:41', '2021-07-02 01:49:41'),
('dcb7f5ad-15b7-422b-848a-ca2bf1ac3421', 'App\\Notifications\\WellComeNotification', 'App\\User', 523, '{\"user_id\":523}', NULL, '2021-07-06 06:51:18', '2021-07-06 06:51:18'),
('dd3a4d59-3630-42e8-9dac-016e5a96a626', 'App\\Notifications\\WellComeNotification', 'App\\User', 311, '{\"user_id\":311}', NULL, '2021-07-01 20:56:17', '2021-07-01 20:56:17'),
('ddedf376-c43a-4532-83e4-d7b446ab8817', 'App\\Notifications\\WellComeNotification', 'App\\User', 218, '{\"user_id\":218}', NULL, '2021-06-30 22:30:57', '2021-06-30 22:30:57'),
('de8a2fa9-1211-4747-a3ed-5373aa666120', 'App\\Notifications\\WellComeNotification', 'App\\User', 143, '{\"user_id\":143}', NULL, '2021-06-30 12:33:35', '2021-06-30 12:33:35'),
('df2fd584-5687-41f9-873f-20d2bfca55f4', 'App\\Notifications\\WellComeNotification', 'App\\User', 114, '{\"user_id\":114}', NULL, '2021-06-30 03:36:08', '2021-06-30 03:36:08'),
('e0217162-d352-4143-ab32-e344c31f5bd9', 'App\\Notifications\\WellComeNotification', 'App\\User', 359, '{\"user_id\":359}', NULL, '2021-07-01 23:33:25', '2021-07-01 23:33:25'),
('e05a8ca6-090a-440c-aa04-991c08da27ea', 'App\\Notifications\\WellComeNotification', 'App\\User', 568, '{\"user_id\":568}', NULL, '2021-07-09 04:46:42', '2021-07-09 04:46:42'),
('e0fd01ca-ff93-4bc5-8fce-02a768d9d5fd', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 01:53:27', '2021-06-30 01:53:27'),
('e129c907-61df-4037-beff-e2944a62f10b', 'App\\Notifications\\WellComeNotification', 'App\\User', 600, '{\"user_id\":600}', NULL, '2021-07-11 14:00:34', '2021-07-11 14:00:34'),
('e17df167-2f1a-437a-a792-a486823f31cd', 'App\\Notifications\\WellComeNotification', 'App\\User', 221, '{\"user_id\":221}', NULL, '2021-06-30 22:46:06', '2021-06-30 22:46:06'),
('e1919760-b625-4a67-9da7-bcfd76251ec3', 'App\\Notifications\\WellComeNotification', 'App\\User', 383, '{\"user_id\":383}', NULL, '2021-07-02 00:21:17', '2021-07-02 00:21:17'),
('e2a87ab6-2a42-45cd-a1cb-0fc3ab98ca7d', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-30 10:51:29', '2021-06-30 10:51:29'),
('e2d595be-5920-49f2-a401-86db2e846b31', 'App\\Notifications\\WellComeNotification', 'App\\User', 515, '{\"user_id\":515}', NULL, '2021-07-05 19:01:50', '2021-07-05 19:01:50'),
('e340c782-77a3-421f-8e6f-95d07efc07e5', 'App\\Notifications\\WellComeNotification', 'App\\User', 191, '{\"user_id\":191}', NULL, '2021-06-30 18:07:11', '2021-06-30 18:07:11'),
('e37f855b-b223-4d99-8b69-0fce022ca790', 'App\\Notifications\\WellComeNotification', 'App\\User', 254, '{\"user_id\":254}', NULL, '2021-07-01 02:48:23', '2021-07-01 02:48:23'),
('e3ca8945-5d78-451b-a946-991026204f5f', 'App\\Notifications\\WellComeNotification', 'App\\User', 560, '{\"user_id\":560}', NULL, '2021-07-08 16:23:38', '2021-07-08 16:23:38'),
('e46fc798-834c-4629-8d20-802fb1dffe4c', 'App\\Notifications\\WellComeNotification', 'App\\User', 16, '{\"user_id\":16}', NULL, '2021-06-29 16:41:33', '2021-06-29 16:41:33'),
('e473e911-c5ec-46f1-89f5-c80e9ad3bfc3', 'App\\Notifications\\WellComeNotification', 'App\\User', 232, '{\"user_id\":232}', NULL, '2021-06-30 23:39:44', '2021-06-30 23:39:44'),
('e51cff02-fcc4-433d-a789-dc589a1479d1', 'App\\Notifications\\WellComeNotification', 'App\\User', 314, '{\"user_id\":314}', NULL, '2021-07-01 21:38:54', '2021-07-01 21:38:54'),
('e5bc6ff3-e54a-4347-8f10-cd17c56912d9', 'App\\Notifications\\WellComeNotification', 'App\\User', 420, '{\"user_id\":420}', NULL, '2021-07-02 01:27:11', '2021-07-02 01:27:11'),
('e62cd809-ac8c-403c-9cc9-5809a1ba7f1c', 'App\\Notifications\\WellComeNotification', 'App\\User', 4, '{\"user_id\":4}', NULL, '2021-06-29 15:30:31', '2021-06-29 15:30:31'),
('e643f38d-d3f2-4c96-b696-33ccf8c9c982', 'App\\Notifications\\WellComeNotification', 'App\\User', 117, '{\"user_id\":117}', NULL, '2021-06-30 07:20:34', '2021-06-30 07:20:34'),
('e76bd59b-99f3-4753-8b34-7f1199cbc565', 'App\\Notifications\\WellComeNotification', 'App\\User', 434, '{\"user_id\":434}', NULL, '2021-07-02 01:59:58', '2021-07-02 01:59:58'),
('e785a8a2-6490-4172-95e1-30594a03c5de', 'App\\Notifications\\WellComeNotification', 'App\\User', 452, '{\"user_id\":452}', NULL, '2021-07-02 03:08:47', '2021-07-02 03:08:47'),
('e7e0f593-269d-4732-a637-31ab91de410a', 'App\\Notifications\\WellComeNotification', 'App\\User', 112, '{\"user_id\":112}', NULL, '2021-06-30 03:02:43', '2021-06-30 03:02:43'),
('e831edb9-044b-4b5c-83d8-449b910968c6', 'App\\Notifications\\WellComeNotification', 'App\\User', 266, '{\"user_id\":266}', NULL, '2021-07-01 08:48:25', '2021-07-01 08:48:25'),
('e84eed56-e6da-4752-b10b-feac03acc22d', 'App\\Notifications\\WellComeNotification', 'App\\User', 542, '{\"user_id\":542}', NULL, '2021-07-07 14:42:03', '2021-07-07 14:42:03'),
('e865a8f6-5190-401d-8f40-b24eba08b89d', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 01:51:37', '2021-07-02 01:51:37'),
('e8826f26-f9ac-4c8d-b17c-45e70b55f872', 'App\\Notifications\\WellComeNotification', 'App\\User', 435, '{\"user_id\":435}', NULL, '2021-07-02 02:01:24', '2021-07-02 02:01:24'),
('e8a3f3da-7327-4a59-9a60-d2fc0dca05cf', 'App\\Notifications\\WellComeNotification', 'App\\User', 362, '{\"user_id\":362}', NULL, '2021-07-01 23:36:56', '2021-07-01 23:36:56'),
('e8f57634-a8a7-46ff-b48f-398476b10640', 'App\\Notifications\\WellComeNotification', 'App\\User', 442, '{\"user_id\":442}', NULL, '2021-07-02 02:18:31', '2021-07-02 02:18:31'),
('e92cabee-2e5b-42bd-9200-d1b91259aab1', 'App\\Notifications\\WellComeNotification', 'App\\User', 546, '{\"user_id\":546}', NULL, '2021-07-07 23:06:18', '2021-07-07 23:06:18'),
('e95475ea-9072-44ba-acd0-c0fd56032e7e', 'App\\Notifications\\WellComeNotification', 'App\\User', 235, '{\"user_id\":235}', NULL, '2021-06-30 23:55:40', '2021-06-30 23:55:40'),
('e95b7aba-ea01-4ca4-a23a-c1a1df7dd90b', 'App\\Notifications\\WellComeNotification', 'App\\User', 192, '{\"user_id\":192}', NULL, '2021-06-30 18:18:28', '2021-06-30 18:18:28'),
('e9622f28-8b9d-451e-b741-c8f529201eb0', 'App\\Notifications\\WellComeNotification', 'App\\User', 261, '{\"user_id\":261}', NULL, '2021-07-01 05:12:50', '2021-07-01 05:12:50'),
('e9c16ade-88bf-4fec-8dad-a5de208bd993', 'App\\Notifications\\WellComeNotification', 'App\\User', 606, '{\"user_id\":606}', NULL, '2021-07-12 06:03:57', '2021-07-12 06:03:57'),
('ea193374-70b3-4c3a-b3a2-e78b3c99ebca', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 22:00:45', '2021-07-01 22:00:45'),
('ea341029-c3ac-44c2-b93c-6fd16cceb6c3', 'App\\Notifications\\WellComeNotification', 'App\\User', 590, '{\"user_id\":590}', NULL, '2021-07-10 15:49:28', '2021-07-10 15:49:28'),
('eaa279ad-cd11-4c6a-a7d2-9edc44ebfa10', 'App\\Notifications\\WellComeNotification', 'App\\User', 151, '{\"user_id\":151}', NULL, '2021-06-30 13:32:12', '2021-06-30 13:32:12'),
('eaea6239-08c8-4891-8e2e-9b074559c911', 'App\\Notifications\\WellComeNotification', 'App\\User', 594, '{\"user_id\":594}', NULL, '2021-07-10 21:59:28', '2021-07-10 21:59:28'),
('eb66c101-c30e-4849-bd7a-ff209e5644ad', 'App\\Notifications\\WellComeNotification', 'App\\User', 499, '{\"user_id\":499}', NULL, '2021-07-03 06:50:31', '2021-07-03 06:50:31'),
('eb8c597c-756d-46e9-ae97-76b971d16e7d', 'App\\Notifications\\WellComeNotification', 'App\\User', 268, '{\"user_id\":268}', NULL, '2021-07-01 09:50:17', '2021-07-01 09:50:17'),
('ec2c99cd-8fd2-4238-acde-2a792c8d38ed', 'App\\Notifications\\WellComeNotification', 'App\\User', 381, '{\"user_id\":381}', NULL, '2021-07-02 00:18:51', '2021-07-02 00:18:51'),
('ee6a37e1-7c4b-441a-a800-c6b87d548ed8', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 23:56:19', '2021-06-29 23:56:19'),
('ee8bf66f-9e10-42e8-8c18-ee69cf3dc96c', 'App\\Notifications\\WellComeNotification', 'App\\User', 55, '{\"user_id\":55}', NULL, '2021-06-29 19:54:14', '2021-06-29 19:54:14'),
('ef6444ed-9baf-4efe-9e1c-9c76623ce3ce', 'App\\Notifications\\WellComeNotification', 'App\\User', 308, '{\"user_id\":308}', NULL, '2021-07-01 20:03:11', '2021-07-01 20:03:11'),
('ef90afe0-d8f4-4abb-9eb0-caaca02d3bac', 'App\\Notifications\\WellComeNotification', 'App\\User', 469, '{\"user_id\":469}', NULL, '2021-07-02 05:01:24', '2021-07-02 05:01:24'),
('efc23c17-33ac-4070-8caf-22a4c5b76480', 'App\\Notifications\\WellComeNotification', 'App\\User', 291, '{\"user_id\":291}', NULL, '2021-07-01 16:14:31', '2021-07-01 16:14:31'),
('f024c592-4968-4af3-ae01-f0a21c300610', 'App\\Notifications\\WellComeNotification', 'App\\User', 400, '{\"user_id\":400}', NULL, '2021-07-02 00:35:18', '2021-07-02 00:35:18'),
('f04e75d0-c1e6-4fd2-8f3c-94cc0bd93a0f', 'App\\Notifications\\WellComeNotification', 'App\\User', 367, '{\"user_id\":367}', NULL, '2021-07-01 23:43:57', '2021-07-01 23:43:57'),
('f054ca3e-e4ba-43ee-bdb1-69acadedf4e8', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 11:29:53', '2021-07-01 11:29:53'),
('f061026f-a47c-42c1-ad9b-3d36e1fec6ea', 'App\\Notifications\\WellComeNotification', 'App\\User', 100, '{\"user_id\":100}', NULL, '2021-06-30 00:50:32', '2021-06-30 00:50:32'),
('f070f8f1-4744-4f60-9cc1-1c3cd855df7d', 'App\\Notifications\\WellComeNotification', 'App\\User', 421, '{\"user_id\":421}', NULL, '2021-07-02 01:30:51', '2021-07-02 01:30:51'),
('f0ad6474-d21f-4def-92d7-eee4f4950556', 'App\\Notifications\\WellComeNotification', 'App\\User', 446, '{\"user_id\":446}', NULL, '2021-07-02 02:33:08', '2021-07-02 02:33:08'),
('f127698b-f575-4da6-bef6-241ac4ae8fbf', 'App\\Notifications\\WellComeNotification', 'App\\User', 341, '{\"user_id\":341}', NULL, '2021-07-01 22:58:37', '2021-07-01 22:58:37'),
('f162b844-0e52-407c-a358-05ed1b0c587f', 'App\\Notifications\\WellComeNotification', 'App\\User', 386, '{\"user_id\":386}', NULL, '2021-07-02 00:25:34', '2021-07-02 00:25:34'),
('f18b12a2-86fb-43af-8dd8-3668179cffef', 'App\\Notifications\\WellComeNotification', 'App\\User', 363, '{\"user_id\":363}', NULL, '2021-07-01 23:38:57', '2021-07-01 23:38:57'),
('f194c357-2320-49e2-b1f7-f7d35ef28d97', 'App\\Notifications\\WellComeNotification', 'App\\User', 382, '{\"user_id\":382}', NULL, '2021-07-02 00:19:55', '2021-07-02 00:19:55'),
('f29ef5d5-5aef-42e9-b5ab-b2534ef0f3d7', 'App\\Notifications\\WellComeNotification', 'App\\User', 448, '{\"user_id\":448}', NULL, '2021-07-02 02:44:11', '2021-07-02 02:44:11'),
('f4200015-8b58-4b6b-8b3e-62bf286d4391', 'App\\Notifications\\WellComeNotification', 'App\\User', 412, '{\"user_id\":412}', NULL, '2021-07-02 00:56:10', '2021-07-02 00:56:10'),
('f4b5a9fe-ef69-4191-9cb3-526cad533113', 'App\\Notifications\\WellComeNotification', 'App\\User', 298, '{\"user_id\":298}', NULL, '2021-07-01 17:33:52', '2021-07-01 17:33:52'),
('f5213d43-01e2-4e23-bcaf-1b993ad8b9b7', 'App\\Notifications\\WellComeNotification', 'App\\User', 80, '{\"user_id\":80}', NULL, '2021-06-29 23:59:29', '2021-06-29 23:59:29'),
('f58d3552-7c51-4c0e-9245-05ed630e2bfb', 'App\\Notifications\\WellComeNotification', 'App\\User', 340, '{\"user_id\":340}', NULL, '2021-07-01 22:56:26', '2021-07-01 22:56:26'),
('f5d067c0-3724-4e3c-8e1b-1a2ec9262fd4', 'App\\Notifications\\WellComeNotification', 'App\\User', 318, '{\"user_id\":318}', NULL, '2021-07-01 22:24:54', '2021-07-01 22:24:54'),
('f5e3e70e-215d-46ba-a8f8-e1878ab4774f', 'App\\Notifications\\WellComeNotification', 'App\\User', 419, '{\"user_id\":419}', NULL, '2021-07-02 01:19:31', '2021-07-02 01:19:31'),
('f5ee1ca3-b82d-4d4e-a2b2-a357f655bcf3', 'App\\Notifications\\WellComeNotification', 'App\\User', 220, '{\"user_id\":220}', NULL, '2021-06-30 22:41:16', '2021-06-30 22:41:16'),
('f7e15754-190a-450e-97fd-8401abceddc2', 'App\\Notifications\\WellComeNotification', 'App\\User', 293, '{\"user_id\":293}', NULL, '2021-07-01 16:24:20', '2021-07-01 16:24:20'),
('f8180614-9e9f-4c54-823d-ee78fdb52c8b', 'App\\Notifications\\WellComeNotification', 'App\\User', 562, '{\"user_id\":562}', NULL, '2021-07-08 22:32:54', '2021-07-08 22:32:54'),
('f8601b0f-f972-496c-8f3f-513ead78037f', 'App\\Notifications\\WellComeNotification', 'App\\User', 443, '{\"user_id\":443}', NULL, '2021-07-02 02:18:56', '2021-07-02 02:18:56'),
('f885a388-c9ff-47ed-af8a-b7821f040b25', 'App\\Notifications\\WellComeNotification', 'App\\User', 217, '{\"user_id\":217}', NULL, '2021-06-30 22:17:13', '2021-06-30 22:17:13'),
('f8cd12ad-72f2-40fb-96f8-c73033f915b1', 'App\\Notifications\\WellComeNotification', 'App\\User', 294, '{\"user_id\":294}', NULL, '2021-07-01 16:31:43', '2021-07-01 16:31:43'),
('f907c3fd-2e6a-4e00-aabe-97430e07a755', 'App\\Notifications\\WellComeNotification', 'App\\User', 328, '{\"user_id\":328}', NULL, '2021-07-01 22:39:48', '2021-07-01 22:39:48'),
('f9dacbb0-94ad-4499-bb82-ff9eb515272b', 'App\\Notifications\\WellComeNotification', 'App\\User', 94, '{\"user_id\":94}', NULL, '2021-06-29 23:58:19', '2021-06-29 23:58:19'),
('f9f6e028-d624-4b4e-986d-23dc8e8edb68', 'App\\Notifications\\WellComeNotification', 'App\\User', 1, '{\"user_id\":1}', NULL, '2021-06-29 15:18:40', '2021-06-29 15:18:40'),
('fa3e99ea-9874-4459-a20e-d0d02f40008c', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 03:18:52', '2021-07-02 03:18:52'),
('fa40584e-5740-472c-9b53-d3bdc26d0c0f', 'App\\Notifications\\WellComeNotification', 'App\\User', 579, '{\"user_id\":579}', NULL, '2021-07-09 23:59:50', '2021-07-09 23:59:50'),
('fa6364d2-1a49-49d4-81d7-5a47f3d92b5f', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-02 13:43:57', '2021-07-02 13:43:57'),
('fa8784bd-5633-4848-b175-fe6d34888cbb', 'App\\Notifications\\WellComeNotification', 'App\\User', 530, '{\"user_id\":530}', NULL, '2021-07-06 23:39:48', '2021-07-06 23:39:48'),
('fb9aa66b-c7c2-4bfd-aca1-9a35730c3273', 'App\\Notifications\\WellComeNotification', 'App\\User', 463, '{\"user_id\":463}', NULL, '2021-07-02 04:06:57', '2021-07-02 04:06:57');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('fb9b5d32-ac06-4d08-b721-9de249ade1ce', 'App\\Notifications\\WellComeNotification', 'App\\User', 127, '{\"user_id\":127}', NULL, '2021-06-30 09:55:08', '2021-06-30 09:55:08'),
('fbebe3dd-5628-40be-962d-df51e198fa05', 'App\\Notifications\\WellComeNotification', 'App\\User', 309, '{\"user_id\":309}', NULL, '2021-07-01 20:49:47', '2021-07-01 20:49:47'),
('fc70d829-1c33-4f5a-9eb5-a11d64bca2b2', 'App\\Notifications\\WellComeNotification', 'App\\User', 219, '{\"user_id\":219}', NULL, '2021-06-30 22:36:52', '2021-06-30 22:36:52'),
('fc8a6ab8-1364-4ed6-ae8f-62fbfb5631cd', 'App\\Notifications\\WellComeNotification', 'App\\User', 89, '{\"user_id\":89}', NULL, '2021-06-29 23:36:41', '2021-06-29 23:36:41'),
('fc8dfb5f-d85d-46fe-b09e-e0e6a0f75519', 'App\\Notifications\\WellComeNotification', 'App\\User', 609, '{\"user_id\":609}', NULL, '2021-07-12 18:45:41', '2021-07-12 18:45:41'),
('fd228d90-6645-448c-8a97-640bc8a0123c', 'App\\Notifications\\WellComeNotification', 'App\\User', 21, '{\"user_id\":21}', NULL, '2021-06-29 17:19:12', '2021-06-29 17:19:12'),
('fd2e3683-5279-4606-abf2-ff857841c9fb', 'App\\Notifications\\WellComeNotification', 'App\\User', 256, '{\"user_id\":256}', NULL, '2021-07-01 02:59:39', '2021-07-01 02:59:39'),
('fd4d5a36-0005-4414-8ee6-c734fe0a8f59', 'App\\Notifications\\WellComeNotification', 'App\\User', 575, '{\"user_id\":575}', NULL, '2021-07-09 19:48:20', '2021-07-09 19:48:20'),
('fd573f47-b6b6-414f-a2fe-8df65eb627e0', 'App\\Notifications\\WellComeNotification', 'App\\User', 130, '{\"user_id\":130}', NULL, '2021-06-30 10:26:10', '2021-06-30 10:26:10'),
('fda4852a-5ef8-4df5-b696-786bbf5d06f6', 'App\\Notifications\\WellComeNotification', 'App\\User', 265, '{\"user_id\":265}', NULL, '2021-07-01 22:46:33', '2021-07-01 22:46:33'),
('fe421884-2e4e-49cf-b254-c678d7b0d703', 'App\\Notifications\\WellComeNotification', 'App\\User', 447, '{\"user_id\":447}', NULL, '2021-07-02 02:33:28', '2021-07-02 02:33:28'),
('fef1c215-18bb-4738-b67c-6f99e14a2b1c', 'App\\Notifications\\WellComeNotification', 'App\\User', 527, '{\"user_id\":527}', NULL, '2021-07-06 18:23:15', '2021-07-06 18:23:15'),
('ff4170f2-7a00-4545-b237-5dac67ba271b', 'App\\Notifications\\WellComeNotification', 'App\\User', 292, '{\"user_id\":292}', NULL, '2021-07-01 16:24:00', '2021-07-01 16:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_group_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_permission_group_id_foreign` (`permission_group_id`)
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

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `group_name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
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
-- Table structure for table `prd_brand`
--

DROP TABLE IF EXISTS `prd_brand`;
CREATE TABLE IF NOT EXISTS `prd_brand` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
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

DROP TABLE IF EXISTS `prd_category`;
CREATE TABLE IF NOT EXISTS `prd_category` (
  `pk_no` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
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
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_highlight` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='category master setup table' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_category`
--

INSERT INTO `prd_category` (`pk_no`, `parent_id`, `code`, `name`, `url_slug`, `name_bn`, `description`, `seo_des`, `logo`, `icon`, `banner`, `is_top`, `is_new`, `is_feature`, `hs_prefix`, `comments`, `is_active`, `is_delete`, `total_post`, `active_post`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`, `is_highlight`) VALUES
(1, 0, '11', 'Cars & Vehicles', 'cars-vehicles', NULL, 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', NULL, 'category_log_5fe8202d6d53d.png', NULL, 1, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-15 17:21:12', 1, '2020-12-27 05:48:29', 0),
(2, 0, '12', 'Electronics & Gedgets', 'electronics-gedgets', NULL, 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', NULL, 'category_log_5fb2b58af0dc9.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 5, 0, 4, 1, '2020-11-16 17:23:22', 1, '2020-12-18 07:54:24', 0),
(3, 0, '13', 'Property for Rent/Sell', 'property', NULL, 'View listings for property in Bangladesh. Find the cheapest rates for apartments, commercial and residential properties, as well as for land and plots.', 'View listings for property in Bangladesh. Find the cheapest rates for apartments, commercial and residential properties, as well as for land and plots.', NULL, 'category_log_5fe78321e6fb1.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 7, 0, 1, 1, '2020-11-16 17:24:29', 1, '2020-12-26 18:38:25', 1),
(4, 0, '14', 'Sports & responsive', 'sports-responsive', NULL, 'Buy and sell used musical instruments, sports gear and accessories, art and collectibles and items for kids here.', 'Buy and sell used musical instruments, sports gear and accessories, art and collectibles and items for kids here.', NULL, 'category_log_5fb2b656e349a.png', NULL, 0, 1, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:26:46', 1, '2020-11-16 17:26:46', 0),
(5, 0, '15', 'Fashion & Beauty', 'fashion-beauty', NULL, 'Buy and sell clothing, garments, shoes and other personal items including handbags, perfumes etc.', 'Buy and sell clothing, garments, shoes and other personal items including handbags, perfumes etc.', NULL, 'category_log_5fb2b67d5307e.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 5, 0, 4, 1, '2020-11-16 17:27:25', 1, '2020-12-18 07:54:36', 0),
(6, 0, '16', 'Pets & Animals', 'pets-animals', NULL, 'Search from the widest variety of pets in Bangladesh. Select from dogs, puppies, cats, kittens, birds and other domesticated animals.', 'Search from the widest variety of pets in Bangladesh. Select from dogs, puppies, cats, kittens, birds and other domesticated animals.', NULL, 'category_log_5fb2b70570133.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:29:41', 1, '2020-12-21 19:37:44', 0),
(7, 0, '17', 'Job Openings', 'jobs', NULL, 'Post and apply for jobs and career opportunities in Bangladesh. Search for job vacancies in your city.', 'Post and apply for jobs and career opportunities in Bangladesh. Search for job vacancies in your city.', NULL, 'category_log_5fe783bc456e6.png', NULL, 1, 1, 0, NULL, NULL, 1, 0, 1, 0, 2, 1, '2020-11-16 17:30:12', 1, '2020-12-26 18:41:00', 1),
(8, 0, '18', 'Home Appliances', 'home-appliances', NULL, 'Buy and sell new and used home appliances including furniture, kitchen items, gardening products and other items for your garden.', 'Buy and sell new and used home appliances including furniture, kitchen items, gardening products and other items for your garden.', NULL, 'category_log_5fe820fd53eb2.png', NULL, 1, 0, 1, NULL, NULL, 1, 0, 0, 0, 3, 1, '2020-11-16 17:30:59', 1, '2020-12-27 05:51:57', 0),
(9, 0, '19', 'Matrimony Services', 'matrimony-services', NULL, NULL, NULL, NULL, 'category_log_5fb2b77f7bad7.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:31:43', 1, '2020-12-26 19:03:47', 0),
(11, 0, '21', 'Miscellaneous', 'miscellaneous', NULL, NULL, NULL, NULL, 'category_log_5fb2b83daaa73.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 0, 0, 6, 1, '2020-11-16 17:34:53', 1, '2020-12-21 19:37:52', 0),
(12, 0, '22', 'Books & Magazines', 'books-magazines', NULL, NULL, NULL, NULL, 'category_log_5fb2b88671c88.png', NULL, 1, 0, 1, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:36:06', 1, '2020-12-21 19:37:48', 0),
(13, 1, '23', 'Cars & Buses', 'cars--buses', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:41:37', NULL, '2020-11-16 17:41:37', 0),
(14, 1, '24', 'Motorbikes & Scooters', 'motorbikes-scooters', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:41:47', NULL, '2020-11-16 17:41:47', 0),
(15, 1, '25', 'Bicycles And Three Wheelers', 'bicycles-and-three-wheelers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:41:56', NULL, '2020-11-16 17:41:56', 0),
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
(42, 5, '52', 'Men\'s Clothing & Accessories', 'mens-clothing-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 5, 0, 4, 1, '2020-11-16 18:07:59', NULL, '2020-11-16 18:07:59', 0),
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
(104, 0, '112', 'Mobiles', 'mobiles', NULL, 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', 'Buy and sell used cars, motorbikes and other vehicles in Bangladesh. Choose from top brands including Toyota, Nissan, Honda and Suzuki.', NULL, 'category_log_5fe786c5db223.png', NULL, 1, 1, 1, NULL, NULL, 1, 0, 8, 0, 1, 1, '2020-11-16 17:21:12', 1, '2020-12-26 18:53:57', 0),
(107, 3, '113', 'Commercial Property', 'commercial-property', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 4, 1, '2020-11-16 17:45:27', NULL, '2020-11-16 17:45:27', 0),
(108, 104, '118', 'SIM Cards', 'sim-cards', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-17 19:00:04', NULL, '2021-01-17 19:00:04', 0),
(109, 104, '119', 'Mobile Phone Services', 'mobile-phone-services', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 1, '2021-01-17 19:00:17', NULL, '2021-01-17 19:00:17', 0),
(110, 2, '120', 'Desktop Computers', 'desktop-computers', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 1, 0, 0, 1, '2021-01-17 19:00:49', NULL, '2021-01-17 19:00:49', 0),
(111, 2, '121', 'Laptops', 'laptops', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '2021-01-17 19:01:26', 1, '2021-01-17 19:02:47', 0),
(112, 2, '122', 'Laptop & Computer Accessories', 'laptop-computer-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, '2021-01-17 19:01:33', 1, '2021-01-17 19:02:37', 0),
(113, 2, '123', 'Tablets & Accessories', 'tablets-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 1, 0, 0, 0, 0, 1, '2021-01-17 19:01:41', NULL, '2021-01-17 19:01:41', 0),
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
DROP TRIGGER IF EXISTS `before_prd_category_insert`;
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
DROP TRIGGER IF EXISTS `before_prd_category_update`;
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

DROP TABLE IF EXISTS `prd_favourites`;
CREATE TABLE IF NOT EXISTS `prd_favourites` (
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

DROP TABLE IF EXISTS `prd_features`;
CREATE TABLE IF NOT EXISTS `prd_features` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(10) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Brand Master Setup Table' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `prd_img_library`
--

DROP TABLE IF EXISTS `prd_img_library`;
CREATE TABLE IF NOT EXISTS `prd_img_library` (
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
(1, 1, '359511624982793.webp', 1, NULL, NULL, NULL, NULL),
(2, 1, '925531624982793.jpg', 2, NULL, NULL, NULL, NULL),
(3, 1, '761771624982793.webp', 3, NULL, NULL, NULL, NULL),
(4, 1, '538661624982794.jpg', 4, NULL, NULL, NULL, NULL),
(5, 2, '84181624987320.jpg', 1, NULL, NULL, NULL, NULL),
(6, 2, '76441624987320.jpg', 2, NULL, NULL, NULL, NULL),
(7, 3, '922651624987463.jpg', 1, NULL, NULL, NULL, NULL),
(8, 3, '562151624987463.jpg', 2, NULL, NULL, NULL, NULL),
(9, 4, '913101624987580.jpg', 1, NULL, NULL, NULL, NULL),
(10, 4, '161711624987580.webp', 2, NULL, NULL, NULL, NULL),
(11, 5, '799901624987741.jpg', 1, NULL, NULL, NULL, NULL),
(12, 5, '920891624987741.jpg', 2, NULL, NULL, NULL, NULL),
(13, 6, '44411624987826.jpg', 1, NULL, NULL, NULL, NULL),
(14, 6, '824911624987826.jpg', 2, NULL, NULL, NULL, NULL),
(15, 7, '206301624988119.jpg', 1, NULL, NULL, NULL, NULL),
(16, 7, '65771624988119.jpg', 2, NULL, NULL, NULL, NULL),
(17, 8, '516271624988248.jpg', 1, NULL, NULL, NULL, NULL),
(18, 8, '871351624988248.jpg', 2, NULL, NULL, NULL, NULL),
(19, 9, '913661624988463.jpg', 1, NULL, NULL, NULL, NULL),
(20, 9, '21171624988463.jpg', 2, NULL, NULL, NULL, NULL),
(21, 10, '604751624988615.jpg', 1, NULL, NULL, NULL, NULL),
(22, 10, '338751624988615.jpg', 2, NULL, NULL, NULL, NULL),
(23, 11, '6751624988757.jpg', 1, NULL, NULL, NULL, NULL),
(24, 12, '824981626107506.jpg', 1, NULL, NULL, NULL, NULL),
(25, 12, '880751626107506.jpg', 2, NULL, NULL, NULL, NULL),
(26, 12, '126651626107506.jpg', 3, NULL, NULL, NULL, NULL),
(27, 13, '774281626107605.jpg', 1, NULL, NULL, NULL, NULL),
(28, 13, '22281626107605.jpg', 2, NULL, NULL, NULL, NULL),
(29, 14, '829321626107728.jpg', 1, NULL, NULL, NULL, NULL),
(30, 14, '835051626107728.jpg', 2, NULL, NULL, NULL, NULL),
(31, 14, '314141626107728.jpg', 3, NULL, NULL, NULL, NULL),
(32, 15, '992661626107858.jpg', 1, NULL, NULL, NULL, NULL),
(33, 15, '198871626107858.jpg', 2, NULL, NULL, NULL, NULL),
(34, 15, '949081626107858.jpg', 3, NULL, NULL, NULL, NULL),
(35, 16, '659741626107980.jpg', 1, NULL, NULL, NULL, NULL),
(36, 17, '112591626108159.jpg', 1, NULL, NULL, NULL, NULL),
(37, 18, '845911626108323.jpg', 1, NULL, NULL, NULL, NULL),
(38, 19, '429071626108411.jpg', 1, NULL, NULL, NULL, NULL),
(39, 20, '242101626108492.jpg', 1, NULL, NULL, NULL, NULL),
(40, 21, '304211626108561.jpg', 1, NULL, NULL, NULL, NULL),
(41, 22, '958101626108674.jpg', 1, NULL, NULL, NULL, NULL),
(42, 23, '272241626109190.jpg', 1, NULL, NULL, NULL, NULL),
(43, 23, '65851626109190.webp', 2, NULL, NULL, NULL, NULL),
(44, 23, '982161626109191.webp', 3, NULL, NULL, NULL, NULL),
(45, 23, '298971626109191.jpg', 4, NULL, NULL, NULL, NULL),
(0, 0, '96211655743528.png', 1, NULL, NULL, NULL, NULL),
(0, 0, '419571655744107.jpg', 1, NULL, NULL, NULL, NULL),
(0, 24, '407741655822350.png', 1, NULL, NULL, NULL, NULL),
(0, 25, '375981655822369.png', 1, NULL, NULL, NULL, NULL),
(0, 26, '507041655831349.jpg', 1, NULL, NULL, NULL, NULL);

--
-- Triggers `prd_img_library`
--
DROP TRIGGER IF EXISTS `before_prd_img_library_insert`;
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

DROP TABLE IF EXISTS `prd_master`;
CREATE TABLE IF NOT EXISTS `prd_master` (
  `pk_no` int(11) NOT NULL AUTO_INCREMENT,
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
  `code` int(10) DEFAULT '0',
  `ad_title` varchar(100) DEFAULT NULL,
  `url_slug` varchar(100) DEFAULT NULL,
  `f_brand` int(11) DEFAULT NULL,
  `brand_name` varchar(20) DEFAULT NULL,
  `f_model` int(11) DEFAULT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  `prod_feature` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `price_unit` varchar(124) DEFAULT NULL COMMENT 'like ''total price'' or per sqft''',
  `is_negotiable` tinyint(4) DEFAULT '0',
  `price_to` float DEFAULT NULL,
  `vacanci` int(11) DEFAULT NULL,
  `business_function` varchar(124) DEFAULT NULL,
  `deadline` date DEFAULT NULL COMMENT 'job application deadline',
  `company_name` varchar(100) DEFAULT NULL COMMENT 'company name / employer name',
  `logo` varchar(20) DEFAULT NULL,
  `description` text,
  `edition` varchar(100) DEFAULT NULL,
  `authenticity` varchar(50) DEFAULT NULL,
  `using_condition` varchar(20) DEFAULT NULL COMMENT 'used, new',
  `prod_type` varchar(124) DEFAULT NULL COMMENT 'come from prd_type table ',
  `mobile1` varchar(20) DEFAULT NULL,
  `mobile2` varchar(20) DEFAULT NULL,
  `is_hide_mobile1` tinyint(4) DEFAULT '0',
  `is_hide_mobile2` tinyint(4) DEFAULT '0',
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
  `is_terms_condition` tinyint(4) NOT NULL DEFAULT '0',
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '0',
  `approved_by` int(2) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `total_view` int(10) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_by` int(10) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `promotion` varchar(20) DEFAULT 'Basic' COMMENT 'Basic, Top, Urgent, Feature',
  `promotion_to` date DEFAULT NULL,
  `thumb` varchar(55) DEFAULT NULL,
  `search_key` longtext,
  PRIMARY KEY (`pk_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prd_master`
--

INSERT INTO `prd_master` (`pk_no`, `ad_type`, `area_id`, `city_division`, `city_division_pk_no`, `area_url_slug`, `city_division_url_slug`, `customer_pk_no`, `main_category`, `f_cat_pk_no`, `cat_url_slug`, `f_scat_pk_no`, `scat_url_slug`, `code`, `ad_title`, `url_slug`, `f_brand`, `brand_name`, `f_model`, `model_name`, `prod_feature`, `price`, `price_unit`, `is_negotiable`, `price_to`, `vacanci`, `business_function`, `deadline`, `company_name`, `logo`, `description`, `edition`, `authenticity`, `using_condition`, `prod_type`, `mobile1`, `mobile2`, `is_hide_mobile1`, `is_hide_mobile2`, `model_year`, `registration_year`, `transmission`, `address`, `body_type`, `fuel_type`, `engine_capacity`, `kilometers_run`, `bed_no`, `bath_no`, `land_size`, `land_unit`, `house_size`, `house_unit`, `property_address`, `flat_size`, `gender`, `user_name`, `is_terms_condition`, `comments`, `is_active`, `approved_by`, `approved_at`, `created_by`, `created_at`, `updated_by`, `updated_at`, `total_view`, `is_delete`, `deleted_by`, `deleted_at`, `promotion`, `promotion_to`, `thumb`, `search_key`) VALUES
(1, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 73, 'general', 104, 'mobiles', 21, 'mobile-phones', 101, 'Samsung Galaxy A51 অফিসিয়াল ফুল বক্স (Used)', 'samsung-galaxy-a51-used', 1, 'Samsung', 1, 'Galaxy Grand Prime', 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 21000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Original, brand new condition, one month used carefully, official device, imei matching box & original fast charger, 6.5\" Super amoled display, 6/128 gb, quad 48+12+5+5/32 mp camera, face lock, fingerprint scanner in display, green/white edition, dual sim, global version, massive 4000 mah battery, replace & money back guarantee.', 'অফিসিয়াল ফুল বক্স', 'original', 'new', NULL, '01990572321', NULL, 0, 0, NULL, NULL, NULL, 'Narayanganj, Dhaka Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony Mia', 1, NULL, 1, 1, '2021-06-29 16:11:00', NULL, '2021-06-29 22:06:33', NULL, '2022-06-19 23:18:12', 220, 0, NULL, NULL, 'Urgent', NULL, '359511624982793.webp', 'mirpur dhaka general mobile-phones Samsung Galaxy A51 অফিসিয়াল ফুল বক্স (Used) Samsung Galaxy Grand PrimeCamera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen21000 new01990572321Narayanganj, Dhaka DivisionOriginal, brand new condition, one month used carefully, official device, imei matching box & original fast charger, 6.5\" Super amoled display, 6/128 gb, quad 48+12+5+5/32 mp camera, face lock, fingerprint scanner in display, green/white edition, dual sim, global version, massive 4000 mah battery, replace & money back guarantee.'),
(2, 'sell', 96, 'city', 5, 'gulshan', 'dhaka', 84, 'general', 104, 'mobiles', 21, 'mobile-phones', 102, 'Samsung Galaxy A72 Official (Used)', 'samsung-galaxy-a72-official-used', 1, 'Samsung', NULL, NULL, 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 41990, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Samsung Galaxy A72\r\n\r\n11.5 Months official BD warranty \r\n\r\n8 GB Ram, 256 GB Rom \r\n\r\nFew days used only\r\n\r\nBrand New condition Full Box \r\n\r\nWith all original accessories \r\n\r\nPrice: 41,990TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop', 'Galaxy A72 Official', 'original', 'used', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:23', NULL, '2021-06-29 23:22:00', NULL, '2021-07-12 14:05:18', 20, 0, NULL, NULL, 'Basic', NULL, '84181624987320.jpg', 'gulshan dhaka general mobile-phones Samsung Galaxy A72 Official (Used) Samsung Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen41990 used01990572321Gulshan, DhakaSamsung Galaxy A72\r\n\r\n11.5 Months official BD warranty \r\n\r\n8 GB Ram, 256 GB Rom \r\n\r\nFew days used only\r\n\r\nBrand New condition Full Box \r\n\r\nWith all original accessories \r\n\r\nPrice: 41,990TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop'),
(3, 'sell', 96, 'city', 5, 'gulshan', 'dhaka', 84, 'general', 104, 'mobiles', 21, 'mobile-phones', 103, 'Xiaomi Redmi Note 8 2021 (New)', 'xiaomi-redmi-note-8-2021-new', NULL, NULL, NULL, NULL, 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 15999, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Xiaomi Redmi Note 8 2021\r\n\r\n4 GB Ram, 64 GB Rom\r\n\r\nInternational Global version \r\n\r\nBrand new intact Sealed Box\r\n\r\nPrice: 15,999TK\r\n\r\nCall: 01745238626, 01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop', '2021', 'original', 'new', NULL, '01990572321', '01320325852', 0, 0, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:29', NULL, '2021-06-29 23:24:23', NULL, '2021-07-12 14:54:32', 62, 0, NULL, NULL, 'Basic', NULL, '922651624987463.jpg', 'gulshan dhaka general mobile-phones Xiaomi Redmi Note 8 2021 (New)  Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen15999 new0199057232101320325852Gulshan, DhakaXiaomi Redmi Note 8 2021\r\n\r\n4 GB Ram, 64 GB Rom\r\n\r\nInternational Global version \r\n\r\nBrand new intact Sealed Box\r\n\r\nPrice: 15,999TK\r\n\r\nCall: 01745238626, 01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop'),
(4, 'sell', 96, 'city', 5, 'gulshan', 'dhaka', 84, 'general', 104, 'mobiles', 21, 'mobile-phones', 104, 'Apple iPhone 12 Pro Max 256GB USA (New)', 'apple-iphone-12-pro-max-256gb-usa-new', NULL, NULL, NULL, NULL, 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 119999, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Apple iPhone 12 Pro Max\r\n\r\n256GB Rom, 6GB Ram, USA\r\n\r\nBrand New intact Sealed Box \r\n\r\nPrice: 1,19,999TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop', '256GB USA', 'original', 'new', NULL, '01990572321', '01320325852', 0, 0, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:36', NULL, '2021-06-29 23:26:20', NULL, '2021-07-12 10:42:32', 20, 0, NULL, NULL, 'Basic', NULL, '913101624987580.jpg', 'gulshan dhaka general mobile-phones Apple iPhone 12 Pro Max 256GB USA (New)  Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen119999 new0199057232101320325852Gulshan, DhakaApple iPhone 12 Pro Max\r\n\r\n256GB Rom, 6GB Ram, USA\r\n\r\nBrand New intact Sealed Box \r\n\r\nPrice: 1,19,999TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop'),
(5, 'sell', 109, 'city', 5, 'rampura', 'dhaka', 84, 'general', 104, 'mobiles', 21, 'mobile-phones', 105, 'Apple iPhone XS Full Box (Used)', 'apple-iphone-xs-full-box-used', NULL, NULL, NULL, NULL, 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 45990, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Apple iPhone XS \r\n\r\n64 GB Rom, 4 GB Ram\r\n\r\nAs like a New, Gold color  \r\n\r\nBrand New condition With Full Box \r\n\r\nPrice: 45,990TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop', 'Full Box', 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Rampura, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:42', NULL, '2021-06-29 23:29:01', NULL, '2021-07-12 09:56:13', 35, 0, NULL, NULL, 'Basic', NULL, '799901624987741.jpg', 'rampura dhaka general mobile-phones Apple iPhone XS Full Box (Used)  Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen45990 new01990572321Rampura, DhakaApple iPhone XS \r\n\r\n64 GB Rom, 4 GB Ram\r\n\r\nAs like a New, Gold color  \r\n\r\nBrand New condition With Full Box \r\n\r\nPrice: 45,990TK\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop'),
(6, 'sell', 96, 'city', 5, 'gulshan', 'dhaka', 84, 'general', 104, 'mobiles', 21, 'mobile-phones', 106, 'Xiaomi Mi 10T Pro 5G (New)', 'xiaomi-mi-10t-pro-5g-new', NULL, NULL, NULL, NULL, 'Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen', 42500, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Xiaomi Mi 10T Pro 5G\r\n\r\n8 GB Ram, 128Rom\r\n\r\nBrand New intact Box\r\n\r\nPrice: 42,500K\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop', 'Mi 10T Pro 5G', 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:49', NULL, '2021-06-29 23:30:26', NULL, '2021-07-12 22:53:12', 36, 0, NULL, NULL, 'Basic', NULL, '44411624987826.jpg', 'gulshan dhaka general mobile-phones Xiaomi Mi 10T Pro 5G (New)  Camera, Dual SIM, Physical keyboard, 4G, 3G, GSM, Touch screen42500 new01990572321Gulshan, DhakaXiaomi Mi 10T Pro 5G\r\n\r\n8 GB Ram, 128Rom\r\n\r\nBrand New intact Box\r\n\r\nPrice: 42,500K\r\n\r\nCall: 01745238626/01765450451\r\n\r\nJoin Our Group : https://www.facebook.com/groups/119985444739457/\r\n\r\n--------------------------------------------------------------------------\r\n\r\n📱আপনার পুরনো স্মার্টফোনটি দিয়ে 🔁EXCHANGE করে নতুন ফোন কিনতে পারবেন এছাড়াও আমরা পুরনো ফোন ক্রয়ও করে থাকি সেক্ষেত্রে ডিভাইস এর বক্স অবশ্যই থাকতে হবে।\r\n\r\n💳 ২0টিব্যাংকের ক্রেডিট কার্ডে শর্তসাপেক্ষে EMI সুবিধা উপভোগ করতে পারবেন: SCB, City Bank, BRAC Bank, EBL, MTB, SIBL, Lanka Bangla Finance, SouthEast Bank, Meghna Bank, NRB Bank, Jamuna Bank, NRBC Bank, NCC Bank, DBBL, Bank Asia, Dhaka Bank, Prime Bank, Premier Bank, Standard Bank, SBAC\r\n\r\n3 Days Replacement & 1 Year Service Warranty Will Be\r\n\r\nProvided\r\n\r\n🏠Home Delivery inside Dhaka\r\n\r\n🇧🇩Courier all over Bangladesh\r\n\r\n===========================================\r\n\r\nShowroom: 1\r\n\r\nPHONES 4U\r\n\r\nGulshan Avenue Branch:\r\n\r\nShop No # 508, Lavel # 4, Police Plaza Concord, Gulshan-1\r\n\r\n=============================================\r\n\r\nVisit us: 2\r\n\r\nShowroom: \r\n\r\nPHONES 4U\r\n\r\nMouchak Branch:\r\n\r\nShop No # 02, Ground Floor.\r\n\r\n66, Property Plaza, Circular Road, Malibagh\r\n\r\n=============================================\r\n\r\n**100% Original & Non Refurbished Product**\r\n\r\nvisit our page: https://www.facebook.com/phones4ushop'),
(7, 'sell', 29, 'city', 5, 'uttara', 'dhaka', 84, 'general', 2, 'electronics-gedgets', 25, 'cameras', 107, 'HD সানগ্লাস স্পাই ক্যামেরা-Chosma Camera', 'hd-chosma-camera', NULL, NULL, NULL, NULL, NULL, 3660, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\nচ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Memory : 32GB Inbuit memory card supported.\r\n\r\nVideo Display Resolution : HD 720p (1280×720) Recording\r\n\r\nBattery Type : Ni-MH\r\n\r\nCamera : 8 Mega Pixels\r\n\r\nType : Instant Audio/Video/Photo\r\n\r\nVideo Format: AVI 720(W) x 480(H) Pixels\r\n\r\nVideo Frames: 30 Frames Per Sec\r\n\r\nMicrophone: Built-in\r\n\r\nPower Supply: USB\r\n\r\nSystem Requirement: WINDOWS 2000/XP/LINUX/Windows Vista/Win7\r\n\r\nBattery charging time: 1 Hrs \r\n\r\nBackup: 2-3 Hours.( Maximum ) \r\n\r\nSecurity: Encrypted Link\r\n\r\nCharger : Desktop or Laptop via cable provided\r\n\r\nStandby time: about 150 hours\r\n\r\nPackage Contents Amazing Sunglass Camcorder, Cable, and user manual\r\n\r\nDisplay Light: No LED light while recording\r\n\r\nMade In China.\r\n\r\nআপনি কি আপনার বন্ধুদের সাথে নিয়ে কোন মজার ভিডিও করতে চান ?\r\n\r\nআপনি কি একজন সাংবাদিক অথবা একজন উকিল অথবা কোন\r\n\r\nগোপন অন্যায় কর্মকান্ড ভিডিও করতে চান\r\n\r\n গোপনে কোন বিষয় বা কাজের ভিডিও করতে চান \r\n\r\nকেউ জানতেও পারবেনা যে আপনি ভিডিও করছেন\r\n\r\n আমরা অনেকেই হয়ত সিনেমায় দেখেছি, কলম এর মধ্যে লুকানো ক্যামেরা \r\n\r\nরিপ্লেসমেন্ট পলিসিঃ\r\n\r\nরিপ্লেসমেন্টের আবেদন করা যাবে যদি\r\n\r\nপণ্যটি সঠিকভাবে কাজ না করে\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে\r\n\r\nBikroy ক্রেতার অভিযোগের বৈধতা তদন্ত করে, শুধু মাত্র বৈধ অভিযোগের ক্ষেত্রেই পণ্য রিপ্লেসমেন্ট করবে\r\n\r\nপণ্যেটি শুধুমাত্র রিপ্লেসমেন্ট করা হবে, এর পরিশোধিত মূল্য কোন প্রেক্ষিতেই রিফান্ড করা হবে না\r\n\r\nযে পণ্যের ওয়্যারেন্টি সুবিধা নেই, সে সব ক্ষেত্রে ডেলিভারির ৭২ ঘন্টার পর অভিযোগ গ্রহন করা হবে না\r\n\r\nওয়্যারেন্টিযুক্ত পণ্যগুলির ক্ষেত্রে, অভিযোগ গুলি নির্দিষ্ট ওয়ারেন্টি নীতির অধীনে পড়বে এবং বিক্রয়.কম, সরবরাহকারীর দ্বারা ওয়্যারেন্টি নিশ্চিত করবে।\r\n\r\nবাংলাদেশের যে কোনো জায়গাতে ডেলিভারি করা হয়', NULL, 'original', 'new', '66', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 16:59:54', NULL, '2021-06-29 23:35:19', NULL, '2021-07-12 21:32:51', 15, 0, NULL, NULL, 'Basic', NULL, '206301624988119.jpg', 'uttara dhaka general cameras HD সানগ্লাস স্পাই ক্যামেরা-Chosma Camera  3660 new01990572321Gulshan, Dhakaআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\nচ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Memory : 32GB Inbuit memory card supported.\r\n\r\nVideo Display Resolution : HD 720p (1280×720) Recording\r\n\r\nBattery Type : Ni-MH\r\n\r\nCamera : 8 Mega Pixels\r\n\r\nType : Instant Audio/Video/Photo\r\n\r\nVideo Format: AVI 720(W) x 480(H) Pixels\r\n\r\nVideo Frames: 30 Frames Per Sec\r\n\r\nMicrophone: Built-in\r\n\r\nPower Supply: USB\r\n\r\nSystem Requirement: WINDOWS 2000/XP/LINUX/Windows Vista/Win7\r\n\r\nBattery charging time: 1 Hrs \r\n\r\nBackup: 2-3 Hours.( Maximum ) \r\n\r\nSecurity: Encrypted Link\r\n\r\nCharger : Desktop or Laptop via cable provided\r\n\r\nStandby time: about 150 hours\r\n\r\nPackage Contents Amazing Sunglass Camcorder, Cable, and user manual\r\n\r\nDisplay Light: No LED light while recording\r\n\r\nMade In China.\r\n\r\nআপনি কি আপনার বন্ধুদের সাথে নিয়ে কোন মজার ভিডিও করতে চান ?\r\n\r\nআপনি কি একজন সাংবাদিক অথবা একজন উকিল অথবা কোন\r\n\r\nগোপন অন্যায় কর্মকান্ড ভিডিও করতে চান\r\n\r\n গোপনে কোন বিষয় বা কাজের ভিডিও করতে চান \r\n\r\nকেউ জানতেও পারবেনা যে আপনি ভিডিও করছেন\r\n\r\n আমরা অনেকেই হয়ত সিনেমায় দেখেছি, কলম এর মধ্যে লুকানো ক্যামেরা \r\n\r\nরিপ্লেসমেন্ট পলিসিঃ\r\n\r\nরিপ্লেসমেন্টের আবেদন করা যাবে যদি\r\n\r\nপণ্যটি সঠিকভাবে কাজ না করে\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে\r\n\r\nBikroy ক্রেতার অভিযোগের বৈধতা তদন্ত করে, শুধু মাত্র বৈধ অভিযোগের ক্ষেত্রেই পণ্য রিপ্লেসমেন্ট করবে\r\n\r\nপণ্যেটি শুধুমাত্র রিপ্লেসমেন্ট করা হবে, এর পরিশোধিত মূল্য কোন প্রেক্ষিতেই রিফান্ড করা হবে না\r\n\r\nযে পণ্যের ওয়্যারেন্টি সুবিধা নেই, সে সব ক্ষেত্রে ডেলিভারির ৭২ ঘন্টার পর অভিযোগ গ্রহন করা হবে না\r\n\r\nওয়্যারেন্টিযুক্ত পণ্যগুলির ক্ষেত্রে, অভিযোগ গুলি নির্দিষ্ট ওয়ারেন্টি নীতির অধীনে পড়বে এবং বিক্রয়.কম, সরবরাহকারীর দ্বারা ওয়্যারেন্টি নিশ্চিত করবে।\r\n\r\nবাংলাদেশের যে কোনো জায়গাতে ডেলিভারি করা হয়'),
(8, 'sell', 29, 'city', 5, 'uttara', 'dhaka', 84, 'general', 2, 'electronics-gedgets', 28, 'other-electronics', 108, '8D পাওয়ার ব্যাংক ব্লুটুথ-Wireless Earphone Touch Bluetooth', '8d-wireless-earphone-touch-bluetooth', NULL, NULL, NULL, NULL, NULL, 1400, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'সিভিসি 8.0 ডিজিটাল শব্দ কমানোর প্রযুক্তি ব্যবহার করে\r\n\r\n5.1 চিপ সহ সর্বশেষতম টিডব্লিউএস বাইনরাল স্টেরিও স্টিরিও ব্লুটুথ হেডসেট আপনাকে খুব দক্ষ ওয়্যারলেস পারফরম্যান্স দেয়।\r\n\r\n5.1 চিপ ব্যাটারি লাইফ পরিচালনা করে খুব ভাল\r\n\r\nএটি ব্লুটুথ ভি 5.1 চিপ, 10 মি সংযোগ দূরত্ব, স্থিতিশীল কর্মক্ষমতা, উচ্চ সংক্রমণ, কম খরচ এবং দৃ strong় সামঞ্জস্যতা গ্রহণ করে।\r\n\r\nঅ্যারগোনমিকভাবে অ্যারিকলে আরও আরামদায়ক ফিটের জন্য ডিজাইন করা।\r\n\r\nদ্বি-কান বিভক্ত নকশাটি একক কান পৃথকভাবে দুটি পৃথক ব্লুটুথ হেডসেটের সমতুল্য ব্যবহার করতে দেয়।\r\n\r\nচার্জিং বগিটি একটি মোবাইল ফোন স্ট্যান্ড, পোর্টেবল মোবাইল ফোন স্ট্যান্ড, অনুভূমিক এবং উল্লম্ব স্থান নির্ধারণের জন্য ব্যবহার করা যেতে পারে\r\n\r\nঅতিরিক্ত মোবাইল ফোন স্ট্যান্ড কেনার প্রয়োজন ছাড়াই সরাসরি সম্প্রচার এবং সিনেমাগুলি দেখুন।\r\n\r\nআইপিএক্স proof ওয়াটারপ্রুফ এবং সুইটপ্রুফ\r\n\r\nঘাম ছাড়াই ব্যায়াম করুন\r\n\r\nবিনোরাল বিচ্ছেদ নকশা\r\n\r\nএকক এবং বাইনোরাল ফ্রি কাটওভার\r\n\r\nভাইস হেডফোন, দ্বৈত হোস্ট সংযোগ করতে traditionalতিহ্যবাহী হোস্টটিকে সাবভার্ট করুন।\r\n\r\nচ্যানেলের বাম এবং ডান কানের ব্যবহার বিনামূল্যে free\r\n\r\nশক্তিশালী সামঞ্জস্য, আইওএস / অ্যান্ড্রয়েড সর্বজনীন, এক-বোতাম নিয়ন্ত্রণ, সহজ এবং আড়ম্বরপূর্ণ।\r\n\r\nরিটার্ন পলিসিঃ\r\n\r\nনিম্নলিখিত সমস্যার ক্ষেত্রে পণ্য রিটার্ন করা যাবেঃ\r\n\r\nক্ষতিগ্রস্ত/ভাঙ্গা পণ্য, ভুল রঙ, আকার, মাত্রা, ওজন অথবা পণ্যটি যদি বিজ্ঞাপনের বিবরণের/ছবির সাথে না মিলে।\r\n\r\nউল্লেখিত সমস্যাগুলোর ক্ষেত্রে,\r\n\r\nপণ্যটি ডেলিভারি প্রতিনিধির কাছে তাৎক্ষণিক রিটার্ন করতে হবে। অন্যথায় পণ্যটি পরবর্তীতে রিটার্ন অথবা রিপ্লেসমেন্টের জন্য বিবেচিত হবে না।\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে।\r\n\r\nরিপ্লেসমেন্ট পলিসিঃ\r\n\r\nরিপ্লেসমেন্টের আবেদন করা যাবে যদি\r\n\r\nপণ্যটি সঠিকভাবে কাজ না করে\r\n\r\nরিপ্লেসমেন্ট আবেদন অবশ্যই ডেলিভারি গ্রহণ করার সর্বোচ্চ ৭২ ঘন্টার মধ্যে আপনাকে support@bikroy এ ইমেইল করে জানাতে হবে অথবা ০৯৬০৯৫৫৫৪৪৪ নম্বরে কমপ্লেইন রেজিস্টার করতে হবে\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে\r\n\r\nBikroy ক্রেতার অভিযোগের বৈধতা তদন্ত করে, শুধু মাত্র বৈধ অভিযোগের ক্ষেত্রেই পণ্য রিপ্লেসমেন্ট করবে\r\n\r\nপণ্যেটি শুধুমাত্র রিপ্লেসমেন্ট করা হবে, এর পরিশোধিত মূল্য কোন প্রেক্ষিতেই রিফান্ড করা হবে না\r\n\r\nযে পণ্যের ওয়্যারেন্টি সুবিধা নেই, সে সব ক্ষেত্রে ডেলিভারির ৭২ ঘন্টার পর অভিযোগ গ্রহন করা হবে না\r\n\r\nওয়্যারেন্টিযুক্ত পণ্যগুলির ক্ষেত্রে, অভিযোগ গুলি নির্দিষ্ট ওয়ারেন্টি নীতির অধীনে পড়বে এবং বিক্রয়.কম, সরবরাহকারীর দ্বারা ওয়্যারেন্টি নিশ্চিত করবে।\r\n\r\nবাংলাদেশের যেকোন জায়গায় হোম ডেলিভারি করা হয়,', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 0, NULL, NULL, NULL, 'Uttara, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 17:00:03', NULL, '2021-06-29 23:37:28', NULL, '2021-07-11 14:25:31', 11, 0, NULL, NULL, 'Basic', NULL, '516271624988248.jpg', 'uttara dhaka general other-electronics 8D পাওয়ার ব্যাংক ব্লুটুথ-Wireless Earphone Touch Bluetooth  1400 new01990572321Uttara, Dhakaসিভিসি 8.0 ডিজিটাল শব্দ কমানোর প্রযুক্তি ব্যবহার করে\r\n\r\n5.1 চিপ সহ সর্বশেষতম টিডব্লিউএস বাইনরাল স্টেরিও স্টিরিও ব্লুটুথ হেডসেট আপনাকে খুব দক্ষ ওয়্যারলেস পারফরম্যান্স দেয়।\r\n\r\n5.1 চিপ ব্যাটারি লাইফ পরিচালনা করে খুব ভাল\r\n\r\nএটি ব্লুটুথ ভি 5.1 চিপ, 10 মি সংযোগ দূরত্ব, স্থিতিশীল কর্মক্ষমতা, উচ্চ সংক্রমণ, কম খরচ এবং দৃ strong় সামঞ্জস্যতা গ্রহণ করে।\r\n\r\nঅ্যারগোনমিকভাবে অ্যারিকলে আরও আরামদায়ক ফিটের জন্য ডিজাইন করা।\r\n\r\nদ্বি-কান বিভক্ত নকশাটি একক কান পৃথকভাবে দুটি পৃথক ব্লুটুথ হেডসেটের সমতুল্য ব্যবহার করতে দেয়।\r\n\r\nচার্জিং বগিটি একটি মোবাইল ফোন স্ট্যান্ড, পোর্টেবল মোবাইল ফোন স্ট্যান্ড, অনুভূমিক এবং উল্লম্ব স্থান নির্ধারণের জন্য ব্যবহার করা যেতে পারে\r\n\r\nঅতিরিক্ত মোবাইল ফোন স্ট্যান্ড কেনার প্রয়োজন ছাড়াই সরাসরি সম্প্রচার এবং সিনেমাগুলি দেখুন।\r\n\r\nআইপিএক্স proof ওয়াটারপ্রুফ এবং সুইটপ্রুফ\r\n\r\nঘাম ছাড়াই ব্যায়াম করুন\r\n\r\nবিনোরাল বিচ্ছেদ নকশা\r\n\r\nএকক এবং বাইনোরাল ফ্রি কাটওভার\r\n\r\nভাইস হেডফোন, দ্বৈত হোস্ট সংযোগ করতে traditionalতিহ্যবাহী হোস্টটিকে সাবভার্ট করুন।\r\n\r\nচ্যানেলের বাম এবং ডান কানের ব্যবহার বিনামূল্যে free\r\n\r\nশক্তিশালী সামঞ্জস্য, আইওএস / অ্যান্ড্রয়েড সর্বজনীন, এক-বোতাম নিয়ন্ত্রণ, সহজ এবং আড়ম্বরপূর্ণ।\r\n\r\nরিটার্ন পলিসিঃ\r\n\r\nনিম্নলিখিত সমস্যার ক্ষেত্রে পণ্য রিটার্ন করা যাবেঃ\r\n\r\nক্ষতিগ্রস্ত/ভাঙ্গা পণ্য, ভুল রঙ, আকার, মাত্রা, ওজন অথবা পণ্যটি যদি বিজ্ঞাপনের বিবরণের/ছবির সাথে না মিলে।\r\n\r\nউল্লেখিত সমস্যাগুলোর ক্ষেত্রে,\r\n\r\nপণ্যটি ডেলিভারি প্রতিনিধির কাছে তাৎক্ষণিক রিটার্ন করতে হবে। অন্যথায় পণ্যটি পরবর্তীতে রিটার্ন অথবা রিপ্লেসমেন্টের জন্য বিবেচিত হবে না।\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে।\r\n\r\nরিপ্লেসমেন্ট পলিসিঃ\r\n\r\nরিপ্লেসমেন্টের আবেদন করা যাবে যদি\r\n\r\nপণ্যটি সঠিকভাবে কাজ না করে\r\n\r\nরিপ্লেসমেন্ট আবেদন অবশ্যই ডেলিভারি গ্রহণ করার সর্বোচ্চ ৭২ ঘন্টার মধ্যে আপনাকে support@bikroy এ ইমেইল করে জানাতে হবে অথবা ০৯৬০৯৫৫৫৪৪৪ নম্বরে কমপ্লেইন রেজিস্টার করতে হবে\r\n\r\nপণ্যটি বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে\r\n\r\nBikroy ক্রেতার অভিযোগের বৈধতা তদন্ত করে, শুধু মাত্র বৈধ অভিযোগের ক্ষেত্রেই পণ্য রিপ্লেসমেন্ট করবে\r\n\r\nপণ্যেটি শুধুমাত্র রিপ্লেসমেন্ট করা হবে, এর পরিশোধিত মূল্য কোন প্রেক্ষিতেই রিফান্ড করা হবে না\r\n\r\nযে পণ্যের ওয়্যারেন্টি সুবিধা নেই, সে সব ক্ষেত্রে ডেলিভারির ৭২ ঘন্টার পর অভিযোগ গ্রহন করা হবে না\r\n\r\nওয়্যারেন্টিযুক্ত পণ্যগুলির ক্ষেত্রে, অভিযোগ গুলি নির্দিষ্ট ওয়ারেন্টি নীতির অধীনে পড়বে এবং বিক্রয়.কম, সরবরাহকারীর দ্বারা ওয়্যারেন্টি নিশ্চিত করবে।\r\n\r\nবাংলাদেশের যেকোন জায়গায় হোম ডেলিভারি করা হয়,'),
(9, 'sell', 66, 'city', 6, 'agrabad', 'chattogram', 84, 'general', 2, 'electronics-gedgets', 20, 'laptop-computer', 109, 'Core i5 Laptop HP 500gb/4gb', 'core-i5-laptop-hp-500gb-4gb', NULL, NULL, NULL, NULL, NULL, 12300, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'HP 8470 Core i5 Laptop 3rd Gen in running condition with 500gb hard disk and 4gb Ram.\r\n\r\nডিসপ্লে তে হালকা সমস্যা আছে। \r\n\r\nতবে কাজে কোন সমস্যা হয় না। \r\n\r\n⭕⭕⭕Backup নাই⭕⭕⭕\r\n\r\nExchange offer available.... \r\n\r\nvisit more ADs for other models\r\n\r\nCall-01816360306 \r\n\r\nDigital Computer..\r\n\r\nAgrabad Chowmuhony ctg', NULL, 'original', 'used', '60', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Agrabad, Chattogram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 17:00:09', NULL, '2021-06-29 23:41:03', NULL, '2021-07-12 00:38:01', 42, 0, NULL, NULL, 'Basic', NULL, '913661624988463.jpg', 'agrabad chattogram general laptop-computer Core i5 Laptop HP 500gb/4gb  12300 used01990572321Agrabad, ChattogramHP 8470 Core i5 Laptop 3rd Gen in running condition with 500gb hard disk and 4gb Ram.\r\n\r\nডিসপ্লে তে হালকা সমস্যা আছে। \r\n\r\nতবে কাজে কোন সমস্যা হয় না। \r\n\r\n⭕⭕⭕Backup নাই⭕⭕⭕\r\n\r\nExchange offer available.... \r\n\r\nvisit more ADs for other models\r\n\r\nCall-01816360306 \r\n\r\nDigital Computer..\r\n\r\nAgrabad Chowmuhony ctg'),
(10, 'sell', 167, 'city', 10, 'pabna', 'rajshahi', 84, 'general', 2, 'electronics-gedgets', 20, 'laptop-computer', 110, 'ডেস্কটপ কম্পিউটার', 'n-a', NULL, NULL, NULL, NULL, NULL, 20000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '১৬ জিবি রেম, ২ জিবি গাভিসকাড  কোর i5 প্রসেসর,গিগাবাইট ৮১ মাডাবোড', NULL, 'original', 'new', '59', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Pabna, Rajshahi Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 17:00:18', NULL, '2021-06-29 23:43:35', NULL, '2021-07-12 21:33:53', 22, 0, NULL, NULL, 'Basic', NULL, '604751624988615.jpg', 'pabna rajshahi general laptop-computer ডেস্কটপ কম্পিউটার  20000 new01990572321Pabna, Rajshahi Division১৬ জিবি রেম, ২ জিবি গাভিসকাড  কোর i5 প্রসেসর,গিগাবাইট ৮১ মাডাবোড'),
(11, 'sell', 86, 'city', 10, 'uposahar', 'rajshahi', 84, 'general', 2, 'electronics-gedgets', 110, 'desktop-computers', 111, 'desktop computer', 'desktop-computer', NULL, NULL, NULL, NULL, NULL, 11000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'একমাস হলো কিনেছি সবকিছুর গ্যারান্টি আছে টাকার খুব দরকার আছে এজন্য বিক্রি করতে চাই', NULL, 'original', 'used', NULL, '01990572321', NULL, 0, 0, NULL, NULL, NULL, 'Uposahar, Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 1, 1, '2021-06-30 17:00:25', NULL, '2021-06-29 23:45:57', NULL, '2021-07-12 21:34:58', 22, 0, NULL, NULL, 'Basic', NULL, '6751624988757.jpg', 'uposahar rajshahi general desktop-computers desktop computer  11000 used01990572321Uposahar, Rajshahiএকমাস হলো কিনেছি সবকিছুর গ্যারান্টি আছে টাকার খুব দরকার আছে এজন্য বিক্রি করতে চাই'),
(12, 'sell', 107, 'city', 5, 'mohakhali', 'dhaka', 84, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 112, 'ছেলেদের ১০০% সূতি (৪ পিচ) Short pant combo offer-Aristo29', 'short-pant-combo-offer-aristo29', NULL, NULL, NULL, NULL, NULL, 1398, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo29\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\nBrand: Aristo Lifestyle \r\n\r\nAttractive design\r\n\r\nFabrication : 100% Cotton \r\n\r\nGSM : 220 \r\n\r\nGender: Men \r\n\r\nSize: 30, 32, 34, 36\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।', NULL, 'original', 'new', '78', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Mohakhali, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:31:46', NULL, '2021-07-12 22:31:46', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mohakhali dhaka general mens-clothing-accessories ??????? ???% ???? (? ???) Short pant combo offer-Aristo29  1398 new01990572321Mohakhali, Dhakaআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo29\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\nBrand: Aristo Lifestyle \r\n\r\nAttractive design\r\n\r\nFabrication : 100% Cotton \r\n\r\nGSM : 220 \r\n\r\nGender: Men \r\n\r\nSize: 30, 32, 34, 36\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।'),
(13, 'sell', 107, 'city', 5, 'mohakhali', 'dhaka', 84, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 113, 'ছেলেদের উন্নতমানের(২ পিচ)গ্যাবার্ডিন প্যান্ট+tshirt combo of', 'tshirt-combo-of', NULL, NULL, NULL, NULL, NULL, 1549, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Condition:\r\nNew\r\nItem type:\r\nPants\r\nDescription\r\nআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo12\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\n👉Twill Chinos (গ্যাবার্ডিন) প্যান্ট\r\n\r\n👉স্ট্যান্ডার্ড-কোয়ালিটি\r\n\r\n👉ফেব্রিক: 98% কটন+ 2%স্পানডেক্স\r\n\r\n👉স্কিন ফিট স্টিজ\r\n\r\n👉সাইজঃ ৩০, ৩২, ৩৪, ৩৬।\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।', NULL, 'original', 'new', '78', '01990572321', '01320325852', 0, 1, NULL, NULL, NULL, 'Mohakhali, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:33:25', NULL, '2021-07-12 22:33:25', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mohakhali dhaka general mens-clothing-accessories ??????? ??????????(? ???)??????????? ???????+tshirt combo of  1549 new0199057232101320325852Mohakhali, DhakaCondition:\r\nNew\r\nItem type:\r\nPants\r\nDescription\r\nআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo12\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\n👉Twill Chinos (গ্যাবার্ডিন) প্যান্ট\r\n\r\n👉স্ট্যান্ডার্ড-কোয়ালিটি\r\n\r\n👉ফেব্রিক: 98% কটন+ 2%স্পানডেক্স\r\n\r\n👉স্কিন ফিট স্টিজ\r\n\r\n👉সাইজঃ ৩০, ৩২, ৩৪, ৩৬।\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।'),
(14, 'sell', 107, 'city', 5, 'mohakhali', 'dhaka', 84, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 114, 'বড়দের ও বাচ্ছাদের স্টাইলিশ প্রিমিয়াম মানের পাঞ্জাবি কম্বো A', 'a', NULL, NULL, NULL, NULL, NULL, 1824, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Condition:\r\nNew\r\nItem type:\r\nTraditional Wear\r\nDescription\r\nProduct code: ALPC-202109\r\n\r\nFabrication: 100% Cotton.\r\n\r\ncolor Garneted.\r\n\r\nBrand: Aristo Lifestyle\r\n\r\nSize: \"M, L & XL and\r\n\r\n5-6y, 7-8y, 9-10y & 11-12y\"\r\n\r\n	\r\n\r\nM=Length-40 inch;    Chest-40 inch;            L=Length-42 inch;    Chest-42 inch;               XL= Length-44 inch; Chest-44 inch\r\n\r\n5-6y=Length-26 inch;    Chest-26 inch;       \r\n\r\n7-8y=Length-28 inch;    Chest-28 inch;         \r\n\r\n9-10y= Length-30 inch; Chest-30 inch  \r\n\r\n11-12y=Length-32 inch; Chest-32 inch\"', NULL, 'original', 'new', '78', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Mohakhali, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:35:28', NULL, '2021-07-12 22:35:28', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mohakhali dhaka general mens-clothing-accessories ????? ? ????????? ???????? ?????????? ????? ???????? ????? A  1824 new01990572321Mohakhali, DhakaCondition:\r\nNew\r\nItem type:\r\nTraditional Wear\r\nDescription\r\nProduct code: ALPC-202109\r\n\r\nFabrication: 100% Cotton.\r\n\r\ncolor Garneted.\r\n\r\nBrand: Aristo Lifestyle\r\n\r\nSize: \"M, L & XL and\r\n\r\n5-6y, 7-8y, 9-10y & 11-12y\"\r\n\r\n	\r\n\r\nM=Length-40 inch;    Chest-40 inch;            L=Length-42 inch;    Chest-42 inch;               XL= Length-44 inch; Chest-44 inch\r\n\r\n5-6y=Length-26 inch;    Chest-26 inch;       \r\n\r\n7-8y=Length-28 inch;    Chest-28 inch;         \r\n\r\n9-10y= Length-30 inch; Chest-30 inch  \r\n\r\n11-12y=Length-32 inch; Chest-32 inch\"'),
(15, 'sell', 107, 'city', 5, 'mohakhali', 'dhaka', 84, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 115, 'ছেলেদের ১০০% সূতি (৩ পিচ) Polo Tshirt combo offer-Aristo27', 'polo-tshirt-combo-offer-aristo27', NULL, NULL, NULL, NULL, NULL, 1499, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Condition:\r\nNew\r\nItem type:\r\nTshirts\r\nDescription\r\nআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo27\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👕👕👕👕\r\n\r\n👉মেনজ পলো টি-শার্ট\r\n\r\n👉স্ট্যান্ডার্ড-কোয়ালিটি\r\n\r\n👉ফেব্রিক: ১০০% কটন\r\n\r\n👉ফেব্রিকেশন: ১৯০ GSM\r\n\r\n👉সাইজঃ M, L, XL\r\n\r\n➡️M: লেন্থ - ২৭ ইঞ্চি, চেস্ট - ৩৮ ইঞ্চি\r\n\r\n➡️L: লেন্থ - ২৮ইঞ্চি, চেস্ট - ৪০ ইঞ্চি\r\n\r\n➡️XL: লেন্থ - ২৯ ইঞ্চি, চেস্ট - ৪২ ইঞ্চি\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।\r\n\r\n👕👖শোরুমের জন্য পাইকারি অর্ডার করতে সরাসরি কল করুন', NULL, 'original', 'new', '76', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Mohakhali, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:37:38', NULL, '2021-07-12 22:37:38', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mohakhali dhaka general mens-clothing-accessories ??????? ???% ???? (? ???) Polo Tshirt combo offer-Aristo27  1499 new01990572321Mohakhali, DhakaCondition:\r\nNew\r\nItem type:\r\nTshirts\r\nDescription\r\nআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo27\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👕👕👕👕\r\n\r\n👉মেনজ পলো টি-শার্ট\r\n\r\n👉স্ট্যান্ডার্ড-কোয়ালিটি\r\n\r\n👉ফেব্রিক: ১০০% কটন\r\n\r\n👉ফেব্রিকেশন: ১৯০ GSM\r\n\r\n👉সাইজঃ M, L, XL\r\n\r\n➡️M: লেন্থ - ২৭ ইঞ্চি, চেস্ট - ৩৮ ইঞ্চি\r\n\r\n➡️L: লেন্থ - ২৮ইঞ্চি, চেস্ট - ৪০ ইঞ্চি\r\n\r\n➡️XL: লেন্থ - ২৯ ইঞ্চি, চেস্ট - ৪২ ইঞ্চি\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।\r\n\r\n👕👖শোরুমের জন্য পাইকারি অর্ডার করতে সরাসরি কল করুন'),
(16, 'sell', 107, 'city', 5, 'mohakhali', 'dhaka', 84, 'general', 5, 'fashion-beauty', 42, 'mens-clothing-accessories', 116, 'ছেলেদের ১০০% সূতি (৩ পিচ) Joggers combo offer-Aristo02', 'joggers-combo-offer-aristo02', NULL, NULL, NULL, NULL, NULL, 1649, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'আমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo02\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\nBrand: Aristo Lifestyle \r\n\r\nAttractive design\r\n\r\nFabrication : 100% Cotton \r\n\r\nGSM : 220 \r\n\r\nGender: Men \r\n\r\nSize: 30, 32, 34, 36\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।', NULL, 'original', 'new', '78', '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Mohakhali, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:39:40', NULL, '2021-07-12 22:39:40', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mohakhali dhaka general mens-clothing-accessories ??????? ???% ???? (? ???) Joggers combo offer-Aristo02  1649 new01990572321Mohakhali, Dhakaআমাদের ক্রেতা সুরক্ষা সুবিধা নিতে দয়া করে আপনি \"অর্ডার অনলাইন\" ফর্মের মাধ্যমে এই পণ্যটির অর্ডার করুন।\r\n\r\n চ্যাট অথবা ফোন কলের মাধ্যমে অর্ডার করলে বিক্রয় ডট কম এর সুরক্ষা নীতির আওতায় পড়বে না।\r\n\r\n======================================Combo code: Aristo02\r\n\r\nএই ঈদ এ সেরা #অফার Aristo Lifestyle এ\r\n\r\nআরামদায়ক মানসম্মত Polo T-Shirt পাচ্ছেন আমাদের কাছে। রঙ এর গ্যারান্টি এবং কোয়ালিটি খারাপ হলে রিটান সুবিধা।\r\n\r\nঅর্ডার করতে Inbox করুন। \r\n\r\n👖👖👖👖\r\n\r\nBrand: Aristo Lifestyle \r\n\r\nAttractive design\r\n\r\nFabrication : 100% Cotton \r\n\r\nGSM : 220 \r\n\r\nGender: Men \r\n\r\nSize: 30, 32, 34, 36\r\n\r\n📣 ডেলিভারি গ্রহণ করার পর কোন ধরণের সমস্যার সম্মুখীন হলে ৭ দিনের মধ্যে পণ্য পরিবর্তন করতে পারবেন।'),
(17, 'rent', 188, 'city', 10, 'rajpara', 'rajshahi', 84, 'property', 3, 'property', 33, 'apartment-flats', 117, '1000 sft Flat @ Raninagr Hadirmor', '1000-sft-flat-raninagr-hadirmor', NULL, NULL, NULL, NULL, 'Full-Furnished', 4000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'PROJECT AT A GLANCE:\r\n\r\nProject Name : ”SOUTH BREEZE” \r\n\r\nAddress : Raninagar, beside Khademul Islam Jame Mosjid, Rajshahi.\r\n\r\nLand : 5.7 katha land with 60 feet Road (Old Natore Road). . \r\n\r\nBuilding Height : \r\n\r\n10 Storied, Ground Floor + 09 Floors).\r\n\r\nBuilding Description: \r\n\r\nGround Floor for Car parking (10 number of Parking).\r\n\r\n1st to 9th Floor for Residential Apartments. \r\n\r\n3 Apartments per Floor. \r\n\r\n✅ Type: C-1000 sft \r\n\r\n(3 Bed rooms \r\n\r\n3 Verandas\r\n\r\n2 Bathrooms\r\n\r\nLiving, Dining & kitchen). \r\n\r\nFire fighting arrangement for the building. \r\n\r\nClose Circuit camera, \r\n\r\nInternet and wifi support. \r\n\r\nWater Treatment arrangement. \r\n\r\nStandby Generator, \r\n\r\nSub Station, \r\n\r\n02 Passenger Lifts & 2 stairs \r\n\r\nin this Building. \r\n\r\nOnly few number of Apartments are available to sale. \r\n\r\nFor more information \r\n\r\nplease visit our project or \r\n\r\nUrbanix Properties Ltd\r\n\r\nRaninagar, Khademul Islam Jame Mosjid 6100 \r\n\r\nRajshahi, Rajshahi Division, Bangladesh', NULL, NULL, 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Rani Nagar, Rajshahi', NULL, NULL, NULL, NULL, '3', '2', NULL, NULL, '1000', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:42:39', NULL, '2021-07-12 22:42:39', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'rajpara rajshahi property apartment-flats 1000 sft Flat @ Raninagr Hadirmor  Full-Furnished4000 new01990572321Rani Nagar, RajshahiPROJECT AT A GLANCE:\r\n\r\nProject Name : ”SOUTH BREEZE” \r\n\r\nAddress : Raninagar, beside Khademul Islam Jame Mosjid, Rajshahi.\r\n\r\nLand : 5.7 katha land with 60 feet Road (Old Natore Road). . \r\n\r\nBuilding Height : \r\n\r\n10 Storied, Ground Floor + 09 Floors).\r\n\r\nBuilding Description: \r\n\r\nGround Floor for Car parking (10 number of Parking).\r\n\r\n1st to 9th Floor for Residential Apartments. \r\n\r\n3 Apartments per Floor. \r\n\r\n✅ Type: C-1000 sft \r\n\r\n(3 Bed rooms \r\n\r\n3 Verandas\r\n\r\n2 Bathrooms\r\n\r\nLiving, Dining & kitchen). \r\n\r\nFire fighting arrangement for the building. \r\n\r\nClose Circuit camera, \r\n\r\nInternet and wifi support. \r\n\r\nWater Treatment arrangement. \r\n\r\nStandby Generator, \r\n\r\nSub Station, \r\n\r\n02 Passenger Lifts & 2 stairs \r\n\r\nin this Building. \r\n\r\nOnly few number of Apartments are available to sale. \r\n\r\nFor more information \r\n\r\nplease visit our project or \r\n\r\nUrbanix Properties Ltd\r\n\r\nRaninagar, Khademul Islam Jame Mosjid 6100 \r\n\r\nRajshahi, Rajshahi Division, Bangladesh');
INSERT INTO `prd_master` (`pk_no`, `ad_type`, `area_id`, `city_division`, `city_division_pk_no`, `area_url_slug`, `city_division_url_slug`, `customer_pk_no`, `main_category`, `f_cat_pk_no`, `cat_url_slug`, `f_scat_pk_no`, `scat_url_slug`, `code`, `ad_title`, `url_slug`, `f_brand`, `brand_name`, `f_model`, `model_name`, `prod_feature`, `price`, `price_unit`, `is_negotiable`, `price_to`, `vacanci`, `business_function`, `deadline`, `company_name`, `logo`, `description`, `edition`, `authenticity`, `using_condition`, `prod_type`, `mobile1`, `mobile2`, `is_hide_mobile1`, `is_hide_mobile2`, `model_year`, `registration_year`, `transmission`, `address`, `body_type`, `fuel_type`, `engine_capacity`, `kilometers_run`, `bed_no`, `bath_no`, `land_size`, `land_unit`, `house_size`, `house_unit`, `property_address`, `flat_size`, `gender`, `user_name`, `is_terms_condition`, `comments`, `is_active`, `approved_by`, `approved_at`, `created_by`, `created_at`, `updated_by`, `updated_at`, `total_view`, `is_delete`, `deleted_by`, `deleted_at`, `promotion`, `promotion_to`, `thumb`, `search_key`) VALUES
(18, 'rent', 8, 'city', 5, 'mirpur', 'dhaka', 84, 'property', 3, 'property', 33, 'apartment-flats', 118, 'আলাব্দীরটেক (সিদ্দিক নগর) পল্লবী। ( মিরপুর ডিওএইচএস এর পূর্ব', 'n-a', NULL, NULL, NULL, NULL, 'Full-Furnished', 3200, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Project Name: AK Haque Tower\r\n\r\nProject Address: Alabdirtek (Siddik Nagar), Pallabi.\r\n\r\nHeight: 10 Storied(G+9).\r\n\r\nProject : Residential.\r\n\r\nLand Area: 7 Katha.\r\n\r\nApartment Size: 1400 Sft.\r\n\r\nUnite per Floor - 3\r\n\r\nRoad - 20 Feet.\r\n\r\nApartment Contains:\r\n\r\n3 Bed Room, 3 Toilet, 4 Veranda, Living, Drawing,  Dining,  Kitchen.\r\n\r\nFeatures:\r\n\r\n1. Super quality imported Lift shall be provided.\r\n\r\n2. Generator connection for operating Lift, Water pump, Lighting in the apartments and common places.\r\n\r\n3. Wide main entry and Driveway with decorative security gate.\r\n\r\n4. Lift, Generator, Sub- Station, 24 Hour Security.\r\n\r\n5. Spacious Car Parking.\r\n\r\n6. Earth Quake resistance 7.5 on Richter scale.\r\n\r\n7. 30% Down-payment. 70% monthly Easy Installment.\r\n\r\n8. Ensure best quality Construction materials.\r\n\r\n9. All Utility Connections are Available.\r\n\r\n*School, College, Madrasah, Mosque, Bazar are very near to this project.\r\n\r\n* We are cordially invite you to visit our project.\r\n\r\nOur Office Address:\r\n\r\nAK Builders Ltd.\r\n\r\n17/2/1, Alabdirtek, Dhaka Cantonment, Dhaka.\r\n\r\nFacebook Page- https://www.facebook/AKBuildersLtd', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Mirpur, Dhaka', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, '1400', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:45:23', NULL, '2021-07-12 22:45:23', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mirpur dhaka property apartment-flats ??????????? (??????? ???) ??????? ( ?????? ???????? ?? ?????  Full-Furnished3200 new01990572321Mirpur, DhakaProject Name: AK Haque Tower\r\n\r\nProject Address: Alabdirtek (Siddik Nagar), Pallabi.\r\n\r\nHeight: 10 Storied(G+9).\r\n\r\nProject : Residential.\r\n\r\nLand Area: 7 Katha.\r\n\r\nApartment Size: 1400 Sft.\r\n\r\nUnite per Floor - 3\r\n\r\nRoad - 20 Feet.\r\n\r\nApartment Contains:\r\n\r\n3 Bed Room, 3 Toilet, 4 Veranda, Living, Drawing,  Dining,  Kitchen.\r\n\r\nFeatures:\r\n\r\n1. Super quality imported Lift shall be provided.\r\n\r\n2. Generator connection for operating Lift, Water pump, Lighting in the apartments and common places.\r\n\r\n3. Wide main entry and Driveway with decorative security gate.\r\n\r\n4. Lift, Generator, Sub- Station, 24 Hour Security.\r\n\r\n5. Spacious Car Parking.\r\n\r\n6. Earth Quake resistance 7.5 on Richter scale.\r\n\r\n7. 30% Down-payment. 70% monthly Easy Installment.\r\n\r\n8. Ensure best quality Construction materials.\r\n\r\n9. All Utility Connections are Available.\r\n\r\n*School, College, Madrasah, Mosque, Bazar are very near to this project.\r\n\r\n* We are cordially invite you to visit our project.\r\n\r\nOur Office Address:\r\n\r\nAK Builders Ltd.\r\n\r\n17/2/1, Alabdirtek, Dhaka Cantonment, Dhaka.\r\n\r\nFacebook Page- https://www.facebook/AKBuildersLtd'),
(19, 'rent', 101, 'city', 5, 'basundhara', 'dhaka', 84, 'property', 3, 'property', 33, 'apartment-flats', 119, '4 Katha South Face Ready Plot for Sale at Bashundhara, Block', '4-katha-south-face-ready-plot-for-sale-at-bashundhara-block', NULL, NULL, NULL, NULL, 'Full-Furnished', 8500000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'বসুন্ধারা আবাসিক এলাকায় ৩০০ সিরিয়ালে ৪ কাঠা দক্ষিন মুখী প্লট কাঠা প্রতি মাত্র ৮৫ লক্ষ টাকায় বিক্রি হবে । জমির সকল কাগজাদি নির্ভূল এবং সঠিক। \r\n\r\nআর দেরি না করে এখনি যোগাযোগ করুন- \r\n\r\nবে গার্ডেন প্রোপার্টিজ \r\n\r\nসায়মন পয়েন্ট ( লেভেল ৪) \r\n\r\nক-৩, জগন্নাথপুর, বসুন্ধরা মেইন গেট\r\n\r\nভাটারা, ঢাকা ১২২৯', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Basundhara, Dhaka', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, '4.0', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:46:51', NULL, '2021-07-12 22:46:51', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'basundhara dhaka property apartment-flats 4 Katha South Face Ready Plot for Sale at Bashundhara, Block  Full-Furnished8500000 new01990572321Basundhara, Dhakaবসুন্ধারা আবাসিক এলাকায় ৩০০ সিরিয়ালে ৪ কাঠা দক্ষিন মুখী প্লট কাঠা প্রতি মাত্র ৮৫ লক্ষ টাকায় বিক্রি হবে । জমির সকল কাগজাদি নির্ভূল এবং সঠিক। \r\n\r\nআর দেরি না করে এখনি যোগাযোগ করুন- \r\n\r\nবে গার্ডেন প্রোপার্টিজ \r\n\r\nসায়মন পয়েন্ট ( লেভেল ৪) \r\n\r\nক-৩, জগন্নাথপুর, বসুন্ধরা মেইন গেট\r\n\r\nভাটারা, ঢাকা ১২২৯'),
(20, 'rent', 101, 'city', 5, 'basundhara', 'dhaka', 84, 'property', 3, 'property', 33, 'apartment-flats', 120, '1151sft ongoing Flat @ Near Mirpur DOHS chattar!!!!', '1151sft-ongoing-flat-near-mirpur-dohs-chattar', NULL, NULL, NULL, NULL, 'Full-Furnished', 3200, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Project Name: AK Jabaly Rahmat Tower (ongoing)\r\n\r\nProject Address: Aziz Market, Dhaka Cantonment, Pallabi.\r\n\r\nHeight: 10 Storied(G+9).\r\n\r\nProject : Residential.\r\n\r\nLand Area: 8 Katha.\r\n\r\nApartment Size: 1151sft.\r\n\r\nPer Floor unite - 4\r\n\r\nRoad - 20 Feet.\r\n\r\nApartment Contains:\r\n\r\n3 Bed Room,  3 Toilet, 3 Veranda, Drawing,  Dining, Kitchen.\r\n\r\nFeatures:\r\n\r\n1. Super quality imported Lift shall be provided.\r\n\r\n2. Generator connection for operating Lift, Water pump, Lighting in the apartments and common places.\r\n\r\n3. Wide main entry and Driveway with decorative security gate.\r\n\r\n4. Lift, Generator, Sub- Station, 24 Hour Security.\r\n\r\n5. Spacious Car Parking.\r\n\r\n6. Earth Quake resistance 7.5 on Richter scale.\r\n\r\n7. 30% Down-payment (You will get Land registration). Rest 70% monthly Easy Installment.\r\n\r\n8. Ensure best quality Construction materials.\r\n\r\n9. All Utility Connections are Available.\r\n\r\n*School, College, Madrasah, Mosque, Bazar are very near to this project.\r\n\r\n*We cordially invite you to visit our project and office as well.\r\n\r\nOur Office Address:\r\n\r\nAK Builders Ltd.\r\n\r\n17/2/1, Alabdirtekt, Dhaka Cantonment, Pallabi.\r\n\r\nFacebook Page- https://www.facebook/AKBuildersLtd.', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Basundhara, Dhaka', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, '1151', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:48:12', NULL, '2021-07-12 22:48:12', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'basundhara dhaka property apartment-flats 1151sft ongoing Flat @ Near Mirpur DOHS chattar!!!!  Full-Furnished3200 new01990572321Basundhara, DhakaProject Name: AK Jabaly Rahmat Tower (ongoing)\r\n\r\nProject Address: Aziz Market, Dhaka Cantonment, Pallabi.\r\n\r\nHeight: 10 Storied(G+9).\r\n\r\nProject : Residential.\r\n\r\nLand Area: 8 Katha.\r\n\r\nApartment Size: 1151sft.\r\n\r\nPer Floor unite - 4\r\n\r\nRoad - 20 Feet.\r\n\r\nApartment Contains:\r\n\r\n3 Bed Room,  3 Toilet, 3 Veranda, Drawing,  Dining, Kitchen.\r\n\r\nFeatures:\r\n\r\n1. Super quality imported Lift shall be provided.\r\n\r\n2. Generator connection for operating Lift, Water pump, Lighting in the apartments and common places.\r\n\r\n3. Wide main entry and Driveway with decorative security gate.\r\n\r\n4. Lift, Generator, Sub- Station, 24 Hour Security.\r\n\r\n5. Spacious Car Parking.\r\n\r\n6. Earth Quake resistance 7.5 on Richter scale.\r\n\r\n7. 30% Down-payment (You will get Land registration). Rest 70% monthly Easy Installment.\r\n\r\n8. Ensure best quality Construction materials.\r\n\r\n9. All Utility Connections are Available.\r\n\r\n*School, College, Madrasah, Mosque, Bazar are very near to this project.\r\n\r\n*We cordially invite you to visit our project and office as well.\r\n\r\nOur Office Address:\r\n\r\nAK Builders Ltd.\r\n\r\n17/2/1, Alabdirtekt, Dhaka Cantonment, Pallabi.\r\n\r\nFacebook Page- https://www.facebook/AKBuildersLtd.'),
(21, 'rent', 96, 'city', 5, 'gulshan', 'dhaka', 84, 'property', 3, 'property', 33, 'apartment-flats', 121, 'Luxurious fully furnished apartment available for rent at Gu', 'luxurious-fully-furnished-apartment-available-for-rent-at-gu', NULL, NULL, NULL, NULL, 'Full-Furnished', 120000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Features\r\nFull-Furnished\r\n\r\nDescription\r\nProperty Size: 2400 Sq Ft\r\n\r\nBedroom: 03\r\n\r\nBathroom: 03\r\n\r\nParking: 01\r\n\r\nFloor: 3rd floor\r\n\r\nLift: 02\r\n\r\nYear Built: 2016\r\n\r\nTotal Unit: 20 unit\r\n\r\nMonthly Rent: BDT 120000\r\n\r\n24/7 Security Services\r\n\r\nTo know more details please feel free to call us or WhatsApp', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 1, NULL, NULL, NULL, 'Gulshan, Dhaka', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, '2400', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:49:21', NULL, '2021-07-12 22:49:21', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'gulshan dhaka property apartment-flats Luxurious fully furnished apartment available for rent at Gu  Full-Furnished120000 new01990572321Gulshan, DhakaFeatures\r\nFull-Furnished\r\n\r\nDescription\r\nProperty Size: 2400 Sq Ft\r\n\r\nBedroom: 03\r\n\r\nBathroom: 03\r\n\r\nParking: 01\r\n\r\nFloor: 3rd floor\r\n\r\nLift: 02\r\n\r\nYear Built: 2016\r\n\r\nTotal Unit: 20 unit\r\n\r\nMonthly Rent: BDT 120000\r\n\r\n24/7 Security Services\r\n\r\nTo know more details please feel free to call us or WhatsApp'),
(22, 'rent', 8, 'city', 5, 'mirpur', 'dhaka', 84, 'property', 3, 'property', 33, 'apartment-flats', 122, 'Full Ready New Brand flat @1400 sft', 'full-ready-new-brand-flat-1400-sft', NULL, NULL, NULL, NULL, NULL, 6600000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Address:\r\n60 feet, Amtola,( 60 feet from only 20goza Distance goze\r\nBeds:\r\n3\r\nBaths:\r\n3\r\nSize:\r\n1,400 sqft\r\nDescription\r\nSize- 1400 sft flat\r\n\r\nLocation - 50 goze distance in 60 feet road AmtolaMIRPUR,  Dhaka. \r\n\r\nFloor - 3rd floor \r\n\r\nStoried- 10 storied building \r\n\r\nBed - 3\r\n\r\nBath-3\r\n\r\nVeranda   -2\r\n\r\nOne big kitchen\r\n\r\nDrawing,  Dining\r\n\r\nCarparking \r\n\r\nLift- 8 person Lift\r\n\r\nGenerator\r\n\r\nSubstation\r\n\r\n আধুনিক ফ্ল্যাট, আধুনিক ফিটিংস এবং নান্দনিক ইন্টোরিয়ার ডিজাইনের ফ্ল্যাটগুলো কে করে তুলেছে  আরো আকর্ষনীয়, চোখ জুড়ানো,  খোলামেলা  ও আলোবাতাসে পরিপূর্ণ এ ফ্ল্যাট থেকে মিরপুর ৬০ ফিট একেবারেই সন্নিকটে এবং ১, ২, ১০, কাজীপাড়া,  শেওড়াপাড়া আগারগাঁও প্রশাসনিক এরিয়ায় যাতায়াতের চমৎকার সুব্যাবস্থা রয়েছে হাতের নাগালেই  থাকবে নাগরিক  জীবনের সব সুবিধা। নিজের একটি বাড়ির স্বপ্ন কার না থাকে? আধুনিক ফ্ল্যাটগুলোই হতে পারে আপনার স্বপ্ন পুরনের প্রথম ধাপ \r\n\r\n1350বর্গফুট ফ্ল্যাট \r\n\r\nদক্ষিণমুখী\r\n\r\n3 ইউনিটের বাড়ি \r\n\r\n চতুর্থ তলায় 1টি ফ্ল্যাট বিক্রয় হইবে।\r\n\r\nআপনার চারিপাশে যা থাকছে\r\n\r\n১। মনিপুর স্কুল\r\n\r\n২। খাদেমূল কোরআন মাদ্রাসা।\r\n\r\n৩। কসমোপলিটান স্কুল \r\n\r\n৪।মনিপুর প্রাইমারী স্কুল \r\n\r\n৫। মেট্রোরেল স্টোপেজ\r\n\r\n৬। আগারগাঁও প্রশাসনিক এরিয়া\r\n\r\n৭। মিরপুর কলেজ ও বিশ্ববিদ্যালয় \r\n\r\n৮। হার্ট ফাউন্ডেশন হাসপাতাল \r\n\r\n৯। হৃদরোগ ইন্সটিটিউট হাসপাতাল\r\n\r\n১০। চক্ষু হসপিটাল \r\n\r\n১১। পঙ্গু হাসপাতাল\r\n\r\n১২। নিউরো সাইন্স হসপিটাল', NULL, 'original', 'new', NULL, '01990572321', NULL, 0, 0, NULL, NULL, NULL, 'Mirpur, Dhaka', NULL, NULL, NULL, NULL, '3', '3', NULL, NULL, '1400', NULL, NULL, NULL, NULL, 'rabin', 1, NULL, 0, NULL, NULL, NULL, '2021-07-12 22:51:14', NULL, '2021-07-12 22:51:14', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mirpur dhaka property apartment-flats Full Ready New Brand flat @1400 sft  6600000 new01990572321Mirpur, DhakaAddress:\r\n60 feet, Amtola,( 60 feet from only 20goza Distance goze\r\nBeds:\r\n3\r\nBaths:\r\n3\r\nSize:\r\n1,400 sqft\r\nDescription\r\nSize- 1400 sft flat\r\n\r\nLocation - 50 goze distance in 60 feet road AmtolaMIRPUR,  Dhaka. \r\n\r\nFloor - 3rd floor \r\n\r\nStoried- 10 storied building \r\n\r\nBed - 3\r\n\r\nBath-3\r\n\r\nVeranda   -2\r\n\r\nOne big kitchen\r\n\r\nDrawing,  Dining\r\n\r\nCarparking \r\n\r\nLift- 8 person Lift\r\n\r\nGenerator\r\n\r\nSubstation\r\n\r\n আধুনিক ফ্ল্যাট, আধুনিক ফিটিংস এবং নান্দনিক ইন্টোরিয়ার ডিজাইনের ফ্ল্যাটগুলো কে করে তুলেছে  আরো আকর্ষনীয়, চোখ জুড়ানো,  খোলামেলা  ও আলোবাতাসে পরিপূর্ণ এ ফ্ল্যাট থেকে মিরপুর ৬০ ফিট একেবারেই সন্নিকটে এবং ১, ২, ১০, কাজীপাড়া,  শেওড়াপাড়া আগারগাঁও প্রশাসনিক এরিয়ায় যাতায়াতের চমৎকার সুব্যাবস্থা রয়েছে হাতের নাগালেই  থাকবে নাগরিক  জীবনের সব সুবিধা। নিজের একটি বাড়ির স্বপ্ন কার না থাকে? আধুনিক ফ্ল্যাটগুলোই হতে পারে আপনার স্বপ্ন পুরনের প্রথম ধাপ \r\n\r\n1350বর্গফুট ফ্ল্যাট \r\n\r\nদক্ষিণমুখী\r\n\r\n3 ইউনিটের বাড়ি \r\n\r\n চতুর্থ তলায় 1টি ফ্ল্যাট বিক্রয় হইবে।\r\n\r\nআপনার চারিপাশে যা থাকছে\r\n\r\n১। মনিপুর স্কুল\r\n\r\n২। খাদেমূল কোরআন মাদ্রাসা।\r\n\r\n৩। কসমোপলিটান স্কুল \r\n\r\n৪।মনিপুর প্রাইমারী স্কুল \r\n\r\n৫। মেট্রোরেল স্টোপেজ\r\n\r\n৬। আগারগাঁও প্রশাসনিক এরিয়া\r\n\r\n৭। মিরপুর কলেজ ও বিশ্ববিদ্যালয় \r\n\r\n৮। হার্ট ফাউন্ডেশন হাসপাতাল \r\n\r\n৯। হৃদরোগ ইন্সটিটিউট হাসপাতাল\r\n\r\n১০। চক্ষু হসপিটাল \r\n\r\n১১। পঙ্গু হাসপাতাল\r\n\r\n১২। নিউরো সাইন্স হসপিটাল'),
(23, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 73, 'general', 104, 'mobiles', 21, 'mobile-phones', 123, 'Samsung Galaxy A7 RAM,4- ROM 64 (Used)', 'samsung-galaxy-a7-ram-4-rom-64-used', 1, 'Samsung', NULL, NULL, 'Camera, Dual SIM, Physical keyboard', 50000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Condition:\r\nUsed\r\nBrand:\r\nSamsung\r\nModel:\r\nGalaxy A7\r\nEdition:\r\nRAM,4- ROM 64\r\nAuthenticity:\r\nOriginal\r\nFeatures\r\nTouch screen\r\nফোন একদম ফ্রেস,এক হাতে চালানো, অরজিনাল চার্জার', 'RAM,4- ROM 64', 'original', 'new', NULL, '01990572321', NULL, 0, 0, NULL, NULL, NULL, 'Narayanganj, Dhaka Division', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rony Mia', 1, NULL, 1, 1, '2021-07-12 17:02:02', NULL, '2021-07-12 22:59:50', NULL, '2021-07-12 23:04:01', 5, 0, NULL, NULL, 'Basic', NULL, '272241626109190.jpg', 'mirpur dhaka general mobile-phones Samsung Galaxy A7 RAM,4- ROM 64 (Used) Samsung Camera, Dual SIM, Physical keyboard50000 new01990572321Narayanganj, Dhaka DivisionCondition:\r\nUsed\r\nBrand:\r\nSamsung\r\nModel:\r\nGalaxy A7\r\nEdition:\r\nRAM,4- ROM 64\r\nAuthenticity:\r\nOriginal\r\nFeatures\r\nTouch screen\r\nফোন একদম ফ্রেস,এক হাতে চালানো, অরজিনাল চার্জার'),
(24, 'sell', 31, 'city', 5, 'jatrabari', 'dhaka', 19, 'property', 3, 'property', 30, 'houses', 124, 'its 3 room flat', 'its-3-room-flat', NULL, NULL, NULL, NULL, 'Full-Furnished', 50000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'this is demo data here.this is demo data here.this is demo data here.this is demo data here.this is demo data here.', NULL, 'original', 'new', NULL, '01916962118', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14000', 'katha', NULL, NULL, NULL, 'Md Omit Hasan', 1, NULL, 0, NULL, NULL, NULL, '2022-06-20 22:45:28', NULL, '2022-06-21 20:38:55', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'jatrabari dhaka property houses its 3 room flat  Full-Furnished50000 new01916962118Dhakathis is demo data here.this is demo data here.this is demo data here.this is demo data here.this is demo data here.'),
(25, 'sell', 8, 'city', 5, 'mirpur', 'dhaka', 19, 'general', 104, 'mobiles', 109, 'mobile-phone-services', 125, 'Samsung Galaxy S 22 ultra 5g', 'samsung-galaxy-s-22-ultra-5g', NULL, NULL, NULL, NULL, NULL, 15000, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Samsung Galaxy S 22 ultra 5gSamsung Galaxy S 22 ultra 5gSamsung Galaxy S 22 ultra 5g', NULL, 'original', 'new', NULL, '01916962118', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md Omit Hasan', 1, NULL, 0, NULL, NULL, NULL, '2022-06-20 22:55:06', NULL, '2022-06-20 22:55:06', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'mirpur dhaka general mobile-phone-services Samsung Galaxy S 22 ultra 5g  15000 new01916962118DhakaSamsung Galaxy S 22 ultra 5gSamsung Galaxy S 22 ultra 5gSamsung Galaxy S 22 ultra 5g'),
(26, 'jobs', 27, 'city', 5, 'banglamotor', 'dhaka', 19, 'jobs', 7, 'jobs', 119, 'office-admin', 126, 'Samsung Galaxy Note 8', 'samsung-galaxy-note-8', NULL, NULL, NULL, NULL, NULL, 25000, NULL, NULL, 35000, NULL, NULL, NULL, 'grameenzone', '49612.jpg', 'Samsung Galaxy Note 8Samsung Galaxy Note 8Samsung Galaxy Note 8Samsung Galaxy Note 8', NULL, NULL, NULL, NULL, '01916962118', NULL, 0, 0, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md Omit Hasan', 1, NULL, 0, NULL, NULL, NULL, '2022-06-21 23:09:08', NULL, '2022-06-21 23:09:08', 0, 0, NULL, NULL, 'Basic', NULL, NULL, 'banglamotor dhaka jobs office-admin Samsung Galaxy Note 8  25000grameenzone01916962118DhakaSamsung Galaxy Note 8Samsung Galaxy Note 8Samsung Galaxy Note 8Samsung Galaxy Note 8');

--
-- Triggers `prd_master`
--
DROP TRIGGER IF EXISTS `after_prd_master_delete`;
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
DROP TRIGGER IF EXISTS `after_prd_master_insert`;
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
DROP TRIGGER IF EXISTS `after_prd_master_update`;
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
DROP TRIGGER IF EXISTS `before_prd_master_insert`;
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
DROP TRIGGER IF EXISTS `before_prd_master_update`;
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

DROP TABLE IF EXISTS `prd_model`;
CREATE TABLE IF NOT EXISTS `prd_model` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL COMMENT 'subcategory from category table\r\n',
  `brand_pk_no` int(10) DEFAULT NULL,
  `name` varchar(124) DEFAULT NULL,
  `name_bn` varchar(124) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '0',
  `order_id` int(10) DEFAULT '0',
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
DROP TRIGGER IF EXISTS `before_prd_brand_insert`;
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
DROP TRIGGER IF EXISTS `before_prd_brand_update`;
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

DROP TABLE IF EXISTS `prd_reports`;
CREATE TABLE IF NOT EXISTS `prd_reports` (
  `pk_no` int(11) NOT NULL,
  `prod_pk_no` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `message` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'unseen =0, seen = 1, replied = 2'
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

DROP TABLE IF EXISTS `prd_type`;
CREATE TABLE IF NOT EXISTS `prd_type` (
  `pk_no` int(11) NOT NULL,
  `cat_pk_no` int(10) DEFAULT NULL,
  `scat_pk_no` int(10) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
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
DROP TRIGGER IF EXISTS `before_prd_type_insert`;
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
DROP TRIGGER IF EXISTS `before_prd_type_update`;
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

DROP TABLE IF EXISTS `prod_job_preference`;
CREATE TABLE IF NOT EXISTS `prod_job_preference` (
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

--
-- Dumping data for table `prod_job_preference`
--

INSERT INTO `prod_job_preference` (`pk_no`, `prod_pk_no`, `mini_qualification`, `req_expriance`, `edu_specialization`, `receive_applications_via`, `skill`, `max_age`, `pref_gender`, `application_requirements`, `role_designation`, `total_vacancies`, `deadline`, `business_function`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, '2008-06-06', 'contractual', '2020-12-02 16:26:51', '2020-12-02 16:26:51', 2, NULL),
(2, 9, 'post_graduate', '28', 'others', NULL, 'Animi quisquam neque ex labore mollit', 17, NULL, NULL, NULL, 83, '1991-03-21', 'contractual', '2020-12-02 16:31:16', '2020-12-02 16:31:16', 2, NULL),
(3, 10, 'ssc', '10', 'medicine', NULL, 'Ullamco iusto minus ducimus molestiae dicta exercitationem', 61, NULL, NULL, 'Et repellendus Soluta id quas eum minima sint', 16, '2013-02-28', 'security', '2020-12-02 17:01:44', '2020-12-02 17:01:44', 2, NULL),
(4, 7, 'high_school', '3', 'human_resources', 'dashboard', 'test skill', 30, 'any', NULL, 'Voluptatibus cumque in eum cupiditate dolore et impedit vol', 56, '1973-05-27', 'administration', '2020-12-02 17:09:04', '2020-12-06 16:38:26', 2, 2),
(5, 1, 'graduate', '4', 'marketing_sales', 'dashboard', 'Computer', 32, 'male', NULL, 'Required work experience (years):', 3, '2020-12-26', 'accounting_finance', '2020-12-12 20:46:49', '2020-12-12 20:46:49', 3, NULL),
(6, 2, 'primary_school', '4', 'business_management', 'dashboard', 'Required work experience', 35, 'male', NULL, 'স্পেশাল গার্ড', 4, '2020-12-25', 'it_telecom', '2020-12-12 20:53:59', '2020-12-12 20:53:59', 3, NULL),
(8, 35, 'ssc', NULL, 'mass_comm', 'dashboard', NULL, NULL, NULL, NULL, 'Test', 4, '2020-12-25', 'operations', '2020-12-24 20:19:58', '2020-12-24 20:19:58', 6, NULL),
(9, 438, 'diploma', '1', 'others', 'dashboard', 'Skill Requirements for Digital Marketing & SEO Expert', 30, 'male', NULL, 'Digital Marketing Manager', 1, '2021-01-29', 'it_telecom', '2021-01-24 00:31:58', '2021-01-24 00:31:58', 51, NULL),
(10, 439, 'high_school', '0', 'others', 'phone_number_url', NULL, 40, 'male', NULL, 'manager', 0, '2021-01-31', 'security', '2021-01-24 13:08:36', '2021-01-24 13:08:36', 51, NULL),
(11, 440, 'high_school', '0', 'others', 'dashboard', NULL, NULL, 'any', NULL, 'চেকিং', 4, '2021-01-02', 'security', '2021-01-24 15:13:31', '2021-01-24 15:13:31', 51, NULL),
(12, 441, 'primary_school', '0', 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'ম্যানেজার', 1, '2021-01-21', 'security', '2021-01-24 15:19:44', '2021-01-24 15:19:44', 51, NULL),
(13, 442, 'primary_school', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'নিরাপত্তা কর্মী', 1, '2001-01-31', 'security', '2021-01-24 15:23:15', '2021-01-24 15:23:15', 51, NULL),
(14, 443, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'প্রিমিয়াম সিকিউরিটি', 1, '2021-01-31', 'security', '2021-01-24 15:26:51', '2021-01-24 15:26:51', 51, NULL),
(15, 444, 'high_school', '4', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'গার্ড', 1, '2021-01-31', 'security', '2021-01-24 15:31:04', '2021-01-24 15:31:04', 51, NULL),
(16, 445, 'hsc', '2', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'সিকিউরিটি ইনচার্জ', 1, '2021-01-31', 'security', '2021-01-24 15:35:23', '2021-01-24 15:35:23', 51, NULL),
(17, 446, 'primary_school', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'এ টি এম বুথ সিকিউরিটি গার্ড', 1, '2021-01-31', 'security', '2021-01-24 15:39:08', '2021-01-24 15:39:08', 51, NULL),
(18, 447, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'ব্যাংকের ক্যাশ কারিং ম্যান', 1, '2021-01-31', 'accounting_finance', '2021-01-24 15:44:47', '2021-01-24 15:44:47', 51, NULL),
(19, 448, 'ssc', '1', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Sales Representative', 1, '2021-10-02', 'marketing_salse', '2021-01-24 22:10:10', '2021-01-24 22:10:10', 51, NULL),
(20, 449, 'ssc', NULL, 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Online Seller', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:17:17', '2021-01-24 22:17:17', 51, NULL),
(21, 450, 'ssc', '0', 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Sales Manager', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:19:45', '2021-01-24 22:19:45', 51, NULL),
(22, 451, 'hsc', NULL, 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Territory Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:21:50', '2021-01-24 22:21:50', 51, NULL),
(23, 452, 'ssc', '-2', 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Sales Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:25:22', '2021-01-24 22:25:22', 51, NULL),
(24, 453, 'hsc', '1', 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:33:31', '2021-01-24 22:33:31', 51, NULL),
(25, 454, 'hsc', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:35:55', '2021-01-24 22:35:55', 51, NULL),
(26, 455, 'ssc', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Digital Marketing Manager', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:39:54', '2021-01-24 22:39:54', 51, NULL),
(27, 456, 'ssc', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:43:37', '2021-01-24 22:43:37', 51, NULL),
(28, 457, 'hsc', NULL, 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Marketing Manager', 1, '2021-01-31', 'marketing_salse', '2021-01-24 22:52:04', '2021-01-24 22:52:04', 51, NULL),
(29, 458, 'ssc', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:07:45', '2021-01-24 23:07:45', 51, NULL),
(30, 459, 'ssc', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:11:06', '2021-01-24 23:11:06', 51, NULL),
(31, 460, 'diploma', '0', 'marketing_sales', 'dashboard', NULL, NULL, NULL, NULL, 'Digital Marketing Manager', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:18:53', '2021-01-24 23:18:53', 51, NULL),
(32, 461, 'hsc', '1', 'marketing_sales', 'phone_number_url', NULL, NULL, NULL, NULL, 'Marketing Manager', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:21:20', '2021-01-24 23:21:20', 51, NULL),
(33, 462, 'ssc', '1', 'marketing_sales', 'phone_number_url', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:26:05', '2021-01-24 23:26:05', 51, NULL),
(34, 463, 'primary_school', '1', 'marketing_sales', 'phone_number_url', NULL, NULL, NULL, NULL, 'Marketing Executive', 1, '2021-01-31', 'marketing_salse', '2021-01-24 23:29:06', '2021-01-24 23:29:06', 51, NULL),
(35, 464, 'hsc', '1', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Security', 2, '2021-01-31', 'others', '2021-01-25 12:34:04', '2021-01-25 12:34:04', 51, NULL),
(36, 465, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'সুপারভাইজার', 1, '2021-01-31', 'others', '2021-01-25 12:39:56', '2021-01-25 12:39:56', 51, NULL),
(37, 466, 'hsc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'সুপারভাইজার', 1, '2021-01-31', 'others', '2021-01-25 12:47:51', '2021-01-25 12:47:51', 51, NULL),
(38, 467, 'high_school', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'জুনিয়র অফিসার।', 1, '2021-01-31', 'others', '2021-01-25 12:54:48', '2021-01-25 12:54:48', 51, NULL),
(39, 468, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'সিনিয়র এডমিন অফিসার', 1, '2021-01-31', 'others', '2021-01-25 12:58:46', '2021-01-25 12:58:46', 51, NULL),
(40, 469, 'high_school', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'সুপারভাইজার', 1, '2021-01-31', 'others', '2021-01-25 13:08:22', '2021-01-25 13:08:22', 51, NULL),
(41, 470, 'hsc', '1', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Manager', 1, '2021-01-31', 'administration', '2021-01-25 21:23:01', '2021-01-25 21:23:01', 51, NULL),
(42, 471, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Assistant', 1, '2021-01-31', 'administration', '2021-01-25 21:25:10', '2021-01-25 21:25:10', 51, NULL),
(43, 472, 'high_school', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Assistant', 1, '2021-01-31', 'administration', '2021-01-25 21:30:55', '2021-01-25 21:30:55', 51, NULL),
(44, 473, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Assistant', 1, '2021-01-31', 'administration', '2021-01-25 21:34:12', '2021-01-25 21:34:12', 51, NULL),
(45, 474, 'ssc', '0', 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Admin Assistant', 1, '2021-02-28', 'administration', '2021-01-25 21:37:19', '2021-01-25 21:37:19', 51, NULL),
(46, 475, 'ssc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Officer', 1, '2021-02-28', 'administration', '2021-01-25 21:53:47', '2021-01-25 21:53:47', 51, NULL),
(47, 476, 'hsc', '0', 'others', 'dashboard', NULL, NULL, NULL, NULL, 'Admin Officer', 1, '2021-01-28', 'administration', '2021-01-25 22:03:26', '2021-01-25 22:03:26', 51, NULL),
(48, 477, 'ssc', NULL, 'others', 'phone_number_url', NULL, NULL, NULL, NULL, 'Admin Officer', 1, '2021-02-28', 'administration', '2021-01-25 22:06:38', '2021-01-25 22:06:38', 51, NULL),
(0, 26, 'high_school', '2', 'design_fashion', 'dashboard', 'html', 40, 'male', NULL, 'Software engineer', 5, '2022-06-21', 'accounting_finance', '2022-06-21 23:09:09', '2022-06-21 23:09:09', 19, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
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
(3, ',view_dashboard,add_user_report,execute_dashboard,view_role,', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `website_title` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8,
  `meta_description` text CHARACTER SET utf8,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `website_title`, `logo`, `favicon`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(12, 'Dalalbazar.com -The Online Mega Mall in Bangladesh for buying and selling everything on online', 'uploads/2022/06/1655658537-logo-02.jpg', 'uploads/2022/06/1655658561-logo-02.jpg', 'কোয়ারান্টাইন,আইসোলেশন', 'Gogoads', '2022-05-17 14:57:55', '2022-06-19 17:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `sls_payments`
--

DROP TABLE IF EXISTS `sls_payments`;
CREATE TABLE IF NOT EXISTS `sls_payments` (
  `pk_no` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `add_limit` int(10) NOT NULL DEFAULT '0',
  `expired_on` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`pk_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sls_payments`
--

INSERT INTO `sls_payments` (`pk_no`, `f_customer_pk_no`, `status`, `tran_date`, `tran_id`, `val_id`, `amount`, `store_amount`, `bank_tran_id`, `card_type`, `emi_instalment`, `emi_amount`, `emi_description`, `emi_issuer`, `card_no`, `card_issuer`, `card_brand`, `card_issuer_country`, `card_issuer_country_code`, `APIConnect`, `validated_on`, `gw_version`, `payment_at`, `created_at`, `created_by`, `updated_at`, `updated_by`, `payment_type`, `f_prod_pk_no`, `f_promotion_details_no`, `f_package_pk_no`, `add_limit`, `expired_on`, `date`) VALUES
(1, 73, 'VALID', '2021-07-12', 'SSLCZ_TEST_60ec6dba4256d', '2107122228541e7BszbsuFKMAmI', 5000.000, 4875.000, '2107122228540XWwyvMltoXIUzL', 'BKASH-BKash', '0', 0.000, '', 'BKash Mobile Banking', '', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'DONE', '2021-07-12 22:28:57', '', '2021-07-12 22:28:57', '2021-07-12 22:28:57', 73, '2021-07-12 22:28:57', NULL, 'package', NULL, NULL, 3, 0, NULL, NULL),
(2, 84, 'VALID', '2021-07-12', 'SSLCZ_TEST_60ec72a77e8a0', '2107122249530tYHY212pMp1R6q', 7000.000, 6825.000, '2107122249531x7ga42WlwLfySJ', 'BKASH-BKash', '0', 0.000, '', 'BKash Mobile Banking', '', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'DONE', '2021-07-12 22:49:56', '', '2021-07-12 22:49:57', '2021-07-12 22:49:57', 84, '2021-07-12 22:49:57', NULL, 'package', NULL, NULL, 4, 0, NULL, NULL),
(3, 19, 'VALID', '2022-06-20', 'SSLCZ_TEST_62b0ac75a8268', '2206202321000uOBRsHvtzlfMY5', 2000.000, 1950.000, '2206202321000XmKaTavGQ8powS', 'BKASH-BKash', '0', 0.000, '', 'BKash Mobile Banking', '', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'DONE', '2022-06-20 23:21:04', '', '2022-06-20 23:21:06', '2022-06-20 23:21:06', 19, '2022-06-20 23:21:06', NULL, 'package', NULL, NULL, 2, 2, '2022-06-10 23:21:06', NULL),
(4, 19, 'VALID', '2022-06-21', NULL, NULL, 5000.000, NULL, NULL, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 22:54:25', NULL, '2022-06-21 22:54:25', '2022-06-21 22:54:25', 19, '2022-06-21 22:54:25', NULL, 'package', NULL, NULL, 6, 250, '2022-05-21 22:54:25', NULL);

--
-- Triggers `sls_payments`
--
DROP TRIGGER IF EXISTS `after_sls_payments_insert`;
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

DROP TABLE IF EXISTS `sls_promotions`;
CREATE TABLE IF NOT EXISTS `sls_promotions` (
  `pk_no` int(3) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
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

DROP TABLE IF EXISTS `sls_promotion_details`;
CREATE TABLE IF NOT EXISTS `sls_promotion_details` (
  `pk_no` int(3) NOT NULL,
  `f_promotion_pk_no` int(3) NOT NULL,
  `day_limit` int(3) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `ss_areas`;
CREATE TABLE IF NOT EXISTS `ss_areas` (
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
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
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
DROP TRIGGER IF EXISTS `before_ss_areas_insert`;
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

DROP TABLE IF EXISTS `ss_business_function`;
CREATE TABLE IF NOT EXISTS `ss_business_function` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `ss_chat`;
CREATE TABLE IF NOT EXISTS `ss_chat` (
  `id` bigint(20) NOT NULL,
  `prd_pk_no` int(10) DEFAULT NULL,
  `owner_pk_no` int(10) DEFAULT NULL,
  `to_pk_no` int(10) DEFAULT NULL,
  `from_pk_no` int(10) DEFAULT NULL,
  `to_name` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `data_set` bigint(20) NOT NULL DEFAULT '0',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Triggers `ss_chat`
--
DROP TRIGGER IF EXISTS `before_ss_chat_insert`;
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

DROP TABLE IF EXISTS `ss_cities`;
CREATE TABLE IF NOT EXISTS `ss_cities` (
  `pk_no` int(11) NOT NULL,
  `country_pk_no` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT '1',
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
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
(5, 3, 'Dhaka', NULL, 'dhaka', 1, NULL, NULL, 1, 22, 0, 1, '2020-11-06 15:38:26', NULL, '2020-11-06 15:38:26', 'dhaka.jpg'),
(6, 3, 'Chattogram', NULL, 'chattogram', 2, NULL, NULL, 1, 1, 0, 1, '2020-11-06 15:42:21', NULL, '2020-11-06 15:42:21', 'chittagong.jpg'),
(7, 3, 'Sylhet', NULL, 'sylhet', 3, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:42:36', NULL, '2020-11-06 15:42:36', 'sylhet.jpg'),
(8, 3, 'Khulna', NULL, 'khulna', 4, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:42:50', NULL, '2020-11-06 15:42:50', 'khulna.jpg'),
(9, 3, 'Barishal', NULL, 'barishal', 5, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:03', NULL, '2020-11-06 15:43:03', 'barisal.jpg'),
(10, 3, 'Rajshahi', NULL, 'rajshahi', 6, NULL, NULL, 1, 3, 0, 1, '2020-11-06 15:43:12', NULL, '2020-11-06 15:43:12', 'rajshahi.jpg'),
(11, 3, 'Rangpur', NULL, 'rangpur', 7, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:24', NULL, '2020-11-06 15:43:24', 'rangpur.jpg'),
(12, 3, 'Mymensingh', NULL, 'mymensingh', 8, NULL, NULL, 1, 0, 0, 1, '2020-11-06 15:43:39', NULL, '2020-11-06 15:43:39', 'mymensingh.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ss_contact`
--

DROP TABLE IF EXISTS `ss_contact`;
CREATE TABLE IF NOT EXISTS `ss_contact` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'unseen =0, seen = 1, replied = 2'
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

DROP TABLE IF EXISTS `ss_country`;
CREATE TABLE IF NOT EXISTS `ss_country` (
  `pk_no` int(11) NOT NULL,
  `code` varchar(3) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
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

DROP TABLE IF EXISTS `ss_currency`;
CREATE TABLE IF NOT EXISTS `ss_currency` (
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

DROP TABLE IF EXISTS `ss_customers`;
CREATE TABLE IF NOT EXISTS `ss_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'Individual Seller',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `mobile2_is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `mobile1_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile1_otp_code_extime` datetime DEFAULT NULL,
  `mobile2_otp_code_extime` datetime DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '0',
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
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `total_favorite` int(5) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(3) DEFAULT '1',
  `package_start_date` date DEFAULT NULL,
  `package_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_customers`
--

INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(73, 'Individual', 'Rony Mia', 'ronymia111333@gmail.com', '01990572321', NULL, 1, 0, '9027', '', '2021-07-12 17:00:50', '2021-07-12 17:00:50', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 1, '2021-06-29 22:03:03', '2021-07-12 22:59:50', NULL, NULL, 'Narayanganj, Dhaka Division', 3, '2021-07-12', '2021-08-11'),
(78, 'Individual Seller', 'Naimur Rahman', 'zaranaieem@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DFJoeLAnERj9EkJ7wrnLcOq7WXTNVkLCWWzRaKdfFXoVAPs60hsZC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:25:42', '2021-06-29 22:25:42', NULL, NULL, NULL, 1, NULL, NULL),
(79, 'Individual Seller', 'Yeasin Shaad', 'yeasinshaad20@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:28:16', '2021-06-29 22:28:16', NULL, NULL, NULL, 1, NULL, NULL),
(80, 'Individual Seller', 'rahmat ullah', '01641664932', '01641664932', NULL, 0, 0, '', '', '2021-06-30 21:10:03', '2021-06-30 21:10:03', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:34:13', '2021-07-01 03:09:03', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(81, 'Individual Seller', 'Saurav Hasan', 'sauravh379@gmail.com', '01622937115', NULL, 0, 0, '', '', '2021-07-01 17:24:36', '2021-07-01 17:24:36', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:34:56', '2021-07-01 23:23:36', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(82, 'Individual Seller', 'Khalilur rahman', 'Krrahman999@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oY8DNnksiY60tO9505brv..aiJvpzFuJic7zuuMYStoDB7Lt4bUzu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:37:49', '2021-06-29 22:37:49', NULL, NULL, NULL, 1, NULL, NULL),
(83, 'Individual Seller', 'Ashraful Islam ope', 'ashrafulislamope2833@gmail.com', '01610050294', NULL, 0, 0, '', '', '2021-06-29 16:41:00', '2021-06-29 16:41:00', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sYzgVUAg6amZark0xUzewu207uc/XANxCMWKWmpvQj8wv6eqiVcZe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:38:37', '2021-06-29 22:40:00', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(84, 'Individual', 'rabin', 'rabinmia7578@gmail.com', '01990572321', '01320325852', 1, 0, '3620', '3008', '2021-07-12 16:52:14', '2021-07-12 16:52:14', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2V.ivqQ8iWh8lp9LYi.sDeMeOYCR6hRd5Cnv8SiwKKnOu.CUbNk2W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 21, 0, 1, '2021-06-29 22:41:20', '2021-07-12 22:51:14', NULL, NULL, 'Mirpur, Dhaka', 4, '2021-07-12', '2021-08-11'),
(85, 'Individual Seller', 'Rifat', 'rh5951223@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lQTssZ8ofnSF3nvGQB8fDecW2MgCIZqp8aANSBeIWiAF5aPF6dI.C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 22:55:24', '2021-06-29 22:55:24', NULL, NULL, NULL, 1, NULL, NULL),
(86, 'Individual Seller', 'Mahafuj Sifat', 'mahafujsifat00@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:22:47', '2021-06-29 23:22:47', NULL, NULL, NULL, 1, NULL, NULL),
(87, 'Individual Seller', 'Ahad', 'rahad292@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ipltMyxO1ixcNZsAFrLi0OLeeeP2sATGEK2MxvCf7HOS5/soi4AFO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:28:57', '2021-06-29 23:28:57', NULL, NULL, NULL, 1, NULL, NULL),
(88, 'Individual Seller', 'Nafiul hossain', 'nafiulhossain123@ gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NT1rQt3kKrE9Rn9ylg8fuedlxGCsgipheTF0cvJbCUTCjwcrOR2gC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:32:07', '2021-06-29 23:32:07', NULL, NULL, NULL, 1, NULL, NULL),
(89, 'Individual Seller', 'Md Imran Hossen', 'imranbarkat774@gmail.com', '01303701631', NULL, 0, 0, '', '', '2021-06-29 17:39:11', '2021-06-29 17:39:11', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mCryHBLGS6gHLRnE.VQ7lOCu1LFj1Hcj2H5LH5MHKuoLPS48enzY2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:36:41', '2021-06-29 23:38:11', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(90, 'Individual Seller', 'Md Azim Ali', 'mdazimali4970@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:38:21', '2021-06-29 23:38:21', NULL, NULL, NULL, 1, NULL, NULL),
(91, 'Individual Seller', 'Abir Ahmed New Easy Telecom', 'abir8459@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:39:24', '2021-06-29 23:39:24', NULL, NULL, NULL, 1, NULL, NULL),
(92, 'Individual Seller', 'Jahir Hossen', 'mmr.jahir@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:47:41', '2021-06-29 23:47:41', NULL, NULL, NULL, 1, NULL, NULL),
(93, 'Individual Seller', 'Azir Uddin', 'aziruddin914@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:58:19', '2021-06-29 23:58:19', NULL, NULL, NULL, 1, NULL, NULL),
(94, 'Individual Seller', 'Md Mohid', 'mdmohidhossain@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wzuNd1uouSaaEh3XJNDne.humU3irSQeL0Y0bNOBoFsEd.48KcN0G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-29 23:58:19', '2021-06-29 23:58:19', NULL, NULL, NULL, 1, NULL, NULL),
(95, 'Individual Seller', 'Sm Bappy', 'smbappy1989@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:17:42', '2021-06-30 00:17:42', NULL, NULL, NULL, 1, NULL, NULL),
(96, 'Individual Seller', 'Md Sapon Khan', 'mdsaponkhan120@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:19:14', '2021-06-30 00:19:14', NULL, NULL, NULL, 1, NULL, NULL),
(97, 'Individual Seller', 'Ashek Rafsan', 'ashek.rafsan22@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:25:48', '2021-06-30 00:25:48', NULL, NULL, NULL, 1, NULL, NULL),
(98, 'Individual Seller', 'Emran', 'Emranhession4347@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NmrGKpz3CPdZBonzWtIRm.sLCbpcspLoyV8UPe8di9Gr06U1WliYe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:35:29', '2021-06-30 00:35:29', NULL, NULL, NULL, 1, NULL, NULL),
(99, 'Individual Seller', 'Moshiur Rabbi', 'moshiurrabbi18@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NYWvN5.E/94t5fO8xARv/.OmUlALIYFV/SxeNQC0LlmmRPv5Uhp8a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:42:28', '2021-06-30 00:42:28', NULL, NULL, NULL, 1, NULL, NULL),
(100, 'Individual Seller', 'OmIt HaSaN OMiT', 'hasanomit02@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 00:50:31', '2021-06-30 00:50:31', NULL, NULL, NULL, 1, NULL, NULL),
(101, 'Individual Seller', 'MD Tonoy', 'tonoymd38@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:07:10', '2021-06-30 01:07:10', NULL, NULL, NULL, 1, NULL, NULL),
(102, 'Individual Seller', 'Travelers of Bangladesh', 'jiju.rubel@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:16:59', '2021-06-30 01:16:59', NULL, NULL, NULL, 1, NULL, NULL),
(103, 'Individual Seller', 'rakibul hasan', 'rakibulhasanovi02@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:20:26', '2021-06-30 01:20:26', NULL, NULL, NULL, 1, NULL, NULL),
(104, 'Individual Seller', 'Mehedi Hasan Ayan', 'mhmehedikhan56632@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:38:29', '2021-06-30 01:38:29', NULL, NULL, NULL, 1, NULL, NULL),
(105, 'Individual Seller', 'Shibli Pathan', 'Shibli123pathan@gmail.com', '01865462576', NULL, 0, 0, '', '', '2021-06-29 19:45:12', '2021-06-29 19:45:12', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fGHHoXE2NjbHRc1sduzEv.iGjqWGa7XUmqZv8aLqr8bENl5/8k6C2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:41:16', '2021-06-30 01:44:12', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(106, 'Individual Seller', 'sbxTSqmUKHkuJZAM', 'buckler.keren@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L7CKKUZ71dnwOpRUv1qAqOF/velgfMbW9mazCh7.ENEk/NI8n4RaS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:49:11', '2021-06-30 01:49:11', NULL, NULL, NULL, 1, NULL, NULL),
(107, 'Individual Seller', 'ripon Reazul', 'riponreazull@gmail.com', '01740886288', NULL, 0, 0, '', '', '2021-06-29 20:04:24', '2021-06-29 20:04:24', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$l3m8/Ugajxrayndisvs7M.mSXDCodBzURXrFHj6AChQZTt5wOsHiu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 01:49:12', '2021-06-30 02:03:24', NULL, 'Mymensingh', NULL, 1, NULL, NULL),
(108, 'Individual Seller', 'Saiful Islam', 'saifornob001@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 02:05:39', '2021-06-30 02:05:39', NULL, NULL, NULL, 1, NULL, NULL),
(109, 'Individual Seller', 'Mahamudul Haque', 'mahamudul.haque19@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 02:33:58', '2021-06-30 02:33:58', NULL, NULL, NULL, 1, NULL, NULL),
(110, 'Individual Seller', 'Tanim', 'Tanimshohan7@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LL/PCOVuzwQz5qehW33FceKJ1zi0tl6qZHC7Iz5zIf2PS2Qbzc1Ba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 02:54:15', '2021-06-30 02:54:15', NULL, NULL, NULL, 1, NULL, NULL),
(111, 'Individual Seller', 'Pritom islam', 'Towhidulislampritom@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zdOBdce8IUAL.7LIPN6bPe6IRak9cwiXcpr3CPNZ2O47DOZxSgo0O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 02:59:05', '2021-06-30 02:59:05', NULL, NULL, NULL, 1, NULL, NULL),
(112, 'Individual Seller', 'Ekram Hossain', 'ekramhossain420@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4.Cr8gpVLzDRikWK/mJKUuXhaZoDE/YJf769JkGW.xY8rc2GB3vnO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 03:02:43', '2021-06-30 03:02:43', NULL, NULL, NULL, 1, NULL, NULL),
(113, 'Individual Seller', 'প্রি য়াম', 'ashikautomobiles2@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 03:06:40', '2021-06-30 03:06:40', NULL, NULL, NULL, 1, NULL, NULL),
(114, 'Individual Seller', 'Md Shahadath Ali Pappu', 'Djppappu28@gmail.com', '01866959550', NULL, 0, 0, '', '', '2021-06-29 21:39:22', '2021-06-29 21:39:22', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cpT1ooR3BnAnRhsnbpwYOO7RgYtuCSfrzZhK7G4Kluus/RHkGEmea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 03:36:08', '2021-06-30 03:38:22', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(115, 'Individual Seller', 'Miskat siddiquee', 'miskatsiddiquee@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 06:03:20', '2021-06-30 06:03:20', NULL, NULL, NULL, 1, NULL, NULL),
(116, 'Individual Seller', 'wAcHXZpldvt', 'elanor_constance@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uNOhsRP5L.e/HJAo87TTVOttMhHQAoVlVhzfKyWpcfYWF0myG.ZVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 06:17:40', '2021-06-30 06:17:40', NULL, NULL, NULL, 1, NULL, NULL),
(117, 'Individual Seller', 'Tabzil shuvo', 'tashuvo1003@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nJYME0hTYECoHFOV8BnBm.hPNofnKRnX8WLHQHUhEYbJmTdCYRNOe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 07:20:34', '2021-06-30 07:20:34', NULL, NULL, NULL, 1, NULL, NULL),
(118, 'Individual Seller', 'Mainul Islam', 'mainulislamyear2020@gmail.com', '01586123724', NULL, 0, 0, '', '', '2021-06-30 01:36:15', '2021-06-30 01:36:15', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$65Gj2zyMUs9iuGme/IbQjOUDbAk5vdiesRLbfxlP608mq3CmnPdK.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 07:32:30', '2021-06-30 07:35:15', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(119, 'Individual Seller', 'Arman ahmed', 'sohanahmedarman@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$h1iCi0RWmNXif5ppspn.U.jNVhQMHmb3c.3SOLYUUh9fOePr9Fm.a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 07:42:54', '2021-06-30 07:42:54', NULL, NULL, NULL, 1, NULL, NULL),
(120, 'Individual Seller', 'XwnTMhjKFOt', 'y.ludlow@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$d40tlNqbk1ZHjQo3zyxAS.NGi3BV4V4ZPyrbBHpkcf05Zfm0pu9um', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 07:52:35', '2021-06-30 07:52:35', NULL, NULL, NULL, 1, NULL, NULL),
(121, 'Individual Seller', 'Kawsar Ahamed', 'kawsarqhamed@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LVCbB1RzRO61QUuasogsmO2tT/O719EZxsb7XYYL0E5Si1P9ej0tK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 08:11:50', '2021-06-30 08:11:50', NULL, NULL, NULL, 1, NULL, NULL),
(122, 'Individual Seller', 'MD Hridoy Miah', 'iftyarahmedhridoy@gmail.com', '01648361036', NULL, 0, 0, '', '', '2021-06-30 02:16:58', '2021-06-30 02:16:58', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3oytpiTBkSrP2YLYJxn1DuA7MZv2.EFMPVXkCQhohn7asGrlWCGve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 08:14:00', '2021-06-30 08:15:58', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(123, 'Individual Seller', 'Ronnie', 'roneerandom@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kUERJtDfemKU3VjmDgSokeeLgMrQGXP9qabgvTlLQxWSyHrKWojfC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 08:52:47', '2021-06-30 08:52:47', NULL, NULL, NULL, 1, NULL, NULL),
(124, 'Individual Seller', 'Hridoy Hasan', '01910391175hridoy@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 09:17:39', '2021-06-30 09:17:39', NULL, NULL, NULL, 1, NULL, NULL),
(125, 'Individual Seller', 'Md Babu', 'mdbabu75102126@gamil.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wl1mWDh8pHtw2Y1fTpnKrOm8J5Y2WTrw1DY6yGC5OOyuwqQ5BZw.m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 09:33:20', '2021-06-30 09:33:20', NULL, NULL, NULL, 1, NULL, NULL),
(126, 'Individual Seller', 'shahriar khan', 'shahriarkhan199@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$be53cifC7aMYvuto5ximaO0Rcm9ZSqesRVR1MgffUe2exo1uOaQX2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 09:44:05', '2021-06-30 09:44:05', NULL, NULL, NULL, 1, NULL, NULL),
(127, 'Individual Seller', 'maruf', 'salehsteelhouse2021@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dwLshkBQj/gt7xAOJdyCrepw4NJVebv5pXvzRVRjRTYqc2q3lGuSO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 09:55:07', '2021-06-30 09:55:07', NULL, NULL, NULL, 1, NULL, NULL),
(128, 'Individual Seller', 'nEYgJlbfemGsB', 'queenquallsq@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aVBFtWQKglMN/pfJuHp.euH3ch3f/52pfqWQ3ybMj2NRrfdBilzdq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 10:06:13', '2021-06-30 10:06:13', NULL, NULL, NULL, 1, NULL, NULL),
(129, 'Individual Seller', 'Sheikh Sezanur Rahman', 'shezanurr77@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6ycQpVWk7hC.nEWT8DEuxeNBHqpbYewPiHbfRfHILOj2DuKyC9RlO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 10:25:06', '2021-06-30 10:25:06', NULL, NULL, NULL, 1, NULL, NULL),
(130, 'Individual Seller', 'Mehedi Hasan Tamim', 'tamim144597@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 10:26:10', '2021-06-30 10:26:10', NULL, NULL, NULL, 1, NULL, NULL),
(131, 'Individual Seller', 'Mdjubaid 2002', 'mdjubaid542@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 10:40:54', '2021-06-30 10:40:54', NULL, NULL, NULL, 1, NULL, NULL),
(132, 'Individual Seller', 'Mamunuj Jaman', 'Mamunujjamanmunna@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OFwojniJccdL5/2D8s21.O0J0rJoXXN4ehxSEvQM1CfubDgBqlqH6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 10:42:18', '2021-06-30 10:42:18', NULL, NULL, NULL, 1, NULL, NULL),
(133, 'Individual Seller', 'Ayushi', 'ayushidas4916526@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HiEDomCEWwSoBwqqUReaFuiz0TN0S20RsCp4PBFj/Eon50N9mpI/a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:02:38', '2021-06-30 11:02:38', NULL, NULL, NULL, 1, NULL, NULL),
(134, 'Individual Seller', 'MD Yafi', 'mdyafi.dhk@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:33:56', '2021-06-30 11:33:56', NULL, NULL, NULL, 1, NULL, NULL),
(135, 'Individual Seller', 'Ramiz Ahamed', 'ramiz.du.2014@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:45:43', '2021-06-30 11:45:43', NULL, NULL, NULL, 1, NULL, NULL),
(136, 'Individual Seller', 'Kawsar Ahamed', 'kawsarahamedeee@gmail.com', '01710006476', NULL, 0, 0, '', '', '2021-06-30 05:49:53', '2021-06-30 05:49:53', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:46:57', '2021-06-30 11:48:53', NULL, 'Rajshahi', NULL, 1, NULL, NULL),
(137, 'Individual Seller', 'Emon Khan', 'Khanemon0912@gmail.com', '01827858971', NULL, 0, 0, '', '', '2021-06-30 06:13:04', '2021-06-30 06:13:04', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xq5jyggK8liIeFYVNBDsKeDjh6sfmMTvPgAMK7lhA6KHS1BURMLD6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:53:59', '2021-06-30 12:12:04', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(138, 'Individual Seller', 'ANISUL ISLAM', 'anisulislam645@gmail.com', '01673689650', NULL, 0, 0, '', '', '2021-06-30 06:00:49', '2021-06-30 06:00:49', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 11:58:18', '2021-06-30 11:59:49', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(139, 'Individual Seller', 'Mr.rupom', 'Mdrupom1999@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nmkeajqkuraTRbRd1YqL3.ceVxRhB06CSRQ2yRzr.kxBlv4V8xoW6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:13:44', '2021-06-30 12:13:44', NULL, NULL, NULL, 1, NULL, NULL),
(140, 'Individual Seller', 'MD Zahidul Islam', 'zahidaccf@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:16:58', '2021-06-30 12:16:58', NULL, NULL, NULL, 1, NULL, NULL),
(141, 'Individual Seller', 'Shafikul Islam Kasba', 'shafikulkasba@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:24:47', '2021-06-30 12:24:47', NULL, NULL, NULL, 1, NULL, NULL),
(142, 'Individual Seller', 'Mohammad Hamim', 'mrhamim543@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:27:49', '2021-06-30 12:27:49', NULL, NULL, NULL, 1, NULL, NULL),
(143, 'Individual Seller', 'MD Hamim Bepari', 'ahmedhamim184@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L/YgT5NPyWw7SAVU2XyVCejKAmdYz81j/EUsgopWET/HUmF0fvp7S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:33:35', '2021-06-30 12:33:35', NULL, NULL, NULL, 1, NULL, NULL),
(144, 'Individual Seller', 'Abu Bakkar Siddique', 'abubakrsiddique1324@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uzFkNWMmXQ4SZEC.CiOdZuAjnUjzz1NQ..GOKou4WCmzR2Iz71xKW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:50:46', '2021-06-30 12:50:46', NULL, NULL, NULL, 1, NULL, NULL),
(145, 'Individual Seller', 'Asm Abdullah', 'asmabdullah59@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 12:56:45', '2021-06-30 12:56:45', NULL, NULL, NULL, 1, NULL, NULL),
(146, 'Individual Seller', 'shefayet@gcbhs', 'mabeek.edusmart@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HRyLA5P9ewcsetDMj.V5SODkSIB1YmOlKAETyvvY92Mt0ErMWd8JK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:07:20', '2021-06-30 13:07:20', NULL, NULL, NULL, 1, NULL, NULL),
(147, 'Individual Seller', 'HASAN', 'Hasanfatema21@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ijkIAfx9Jx3L1H7kO5D3kemhzEgHlIHD9jZdUD7xVkoQJHGTsalNm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:09:43', '2021-06-30 13:09:43', NULL, NULL, NULL, 1, NULL, NULL),
(148, 'Individual Seller', 'Sohel Rana', 'babu_rana@ymail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:10:59', '2021-06-30 13:10:59', NULL, NULL, NULL, 1, NULL, NULL),
(149, 'Individual Seller', 'Shahinur Alam', 'Shahinuralamcox@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Klqk8f71QcLeXNsfPz36lu2lIhRpeZD4GV9YIa2eQyFXIwWlXTmxu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:17:22', '2021-06-30 13:17:22', NULL, NULL, NULL, 1, NULL, NULL),
(150, 'Individual Seller', 'Jafiul Alam Chowdhury', 'jafiulalamchowdhury@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:20:59', '2021-06-30 13:20:59', NULL, NULL, NULL, 1, NULL, NULL),
(151, 'Individual Seller', 'MD. NUR ELAHI', 'n.elahi3839@gmail.com', '01723793839', NULL, 0, 0, '', '', '2021-06-30 07:35:22', '2021-06-30 07:35:22', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v1vDfzod3yezMuTDwkbsdOms3PcFjkXmk6qV9IiwXYSpXXOaBdrgG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:32:12', '2021-06-30 13:34:22', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(152, 'Individual Seller', 'MD ASHIQUZZAMAN', 'prince.prince350@gmail.com', '01714727543', NULL, 0, 0, '', '', '2021-06-30 07:39:47', '2021-06-30 07:39:47', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jJRRJ6E56H67aB9nMDfkYuEOzjO/f82Tqo.6M/fjEUxSUNavJQlJC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:36:25', '2021-06-30 13:37:44', NULL, 'Khulna', NULL, 2, '2021-06-30', '2021-07-30'),
(153, 'Individual Seller', 'Abdul Kaioum', 'kaioumprodan14@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:38:01', '2021-06-30 13:38:01', NULL, NULL, NULL, 1, NULL, NULL),
(154, 'Dealer', 'Fahim ahmed', 'jilanyyousuf19@gmail.com', '01992651375', NULL, 0, 0, '', '', '2021-07-01 18:10:18', '2021-07-01 18:10:18', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Zt./g8szZo/ZlVNGxxGcnelIyOg8XI5/aB46xGTBrjoZLza8HvCzu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:38:12', '2021-07-02 00:09:18', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(155, 'Individual Seller', 'Ruman Islam Fahim', 'rmd314000@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:50:24', '2021-06-30 13:50:24', NULL, NULL, NULL, 1, NULL, NULL),
(156, 'Individual Seller', 'Asraful Islam Asraf', 'a_asraf49@yahoo.com', '01821348049', NULL, 0, 0, '', '', '2021-06-30 07:56:36', '2021-06-30 07:56:36', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:54:43', '2021-06-30 13:55:36', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(157, 'Individual Seller', 'Nayem Ahmed', 'mdnayemahmed1896@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$x6jn9SKatYSTiQ5XZQyDPOezjetsod/oM.y5IjJbySLSAMpuV6EGu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 13:54:50', '2021-06-30 13:54:50', NULL, NULL, NULL, 1, NULL, NULL),
(158, 'Individual Seller', 'Julkar Nain', 'julkarnain1245@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VY1T1ndDwVPENIhu.4vqpOLj4oq1o6/.cW2EoWiTA/hKNBw04uyi2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:01:14', '2021-06-30 14:01:14', NULL, NULL, NULL, 1, NULL, NULL),
(159, 'Individual Seller', 'Sumon khan', 'Sumonkhan144022@gamil.com', '01705144022', NULL, 0, 0, '', '', '2021-06-30 08:50:50', '2021-06-30 08:50:50', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8ciadR8nCafxyjvW.xU.3uekZySSarLhJ9/bjAKBrDzCa621huzAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:18:33', '2021-06-30 14:49:50', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(160, 'Individual Seller', 'Ashraful Huque Jony', 'jony.tly016@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TqJHXKLax9Kr1cd06LPSHe/jK2LIHUnjRXzho.fBCuTxWnRXLrifa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:23:08', '2021-06-30 14:23:08', NULL, NULL, NULL, 1, NULL, NULL),
(161, 'Individual Seller', 'Sajal john gomes', 'gomezsajal420@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bFRAOp.y7Bm40VmYrbqEDuVAL9FbZl8dtoP6HC55kHfOj4VnweYN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:30:32', '2021-06-30 14:30:32', NULL, NULL, NULL, 1, NULL, NULL),
(162, 'Individual Seller', 'Enamul', 'Enamulhoque.bd6185@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7xBbW1voz/9/a2ADr5TZteVu1FX4QC2B75BTw/x1eY/dHnmYKuVky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:35:04', '2021-06-30 14:35:04', NULL, NULL, NULL, 1, NULL, NULL),
(163, 'Individual Seller', 'Mohammad Tajul Islam', 'tajulislam9119@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SXKIMGHdd46B8588Nfkt8.GEXLFUF.YN00/a6.yAbSyTDyuFPwb3e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 14:48:38', '2021-06-30 14:48:38', NULL, NULL, NULL, 1, NULL, NULL),
(164, 'Individual Seller', 'Asraful Islam Asraf', 'asrafulislamasraf100@gmail.com', '01821348049', NULL, 0, 0, '', '', '2021-06-30 09:09:41', '2021-06-30 09:09:41', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:01:22', '2021-06-30 15:08:41', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(165, 'Individual Seller', 'suman kumar deb', 's99uman@gmail.com', NULL, NULL, 0, 0, '', '', '2021-06-30 09:10:58', '2021-06-30 09:10:58', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cIEWM2y/mtgLff4K5DZjne9M.2ZsuDPR8dEKekA2j0oNm8lQHigpa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:08:19', '2021-06-30 15:08:19', NULL, NULL, NULL, 2, '2021-06-30', '2021-07-30'),
(166, 'Individual Seller', 'Sohel Ahmed', 'ononto.sohel6@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:24:48', '2021-06-30 15:24:48', NULL, NULL, NULL, 1, NULL, NULL),
(167, 'Individual Seller', 'Md Shakil Al Mamun', 'shakil.mamun92@gmail.com', '01716391908', NULL, 0, 0, '', '', '2021-06-30 09:45:27', '2021-06-30 09:45:27', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:41:17', '2021-06-30 15:44:27', NULL, 'Khulna', NULL, 1, NULL, NULL),
(168, 'Individual Seller', 'Kamal Hossen', 'shamrattaj@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:44:39', '2021-06-30 15:44:39', NULL, NULL, NULL, 1, NULL, NULL),
(169, 'Dealer', 'Md saiful', 'Saifulm988@gmail.com', '01890659159', NULL, 0, 0, '', '', '2021-07-02 06:06:47', '2021-07-02 06:06:47', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pSjyJI9KFK8NCZHCZdjLA.jSOxEJYgXohYq5bc3aTAsMArF6hORKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:48:36', '2021-07-02 12:04:15', NULL, 'Chattogram', NULL, 2, '2021-07-02', '2021-08-01'),
(170, 'Individual Seller', 'MD.Al-Imran Hossain', 'Emranhashmi703@gmail', '01954545494', NULL, 0, 0, '', '', '2021-06-30 09:52:36', '2021-06-30 09:52:36', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QVcesKvfIgyqf6fpXXM.O.vHuXm0GYMdj3aaw3DInFefbI/FBi2/m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:48:45', '2021-06-30 15:51:36', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(171, 'Individual Seller', 'Rakib', 'rakibksy@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IpIOg2CYSsnDAG9HvHaWU.3Fwbxlu3glAl4DCm8vHXYgI4In0TUcO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:52:15', '2021-06-30 15:52:15', NULL, NULL, NULL, 1, NULL, NULL),
(172, 'Individual Seller', 'Mainuddin Hossain', 'mainuddin6000@gmail.com', '01919018000', NULL, 0, 0, '', '', '2021-06-30 09:56:59', '2021-06-30 09:56:59', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:55:00', '2021-06-30 15:55:59', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(173, 'Individual Seller', 'Based Khan', 'abdulbased101@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 15:57:12', '2021-06-30 15:57:12', NULL, NULL, NULL, 1, NULL, NULL),
(174, 'Individual Seller', 'Mohammad Akheruz Zaman', 'akheruz.zaman1@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y4f1N.fSSVMSQcE.Nv6m4OvlwsOn843kMxU5hJ05rFK72Hs8YAv0C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:08:01', '2021-06-30 16:08:01', NULL, NULL, NULL, 1, NULL, NULL),
(175, 'Individual Seller', 'Tahmina akter', 'Tahminaaktershimu@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r8/PcGRvNMh4BJkEXz.66eQA8oHdpSkwAD8uR9NyUUH98jT4wFk9a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:11:55', '2021-06-30 16:11:55', NULL, NULL, NULL, 1, NULL, NULL),
(176, 'Individual Seller', 'MD ALAMIN', 'alaminodrita@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2MUOSQZQKD/3/9kQ6zYfGuhI.XT4wlQwiwSmBERaWUr3ipMwTij/u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:13:57', '2021-06-30 16:13:57', NULL, NULL, NULL, 1, NULL, NULL),
(177, 'Individual Seller', 'Alok Kumar Biswas', 'alokkumarbiswas2100@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9UQ/ETDcyLT.TMPhoNK6ze4d2VqBvsc0VpBXgNUQ.Y7VChHv57mxe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:17:01', '2021-06-30 16:17:01', NULL, NULL, NULL, 1, NULL, NULL),
(178, 'Individual Seller', 'Saidur Sohan', 'SAIDUR9338@GMAIL.COM', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b..lBfKzNt8kW52UQNZzS.GCO1lPidkOFwbuSZqrIzEEwJ/uIDw3e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:26:52', '2021-06-30 16:26:52', NULL, NULL, NULL, 1, NULL, NULL),
(179, 'Individual Seller', 'Rony Hasan', 'ronyhasan016@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:27:36', '2021-06-30 16:27:36', NULL, NULL, NULL, 1, NULL, NULL),
(180, 'Individual Seller', 'Md Mubin', 'mdmubin1357@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:35:44', '2021-06-30 16:35:44', NULL, NULL, NULL, 1, NULL, NULL),
(181, 'Individual Seller', 'Md Mostafa', 'mdmostofa430@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zn4eIFlMryiJMwU78HShF.0YM5d59Nt2MOAS5yU/tPso3LiN6h55i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:50:04', '2021-06-30 16:50:04', NULL, NULL, NULL, 1, NULL, NULL),
(182, 'Individual Seller', 'Bitu Chowdhury', 'bituchowdhury2033@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3xtxRiqTnjdQzeNqu2XxhOAD2pCFx9zKx1m9ORittIHiDtustfAAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 16:53:01', '2021-06-30 16:53:01', NULL, NULL, NULL, 1, NULL, NULL),
(183, 'Individual Seller', 'Sk. Khalid Hossain', 'khalidhossain8830@gmail.com', '01925078830', NULL, 0, 0, '', '', '2021-06-30 11:22:05', '2021-06-30 11:22:05', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZuymH1JQclG.UpQg44iFtuh7EFJbiiUj/9teaEp5jYzmKf0.h7niC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:18:18', '2021-06-30 17:21:05', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(184, 'Individual Seller', 'Tariqul Islam', 'islam.tariqul67@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:19:45', '2021-06-30 17:19:45', NULL, NULL, NULL, 1, NULL, NULL),
(185, 'Individual Seller', 'Mohammed Parvez khan', 'pk.parvej_52@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jbr5zBZEBbxuXl.alh3cqOCGnEvnBGzD0TIPkR.9iiuTA3wOLzkyK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:21:40', '2021-06-30 17:21:40', NULL, NULL, NULL, 1, NULL, NULL),
(186, 'Individual Seller', 'Ahmed Tazin', '718tazin@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BJOAQHb03G8aFvoFkwtk9edOEt2sfUibmV69SLT5K.YEJ4Vr5QbgO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:33:15', '2021-06-30 17:33:15', NULL, NULL, NULL, 1, NULL, NULL),
(187, 'Individual Seller', 'Md Shafiqul islam', 'dinislam77992@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:37:42', '2021-06-30 17:37:42', NULL, NULL, NULL, 1, NULL, NULL),
(188, 'Individual Seller', 'Masud Rana', 'azizrana1994@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XLFVdfoR1F2loMJvftVg0.1DYZN4PTvgx.XumOhlf7QQVaGYRP.cK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:52:14', '2021-06-30 17:52:14', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(189, 'Individual Seller', 'Fardin Rath', 'fardin.lvl@20email.eu', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 17:53:42', '2021-06-30 17:53:42', NULL, NULL, NULL, 1, NULL, NULL),
(190, 'Individual Seller', 'Saddum Hossain', 'hossainsaddum263@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5C9IDy3EjIsnJKqajmoA1.lwEXbbPj0hOZ8Q4lxdlPJRorvty18Om', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:03:52', '2021-06-30 18:03:52', NULL, NULL, NULL, 1, NULL, NULL),
(191, 'Individual Seller', 'Hossain Munna', 'munia1258@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Fhi.P4EssnyqQDgmQneE5.aTnNDXyc7nK3C7E/OF04Tf9QMFldfwG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:07:11', '2021-06-30 18:07:11', NULL, NULL, NULL, 1, NULL, NULL),
(192, 'Individual Seller', 'uNKFxJkHO', 'cmae57@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JYqoEBay40OIUzGqOYN0Pe48lwHI/x6UwkOSzcu7cPR7QbQF1qUkW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:18:28', '2021-06-30 18:18:28', NULL, NULL, NULL, 1, NULL, NULL),
(193, 'Individual Seller', 'Abu Shufian', 'abushufian999@gmail.com', '01922229630', NULL, 0, 0, '', '', '2021-06-30 12:28:47', '2021-06-30 12:28:47', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5bY7q5d37LpwPfyM7s5Xu.8Ni6rcKd60rUs.A7eBbVF0OZUY8OV4y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:26:38', '2021-06-30 18:27:47', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(194, 'Individual Seller', 'Md Nayemul Islam Nasrullah', 'n01778477167@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:34:07', '2021-06-30 18:34:07', NULL, NULL, NULL, 1, NULL, NULL),
(195, 'Individual Seller', 'Sajjad hossain', 'sajjadahmes234@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VZ/YpmVUz.F47D1FSEkyqeXhwpxJi2TXFLxna2e16RDMUOYVcoBu.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:48:41', '2021-06-30 18:48:41', NULL, NULL, NULL, 1, NULL, NULL),
(196, 'Individual Seller', 'abdur Rahman', 'abdurrahman76426@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zUieVXUWyncj6OUo6Mxve.8NCT0bEEnuOXJL4fncC.s.0173A.lNW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 18:55:18', '2021-06-30 18:55:18', NULL, NULL, NULL, 1, NULL, NULL),
(197, 'Individual Seller', 'MD shariful islam', 'shariful07molla@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mUKNaA5rVu41FvWXtIXYI.HIvHGdCvEmr4D15sfOWH76N2kdfpxWq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 19:00:42', '2021-06-30 19:00:42', NULL, NULL, NULL, 1, NULL, NULL),
(198, 'Individual Seller', 'Mohammad Mia', 'mohammadmia2013@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 19:34:44', '2021-06-30 19:34:44', NULL, NULL, NULL, 1, NULL, NULL),
(199, 'Individual Seller', 'MD JONY RAHMAN MIHAL', 'jonyrahman833@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v/QZtf.xbiUd1NJbCAt99ujH5j82TyamKJoK72qyw11dghLQ8/vgi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:10:04', '2021-06-30 20:10:04', NULL, NULL, NULL, 1, NULL, NULL),
(200, 'Individual Seller', 'Joynul Joy', 'abnct2@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:13:09', '2021-06-30 20:13:09', NULL, NULL, NULL, 1, NULL, NULL),
(201, 'Individual Seller', 'Shajahan', 'shajahann198@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GeFeozUsX01bt9bE43FTpuzdKzbkoDX5N9z4PpQwKD83Dy6gWEr0y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:18:14', '2021-06-30 20:18:14', NULL, NULL, NULL, 1, NULL, NULL),
(202, 'Individual Seller', 'biswazithalder', 'biswazithalder789@gmail.com', '01813924925', NULL, 0, 0, '', '', '2021-06-30 18:54:20', '2021-06-30 18:54:20', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2xGPfWnk1VJdfL4PN/5zXeWlAOOxdJ97N3.jjWwi9./AijV4O3Npm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:19:28', '2021-07-01 00:53:20', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(203, 'Individual Seller', 'FyUHIkSmnvuDLtiZ', 'specializedhomelife@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zX5K1u5DIShRRM6p/g23UepvZGgEoFzfUz1y02GGrE1aemvxVIoee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:25:35', '2021-06-30 20:25:35', NULL, NULL, NULL, 1, NULL, NULL),
(204, 'Individual Seller', 'Shayan Ariyan', 'alijen08@gmail.com', '01726643982', NULL, 0, 0, '', '', '2021-06-30 14:30:57', '2021-06-30 14:30:57', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$olL5Jk/RVyY2W6ZukdDQ5epS0caezEXWLL/OpvjtEOJXj2f0j4KlS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:28:27', '2021-06-30 20:29:57', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(205, 'Individual Seller', 'Golam sarwar', 'golamsarwar26230@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lnckGiw6CScgR2cxQoRzuuPVv3lD9NJtxI7FJh/3mWxed1A.z6aDm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:29:50', '2021-06-30 20:29:50', NULL, NULL, NULL, 1, NULL, NULL),
(206, 'Individual Seller', 'MOSLEH UDDIN', 'moslehuddin1982mir@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:40:05', '2021-06-30 20:40:05', NULL, NULL, NULL, 1, NULL, NULL),
(207, 'Individual Seller', 'sanjoy biswas', 'corei71@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:42:32', '2021-06-30 20:42:32', NULL, NULL, NULL, 1, NULL, NULL),
(208, 'Individual Seller', 'MD.SHARIF HOSSAIN', 'sharifmd69@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AQKR0F6IJ1hpBqof5r9C7egm9lbJe/mQMBm/YxomYn8Cq2hX4anz.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 20:57:19', '2021-06-30 20:57:19', NULL, NULL, NULL, 1, NULL, NULL),
(209, 'Individual Seller', 'Shohag', 'silentshohag143shohag@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WIjwiVcKjOGLqvTS9Y5Rj.T4K7aDUdK1qVehuHriJgzijxng35hOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:38:15', '2021-06-30 21:38:15', NULL, NULL, NULL, 1, NULL, NULL),
(210, 'Individual Seller', 'MITHU', 'Mdmithu3271@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pU/MjhV9r9LOmyGfMss3x.X1kyEacJKRR5i7qWqJoywvBzH8NM55e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:40:12', '2021-06-30 21:40:12', NULL, NULL, NULL, 1, NULL, NULL),
(211, 'Individual Seller', 'ZsxFmXPtSvk', 'mv777711@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fBgX3.hn.JGao84WHMjMUOxUbxCDRFEdL9REZcLnPTUEj/iBHCQN6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:40:51', '2021-06-30 21:40:51', NULL, NULL, NULL, 1, NULL, NULL),
(212, 'Individual Seller', 'Mohammad rayhan', 'mdrayhansuvo@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xH1UP556fiXMO6trIp0CxO7NvkddJTr5Jv0nN/vSsD8ZU47JauY4a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:42:03', '2021-06-30 21:42:03', NULL, NULL, NULL, 1, NULL, NULL),
(213, 'Individual Seller', 'Fakrul Dorji', 'fakruldorji@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:47:09', '2021-06-30 21:47:09', NULL, NULL, NULL, 1, NULL, NULL),
(214, 'Individual Seller', 'Lutfor Rahman', 'lutfor145211@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 21:48:53', '2021-06-30 21:48:53', NULL, NULL, NULL, 1, NULL, NULL),
(215, 'Individual Seller', 'Belal Hossain', 'belal2016@gmail.com', '01617070700', NULL, 0, 0, '', '', '2021-06-30 16:04:20', '2021-06-30 16:04:20', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SNLXZ06xJmukjOpJQiTNjeLJzX0PqMsJyImfaOoVO.rb6im2zL8oq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:02:17', '2021-06-30 22:03:20', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(216, 'Individual Seller', 'Md Rafsan Tahmid', 'mdrafsantahmid13@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F8BWFRUkHpEEUmm5BB5l1O561.T0yp6FLLgMfYhjV6QA4PoAgtG5q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:13:58', '2021-06-30 22:13:58', NULL, NULL, NULL, 1, NULL, NULL),
(217, 'Individual Seller', 'KbyPDdAeW', 'emilio_lerma@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MihpGV7eO95C8qNf9ft9w.tFRb3BjnpE3gABWk75pmg0BfWwtEWYS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:17:13', '2021-06-30 22:17:13', NULL, NULL, NULL, 1, NULL, NULL),
(218, 'Individual Seller', 'XVaSokIZOY', 'wtbrosam@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8x/WkRRS8u6.W1RDGG7GV.Ok9qkPtqkyPsluhPafZLzoUu03cbra6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:30:56', '2021-06-30 22:30:56', NULL, NULL, NULL, 1, NULL, NULL),
(219, 'Individual Seller', 'Dewan Munna', 'dewantrade24@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7ocXA6DR970dVDaKgvM4iO3SBWqt0kUCYYCKzlXhN1WxrtZ1uM6CK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:36:52', '2021-06-30 22:36:52', NULL, NULL, NULL, 1, NULL, NULL),
(220, 'Individual Seller', 'Sayed Saiful Islam', 'sayedsaifulislam1992@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:41:16', '2021-06-30 22:41:16', NULL, NULL, NULL, 1, NULL, NULL),
(221, 'Individual Seller', 'abdulla', 'iqbalabdulla71@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7iaRrqJaIFwXVLZqANBJl.yQ5OQZ2bW7zM0Yal/hHSdvvcO1WpUt2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:46:05', '2021-06-30 22:46:05', NULL, NULL, NULL, 1, NULL, NULL),
(222, 'Individual Seller', 'MD. JAHEDUL ISLAM', 'jahed01681@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AJI4tFwt6x27APa7gymx6u32XKdkGev4bq.Mi6n9oc4p80c.tK2Y6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:46:15', '2021-06-30 22:46:15', NULL, NULL, NULL, 1, NULL, NULL),
(223, 'Individual Seller', 'Md Kabir Hossain', 'kabirhossen66@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:49:45', '2021-06-30 22:49:45', NULL, NULL, NULL, 1, NULL, NULL),
(224, 'Individual Seller', 'Ibrahim rana', 'ibrahimrara027@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CCIOfEbSi8s9fTs9MAiiDOjUTvHPgn22zeMX0NdmtCm/yM7NowUh2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 22:52:37', '2021-06-30 22:52:37', NULL, NULL, NULL, 1, NULL, NULL),
(225, 'Individual Seller', 'wbskHUOoAPIKX', 'ampd621@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lG.KXIPzV7wvE5EO5/5JO.ZK5rgNznqKn3XBetkRZ55zK/g3.OkBC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:00:30', '2021-06-30 23:00:30', NULL, NULL, NULL, 1, NULL, NULL),
(226, 'Individual Seller', 'Munna', 'Munna.biswasios@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8TFSZWyB2dikQKjdKzE2c.2KNGGaWRPgNgx9X467YG3eKGVV8NdsC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:05:59', '2021-06-30 23:05:59', NULL, NULL, NULL, 1, NULL, NULL),
(227, 'Individual Seller', 'Rakib Hosen', 'patwaryrakib1997@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YY6n.AddmpA1iQe8vMWMFusdCYV2YcZLP0L2U2MN8E/qTMiTvNw/C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:11:41', '2021-06-30 23:11:41', NULL, NULL, NULL, 1, NULL, NULL),
(228, 'Individual Seller', 'Safin Ahmed', 'sassafinahmed@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AGr05Tt1ALYH3XE.3jc6yeVNrVXmy93CGrQucxW.5FQp0Kq15ZQ.e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:15:37', '2021-06-30 23:15:37', NULL, NULL, NULL, 1, NULL, NULL),
(229, 'Individual Seller', 'Md Nadim', 'md.nadim7941@gamil.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F22Ap7xXBMRO32qfHR8jseiVP62NFvOAfJMi1aXmsk/D0xmnj9EQa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:16:30', '2021-06-30 23:16:30', NULL, NULL, NULL, 1, NULL, NULL),
(230, 'Individual Seller', 'kAnFQCKSiR', 'kaitlin999@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yCUbZrPMl4UoLdgwzPI8O.D7whK1oY3JMrPthL4tiGaYxGcGpBMxm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:32:30', '2021-06-30 23:32:30', NULL, NULL, NULL, 1, NULL, NULL),
(231, 'Individual Seller', 'Md Hossain Bhuiyan', 'Mdhossainbhuiyan17@gmail.con', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TKlGKWWcb4QUAsE6s/7z8exjG4h5CrJAgvSPOe6O8WQva68dWFwLi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:32:39', '2021-06-30 23:32:39', NULL, NULL, NULL, 1, NULL, NULL),
(232, 'Individual Seller', 'qlQISZbD', 'newseasonministriesmd@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7buTPEL9/YDrt2TliToq7.67DQbCxfuQNeYVlyhwrNFML9KGnz1Fq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:39:44', '2021-06-30 23:39:44', NULL, NULL, NULL, 1, NULL, NULL),
(233, 'Individual Seller', 'Raju Das', 'rajudas87908@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:46:21', '2021-06-30 23:46:21', NULL, NULL, NULL, 1, NULL, NULL),
(234, 'Individual Seller', 'POBwCKRaGMHsIg', 'stelgra582@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NpCOf8yoSOuq0EBjsZJOD.V85b1yqC3GJkmyfGvC9DrWMNtwCOpcG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:54:19', '2021-06-30 23:54:19', NULL, NULL, NULL, 1, NULL, NULL),
(235, 'Individual Seller', 'Sohag gazi', 'sohaggazi.uits2@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$u3MxidRMRsU44XdCseTDTe.mSiSh.0N/g8Z0opZEAX9G.AiLcophO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:55:39', '2021-06-30 23:55:39', NULL, NULL, NULL, 1, NULL, NULL),
(236, 'Individual Seller', 'Evan', 'evanahmed1803@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PXsFytNGxzGjf/PlyFBIJupgSRWrk2den8FdWtA2XWZXsJqgXiiyO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-06-30 23:58:49', '2021-06-30 23:58:49', NULL, NULL, NULL, 1, NULL, NULL),
(237, 'Individual Seller', 'Labib Rahman', 'labib.rahman07@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:10:38', '2021-07-01 00:10:38', NULL, NULL, NULL, 1, NULL, NULL),
(238, 'Individual Seller', 'FGNUcflJd', 'freddygarza1997.fg@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cLJG1sPAAAENUQyAvw/Rp.R0V98WZAZnon4Yzu6Ccj87qA.3zsYba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:23:05', '2021-07-01 00:23:05', NULL, NULL, NULL, 1, NULL, NULL),
(239, 'Individual Seller', 'Prosanto Paul', 'prosatopaul0@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:28:17', '2021-07-01 00:28:17', NULL, NULL, NULL, 1, NULL, NULL),
(240, 'Individual Seller', 'Md.Raju Ahamed', 'mdrajuahmeddhaka2081@gmail.com', '01770242081', NULL, 0, 0, '', '', '2021-06-30 18:31:14', '2021-06-30 18:31:14', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/yPj6qpGq/cdFDhJ.zRRHO82bhN87VHw.lB3WWC1F5fpIFvU6/xKi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:29:22', '2021-07-01 00:30:14', NULL, 'Khulna', NULL, 1, NULL, NULL),
(241, 'Individual Seller', 'oCEuXrgWdHGZPNO', 'diannarobi@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vg8MUQ8YeIY9jPMN69PYcuOKkJSDFuudDT2qJVfqM2w4emF1j/NJa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:29:54', '2021-07-01 00:29:54', NULL, NULL, NULL, 1, NULL, NULL),
(242, 'Individual Seller', 'Andalib Ahmed Nuur', 'ahmybd@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:39:10', '2021-07-01 00:39:10', NULL, NULL, NULL, 1, NULL, NULL),
(243, 'Individual Seller', 'Md Shabuj Al Shahaba', 'bsl.shabuj1948@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hAe6sqI91DDEUutKts88Ae1j9HYpvlVu6RwrAUhbtwZ2ojzU3KSNa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:43:38', '2021-07-01 00:43:38', NULL, NULL, NULL, 1, NULL, NULL),
(244, 'Individual Seller', 'bYsMfCvzciSheQIP', 'metalmanjim@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UUJ2K04XigVmbKLcDCrSj.rPRh05vZsuU8iB0YvDiaPiAQcKWw8vG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:45:44', '2021-07-01 00:45:44', NULL, NULL, NULL, 1, NULL, NULL),
(245, 'Individual Seller', 'Tarikul islam', 'tarikulislamj6@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jF9nlXtKPPrqa7QFH47mi.eHs5gs3WEE/Q92jokP1.yt7M4r2ZqJG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:46:39', '2021-07-01 00:46:39', NULL, NULL, NULL, 1, NULL, NULL),
(246, 'Individual Seller', 'এইচ এম ফারুক খান', 'hmfarukk@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 00:56:02', '2021-07-01 00:56:02', NULL, NULL, NULL, 1, NULL, NULL),
(247, 'Individual Seller', 'Faruk', 'hmofarukk@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YW0e13KsqTi50MiAOIYCU.bpWlTrqFqXaqCCDqvNBBdzYiO1vn0QO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 01:15:25', '2021-07-01 01:15:25', NULL, NULL, NULL, 1, NULL, NULL),
(248, 'Individual Seller', 'Mofidul Islam Shetu', 'm.shetu007@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 01:29:22', '2021-07-01 01:29:22', NULL, NULL, NULL, 1, NULL, NULL),
(249, 'Individual Seller', 'tuTDkOGPqBgNi', 'tony.stevenson17@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QPDsw8W8Oljh/xnrHqDiGOnyhAdeuuav6SOcPLgiiGWrVejaPVsyu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 01:45:38', '2021-07-01 01:45:38', NULL, NULL, NULL, 1, NULL, NULL),
(250, 'Individual Seller', 'Mohammad  Moniruzzaman', 'redohyahmed@gmail.com', '01933885888', NULL, 0, 0, '', '', '2021-06-30 20:21:05', '2021-06-30 20:21:05', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6zr1/dSX72MXeR4CW/SuW.tRxAjzxJQXinMD.L1F57wJFP8QeSi5q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 01:59:00', '2021-07-01 02:20:05', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(251, 'Individual Seller', 'UFkxnBCTKO', 'svavid@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xBnyCmlFHMwPgYE7L5rfo.tcvPuUA5LfFFH9HyiOZ6L67M0kvb1wa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 01:59:54', '2021-07-01 01:59:54', NULL, NULL, NULL, 1, NULL, NULL),
(252, 'Individual Seller', 'Sadman Khan', 'sadmankhan1304@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 02:08:51', '2021-07-01 02:08:51', NULL, NULL, NULL, 1, NULL, NULL),
(253, 'Individual Seller', 'TJjdqIKpysEM', 'jessee.patacsil@hp.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mTls4gsWk4wuXX8RLu7RHuV.8VBvuIH8fsfcjeUFbFwshDGMA1p2m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 02:19:42', '2021-07-01 02:19:42', NULL, NULL, NULL, 1, NULL, NULL),
(254, 'Individual Seller', 'Samiul islam fuad', 'Fuhadkoly@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AWrVSUfPwKTLnAJy9NSQqebcDcGC.2PdZVlrOSsFP3O2Bkt36Ls9W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 02:48:22', '2021-07-01 02:48:22', NULL, NULL, NULL, 1, NULL, NULL),
(255, 'Individual Seller', 'SdXiujxENUbWO', 'mbcinc@comcast.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OknDCv4oNW4W5gOB/JhkM./mA/qowEnbVPs1rnFAamU9zGigQjqT6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 02:52:38', '2021-07-01 02:52:38', NULL, NULL, NULL, 1, NULL, NULL),
(256, 'Individual Seller', 'wakil qurashee', 'onimqurashee1@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ozn.n4ZObqfHDbYSxgY.aeeDC608HepUaGSHhPfRwIpcxxfR.gpZi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 02:59:39', '2021-07-01 02:59:39', NULL, NULL, NULL, 1, NULL, NULL),
(257, 'Individual Seller', 'DzfTVrxmwISNuUC', 'huntington@pamalan.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TIK3hglSMwznmDT2YXzcreMNCV6NFM0SH00md3EI8Q2Vv8Gik24w2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 03:23:53', '2021-07-01 03:23:53', NULL, NULL, NULL, 1, NULL, NULL),
(258, 'Individual Seller', 'dSECPvJOh', 'jeffgilmore1966@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DY1TMdZ7xRIMXYSr/eJyPuiDqQvgu7rak3cKVf.9wtt3nAtmZJZfW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 03:33:28', '2021-07-01 03:33:28', NULL, NULL, NULL, 1, NULL, NULL),
(259, 'Individual Seller', 'Sharif ul Alam', 'sharif.alam01305@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GC1JPXV3c1SzhIBfXq9eKedYPbj42AQ8GXrYB5ctWbSfDPO3RoQOu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 04:47:29', '2021-07-01 04:47:29', NULL, NULL, NULL, 1, NULL, NULL),
(260, 'Individual Seller', 'শাকিল', 'ashrafulislamshakil95@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8C9Y75Wefdi7nw22zyp3v.MXZQgXPDl1NmFvmC4gTeyuc5kGzYkfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 04:57:12', '2021-07-01 04:57:12', NULL, NULL, NULL, 1, NULL, NULL),
(261, 'Individual Seller', 'md Imran hossain', 'imranmer46 @gmail.com', '01679647575', NULL, 0, 0, '', '', '2021-06-30 23:15:00', '2021-06-30 23:15:00', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ew9INanJSWkbjvp7zpGXB.LkOadWA4jQtfs/rVhox7xHnTIkXrL4m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 05:12:50', '2021-07-01 05:14:00', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(262, 'Individual Seller', 'FfSCyQHAPomTW', 'mannybrophyair@bellsouth.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Yl9oZBq31SjxsZ10y0K6weJYywnGwEQy.u36TF5mEhsO7F5/2Mh9O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 05:15:10', '2021-07-01 05:15:10', NULL, NULL, NULL, 1, NULL, NULL),
(263, 'Individual Seller', 'pPOSVfjIbRLNHX', 'sleuin@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0oAXNrgiuqAkAH4zwqrgBO7G5l4qdUOBLwkMx5xcaEz/LvSqFoP6C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 06:31:30', '2021-07-01 06:31:30', NULL, NULL, NULL, 1, NULL, NULL),
(264, 'Individual Seller', 'MD parvej rana', 'parvej.rana50@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MbdQ1nJMGzk.LfZn.PofDe0MGKWwBijdN280SbMCc4czcJsn/ecgK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 07:10:07', '2021-07-01 07:10:07', NULL, NULL, NULL, 1, NULL, NULL),
(265, 'Individual Seller', 'Mamun Kober Rana', NULL, NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 08:30:37', '2021-07-01 08:30:37', NULL, NULL, NULL, 1, NULL, NULL),
(266, 'Individual Seller', 'Adnanul Huda', 'heemel469382@gmail.com', '01760453641', NULL, 0, 0, '', '', '2021-07-01 02:51:45', '2021-07-01 02:51:45', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4372GbP3A2xAt0t5NpITQuACMFFIXFrA98Q9c1sU97CHXXIfjILUy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 08:48:25', '2021-07-01 08:50:45', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(267, 'Individual Seller', 'Md Fayjul Islam Bhuiyan', 'jonybhuiyan66@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 09:25:33', '2021-07-01 09:25:33', NULL, NULL, NULL, 1, NULL, NULL),
(268, 'Individual Seller', 'MD : SHARIF KHAN', 'sharif.khan10100@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$usLJDECmMLd7W/1skDVVHu0FXQzw5fJJG1OqvZ5paonkXaH7k5o3y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 09:50:17', '2021-07-01 09:50:17', NULL, NULL, NULL, 1, NULL, NULL),
(269, 'Individual Seller', 'HM MeHiDi HaSaN', 'hm.mehidihasan@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 09:56:11', '2021-07-01 09:56:11', NULL, NULL, NULL, 1, NULL, NULL),
(270, 'Individual Seller', 'Mohin Ahamed', 'Mohenuddin53@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Rcm0dDmO8OVDZ4kiH9cPmOLbxK9Um7DWKA5E6/F/roDS1NRrSyXaK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 10:54:09', '2021-07-01 10:54:09', NULL, NULL, NULL, 1, NULL, NULL),
(271, 'Individual Seller', 'md imran hossain', 'imranmeri46 @gmail.com', '01679647575', NULL, 0, 0, '', '', '2021-07-01 05:10:21', '2021-07-01 05:10:21', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DcuGXCd2HjU7C2TAF5n9ned1SO7mdv2oChkd93PjwOHeMtk4IpXQ.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 11:08:19', '2021-07-01 11:09:21', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(272, 'Individual Seller', 'Monir hossain', 'monirsoundsystem@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JmYlbjcK5a5tGw0QxbTwwOIduSEpRqt6NaGZt7WcT8w1NXZxNF7Mu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 11:38:15', '2021-07-01 11:38:15', NULL, NULL, NULL, 1, NULL, NULL),
(273, 'Individual Seller', 'Mahmudul Hasan', 'hasanibb4@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 11:41:21', '2021-07-01 11:41:21', NULL, NULL, NULL, 1, NULL, NULL),
(274, 'Dealer', 'Rakib Rudro', 'ra716711@gmail.com', '01706621069', NULL, 0, 0, '', '', '2021-07-01 06:07:11', '2021-07-01 06:07:11', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hNr/7QSQIGBEm3U0k4HyJeQB6SJwRe7DbtlqiCkL7MKgyH0NVvMfW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:04:54', '2021-07-01 12:06:11', NULL, 'Rajshahi', NULL, 1, NULL, NULL),
(275, 'Individual Seller', 'Redoan Islam Rubel', 'Rubelredoan12345@gmail.com', '01923232003', NULL, 0, 0, '', '', '2021-07-01 07:45:43', '2021-07-01 07:45:43', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:13:39', '2021-07-01 13:44:43', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(276, 'Individual Seller', 'Tanvir Ahamed', 'tanvirrana639@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:15:09', '2021-07-01 12:15:09', NULL, NULL, NULL, 1, NULL, NULL),
(277, 'Individual Seller', 'RWqCjSHgenJzKYdf', 'jenyeomans@optonline.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$enZDONKOJ1Cp6ENAe3XwJu20a79fczwDQm8t7Ap8daVop5gLXCAaC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:16:15', '2021-07-01 12:16:15', NULL, NULL, NULL, 1, NULL, NULL),
(278, 'Individual Seller', 'Md jakir Hossain', 'ajakir1050@gmail.com', '01777005748', NULL, 0, 0, '', '', '2021-07-01 06:24:11', '2021-07-01 06:24:11', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$APX0PjdTLDTxnfHrOVmx7eWPv.MApzwVI8Pl/VQKW80qwybysFkFC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:19:17', '2021-07-01 12:23:11', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(279, 'Individual Seller', 'Saddam Hossain', 'st.saddam131@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:43:00', '2021-07-01 12:43:00', NULL, NULL, NULL, 1, NULL, NULL),
(280, 'Individual Seller', 'Arefin Jaman Ridoy', 'arefinjamanridoy@gmail.com', '01883109109', NULL, 0, 0, '', '', '2021-07-01 06:48:14', '2021-07-01 06:48:14', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$e9hp0NhK7kguOR2IRt4ED..CvjlMvsPezSMoAJyqWcz7Pkrg1XhwK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:46:25', '2021-07-01 12:47:14', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(281, 'Individual Seller', 'Shaeak Biswas', 'shaeakbiswas@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 12:48:07', '2021-07-01 12:48:07', NULL, NULL, NULL, 1, NULL, NULL),
(282, 'Individual Seller', 'Sabik Al Adil', 'sabikaladil456@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 13:18:41', '2021-07-01 13:18:41', NULL, NULL, NULL, 1, NULL, NULL),
(283, 'Individual Seller', 'Redoan Islam Rubel', 'rubelredoan@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 13:49:55', '2021-07-01 13:49:55', NULL, NULL, NULL, 1, NULL, NULL),
(284, 'Individual Seller', 'BYOnLzsxwG', 'webbjerry89@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oP/YvmQlt3jJ97GX1EZ/LOcq1qDnT3vgikeoI8tM7vjL/NSXzpoPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 14:27:39', '2021-07-01 14:27:39', NULL, NULL, NULL, 1, NULL, NULL),
(285, 'Individual Seller', 'Raihan Ahmed', 'ahmedraihan778@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IgGjdYgQ5bWYwERsY2mzFuRzT9ThVectzKgOPcxESpHnAX5kTPc/i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 14:31:42', '2021-07-01 14:31:42', NULL, NULL, NULL, 1, NULL, NULL),
(286, 'Individual Seller', 'Osama Bin Kaif', 'nmsaif.ns@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 14:32:05', '2021-07-01 14:32:05', NULL, NULL, NULL, 1, NULL, NULL),
(287, 'Individual Seller', 'MD Mahbubur Rehman', 'saffer_sumon@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 14:49:16', '2021-07-01 14:49:16', NULL, NULL, NULL, 1, NULL, NULL),
(288, 'Individual Seller', 'md shikat', 'wwwshikatmollik177@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8zI5vmQCCARDoDgEbXxtWOnBfqzUIuHQjBRsDfyKzQR0VpX6izdCS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 14:56:21', '2021-07-01 14:56:21', NULL, NULL, NULL, 1, NULL, NULL),
(289, 'Individual Seller', 'Zakia Islam Prophecy', 'prophecypabna@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 15:09:17', '2021-07-01 15:09:17', NULL, NULL, NULL, 1, NULL, NULL),
(290, 'Individual Seller', 'Nimon joy', 'nimon658@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1AFdSKfUJgm.hZunB7UQz.cHDJI80rXuYAp0tn3XNIQ6NXJXW24yK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 15:31:26', '2021-07-01 15:31:26', NULL, NULL, NULL, 1, NULL, NULL),
(291, 'Individual Seller', 'Moon Islam', 'islammoon412@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 16:14:31', '2021-07-01 16:14:31', NULL, NULL, NULL, 1, NULL, NULL),
(292, 'Individual Seller', 'Tanzil ahmed', 'tanzilahmde@gamil.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Hr5WnyFpizdgSScdZL0NU.I9Br3BOCD93DYDadh5a0LOye2pA5pSO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 16:24:00', '2021-07-01 16:24:00', NULL, NULL, NULL, 1, NULL, NULL),
(293, 'Individual Seller', 'AL AMIN SHIKDER API', 'shikderalamin15@gmail.com', '01850616415', NULL, 0, 0, '', '', '2021-07-01 10:31:43', '2021-07-01 10:31:43', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DSuGObtIOiJ.C77f2FwsXex32198Zy4JZScT4GYkXwFbrBR5ydXEu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 16:24:20', '2021-07-01 16:30:43', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(294, 'Individual Seller', 'Sb Forhad', 'sbforhad2@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Fg2g0uBB3fYR3Wcq0JOVleuoqNCpp88y0SnFL1.UeoKjbggQbLMMW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 16:31:42', '2021-07-01 16:31:42', NULL, NULL, NULL, 1, NULL, NULL),
(295, 'Individual Seller', 'Rakibul Islam Rakib', 'rakib.dtx@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qWVKlxqcGA1mRsvSBJ.QRuPK82uRQ.eDeOODLhMBJnWLdekX4OC9G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 16:43:31', '2021-07-01 16:43:31', NULL, NULL, NULL, 1, NULL, NULL),
(296, 'Individual Seller', 'Md Hussain Islam', 'mdhussainjr@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$12KgRRKjlGg8IUa0eS8.OO21yLg0zikZzTAepXEhWc4ETle5E4daW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 17:00:53', '2021-07-01 17:00:53', NULL, NULL, NULL, 1, NULL, NULL),
(297, 'Individual Seller', 'Aminul islam', 'aminulislam100081@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 17:06:24', '2021-07-01 17:06:24', NULL, NULL, NULL, 1, NULL, NULL),
(298, 'Individual Seller', 'GNlMTaXEjZUFiV', 'zaragoza0791@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bhBLenkRt87iGpMUSA.nTOY3Oo67Ws6arBDvvfwtL9ZgTUqME/jC2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 17:33:52', '2021-07-01 17:33:52', NULL, NULL, NULL, 1, NULL, NULL),
(299, 'Dealer', 'Prasenjit Saha', 'prasenjitsaha74@yahoo.com', '01814111588', NULL, 0, 0, '', '', '2021-07-01 12:13:29', '2021-07-01 12:13:29', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 18:08:45', '2021-07-01 18:12:29', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(300, 'Individual Seller', 'Rjtushar 5560', 'r8447352@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 18:37:39', '2021-07-01 18:37:39', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(301, 'Individual Seller', 'Jakaria Patwary', 'jakariapatwary15@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 18:41:52', '2021-07-01 18:41:52', NULL, NULL, NULL, 1, NULL, NULL),
(302, 'Individual Seller', 'Acromec. Engineers', 'acromec.engineers48@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 18:47:46', '2021-07-01 18:47:46', NULL, NULL, NULL, 1, NULL, NULL),
(303, 'Individual Seller', 'APBYMeJnG', 'bobkush@bobkush.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GcH3OuUhwexT6GEWUxXqj.1pcV7X4eeLlpV4H7G/3RkVASTKVqXM6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 18:50:00', '2021-07-01 18:50:00', NULL, NULL, NULL, 1, NULL, NULL),
(304, 'Individual Seller', 'Saddam Hosen', 'saddam808787@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LPN2Fhks9KiX.O/xlRbzI.VzCe1n1ye5CFQ9XtPxN006Mqb/aD7Uy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 19:31:48', '2021-07-01 19:31:48', NULL, NULL, NULL, 1, NULL, NULL),
(305, 'Individual Seller', 'xoiZzWhyaGe', 'tretopflir@comcast.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pSkUKTsWS3T/MgTP3u4XGOi3p4hTNphW.qlywupKfjVAjVpdOCzVS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 19:33:08', '2021-07-01 19:33:08', NULL, NULL, NULL, 1, NULL, NULL),
(306, 'Individual Seller', 'Md Nazmul', 'mdnazmulislamnahid74@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8/yl0Uzb2SZc/Wxwh2Ez8OXCh0ZCTp1kisKbPWEFiJaMWYuAmquQm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 19:37:18', '2021-07-01 19:37:18', NULL, NULL, NULL, 1, NULL, NULL),
(307, 'Individual Seller', 'Md delowar Hossain', 'delowerhossendehan@gamil.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Bf0kPYnH6A67UNF6G1TYhexSMdlafJ0/D9Dp/UQzV3PwxtFEpf0FG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 19:44:56', '2021-07-01 19:44:56', NULL, NULL, NULL, 1, NULL, NULL),
(308, 'Individual Seller', 'মোঃ ফজলে রাব্বি খান', 'Fozler444@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rpAoF4mhyn4yEkmFXQv8DeytZRVbSoaVi1uipVM7cILO08SZCTjOi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 20:03:11', '2021-07-01 20:03:11', NULL, NULL, NULL, 1, NULL, NULL),
(309, 'Individual Seller', 'Araf', 'arafrohan804@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f.7Ws3tRT.Uw/Eqwhg6ONeyV.wTiuWXxlNW03durVwoMon.HZk/pW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 20:49:47', '2021-07-01 20:49:47', NULL, NULL, NULL, 1, NULL, NULL),
(310, 'Individual Seller', 'Shahjalal Khokon', 'khokon_sarkar@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 20:50:31', '2021-07-01 20:50:31', NULL, NULL, NULL, 1, NULL, NULL),
(311, 'Individual Seller', 'Saiful islam', 'saifulislamhmhossain@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MGSaHz6EYfV1jy7XulVHBOlKliwKD8rMK4z63q5ezGkh.aa6A5g1m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 20:56:17', '2021-07-01 20:56:17', NULL, NULL, NULL, 1, NULL, NULL),
(312, 'Individual Seller', 'Rasel Khan', 'raselkhan2798@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 21:15:22', '2021-07-01 21:15:22', NULL, NULL, NULL, 1, NULL, NULL),
(313, 'Individual Seller', 'WlpFXAbNaZqI', 'kyle.yordy@outlook.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2veLGROvVhxqHFdgTGOV/egu0du.SuBjvyTqXJXiEhtSjWyTxDAyG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 21:27:57', '2021-07-01 21:27:57', NULL, NULL, NULL, 1, NULL, NULL),
(314, 'Individual Seller', 'Md mithun', 'mdmithun.bd2014@gmail.com', '01904702802', NULL, 0, 0, '', '', '2021-07-01 15:41:59', '2021-07-01 15:41:59', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iieQumBU9y4fP10jJOaChO8sI4wasHTQJQPuULZBtmCnXC/I.y3vO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 21:38:54', '2021-07-01 21:40:59', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(315, 'Individual Seller', 'মীর মোশারাফ হোসেন', 'hossain.mir@outlook.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 21:50:42', '2021-07-01 21:50:42', NULL, NULL, NULL, 1, NULL, NULL),
(316, 'Individual Seller', 'AR Asif', 'arasif50@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:11:17', '2021-07-01 22:11:17', NULL, NULL, NULL, 1, NULL, NULL),
(317, 'Individual Seller', 'Jakir hossain', 'jakirhossain2288@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Sx/Vf/8bZCfG1VyhkT5WsuhD2hmH/o066Gcnoo06s9gGm.miE.foa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:14:24', '2021-07-01 22:14:24', NULL, NULL, NULL, 1, NULL, NULL),
(318, 'Individual Seller', 'সু জ ন', 'sujanhossen24071997@gmail.com', '01627145296', NULL, 0, 0, '', '', '2021-07-01 16:26:28', '2021-07-01 16:26:28', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:24:54', '2021-07-01 22:25:28', NULL, 'Khulna', NULL, 1, NULL, NULL),
(319, 'Individual Seller', 'Sanjay Shastri', 'meghbalo.22@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:28:25', '2021-07-01 22:28:25', NULL, NULL, NULL, 1, NULL, NULL),
(320, 'Individual Seller', 'Shamal Das', 'shamaldas7195@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:28:32', '2021-07-01 22:28:32', NULL, NULL, NULL, 1, NULL, NULL),
(321, 'Individual Seller', 'Md Monir Hossain', 'monirpolice.bd@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NbZpqeK5mFJq0cUTL7BZeeVgVjDIZ0NogWZD65EkhfE6sxywenUzi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:32:03', '2021-07-01 22:32:03', NULL, NULL, NULL, 1, NULL, NULL),
(322, 'Individual Seller', 'Touhid Hasan', 'touhidhasaneyad@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$m4hE6qqpiJeOII/xPI1PA.zdja/hTP752hV5mDVR3Mm14uaue27aK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:33:12', '2021-07-01 22:33:12', NULL, NULL, NULL, 1, NULL, NULL),
(323, 'Individual Seller', 'Abu Baker Siddique', 'abubakars1987@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:33:14', '2021-07-01 22:33:14', NULL, NULL, NULL, 1, NULL, NULL),
(324, 'Individual Seller', 'Sihab Sarkar', 'sihabsarkar1233@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xFPUcSHzK.R52kcBhIGOpOz51M.ayxaO2q8wqljpSS62H6kC.fFzK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:33:39', '2021-07-01 22:33:39', NULL, NULL, NULL, 1, NULL, NULL),
(325, 'Individual Seller', 'Mizanur Rahman', 'mizanurrahmanuk10@gmail.com', '01644821934', NULL, 0, 0, '', '', '2021-07-01 16:37:43', '2021-07-01 16:37:43', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6H884GSQ.GC8URhiQqLR8.UyTwjPTc/bsz3fRLssHIw7boiZ.5gFC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:35:40', '2021-07-01 22:36:43', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(326, 'Individual Seller', 'FT Imran Maisa', 'alial.mahim@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:37:15', '2021-07-01 22:37:15', NULL, NULL, NULL, 1, NULL, NULL),
(327, 'Individual Seller', 'MS Shahabuddin Ratan', 'ratanarno@gmail.com', '01670206040', NULL, 0, 0, '', '', '2021-07-01 16:42:03', '2021-07-01 16:42:03', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2ksNqt2hE/SsXE.GudaNEuc7VusRccdAAjeKmyG4mfVC7P3diDhrq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:39:10', '2021-07-01 22:41:03', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(328, 'Individual Seller', 'Akiruddin Tanjid', 'akiruddintanjid@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:39:47', '2021-07-01 22:39:47', NULL, NULL, NULL, 1, NULL, NULL),
(329, 'Individual Seller', 'Forhad Hosan Raju', 'farhaduddin463@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:39:57', '2021-07-01 22:39:57', NULL, NULL, NULL, 1, NULL, NULL),
(330, 'Individual Seller', 'Sultan Mahamud Sany', 'sahan.sany@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:40:04', '2021-07-01 22:40:04', NULL, NULL, NULL, 1, NULL, NULL),
(331, 'Individual Seller', 'Sayedi 07', 'rasulsayediazadkanon@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:40:43', '2021-07-01 22:40:43', NULL, NULL, NULL, 1, NULL, NULL),
(332, 'Individual Seller', 'Mahbub Alam', 'mahbub84alam@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TN4q9TqnooHmLhwV9KqDdON7lh9b.SMuBdTEkXZJhAk.25DMue4gC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:41:29', '2021-07-01 22:41:29', NULL, NULL, NULL, 1, NULL, NULL),
(333, 'Individual Seller', 'arif hossain', 'arif.hossain9011@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:44:58', '2021-07-01 22:44:58', NULL, NULL, NULL, 1, NULL, NULL),
(334, 'Individual Seller', 'wVzMRLBNy', 'doan_jana@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gwk304veVF/LOggYuuizHu8oVaFA.xuBfvBxPKaB4tQP/yhNSebdq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:47:37', '2021-07-01 22:47:37', NULL, NULL, NULL, 1, NULL, NULL),
(335, 'Individual Seller', 'Mithu patwary', 'patwarym20@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jtOvnt.Z4YZPi7MxzDXoK.UmkFQ4dMBRSHlDLcCYwPiYnY/kAmEKi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:48:57', '2021-07-01 22:48:57', NULL, NULL, NULL, 1, NULL, NULL),
(336, 'Individual Seller', 'Md Misrul Shaikh', 'mdmisrulshaikh@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3vc2wfGD/C88leOu2/amA.vzHL3ejd8kotfOzaedqczzhL97ATQ/2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:52:23', '2021-07-01 22:52:23', NULL, NULL, NULL, 1, NULL, NULL),
(337, 'Individual Seller', 'Rakibul Islam Roki', 'sfc.sangram@gmail.com', '01688293250', NULL, 0, 0, '', '', '2021-07-01 16:54:58', '2021-07-01 16:54:58', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.w12mTBV4CRSLsW3s39zXO5C8r.NB2nmHRX1PYnQHVbQ9ZFwL014.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:53:21', '2021-07-01 22:53:58', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(338, 'Individual Seller', 'Mehedi Hasan Emon', 'mhemon44@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mhg9LFLiX6aWgXnFpAMTIulhl4grVnF.PAHX0Z6dCgQlJ1qNlCgme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:54:36', '2021-07-01 22:54:36', NULL, NULL, NULL, 1, NULL, NULL),
(339, 'Individual Seller', 'RABIUL HASAN Cox', 'rabiulhasancox.bd@gmail.com', '01401598183', NULL, 0, 0, '', '', '2021-07-01 16:59:35', '2021-07-01 16:59:35', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:56:19', '2021-07-01 22:58:35', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(340, 'Individual Seller', 'ZahidulIslam', 'zi5831860@gmai.com', '01922554494', NULL, 0, 0, '', '', '2021-07-01 23:12:32', '2021-07-01 23:12:32', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RZkN1S5SNnsM6BpeK2MePewPwp3vb5dhWrtxzToAonwnufNEf3urq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:56:26', '2021-07-02 05:11:32', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(341, 'Individual Seller', 'Mansur Uddin', 'asif285ahmed@gmail.com', '01725463513', NULL, 0, 0, '', '', '2021-07-01 17:01:19', '2021-07-01 17:01:19', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dhTyfNVo/e9iiQ94CYKx4uilrLNCFDBwOc9jzvmHjvUwgm3PaxCJ6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 22:58:36', '2021-07-01 23:00:19', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(342, 'Individual Seller', 'Jahir', 'mdshuvo8080@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$12DCBklks9sILHRGxLbHQOwaiXS5U4pZdIXdTyGb9d/MYXuH5oZla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:01:41', '2021-07-01 23:01:41', NULL, NULL, NULL, 1, NULL, NULL),
(343, 'Individual Seller', 'solayman khan', 'raselkhan420b@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4GfanNnU11ApWTzgqlBX5OjbIvI98MID4WrAKkG5zm7Y2RMB701o2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:02:22', '2021-07-01 23:02:22', NULL, NULL, NULL, 1, NULL, NULL),
(344, 'Individual Seller', 'Hasan Ahmed Mujtaba', 'ahmed.samee.169@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8RkmN3.8OFWBLQmDtSB3Yuz1I0XL4vzXRl1X5a/gqIOTk2eIO7ogy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:04:50', '2021-07-01 23:04:50', NULL, NULL, NULL, 1, NULL, NULL),
(345, 'Individual Seller', 'Yasin Rahman', 'yeasinrahman436@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:06:54', '2021-07-01 23:06:54', NULL, NULL, NULL, 1, NULL, NULL),
(346, 'Individual Seller', 'Md.Hasanuzzaman Hasan', 'hasankhan.ksj@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SrCeWyOmx8IEyqP0T/9F4OQGZ6ogh8JCgBVaRHIj.8TrXsYoJujeu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:08:35', '2021-07-01 23:08:35', NULL, NULL, NULL, 1, NULL, NULL),
(347, 'Individual Seller', 'MD Biplob', 'biplob1976.b7@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:08:46', '2021-07-01 23:08:46', NULL, NULL, NULL, 1, NULL, NULL),
(348, 'Individual Seller', 'History of Life', 'shohag.brothers@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:11:48', '2021-07-01 23:11:48', NULL, NULL, NULL, 1, NULL, NULL),
(349, 'Individual Seller', 'Md jakir hossain Jakir', 'Mdjakirhossain21223@gmai.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xYhCZEvQdjodr1pRDwJFYetzScBlgXcrlSBjXN0LiVs/ZdCf2.9pO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:14:05', '2021-07-01 23:14:05', NULL, NULL, NULL, 1, NULL, NULL),
(350, 'Individual Seller', 'Md Kameul Islam', 'mdkamrulislam180@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hdqcW7VcI1l49cnnm6tY0u2LziLUDEjeoAymJOMpYAXQ9B/Ja.K/a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:15:59', '2021-07-01 23:15:59', NULL, NULL, NULL, 1, NULL, NULL),
(351, 'Individual Seller', 'Md. Forhad Reza', 'forhadreza589119@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tFtAH/V5FdUzIbnLBmodruCcWhEfVy8T0miVBswwm/7fOZ2k0MVcG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:16:05', '2021-07-01 23:16:05', NULL, NULL, NULL, 1, NULL, NULL),
(352, 'Individual Seller', 'Md Harun or Rashid', 'harunmir7@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$igAxZJ7ZEKB7jPnH4mUiQ.KduWZEwcnFza6vrJPfIPfzs8PRmfZ3q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:17:31', '2021-07-01 23:17:31', NULL, NULL, NULL, 1, NULL, NULL),
(353, 'Individual Seller', 'Ariful islam Omit', 'mdomit5194@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b8Fx2v5XJO3RVhAVCjhf1.xoh24BRt8fgfnYoP1RLmPW3P.Nip9bG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:17:51', '2021-07-01 23:17:51', NULL, NULL, NULL, 1, NULL, NULL),
(354, 'Individual Seller', 'cQGipbtIkDNFMsLz', 'josh_dizon@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$poLcjRqooCwU1woFPl/rN.4b8CK135PhwhDJfwScw8BxM4Jlpbaiq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:18:33', '2021-07-01 23:18:33', NULL, NULL, NULL, 1, NULL, NULL),
(355, 'Individual Seller', 'Tufayel Ahmed', 'tufayelbdt@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:22:12', '2021-07-01 23:22:12', NULL, NULL, NULL, 1, NULL, NULL),
(356, 'Individual Seller', 'Emran', 'Emranhossain24689@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Y34xPNonrXMA6kXYojayusISwXhj7/PHiT4CalkO7fMsKb/CDBtO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:23:04', '2021-07-01 23:23:04', NULL, NULL, NULL, 1, NULL, NULL),
(357, 'Individual Seller', 'Towfiqe Ahamed', 'towfiqe.ahamed58@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Jn8y3tHeSBbf06n525799O2diCrvx/Kj2bdsgR96h0VOc9OdiHA0W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:31:03', '2021-07-01 23:31:03', NULL, NULL, NULL, 1, NULL, NULL),
(358, 'Individual Seller', 'Md Samim Talukder', 'samimtalukder7@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:31:52', '2021-07-01 23:31:52', NULL, NULL, NULL, 1, NULL, NULL),
(359, 'Individual Seller', 'Sharif Bhuiyan', 'ssquite@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nzeSjhIEJDhpWqX6oHs90uF4JJmGFS1w2XUS4kAzpTMc.HvCJmwZ6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:33:25', '2021-07-01 23:33:25', NULL, NULL, NULL, 1, NULL, NULL),
(360, 'Individual Seller', 'Puja Saha', 'nilashanil115@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:34:31', '2021-07-01 23:34:31', NULL, NULL, NULL, 1, NULL, NULL),
(361, 'Individual Seller', 'Rafiqul Hasan', 'rafiqul.shakkhar@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tnTN.oc3k9A5hvpJza5Fdu63eJoN4rUVLc8w8l.NIcX1Qt/q1LUDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:34:53', '2021-07-01 23:34:53', NULL, NULL, NULL, 1, NULL, NULL),
(362, 'Individual Seller', 'MD Shahin Alam', 'smshahin250@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:36:55', '2021-07-01 23:36:55', NULL, NULL, NULL, 1, NULL, NULL),
(363, 'Individual Seller', 'Al Amin', 'Alamintonmoy23@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ED43Arm7VCKivh9zs07j/uCdgw5yDqEmpANAba6MG/ShN0eQUYJB6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:38:56', '2021-07-01 23:38:56', NULL, NULL, NULL, 1, NULL, NULL),
(364, 'Individual Seller', 'Nahid Newaz', 'nahid.newaz91@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:39:28', '2021-07-01 23:39:28', NULL, NULL, NULL, 1, NULL, NULL),
(365, 'Individual Seller', 'Iqbal hossain Sumon', 'iqbalmohd199490@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QG8qxNJiX06Y0E.LmAUoLejOxxKTxhbLHgo0RU9.1P1LoeX9CaG12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:41:09', '2021-07-01 23:41:09', NULL, NULL, NULL, 1, NULL, NULL),
(366, 'Individual Seller', 'Ahnaf Shahil Param', 'ahnafshahil10082@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:43:40', '2021-07-01 23:43:40', NULL, NULL, NULL, 1, NULL, NULL),
(367, 'Individual Seller', 'Hasan Al Mamun', 'hamamun@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IAvoh9CPErbfE/xTvwwsJ.oKQzdMW.rHs/7aV1S8APPLgdkw9/h0O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:43:56', '2021-07-01 23:43:56', NULL, NULL, NULL, 1, NULL, NULL),
(368, 'Individual Seller', 'Sohrab Hossain', 'sohrab_143@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Qa9EnbE.Wl54Jh9GFKoJBOvDzLz/hbuRlN301goJhXdMbl9ZxqJiu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:47:25', '2021-07-01 23:47:25', NULL, NULL, NULL, 1, NULL, NULL),
(369, 'Individual Seller', 'Imtiaz hasib', 'imtiazhasib081@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w5.ipGWZPkegk2wWpBw7A.kk.ctc84e71.QFDc7E3Wlxqq1s/27FO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:51:15', '2021-07-01 23:51:15', NULL, NULL, NULL, 1, NULL, NULL),
(370, 'Individual Seller', 'Jahid Shishir', 'Shishirleo07@gmail.com', '01976937716', NULL, 0, 0, '', '', '2021-07-01 17:57:11', '2021-07-01 17:57:11', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ndCB1elbOmc8Nbq3e5hI6OoOY2Bz8uMXt858pUKQQTnepAxUBzSZm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:54:26', '2021-07-01 23:56:11', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(371, 'Individual Seller', 'Saidur Rahman Ziko', 'saidur5614@gmail.com', '01820887432', NULL, 0, 0, '', '', '2021-07-01 18:04:05', '2021-07-01 18:04:05', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-01 23:59:38', '2021-07-02 00:03:05', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(372, 'Individual Seller', 'Prosanjit baroi', 'Prosanjitprosan@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rpHMgpXOI2ttw9oCPKlMCeAOA8ZRVNkSs6/AN2hI3oPM.CuBxIH8.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:02:01', '2021-07-02 00:02:01', NULL, NULL, NULL, 1, NULL, NULL),
(373, 'Individual Seller', 'Saiful Islam Riad', 'Hafizsaiful237@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5m.4FZU1vPtqwOmNDBor.OqsKkpz65VZEew6IMAhKs24a70MJog4W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:02:12', '2021-07-02 00:02:12', NULL, NULL, NULL, 1, NULL, NULL),
(374, 'Individual Seller', 'Md. Maiyn Uddin Chowdhury', 'maiynmunna@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wRGf4BRQJwYOnt99oeC.aessQ1aOjUX1z.b8Pe4e3o1J/fJPuXg..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:05:29', '2021-07-02 00:05:29', NULL, NULL, NULL, 1, NULL, NULL),
(375, 'Individual Seller', 'MD IMDADUL HAQUE', 'Imdadulhaque1977@gmail.Com', '01818591838', NULL, 0, 0, '', '', '2021-07-01 18:11:06', '2021-07-01 18:11:06', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YVvCOAV/JiWsDs.7GzhBwObrxEriAEagX1im29V1gifqHWvvfCUPO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:08:29', '2021-07-02 00:10:06', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(376, 'Individual Seller', 'Md.Asad Molla', 'asad.ru.bsl@gmail.com', '01737481410', NULL, 0, 0, '', '', '2021-07-01 18:14:36', '2021-07-01 18:14:36', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XI0Bds6S.fHuYIKJhLBXcuD5oNPAXWWjD8j8PIyS4n8d713L0h7CO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:11:36', '2021-07-02 00:13:36', NULL, 'Barishal', NULL, 1, NULL, NULL),
(377, 'Individual Seller', 'Meran', 'Mdmerankhandokar@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jTfB4nEOQ1Ad5CNpY/Sh5OGD2w2QDYNO8IidY4nb5govGNsZ8SBvK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:13:24', '2021-07-02 00:13:24', NULL, NULL, NULL, 1, NULL, NULL),
(378, 'Individual Seller', 'Md Emon Khan', 'mdemonkhan191570@gmail.com', '01731693486', NULL, 0, 0, '', '', '2021-07-01 18:17:32', '2021-07-01 18:17:32', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kW66GHJ6sLn6XDBFu4XS6ePwWueOcwFMJVDebdPXCQ3c5XnJRAp1m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:14:08', '2021-07-02 00:16:32', NULL, 'Sylhet', NULL, 1, NULL, NULL),
(379, 'Individual Seller', 'Md Mamunkazi', 'mdmamunkazi81@gmail.com', '01957061579', NULL, 0, 0, '', '', '2021-07-01 18:19:57', '2021-07-01 18:19:57', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:15:16', '2021-07-02 00:18:57', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(380, 'Individual Seller', 'Md Aslam Sikder', 'mdaslamsikder@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:18:40', '2021-07-02 00:18:40', NULL, NULL, NULL, 1, NULL, NULL),
(381, 'Individual Seller', 'Rakib', 'rakibulislam664444@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9782paUT7yf911AJspwb.u1c5yowG.lkEjhLpEo/MVvlBrJHImTYm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:18:50', '2021-07-02 00:18:50', NULL, NULL, NULL, 1, NULL, NULL),
(382, 'Individual Seller', 'Md. Bane Amin Sheik', 'baneaminbd@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SzbTeYDWIBGz2WR60jhbXuEvC6dD8VHoeUUivF2jn0fRaiGKjaf3e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:19:55', '2021-07-02 00:19:55', NULL, NULL, NULL, 1, NULL, NULL),
(383, 'Individual Seller', 'Tanvir Hasan', 'tanvir946077@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:21:17', '2021-07-02 00:21:17', NULL, NULL, NULL, 1, NULL, NULL),
(384, 'Individual Seller', 'Minto Bhuiyan', 'mintu_cox@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:22:25', '2021-07-02 00:22:25', NULL, NULL, NULL, 1, NULL, NULL),
(385, 'Individual Seller', 'Pavel Hossain', 'hmurad078@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:25:26', '2021-07-02 00:25:26', NULL, NULL, NULL, 1, NULL, NULL),
(386, 'Individual Seller', 'Md. Rifat Jahan', 'rifatniloyn@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ExxbkAK.w5X73mC3pwN9q.mdv0rbFoSJUucCGXE1bHPZHPOMVvLG6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:25:34', '2021-07-02 00:25:34', NULL, NULL, NULL, 1, NULL, NULL),
(387, 'Individual Seller', 'Md Rishad Hossain', 'md.rishadhossainbd@gmali.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qG6uGN9mrk38vrMwtqn2JOBMkDL.svi.irrfa.8D.7h7.YAg8SIqO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:25:40', '2021-07-02 00:25:40', NULL, NULL, NULL, 1, NULL, NULL),
(388, 'Individual Seller', 'Monjur Hossain', 'monjursaheb404@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:25:42', '2021-07-02 00:25:42', NULL, NULL, NULL, 1, NULL, NULL),
(389, 'Individual Seller', 'MD MEHEDI HASAN', 'mirmasud.miu@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MAtcqLtc2DIkIDiJ95rrFOWj69YMyjHPDZun8HnDiQ.J4EisqDkuO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:25:59', '2021-07-02 00:25:59', NULL, NULL, NULL, 1, NULL, NULL),
(390, 'Individual Seller', 'Monjur Hossain', 'monjurm220@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:26:19', '2021-07-02 00:26:19', NULL, NULL, NULL, 1, NULL, NULL),
(391, 'Individual Seller', 'Syed Rafi', 'Syedrafiahmed2015@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lxWb1aHk0/SkFgrkVyaZiOlfjU8yt.KpGQOJLnvPO0QI5m7SBbB1K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:27:23', '2021-07-02 00:27:23', NULL, NULL, NULL, 1, NULL, NULL),
(392, 'Individual Seller', 'Riyad Hossain', 'riyad_rj@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:28:55', '2021-07-02 00:28:55', NULL, NULL, NULL, 1, NULL, NULL),
(393, 'Individual Seller', 'Farid Alom', 'faridalom198@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Aa0bn3OH7RMtHGYoBcG.4OHHu.9UDYckhZ/nzz52oO0jpN4EmmacC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:30:26', '2021-07-02 00:30:26', NULL, NULL, NULL, 1, NULL, NULL),
(394, 'Individual Seller', 'Anwarul Azim Sikder', 'azimsikder77@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:30:51', '2021-07-02 00:30:51', NULL, NULL, NULL, 1, NULL, NULL),
(395, 'Individual Seller', 'Mehedi Hasan', 'ovimehedi20@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:31:24', '2021-07-02 00:31:24', NULL, NULL, NULL, 1, NULL, NULL),
(396, 'Individual Seller', 'shiam hasan', 'shiamhasaan@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jQ3eUCgmXB5OJ.QGyHGfV.DnUPXCVh9wItcZfnvBcnj3Z4eXSioxK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:31:59', '2021-07-02 00:31:59', NULL, NULL, NULL, 1, NULL, NULL),
(397, 'Individual Seller', 'Abu nachir Tuhin', 'tuhineee220@gmail.com', '01838464901', NULL, 0, 0, '', '', '2021-07-01 18:36:08', '2021-07-01 18:36:08', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cFuYL6ibRdqF3hFcVTWr0uN9Dwcvi1.AiEIXxWLrvQTix.CPMm2Ne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:33:45', '2021-07-02 00:35:08', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(398, 'Individual Seller', 'Mizanur Rahman Shohel', 'shohel.summit@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:34:18', '2021-07-02 00:34:18', NULL, NULL, NULL, 1, NULL, NULL),
(399, 'Individual Seller', 'মোঃ জাহাঙ্গীর আলম', 'jahangiralam042@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:34:53', '2021-07-02 00:34:53', NULL, NULL, NULL, 1, NULL, NULL),
(400, 'Individual Seller', 'Umor Faruk shagor', 'Ofsikdada@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AM.dUEXM33cVQkavVGQQV.3JJibpTz8p8K80O7cyzKeeVAyBqhYZi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:35:18', '2021-07-02 00:35:18', NULL, NULL, NULL, 1, NULL, NULL),
(401, 'Individual Seller', 'Arman Hossain Rakib', 'rocking_rakib23@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:36:21', '2021-07-02 00:36:21', NULL, NULL, NULL, 1, NULL, NULL),
(402, 'Individual Seller', 'Zarir', 'zarirbhuiyan055@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$20EJHehlKoMnqniS/CRHs.tlrgBobg5ayWeAQUCLbMUJEBB14Lnem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:37:08', '2021-07-02 00:37:08', NULL, NULL, NULL, 1, NULL, NULL),
(403, 'Individual Seller', 'MD.TOHIDUL ISLAM', 'imdtohidul19@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$msXZMgMFPff7yv2TiJgTWu3jrcBTY2wSNePeoMV65pEF2Wo..3JiS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:38:39', '2021-07-02 00:38:39', NULL, NULL, NULL, 1, NULL, NULL),
(404, 'Individual Seller', 'Md Monir', 'bdmonir98@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$V.rNO79sJK9usi3pe5N3QO7TQ73xgTmyhGjOT8wKwI4sJYJyuMc9q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:39:40', '2021-07-02 00:39:40', NULL, NULL, NULL, 1, NULL, NULL),
(405, 'Individual Seller', 'Ashik Khan', 'ashikkhan451245@gmail.com', '01781968591', NULL, 0, 0, '', '', '2021-07-01 18:44:25', '2021-07-01 18:44:25', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:40:55', '2021-07-02 00:43:25', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(406, 'Individual Seller', 'Thunder Vlog', 'ctausifmazhar2193@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:41:12', '2021-07-02 00:41:12', NULL, NULL, NULL, 1, NULL, NULL),
(407, 'Individual Seller', 'Md Ekram Hossain Sarker', 'ekram9060@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dMzDHJAOA9eOuQ0icYkDpevkkfRjM.8E0V7VhGkCHXjhd7mebEwS.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:41:57', '2021-07-02 00:41:57', NULL, NULL, NULL, 1, NULL, NULL),
(408, 'Individual Seller', 'Ashik Khan', 'ashikkhan7up@gmail.com', '01781968591', NULL, 0, 0, '', '', '2021-07-02 08:32:07', '2021-07-02 08:32:07', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:44:04', '2021-07-02 14:31:07', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(409, 'Individual Seller', 'Yeasin Arafat', 'ri01230123@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:49:27', '2021-07-02 00:49:27', NULL, NULL, NULL, 1, NULL, NULL),
(410, 'Individual Seller', 'md.parvez hasan', 'parvezbjmc@gmail.com', '01711283665', NULL, 0, 0, '', '', '2021-07-01 18:56:46', '2021-07-01 18:56:46', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KS9fkgJEOFfxeDEIij2KyOMW3eJxaKBv3rQfmBq3kVrFAE291MhQy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:53:02', '2021-07-02 00:55:46', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(411, 'Individual Seller', 'Iqbak', 'milonraj400@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NdgGV4YhQQCEY0kK7Z05uOYuvGWjQDecCCXCzenKIiMDdjvn/e70.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:53:52', '2021-07-02 00:53:52', NULL, NULL, NULL, 1, NULL, NULL),
(412, 'Individual Seller', 'Mohammad Billal', 'mohammadbillal263346@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ycdRLJjg4DSyHwLJRrLjhOaR/EH0BqWdCUSGGy3Pe2YX8YQY8wQvO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:56:10', '2021-07-02 00:56:10', NULL, NULL, NULL, 1, NULL, NULL),
(413, 'Individual Seller', 'Md sakib', 'fenisakib42@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 00:58:26', '2021-07-02 00:58:26', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(414, 'Individual Seller', 'Abir Akash', 'abirakash781@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aqlgvZBOGUl5b9OukKibxO4GlEb4qKaPASlql9UTNt.TdPrI3mrz6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:04:10', '2021-07-02 01:04:10', NULL, NULL, NULL, 1, NULL, NULL),
(415, 'Individual Seller', 'Anik Roy', 'dreammannirob@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:09:11', '2021-07-02 01:09:11', NULL, NULL, NULL, 1, NULL, NULL),
(416, 'Individual Seller', 'Anik Chandra Roy', 'anikchandraroy1@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:09:56', '2021-07-02 01:09:56', NULL, NULL, NULL, 1, NULL, NULL),
(417, 'Individual Seller', 'MD MEHEDI HASAN', 'mehedihasan1511994@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4V9EYF4.yWD28Zo1qVCRqeqlbXMjSaCiaI7oDDwtVYVnnwBgUBGTW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:11:55', '2021-07-02 01:11:55', NULL, NULL, NULL, 1, NULL, NULL),
(418, 'Individual Seller', 'Sarwar Hossain San', 'mdsarwarhossien447@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:14:49', '2021-07-02 01:14:49', NULL, NULL, NULL, 1, NULL, NULL),
(419, 'Individual Seller', 'Mohammad sajibur Rahaman', 'Mohammadsajibur@gmail.com', '01955554444', NULL, 0, 0, '', '', '2021-07-01 19:21:33', '2021-07-01 19:21:33', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IIqM9BQkIF8mVnKT.Q3LVOw.h4Ek0Lye0iW8dVK/b.Z8QJJiSJqnG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:19:31', '2021-07-02 01:20:33', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(420, 'Individual Seller', 'Jashim Mahamud', 'jashimmahamud.prince@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:27:10', '2021-07-02 01:27:10', NULL, NULL, NULL, 1, NULL, NULL),
(421, 'Individual Seller', 'Salauddin Ahmed Raj', 'Salauddin.ms72@gmail.com', '01836903869', NULL, 0, 0, '', '', '2021-07-01 19:35:38', '2021-07-01 19:35:38', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$i.n96.Qu3ZXGtdPl2BZDBO9rLzkTa5h8JpyqlDGD9dPniXbjOH.S.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:30:51', '2021-07-02 01:34:38', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(422, 'Individual Seller', 'hasanmotiurrahaman rbl', 'hasanmotiurrahamanrbl@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:32:49', '2021-07-02 01:32:49', NULL, NULL, NULL, 1, NULL, NULL),
(423, 'Individual Seller', 'Evan Ali', 'alievan189@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:33:11', '2021-07-02 01:33:11', NULL, NULL, NULL, 1, NULL, NULL),
(424, 'Individual Seller', 'Munem Rahman Marin', 'marinraptor93@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0OezjbL2MsG8LshJWKFU4ee9KVv4mVgcc6WWDBsxZPxBmDyo6El.u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:34:56', '2021-07-02 01:34:56', NULL, NULL, NULL, 1, NULL, NULL),
(425, 'Individual Seller', 'Rifat', 'allnaimrifat@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JpTQBb2a2jv8IHYcHOxgT.MoiDiWYJMLfJVZXcEC037BPJss3YsPa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:34:57', '2021-07-02 01:34:57', NULL, NULL, NULL, 1, NULL, NULL),
(426, 'Individual Seller', 'Sujon Chandra Mozumdar', 'Sujon.cm@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gEhNlJCjPXW22Em3qNBeNOmIPPGKzFcxbixL08tOoR0CdCDt.d8P.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:41:17', '2021-07-02 01:41:17', NULL, NULL, NULL, 1, NULL, NULL),
(427, 'Individual Seller', 'AB Siddiq', 'abubakkarsiddiq329041@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:45:00', '2021-07-02 01:45:00', NULL, NULL, NULL, 1, NULL, NULL),
(428, 'Individual Seller', 'MD SRABON KHAN', 'srabonkhan780@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:45:03', '2021-07-02 01:45:03', NULL, NULL, NULL, 1, NULL, NULL),
(429, 'Individual Seller', 'Mahamud Hasan Tanjil', 'mhtanjil1992@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J.82r9ORkjkfjxaKXVgJ9OxaZvLNT0tdN3lWh6V1XAoWEjYInPf56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:45:55', '2021-07-02 01:45:55', NULL, NULL, NULL, 1, NULL, NULL),
(430, 'Individual Seller', 'Rahman Shourov', 'shourovcool@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:46:22', '2021-07-02 01:46:22', NULL, NULL, NULL, 1, NULL, NULL),
(431, 'Individual Seller', 'Azizul Hossain', 'azizvivonex@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:49:15', '2021-07-02 01:49:15', NULL, NULL, NULL, 1, NULL, NULL),
(432, 'Individual Seller', 'Tajgir siddiki', 'mafiatushar38@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JoeMebcYOTUnU4f9srB0SOXweateXudAI3XWHurwNu6j/7DtJ97Ni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:49:41', '2021-07-02 01:49:41', NULL, NULL, NULL, 1, NULL, NULL),
(433, 'Individual Seller', 'Mohammed Abidullah Kaiser Pavel', 'abidullahkaiser@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:55:29', '2021-07-02 01:55:29', NULL, NULL, NULL, 1, NULL, NULL),
(434, 'Individual Seller', 'ASRAFUL', 'Asrafulislamhamim103@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RNuBAf2KN/epRyj8ZPSbm.E/GTjnyuSiqp6md146Mvt4kpqvP3Tom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 01:59:58', '2021-07-02 01:59:58', NULL, NULL, NULL, 1, NULL, NULL),
(435, 'Individual Seller', 'vPhTVxkm', 'shardaywalker95@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EMTVo.W2gzOC/BO6N5pGN.CgIZbbrJFlYQ9hkDFcx1IkOEaBJiz4u', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:01:23', '2021-07-02 02:01:23', NULL, NULL, NULL, 1, NULL, NULL),
(436, 'Individual Seller', 'Rajib khan', 'rajibkhanlrx6763@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pC.Ekvdcx7/ZInrtzfgd4eJpwdh4jAGTSySXizWLV7/XA/BxzGGhS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:11:06', '2021-07-02 02:11:06', NULL, NULL, NULL, 1, NULL, NULL),
(437, 'Individual Seller', 'Md Shamim Hossain', 'shamimhossain470290@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$N0BG4eKMgbMg2v7uyHi7ZebV3O6.x7gM18SU.Mm9KYAf4XP4xdBV.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:12:30', '2021-07-02 02:12:30', NULL, NULL, NULL, 1, NULL, NULL),
(438, 'Individual Seller', 'Rim Wahid', 'rimwahid1996@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:14:31', '2021-07-02 02:14:31', NULL, NULL, NULL, 1, NULL, NULL),
(439, 'Individual Seller', 'RANA HOSSAIN', 'mdrana1870@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QDevr0nzTiiqJdxK9z5s3.S9OEix808O/G4hf/bTXrAHTXmOXJgfC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:15:53', '2021-07-02 02:15:53', NULL, NULL, NULL, 1, NULL, NULL),
(440, 'Individual Seller', 'Aryan Dipu', 'ayandipu@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:17:04', '2021-07-02 02:17:04', NULL, NULL, NULL, 1, NULL, NULL),
(441, 'Individual Seller', 'Jwel rana', 'jewelrana01750708733@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Os02GtH4lh/jBxxuyUWC2.BPuX5CDMGcFNBfIv5FYULfk78kQ0UCq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:17:30', '2021-07-02 02:17:30', NULL, NULL, NULL, 1, NULL, NULL),
(442, 'Individual Seller', 'অভিমানি দুরদিপো', 'shobnomovi@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:18:31', '2021-07-02 02:18:31', NULL, NULL, NULL, 1, NULL, NULL),
(443, 'Individual Seller', 'Shariful Islam', 'raju.shariful@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:18:55', '2021-07-02 02:18:55', NULL, NULL, NULL, 1, NULL, NULL),
(444, 'Individual Seller', 'Al Biruni Bin Sayed', 'albirunibinsayed1912@gmail.com', '01954803190', NULL, 0, 0, '', '', '2021-07-01 20:26:00', '2021-07-01 20:26:00', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:23:10', '2021-07-02 02:25:00', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(445, 'Individual Seller', 'asraful Islam', 'asrafulboka17@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EfBDhXrRV149aitWm1R4XOgZEqicNoBlbPBZ6FGQcouiMeJYOkzsW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:24:46', '2021-07-02 02:24:46', NULL, NULL, NULL, 1, NULL, NULL),
(446, 'Individual Seller', 'MD Sumon Sajjad Shah', 'sumonsha714@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:33:08', '2021-07-02 02:33:08', NULL, NULL, NULL, 1, NULL, NULL),
(447, 'Individual Seller', 'MD. TORIKUL ISLAM MASUM', 'timasum5431@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$43MC7VQx5sA80gB1/J5WcuVe0MWwAq7iPvSRrRzRKDEw7bL8VFzz6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:33:28', '2021-07-02 02:33:28', NULL, NULL, NULL, 1, NULL, NULL),
(448, 'Individual Seller', 'LAkcFfuils', 'barrybenz@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D1Q8waO5fhtJ4RwNuHIcwegfGdtGRajVFtRx0KF0bRk5oqNJbOgoC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:44:11', '2021-07-02 02:44:11', NULL, NULL, NULL, 1, NULL, NULL),
(449, 'Individual Seller', 'asraful islam', 'asrafulboka17@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4cxkGRsoh0NGSMIsQuabAuG7ih/ZHhbWUYUHU3QPr06MhPLfU0lje', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 02:50:04', '2021-07-02 02:50:04', NULL, NULL, NULL, 1, NULL, NULL),
(450, 'Individual Seller', 'Zakir Hossain Joy', 'zhossain627@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:03:57', '2021-07-02 03:03:57', NULL, NULL, NULL, 1, NULL, NULL),
(451, 'Individual Seller', 'muhammad Ullah', 'muhammadullah014@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:04:53', '2021-07-02 03:04:53', NULL, NULL, NULL, 1, NULL, NULL),
(452, 'Individual Seller', 'Din Islam', 'dinislamkha@gmail.com', '01612232996', NULL, 0, 0, '', '', '2021-07-01 21:11:00', '2021-07-01 21:11:00', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uaR.L8OuiGsWIQFRF1yKh.uiKiHvR65OxVdtpdo02BrtBi5i.39D6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:08:47', '2021-07-02 03:10:00', NULL, 'Sylhet', NULL, 1, NULL, NULL),
(453, 'Individual Seller', 'Imran Hossain Shan', 'imranhossainshan02@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:13:39', '2021-07-02 03:13:39', NULL, NULL, NULL, 1, NULL, NULL),
(454, 'Individual Seller', 'Himel Kabir', 'mdhimel7172@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Jbs1okfw1dJHQBt1OTWQj.zyLVNXGsHt043VH4dfOlHimJM3fVvFe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:16:27', '2021-07-02 03:16:27', NULL, NULL, NULL, 1, NULL, NULL),
(455, 'Individual Seller', 'Zahid Amin', 'zahidamin466@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:19:20', '2021-07-02 03:19:20', NULL, NULL, NULL, 1, NULL, NULL),
(456, 'Individual Seller', 'Shariful Islam', 'sharifulislamnp423@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:24:27', '2021-07-02 03:24:27', NULL, NULL, NULL, 1, NULL, NULL),
(457, 'Individual Seller', 'Ismail Hossain', 'esmailhosain662@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:29:57', '2021-07-02 03:29:57', NULL, NULL, NULL, 1, NULL, NULL),
(458, 'Individual Seller', 'Abu Younus Shakil', 'Shakil.abjr2@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w4yilalz5kI2c6ypWunMQuBuaMQZe840gBPzbAcgx23yK9hjlFCQS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:33:18', '2021-07-02 03:33:18', NULL, NULL, NULL, 1, NULL, NULL),
(459, 'Individual Seller', 'Tanmoy Das', 'tanmoydas.eee@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Vn.vNAkKLUrjmmPpdX8qX.SD6aUKsK3ucTdGO11nckKUnCb5czoT.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:43:20', '2021-07-02 03:43:20', NULL, NULL, NULL, 1, NULL, NULL),
(460, 'Individual Seller', 'Md. Akter Hossen', 'akterh745@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:53:23', '2021-07-02 03:53:23', NULL, NULL, NULL, 1, NULL, NULL),
(461, 'Individual Seller', 'Rasel Ekram', 'raselekram4@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 03:56:16', '2021-07-02 03:56:16', NULL, NULL, NULL, 1, NULL, NULL),
(462, 'Individual Seller', 'Shahedul Islam', 'dkshahed@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:05:56', '2021-07-02 04:05:56', NULL, NULL, NULL, 1, NULL, NULL),
(463, 'Individual Seller', 'Md Noyan', 'mn9619740@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:06:57', '2021-07-02 04:06:57', NULL, NULL, NULL, 1, NULL, NULL),
(464, 'Individual Seller', 'md sharif', 'mdsharif28111999@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$u0A6Awala7IH8IFtsBKnTuPN7GKYrj7A4/UWzdsxurgIlmSXga9qq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:12:19', '2021-07-02 04:12:19', NULL, NULL, NULL, 1, NULL, NULL),
(465, 'Individual Seller', 'Nahid', 'nahid.hassan.ri1999@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vdQ0SFeNb.kkMujFn0CftOhhTLndPwn95cuLCgNLvNu9DoXKJJmZ6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:16:15', '2021-07-02 04:16:15', NULL, NULL, NULL, 1, NULL, NULL),
(466, 'Individual Seller', 'etFDcLdpzEYvg', 'biztdlki@verizon.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hLoTqt3PtSB7Az8jFLnHceaowxys.d3qmPRYlUmPXUgcYJQ3A5vTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:22:57', '2021-07-02 04:22:57', NULL, NULL, NULL, 1, NULL, NULL),
(467, 'Individual Seller', 'Mohammad Mohin Chy', 'mmohin80@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:23:31', '2021-07-02 04:23:31', NULL, NULL, NULL, 1, NULL, NULL),
(468, 'Individual Seller', 'Shahjamal Ahmed', 'shahjamalahmed9@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 04:33:26', '2021-07-02 04:33:26', NULL, NULL, NULL, 1, NULL, NULL),
(469, 'Individual Seller', 'Tushar khan', 'Mdtusharkhangaril907@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7G745XnRzt67iaXtIJIcTeTrmvTwdn2.VQ7IIu4QdNu3qJP52gUbG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 05:01:24', '2021-07-02 05:01:24', NULL, NULL, NULL, 1, NULL, NULL),
(470, 'Individual Seller', 'Md Ratul Islam Shahid', 'mdratulislamshahid@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 05:12:58', '2021-07-02 05:12:58', NULL, NULL, NULL, 1, NULL, NULL),
(471, 'Individual Seller', 'Tanvir Ahmed Shakil', 'tanvirahmedshakil13019@gmai.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Nkg5jb080UPGpv7OD4Qu2ehRsjLf0yr6y4HFT1klaENkOh7mHOpIC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 05:16:54', '2021-07-02 05:16:54', NULL, NULL, NULL, 1, NULL, NULL),
(472, 'Individual Seller', 'Omar Faruk', 'Rayan.Gazipur@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tre6t037ZH2LzfVQpeYOv.tDoOIfmXqKrQj3ws7lLCwL3LbWhuD7q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 05:29:33', '2021-07-02 05:29:33', NULL, NULL, NULL, 1, NULL, NULL),
(473, 'Individual Seller', 'DAnWbLiCuXR', 'xxguziecxx@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NnZLwgDhPIe6ecTPhYVAuOndl9Jy4VL9Gc7kxPVU9AmfVBpHF17gi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 05:53:58', '2021-07-02 05:53:58', NULL, NULL, NULL, 1, NULL, NULL),
(474, 'Individual Seller', 'yPFoIbJwNQjGxrgC', 'msmith2382@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$G8OiAMAMAktf2TGwYbomW.Iba7jr9XH9mV4G8C7QzXpJJh33T2SOC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 06:27:55', '2021-07-02 06:27:55', NULL, NULL, NULL, 1, NULL, NULL),
(475, 'Individual Seller', 'wgMLhKNARio', 'taylerjoe2012@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SbgpdPCwsXi4IK13/8bIiOFaBWBz5RfM18dXW4dIajtdZq85UaxQS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 06:38:59', '2021-07-02 06:38:59', NULL, NULL, NULL, 1, NULL, NULL),
(476, 'Individual Seller', 'Rudro Somrat', 'somratakbar571@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 07:31:30', '2021-07-02 07:31:30', NULL, NULL, NULL, 1, NULL, NULL),
(477, 'Individual Seller', 'Mohammad soyaib', 'soyaib73@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gCZALBbUU5RSDFi/EiKHd.4jVcdrxr7vebgHyQrRws8XkoJQPeIh2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 07:52:40', '2021-07-02 07:52:40', NULL, NULL, NULL, 1, NULL, NULL),
(478, 'Individual Seller', 'AdEDmnCq', 'soltowm@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QaTNSRkYDRXDjZlUvh8QH.Lwh6Zpjlf9MZ072Wq1ooU1SNbn866Mq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 07:58:16', '2021-07-02 07:58:16', NULL, NULL, NULL, 1, NULL, NULL),
(479, 'Individual Seller', 'BQlyExmaFMNfLDP', 'khilfiker@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.dYkGQYo7ttX7u2mSsTYAOUomG4yYwmFWzZNfSDpVUdwscAT0QtXC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 08:05:42', '2021-07-02 08:05:42', NULL, NULL, NULL, 1, NULL, NULL),
(480, 'Individual Seller', 'মেহেদী হাসান', 'mehedihasan646598@gmail.com', '01706166123', NULL, 0, 0, '', '', '2021-07-02 03:06:58', '2021-07-02 03:06:58', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YLLGIW7Tj.0ImcvZqeKeUOv9DkGsLJF27O9Nc3lRbQqAx3NO5ROla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 09:04:50', '2021-07-02 09:05:58', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(481, 'Individual Seller', 'Salim Ahmed', 'selim01716@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ebi5AJLzmxmJFwiPZj46l.XoKWOJ.o62J97PwRqBokOG.twuT0sMq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 09:14:12', '2021-07-02 09:14:12', NULL, NULL, NULL, 1, NULL, NULL),
(482, 'Individual Seller', 'aIAekTyDsw', 'mantrynerdfo@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NzxrglAAqygt/.eNGdsoduuKapUNFNJDgvVbsacp8dxR0kPKoTviS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 09:32:02', '2021-07-02 09:32:02', NULL, NULL, NULL, 1, NULL, NULL),
(483, 'Individual Seller', 'tDfEKyNXo', 'wenzrn@sbcglobal.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0S8/eTs8hjXO2ODFD2W4Eu53wWkrDYkzrmpNNkw1demV//h60/M/G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 09:40:56', '2021-07-02 09:40:56', NULL, NULL, NULL, 1, NULL, NULL),
(484, 'Individual Seller', 'asraful islam rasel', 'asrafulrasel0@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 10:46:15', '2021-07-02 10:46:15', NULL, NULL, NULL, 1, NULL, NULL),
(485, 'Individual Seller', 'SVYtFMoPpECbKvra', 'kingregreg@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3RiMnJDcpG.4HREHec2fBO9ekhUoRuwrUfl4Wfe2rgXby9Pok8Fpq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 11:35:59', '2021-07-02 11:35:59', NULL, NULL, NULL, 1, NULL, NULL),
(486, 'Individual Seller', 'pmUaYuLlQbGEs', 'joshuadeanwagers777@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S.WW5.VQg0X8DGtKRH94yeyF12RmlrB36JZ22Rj3Q4pX0hy3jxF96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 11:59:20', '2021-07-02 11:59:20', NULL, NULL, NULL, 1, NULL, NULL),
(487, 'Dealer', 'Asik', 'asikchakma243@gmail.com', '01318001088', NULL, 0, 0, '', '', '2021-07-02 07:23:17', '2021-07-02 07:23:17', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7MYTJT/k7qyXZN0ldteHROSHv9nyrtAVwjnqf5RRHHA2ePlT/BG2q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 13:20:57', '2021-07-02 13:22:17', NULL, 'Chattogram', NULL, 1, NULL, NULL),
(488, 'Individual Seller', 'foqElGzgwVY', 'amir.shahir@live.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$E9qEGUPvoghoXLt2QXHjcuPh7.p0ATtXRQl8MxIyjFQRiGuxqGqcO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 18:23:25', '2021-07-02 18:23:25', NULL, NULL, NULL, 1, NULL, NULL),
(489, 'Individual Seller', 'KYeEfvDzor', 'johngorebels@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r6JDl2B2gDkcfhtdWzq3gOKOVS5w9g/eqhHU144ErhqSAjP8IDIyG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 18:30:32', '2021-07-02 18:30:32', NULL, NULL, NULL, 1, NULL, NULL),
(490, 'Individual Seller', 'eIqBUQZzVvAsCb', 'awattsnotarypublic@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0mAHPoi1XsBQxRFhR53xCumvm8/3hJGdyAkvZX5yRsybRYTk8ik/W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 21:05:21', '2021-07-02 21:05:21', NULL, NULL, NULL, 1, NULL, NULL),
(491, 'Individual Seller', 'Ataulla Comillayi', 'ataullacomillayi@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 21:14:26', '2021-07-02 21:14:26', NULL, NULL, NULL, 1, NULL, NULL),
(492, 'Individual Seller', 'Rokibul islam', 'rokibislam12@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$edzfDLXEsYbLWaePrVi9FOXX6mt7b10p89mowCc.0H3qymKB0xVa2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 22:51:09', '2021-07-02 22:51:09', NULL, NULL, NULL, 1, NULL, NULL),
(493, 'Individual Seller', 'XFqUWYSHLR', 'mevans37@att.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ArAGCol0HiOHuUmK9ExDK.lmNGrib4lMM417Jgnh.d/zuxHUyHWP.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-02 23:06:56', '2021-07-02 23:06:56', NULL, NULL, NULL, 1, NULL, NULL),
(494, 'Individual Seller', 'rzxZQWmqnci', 'tdw0215@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$twtPZ/rekttIB3DWzqzVK.rlkPrwEVRkP08lzxKhvV/9bQx95QzRa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 00:41:21', '2021-07-03 00:41:21', NULL, NULL, NULL, 1, NULL, NULL),
(495, 'Individual Seller', 'pGRWDHwNcFok', 'pete_stclair@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HM3ePmtxvxfDaEGHmoPpS.KlrF.s586pfy9tVoc0wjX7RBLYJPA9K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 01:18:47', '2021-07-03 01:18:47', NULL, NULL, NULL, 1, NULL, NULL),
(496, 'Individual Seller', 'Rifat hossain', 'khanrifat490@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2QFevCvt/oGl1wW9PaPG9ORST1/3Sd77xw.5kqVGJgRhdo5iLuZCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 03:45:08', '2021-07-03 03:45:08', NULL, NULL, NULL, 1, NULL, NULL),
(497, 'Individual Seller', 'LIhrmFyjUQXCtc', 'kglyons@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sWl811m0p68hfIBVTuAzveUyW6hi2JyEfxZ/CyO6fLXArHbi7jL5W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 04:18:42', '2021-07-03 04:18:42', NULL, NULL, NULL, 1, NULL, NULL),
(498, 'Individual Seller', 'Md Saiful islam', 'saifulkhan102070@gmail.com', '01910675859', NULL, 0, 0, '', '', '2021-07-03 00:52:59', '2021-07-03 00:52:59', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YXXyy/rzjnofv1/1xk7vr.4SMNxR8OdEd6u9hraHZyNA5R0A4E.JW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 06:49:53', '2021-07-03 06:51:59', NULL, 'Khulna', NULL, 1, NULL, NULL),
(499, 'Individual Seller', 'Md Habib shikder', 'mdhabib472035@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o.CJE9EuYMISP7Q8Wsq7.eoys5UANU4FW.2pqzZp7CsUqWNLB5vkO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 06:50:30', '2021-07-03 06:50:30', NULL, NULL, NULL, 1, NULL, NULL),
(500, 'Individual Seller', 'bGIZRUYzcy', 'karabell512@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$EQansxNiND/Hyl8PGdH1EON0Sq57vNVhKPFjfYLDVBwysmwEtIaia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 08:31:48', '2021-07-03 08:31:48', NULL, NULL, NULL, 1, NULL, NULL),
(501, 'Individual Seller', 'Sawon hossain', 'hossainshaon585@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YyIgbEQBFiF0p57b.5rz.eumxQZSV.NIlH3Lmy7Uu8sikRfjV79u.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 10:11:42', '2021-07-03 10:11:42', NULL, NULL, NULL, 1, NULL, NULL),
(502, 'Individual Seller', 'Deep Drackness', 'bskylighte@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 10:15:40', '2021-07-03 10:15:40', NULL, NULL, NULL, 1, NULL, NULL),
(503, 'Individual Seller', 'VaAjYFNutEKfGOoh', 'phboosalis@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vc0vtqM4d0Jqu3YavQWn6.1KRoNwnkAPybNtkIPuMHN/vLVHOnxGq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 11:59:27', '2021-07-03 11:59:27', NULL, NULL, NULL, 1, NULL, NULL),
(504, 'Individual Seller', 'arif', 'ahpieal2020@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xu.0byoF1CeRRGdPXVCAp.4BLW4d1izMBFgyox9exhhQFIopaS6tq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-03 22:55:54', '2021-07-03 22:55:54', NULL, NULL, NULL, 1, NULL, NULL),
(505, 'Individual Seller', 'KeNgLuRciP', 'valorrushing@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$N4MD7yM6CkyDD7zWDFwQCeuiyouTt/JGRqPiTo2uBHKalvXSwZjPu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-04 01:53:32', '2021-07-04 01:53:32', NULL, NULL, NULL, 1, NULL, NULL),
(506, 'Individual Seller', 'MWYNjbXtFADyhTmz', 'tomy_t100@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FzKy/t/UaTvUsi4cphxNRe1hsIfiP3PlrME5C2CScPFScBj01d1w.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-04 04:53:06', '2021-07-04 04:53:06', NULL, NULL, NULL, 1, NULL, NULL),
(507, 'Individual Seller', 'EzvsLCJKrjVhWQ', 'yolande.witham@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n/GkoDgxRLfbSzN3j42zsuQBUO.snkLr0y6Hb3sdql4tFH4g6WOGe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-04 09:36:43', '2021-07-04 09:36:43', NULL, NULL, NULL, 1, NULL, NULL),
(508, 'Individual Seller', 'GnCLhBEiMZQPz', 'wonka_wonka12@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yArRiDLb2lDF54ANSIc.YuHinOsPYZloMBhfWNhi9I.rDfSUgcjs6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-04 19:03:21', '2021-07-04 19:03:21', NULL, NULL, NULL, 1, NULL, NULL),
(509, 'Individual Seller', 'MQaxjolZI', 'jc_happyhouse@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bAOLYbIkDnA6ZuolRcu0QOO0C/AtOhOLgh7Iq0lwHE5DQKiJzzmsC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 00:18:15', '2021-07-05 00:18:15', NULL, NULL, NULL, 1, NULL, NULL),
(510, 'Individual Seller', 'MiUnaqCSQAshHK', 'sybil.mclendon@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CiCpfuBo3Mnu5egJ1nhlDuniYLRWFbFvKCt3Axu/6jPM1qTaHuZ06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 02:17:26', '2021-07-05 02:17:26', NULL, NULL, NULL, 1, NULL, NULL),
(511, 'Individual Seller', 'zahirul Hasan khan', 'zahirul.ericsson@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GzI0T/LR.9KBzwmjIA4DEuSwUf7cBmntOciuY3vMxnbzHq5XAVo.O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 03:21:44', '2021-07-05 03:21:44', NULL, NULL, NULL, 1, NULL, NULL),
(512, 'Individual Seller', 'aCHVRrjKeuLOM', 'jtucker149@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5B0iZ/gDfho3eFZ7qesGKeSb8E5veG7KVPW/5s5GNC0K/Y1OXjroK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 18:23:50', '2021-07-05 18:23:50', NULL, NULL, NULL, 1, NULL, NULL),
(513, 'Individual Seller', 'XhkwzRMJpdmOsSqN', 'dorine.gurnal@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5RyKzXfu8H90ZzcUpKtFiu9fqfOogTC7SqvjDVz3tn1Z6hlL.Z0X6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 18:44:40', '2021-07-05 18:44:40', NULL, NULL, NULL, 1, NULL, NULL),
(514, 'Individual Seller', 'MQoySsfnPcC', 'hewett.q@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RhPRwqG5MYYulBD/qV1aru/8M/vKJj7mtM1mOidbJREFCXk9IUvRq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 18:49:08', '2021-07-05 18:49:08', NULL, NULL, NULL, 1, NULL, NULL),
(515, 'Individual Seller', 'FZyvihOejWtlCV', 'sakokornelian@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w5jeHJCcdOJGXEIFBXApoeMwEhS259eVrKwuX8ydf1hSXuO8fivoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 19:01:50', '2021-07-05 19:01:50', NULL, NULL, NULL, 1, NULL, NULL),
(516, 'Individual Seller', 'HEjQCfFmc', 'georgiekirkwood@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FjcZfMzzDgJ1vn5.sZlFouJzyyCg.iko5jwz.BjBHrk3grfqQsMb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 19:51:43', '2021-07-05 19:51:43', NULL, NULL, NULL, 1, NULL, NULL),
(517, 'Individual Seller', 'Md.Sujon Hasan', 'sujonhasan659@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nRIDgqCpJidswoTvRMJkpeGmZE6t11Y1KuIZe2KV76V9u5OYuEmVm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 21:25:12', '2021-07-05 21:25:12', NULL, NULL, NULL, 1, NULL, NULL),
(518, 'Individual Seller', 'ovfgletTnhS', 'odyssey784@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uGGjKogef6HrcxVz.BugoOExmEm.fJqT9/iWBNfGtSFQcFkk0VfM.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 22:29:57', '2021-07-05 22:29:57', NULL, NULL, NULL, 1, NULL, NULL),
(519, 'Individual Seller', 'dgwPTqfbAQlXm', 'lavina.littlefair@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$B7zMlCNhpSfTKMKmV4GNOech1Lgn/QEDRLhnJSx0sOtIzTkZcG8fS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-05 22:56:54', '2021-07-05 22:56:54', NULL, NULL, NULL, 1, NULL, NULL),
(520, 'Individual Seller', 'HFMBEgzY', 'whneal@bellsouth.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rAGg3rHSekig.kMlCKeXf.BiSCeqaSanYH6b3r4D8pQBgO5NKnVO2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 01:17:11', '2021-07-06 01:17:11', NULL, NULL, NULL, 1, NULL, NULL),
(521, 'Individual Seller', 'CaOgfurKnJ', 'mrjazz61@verizon.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NV2IMban99HVUUFXUJY/k.bKUlHyRiFI8RKnvhjMwoQ8yw0d1Z79S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 03:17:24', '2021-07-06 03:17:24', NULL, NULL, NULL, 1, NULL, NULL),
(522, 'Individual Seller', 'PrXEySkix', 'artcummings@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4dX9MnpYuHh0iwidRgrXxuUEFQsQ5bX9KuJsoqD7By1eXwNXA6E8m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 04:47:28', '2021-07-06 04:47:28', NULL, NULL, NULL, 1, NULL, NULL),
(523, 'Individual Seller', 'rNfedvOZIwbFD', 'bnsuedkamp@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2AuQWc/RgOvrLUtWtIM46ONexbYh4isg4WEO0NLljHkL2S3jaj8Z6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 06:51:18', '2021-07-06 06:51:18', NULL, NULL, NULL, 1, NULL, NULL),
(524, 'Individual Seller', 'fRuAsOdt', 'denarobinson@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5Mq46jQ6YRyGvonfotEcY.Qsnhb6VSdcc87VENCpQ1KFukjGBfHii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 07:50:17', '2021-07-06 07:50:17', NULL, NULL, NULL, 1, NULL, NULL),
(525, 'Individual Seller', 'Najmul Ahsan Sagor', 'nj.sagor@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UxhCtSop8Q3/.RGk27XHk.jQTRsJ4ZVvp7agCFTrcLGu.cK8teDA2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 12:03:13', '2021-07-06 12:03:13', NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ss_customers` (`id`, `seller_type`, `name`, `email`, `mobile1`, `mobile2`, `mobile1_is_verified`, `mobile2_is_verified`, `mobile1_otp_code`, `mobile2_otp_code`, `mobile1_otp_code_extime`, `mobile2_otp_code_extime`, `area_id`, `is_active`, `is_delete`, `gender`, `linkedin`, `highest_education`, `special_education`, `highest_education_ins`, `experience_year`, `skill_summary`, `about_me`, `current_industry`, `current_function`, `current_designation`, `job_started`, `job_notice_period`, `current_job_responsibility`, `current_salary`, `cv`, `email_verified_at`, `password`, `remember_token`, `first_name`, `middle_name`, `last_name`, `alt_mobile_no`, `designation`, `auth_id`, `google_id`, `gym_id`, `profile_pic`, `profile_pic_url`, `pic_mime_type`, `user_type`, `total_post`, `total_favorite`, `status`, `created_at`, `updated_at`, `deleted_at`, `city`, `address`, `package_id`, `package_start_date`, `package_end_date`) VALUES
(526, 'Individual Seller', 'Mehedi Hasan Imran', 'imran.officebox@gmail.com', '01811477574', NULL, 0, 0, '', '', '2021-07-06 06:48:31', '2021-07-06 06:48:31', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 12:30:57', '2021-07-06 12:47:31', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(527, 'Individual Seller', 'vFkBRUKmolZutA', 'spetrosyan@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jHLsZ3rGvtFuC3qnrYlXAeqwFgdWsksb0bSAEZfT0xO3ueQ.qk6nm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 18:23:15', '2021-07-06 18:23:15', NULL, NULL, NULL, 1, NULL, NULL),
(528, 'Individual Seller', 'Asraful Asraful', 'mahoque85@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 19:13:21', '2021-07-06 19:13:21', NULL, NULL, NULL, 1, NULL, NULL),
(529, 'Individual Seller', 'xLbNgJPEAzkDu', 'tsioux@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NXn5tj62DJz7WxPx6qAxxuhs4G05FXbLgSOanp.yUpQqIgcKvPbzC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 20:19:38', '2021-07-06 20:19:38', NULL, NULL, NULL, 1, NULL, NULL),
(530, 'Individual Seller', 'GUXxKHJluWINR', 'bevan3758@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j2jLFvL0G4mAeFvsU.eDV.LyD0CX9ov71EyHwZNjzthF8Uv9GZkha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 23:39:48', '2021-07-06 23:39:48', NULL, NULL, NULL, 1, NULL, NULL),
(531, 'Individual Seller', 'hLGtiKUuBAxmzjJQ', 'antin.egertonwarburton@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D23N13Ws3PFVSOs0Ytavg.ddg3OE2a5VZ.VoBmfH57Bz4PoV.xrTq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-06 23:49:49', '2021-07-06 23:49:49', NULL, NULL, NULL, 1, NULL, NULL),
(532, 'Individual Seller', 'LEbCgotlcM', 'kadric20@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MIgbQRdxLe/Fd40v8Jvu/OpP8RaorQdRmfJqaur0OayEmmFlgNjA.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 00:55:47', '2021-07-07 00:55:47', NULL, NULL, NULL, 1, NULL, NULL),
(533, 'Individual Seller', 'SIZnNJFvCpbkiK', 'irotorikoutitcha@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6sem85ziFu8WQfND7gBureOgMBX5SfpFf0iXlwMu8lxcbmwq48Pqm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 03:54:39', '2021-07-07 03:54:39', NULL, NULL, NULL, 1, NULL, NULL),
(534, 'Individual Seller', 'UypBxcdevIZV', 'devkumar_2001@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tQoJVRFTx73YSCZeVZd15u1Vu5avfSrdD24cbtKNZbTiz1.U7wN1G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 04:48:18', '2021-07-07 04:48:18', NULL, NULL, NULL, 1, NULL, NULL),
(535, 'Individual Seller', 'UhiokBedFnLGDp', 'mustaque_ahmed_44@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oiX6CjNpYZWcOV9Ji6e4Oegzg5wnxT8R2vK.IL5mjuzpxIOCcIrYa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 05:02:16', '2021-07-07 05:02:16', NULL, NULL, NULL, 1, NULL, NULL),
(536, 'Individual Seller', 'WrKoIFPwTNLbhVDH', 'stratton-r@sbcglobal.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JoAM9nJ8BYIE9LQMqL.sBO1eRH7kPzi2o2Vw5B2r6WfPAnjOy5JQW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 05:42:32', '2021-07-07 05:42:32', NULL, NULL, NULL, 1, NULL, NULL),
(537, 'Individual Seller', 'fWuDykUod', 'natalijalakis@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GIPjvFgg7JSEKBNPz05RyumJQd7zk1wURlfD19XWuOfe8APvHEA.i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 06:48:58', '2021-07-07 06:48:58', NULL, NULL, NULL, 1, NULL, NULL),
(538, 'Individual Seller', 'SkyTjKCxAhEd', 'carry.godfrey@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FbSFZj5BLSjWFU3ZyKN/COLbB1NoRFI3kHziEffKRX32H9flGRuSm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 10:07:10', '2021-07-07 10:07:10', NULL, NULL, NULL, 1, NULL, NULL),
(539, 'Individual Seller', 'lzeUbwjcKYO', 'jenniferpeterson2003@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$s4tXJLKCqBW9oBgevAQs7e4LkdRt1AsLaNK.kA7ImFIv9JxO2aAKa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 11:22:33', '2021-07-07 11:22:33', NULL, NULL, NULL, 1, NULL, NULL),
(540, 'Individual Seller', 'RJxonUGZlhik', 'moosefj@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fMsQf9UGpyT661GBd2O16eqYWSShRDYPWBxqj3ZBPi8TfoOeKExgO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 11:54:04', '2021-07-07 11:54:04', NULL, NULL, NULL, 1, NULL, NULL),
(541, 'Individual Seller', 'EnCNTyRW', 'breweredouard@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WFolk6oMDBRdRh8uzWTsrOhGl2YO5G.pujUPAGRGefqdSF6cA/A6C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 13:08:22', '2021-07-07 13:08:22', NULL, NULL, NULL, 1, NULL, NULL),
(542, 'Individual Seller', 'KkSuIBFdxieX', 'boprinting@sbcglobal.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9SFzhUQiXTKyFD8AX67/ouIFZhZM.IvA6MNijJtkWsoKjGjmugNJm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 14:42:03', '2021-07-07 14:42:03', NULL, NULL, NULL, 1, NULL, NULL),
(543, 'Individual Seller', 'Abdulazim', 'AHMSimranhossain@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J8QaVdGEyEFfM0aQoRPaoe/mLyahBYS7PR6ZQROigAOno2vV3BRQS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 15:01:36', '2021-07-07 15:01:36', NULL, NULL, NULL, 1, NULL, NULL),
(544, 'Individual Seller', 'PfCqgbJNzGmFUcni', 'lavonnegirdwood@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JFI2qNzVSZ7FmvBKCUt9v.B33.z9OfMNBp5ZsB2o7mTDhQg3SOKvC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 18:18:04', '2021-07-07 18:18:04', NULL, NULL, NULL, 1, NULL, NULL),
(545, 'Individual Seller', 'Yasin Hassan Songhite', 'Songhite09@gmail', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gYQQbbpKpSlieNItEhlfqexSfvir02264JsNZK2y0IwXMihauwisG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 18:34:37', '2021-07-07 18:34:37', NULL, NULL, NULL, 1, NULL, NULL),
(546, 'Individual Seller', 'uPSLgtlVvcaoUXF', 'skirodeo@sbcglobal.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aiomczg1Vcz5Nz8JlmFSAu1JVIYyIi3Neh2rGOl7acuCXAekMk5G2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-07 23:06:18', '2021-07-07 23:06:18', NULL, NULL, NULL, 1, NULL, NULL),
(547, 'Individual Seller', 'Sadikur Rahman', 'sadikur807@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4GY8PA78cCvEAzNLRYsJNurSj.FFoPxNPEaNg9PHhGzyDQ7m1mrEe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 01:24:56', '2021-07-08 01:24:56', NULL, NULL, NULL, 1, NULL, NULL),
(548, 'Individual Seller', 'TLvHWMuDYRrVAy', 'ahhjazz@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DhYceERAMXq9KepYb8k/S.KjCdVux2Dc0U5zIUSdn9F.yZjfSnFtu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 01:32:22', '2021-07-08 01:32:22', NULL, NULL, NULL, 1, NULL, NULL),
(549, 'Individual Seller', 'OGUNXTEpWHahmr', 'smilesmv@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bEvzq0RAVui9p5MXFae1LeT2SRXdKlYl/RXs1/4IB81LDlszt7IsS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 01:36:28', '2021-07-08 01:36:28', NULL, NULL, NULL, 1, NULL, NULL),
(550, 'Individual Seller', 'ITPUfnheRiObS', 'anncberlak@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$f/a0TiME1ncO1j4zmUcMxu2XWW.wBeYMLETCCg67iXHTLZaFJKM2K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 02:11:28', '2021-07-08 02:11:28', NULL, NULL, NULL, 1, NULL, NULL),
(551, 'Individual Seller', 'MBbXjLWtUigTSny', 'jadenaranjo05@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4WOw5SdZjBKb7XQ1I8q..euhZHQ9bcUFgfXzUuZotA5VXFLYpW4Ny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 02:47:50', '2021-07-08 02:47:50', NULL, NULL, NULL, 1, NULL, NULL),
(552, 'Individual Seller', 'tSwlYVTzxIDvCWL', 'ccav8000@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$c3TyyQwU9/2A6R4T7CZ57OWzfYZTTNbiZOcvdDG45nWIPJeBraLoG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 03:00:09', '2021-07-08 03:00:09', NULL, NULL, NULL, 1, NULL, NULL),
(553, 'Individual Seller', 'CQXLFVlrnbSqpZ', 'tamyadugger130@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R5jzAY6CXJI4ZkqUUnv8EOVFBSa31YfTy7xQbKi7jL4NcxFfiOeBG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 04:26:32', '2021-07-08 04:26:32', NULL, NULL, NULL, 1, NULL, NULL),
(554, 'Individual Seller', 'iWgXDtrdJfQIun', 'glennonlaurie@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$p4b8dO9I44en77D4g1UluODpmrpuQBCvrLFFlXHDDotella0wI8DS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 04:51:45', '2021-07-08 04:51:45', NULL, NULL, NULL, 1, NULL, NULL),
(555, 'Individual Seller', 'iosaAhnpgRkNCMy', 'naenae316@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SCKyb7fC1bIiSw.HOy4oG.bb8MOXabaHy1BD7eScLKTuTkx6zQX9W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 08:55:42', '2021-07-08 08:55:42', NULL, NULL, NULL, 1, NULL, NULL),
(556, 'Individual Seller', 'MSlzBCkLhEsoHv', 'marmarks@att.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FzpTunRQ8PnQ9Ye82wyjz.11e82mFeb188qIM/HUXvdBPbDxP6NF6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 13:00:39', '2021-07-08 13:00:39', NULL, NULL, NULL, 1, NULL, NULL),
(557, 'Individual Seller', 'TZKhiYQVsykF', 'stephanie_trng@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kg7InHH3Dsi2wFDmor00i.lndx92C2QawMD9VZ5uzAiyujAeD0.m2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 13:19:16', '2021-07-08 13:19:16', NULL, NULL, NULL, 1, NULL, NULL),
(558, 'Individual Seller', 'Thidder Rodriguez', 'thd.rodriguez@gmail.com', NULL, NULL, 0, 0, '', '', '2021-07-08 10:14:05', '2021-07-08 10:14:05', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iQ5PsuUqD3ey6o6CMsWXoOCgrUubOKmLvA7cl3xz8hlOBCWplKGVC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 16:07:58', '2021-07-08 16:07:58', NULL, NULL, NULL, 2, '2021-07-08', '2021-08-07'),
(559, 'Individual Seller', 'Md Siam', 'siam71md@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 16:12:26', '2021-07-08 16:12:26', NULL, NULL, NULL, 1, NULL, NULL),
(560, 'Individual Seller', 'LtuJoResC', 'drbillyrad@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cajKFGvfp.CisNpUMVQLvusED9Z/QZQttuYfVSKAp8/v8yVdc45I6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 16:23:38', '2021-07-08 16:23:38', NULL, NULL, NULL, 1, NULL, NULL),
(561, 'Individual Seller', 'tGovQeRAKJIUx', 'robertayres@rocketmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pKANnZwtY2bGrkZY0B31JOCGiVKnD9AfXbzr0.8a/XwcTkcyxxJ2e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 17:47:37', '2021-07-08 17:47:37', NULL, NULL, NULL, 1, NULL, NULL),
(562, 'Individual Seller', 'Nazmul Alam', 'oronno007cyberlaw@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$juM3yO2kCxZ6DNe.PMHfRuVa4Igka180dDwFXzRN.WUM2Z4MeK6gG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 22:32:53', '2021-07-08 22:32:53', NULL, NULL, NULL, 1, NULL, NULL),
(563, 'Individual Seller', 'Masud Rana', 'alammia988@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5iXVDWh/zU/wKmWcj7XYBOpFVJDqs49huGWaaINTqsRrhQHotmzNy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 22:52:18', '2021-07-08 22:52:18', NULL, NULL, NULL, 1, NULL, NULL),
(564, 'Individual Seller', 'QcUYnWJlpkVLbes', 'mrstoni66@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SVnQTpUcLqginn60YBiK1etTrz1HgCISob.Dai6IdgJnzdPmuHNb6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 23:15:10', '2021-07-08 23:15:10', NULL, NULL, NULL, 1, NULL, NULL),
(565, 'Individual Seller', 'HibrpgvADTESmG', 'lmottbeat@verizon.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S.FWVO3Z78LyBJWqaRABk.ljF03sGViwQiwjYqHVa/nIxDdVDSGye', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-08 23:52:03', '2021-07-08 23:52:03', NULL, NULL, NULL, 1, NULL, NULL),
(566, 'Individual Seller', 'tVGEZbqxI', 'oksana.savina9393@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eY0Aa8kKb3Vf9ZjdrgFscO7aTGfDigfPU3rcG0onyFfuyet7H9O/i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 00:52:28', '2021-07-09 00:52:28', NULL, NULL, NULL, 1, NULL, NULL),
(567, 'Individual Seller', 'NbTIluYgyhiQHRV', 'aaronbeaudin@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bDIZKTJQL.5CrDt3OnRb8.quvBEAwlpTkIus9wPoIG9YCPKSjFo2q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 04:29:43', '2021-07-09 04:29:43', NULL, NULL, NULL, 1, NULL, NULL),
(568, 'Individual Seller', 'RdjUNYbSpKzv', 'rdickey121@verizon.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7E1Yp9nYxMLjEXvdpp1DhuvLzFr4ywjrdggST3EzccVOFaiq/RfHC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 04:46:42', '2021-07-09 04:46:42', NULL, NULL, NULL, 1, NULL, NULL),
(569, 'Individual Seller', 'dUrMZwNIcbTSj', 'drpeap@cox.net', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uql707wPU7pLfQUFVNMMTuSZnnloYd.YrtoppsniOLntNyem0yblS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 15:46:23', '2021-07-09 15:46:23', NULL, NULL, NULL, 1, NULL, NULL),
(570, 'Individual Seller', 'Shawon das', 'shawond303@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HWNyJJ/RaR.iq2zNt5ZnyOqDgF7UloxIp7pspr5DJWWGc2X11Djw6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 15:49:25', '2021-07-09 15:49:25', NULL, NULL, NULL, 1, NULL, NULL),
(571, 'Individual Seller', 'UCtXaceTvVfKy', 'izzy.johnson50@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/fQT0mA5Bhax6OG6.SIbXO5fCu6p4eGFOEi8yF7cit3ouhKF7BVl6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 16:21:22', '2021-07-09 16:21:22', NULL, NULL, NULL, 1, NULL, NULL),
(572, 'Individual Seller', 'phKIxYgoFCXRbSnU', 'gpjke@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RqFowzGgvoL7MXLLgjN2Beqybl/ixJ9d/r936xEZ1qwb3adx6NiSu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 17:09:02', '2021-07-09 17:09:02', NULL, NULL, NULL, 1, NULL, NULL),
(573, 'Individual Seller', 'Md Anowar Hossain', 'anowar6822@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$W2.xZw4qPotQtMILJxVTS.i6fVytFZhwQueY6piA.INiuLlch4r8e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 17:43:22', '2021-07-09 17:43:22', NULL, NULL, NULL, 1, NULL, NULL),
(574, 'Individual Seller', 'lOqUuFnwSoAcXya', 'princesskoopa67@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9nffMXNmWrq2Hm1aMWct4.eC9M9WyE3/WwKD4dEdMFqSdgFVXn79a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 18:16:47', '2021-07-09 18:16:47', NULL, NULL, NULL, 1, NULL, NULL),
(575, 'Individual Seller', 'UnbGchwuYMNqQlHW', 'l22gkp@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$q.5PA/WN7jnsXkFYCKvqQ.IizAVdgK7nUl1J5mAKb8..XM3TCNw8m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 19:48:20', '2021-07-09 19:48:20', NULL, NULL, NULL, 1, NULL, NULL),
(576, 'Individual Seller', 'OuGUPJVf', 'bahbee13@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5MeeTX8EBQGwA8zJoXqKuOUSPZ.BtThIQI./wUxbGn5KlkYuzpQj2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 22:04:53', '2021-07-09 22:04:53', NULL, NULL, NULL, 1, NULL, NULL),
(577, 'Individual Seller', 'RFaUCWtZ', 'buckyroos@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$K30QR/3Jm4loMPpZyx3r8uQBDe2OeXeiVOF4EIPJHk9tdzH3KRXxS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 22:59:25', '2021-07-09 22:59:25', NULL, NULL, NULL, 1, NULL, NULL),
(578, 'Individual Seller', 'oYLIqXjluBVb', 'tougb4@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6PODUskqjoiQDsYymjtWRedDPpjKl3HPlXV33OORlPBY43Co.F9vi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 23:53:51', '2021-07-09 23:53:51', NULL, NULL, NULL, 1, NULL, NULL),
(579, 'Individual Seller', 'xLzCXEjZpStg', 'amya@fatdroid.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sOuL9tvLbEJFYSTfDMivI.5MC6HagMSjenQXrzZdMGpZCJ5.0lPtO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-09 23:59:49', '2021-07-09 23:59:49', NULL, NULL, NULL, 1, NULL, NULL),
(580, 'Individual Seller', 'MD iakub alli', 'Yakubali1012@gmail.Com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y.8UX8ok.87CSyIvsNC6YOnfcgsoa0Gy.NL0zkOyK/HAi2fVgHNSq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 00:07:49', '2021-07-10 00:07:49', NULL, NULL, NULL, 1, NULL, NULL),
(581, 'Individual Seller', 'Mazumder Rony', 'mazumderrony018@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9l.rwDGFiCNnDDGQk2iKh.LqfeTIGmVlY8ik8W0MGqShPvY7ihYqS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 01:47:32', '2021-07-10 01:47:32', NULL, NULL, NULL, 1, NULL, NULL),
(582, 'Individual Seller', 'UcjVdhpmJgqLe', 'linda_stander@hotmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vHFmaZtet/pD1HRaxic1JusBHyPRiMGMEGOAItp20WExn8hwVELeK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 05:20:02', '2021-07-10 05:20:02', NULL, NULL, NULL, 1, NULL, NULL),
(583, 'Individual Seller', 'lVuXjqOCehzp', 'stacy@elevatedantiquity.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3qrI.MnqGkOjExoJPDtt/un/LM155.iyJL9Kw5rgUnQZJw/Rl.o7K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 05:25:35', '2021-07-10 05:25:35', NULL, NULL, NULL, 1, NULL, NULL),
(584, 'Individual Seller', 'ElnHwegT', 'wrchloe@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.l1TPq/QzUz7L7e4fobue.5NytX9BJKHLheybqlxGmgmdz.XJ82fi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 08:04:04', '2021-07-10 08:04:04', NULL, NULL, NULL, 1, NULL, NULL),
(585, 'Individual Seller', 'NdvKXlztu', 'jillianwhitacre@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$A/9zCMaYzTtLp2E5q2OkbuwVauKQ93PjTBWr/WVTfjYu7U4xRGy42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 09:24:08', '2021-07-10 09:24:08', NULL, NULL, NULL, 1, NULL, NULL),
(586, 'Individual Seller', 'KAyfWjpCnBNTqc', 'ronnystebbings@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oHYKgtySLtFTzbpX6wgASe3wBV/A7ULWdhvy.loLF8vgqsATbJWx6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 10:13:56', '2021-07-10 10:13:56', NULL, NULL, NULL, 1, NULL, NULL),
(587, 'Individual Seller', 'Mohammad Shoriful Islam', 'shoriful1994@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OAETJB1MJ8mCkP9itKoxnegUNzX6qG38DoorRlKJCTH4ZFNSJDQA.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 11:48:02', '2021-07-10 11:48:02', NULL, NULL, NULL, 1, NULL, NULL),
(588, 'Individual Seller', 'Rakib Hossain', 'mdrakib6355@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n7yrujDZBrvgk894n7Y.zut447r8VAv1c2qJLFuX7xK36ljhOn2Im', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 13:04:01', '2021-07-10 13:04:01', NULL, NULL, NULL, 1, NULL, NULL),
(589, 'Individual Seller', 'bXvfMFWB', 'keene_tiffany@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$71TJ.QQVgvc8xO7vfssx2O8Yi41vJ3OIx4XBaowJAx7e6TJ9vBiRS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 14:41:03', '2021-07-10 14:41:03', NULL, NULL, NULL, 1, NULL, NULL),
(590, 'Individual Seller', 'Md Ruman Sharif', 'mdrumansharif@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FAjOLIKPYcjgFDbXytdSHuKrW1Xx6vSqS6Ts2xOgbVsJ8b2vFs056', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 15:49:28', '2021-07-10 15:49:28', NULL, NULL, NULL, 1, NULL, NULL),
(591, 'Individual Seller', 'jTUFZfkE', 'gertenbach@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZBlSHgXuoy5AOtRN829ASO4tW9DP/Gl8WwvVITJpRhGJxuklQHvTG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 17:52:20', '2021-07-10 17:52:20', NULL, NULL, NULL, 1, NULL, NULL),
(592, 'Individual Seller', 'Mdmohi', 'mdmohinuddin757@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KfzNsB2QGOahSkUhtdLqTuDLBr/ZE.jFc9cxJQ429kMTHWmQ43/im', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 20:09:39', '2021-07-10 20:09:39', NULL, NULL, NULL, 1, NULL, NULL),
(593, 'Individual Seller', 'Kashmir Islam', 'joykhan4209@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WXuaRXxt4WepiyiyFZBkcOvfLtAAMsJ0jV2kYmfvxOwF1EOH3ovdW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 21:54:52', '2021-07-10 21:54:52', NULL, NULL, NULL, 1, NULL, NULL),
(594, 'Individual Seller', 'HARUNUR RASHID', 'Harunoor734@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b.9rEyqVxhmeNdzq/.KWO.4o8jY6DmcLsgYjSUPKhKB7rs6Vef56e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-10 21:59:28', '2021-07-10 21:59:28', NULL, NULL, NULL, 1, NULL, NULL),
(595, 'Individual Seller', 'DJwyWLauZk', 'gordon.catharina@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5CUAbGLYqZbTpS0Zguln0O2K9OHT1N3LIrPCrQ68tjY6aIXiBpTQO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 00:35:29', '2021-07-11 00:35:29', NULL, NULL, NULL, 1, NULL, NULL),
(596, 'Individual Seller', 'NaumxLRlZE', 'kendal.sanford@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Z98ss2.Cl.7YgBnvhPe4DeICgdtJvYlc6etzDiZB9eHe28wxH/5Ke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 01:41:17', '2021-07-11 01:41:17', NULL, NULL, NULL, 1, NULL, NULL),
(597, 'Individual Seller', 'Hafez Mamun', 'hzmamun5656@Gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HvJjY0zEqgEr1ScIIWIeYOxSglLomjZfRZcC8gI0iBFA9uhkmpj1G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 11:08:04', '2021-07-11 11:08:04', NULL, NULL, NULL, 1, NULL, NULL),
(598, 'Individual Seller', 'Md.jon', 's.jon8228@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Yf0BMtopvzD/Imb8qWvPguW3sO5KDLB5q/nYYYeR9tw.r4rbdB9De', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 11:24:02', '2021-07-11 11:24:02', NULL, NULL, NULL, 1, NULL, NULL),
(599, 'Individual Seller', 'Md Moniruzzaman', 'monir1986mdmonir@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$faX1LLgaQhYapxkt6PrY..GzuNTuXf2JORstsMdK5nkzA82mrOf6q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 12:38:03', '2021-07-11 12:38:03', NULL, NULL, NULL, 1, NULL, NULL),
(600, 'Individual Seller', 'Md. Nurul Alam', 'nurulalom41@gmail.com', '01917784447', NULL, 0, 0, '', '', '2021-07-11 08:02:50', '2021-07-11 08:02:50', NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VIZhp3cFUP48dmhWU0/FmeJymy48bD7gKfbvAH44iTTYQ.8VWCANq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 14:00:34', '2021-07-11 14:01:50', NULL, 'Dhaka', NULL, 1, NULL, NULL),
(601, 'Individual Seller', 'KaFzUDXNdcmW', 'beattyl1213@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wZt31DD2mhFFrECTpnQWsupYhwti.TnHrWJUJ1GoFyHM6tcGrfn0a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 14:40:06', '2021-07-11 14:40:06', NULL, NULL, NULL, 1, NULL, NULL),
(602, 'Individual Seller', 'Plabon', 'plabonkumar60@gmail.con', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1vrh/JcRVvmiTSYcZWI1duoLgGshILRBN3HKoqbIWSLM2bsOxvONq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 15:46:48', '2021-07-11 15:46:48', NULL, NULL, NULL, 1, NULL, NULL),
(603, 'Individual Seller', 'xkefVpdjyI', 'kellby.courtney@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1a/tFc25KpcHpQGMrRNjFumeKb9o9GiLzMpF/OWNNq/bJQAyyxEta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-11 22:08:14', '2021-07-11 22:08:14', NULL, NULL, NULL, 1, NULL, NULL),
(604, 'Individual Seller', 'gotutop', 'go@antitourism.ru', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.QZzg204MZnoRmErif9lA.UIPHZxO4qdTuGJYz2G4YR3B9bufXo12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 00:47:43', '2021-07-12 00:47:43', NULL, NULL, NULL, 1, NULL, NULL),
(605, 'Individual Seller', 'hEHkZnqW', 'leegodwin21@yahoo.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wR9TV6xylSdS1oj9fOV9ZOPS/HxhjdWI8sAqPqBvM9et6yFDaIASy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 03:12:48', '2021-07-12 03:12:48', NULL, NULL, NULL, 1, NULL, NULL),
(606, 'Individual Seller', 'dFxnmqyHBjNYesSt', 'ljv8182@aol.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9niPQTvCVSEqr2ygT2zGBu71HdCr0JWFmsl4d7IhetU07BdjLhkS.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 06:03:57', '2021-07-12 06:03:57', NULL, NULL, NULL, 1, NULL, NULL),
(607, 'Individual Seller', 'QlEFrqiktuGpvAM', 'vasilisa.petuhova9090@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ze0GTJr17ORxW4gwzVgR.uXIXXX9qfKEDm071TAKggJFBPZORHLOG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 06:17:27', '2021-07-12 06:17:27', NULL, NULL, NULL, 1, NULL, NULL),
(608, 'Individual Seller', 'zEfyTIYlgpm', 'julieabryce@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jaFWQL717TKfEyopRnRCeO/utodnvvQolbzDGBmOvCCqtV6S1cREy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 10:33:28', '2021-07-12 10:33:28', NULL, NULL, NULL, 1, NULL, NULL),
(609, 'Individual Seller', 'Amirul Islam', 'amirulislam201@gmail.com', NULL, NULL, 0, 0, '', '', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PVgAyIqAXR9noHt/bXmDTu7k98MFGKgL0Otmt.jnB4H4YcNXUmpTu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, '2021-07-12 18:45:41', '2021-07-12 18:45:41', NULL, NULL, NULL, 1, NULL, NULL);

--
-- Triggers `ss_customers`
--
DROP TRIGGER IF EXISTS `before_ss_customers_update`;
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

DROP TABLE IF EXISTS `ss_divisions`;
CREATE TABLE IF NOT EXISTS `ss_divisions` (
  `pk_no` int(11) NOT NULL,
  `country_pk_no` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT '1',
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `ss_employment_history`;
CREATE TABLE IF NOT EXISTS `ss_employment_history` (
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
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `end_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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

DROP TABLE IF EXISTS `ss_faq`;
CREATE TABLE IF NOT EXISTS `ss_faq` (
  `pk_no` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(2) DEFAULT NULL,
  `updated_by` int(2) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_faq`
--

INSERT INTO `ss_faq` (`pk_no`, `question`, `answer`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `is_active`) VALUES
(1, 'In which process will I post an ad on Dalalbazar.com?', 'Posting an ad on Dalalbazar.com is fast and simple. For posting an ad on Dalalbazar.com just follow the below instructions.\r\ni)        For posting an ad on Dalalbazar.com, firstly you have to log in.\r\nii)        After reviewing your ad, we will show Your ad on our website for the expected clients.', '2020-12-15 16:45:14', '2020-12-26 22:38:31', '0000-00-00 00:00:00', NULL, 1, 1),
(2, 'How can I delete my posted ad on Dalalbazar.com?', 'To delete an ad on Dalalbazar.com, please go to your ad\'s page and click on the \"Delete ad\" option.', '2020-12-15 16:45:14', '2020-12-26 22:40:29', '0000-00-00 00:00:00', NULL, 1, 1),
(3, 'Why has my ad been rejected ?', 'All of the ads are manually reviewed - if your ad violates our posting rules it will be rejected. You can read what changes you have to make before the ad can be approved in the rejection email as well as bottom of your rejected ad from user dashboard.', '2020-12-15 16:45:14', '2021-01-07 22:43:20', '0000-00-00 00:00:00', NULL, 1, 1),
(4, 'What can I do for editing my ad?', 'To edit an ad, please go to your ad\'s page and click on the \"Edit ad\" option.', '2020-12-15 16:45:14', '2020-12-26 22:41:18', '0000-00-00 00:00:00', NULL, 1, 1),
(5, 'How can I set a new password on Dalalbazar.com?', 'To set a new Dalalbazar.com password, please log in to your account, go to the \"Settings\" page and enter a new password. If you forget your Dalalbazar.com password, you can go to the log-in page and click on the \"Forgot your password?\" link\r\nIf you have created an account via Facebook, you will not have a Dalalbazar.com password. You can log in to your account via Facebook without a password.', '2020-12-15 16:12:54', '2020-12-26 22:43:10', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_industry`
--

DROP TABLE IF EXISTS `ss_industry`;
CREATE TABLE IF NOT EXISTS `ss_industry` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_job_title`
--

DROP TABLE IF EXISTS `ss_job_title`;
CREATE TABLE IF NOT EXISTS `ss_job_title` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_slug` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `comments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(1) DEFAULT '1',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `active_post` int(10) NOT NULL DEFAULT '0',
  `created_by` int(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ss_location`
--

DROP TABLE IF EXISTS `ss_location`;
CREATE TABLE IF NOT EXISTS `ss_location` (
  `pk_no` int(11) NOT NULL,
  `divisions_pk_no` int(11) NOT NULL DEFAULT '0',
  `city_pk_no` int(11) NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `ss_packages`;
CREATE TABLE IF NOT EXISTS `ss_packages` (
  `pk_no` int(3) NOT NULL AUTO_INCREMENT,
  `ad_limit_in_montrh` int(11) DEFAULT NULL,
  `title` varchar(124) DEFAULT NULL,
  `title_bn` varchar(125) DEFAULT NULL,
  `price_per_month` float DEFAULT NULL,
  `support_duration` varchar(124) DEFAULT NULL,
  `discount_on_promotion` float DEFAULT NULL,
  `sms_feature` tinyint(1) DEFAULT '1',
  `email_feature` tinyint(1) DEFAULT '1',
  `shop_page` tinyint(1) DEFAULT '1',
  `analytics` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `order_id` int(3) NOT NULL DEFAULT '1',
  `created_by` int(3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(3) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`pk_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_packages`
--

INSERT INTO `ss_packages` (`pk_no`, `ad_limit_in_montrh`, `title`, `title_bn`, `price_per_month`, `support_duration`, `discount_on_promotion`, `sms_feature`, `email_feature`, `shop_page`, `analytics`, `is_active`, `order_id`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 2, 'Free', NULL, 2000, '24/7 Live Support', 5, 0, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL),
(2, 2, 'Personal', NULL, 2000, '24/7 Live Support', 5, 1, 1, 1, 1, 1, 2, NULL, NULL, NULL, NULL),
(3, 50, 'Business', NULL, 5000, '24/7 Live Support', 10, 1, 1, 1, 1, 1, 3, NULL, NULL, NULL, NULL),
(4, 200, 'Business Premium', NULL, 7000, '24/7 Live Support', 10, 1, 1, 1, 1, 1, 4, NULL, NULL, NULL, NULL),
(5, 3, 'Gold', NULL, 5000, '24/7 Live Support', 20, 1, 1, 1, 1, 1, 1, 1, '2022-06-16 00:39:59', NULL, '2022-06-16 00:39:59'),
(6, 4, 'Gold', NULL, 5000, '24/7 Live Support', 200, 1, 1, 1, 1, 1, 1, 1, '2022-06-16 00:41:10', 1, '2022-06-16 01:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `ss_paging`
--

DROP TABLE IF EXISTS `ss_paging`;
CREATE TABLE IF NOT EXISTS `ss_paging` (
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

DROP TABLE IF EXISTS `ss_shop`;
CREATE TABLE IF NOT EXISTS `ss_shop` (
  `pk_no` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url_slug` varchar(124) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `open_time` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `description` text,
  `created_by` int(10) DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `customer_pk_no` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ss_subscribe`
--

DROP TABLE IF EXISTS `ss_subscribe`;
CREATE TABLE IF NOT EXISTS `ss_subscribe` (
  `pk_no` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ss_subscribe`
--

INSERT INTO `ss_subscribe` (`pk_no`, `email`, `created_at`, `updated_at`) VALUES
(1, 'rony@gmail.com', '2020-12-09 21:53:26', '2020-12-10'),
(2, 'rana@gmail.com', '2020-12-09 21:54:43', '2020-12-10'),
(3, 'rana@gmail.com', '2020-12-09 21:56:05', '2020-12-10'),
(4, 'kamrul@gmail.com', '2020-12-09 21:56:36', '2020-12-10'),
(5, 'ronymia11@gmail.com', '2020-12-15 00:24:01', '2020-12-15'),
(6, 'rony@gmail.com', '2020-12-15 00:26:18', '2020-12-15'),
(7, 'ronmia111222@gmail.com', '2020-12-15 00:28:32', '2020-12-15'),
(8, 'kamrul12@gmail.com', '2021-01-04 06:09:52', '2021-01-04'),
(9, 'sumonazizul129@gmail.com', '2021-01-04 06:25:41', '2021-01-04'),
(10, 'dulciedalton282@gmail.com', '2021-01-06 12:32:22', '2021-01-06'),
(11, 'hr017749@gmail.com', '2021-01-28 14:05:41', '2021-01-28'),
(12, 'abshireauzm58@gmail.com', '2021-02-10 15:46:58', '2021-02-10'),
(13, 'stokkar@comcast.net', '2021-02-10 16:57:30', '2021-02-10'),
(14, 'herrington.roberts@gmail.com', '2021-02-10 17:25:17', '2021-02-10'),
(15, 'tomsill@optonline.net', '2021-02-10 17:25:50', '2021-02-10'),
(16, 'darlamunro@hotmail.com', '2021-02-10 17:34:15', '2021-02-10'),
(17, 'ftjs@citenet.net', '2021-02-10 18:07:04', '2021-02-11'),
(18, 'wkg@wkgconsult.com', '2021-02-10 18:08:44', '2021-02-11'),
(19, 'phyllismorris1720@gmail.com', '2021-02-10 18:33:51', '2021-02-11'),
(20, 'eaarmstrong@gmail.com', '2021-02-10 18:37:52', '2021-02-11'),
(21, 'kornfeld1711@embarqmail.com', '2021-02-10 18:45:34', '2021-02-11'),
(22, 'roman.mec@gmail.com', '2021-02-10 19:57:37', '2021-02-11'),
(23, 'brandonsellscarsthelen@gmail.com', '2021-02-11 02:02:04', '2021-02-11'),
(24, 'kingdompixelz97@gmail.com', '2021-02-11 03:12:05', '2021-02-11'),
(25, 'sharks2244@gmail.com', '2021-02-11 09:56:25', '2021-02-11'),
(26, 'j.sheley66@comcast.net', '2021-02-11 15:30:27', '2021-02-11'),
(27, 'nohaw@comcast.net', '2021-02-11 15:59:37', '2021-02-11'),
(28, 'schramm711987@gmail.com', '2021-02-11 17:29:13', '2021-02-11'),
(29, 'kcooper@bullskinstone.com', '2021-02-11 17:47:09', '2021-02-11'),
(30, 'ck3hitman@hotmail.com', '2021-02-11 21:02:29', '2021-02-12'),
(31, 'carlos-quiroga2014@hotmail.com', '2021-02-11 22:36:00', '2021-02-12'),
(32, 'ink03391@gmail.com', '2021-02-12 01:43:38', '2021-02-12'),
(33, 'burt.ashleyc@gmail.com', '2021-02-12 08:56:57', '2021-02-12'),
(34, 'weiss.andreas2009@gmail.com', '2021-02-12 14:29:18', '2021-02-12'),
(35, 'monsaludariel@gmail.com', '2021-02-12 18:31:43', '2021-02-13'),
(36, 'peterspepe@gmail.com', '2021-02-12 19:32:26', '2021-02-13'),
(37, 'kimberlee.athy@yahoo.com', '2021-02-12 22:26:04', '2021-02-13'),
(38, 'reneegruizp@gmail.com', '2021-02-12 23:33:55', '2021-02-13'),
(39, 'priestly.arlean@yahoo.com', '2021-02-12 23:59:26', '2021-02-13'),
(40, 'bobwat109@yahoo.com', '2021-02-13 00:30:26', '2021-02-13'),
(41, 'aldieny@gmail.com', '2021-02-13 03:40:08', '2021-02-13'),
(42, 'jann.tracey@yahoo.com', '2021-02-13 04:38:49', '2021-02-13'),
(43, 'dustin_thompson@rocketmail.com', '2021-02-13 04:51:45', '2021-02-13'),
(44, 'jnkbrewer@yahoo.com', '2021-02-13 05:00:18', '2021-02-13'),
(45, 'loggins15kayleigh@gmail.com', '2021-02-13 06:05:03', '2021-02-13'),
(46, 'maribeth.sangster@yahoo.com', '2021-02-13 06:51:22', '2021-02-13'),
(47, 'millrrk@gmail.com', '2021-02-13 08:48:17', '2021-02-13'),
(48, 'witkin2@yahoo.com', '2021-02-13 09:37:18', '2021-02-13'),
(49, 'burt.stoker@me.com', '2021-02-13 13:31:55', '2021-02-13'),
(50, 'keylinprincess2015@yahoo.com', '2021-02-13 14:30:37', '2021-02-13'),
(51, 'danifit05@yahoo.com', '2021-02-13 14:53:02', '2021-02-13'),
(52, 'esparza_jayline@yahoo.com', '2021-02-13 17:14:32', '2021-02-13'),
(53, 'arifulislam545@gmail.com', '2021-02-13 18:04:00', '2021-02-14'),
(54, 'gingerbiddell@yahoo.com', '2021-02-13 19:01:28', '2021-02-14'),
(55, 'delphinebarlow@yahoo.com', '2021-02-13 19:31:54', '2021-02-14'),
(56, 'burnaby_brooke@yahoo.com', '2021-02-13 20:29:42', '2021-02-14'),
(57, 'whitehill.susana@yahoo.com', '2021-02-13 23:29:32', '2021-02-14'),
(58, 'elfreda.langstaff@yahoo.com', '2021-02-14 02:33:55', '2021-02-14'),
(59, 'sutherland.kori@yahoo.com', '2021-02-14 03:36:06', '2021-02-14'),
(60, 'paigecarlson@yahoo.com', '2021-02-14 11:49:39', '2021-02-14'),
(61, 'paul_dobbs1@msn.com', '2021-02-14 12:00:19', '2021-02-14'),
(62, 'jenningstamesha@yahoo.com', '2021-02-14 13:09:50', '2021-02-14'),
(63, 'ericqperry@gmail.com', '2021-02-14 13:31:47', '2021-02-14'),
(64, 'webberbeata@yahoo.com', '2021-02-14 14:49:31', '2021-02-14'),
(65, 'bubblygum_56@hotmail.com', '2021-02-14 15:49:59', '2021-02-14'),
(66, 'amandachee43@yahoo.com', '2021-02-14 18:54:33', '2021-02-15'),
(67, 'perezanalaura955@yahoo.com', '2021-02-14 19:20:47', '2021-02-15'),
(68, 'flojo30c@yahoo.com', '2021-02-14 20:17:28', '2021-02-15'),
(69, 'jpimley@bresnan.net', '2021-02-14 21:33:40', '2021-02-15'),
(70, 'p.hughes@sbcglobal.net', '2021-02-14 21:37:38', '2021-02-15'),
(71, 'famdr1@aol.com', '2021-02-14 22:36:02', '2021-02-15'),
(72, 'sschnak114@aol.com', '2021-02-15 00:51:13', '2021-02-15'),
(73, 'mai.deleon@yahoo.com', '2021-02-15 00:55:34', '2021-02-15'),
(74, 'courtney_rizk@yahoo.com', '2021-02-15 01:46:59', '2021-02-15'),
(75, 'lexis.schindler8319@yahoo.com', '2021-02-15 02:14:57', '2021-02-15'),
(76, 'atsoukas@att.net', '2021-02-15 08:21:22', '2021-02-15'),
(77, 'tmweir.88@gmail.com', '2021-02-15 12:46:44', '2021-02-15'),
(78, 'jmagadia1@yahoo.com', '2021-02-15 14:50:02', '2021-02-15'),
(79, 'tinarocks03@yahoo.com', '2021-02-15 16:12:01', '2021-02-15'),
(80, 'tmcr@shaw.ca', '2021-02-15 16:23:25', '2021-02-15'),
(81, 'joancandj2@aol.com', '2021-02-15 16:35:39', '2021-02-15'),
(82, 'sosophwong@yahoo.com', '2021-02-15 17:27:58', '2021-02-15'),
(83, 'marjamdrentlaw21@gmail.com', '2021-02-15 17:50:57', '2021-02-15'),
(84, 'tropicmachine@att.net', '2021-02-15 18:03:10', '2021-02-16'),
(85, 'tebisock@gmail.com', '2021-02-15 18:53:43', '2021-02-16'),
(86, 'ereyesvega@yahoo.com', '2021-02-15 19:11:00', '2021-02-16'),
(87, 'jyothirmaigl@yahoo.com', '2021-02-15 19:23:10', '2021-02-16'),
(88, 'suzp23@gmail.com', '2021-02-15 19:59:55', '2021-02-16'),
(89, 'msc.s_hassan@yahoo.com', '2021-02-15 20:01:28', '2021-02-16'),
(90, 'mhmacklen@gmail.com', '2021-02-15 20:14:01', '2021-02-16'),
(91, 'kp.2barktonlane@yahoo.ca', '2021-02-15 20:33:46', '2021-02-16'),
(92, 'kboldt@verizon.net', '2021-02-15 21:55:47', '2021-02-16'),
(93, 'susie.beggs48@gmail.com', '2021-02-15 22:15:31', '2021-02-16'),
(94, 'mdfreed@gmail.com', '2021-02-15 22:29:51', '2021-02-16'),
(95, 'edeliman@yahoo.com', '2021-02-15 22:46:18', '2021-02-16'),
(96, 'info@bypopov.com', '2021-02-15 23:59:58', '2021-02-16'),
(97, 'julie@rushindustries.com', '2021-02-16 00:19:23', '2021-02-16'),
(98, 'ppitte@aol.com', '2021-02-16 04:44:42', '2021-02-16'),
(99, 'kayleerose66@yahoo.com', '2021-02-16 06:11:16', '2021-02-16'),
(100, 'jmdoeing@gmail.com', '2021-02-16 07:22:08', '2021-02-16'),
(101, 'brandonleelowrey@gmail.com', '2021-02-16 09:24:35', '2021-02-16'),
(102, 'sharpfinance@yahoo.com', '2021-02-16 10:46:32', '2021-02-16'),
(103, 'danieldamev23@gmail.com', '2021-02-16 12:21:52', '2021-02-16'),
(104, 'nbowyer1@sky.com', '2021-02-16 13:17:32', '2021-02-16'),
(105, 'thecarsonfamily@gmail.com', '2021-02-16 15:04:54', '2021-02-16'),
(106, 'geminiblc@aol.com', '2021-02-16 15:22:05', '2021-02-16'),
(107, 'emasinc@aol.com', '2021-02-16 15:46:16', '2021-02-16'),
(108, 'tamarmissy@aol.com', '2021-02-16 21:41:56', '2021-02-17'),
(109, 'brost21@gmail.com', '2021-02-16 22:34:21', '2021-02-17'),
(110, 'dennyls798@gmail.com', '2021-02-16 22:45:52', '2021-02-17'),
(111, 'nathan.voisin45@hotmail.fr', '2021-02-16 23:26:12', '2021-02-17'),
(112, 'fransson.lina@gmail.com', '2021-02-17 01:17:31', '2021-02-17'),
(113, 'mitul.pandit.er@gmail.com', '2021-02-17 04:18:00', '2021-02-17'),
(114, 'aaadeals117@gmail.com', '2021-02-17 07:36:48', '2021-02-17'),
(115, 'dahlkemd@gmail.com', '2021-02-17 09:33:43', '2021-02-17'),
(116, 'wilsonshanice34@yahoo.com', '2021-02-17 10:00:00', '2021-02-17'),
(117, 'lindam8191@gmail.com', '2021-02-17 10:51:52', '2021-02-17'),
(118, 'rjrobin9002@gmail.com', '2021-02-17 13:14:46', '2021-02-17'),
(119, 'dooleylzl39@gmail.com', '2021-02-17 16:32:11', '2021-02-17'),
(120, 'kimbalow@hotmail.com', '2021-02-17 17:21:37', '2021-02-17'),
(121, 'landausf@yahoo.com', '2021-02-17 18:11:18', '2021-02-18'),
(122, 'nicktimko1@yahoo.com', '2021-02-17 18:19:01', '2021-02-18'),
(123, 'amonsalud@yahoo.com', '2021-02-17 18:27:10', '2021-02-18'),
(124, 'sphelts@aol.com', '2021-02-17 20:25:09', '2021-02-18'),
(125, 'aimajat@gmail.com', '2021-02-17 20:43:15', '2021-02-18'),
(126, 'yencid1212@gmail.com', '2021-02-17 20:44:57', '2021-02-18'),
(127, 'craigandanniemertz@msn.com', '2021-02-17 20:45:47', '2021-02-18'),
(128, 'rosieayulg55@gmail.com', '2021-02-17 21:14:14', '2021-02-18'),
(129, 'pjrob99@yahoo.com', '2021-02-17 21:47:47', '2021-02-18'),
(130, 'trisha_starcher@yahoo.com', '2021-02-17 21:59:24', '2021-02-18'),
(131, 'pfannerstillaauj56@gmail.com', '2021-02-17 22:15:32', '2021-02-18'),
(132, 'cpuskac@gmail.com', '2021-02-17 22:44:26', '2021-02-18'),
(133, 'domani.reid@yahoo.com', '2021-02-18 01:37:26', '2021-02-18'),
(134, 'cohearent@verizon.net', '2021-02-18 08:52:57', '2021-02-18'),
(135, 'ineschristina@aol.com', '2021-02-18 10:26:58', '2021-02-18'),
(136, 'banklineofcredit@yahoo.com', '2021-02-18 11:48:00', '2021-02-18'),
(137, 'ajones545@yahoo.com', '2021-02-18 12:15:46', '2021-02-18'),
(138, 'jashimgazi1984@gmail.com', '2021-02-18 13:00:07', '2021-02-18'),
(139, 'lindalou1960@yahoo.com', '2021-02-18 13:35:24', '2021-02-18'),
(140, 'lea.wale@yahoo.com', '2021-02-18 15:24:56', '2021-02-18'),
(141, 'andydooling@yahoo.com', '2021-02-18 15:45:12', '2021-02-18'),
(142, 'sbekhouche@yahoo.ca', '2021-02-18 17:05:46', '2021-02-18'),
(143, 'lbhartwell@verizon.net', '2021-02-18 17:39:21', '2021-02-18'),
(144, 'hunterjudd@yahoo.com', '2021-02-18 19:50:06', '2021-02-19'),
(145, 'facraw@aol.com', '2021-02-18 20:53:19', '2021-02-19'),
(146, 'hojitosverdes27@yahoo.com', '2021-02-19 00:09:26', '2021-02-19'),
(147, 'skipalvin@aol.com', '2021-02-19 00:18:10', '2021-02-19'),
(148, 'katclare.pineda@yahoo.com', '2021-02-19 02:37:13', '2021-02-19'),
(149, 'txfrost@verizon.net', '2021-02-19 02:51:56', '2021-02-19'),
(150, 'breannaleach@aol.com', '2021-02-19 03:14:17', '2021-02-19'),
(151, 'kboring2@verizon.net', '2021-02-19 05:02:11', '2021-02-19'),
(152, 'desyregray@yahoo.com', '2021-02-19 06:50:49', '2021-02-19'),
(153, 'hawamassaquoi738@yahoo.com', '2021-02-19 15:11:00', '2021-02-19'),
(154, 'bcewulka82@aol.com', '2021-02-19 15:24:00', '2021-02-19'),
(155, 'nnickraider14@aol.com', '2021-02-19 15:35:52', '2021-02-19'),
(156, 'shakiaholm@yahoo.com', '2021-02-19 17:25:06', '2021-02-19'),
(157, 'volner.madisson@yahoo.com', '2021-02-19 17:48:51', '2021-02-19'),
(158, 'charlottelerma407@yahoo.com', '2021-02-19 19:08:56', '2021-02-20'),
(159, 'jaywong140@yahoo.com', '2021-02-19 20:22:03', '2021-02-20'),
(160, 'gabrielmassoni@ymail.com', '2021-02-19 20:54:52', '2021-02-20'),
(161, 'sydneydoyle18@yahoo.com', '2021-02-19 21:15:34', '2021-02-20'),
(162, 'taneastewart12@yahoo.com', '2021-02-19 21:18:18', '2021-02-20'),
(163, 'shemika.grummitt@yahoo.com', '2021-02-19 21:32:47', '2021-02-20'),
(164, 'vanikeyeva@yahoo.com', '2021-02-19 21:38:03', '2021-02-20'),
(165, 'jaywong361@yahoo.com', '2021-02-19 21:39:22', '2021-02-20'),
(166, 'lane2001kayla@aol.com', '2021-02-20 01:38:37', '2021-02-20'),
(167, 'jahouwaart@yahoo.com', '2021-02-20 05:37:19', '2021-02-20'),
(168, 'candace.miller83@yahoo.com', '2021-02-20 08:47:34', '2021-02-20'),
(169, 'ranjo_denbow@yahoo.com', '2021-02-20 13:23:04', '2021-02-20'),
(170, 'mo.d.rodrigues@gmail.com', '2021-02-20 16:47:45', '2021-02-20'),
(171, 'dulalmian@gmail.com', '2021-02-21 10:00:56', '2021-02-21'),
(172, 'mystro899@yahoo.com', '2021-02-21 20:40:35', '2021-02-22'),
(173, 'marquespa@aol.com', '2021-02-22 22:16:18', '2021-02-23'),
(174, 'cirillo_romilly@yahoo.com', '2021-02-25 00:40:52', '2021-02-25'),
(175, 'mdmoktar1251@gmail.com', '2021-03-01 04:16:24', '2021-03-01'),
(176, 'wash.gibb@yahoo.com', '2021-03-01 12:58:10', '2021-03-01'),
(177, 'drugirhodes@yahoo.com', '2021-03-01 22:58:21', '2021-03-02'),
(178, 'ameliareynolds5435@gmail.com', '2021-03-02 14:00:44', '2021-03-02'),
(179, 'maynardneuman@yahoo.com', '2021-03-03 02:37:34', '2021-03-03'),
(180, 'plattfilberto@yahoo.com', '2021-03-03 12:19:36', '2021-03-03'),
(181, 'baggs.gannon@yahoo.com', '2021-03-03 17:40:20', '2021-03-03'),
(182, 'burns_moritz@yahoo.com', '2021-03-04 02:11:45', '2021-03-04'),
(183, 'silvesterburridge@yahoo.com', '2021-03-05 19:26:00', '2021-03-06'),
(184, 'harrison.moorhouse@yahoo.com', '2021-03-06 00:08:16', '2021-03-06'),
(185, 'art.chadwell@yahoo.com', '2021-03-06 01:31:07', '2021-03-06'),
(186, 'mckichan.orville@yahoo.com', '2021-03-06 17:51:19', '2021-03-06'),
(187, 'nomansp94@gmail.com', '2021-06-29 15:02:26', '2021-06-29'),
(188, 'moynol2015@gmail.com', '2021-06-29 15:25:59', '2021-06-29'),
(189, 'mdalauddin9211@gmail.com', '2021-06-29 16:28:57', '2021-06-29'),
(190, 'faysalhaque799@gmail.com', '2021-06-29 17:15:30', '2021-06-29'),
(191, 'jachy197@gmail.com', '2021-06-29 17:23:11', '2021-06-29'),
(192, 'mdmonjur2991@gmail.com', '2021-06-29 17:57:19', '2021-06-29'),
(193, 'nayemnasrullah29@gmail.com', '2021-06-29 18:52:47', '2021-06-29'),
(194, 'pappugush@gmail.com', '2021-06-29 20:36:09', '2021-06-29'),
(195, 'rabinmia7578@gmail.com', '2021-06-29 22:06:24', '2021-06-29'),
(196, 'yeasinshaad20@gmail.com', '2021-06-29 22:38:04', '2021-06-29'),
(197, 'mahafujsifat00@gmail.com', '2021-06-29 23:25:35', '2021-06-29'),
(198, 'kader.rk@gmail.com', '2021-06-29 23:41:28', '2021-06-29'),
(199, 'shohanmahmud058@gmail.com', '2021-06-29 23:53:13', '2021-06-29'),
(200, 'partho0082@gmail.com', '2021-06-29 23:56:42', '2021-06-29'),
(201, 'smbappy1989@gmail.com', '2021-06-30 00:19:26', '2021-06-30'),
(202, 'ranu.ara3044@gmail.com', '2021-06-30 00:24:51', '2021-06-30'),
(203, 'emranhession@gmail.com', '2021-06-30 00:26:20', '2021-06-30'),
(204, 'emranhession4347@gmail.com', '2021-06-30 00:28:40', '2021-06-30'),
(205, 'saddamsakib48@gmail.com', '2021-06-30 00:38:49', '2021-06-30'),
(206, 'mhtanjil1992@gmail.com', '2021-06-30 01:16:28', '2021-06-30'),
(207, 'mubasser.roman1@gmail.com', '2021-06-30 01:19:55', '2021-06-30'),
(208, 'buckler.keren@yahoo.com', '2021-06-30 01:47:50', '2021-06-30'),
(209, 'elanor_constance@yahoo.com', '2021-06-30 06:16:02', '2021-06-30'),
(210, 'bleasdellnicholle@yahoo.com', '2021-06-30 06:38:46', '2021-06-30'),
(211, 'y.ludlow@yahoo.com', '2021-06-30 07:52:02', '2021-06-30'),
(212, 'safiulislam5353@gmail.com', '2021-06-30 09:30:35', '2021-06-30'),
(213, 'queenquallsq@gmail.com', '2021-06-30 10:05:58', '2021-06-30'),
(214, 'prasenjitsaha74@yahoo.com', '2021-06-30 10:30:56', '2021-06-30'),
(215, 'yoggibearr@aol.com', '2021-06-30 11:15:37', '2021-06-30'),
(216, 'minhazhossain342@gmail.com', '2021-06-30 11:39:49', '2021-06-30'),
(217, 'gazi19830@gmail.com', '2021-06-30 12:28:58', '2021-06-30'),
(218, 'a_asraf49@yahoo.com', '2021-06-30 13:56:31', '2021-06-30'),
(219, 'mddalower576@gmail.com', '2021-06-30 15:46:04', '2021-06-30'),
(220, 'emranhashmi703@gmail.com', '2021-06-30 15:50:14', '2021-06-30'),
(221, 'akheruz.zaman1@gmail.com', '2021-06-30 16:12:59', '2021-06-30'),
(222, 'alyullah51@gmail.com', '2021-06-30 16:53:28', '2021-06-30'),
(223, 'www.rifat1120@gmail.com', '2021-06-30 17:22:56', '2021-06-30'),
(224, 'dinislam77992@gmail.com', '2021-06-30 17:37:23', '2021-06-30'),
(225, 'hossainsaddum263@gmail.com', '2021-06-30 18:14:17', '2021-06-30'),
(226, 'cmae57@aol.com', '2021-06-30 18:17:44', '2021-06-30'),
(227, 'marashid992@gmail.com', '2021-06-30 19:06:53', '2021-06-30'),
(228, 'specializedhomelife@yahoo.com', '2021-06-30 20:25:18', '2021-06-30'),
(229, 'biswazithalder789@gmail.com', '2021-06-30 20:37:40', '2021-06-30'),
(230, 'silentshohag143shohag@gmail.com', '2021-06-30 21:37:17', '2021-06-30'),
(231, 'mdrayhansuvo@gmail.com', '2021-06-30 21:38:02', '2021-06-30'),
(232, 'mv777711@yahoo.com', '2021-06-30 21:40:29', '2021-06-30'),
(233, 'emilio_lerma@yahoo.com', '2021-06-30 22:16:45', '2021-06-30'),
(234, 'fenisakib42@gmail.com', '2021-06-30 22:21:14', '2021-06-30'),
(235, 'wtbrosam@yahoo.com', '2021-06-30 22:30:40', '2021-06-30'),
(236, 'ampd621@yahoo.com', '2021-06-30 23:00:12', '2021-06-30'),
(237, 'baxjaz@yahoo.com', '2021-06-30 23:05:21', '2021-06-30'),
(238, 'hannah.lampert@att.net', '2021-06-30 23:11:56', '2021-06-30'),
(239, 'kaitlin999@yahoo.com', '2021-06-30 23:31:00', '2021-06-30'),
(240, 'newseasonministriesmd@gmail.com', '2021-06-30 23:39:07', '2021-06-30'),
(241, 'mostakshariar01@gmail.com', '2021-06-30 23:40:02', '2021-06-30'),
(242, 'stelgra582@yahoo.com', '2021-06-30 23:54:01', '2021-06-30'),
(243, 'freddygarza1997.fg@gmail.com', '2021-07-01 00:22:52', '2021-07-01'),
(244, 'diannarobi@aol.com', '2021-07-01 00:29:47', '2021-07-01'),
(245, 'mdrajuahmeddhaka2081@gmail.com', '2021-07-01 00:37:42', '2021-07-01'),
(246, 'metalmanjim@yahoo.com', '2021-07-01 00:43:40', '2021-07-01'),
(247, 'hmfarukk@gmail.com', '2021-07-01 01:11:33', '2021-07-01'),
(248, 'natalieray@rocketmail.com', '2021-07-01 01:20:37', '2021-07-01'),
(249, 'Sajanhossain9619@gmail.com', '2021-07-01 01:28:56', '2021-07-01'),
(250, 'tony.stevenson17@yahoo.com', '2021-07-01 01:43:37', '2021-07-01'),
(251, 'svavid@gmail.com', '2021-07-01 01:59:47', '2021-07-01'),
(252, 'karina_vazquez16@yahoo.com', '2021-07-01 02:03:21', '2021-07-01'),
(253, 'redohyahmed@gmail.com', '2021-07-01 02:06:13', '2021-07-01'),
(254, 'jessee.patacsil@hp.com', '2021-07-01 02:19:29', '2021-07-01'),
(255, 'mbcinc@comcast.net', '2021-07-01 02:51:51', '2021-07-01'),
(256, 'huntington@pamalan.com', '2021-07-01 03:23:13', '2021-07-01'),
(257, 'jeffgilmore1966@yahoo.com', '2021-07-01 03:32:58', '2021-07-01'),
(258, 'joekff11@comcast.net', '2021-07-01 04:51:05', '2021-07-01'),
(259, 'mannybrophyair@bellsouth.net', '2021-07-01 05:15:02', '2021-07-01'),
(260, 'sleuin@aol.com', '2021-07-01 06:30:47', '2021-07-01'),
(261, 'salimreza6222@gmail.com', '2021-07-01 09:14:47', '2021-07-01'),
(262, 'msmith2382@yahoo.com', '2021-07-01 11:18:54', '2021-07-01'),
(263, 'mdahashanh9@gmail.com', '2021-07-01 12:00:46', '2021-07-01'),
(264, 'Redoanislamrubel@gmail.com', '2021-07-01 12:14:13', '2021-07-01'),
(265, 'jenyeomans@optonline.net', '2021-07-01 12:15:31', '2021-07-01'),
(266, 'mdhabib6676619@gmail.com', '2021-07-01 12:30:17', '2021-07-01'),
(267, 'Rubelredoan12345@gmail.com', '2021-07-01 13:45:26', '2021-07-01'),
(268, 'webbjerry89@yahoo.com', '2021-07-01 14:27:29', '2021-07-01'),
(269, 'mdarif253490@gmail.com', '2021-07-01 15:43:12', '2021-07-01'),
(270, 'mofizuli068@gmail.com', '2021-07-01 15:48:02', '2021-07-01'),
(271, 'mdhussainjr@gmail.com', '2021-07-01 17:07:18', '2021-07-01'),
(272, 'zaragoza0791@gmail.com', '2021-07-01 17:33:14', '2021-07-01'),
(273, 'islamkhanfashion@gmail.com', '2021-07-01 17:52:59', '2021-07-01'),
(274, 'r8447352@gmail.com', '2021-07-01 18:35:17', '2021-07-01'),
(275, 'bobkush@bobkush.com', '2021-07-01 18:49:48', '2021-07-01'),
(276, 'smskhanctg@gmail.com', '2021-07-01 19:05:17', '2021-07-01'),
(277, 'kylee18384@yahoo.com', '2021-07-01 19:16:42', '2021-07-01'),
(278, 'tretopflir@comcast.net', '2021-07-01 19:32:21', '2021-07-01'),
(279, 'khokonsarkar123@gmail.com', '2021-07-01 20:36:39', '2021-07-01'),
(280, 'kyle.yordy@outlook.com', '2021-07-01 21:27:44', '2021-07-01'),
(281, 'clinton.huxley@yahoo.com', '2021-07-01 21:36:56', '2021-07-01'),
(282, 'jakirhossain2288@gmail.com', '2021-07-01 22:18:23', '2021-07-01'),
(283, 'arif.hossain9011@gmail.com', '2021-07-01 22:44:11', '2021-07-01'),
(284, 'doan_jana@yahoo.com', '2021-07-01 22:47:02', '2021-07-01'),
(285, 'biplob1976.b7@gmail.com', '2021-07-01 23:06:41', '2021-07-01'),
(286, 'josh_dizon@yahoo.com', '2021-07-01 23:14:33', '2021-07-01'),
(287, 'bayzidhossain100@gmail.com', '2021-07-01 23:21:08', '2021-07-01'),
(288, 'mdjoynulhoque02@gmail.com', '2021-07-01 23:24:47', '2021-07-01'),
(289, 'dcsarkar82@gmail.com', '2021-07-01 23:30:01', '2021-07-01'),
(290, 'shahemtiajahmed@gmail.com', '2021-07-01 23:43:42', '2021-07-01'),
(291, 'Sterfour1@gamil.com', '2021-07-01 23:59:48', '2021-07-01'),
(292, 'kolimullahcox@gmail.com', '2021-07-02 00:05:15', '2021-07-02'),
(293, 'mygentleeagle@gmail.com', '2021-07-02 00:07:31', '2021-07-02'),
(294, 'imdadulhaque1977@gmail.com', '2021-07-02 00:11:19', '2021-07-02'),
(295, 'mdmamunkazi81@gmail.com', '2021-07-02 00:16:50', '2021-07-02'),
(296, 'wenzrn@sbcglobal.net', '2021-07-02 00:33:37', '2021-07-02'),
(297, 'rakib51484@gmail.com', '2021-07-02 00:34:51', '2021-07-02'),
(298, 'Somratakbar571@gmail.com', '2021-07-02 00:37:54', '2021-07-02'),
(299, 'nayeem_arafath@outlook.com', '2021-07-02 00:40:45', '2021-07-02'),
(300, 'shounshoun17@gmail.com', '2021-07-02 00:45:45', '2021-07-02'),
(301, 'parvezbjmc@gmail.com', '2021-07-02 00:50:18', '2021-07-02'),
(302, 'nayeemarafath04@gmail.com', '2021-07-02 00:51:14', '2021-07-02'),
(303, 'rafibhuyian27@gmail.com', '2021-07-02 01:22:00', '2021-07-02'),
(304, 'mdmithun.bd2014@gmail.com', '2021-07-02 01:33:01', '2021-07-02'),
(305, 'Salauddin.ms72@gmail.com', '2021-07-02 01:35:12', '2021-07-02'),
(306, 'wasifadi55@gmail.com', '2021-07-02 01:40:28', '2021-07-02'),
(307, 'abubakkarsiddiq329041@Gmail.com', '2021-07-02 01:45:23', '2021-07-02'),
(308, 'sabbirhossain246199@gamil.com', '2021-07-02 01:54:11', '2021-07-02'),
(309, 'shardaywalker95@yahoo.com', '2021-07-02 02:01:06', '2021-07-02'),
(310, 'shamimhossain@gmail.com', '2021-07-02 02:16:43', '2021-07-02'),
(311, 'omerctg1000@gmail.com', '2021-07-02 02:16:52', '2021-07-02'),
(312, 'Newajahmed97@gmail.com', '2021-07-02 02:33:43', '2021-07-02'),
(313, 'mdsabbirhossainyar@gmail.com', '2021-07-02 02:40:31', '2021-07-02'),
(314, 'barrybenz@aol.com', '2021-07-02 02:43:54', '2021-07-02'),
(315, 'Tniloy39@gmail.com', '2021-07-02 02:44:34', '2021-07-02'),
(316, 'esmailhosain662@gmail.com', '2021-07-02 03:30:40', '2021-07-02'),
(317, 'roundsman@yahoo.com', '2021-07-02 03:42:00', '2021-07-02'),
(318, 'fxemon35160@gmail.com', '2021-07-02 04:04:00', '2021-07-02'),
(319, 'biztdlki@verizon.net', '2021-07-02 04:22:53', '2021-07-02'),
(320, 'Mdratulislamshahid@gmail.com', '2021-07-02 04:57:07', '2021-07-02'),
(321, 'rayan.gazipur@gmail.com', '2021-07-02 05:34:48', '2021-07-02'),
(322, 'xxguziecxx@yahoo.com', '2021-07-02 05:53:17', '2021-07-02'),
(323, 'taylerjoe2012@yahoo.com', '2021-07-02 06:38:41', '2021-07-02'),
(324, 'soltowm@yahoo.com', '2021-07-02 07:56:54', '2021-07-02'),
(325, 'khilfiker@yahoo.com', '2021-07-02 08:05:33', '2021-07-02'),
(326, 'mantrynerdfo@yahoo.com', '2021-07-02 09:30:57', '2021-07-02'),
(327, 'kingregreg@yahoo.com', '2021-07-02 11:35:50', '2021-07-02'),
(328, 'drrafiq265@gmail.com', '2021-07-02 11:38:47', '2021-07-02'),
(329, 'joshuadeanwagers777@yahoo.com', '2021-07-02 11:58:45', '2021-07-02'),
(330, 'mdeman5555@gmail.com', '2021-07-02 14:33:00', '2021-07-02'),
(331, 'amir.shahir@live.com', '2021-07-02 18:22:51', '2021-07-02'),
(332, 'johngorebels@aol.com', '2021-07-02 18:29:49', '2021-07-02'),
(333, 'awattsnotarypublic@yahoo.com', '2021-07-02 21:04:39', '2021-07-02'),
(334, 'mevans37@att.net', '2021-07-02 23:06:26', '2021-07-02'),
(335, 'tdw0215@yahoo.com', '2021-07-03 00:40:44', '2021-07-03'),
(336, 'pete_stclair@yahoo.com', '2021-07-03 01:17:46', '2021-07-03'),
(337, 'kglyons@aol.com', '2021-07-03 04:18:31', '2021-07-03'),
(338, 'karabell512@aol.com', '2021-07-03 08:31:36', '2021-07-03'),
(339, 'phboosalis@yahoo.com', '2021-07-03 11:59:19', '2021-07-03'),
(340, 'valorrushing@yahoo.com', '2021-07-04 01:53:27', '2021-07-04'),
(341, 'tomy_t100@yahoo.com', '2021-07-04 04:52:25', '2021-07-04'),
(342, 'yolande.witham@yahoo.com', '2021-07-04 09:35:33', '2021-07-04'),
(343, 'wonka_wonka12@yahoo.com', '2021-07-04 19:03:11', '2021-07-04'),
(344, 'keli_cawkwell@yahoo.com', '2021-07-04 20:09:50', '2021-07-04'),
(345, 'jc_happyhouse@yahoo.com', '2021-07-05 00:17:58', '2021-07-05'),
(346, 'sybil.mclendon@yahoo.com', '2021-07-05 02:16:16', '2021-07-05'),
(347, 'jtucker149@aol.com', '2021-07-05 18:23:08', '2021-07-05'),
(348, 'dorine.gurnal@yahoo.com', '2021-07-05 18:42:37', '2021-07-05'),
(349, 'hewett.q@yahoo.com', '2021-07-05 18:48:19', '2021-07-05'),
(350, 'sakokornelian@yahoo.com', '2021-07-05 19:01:41', '2021-07-05'),
(351, 'georgiekirkwood@yahoo.com', '2021-07-05 19:51:33', '2021-07-05'),
(352, 'odyssey784@yahoo.com', '2021-07-05 22:29:48', '2021-07-05'),
(353, 'lavina.littlefair@yahoo.com', '2021-07-05 22:56:03', '2021-07-05'),
(354, 'holzkampkarol@yahoo.com', '2021-07-06 00:09:08', '2021-07-06'),
(355, 'alkafi821360@gmail.com', '2021-07-06 00:43:10', '2021-07-06'),
(356, 'whneal@bellsouth.net', '2021-07-06 01:17:00', '2021-07-06'),
(357, 'mrjazz61@verizon.net', '2021-07-06 03:17:12', '2021-07-06'),
(358, 'dpmartin111@yahoo.com', '2021-07-06 04:20:54', '2021-07-06'),
(359, 'artcummings@yahoo.com', '2021-07-06 04:46:58', '2021-07-06'),
(360, 'bnsuedkamp@yahoo.com', '2021-07-06 06:51:10', '2021-07-06'),
(361, 'denarobinson@yahoo.com', '2021-07-06 07:49:39', '2021-07-06'),
(362, 'spetrosyan@aol.com', '2021-07-06 18:23:00', '2021-07-06'),
(363, 'tsioux@yahoo.com', '2021-07-06 20:19:32', '2021-07-06'),
(364, 'bevan3758@aol.com', '2021-07-06 23:39:39', '2021-07-06'),
(365, 'antin.egertonwarburton@yahoo.com', '2021-07-06 23:49:41', '2021-07-06'),
(366, 'kadric20@yahoo.com', '2021-07-07 00:55:21', '2021-07-07'),
(367, 'cecille.estes@yahoo.com', '2021-07-07 02:38:54', '2021-07-07'),
(368, 'irotorikoutitcha@yahoo.com', '2021-07-07 03:53:01', '2021-07-07'),
(369, 'devkumar_2001@yahoo.com', '2021-07-07 04:48:09', '2021-07-07'),
(370, 'mustaque_ahmed_44@yahoo.com', '2021-07-07 05:02:07', '2021-07-07'),
(371, 'stratton-r@sbcglobal.net', '2021-07-07 05:42:00', '2021-07-07'),
(372, 'tedyourimichel@yahoo.com', '2021-07-07 06:27:07', '2021-07-07'),
(373, 'natalijalakis@yahoo.com', '2021-07-07 06:48:49', '2021-07-07'),
(374, 'bruce_cranstoun@yahoo.com', '2021-07-07 07:54:57', '2021-07-07'),
(375, 'carry.godfrey@yahoo.com', '2021-07-07 10:06:36', '2021-07-07'),
(376, 'jenniferpeterson2003@yahoo.com', '2021-07-07 11:22:12', '2021-07-07'),
(377, 'moosefj@aol.com', '2021-07-07 11:53:51', '2021-07-07'),
(378, 'breweredouard@yahoo.com', '2021-07-07 13:07:00', '2021-07-07'),
(379, 'boprinting@sbcglobal.net', '2021-07-07 14:41:33', '2021-07-07'),
(380, 'fedderywendolyn@yahoo.com', '2021-07-07 15:56:37', '2021-07-07'),
(381, 'lavonnegirdwood@yahoo.com', '2021-07-07 18:16:25', '2021-07-07'),
(382, 'jmb3439@aol.com', '2021-07-07 19:21:38', '2021-07-07'),
(383, 'skirodeo@sbcglobal.net', '2021-07-07 23:06:06', '2021-07-07'),
(384, 'ahhjazz@yahoo.com', '2021-07-08 01:32:12', '2021-07-08'),
(385, 'smilesmv@aol.com', '2021-07-08 01:36:09', '2021-07-08'),
(386, 'anncberlak@yahoo.com', '2021-07-08 02:11:20', '2021-07-08'),
(387, 'jadenaranjo05@yahoo.com', '2021-07-08 02:47:38', '2021-07-08'),
(388, 'ccav8000@aol.com', '2021-07-08 02:59:34', '2021-07-08'),
(389, 'tamyadugger130@yahoo.com', '2021-07-08 04:25:57', '2021-07-08'),
(390, 'glennonlaurie@yahoo.com', '2021-07-08 04:51:40', '2021-07-08'),
(391, 'naenae316@yahoo.com', '2021-07-08 08:55:39', '2021-07-08'),
(392, 'wirekasey@yahoo.com', '2021-07-08 11:13:46', '2021-07-08'),
(393, 'marmarks@att.net', '2021-07-08 13:00:06', '2021-07-08'),
(394, 'stephanie_trng@yahoo.com', '2021-07-08 13:19:00', '2021-07-08'),
(395, 'dibblecarolin@yahoo.com', '2021-07-08 14:57:56', '2021-07-08'),
(396, 'drbillyrad@aol.com', '2021-07-08 16:23:28', '2021-07-08'),
(397, 'latrycejohnson03@yahoo.com', '2021-07-08 16:29:17', '2021-07-08'),
(398, 'robertayres@rocketmail.com', '2021-07-08 17:47:30', '2021-07-08'),
(399, 'theresahostetler@yahoo.com', '2021-07-08 18:17:49', '2021-07-08'),
(400, 'mrstoni66@aol.com', '2021-07-08 23:14:53', '2021-07-08'),
(401, 'lmottbeat@verizon.net', '2021-07-08 23:51:02', '2021-07-08'),
(402, 'oksana.savina9393@gmail.com', '2021-07-09 00:51:26', '2021-07-09'),
(403, 'haileyhuften@yahoo.com', '2021-07-09 03:59:23', '2021-07-09'),
(404, 'aaronbeaudin@gmail.com', '2021-07-09 04:29:14', '2021-07-09'),
(405, 'rdickey121@verizon.net', '2021-07-09 04:46:24', '2021-07-09'),
(406, 'tgdeneen@gmail.com', '2021-07-09 04:56:48', '2021-07-09'),
(407, 'drpeap@cox.net', '2021-07-09 15:44:59', '2021-07-09'),
(408, 'izzy.johnson50@yahoo.com', '2021-07-09 16:21:07', '2021-07-09'),
(409, 'gpjke@yahoo.com', '2021-07-09 17:08:51', '2021-07-09'),
(410, 'areimert9109@gmail.com', '2021-07-09 17:29:28', '2021-07-09'),
(411, 'princesskoopa67@yahoo.com', '2021-07-09 18:16:34', '2021-07-09'),
(412, 'l22gkp@yahoo.com', '2021-07-09 19:48:04', '2021-07-09'),
(413, 'bahbee13@yahoo.com', '2021-07-09 22:04:50', '2021-07-09'),
(414, 'buckyroos@yahoo.com', '2021-07-09 22:58:07', '2021-07-09'),
(415, 'wahidmaa22@gmail.com', '2021-07-09 23:13:34', '2021-07-09'),
(416, 'tougb4@aol.com', '2021-07-09 23:53:31', '2021-07-09'),
(417, 'amya@fatdroid.com', '2021-07-09 23:59:02', '2021-07-09'),
(418, 'drewbot@yahoo.com', '2021-07-10 00:35:45', '2021-07-10'),
(419, 'marie.de.clercq3@telenet.be', '2021-07-10 00:48:46', '2021-07-10'),
(420, 'linda_stander@hotmail.com', '2021-07-10 05:19:59', '2021-07-10'),
(421, 'stacy@elevatedantiquity.com', '2021-07-10 05:24:54', '2021-07-10'),
(422, 'wrchloe@yahoo.com', '2021-07-10 08:03:27', '2021-07-10'),
(423, 'jillianwhitacre@gmail.com', '2021-07-10 09:23:46', '2021-07-10'),
(424, 'hasanzidan38@gmail.com', '2021-07-10 10:09:16', '2021-07-10'),
(425, 'ronnystebbings@yahoo.com', '2021-07-10 10:13:10', '2021-07-10'),
(426, 'topuforazi509@gmail.com', '2021-07-10 13:53:13', '2021-07-10'),
(427, 'hpf30@aol.com', '2021-07-10 14:10:45', '2021-07-10'),
(428, 'keene_tiffany@yahoo.com', '2021-07-10 14:40:50', '2021-07-10'),
(429, 'gertenbach@aol.com', '2021-07-10 17:51:54', '2021-07-10'),
(430, 'bterrock@yahoo.com', '2021-07-10 20:41:50', '2021-07-10'),
(431, 'gordon.catharina@yahoo.com', '2021-07-11 00:35:14', '2021-07-11'),
(432, 'kendal.sanford@yahoo.com', '2021-07-11 01:40:41', '2021-07-11'),
(433, 'beattyl1213@yahoo.com', '2021-07-11 14:40:01', '2021-07-11'),
(434, 'samsurjamananik@gmail.com', '2021-07-11 19:07:54', '2021-07-11'),
(435, 'kellby.courtney@yahoo.com', '2021-07-11 22:07:41', '2021-07-11'),
(436, 'heathermccallum@rocketmail.com', '2021-07-11 23:10:53', '2021-07-11'),
(437, 'leegodwin21@yahoo.com', '2021-07-12 03:12:15', '2021-07-12'),
(438, 'ljv8182@aol.com', '2021-07-12 06:03:38', '2021-07-12'),
(439, 'vasilisa.petuhova9090@gmail.com', '2021-07-12 06:17:09', '2021-07-12'),
(440, 'julieabryce@gmail.com', '2021-07-12 10:33:21', '2021-07-12'),
(441, 'bradney.ricketts@yahoo.com', '2021-07-12 22:35:32', '2021-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `auth_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_expire` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Alive, 0 = Expire',
  `started_at` datetime NOT NULL,
  `expire_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_type` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT 'Individual Seller',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(124) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile1_is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `mobile2_is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `mobile1_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile2_otp_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile1_otp_code_extime` datetime DEFAULT NULL,
  `mobile2_otp_code_extime` datetime DEFAULT NULL,
  `area_id` int(10) DEFAULT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '0',
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
  `user_type` tinyint(4) NOT NULL DEFAULT '0',
  `total_post` int(10) NOT NULL DEFAULT '0',
  `total_favorite` int(5) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `city` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(3) DEFAULT NULL,
  `package_start_date` date DEFAULT NULL,
  `package_end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `ROLE_ID`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 1, 1, NULL, NULL, '2020-10-09 02:45:46'),
(3, 'General Admin Group', 8, 1, NULL, '2020-10-09 02:33:26', '2020-10-09 02:45:57'),
(4, 'Sales Manger Group', 12, 1, NULL, '2020-10-09 02:34:06', '2020-10-09 02:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `verify_mobile_no`
--

DROP TABLE IF EXISTS `verify_mobile_no`;
CREATE TABLE IF NOT EXISTS `verify_mobile_no` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile_no` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Admin, 1 = User',
  `purpose` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = Verify-mobile,  1 = Reset-password 2= Forgot-password',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = Last-one, 0 = Used, 2 = Unused',
  `expire_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workout_body_parts`
--

DROP TABLE IF EXISTS `workout_body_parts`;
CREATE TABLE IF NOT EXISTS `workout_body_parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
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

DROP TABLE IF EXISTS `workout_items`;
CREATE TABLE IF NOT EXISTS `workout_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workout_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_parts_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_items`
--

INSERT INTO `workout_items` (`id`, `workout_name`, `photo`, `photo_url`, `body_parts_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test 1', 'workout_item_04102020_1601817674.png', 'http://www.boilerplate-admin.local/media/images/workout-item/workout_item_04102020_1601817674.png', 2, 1, '2020-10-03 07:21:14', '2020-10-03 07:21:14');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
