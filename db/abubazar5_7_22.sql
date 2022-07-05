-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 06:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abubazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_ads`
--

CREATE TABLE `admin_ads` (
  `id` int(11) NOT NULL,
  `ads_name` varchar(255) DEFAULT NULL,
  `ads_img` varchar(255) DEFAULT NULL,
  `image_position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_ads`
--

INSERT INTO `admin_ads` (`id`, `ads_name`, `ads_img`, `image_position`, `status`, `created_at`) VALUES
(1, 'My ads', 'media/adminads/ads-image-62c4604e952b7.jpg', '1', '1', NULL),
(2, 'all ads', 'media/adminads/ads-image-62c4605ee6455.gif', '1', '1', NULL),
(3, 'category', 'media/adminads/ads-image-62c465850bde2.jpg', '0', '1', NULL),
(4, 'cateogyhr', 'media/adminads/ads-image-62c465b87aefa.png', '0', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `town_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` enum('used','new') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authenticity` enum('original','refurbished') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negotiable` tinyint(1) NOT NULL DEFAULT 0,
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','expired','pending','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `total_reports` int(11) NOT NULL DEFAULT 0,
  `total_views` int(11) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `drafted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `slug`, `customer_id`, `category_id`, `subcategory_id`, `brand_id`, `city_id`, `town_id`, `model`, `condition`, `authenticity`, `negotiable`, `price`, `description`, `phone`, `phone_2`, `thumbnail`, `status`, `featured`, `total_reports`, `total_views`, `is_blocked`, `drafted_at`, `created_at`, `updated_at`) VALUES
(1, 'AG 3310 BEST CALLING MOBILE', 'ag-3310-best-calling-mobile', 1, 1, 2, 11, 1, 1, 'New', 'new', 'original', 1, 200.00, '<p>Condition:</p><p>New</p><p>Item type:</p><p><a href=\"https://bikroy.com/en/ads/i/bangladesh/acs-home-electronics/ips\">IPS</a></p><p><strong>Description</strong></p><p>&nbsp;</p><p>&nbsp;</p>', '01990572321', NULL, 'uploads/addss\\4bqm81t6eFEjFbQcL9w8Fs6P2IVMV5zPmxJnH351.jpg', 'active', 0, 0, 7, 0, NULL, '2022-04-06 02:53:02', '2022-05-22 23:56:47'),
(2, 'Car and bike ওয়াস পাম্প', 'car-and-bike-was-pamp', 1, 3, 13, 1, 1, 3, 'New', 'new', 'original', 1, 300.00, '<p>&nbsp;<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01984594919', NULL, 'uploads/addss\\jz7E2yARRkGX1cyX1wHLR1UcvI3nbuxsV1QnIqsf.jpg', 'active', 0, 0, 12, 0, NULL, '2022-04-06 03:05:31', '2022-04-14 02:16:22'),
(3, 'OPPO F1s 4/32 GB', 'oppo-f1s-432-gb', 2, 1, 2, 11, 1, 1, 'OPPO F1s', 'new', 'original', 1, 999.00, '<p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01990572321', NULL, 'uploads/addss\\IuFyt74HchLCdphqPl7ZzaxarwxSX4WMpJBSEYmu.jpg', 'active', 1, 0, 0, 0, NULL, '2022-04-06 03:08:55', '2022-04-06 03:08:55'),
(4, 'Xiaomi Redmi Note 8 4/64', 'xiaomi-redmi-note-8-464', 1, 1, 2, 3, 1, 1, 'Note 8 4/64', 'new', 'original', 1, 2852.00, '<p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01990572321', NULL, 'uploads/addss\\eojOZprJA3MvNhKc5yn5yyMa5eFGaOixUdYj1Ckt.jpg', 'active', 1, 0, 8, 0, NULL, '2022-04-06 03:12:37', '2022-04-19 03:38:33'),
(5, 'Silk Boutique Full body block and Dolar work,Body color Black (Code-344)', 'silk-boutique-full-body-block-and-dolar-workbody-color-black-code-344', 1, 2, 6, 6, 4, 7, 'New', 'new', 'original', 1, 555.00, '<p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01990572321', NULL, 'uploads/addss\\mgtFC70eJQB3nT38mvDStAAt0JGYkg1JVxx8qGHy.jpg', 'active', 1, 0, 34, 0, NULL, '2022-04-06 03:25:25', '2022-05-23 04:51:39'),
(6, 'Dell Latitude e7490 Core i5 8th gen. 16GB 512GB NVMe', 'dell-latitude-e7490-core-i5-8th-gen-16gb-512gb-nvme', 1, 4, 19, 1, 5, 5, 'laptop', 'new', 'original', 1, 333.00, '<p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01990572321', NULL, 'uploads/addss\\PDU8FJPOT1cxGetqTCt1oGh5DWlOq0VK58C0fdxp.jpg', 'active', 1, 0, 3, 0, NULL, '2022-04-06 03:29:20', '2022-04-21 14:37:41'),
(7, 'Mitsubishi Pajero Sports Diesel Sunroof 2010', 'mitsubishi-pajero-sports-diesel-sunroof-2010', 3, 6, 32, 11, 4, 7, 'New', 'used', 'original', 1, 375.00, 'Options: Excellent AC, Sunroof, CD Player,7 Setter, HID Projection Headlight, Central AC, Leather Interior, Power Steering, Disk Brake, Power Windows & Mirror, Airbag, SRS Airbag, Central Lock, Tempered Glass, All Power, All Papers R UP to Date.\r\n\r\nNote: If you want to check anything you can take this car to any automobile analyzing center.\r\n\r\nBusiness Center Name: N B CARS\r\n\r\nAddress: Please Visit Our Showroom, Road - 2, House - 10, Block - L, Near South Point School, Banani.\r\n\r\nWe Are Open Saturday to Thursday, All Kinds of Car Sales & Purchase.', '0199055521', NULL, 'uploads/addds_images\\s9EdxWxYLLnmpj0FlT1R2Fm1bYGa26VCXW8H4XiF.jpg', 'active', 1, 0, 10, 0, NULL, '2022-04-11 02:30:20', '2022-04-21 08:12:14'),
(8, 'Bajaj Discover 110cc CBS', 'bajaj-discover-110cc-cbs', 3, 6, 30, 9, 4, 7, 'New', 'new', 'original', 1, 4545.00, 'Options: Excellent AC, Sunroof, CD Player,7 Setter, HID Projection Headlight, Central AC, Leather Interior, Power Steering, Disk Brake, Power Windows & Mirror, Airbag, SRS Airbag, Central Lock, Tempered Glass, All Power, All Papers R UP to Date.\r\n\r\nNote: If you want to check anything you can take this car to any automobile analyzing center.\r\n\r\nBusiness Center Name: N B CARS\r\n\r\nAddress: Please Visit Our Showroom, Road - 2, House - 10, Block - L, Near South Point School, Banani.\r\n\r\nWe Are Open Saturday to Thursday, All Kinds of Car Sales & Purchase.', '01990572444', NULL, 'uploads/addds_images\\UOuponRHWxCSHRr2tIAJsr35vvshORjqATPf5r3j.jpg', 'active', 0, 0, 6, 0, NULL, '2022-04-11 03:11:22', '2022-05-23 07:56:02'),
(9, 'Toyota Premio 2017', 'toyota-premio-2017', 4, 3, 13, 5, 5, 5, 'new', 'new', 'original', 1, 294.00, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '01985454544', NULL, 'uploads/addds_images\\FV6sWyPwLQ7CgaTbBYQqfmlU2wWChGjD1sMw9WlK.jpg', 'active', 1, 0, 2, 0, NULL, '2022-05-23 07:40:59', '2022-05-23 07:43:12'),
(10, 'Xiaomi Redmi 9T', 'xiaomi-redmi-9t', 4, 1, 2, 11, 5, 6, 'new', 'new', 'original', 1, 15749.00, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '01985454545', NULL, 'uploads/addss\\rK521Hai0dNnYTH9joMadA8KJUEqSOWPpV7FJNdH.jpg', 'active', 1, 0, 2, 0, NULL, '2022-05-23 09:08:44', '2022-05-23 09:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `ad_features`
--

CREATE TABLE `ad_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_features`
--

INSERT INTO `ad_features` (`id`, `ad_id`, `name`, `created_at`, `updated_at`) VALUES
(3, 4, 'Edition: 4/64', '2022-04-06 03:13:16', '2022-04-06 03:13:16'),
(4, 4, 'Model: Redmi Note 8', '2022-04-06 03:13:16', '2022-04-06 03:13:16'),
(5, 7, 'new', '2022-04-11 02:31:44', '2022-04-11 02:31:44'),
(7, 9, 'new', '2022-05-23 07:41:41', '2022-05-23 07:41:41'),
(11, 10, 'new', '2022-05-23 09:11:19', '2022-05-23 09:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `ad_galleries`
--

CREATE TABLE `ad_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_galleries`
--

INSERT INTO `ad_galleries` (`id`, `ad_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/ad_multiple\\XQJ5dw8shNWTVHgW6XvJAnkLfkL05XAXehc7NT57.jpg', '2022-04-06 02:53:20', '2022-04-06 02:53:20'),
(2, 1, 'uploads/ad_multiple\\LlIqIMnkKg4WX2cSXZrYFpd3y8mPWcZFMbVNXO24.jpg', '2022-04-06 02:53:20', '2022-04-06 02:53:20'),
(3, 2, 'uploads/ad_multiple\\8Prlk5anA3F7ugFrWSIUXVkzluKI8OuuMNuwurtb.jpg', '2022-04-06 03:05:37', '2022-04-06 03:05:37'),
(4, 2, 'uploads/ad_multiple\\CwpNnourvwFpLWbEUI3fAKrvAr0EgMkKD1csIyqD.jpg', '2022-04-06 03:05:37', '2022-04-06 03:05:37'),
(5, 2, 'uploads/ad_multiple\\ZDC9EfvTWxndXK5dgaMYt8S1WNXZQAkCCv4WiPI5.jpg', '2022-04-06 03:05:37', '2022-04-06 03:05:37'),
(6, 3, 'uploads/ad_multiple\\8megxqgpW8G26toTi2aR7zjmEeLhp7YJG8LgfuiL.jpg', '2022-04-06 03:09:00', '2022-04-06 03:09:00'),
(7, 3, 'uploads/ad_multiple\\9iz4FkwO9CsHJKWQfzNZ9x3bPWE2iRRnECz87Vj6.jpg', '2022-04-06 03:09:01', '2022-04-06 03:09:01'),
(8, 4, 'uploads/ad_multiple\\B5jB3Xn0ozaTpQzXkYVHOwVwYQDMk7Wr6CgtcY7D.jpg', '2022-04-06 03:12:46', '2022-04-06 03:12:46'),
(9, 4, 'uploads/ad_multiple\\eQGlNIOpSUc9jRpJEsZW92B9qihKQHuqGVLVXM3t.jpg', '2022-04-06 03:12:46', '2022-04-06 03:12:46'),
(10, 4, 'uploads/ad_multiple\\CMGWVNMaBTflGJcnUgRlZ2ye0pWBb9dE04bpJOzF.jpg', '2022-04-06 03:12:46', '2022-04-06 03:12:46'),
(11, 4, 'uploads/ad_multiple\\5D3EJWIetIlx2krQWOkOJzsL2ZRGpP9XpPRptp4G.jpg', '2022-04-06 03:12:46', '2022-04-06 03:12:46'),
(12, 5, 'uploads/ad_multiple\\t8NkOTc8XJGUQdQ2A0y0nrchLSjsUqZ5ylyfUYdi.jpg', '2022-04-06 03:26:40', '2022-04-06 03:26:40'),
(13, 5, 'uploads/ad_multiple\\46Tn5D1xmWe4MOh5TQ7lGdZN8wZVjH6522NZRcJz.jpg', '2022-04-06 03:26:40', '2022-04-06 03:26:40'),
(14, 5, 'uploads/ad_multiple\\P9CfvvsXEvqjjlD6igERjDvvMKnbr0JtjOOhRtRE.jpg', '2022-04-06 03:26:40', '2022-04-06 03:26:40'),
(15, 6, 'uploads/ad_multiple\\0un714ZaqJvcRfohxR2D7CORHe0EwX7e6g9ogerf.jpg', '2022-04-06 03:29:27', '2022-04-06 03:29:27'),
(16, 6, 'uploads/ad_multiple\\n4GY3e9k3zoLJLJ7DqPqUX9Al5fSy9htuBeJNADb.jpg', '2022-04-06 03:29:27', '2022-04-06 03:29:27'),
(17, 6, 'uploads/ad_multiple\\fzpdykbea1DsbNmlm2IjD8r8c7WExkVgBLI6QfGu.jpg', '2022-04-06 03:29:27', '2022-04-06 03:29:27'),
(18, 7, 'uploads/adds_multiple\\LetZEez9cBmenDZ6XYmis45zndSvrvygwO1PNcoq.jpg', '2022-04-11 02:31:43', '2022-04-11 02:31:43'),
(19, 7, 'uploads/adds_multiple\\sJUcQQwFvrngngUsPlRUC1DuztlAUNfxYifUjew7.jpg', '2022-04-11 02:31:43', '2022-04-11 02:31:43'),
(20, 7, 'uploads/adds_multiple\\C76g50kfX9rOgtMbRxp6fQDo90AzmKxx81nqRhIz.jpg', '2022-04-11 02:31:44', '2022-04-11 02:31:44'),
(21, 7, 'uploads/adds_multiple\\AkHRoEShuFE78S1ubkBklV1u9ABDgoRuEpszzF0U.jpg', '2022-04-11 02:31:44', '2022-04-11 02:31:44'),
(22, 8, 'uploads/adds_multiple\\CTDWxQtireBWJgDhwQ9upCi1EOwvfglFAwvc7oYN.jpg', '2022-04-11 03:11:23', '2022-04-11 03:11:23'),
(23, 8, 'uploads/adds_multiple\\xEC3jAO17OM6W2VHMcQT9R0VHqLFgcBqN62ukpt8.jpg', '2022-04-11 03:11:23', '2022-04-11 03:11:23'),
(24, 9, 'uploads/adds_multiple\\BbSUfnwABzyAO6h0yQkbzN4Jd7XQCvCrWDFyIfR2.jpg', '2022-05-23 07:41:41', '2022-05-23 07:41:41'),
(25, 9, 'uploads/adds_multiple\\qwfepYpKgZcQ9I6ocBHdTuH5mNaxJmQaOYYgAU72.jpg', '2022-05-23 07:41:41', '2022-05-23 07:41:41'),
(26, 10, 'uploads/adds_multiple\\T9Qo0LeQsWbqxXp9tYNBPG7hKa87VrKCZJqE5Bxv.jpg', '2022-05-23 09:08:44', '2022-05-23 09:08:44'),
(27, 10, 'uploads/adds_multiple\\x0Ljyntlz6dw9nWFzfdRfjHrqJyiSdPfyqqv7a4r.jpg', '2022-05-23 09:08:44', '2022-05-23 09:08:44'),
(28, 10, 'uploads/adds_multiple\\hMxY2hdsUSuyk2hCSk6lmvCnHJUg2zR5DFXO4syu.jpg', '2022-05-23 09:09:52', '2022-05-23 09:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `post_id`, `name`, `email`, `body`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'user', 'user@gmail.com', 'good', 1, '2022-04-11 03:21:16', '2022-04-11 03:21:16'),
(2, 1, 'user', 'user@gmail.com', ' Dicta. Nam Id Omnis Veniam Placeat Voluptas Vero. Enim Consequatur Voluptate Eaque. Sed Adipisci Corporis Optio', 1, '2022-04-11 03:22:02', '2022-04-11 03:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ACER', 'acer', '2022-04-06 01:44:41', '2022-04-06 01:44:41'),
(2, 'Apple', 'apple', '2022-04-06 01:44:48', '2022-04-06 01:44:48'),
(3, 'Samsung', 'samsung', '2022-04-06 01:44:52', '2022-04-06 01:45:01'),
(4, 'Google', 'google', '2022-04-06 01:45:08', '2022-04-06 01:45:08'),
(5, 'Sony', 'sony', '2022-04-06 01:45:11', '2022-04-06 01:45:11'),
(6, 'HTC', 'htc', '2022-04-06 01:45:16', '2022-04-06 01:45:16'),
(7, 'LG', 'lg', '2022-04-06 01:45:19', '2022-04-06 01:45:19'),
(8, 'Micromax', 'micromax', '2022-04-06 01:45:23', '2022-04-06 01:45:23'),
(9, 'Nokia', 'nokia', '2022-04-06 01:45:27', '2022-04-06 01:45:27'),
(10, 'OnePlus', 'oneplus', '2022-04-06 01:45:30', '2022-04-06 01:45:30'),
(11, 'OPPO', 'oppo', '2022-04-06 01:45:35', '2022-04-06 01:45:35'),
(12, 'Spice', 'spice', '2022-04-06 01:45:38', '2022-04-06 01:45:38'),
(13, 'Dell', 'dell', '2022-04-06 01:45:41', '2022-04-06 01:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `slug`, `icon`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Phone', 'uploads/category\\kGrTDJ8g1HsRux6ylJ0sStDAoNYS8EFeo8n8PEO1.jpg', 'mobile-phone', 'fas fa-mobile-alt', 0, 1, '2022-04-06 01:12:22', '2022-04-06 01:12:22'),
(2, 'Fashion', 'uploads/category\\72FI55dWySOtlHL3Z9UL04rnlq83Qs1luvuB5TYy.jpg', 'fashion', 'fas fa-tshirt', 0, 1, '2022-04-06 01:15:37', '2022-04-06 01:15:37'),
(3, 'Vehicles', 'uploads/category\\GRIXHpvh6GMBz4Omz20xPMS4cbWc3s0U2nb7jolk.png', 'vehicles', 'fas fa-car', 0, 1, '2022-04-06 01:16:19', '2022-04-06 01:16:19'),
(4, 'Electronics', 'uploads/category\\ILZZaLPlXTEakYyYziHtQZ6MpFbnRviUgpubnPYX.jpg', 'electronics', 'fas fa-laptop', 0, 1, '2022-04-06 01:16:56', '2022-04-06 01:16:56'),
(5, 'Essentials', 'uploads/category\\ylK1bqPBibwWMgPEoRR4md0WJ0SdX5pDhoPqT7PD.png', 'essentials', 'fas fa-gift', 0, 1, '2022-04-06 01:17:55', '2022-04-06 01:17:55'),
(6, 'Sports & Kids', 'uploads/category\\slTWGWyX19yYWMiiVcxBEMzGmfeaRwioXZS4X51a.jpg', 'sports-kids', 'fas fa-futbol', 0, 1, '2022-04-06 01:18:32', '2022-04-06 01:18:32'),
(7, 'Education', 'uploads/category\\mwybJ8WrOjSxmRi8d0O3nsF13SBOjr6AhHOgPmdv.jpg', 'education', 'fas fa-book-reader', 0, 1, '2022-04-09 12:01:27', '2022-04-09 12:01:27'),
(8, 'Games', 'uploads/category\\ZCW8PSpJGhZRovq3aIX9kthkN4lsCw1yVB3r2Vpn.jpg', 'games', 'fas fa-football-ball', 0, 1, '2022-04-09 12:01:59', '2022-04-09 12:01:59'),
(9, 'Property', 'uploads/category\\WpzW74uOkPWdEmvbtkfDfH2ikVAwa8WJGwU3Xkd8.jpg', 'property', 'fas fa-home', 0, 1, '2022-04-09 12:02:36', '2022-04-09 12:02:36'),
(10, 'Agriculture', 'uploads/category\\Pt7IFWSlQHJQEXWhJhNrHSmCzEv8ryrUySI0LgbW.jpg', 'agriculture', 'fas fa-tree', 0, 1, '2022-04-09 12:02:57', '2022-04-09 12:02:57'),
(11, 'Overseas Jobs', 'uploads/category\\X2xVghqLkTM0b8Hyq5YbYYXaj9D1eURDfkzevvly.jpg', 'overseas-jobs', 'fas fa-shopping-bag', 0, 1, '2022-04-09 12:03:36', '2022-04-09 12:03:36'),
(12, 'Services', 'uploads/category\\FtEUEIgmf2qilc83uFe5dz9mCqFwG6RjVn1MYwF4.jpg', 'services', 'fas fa-certificate', 0, 1, '2022-04-09 12:04:25', '2022-04-09 12:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Carlottatown', 'uploads/city\\vFBeUVCNxnTtlhZAQnqxlIJuoXVCSwgTu6303lJf.jpg', '2022-04-06 01:46:58', '2022-04-06 01:46:58'),
(2, 'East Chelsea', 'uploads/city\\JI0UEgHsdhX4my23Uw5EwnrZAJxTCVcG7z3aeKgR.jpg', '2022-04-06 01:47:26', '2022-04-06 01:47:26'),
(3, 'Watsicaside', 'uploads/city\\jENfYYTue6KHYR5LEczNXlGQmsKU38VqQnCYwQh3.jpg', '2022-04-06 01:47:50', '2022-04-06 01:47:50'),
(4, 'Hodkiewiczbury', 'uploads/city\\WAgtUv6x0i1QXg0PU8I7ju00uwU8JXDVTfkIQHuK.jpg', '2022-04-06 01:48:05', '2022-04-06 01:48:05'),
(5, 'South Arnold', 'uploads/city\\uGihui7P7YsH2yyadVMfloVtiElIGOcSj0yyPCYf.jpg', '2022-04-06 01:48:14', '2022-04-06 01:48:14'),
(6, 'Nienowville', 'uploads/city\\PvgfmgRI6vRncO4DBfnH6LhCgFcIz0Qo8Xp6cFix.jpg', '2022-04-06 01:48:31', '2022-04-06 01:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index1_main_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index1_counter_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index1_mobile_app_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index2_search_filter_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index2_get_membership_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index3_search_filter_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index1_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index3_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index1_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download_app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_ads` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_earning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_video_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_membership_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_membership_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_plan_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_messenger_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_favorite_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_ads_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chat_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified_user_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_overview_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_post_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_my_ads_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_plan_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_account_setting_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posting_rules_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posting_rules_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `index1_main_banner`, `index1_counter_background`, `index1_mobile_app_banner`, `index2_search_filter_background`, `index2_get_membership_background`, `index3_search_filter_background`, `index1_title`, `index3_title`, `index1_description`, `download_app`, `newsletter_content`, `membership_content`, `create_account`, `post_ads`, `start_earning`, `terms_background`, `terms_body`, `about_video_thumb`, `about_background`, `about_body`, `privacy_background`, `privacy_body`, `contact_background`, `get_membership_background`, `get_membership_image`, `pricing_plan_background`, `faq_background`, `ads_background`, `blog_background`, `dashboard_messenger_background`, `dashboard_favorite_ads_background`, `faq_content`, `manage_ads_content`, `chat_content`, `verified_user_content`, `dashboard_overview_background`, `dashboard_post_ads_background`, `dashboard_my_ads_background`, `dashboard_plan_background`, `dashboard_account_setting_background`, `posting_rules_background`, `posting_rules_body`, `created_at`, `updated_at`) VALUES
(1, 'uploads/banners\\COKktanu1DW77InNKh5hyqNUOg2826YGlXrmZP3q.jpg', NULL, NULL, NULL, NULL, NULL, 'Buy, Sell And Find Just what you want !', NULL, 'Buy And Sell Everything From Used Cars To Mobile Phones And Computers.', NULL, NULL, 'Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis Neque Auctor.', NULL, 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.', NULL, NULL, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p>&nbsp;</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', 'https://youtu.be/s7wmiS2mSXY', NULL, 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.', NULL, '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>&nbsp;</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p>&nbsp;</p><p><br><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Etiam Commodo Vel Ligula.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', 'Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.', NULL, NULL, NULL, NULL, NULL, NULL, '<p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi<p>', '2022-04-02 06:06:48', '2022-07-05 05:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'rabin', 'rabinmia7578@gmail.com', 'dddd', 'aaaaaaaaaaaaaaaa', '2022-05-23 08:08:04', '2022-05-23 08:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `symbol_position`, `created_at`, `updated_at`) VALUES
(1, 'United State Dollar', 'USD', '$', 'left', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(2, 'Euro', 'EUR', '€', 'left', '2022-04-02 06:06:48', '2022-04-02 06:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `username`, `email`, `phone`, `web`, `email_verified_at`, `password`, `image`, `token`, `last_seen`, `remember_token`, `created_at`, `updated_at`, `provider`, `provider_id`) VALUES
(1, 'rabin', 'rabin', 'rabinmia7578@gamil.com', NULL, NULL, NULL, '$2y$10$K5OC1sO0k9fHeEYpJxoGX.bIOxevTXw8VvRm73uV1z7idFLc286Q6', 'uploads/customer\\z11sxJTrDzm4L8xUMrIF1mGkCJfhMcm6fGu8q6Nk.jpg', NULL, '2022-04-11 13:40:05', NULL, '2022-04-06 01:43:10', '2022-04-11 07:40:05', NULL, NULL),
(2, 'rabin', 'user', 'rabinmia@gmail.com', NULL, NULL, NULL, '$2y$10$Obv1QA1BL3xfG9EqkTL62epepyehUsiN5U1/Hpuhi6neo61L0PyL2', 'backend/image/default.png', NULL, '2022-04-21 14:14:48', NULL, '2022-04-06 03:00:27', '2022-04-21 08:14:48', NULL, NULL),
(3, 'user', 'classified', 'user@gmail.com', NULL, NULL, NULL, '$2y$10$eruWbh5Xv6PU/N5ExdomQ.Hoo4yi6M1LXe4ISxbgu0N2huyK0DfhK', 'backend/image/default.png', NULL, '2022-04-11 10:21:51', NULL, '2022-04-11 01:58:47', '2022-04-11 04:21:51', NULL, NULL),
(4, 'customer', 'customer', 'customer@gmail.com', NULL, NULL, NULL, '$2y$10$p748CYS66ypUVzvroqwLeuGGiVt0WVrJXXMM3m1wZccVhnQRumn2G', 'backend/image/default.png', NULL, '2022-05-23 15:10:30', NULL, '2022-05-23 07:24:29', '2022-05-23 09:10:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'jone@gmail.com', '2022-04-09 12:54:48', '2022-04-09 12:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_category_id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_category_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '2022-04-06 01:26:44', '2022-04-06 01:26:44'),
(2, 1, 'Why do we use it?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2022-04-06 01:27:06', '2022-04-06 01:27:06'),
(3, 2, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>&nbsp;</p>', '2022-04-06 01:29:58', '2022-04-06 01:29:58'),
(4, 2, 'Why do we use it?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2022-04-06 01:30:07', '2022-04-06 01:30:07'),
(5, 3, 'Where does it come from?', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p><br>&nbsp;</p>', '2022-04-06 01:30:15', '2022-04-06 01:30:15'),
(6, 3, 'Where can I get some?', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p><br>&nbsp;</p>', '2022-04-06 01:30:26', '2022-04-06 01:30:26'),
(7, 5, 'What is Lorem Ipsum?', '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p><br>&nbsp;</p>', '2022-04-06 01:30:50', '2022-04-06 01:30:50'),
(8, 5, 'Why do we use it?', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks.</p>', '2022-04-06 01:31:05', '2022-04-06 01:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `icon`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', 'fas fa-mobile-alt', 0, '2022-04-02 06:06:48', '2022-04-06 01:28:10'),
(2, 'Computer', 'computer', 'fas fa-laptop', 0, '2022-04-06 01:28:28', '2022-04-06 01:28:28'),
(3, 'Car', 'car', 'fas fa-car', 0, '2022-04-06 01:28:37', '2022-04-06 01:28:37'),
(5, 'Clothes', 'clothes', 'fas fa-tshirt', 0, '2022-04-06 01:29:08', '2022-04-06 01:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'flag-icon-gb', 'ltr', '2022-04-02 06:06:48', '2022-04-02 06:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `messengers`
--

CREATE TABLE `messengers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_super_admins_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_12_184107_create_permission_tables', 1),
(5, '2020_12_20_161857_create_brands_table', 1),
(6, '2020_12_23_122556_create_contacts_table', 1),
(7, '2021_02_17_110211_create_testimonials_table', 1),
(8, '2021_07_07_125145_create_themes_table', 1),
(9, '2021_07_13_121453_create_cities_table', 1),
(10, '2021_07_13_121502_create_towns_table', 1),
(11, '2021_08_21_174451_create_customers_table', 1),
(12, '2021_08_22_051131_create_categories_table', 1),
(13, '2021_08_22_051134_create_sub_categories_table', 1),
(14, '2021_08_22_051135_create_ads_table', 1),
(15, '2021_08_22_051198_create_post_categories_table', 1),
(16, '2021_08_22_051199_create_posts_table', 1),
(17, '2021_08_23_115402_create_settings_table', 1),
(18, '2021_08_25_061331_create_languages_table', 1),
(19, '2021_09_04_105120_create_blog_comments_table', 1),
(20, '2021_09_05_120235_create_ad_features_table', 1),
(21, '2021_09_05_120248_create_ad_galleries_table', 1),
(22, '2021_09_19_141812_create_plans_table', 1),
(23, '2021_09_19_152529_create_faq_categories_table', 1),
(24, '2021_11_13_114825_create_messengers_table', 1),
(25, '2021_11_14_093821_create_notifications_table', 1),
(26, '2021_11_14_095846_create_jobs_table', 1),
(27, '2021_11_15_112417_create_user_plans_table', 1),
(28, '2021_11_15_112949_create_transactions_table', 1),
(29, '2021_11_18_102445_add_fields_to_settings_table', 1),
(30, '2021_11_23_112531_add_fields_to_customers_table', 1),
(31, '2021_12_14_142236_create_emails_table', 1),
(32, '2021_12_14_142427_create_orders_table', 1),
(33, '2021_12_15_161624_create_module_settings_table', 1),
(34, '2021_12_18_134032_add_seo_fields_to_settings_table', 1),
(35, '2021_12_18_141044_add_socialite_column_to_customers_table', 1),
(36, '2021_12_18_153602_create_social_settings_table', 1),
(37, '2021_12_19_101413_create_cms_table', 1),
(38, '2021_12_19_113555_remove_fields_from_settings_table', 1),
(39, '2021_12_19_115130_create_payment_settings_table', 1),
(40, '2021_12_20_104309_add_fields_to_cms_table', 1),
(41, '2021_12_21_105713_create_faqs_table', 1),
(42, '2022_02_06_123859_add_token_to_customers_table', 1),
(43, '2022_02_16_152704_add_loader_fields_to_settings_table', 1),
(44, '2022_03_01_110707_create_timezones_table', 1),
(45, '2022_03_05_125615_create_currencies_table', 1),
(46, '2022_03_08_110749_add_website_configuration_to_settings_table', 1),
(47, '2022_07_14_151623_create_wishlists_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\SuperAdmin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_settings`
--

CREATE TABLE `module_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog` tinyint(1) NOT NULL DEFAULT 1,
  `newsletter` tinyint(1) NOT NULL DEFAULT 1,
  `language` tinyint(1) NOT NULL DEFAULT 1,
  `contact` tinyint(1) NOT NULL DEFAULT 1,
  `faq` tinyint(1) NOT NULL DEFAULT 1,
  `testimonial` tinyint(1) NOT NULL DEFAULT 1,
  `price_plan` tinyint(1) NOT NULL DEFAULT 1,
  `appearance` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_settings`
--

INSERT INTO `module_settings` (`id`, `blog`, `newsletter`, `language`, `contact`, `faq`, `testimonial`, `price_plan`, `appearance`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('060f6f8d-4967-4d4e-9c27-084e3e9570ee', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\Customer', 3, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/mitsubishi-pajero-sports-diesel-sunroof-2010\"}', NULL, '2022-04-11 02:31:57', '2022-04-11 02:31:57'),
('163a48da-aa02-4a30-9812-6e62db380070', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/toyota-premio-2017\"}', NULL, '2022-05-23 07:42:04', '2022-05-23 07:42:04'),
('178bd9d4-c0f3-4747-9cc8-3c6e62b025f8', 'App\\Notifications\\AdUpdateNotification', 'App\\Models\\Customer', 3, '{\"msg\":\"You\'re just updated a ad\",\"type\":\"adupdate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/bajaj-discover-110cc-cbs\"}', NULL, '2022-04-11 03:19:03', '2022-04-11 03:19:03'),
('2e2f35de-2efd-49f5-a7d7-88c05253c3a9', 'App\\Notifications\\AdUpdateNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re just updated a ad\",\"type\":\"adupdate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/xiaomi-redmi-9t\"}', NULL, '2022-05-23 09:10:05', '2022-05-23 09:10:05'),
('33b1c9ae-36ee-4a27-adf7-c69c21cee9cf', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-05-23 08:00:32', '2022-05-23 08:00:32'),
('383a133b-53d3-4f05-9af1-d0d6b3f73a78', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-19 03:31:48', '2022-04-19 03:31:48'),
('4170518e-8747-49bd-888e-ef36298ee022', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-04-21 08:14:48', '2022-04-21 08:14:48'),
('45a78b5b-06c3-40c7-869c-163ead112eae', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/xiaomi-redmi-9t\"}', NULL, '2022-05-23 09:08:54', '2022-05-23 09:08:54'),
('5a7746f2-4bad-4a30-8295-bd447a9fc72b', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-21 08:14:25', '2022-04-21 08:14:25'),
('6259a21a-6199-4a89-ac90-b01204101f34', 'App\\Notifications\\AdCreateNotification', 'App\\Models\\Customer', 3, '{\"msg\":\"You\'re just created a ad\",\"type\":\"adcreate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/bajaj-discover-110cc-cbs\"}', NULL, '2022-04-11 03:11:28', '2022-04-11 03:11:28'),
('786aba75-6b8d-4ec9-947a-5f90c23bc0ac', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-06 11:34:01', '2022-04-06 11:34:01'),
('7dfb5d4d-50fa-4fcc-8168-7a89d7fad6b1', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-04-19 03:33:01', '2022-04-19 03:33:01'),
('899b1204-fb58-4a57-9de7-85abf7b47c24', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-05-23 09:05:47', '2022-05-23 09:05:47'),
('8d5e8b09-661d-4f49-9d33-f49f55c95dd7', 'App\\Notifications\\AdUpdateNotification', 'App\\Models\\Customer', 3, '{\"msg\":\"You\'re just updated a ad\",\"type\":\"adupdate\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/ad\\/details\\/bajaj-discover-110cc-cbs\"}', NULL, '2022-04-11 03:18:35', '2022-04-11 03:18:35'),
('930c21a6-5787-45fe-b34c-c4def98f6af4', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-04-19 04:25:28', '2022-04-19 04:25:28'),
('9f4a0a7b-e2ac-4f1a-bf35-97ffc3e174cc', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-04-19 01:43:22', '2022-04-19 01:43:22'),
('bb9ade2e-c05e-42a0-9a98-7d86fded59b3', 'App\\Notifications\\LogoutNotification', 'App\\Models\\Customer', 4, '{\"msg\":\"You\'re loggedout successfully\",\"type\":\"loggedout\"}', NULL, '2022-05-23 09:10:30', '2022-05-23 09:10:30'),
('cf3acccc-fa04-4450-99e0-f60ad613b408', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 1, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-11 07:22:44', '2022-04-11 07:22:44'),
('d1a4bbad-377c-4ddb-b6f5-1fb9197385f1', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-19 04:21:47', '2022-04-19 04:21:47'),
('fa433993-6f7c-479f-a681-49518c28a995', 'App\\Notifications\\LoginNotification', 'App\\Models\\Customer', 2, '{\"msg\":\"You\'re loggedin successfully\",\"type\":\"loggedin\"}', NULL, '2022-04-19 00:23:25', '2022-04-19 00:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paypal` tinyint(1) NOT NULL DEFAULT 1,
  `paypal_live_mode` tinyint(1) NOT NULL DEFAULT 0,
  `stripe` tinyint(1) NOT NULL DEFAULT 1,
  `razorpay` tinyint(1) NOT NULL DEFAULT 1,
  `paystack` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_commerz` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `paypal`, `paypal_live_mode`, `stripe`, `razorpay`, `paystack`, `ssl_commerz`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.create', 'super_admin', 'admin', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(2, 'admin.view', 'super_admin', 'admin', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(3, 'admin.update', 'super_admin', 'admin', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(4, 'admin.delete', 'super_admin', 'admin', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(5, 'role.create', 'super_admin', 'role', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(6, 'role.view', 'super_admin', 'role', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(7, 'role.update', 'super_admin', 'role', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(8, 'role.delete', 'super_admin', 'role', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(9, 'ad.create', 'super_admin', 'ad', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(10, 'ad.view', 'super_admin', 'ad', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(11, 'ad.update', 'super_admin', 'ad', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(12, 'ad.delete', 'super_admin', 'ad', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(13, 'category.create', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(14, 'category.view', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(15, 'category.update', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(16, 'category.delete', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(17, 'subcategory.create', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(18, 'subcategory.view', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(19, 'subcategory.update', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(20, 'subcategory.delete', 'super_admin', 'category', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(21, 'newsletter.view', 'super_admin', 'newsletter', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(22, 'newsletter.mailsend', 'super_admin', 'newsletter', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(23, 'newsletter.delete', 'super_admin', 'newsletter', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(24, 'brand.create', 'super_admin', 'brand', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(25, 'brand.view', 'super_admin', 'brand', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(26, 'brand.update', 'super_admin', 'brand', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(27, 'brand.delete', 'super_admin', 'brand', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(28, 'city.create', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(29, 'city.view', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(30, 'city.update', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(31, 'city.delete', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(32, 'town.create', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(33, 'town.view', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(34, 'town.update', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(35, 'town.delete', 'super_admin', 'Location', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(36, 'plan.create', 'super_admin', 'plan', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(37, 'plan.view', 'super_admin', 'plan', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(38, 'plan.update', 'super_admin', 'plan', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(39, 'plan.delete', 'super_admin', 'plan', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(40, 'postcategory.create', 'super_admin', 'Blog', '2022-04-02 06:06:47', '2022-04-02 06:06:47'),
(41, 'postcategory.view', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(42, 'postcategory.update', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(43, 'postcategory.delete', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(44, 'post.create', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(45, 'post.view', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(46, 'post.update', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(47, 'post.delete', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(48, 'tag.create', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(49, 'tag.view', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(50, 'tag.update', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(51, 'tag.delete', 'super_admin', 'Blog', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(52, 'testimonial.create', 'super_admin', 'testimonial', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(53, 'testimonial.view', 'super_admin', 'testimonial', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(54, 'testimonial.update', 'super_admin', 'testimonial', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(55, 'testimonial.delete', 'super_admin', 'testimonial', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(56, 'faqcategory.create', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(57, 'faqcategory.view', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(58, 'faqcategory.update', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(59, 'faqcategory.delete', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(60, 'faq.create', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(61, 'faq.view', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(62, 'faq.update', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(63, 'faq.delete', 'super_admin', 'faq', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(64, 'customer.view', 'super_admin', 'others', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(65, 'setting.view', 'super_admin', 'others', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(66, 'setting.update', 'super_admin', 'others', '2022-04-02 06:06:48', '2022-04-02 06:06:48'),
(67, 'contact.view', 'super_admin', 'others', '2022-04-02 06:06:48', '2022-04-02 06:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `ad_limit` int(11) NOT NULL,
  `featured_limit` int(11) NOT NULL,
  `customer_support` tinyint(1) NOT NULL,
  `multiple_image` tinyint(1) NOT NULL DEFAULT 1,
  `badge` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `label`, `price`, `ad_limit`, `featured_limit`, `customer_support`, `multiple_image`, `badge`, `recommended`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 10.00, 5, 2, 0, 1, 0, 0, NULL, NULL),
(2, 'Standard', 25.00, 15, 5, 1, 1, 1, 1, NULL, '2022-04-06 01:01:56'),
(3, 'Premium', 50.00, 60, 20, 1, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `author_id`, `title`, `slug`, `image`, `short_description`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Nisi Praesentium Perspiciatis Voluptas Aut Nihil Eos.', 'nisi-praesentium-perspiciatis-voluptas-aut-nihil-eos', 'uploads/post\\lkrxdbmhfXfYEHhSFNXmIHSc7KvMUzJn6w95yH68.jpg', 'Et Quia Deserunt Ea Sit. Vero Tenetur Quasi Eum Mollitia Consequatur Illum Ipsum.', '<p>Et Quia Deserunt Ea Sit. Vero Tenetur Quasi Eum Mollitia Consequatur Illum Ipsum. Unde Pariatur Sed Dignissimos Et Sapiente Sit Dolorem. Perferendis Autem Quasi Dolorem A. Quidem Nihil Voluptate Et Aut Possimus Quasi Omnis. Praesentium Perferendis Dolorem Ad Dignissimos Et. Laudantium Harum Praesentium Quasi Repellendus Aspernatur Impedit Nam. Quis Minima Consequatur Porro Magni Earum Quia Praesentium. Et Soluta Eos Eos Nulla Et Unde. Similique Quam Ratione Porro Veniam Est. Soluta Repellendus Est Recusandae Rerum Ut Occaecati Repellendus In. Rem Et Quo Magni Recusandae. Animi Saepe In Deserunt Consequatur Ut. Saepe Nulla Et Nihil Est. Est Aut Enim Possimus. Eum Saepe Sed Reprehenderit Temporibus A. Et Quis Ea Eaque Fugiat Voluptatum Earum Et. Inventore Molestiae Officiis Mollitia Aut Dolores Et Molestiae. Id Ut Ipsam Voluptatem Qui Quia In Et Sit. Molestias Est Nulla Quod Autem Qui Commodi. Impedit Accusantium Soluta Exercitationem Libero Optio Omnis. Reiciendis Odit Excepturi Dolorem In. Voluptatum Similique Aspernatur Et. Sapiente Sed Dolorem Rerum Totam Perspiciatis. Voluptate Optio Delectus Atque Blanditiis Qui Cupiditate Eligendi. Nesciunt Voluptas Perferendis Facilis Rem Exercitationem Labore Soluta. Nesciunt Et Recusandae Quisquam Cum Esse Distinctio Eveniet Error. Iusto Et Atque Quidem Corporis. Dignissimos Placeat Consequuntur Ut Qui Voluptas Mollitia Rerum Odio. Reiciendis Omnis Illo Fugit Reprehenderit. Ullam Quo Rerum Minus Esse. Alias Nihil Numquam Quia Et Eius Aut Et. Quia Rerum Tempore Voluptatem. Consequatur Sunt Rem Laborum Est. Ipsa Ut Impedit Aspernatur Qui Ipsa Provident Aut. In Facere Et Consequatur Magnam Aut Molestiae. Veniam Ratione Beatae Ipsam Tempora Quo. Cupiditate Tempora Quas Maiores Inventore Qui Dolores. Alias Aliquam Non Pariatur Iure Quae Id Totam. Quod Quidem Excepturi Non Non Voluptatem. Eveniet Et Omnis Provident Cupiditate Quo. Iusto Voluptas Ipsam Velit Ipsum Quisquam. Iure Eaque Veritatis Excepturi. Recusandae Ab Consequatur Consequuntur Magnam Id Adipisci Reiciendis. Nulla Et Pariatur Nisi Qui Est Unde Explicabo. Neque Corporis Aspernatur Et Nisi Ipsa Omnis Aut. Dicta Iste Et Tenetur Illo Et Quo Aspernatur. Id Qui Dolor Voluptas Vitae Ipsam Tenetur. Id Error Non Eos Est Aut. Consequatur Fuga Est Quae Voluptatem Deserunt Magni. Ullam Consequuntur Qui Voluptatem Consequatur Consequatur Repudiandae Debitis. Nemo Quia Rem Repellendus Consequatur Beatae Minima Explicabo. A Explicabo Nulla Suscipit Quibusdam Odit Illum Cupiditate. Quos Quasi Voluptatem Quaerat Ipsam Rerum Eos Occaecati. Eius Aliquam Cum Vitae Temporibus Vel Eligendi Ipsa. Nulla Qui Autem Eveniet Pariatur. Sit Porro Quaerat Id. Qui Commodi Ut In Et Odio Vitae. Est Odit Sit Inventore. Assumenda Assumenda Nisi Enim Laboriosam Mollitia Ut Error. Et Esse Quia Eos. Pariatur Eos Ea Iusto Quis Et Assumenda. Est Dolorem Suscipit Mollitia Culpa Consequatur Similique. Aut Atque Ad Et Porro. Eos Saepe Officia Ex Sed. Expedita Enim Quisquam Officia Exercitationem Autem Voluptas Non. Et Qui Nemo Vitae Natus Fugit Et. Unde Rerum Optio Autem Qui Porro Nihil Autem Neque. Excepturi Veritatis Magnam Quo Saepe Consequatur Numquam Laboriosam. Rerum Soluta Quia Dicta Suscipit Minima Doloremque. Beatae Quia Velit Est Porro Id Dolores. Harum Laboriosam Nemo Corrupti Fugit Sequi Reprehenderit. Sit Tenetur Sint Ipsum Recusandae. Delectus Fugit Quam Ut Ea Recusandae Ratione Vitae Sequi. Asperiores Saepe Beatae Aliquam Rem Perspiciatis Sed Laborum. Necessitatibus Deleniti Rerum Eligendi Laboriosam. Sit Dolore Iure Nihil Debitis Accusamus. Facilis Velit Sit Est. Quia Unde Minima Cum Aut Fugit Assumenda Consequatur. Adipisci Ut Pariatur Et Corrupti Labore. Et Rerum Qui Et Ipsam Nemo Consequatur Voluptas Et. Atque Velit Ipsa In Ut Tempore. Ratione Earum Sequi In Sunt. Facere Natus Non Iure Autem. Est Voluptates Eos Adipisci Explicabo. Et Alias Hic Rerum Labore Dicta Earum Dolorum Error. Sequi Ratione Consequatur Pariatur Amet. Voluptate Sit Minus Non Ab Eligendi. Officiis Et Et Aut Architecto. Quos Omnis Totam Nulla Consectetur Rerum. Optio Eius Autem Ab Error Necessitatibus Ex. Ratione Impedit Maxime Id Aut Quis. Unde Corrupti Dolores Aperiam. Et Eveniet Et Eligendi. Odit Pariatur Ab Et Aspernatur Dolorum Eius Nihil. Rerum Nemo Earum Voluptates Non. Fuga Distinctio Tempore Quaerat. Inventore Aut Magni Magni Quasi. Qui Similique Quaerat Consequatur Sunt Quia Perspiciatis Ea. Tenetur Repellendus Quia Quis Dolorum Doloremque. Voluptatum Iusto Eum Nemo Rerum. Possimus Molestias Quam Ut In Autem. Quod Quis Placeat Sed. Et Amet Vel Eligendi Optio. Autem Qui Animi Aut Nihil. Repellendus Rerum Aut Voluptas. Natus Et Sed Cumque Qui Reprehenderit. Fuga Magni Et Ipsum Ut Sit Sunt. Fuga Harum Qui Nisi Illo Perspiciatis. Aperiam Asperiores Accusantium Laudantium Dignissimos Beatae. Quaerat Fuga Vel Eos. Reprehenderit Deleniti Dicta Nemo Fugiat Quisquam Dolores Sit. Quia Molestiae Quis Ipsum Fugiat Nesciunt. Nisi Illum Enim Sint Ut. Voluptatum Perferendis Nobis Fuga Corrupti Dolorem Fuga. Ullam Eaque Tenetur Voluptas Aut Et Et. Facere Sed Iure Nulla Aut Assumenda Perferendis Eligendi Voluptatem. Dolorum Blanditiis Minus Mollitia Esse Itaque Quia. Itaque Quam Reprehenderit Qui Et. Maiores Recusandae Et Non Laborum Et Praesentium Quisquam. Sit Sint Voluptates Unde Aut Sit Quam Sed Nisi. Earum Veritatis Molestias Eum Impedit Neque Totam. Quam Distinctio Quia Vitae Pariatur Esse Reprehenderit. Dolor Molestiae Error Ducimus Consequatur Ad. Voluptates Pariatur Tempore Iste Aliquam Ut In. Mollitia Dolorem Eos Ipsum Et Nesciunt Qui Consequuntur Ipsa. Nulla Dolores Blanditiis Blanditiis Quasi Dolorem Sit. Ipsum Perferendis Vel Voluptatum Omnis. Pariatur Id Aliquid Facilis Velit Excepturi Perferendis Dolore Eaque. Sint Recusandae Voluptas Magnam Quia Quis. Aliquid Sit Dignissimos Cumque Mollitia. Voluptatem Enim Nemo Ratione Voluptatibus Vel. Eos Quam Aut Quia Temporibus. Voluptatem Est Nemo Non Earum. Explicabo Qui Vero Cumque Aut Incidunt Eos Repudiandae. Optio Id Laboriosam Consequatur Temporibus Error. Nihil Nulla Cupiditate Porro Beatae. Id Earum Iusto Voluptatem Quia Beatae. Maxime Quisquam Et Recusandae Totam Doloremque. Provident Voluptas Minus Sint Sint Eos Dicta Consequatur. Consequatur Ut Eveniet Delectus Consectetur. Aut Ipsum Modi Odit Aperiam. Occaecati Animi Alias Commodi. Voluptas Consequuntur Illum Vitae Nobis Expedita. Officia Voluptatem Id Vitae Dolores Dolore Consectetur Consequatur Ut. Optio Suscipit Consequatur Optio Quod Laborum Suscipit Assumenda. Rerum Libero Sit Exercitationem Sed Quam Nemo. Beatae Aut Recusandae Saepe. Quos Mollitia Quae Ipsum Rerum. Eum Est Voluptatem Assumenda Modi. Omnis Qui Rerum Illum Molestiae Corrupti Facilis Et. Placeat Illum Porro Voluptatem Consectetur Qui Dolores. Pariatur Tenetur Excepturi Vel Suscipit Voluptatem Fugiat Officia. Facere Nemo Qui Aut Sit Quo Officiis. Adipisci Aliquam Voluptatibus Dolores Repudiandae Aut Velit. Adipisci Cupiditate Architecto Autem Voluptas Sed. Voluptas Corrupti Odit Eaque. Alias Tenetur Harum Dolor Ipsam. Quis Vel Et Est Asperiores Id Aut Provident Quam. Earum Repellat Illo Hic. Suscipit Laboriosam Illum Ut Ut. Aut Quaerat Numquam Dicta Harum Excepturi Autem Harum. Ut Nesciunt Magni Quam Autem. Consequuntur Ut Assumenda Ut Aut Est Quia Quia Error. Consequuntur Id Vel Et Velit. Mollitia Quam Porro Unde Aut Iure. Rerum Mollitia Quo Assumenda Itaque Consequuntur Sit. Voluptates Enim Vitae Vel. Necessitatibus Accusamus Laborum Numquam Laborum Autem Qui Ipsa. Dolorum Alias Repellat Maxime Ut. Velit Quae Qui Rerum. Quis Neque Iste Animi Occaecati Quia Repellat. Dolorum Nemo Voluptas Nihil. Et Omnis Accusamus Maiores Dolorum Illo Sit. Sint Numquam Ut Dolore Aut Ut. Dolor Quia Enim Tempora Omnis Magnam Doloribus. Esse Dolor Placeat Dignissimos Impedit Voluptatem A. Omnis Maxime Sed Consequuntur Tenetur In. Ad Dolore Unde Et Modi Nam Est Et. Modi Excepturi Excepturi Quibusdam Consequatur. Voluptates Autem Ut Asperiores Reprehenderit. Cupiditate Reprehenderit Quod Reiciendis Enim. Officia Repellendus Tempore Eos Quisquam Delectus. Mollitia Nihil Quas Molestiae Aut Beatae Sed. Enim Saepe Unde Rerum Rem Atque Id Dolorum. Eius Facilis Quod Provident Tempore Sit Neque Incidunt Magni. Sint Quidem Placeat Magni Dolore Magnam Aut Omnis A. Laboriosam Eius Error Minus. Temporibus Et Fuga Dolorum Consequatur Nam Dignissimos. Nesciunt Laudantium Exercitationem Aut Veritatis Recusandae. Voluptatem Quis Enim Alias Ipsa. Dolor Sed Ad Dolorem Et. Nemo Eos Quo Iure Dicta Voluptatem Veniam. Ut Consequatur Similique Consequuntur Doloribus Eum Dicta. Nam Id Omnis Veniam Placeat Voluptas Vero. Enim Consequatur Voluptate Eaque. Sed Adipisci Corporis Optio Qui Aut Officia. At Aliquam Fugit Quia Voluptas Qui Inventore Modi. Quia Odio Eaque Cum Eveniet Harum Quis. Expedita Voluptate Non Itaque. Et Quaerat Ratione Eum Nisi. Dolores Quaerat Laborum Eum Iusto Ut Et Corporis Quia. Sint Quod Voluptatibus Est Nesciunt. Est Tempora Sapiente Explicabo Maiores Deleniti Ullam Optio Dolor. Dolores Error Dignissimos Ex Est Quia Sit. In Aut Perferendis Iure Voluptas. Repudiandae Eligendi Sunt Ipsam Aperiam Culpa Qui. Quo Non Voluptas Recusandae Quibusdam Dolores Impedit. Dolores A Nihil Dignissimos Quia Nesciunt Esse Et. Aperiam Voluptate Hic Tempora Et Voluptatem Nisi Assumenda. Eligendi Nam Quidem Fuga Et Earum Voluptates. Enim Distinctio Adipisci Ex Id Architecto. Fugiat Dolor At Alias Odio Ut Quis Voluptas. Eius Deserunt Laudantium Provident Quibusdam. Eaque Harum Vero Porro Expedita Minima Magni Voluptatem Nemo. Suscipit Veritatis Quae Iste Voluptas. Eaque Doloremque Soluta Quisquam Qui Et Cum Nihil. Explicabo Occaecati Reprehenderit Est Quibusdam Ex Et. Minus Qui Voluptas Possimus Fugit.</p><p><br>&nbsp;</p>', '2022-04-06 05:00:59', '2022-04-06 05:00:59'),
(2, 4, 1, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', 'uploads/post\\UzZSSFtqZjvTpXKikp0W0QwwZjr9Q64rDwDFMAdb.jpg', 'Lorem Ipsum is simply dummy text', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><p><br>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '2022-05-23 05:22:39', '2022-05-23 05:22:39'),
(3, 5, 1, 'Where can I get some?', 'where-can-i-get-some', 'uploads/post\\fiaEsyfAR6FgD5O8woCPXqNA0sywfIkhddNycGHJ.jpg', 'Contrary to popular belief,', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2022-05-23 05:22:57', '2022-05-23 05:22:57'),
(4, 4, 1, 'Why do we use it?', 'why-do-we-use-it', 'uploads/post\\efx26fBuvqjsdd1d6kphJLKQhb6pEgjoP8a2PUVk.jpg', 'simply random text. It has roots in a', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2022-05-23 05:23:13', '2022-05-23 05:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Quia', 'quia', 'uploads/post/category\\JMELuXCgHhsaFCPC72843HL2LRUnIKUydQgTZCQH.png', '2022-04-06 04:58:21', '2022-04-06 04:58:21'),
(2, 'Nostrum', 'nostrum', 'uploads/post/category\\A1YkEu90GaeIesg23uhI6MlDrMJFGe2iMwQ3Y7yI.png', '2022-04-06 04:59:32', '2022-04-06 04:59:32'),
(4, 'HTML', 'html', NULL, '2022-05-23 05:21:19', '2022-05-23 05:21:19'),
(5, 'CSS', 'css', NULL, '2022-05-23 05:21:22', '2022-05-23 05:21:22'),
(6, 'PHP', 'php', NULL, '2022-05-23 05:21:26', '2022-05-23 05:21:26'),
(7, 'Web Designer', 'web-designer', NULL, '2022-05-23 05:21:45', '2022-05-23 05:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super_admin', '2022-04-02 06:06:47', '2022-04-02 06:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `android` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_script` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_featured_ad_limit` int(11) NOT NULL DEFAULT 3,
  `regular_ads_homepage` tinyint(1) NOT NULL DEFAULT 0,
  `featured_ads_homepage` tinyint(1) NOT NULL DEFAULT 1,
  `customer_email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `ads_admin_approval` tinyint(1) NOT NULL DEFAULT 0,
  `free_ad_limit` int(11) NOT NULL DEFAULT 5,
  `sidebar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `default_layout` tinyint(1) NOT NULL DEFAULT 1,
  `website_loader` tinyint(1) NOT NULL DEFAULT 1,
  `loader_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `map_address`, `facebook`, `twitter`, `instagram`, `youtube`, `linkdin`, `android`, `ios`, `whatsapp`, `logo_image`, `logo_image2`, `favicon_image`, `header_css`, `header_script`, `body_script`, `free_featured_ad_limit`, `regular_ads_homepage`, `featured_ads_homepage`, `customer_email_verification`, `ads_admin_approval`, `free_ad_limit`, `sidebar_color`, `nav_color`, `dark_mode`, `default_layout`, `website_loader`, `loader_image`, `created_at`, `updated_at`, `seo_meta_title`, `seo_meta_description`, `seo_meta_keywords`) VALUES
(1, 'abubazaarinfo@gmail.com', '123-456-789', 'U.S.A Addresses By House Number, Florida', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14607.607282694651!2d90.39911678036226!3d23.75088025342449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b888ad339cb5%3A0x20c70986185ad2ba!2sMogbazar%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1630902791750!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://www.youtube.com', 'https://www.linkedin.com', 'https://play.google.com/store/apps/details?id=com.zakirsoft', 'https://play.google.com/store/apps/details?id=com.zakirsoft', 'https://web.whatsapp.com/', 'uploads/website\\ewEAc56IUshvAPSRAbfzIXqraR6R8zRgmdy0XX5m.png', 'uploads/website\\jHo7VEOwKphc7Y25pN1bhfmKY6pVaKtrLDRNGeGH.png', 'uploads/website\\SXVyKjVYxcd9F7WciHAj9lIIdnyopZoZPSXH2IoX.png', NULL, NULL, NULL, 1, 0, 1, 0, 0, 3, 'rgba(34, 34, 34, 1)', 'rgba(255, 255, 255, 1)', 0, 1, 0, NULL, '2022-04-02 06:06:48', '2022-05-23 05:20:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

CREATE TABLE `social_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `google` tinyint(1) NOT NULL DEFAULT 1,
  `facebook` tinyint(1) NOT NULL DEFAULT 1,
  `twitter` tinyint(1) NOT NULL DEFAULT 1,
  `linkedin` tinyint(1) NOT NULL DEFAULT 1,
  `github` tinyint(1) NOT NULL DEFAULT 1,
  `gitlab` tinyint(1) NOT NULL DEFAULT 1,
  `bitbucket` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`id`, `google`, `facebook`, `twitter`, `linkedin`, `github`, `gitlab`, `bitbucket`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, '2022-04-02 06:06:48', '2022-04-02 06:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'SIM Cards', 'sim-cards', 1, '2022-04-06 01:35:44', '2022-04-06 01:37:32'),
(2, 1, 'Mobile Phones', 'mobile-phones', 1, '2022-04-06 01:35:49', '2022-04-06 01:37:11'),
(3, 1, 'Wearables', 'wearables', 1, '2022-04-06 01:35:59', '2022-04-06 01:37:20'),
(4, 1, 'Mobile Phone Services', 'mobile-phone-services', 1, '2022-04-06 01:36:08', '2022-04-06 01:37:45'),
(5, 2, 'Watches', 'watches', 1, '2022-04-06 01:38:12', '2022-04-06 01:38:12'),
(6, 2, 'Footwear', 'footwear', 1, '2022-04-06 01:38:18', '2022-04-06 01:38:18'),
(7, 2, 'Grooming & Bodycare', 'grooming-bodycare', 1, '2022-04-06 01:38:24', '2022-04-06 01:38:24'),
(8, 2, 'Bags & Accessories', 'bags-accessories', 1, '2022-04-06 01:38:30', '2022-04-06 01:38:30'),
(9, 2, 'Traditional Clothing', 'traditional-clothing', 1, '2022-04-06 01:38:36', '2022-04-06 01:38:36'),
(10, 2, 'Shirts & T-Shirts', 'shirts-t-shirts', 1, '2022-04-06 01:38:42', '2022-04-06 01:38:42'),
(11, 2, 'Wholesale - Bulk', 'wholesale-bulk', 1, '2022-04-06 01:38:54', '2022-04-06 01:38:54'),
(12, 3, 'Motorbikes', 'motorbikes', 1, '2022-04-06 01:39:16', '2022-04-06 01:39:16'),
(13, 3, 'Cars', 'cars', 1, '2022-04-06 01:39:22', '2022-04-06 01:39:22'),
(14, 3, 'Bicycles', 'bicycles', 1, '2022-04-06 01:39:28', '2022-04-06 01:39:28'),
(15, 3, 'Auto Parts & Accessories', 'auto-parts-accessories', 1, '2022-04-06 01:39:37', '2022-04-06 01:39:37'),
(16, 3, 'Auto Services', 'auto-services', 1, '2022-04-06 01:39:43', '2022-04-06 01:39:43'),
(17, 3, 'Water Transport', 'water-transport', 1, '2022-04-06 01:39:50', '2022-04-06 01:39:50'),
(18, 3, 'Buses', 'buses', 1, '2022-04-06 01:39:56', '2022-04-06 01:39:56'),
(19, 4, 'Laptops', 'laptops', 1, '2022-04-06 01:40:09', '2022-04-06 01:40:09'),
(20, 4, 'Desktop Computers', 'desktop-computers', 1, '2022-04-06 01:40:15', '2022-04-06 01:40:15'),
(21, 4, 'TVs', 'tvs', 1, '2022-04-06 01:40:24', '2022-04-06 01:40:24'),
(22, 4, 'Audio & Sound Systems', 'audio-sound-systems', 1, '2022-04-06 01:40:31', '2022-04-06 01:40:31'),
(23, 4, 'Cameras, Camcorders & Accessories', 'cameras-camcorders-accessories', 1, '2022-04-06 01:40:37', '2022-04-06 01:40:37'),
(24, 4, 'Other Electronics', 'other-electronics', 1, '2022-04-06 01:40:43', '2022-04-06 01:40:43'),
(25, 5, 'Grocery', 'grocery', 1, '2022-04-06 01:41:07', '2022-04-06 01:41:07'),
(26, 5, 'Healthcare', 'healthcare', 1, '2022-04-06 01:41:14', '2022-04-06 01:41:14'),
(27, 5, 'Fruits & Vegetables', 'fruits-vegetables', 1, '2022-04-06 01:41:19', '2022-04-06 01:41:19'),
(28, 5, 'Other Essentials', 'other-essentials', 1, '2022-04-06 01:41:25', '2022-04-06 01:41:25'),
(29, 5, 'Meat & Seafood', 'meat-seafood', 1, '2022-04-06 01:41:32', '2022-04-06 01:41:32'),
(30, 6, 'Musical Instruments', 'musical-instruments', 1, '2022-04-06 01:41:41', '2022-04-06 01:41:41'),
(31, 6, 'Fitness & Gym', 'fitness-gym', 1, '2022-04-06 01:41:47', '2022-04-06 01:41:47'),
(32, 6, 'Sports', 'sports', 1, '2022-04-06 01:41:56', '2022-04-06 01:41:56'),
(33, 6, 'Other Hobby, Sport & Kids items', 'other-hobby-sport-kids-items', 1, '2022-04-06 01:42:06', '2022-04-06 01:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `super_admins`
--

CREATE TABLE `super_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_admins`
--

INSERT INTO `super_admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-04-02 06:06:48', '$2y$10$rwN4cgHaDixDZ..bUOoxXOabOfF/c2qVuXd.cM3TI8T7v4DipD5qS', 'uploads/user\\gq2slWOxn0HYo8e8isVvg6QLnGncNle1N4VJs8JP.png', 'dDJTZ5xJYX9HENweQ7iFkR5UjohZKCgagrjgu1CsgRQL7sXZiJYDI3WQYDJa', '2022-04-02 06:06:48', '2022-04-06 03:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `description`, `image`, `stars`, `created_at`, `updated_at`) VALUES
(1, 'Ashis', 'Developer', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 5, '2022-04-19 03:41:14', '2022-04-19 03:41:14'),
(2, 'Emmanuel', 'Developer', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 5, '2022-04-19 03:41:30', '2022-04-19 03:41:30'),
(3, 'Rabbi Al-Mamun', 'Developer', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', NULL, 4, '2022-04-19 03:41:48', '2022-04-19 03:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_page` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `home_page`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-04-02 06:06:48', '2022-04-15 09:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `value`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Bamako'),
(7, 'Africa/Bangui'),
(8, 'Africa/Banjul'),
(9, 'Africa/Bissau'),
(10, 'Africa/Blantyre'),
(11, 'Africa/Brazzaville'),
(12, 'Africa/Bujumbura'),
(13, 'Africa/Cairo'),
(14, 'Africa/Casablanca'),
(15, 'Africa/Ceuta'),
(16, 'Africa/Conakry'),
(17, 'Africa/Dakar'),
(18, 'Africa/Dar_es_Salaam'),
(19, 'Africa/Djibouti'),
(20, 'Africa/Douala'),
(21, 'Africa/El_Aaiun'),
(22, 'Africa/Freetown'),
(23, 'Africa/Gaborone'),
(24, 'Africa/Harare'),
(25, 'Africa/Johannesburg'),
(26, 'Africa/Juba'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Tripoli'),
(51, 'Africa/Tunis'),
(52, 'Africa/Windhoek'),
(53, 'America/Adak'),
(54, 'America/Anchorage'),
(55, 'America/Anguilla'),
(56, 'America/Antigua'),
(57, 'America/Araguaina'),
(58, 'America/Argentina/Buenos_Aires'),
(59, 'America/Argentina/Catamarca'),
(60, 'America/Argentina/Cordoba'),
(61, 'America/Argentina/Jujuy'),
(62, 'America/Argentina/La_Rioja'),
(63, 'America/Argentina/Mendoza'),
(64, 'America/Argentina/Rio_Gallegos'),
(65, 'America/Argentina/Salta'),
(66, 'America/Argentina/San_Juan'),
(67, 'America/Argentina/San_Luis'),
(68, 'America/Argentina/Tucuman'),
(69, 'America/Argentina/Ushuaia'),
(70, 'America/Aruba'),
(71, 'America/Asuncion'),
(72, 'America/Atikokan'),
(73, 'America/Bahia'),
(74, 'America/Bahia_Banderas'),
(75, 'America/Barbados'),
(76, 'America/Belem'),
(77, 'America/Belize'),
(78, 'America/Blanc-Sablon'),
(79, 'America/Boa_Vista'),
(80, 'America/Bogota'),
(81, 'America/Boise'),
(82, 'America/Cambridge_Bay'),
(83, 'America/Campo_Grande'),
(84, 'America/Cancun'),
(85, 'America/Caracas'),
(86, 'America/Cayenne'),
(87, 'America/Cayman'),
(88, 'America/Chicago'),
(89, 'America/Chihuahua'),
(90, 'America/Costa_Rica'),
(91, 'America/Creston'),
(92, 'America/Cuiaba'),
(93, 'America/Curacao'),
(94, 'America/Danmarkshavn'),
(95, 'America/Dawson'),
(96, 'America/Dawson_Creek'),
(97, 'America/Denver'),
(98, 'America/Detroit'),
(99, 'America/Dominica'),
(100, 'America/Edmonton'),
(101, 'America/Eirunepe'),
(102, 'America/El_Salvador'),
(103, 'America/Fort_Nelson'),
(104, 'America/Fortaleza'),
(105, 'America/Glace_Bay'),
(106, 'America/Goose_Bay'),
(107, 'America/Grand_Turk'),
(108, 'America/Grenada'),
(109, 'America/Guadeloupe'),
(110, 'America/Guatemala'),
(111, 'America/Guayaquil'),
(112, 'America/Guyana'),
(113, 'America/Halifax'),
(114, 'America/Havana'),
(115, 'America/Hermosillo'),
(116, 'America/Indiana/Indianapolis'),
(117, 'America/Indiana/Knox'),
(118, 'America/Indiana/Marengo'),
(119, 'America/Indiana/Petersburg'),
(120, 'America/Indiana/Tell_City'),
(121, 'America/Indiana/Vevay'),
(122, 'America/Indiana/Vincennes'),
(123, 'America/Indiana/Winamac'),
(124, 'America/Inuvik'),
(125, 'America/Iqaluit'),
(126, 'America/Jamaica'),
(127, 'America/Juneau'),
(128, 'America/Kentucky/Louisville'),
(129, 'America/Kentucky/Monticello'),
(130, 'America/Kralendijk'),
(131, 'America/La_Paz'),
(132, 'America/Lima'),
(133, 'America/Los_Angeles'),
(134, 'America/Lower_Princes'),
(135, 'America/Maceio'),
(136, 'America/Managua'),
(137, 'America/Manaus'),
(138, 'America/Marigot'),
(139, 'America/Martinique'),
(140, 'America/Matamoros'),
(141, 'America/Mazatlan'),
(142, 'America/Menominee'),
(143, 'America/Merida'),
(144, 'America/Metlakatla'),
(145, 'America/Mexico_City'),
(146, 'America/Miquelon'),
(147, 'America/Moncton'),
(148, 'America/Monterrey'),
(149, 'America/Montevideo'),
(150, 'America/Montserrat'),
(151, 'America/Nassau'),
(152, 'America/New_York'),
(153, 'America/Nipigon'),
(154, 'America/Nome'),
(155, 'America/Noronha'),
(156, 'America/North_Dakota/Beulah'),
(157, 'America/North_Dakota/Center'),
(158, 'America/North_Dakota/New_Salem'),
(159, 'America/Nuuk'),
(160, 'America/Ojinaga'),
(161, 'America/Panama'),
(162, 'America/Pangnirtung'),
(163, 'America/Paramaribo'),
(164, 'America/Phoenix'),
(165, 'America/Port-au-Prince'),
(166, 'America/Port_of_Spain'),
(167, 'America/Porto_Velho'),
(168, 'America/Puerto_Rico'),
(169, 'America/Punta_Arenas'),
(170, 'America/Rainy_River'),
(171, 'America/Rankin_Inlet'),
(172, 'America/Recife'),
(173, 'America/Regina'),
(174, 'America/Resolute'),
(175, 'America/Rio_Branco'),
(176, 'America/Santarem'),
(177, 'America/Santiago'),
(178, 'America/Santo_Domingo'),
(179, 'America/Sao_Paulo'),
(180, 'America/Scoresbysund'),
(181, 'America/Sitka'),
(182, 'America/St_Barthelemy'),
(183, 'America/St_Johns'),
(184, 'America/St_Kitts'),
(185, 'America/St_Lucia'),
(186, 'America/St_Thomas'),
(187, 'America/St_Vincent'),
(188, 'America/Swift_Current'),
(189, 'America/Tegucigalpa'),
(190, 'America/Thule'),
(191, 'America/Thunder_Bay'),
(192, 'America/Tijuana'),
(193, 'America/Toronto'),
(194, 'America/Tortola'),
(195, 'America/Vancouver'),
(196, 'America/Whitehorse'),
(197, 'America/Winnipeg'),
(198, 'America/Yakutat'),
(199, 'America/Yellowknife'),
(200, 'Antarctica/Casey'),
(201, 'Antarctica/Davis'),
(202, 'Antarctica/DumontDUrville'),
(203, 'Antarctica/Macquarie'),
(204, 'Antarctica/Mawson'),
(205, 'Antarctica/McMurdo'),
(206, 'Antarctica/Palmer'),
(207, 'Antarctica/Rothera'),
(208, 'Antarctica/Syowa'),
(209, 'Antarctica/Troll'),
(210, 'Antarctica/Vostok'),
(211, 'Arctic/Longyearbyen'),
(212, 'Asia/Aden'),
(213, 'Asia/Almaty'),
(214, 'Asia/Amman'),
(215, 'Asia/Anadyr'),
(216, 'Asia/Aqtau'),
(217, 'Asia/Aqtobe'),
(218, 'Asia/Ashgabat'),
(219, 'Asia/Atyrau'),
(220, 'Asia/Baghdad'),
(221, 'Asia/Bahrain'),
(222, 'Asia/Baku'),
(223, 'Asia/Bangkok'),
(224, 'Asia/Barnaul'),
(225, 'Asia/Beirut'),
(226, 'Asia/Bishkek'),
(227, 'Asia/Brunei'),
(228, 'Asia/Chita'),
(229, 'Asia/Choibalsan'),
(230, 'Asia/Colombo'),
(231, 'Asia/Damascus'),
(232, 'Asia/Dhaka'),
(233, 'Asia/Dili'),
(234, 'Asia/Dubai'),
(235, 'Asia/Dushanbe'),
(236, 'Asia/Famagusta'),
(237, 'Asia/Gaza'),
(238, 'Asia/Hebron'),
(239, 'Asia/Ho_Chi_Minh'),
(240, 'Asia/Hong_Kong'),
(241, 'Asia/Hovd'),
(242, 'Asia/Irkutsk'),
(243, 'Asia/Jakarta'),
(244, 'Asia/Jayapura'),
(245, 'Asia/Jerusalem'),
(246, 'Asia/Kabul'),
(247, 'Asia/Kamchatka'),
(248, 'Asia/Karachi'),
(249, 'Asia/Kathmandu'),
(250, 'Asia/Khandyga'),
(251, 'Asia/Kolkata'),
(252, 'Asia/Krasnoyarsk'),
(253, 'Asia/Kuala_Lumpur'),
(254, 'Asia/Kuching'),
(255, 'Asia/Kuwait'),
(256, 'Asia/Macau'),
(257, 'Asia/Magadan'),
(258, 'Asia/Makassar'),
(259, 'Asia/Manila'),
(260, 'Asia/Muscat'),
(261, 'Asia/Nicosia'),
(262, 'Asia/Novokuznetsk'),
(263, 'Asia/Novosibirsk'),
(264, 'Asia/Omsk'),
(265, 'Asia/Oral'),
(266, 'Asia/Phnom_Penh'),
(267, 'Asia/Pontianak'),
(268, 'Asia/Pyongyang'),
(269, 'Asia/Qatar'),
(270, 'Asia/Qostanay'),
(271, 'Asia/Qyzylorda'),
(272, 'Asia/Riyadh'),
(273, 'Asia/Sakhalin'),
(274, 'Asia/Samarkand'),
(275, 'Asia/Seoul'),
(276, 'Asia/Shanghai'),
(277, 'Asia/Singapore'),
(278, 'Asia/Srednekolymsk'),
(279, 'Asia/Taipei'),
(280, 'Asia/Tashkent'),
(281, 'Asia/Tbilisi'),
(282, 'Asia/Tehran'),
(283, 'Asia/Thimphu'),
(284, 'Asia/Tokyo'),
(285, 'Asia/Tomsk'),
(286, 'Asia/Ulaanbaatar'),
(287, 'Asia/Urumqi'),
(288, 'Asia/Ust-Nera'),
(289, 'Asia/Vientiane'),
(290, 'Asia/Vladivostok'),
(291, 'Asia/Yakutsk'),
(292, 'Asia/Yangon'),
(293, 'Asia/Yekaterinburg'),
(294, 'Asia/Yerevan'),
(295, 'Atlantic/Azores'),
(296, 'Atlantic/Bermuda'),
(297, 'Atlantic/Canary'),
(298, 'Atlantic/Cape_Verde'),
(299, 'Atlantic/Faroe'),
(300, 'Atlantic/Madeira'),
(301, 'Atlantic/Reykjavik'),
(302, 'Atlantic/South_Georgia'),
(303, 'Atlantic/St_Helena'),
(304, 'Atlantic/Stanley'),
(305, 'Australia/Adelaide'),
(306, 'Australia/Brisbane'),
(307, 'Australia/Broken_Hill'),
(308, 'Australia/Darwin'),
(309, 'Australia/Eucla'),
(310, 'Australia/Hobart'),
(311, 'Australia/Lindeman'),
(312, 'Australia/Lord_Howe'),
(313, 'Australia/Melbourne'),
(314, 'Australia/Perth'),
(315, 'Australia/Sydney'),
(316, 'Europe/Amsterdam'),
(317, 'Europe/Andorra'),
(318, 'Europe/Astrakhan'),
(319, 'Europe/Athens'),
(320, 'Europe/Belgrade'),
(321, 'Europe/Berlin'),
(322, 'Europe/Bratislava'),
(323, 'Europe/Brussels'),
(324, 'Europe/Bucharest'),
(325, 'Europe/Budapest'),
(326, 'Europe/Busingen'),
(327, 'Europe/Chisinau'),
(328, 'Europe/Copenhagen'),
(329, 'Europe/Dublin'),
(330, 'Europe/Gibraltar'),
(331, 'Europe/Guernsey'),
(332, 'Europe/Helsinki'),
(333, 'Europe/Isle_of_Man'),
(334, 'Europe/Istanbul'),
(335, 'Europe/Jersey'),
(336, 'Europe/Kaliningrad'),
(337, 'Europe/Kiev'),
(338, 'Europe/Kirov'),
(339, 'Europe/Lisbon'),
(340, 'Europe/Ljubljana'),
(341, 'Europe/London'),
(342, 'Europe/Luxembourg'),
(343, 'Europe/Madrid'),
(344, 'Europe/Malta'),
(345, 'Europe/Mariehamn'),
(346, 'Europe/Minsk'),
(347, 'Europe/Monaco'),
(348, 'Europe/Moscow'),
(349, 'Europe/Oslo'),
(350, 'Europe/Paris'),
(351, 'Europe/Podgorica'),
(352, 'Europe/Prague'),
(353, 'Europe/Riga'),
(354, 'Europe/Rome'),
(355, 'Europe/Samara'),
(356, 'Europe/San_Marino'),
(357, 'Europe/Sarajevo'),
(358, 'Europe/Saratov'),
(359, 'Europe/Simferopol'),
(360, 'Europe/Skopje'),
(361, 'Europe/Sofia'),
(362, 'Europe/Stockholm'),
(363, 'Europe/Tallinn'),
(364, 'Europe/Tirane'),
(365, 'Europe/Ulyanovsk'),
(366, 'Europe/Uzhgorod'),
(367, 'Europe/Vaduz'),
(368, 'Europe/Vatican'),
(369, 'Europe/Vienna'),
(370, 'Europe/Vilnius'),
(371, 'Europe/Volgograd'),
(372, 'Europe/Warsaw'),
(373, 'Europe/Zagreb'),
(374, 'Europe/Zaporozhye'),
(375, 'Europe/Zurich'),
(376, 'Indian/Antananarivo'),
(377, 'Indian/Chagos'),
(378, 'Indian/Christmas'),
(379, 'Indian/Cocos'),
(380, 'Indian/Comoro'),
(381, 'Indian/Kerguelen'),
(382, 'Indian/Mahe'),
(383, 'Indian/Maldives'),
(384, 'Indian/Mauritius'),
(385, 'Indian/Mayotte'),
(386, 'Indian/Reunion'),
(387, 'Pacific/Apia'),
(388, 'Pacific/Auckland'),
(389, 'Pacific/Bougainville'),
(390, 'Pacific/Chatham'),
(391, 'Pacific/Chuuk'),
(392, 'Pacific/Easter'),
(393, 'Pacific/Efate'),
(394, 'Pacific/Fakaofo'),
(395, 'Pacific/Fiji'),
(396, 'Pacific/Funafuti'),
(397, 'Pacific/Galapagos'),
(398, 'Pacific/Gambier'),
(399, 'Pacific/Guadalcanal'),
(400, 'Pacific/Guam'),
(401, 'Pacific/Honolulu'),
(402, 'Pacific/Kanton'),
(403, 'Pacific/Kiritimati'),
(404, 'Pacific/Kosrae'),
(405, 'Pacific/Kwajalein'),
(406, 'Pacific/Majuro'),
(407, 'Pacific/Marquesas'),
(408, 'Pacific/Midway'),
(409, 'Pacific/Nauru'),
(410, 'Pacific/Niue'),
(411, 'Pacific/Norfolk'),
(412, 'Pacific/Noumea'),
(413, 'Pacific/Pago_Pago'),
(414, 'Pacific/Palau'),
(415, 'Pacific/Pitcairn'),
(416, 'Pacific/Pohnpei'),
(417, 'Pacific/Port_Moresby'),
(418, 'Pacific/Rarotonga'),
(419, 'Pacific/Saipan'),
(420, 'Pacific/Tahiti'),
(421, 'Pacific/Tarawa'),
(422, 'Pacific/Tongatapu'),
(423, 'Pacific/Wake'),
(424, 'Pacific/Wallis'),
(425, 'UTC');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', '2022-04-06 01:50:50', '2022-04-06 01:50:50'),
(2, 1, 'Chattogram', '2022-04-06 01:50:55', '2022-04-06 01:50:55'),
(3, 1, 'Sylhet', '2022-04-06 01:50:58', '2022-04-06 01:50:58'),
(4, 1, 'Dhaka Division', '2022-04-06 01:51:03', '2022-04-06 01:51:03'),
(5, 5, 'Khulna', '2022-04-06 01:51:08', '2022-04-06 01:51:08'),
(6, 5, 'Chattogram Division', '2022-04-06 01:51:12', '2022-04-06 01:51:12'),
(7, 4, 'Barishal', '2022-04-06 01:51:17', '2022-04-06 01:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `ad_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `featured_limit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_support` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_image` tinyint(1) NOT NULL DEFAULT 1,
  `badge` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `customer_id`, `ad_limit`, `featured_limit`, `customer_support`, `multiple_image`, `badge`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 1, 0, '2022-04-06 01:43:10', '2022-04-06 03:12:37'),
(2, 2, 2, 0, 0, 1, 0, '2022-04-06 03:00:28', '2022-04-06 03:08:55'),
(3, 3, 1, 0, 0, 1, 0, '2022-04-11 01:58:47', '2022-04-11 03:11:28'),
(4, 4, 1, 0, 0, 1, 0, '2022-05-23 07:24:29', '2022-05-23 09:08:54');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_ads`
--
ALTER TABLE `admin_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_customer_id_foreign` (`customer_id`),
  ADD KEY `ads_category_id_foreign` (`category_id`),
  ADD KEY `ads_brand_id_foreign` (`brand_id`),
  ADD KEY `ads_city_id_foreign` (`city_id`),
  ADD KEY `ads_town_id_foreign` (`town_id`);

--
-- Indexes for table `ad_features`
--
ALTER TABLE `ad_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ad_features_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_name_unique` (`name`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_username_unique` (`username`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_web_unique` (`web`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emails_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faq_categories_name_unique` (`name`),
  ADD UNIQUE KEY `faq_categories_slug_unique` (`slug`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD UNIQUE KEY `languages_icon_unique` (`icon`);

--
-- Indexes for table `messengers`
--
ALTER TABLE `messengers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `module_settings`
--
ALTER TABLE `module_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_label_unique` (`label`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_settings`
--
ALTER TABLE `social_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `super_admins`
--
ALTER TABLE `super_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `super_admins_email_unique` (`email`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `towns_name_unique` (`name`),
  ADD KEY `towns_city_id_foreign` (`city_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_plan_id_foreign` (`plan_id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_plans_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_ad_id_foreign` (`ad_id`),
  ADD KEY `wishlists_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_ads`
--
ALTER TABLE `admin_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ad_features`
--
ALTER TABLE `ad_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ad_galleries`
--
ALTER TABLE `ad_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messengers`
--
ALTER TABLE `messengers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `module_settings`
--
ALTER TABLE `module_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_settings`
--
ALTER TABLE `social_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `super_admins`
--
ALTER TABLE `super_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ads_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ad_features`
--
ALTER TABLE `ad_features`
  ADD CONSTRAINT `ad_features_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `super_admins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `towns`
--
ALTER TABLE `towns`
  ADD CONSTRAINT `towns_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD CONSTRAINT `user_plans_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
