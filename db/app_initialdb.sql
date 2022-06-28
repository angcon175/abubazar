# ************************************************************
# Sequel Ace SQL dump
# Version 3038
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.23)
# Database: adlisting
# Generation Time: 2022-04-02 12:07:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ad_features
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ad_features`;

CREATE TABLE `ad_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ad_features_ad_id_foreign` (`ad_id`),
  CONSTRAINT `ad_features_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ad_galleries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ad_galleries`;

CREATE TABLE `ad_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table ads
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ads`;

CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `subcategory_id` bigint unsigned DEFAULT NULL,
  `brand_id` bigint unsigned NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `town_id` bigint unsigned NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` enum('used','new') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authenticity` enum('original','refurbished') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negotiable` tinyint(1) NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','expired','pending','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `total_reports` int NOT NULL DEFAULT '0',
  `total_views` int NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `drafted_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ads_customer_id_foreign` (`customer_id`),
  KEY `ads_category_id_foreign` (`category_id`),
  KEY `ads_brand_id_foreign` (`brand_id`),
  KEY `ads_city_id_foreign` (`city_id`),
  KEY `ads_town_id_foreign` (`town_id`),
  CONSTRAINT `ads_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ads_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ads_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ads_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ads_town_id_foreign` FOREIGN KEY (`town_id`) REFERENCES `towns` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table blog_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_comments`;

CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comments_post_id_foreign` (`post_id`),
  CONSTRAINT `blog_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table cms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cms`;

CREATE TABLE `cms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
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
  `terms_body` text COLLATE utf8mb4_unicode_ci,
  `about_video_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_body` text COLLATE utf8mb4_unicode_ci,
  `privacy_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_body` text COLLATE utf8mb4_unicode_ci,
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
  `posting_rules_body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `cms` WRITE;
/*!40000 ALTER TABLE `cms` DISABLE KEYS */;

INSERT INTO `cms` (`id`, `index1_main_banner`, `index1_counter_background`, `index1_mobile_app_banner`, `index2_search_filter_background`, `index2_get_membership_background`, `index3_search_filter_background`, `index1_title`, `index3_title`, `index1_description`, `download_app`, `newsletter_content`, `membership_content`, `create_account`, `post_ads`, `start_earning`, `terms_background`, `terms_body`, `about_video_thumb`, `about_background`, `about_body`, `privacy_background`, `privacy_body`, `contact_background`, `get_membership_background`, `get_membership_image`, `pricing_plan_background`, `faq_background`, `ads_background`, `blog_background`, `dashboard_messenger_background`, `dashboard_favorite_ads_background`, `faq_content`, `manage_ads_content`, `chat_content`, `verified_user_content`, `dashboard_overview_background`, `dashboard_post_ads_background`, `dashboard_my_ads_background`, `dashboard_plan_background`, `dashboard_account_setting_background`, `posting_rules_background`, `posting_rules_body`, `created_at`, `updated_at`)
VALUES
	(1,NULL,NULL,NULL,NULL,NULL,NULL,'Buy, Sell And Find Just About Anythink.','The Largest Classified Ads Listing In The World.','Buy And Sell Everything From Used Cars To Mobile Phones And Computers, Or Search For Property And More All Over The World!','Sed Luctus Nibh At Consectetur Tempor. Proin Et Ipsum Tincidunt, Maximus Turpis Id, Mollis Lacus. Maecenas Nec Risus A Urna Sollicitudin Aliquet. Maecenas Pretium Tristique Sapien','Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis.','Vestibulum Consectetur Placerat Tellus. Sed Faucibus Fermentum Purus, At Facilisis Neque Auctor.','Vestibulum Ante Ipsum Primis In Faucibus Orci Luctus Et Ultrices Posuere Cubilia Curae. Donec Non Lorem Erat. Sed Vitae Vene.','Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.','Vestibulum Quis Consectetur Est. Fusce Hendrerit Neque At Facilisis Facilisis. Praesent A Pretium Elit. Nulla Aliquam Puru.',NULL,'<p>Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.</p>','https://youtu.be/s7wmiS2mSXY',NULL,'Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi.',NULL,'<p>Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Praesent Finibus Dictum Nisl Sit Amet Vulputate. Fusce A Metus Eu Velit Posuere Semper A Bibendum Ante. Donec Eu Tellus Dapibus, Semper Orci Eget, Commodo Lacu Praesent Ullamcorper.','Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Etiam Commodo Vel Ligula.','Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.','Class Aptent Taciti Sociosqu Ad Litora Torquent Per Conubia Nostra, Per Inceptos Himenaeos.',NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem Ipsum Dolor Sit Amet, Consectetur Adipiscing Elit. Mauris Eu Aliquet Odio. Nulla Pretium Congue Eros, Nec Rhoncus Mi<p>','2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `cms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table currencies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `symbol_position`, `created_at`, `updated_at`)
VALUES
	(1,'United State Dollar','USD','$','left','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(2,'Euro','EUR','€','left','2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_username_unique` (`username`),
  UNIQUE KEY `customers_email_unique` (`email`),
  UNIQUE KEY `customers_phone_unique` (`phone`),
  UNIQUE KEY `customers_web_unique` (`web`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table emails
# ------------------------------------------------------------

DROP TABLE IF EXISTS `emails`;

CREATE TABLE `emails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table faq_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faq_categories`;

CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faq_categories_name_unique` (`name`),
  UNIQUE KEY `faq_categories_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `icon`, `order`, `created_at`, `updated_at`)
VALUES
	(1,'Test','test','fas fa-italic',0,'2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table faqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `faq_category_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `faqs_faq_category_id_foreign` (`faq_category_id`),
  CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_unique` (`code`),
  UNIQUE KEY `languages_icon_unique` (`icon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `direction`, `created_at`, `updated_at`)
VALUES
	(1,'English','en','flag-icon-gb','ltr','2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table messengers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messengers`;

CREATE TABLE `messengers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_id` bigint unsigned NOT NULL,
  `to_id` bigint unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_super_admins_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2019_08_19_000000_create_failed_jobs_table',1),
	(4,'2020_11_12_184107_create_permission_tables',1),
	(5,'2020_12_20_161857_create_brands_table',1),
	(6,'2020_12_23_122556_create_contacts_table',1),
	(7,'2021_02_17_110211_create_testimonials_table',1),
	(8,'2021_07_07_125145_create_themes_table',1),
	(9,'2021_07_13_121453_create_cities_table',1),
	(10,'2021_07_13_121502_create_towns_table',1),
	(11,'2021_08_21_174451_create_customers_table',1),
	(12,'2021_08_22_051131_create_categories_table',1),
	(13,'2021_08_22_051134_create_sub_categories_table',1),
	(14,'2021_08_22_051135_create_ads_table',1),
	(15,'2021_08_22_051198_create_post_categories_table',1),
	(16,'2021_08_22_051199_create_posts_table',1),
	(17,'2021_08_23_115402_create_settings_table',1),
	(18,'2021_08_25_061331_create_languages_table',1),
	(19,'2021_09_04_105120_create_blog_comments_table',1),
	(20,'2021_09_05_120235_create_ad_features_table',1),
	(21,'2021_09_05_120248_create_ad_galleries_table',1),
	(22,'2021_09_19_141812_create_plans_table',1),
	(23,'2021_09_19_152529_create_faq_categories_table',1),
	(24,'2021_11_13_114825_create_messengers_table',1),
	(25,'2021_11_14_093821_create_notifications_table',1),
	(26,'2021_11_14_095846_create_jobs_table',1),
	(27,'2021_11_15_112417_create_user_plans_table',1),
	(28,'2021_11_15_112949_create_transactions_table',1),
	(29,'2021_11_18_102445_add_fields_to_settings_table',1),
	(30,'2021_11_23_112531_add_fields_to_customers_table',1),
	(31,'2021_12_14_142236_create_emails_table',1),
	(32,'2021_12_14_142427_create_orders_table',1),
	(33,'2021_12_15_161624_create_module_settings_table',1),
	(34,'2021_12_18_134032_add_seo_fields_to_settings_table',1),
	(35,'2021_12_18_141044_add_socialite_column_to_customers_table',1),
	(36,'2021_12_18_153602_create_social_settings_table',1),
	(37,'2021_12_19_101413_create_cms_table',1),
	(38,'2021_12_19_113555_remove_fields_from_settings_table',1),
	(39,'2021_12_19_115130_create_payment_settings_table',1),
	(40,'2021_12_20_104309_add_fields_to_cms_table',1),
	(41,'2021_12_21_105713_create_faqs_table',1),
	(42,'2022_02_06_123859_add_token_to_customers_table',1),
	(43,'2022_02_16_152704_add_loader_fields_to_settings_table',1),
	(44,'2022_03_01_110707_create_timezones_table',1),
	(45,'2022_03_05_125615_create_currencies_table',1),
	(46,'2022_03_08_110749_add_website_configuration_to_settings_table',1),
	(47,'2022_07_14_151623_create_wishlists_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`)
VALUES
	(1,'App\\Models\\SuperAdmin',1);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table module_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `module_settings`;

CREATE TABLE `module_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog` tinyint(1) NOT NULL DEFAULT '1',
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `language` tinyint(1) NOT NULL DEFAULT '1',
  `contact` tinyint(1) NOT NULL DEFAULT '1',
  `faq` tinyint(1) NOT NULL DEFAULT '1',
  `testimonial` tinyint(1) NOT NULL DEFAULT '1',
  `price_plan` tinyint(1) NOT NULL DEFAULT '1',
  `appearance` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `module_settings` WRITE;
/*!40000 ALTER TABLE `module_settings` DISABLE KEYS */;

INSERT INTO `module_settings` (`id`, `blog`, `newsletter`, `language`, `contact`, `faq`, `testimonial`, `price_plan`, `appearance`)
VALUES
	(1,1,1,1,1,1,1,1,1);

/*!40000 ALTER TABLE `module_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table payment_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payment_settings`;

CREATE TABLE `payment_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `paypal` tinyint(1) NOT NULL DEFAULT '1',
  `paypal_live_mode` tinyint(1) NOT NULL DEFAULT '0',
  `stripe` tinyint(1) NOT NULL DEFAULT '1',
  `razorpay` tinyint(1) NOT NULL DEFAULT '1',
  `paystack` tinyint(1) NOT NULL DEFAULT '1',
  `ssl_commerz` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;

INSERT INTO `payment_settings` (`id`, `paypal`, `paypal_live_mode`, `stripe`, `razorpay`, `paystack`, `ssl_commerz`, `created_at`, `updated_at`)
VALUES
	(1,0,0,0,0,0,0,NULL,NULL);

/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin.create','super_admin','admin','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(2,'admin.view','super_admin','admin','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(3,'admin.update','super_admin','admin','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(4,'admin.delete','super_admin','admin','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(5,'role.create','super_admin','role','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(6,'role.view','super_admin','role','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(7,'role.update','super_admin','role','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(8,'role.delete','super_admin','role','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(9,'ad.create','super_admin','ad','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(10,'ad.view','super_admin','ad','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(11,'ad.update','super_admin','ad','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(12,'ad.delete','super_admin','ad','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(13,'category.create','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(14,'category.view','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(15,'category.update','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(16,'category.delete','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(17,'subcategory.create','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(18,'subcategory.view','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(19,'subcategory.update','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(20,'subcategory.delete','super_admin','category','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(21,'newsletter.view','super_admin','newsletter','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(22,'newsletter.mailsend','super_admin','newsletter','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(23,'newsletter.delete','super_admin','newsletter','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(24,'brand.create','super_admin','brand','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(25,'brand.view','super_admin','brand','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(26,'brand.update','super_admin','brand','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(27,'brand.delete','super_admin','brand','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(28,'city.create','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(29,'city.view','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(30,'city.update','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(31,'city.delete','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(32,'town.create','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(33,'town.view','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(34,'town.update','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(35,'town.delete','super_admin','Location','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(36,'plan.create','super_admin','plan','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(37,'plan.view','super_admin','plan','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(38,'plan.update','super_admin','plan','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(39,'plan.delete','super_admin','plan','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(40,'postcategory.create','super_admin','Blog','2022-04-02 12:06:47','2022-04-02 12:06:47'),
	(41,'postcategory.view','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(42,'postcategory.update','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(43,'postcategory.delete','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(44,'post.create','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(45,'post.view','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(46,'post.update','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(47,'post.delete','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(48,'tag.create','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(49,'tag.view','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(50,'tag.update','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(51,'tag.delete','super_admin','Blog','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(52,'testimonial.create','super_admin','testimonial','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(53,'testimonial.view','super_admin','testimonial','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(54,'testimonial.update','super_admin','testimonial','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(55,'testimonial.delete','super_admin','testimonial','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(56,'faqcategory.create','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(57,'faqcategory.view','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(58,'faqcategory.update','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(59,'faqcategory.delete','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(60,'faq.create','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(61,'faq.view','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(62,'faq.update','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(63,'faq.delete','super_admin','faq','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(64,'customer.view','super_admin','others','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(65,'setting.view','super_admin','others','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(66,'setting.update','super_admin','others','2022-04-02 12:06:48','2022-04-02 12:06:48'),
	(67,'contact.view','super_admin','others','2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table plans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `plans`;

CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `ad_limit` int NOT NULL,
  `featured_limit` int NOT NULL,
  `customer_support` tinyint(1) NOT NULL,
  `multiple_image` tinyint(1) NOT NULL DEFAULT '1',
  `badge` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_label_unique` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;

INSERT INTO `plans` (`id`, `label`, `price`, `ad_limit`, `featured_limit`, `customer_support`, `multiple_image`, `badge`, `recommended`, `created_at`, `updated_at`)
VALUES
	(1,'Basic',10.00,5,2,0,1,0,0,NULL,NULL),
	(2,'Standard',20.00,15,5,1,1,1,1,NULL,NULL),
	(3,'Premium',50.00,60,20,1,1,1,0,NULL,NULL);

/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_categories`;

CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`),
  KEY `posts_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `super_admins` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1),
	(67,1);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'superadmin','super_admin','2022-04-02 12:06:47','2022-04-02 12:06:47');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_address` longtext COLLATE utf8mb4_unicode_ci,
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
  `free_featured_ad_limit` int NOT NULL DEFAULT '3',
  `regular_ads_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `featured_ads_homepage` tinyint(1) NOT NULL DEFAULT '1',
  `customer_email_verification` tinyint(1) NOT NULL DEFAULT '0',
  `ads_admin_approval` tinyint(1) NOT NULL DEFAULT '0',
  `free_ad_limit` int NOT NULL DEFAULT '5',
  `sidebar_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dark_mode` tinyint(1) NOT NULL DEFAULT '0',
  `default_layout` tinyint(1) NOT NULL DEFAULT '1',
  `website_loader` tinyint(1) NOT NULL DEFAULT '1',
  `loader_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_meta_description` text COLLATE utf8mb4_unicode_ci,
  `seo_meta_keywords` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `map_address`, `facebook`, `twitter`, `instagram`, `youtube`, `linkdin`, `android`, `ios`, `whatsapp`, `logo_image`, `logo_image2`, `favicon_image`, `header_css`, `header_script`, `body_script`, `free_featured_ad_limit`, `regular_ads_homepage`, `featured_ads_homepage`, `customer_email_verification`, `ads_admin_approval`, `free_ad_limit`, `sidebar_color`, `nav_color`, `dark_mode`, `default_layout`, `website_loader`, `loader_image`, `created_at`, `updated_at`, `seo_meta_title`, `seo_meta_description`, `seo_meta_keywords`)
VALUES
	(1,'example@mail.com','634-564-564','U.S.A addresses by house number, Florida','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14607.607282694651!2d90.39911678036226!3d23.75088025342449!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b888ad339cb5%3A0x20c70986185ad2ba!2sMogbazar%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1630902791750!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>','https://facebook.com/zakirsoft','https://twitter.com/zakirsoft','https://instagram.com/zakirsoft','https://www.youtube.com/channel/UCMSp_qPtYbaUMjEICDLhDCQ','https://www.linkedin.com/in/zakirsoft','https://play.google.com/store/apps/details?id=com.zakirsoft','https://play.google.com/store/apps/details?id=com.zakirsoft','https://web.whatsapp.com/','frontend/images/logo.png','frontend/images/logo-white.png','frontend/images/icon/notepad.png',NULL,NULL,NULL,1,0,1,0,0,3,NULL,NULL,0,1,0,NULL,'2022-04-02 12:06:48','2022-04-02 12:06:48',NULL,NULL,NULL);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table social_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `social_settings`;

CREATE TABLE `social_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `google` tinyint(1) NOT NULL DEFAULT '1',
  `facebook` tinyint(1) NOT NULL DEFAULT '1',
  `twitter` tinyint(1) NOT NULL DEFAULT '1',
  `linkedin` tinyint(1) NOT NULL DEFAULT '1',
  `github` tinyint(1) NOT NULL DEFAULT '1',
  `gitlab` tinyint(1) NOT NULL DEFAULT '1',
  `bitbucket` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `social_settings` WRITE;
/*!40000 ALTER TABLE `social_settings` DISABLE KEYS */;

INSERT INTO `social_settings` (`id`, `google`, `facebook`, `twitter`, `linkedin`, `github`, `gitlab`, `bitbucket`, `created_at`, `updated_at`)
VALUES
	(1,0,0,0,0,0,0,0,'2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `social_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sub_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sub_categories`;

CREATE TABLE `sub_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_category_id_foreign` (`category_id`),
  CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table super_admins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `super_admins`;

CREATE TABLE `super_admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend/image/default.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `super_admins_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `super_admins` WRITE;
/*!40000 ALTER TABLE `super_admins` DISABLE KEYS */;

INSERT INTO `super_admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Admin','admin@mail.com','2022-04-02 12:06:48','$2y$10$Sg5MNPS.NLr8tsMrgMED8.w7P50NB0MkB5wkYh27mFDKFg9hlfKoC','backend/image/default.png','cPGiBltAAQ','2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `super_admins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table testimonials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `testimonials`;

CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table themes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `themes`;

CREATE TABLE `themes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `home_page` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;

INSERT INTO `themes` (`id`, `home_page`, `created_at`, `updated_at`)
VALUES
	(1,1,'2022-04-02 12:06:48','2022-04-02 12:06:48');

/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table timezones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `timezones`;

CREATE TABLE `timezones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `timezones` WRITE;
/*!40000 ALTER TABLE `timezones` DISABLE KEYS */;

INSERT INTO `timezones` (`id`, `value`)
VALUES
	(1,'Africa/Abidjan'),
	(2,'Africa/Accra'),
	(3,'Africa/Addis_Ababa'),
	(4,'Africa/Algiers'),
	(5,'Africa/Asmara'),
	(6,'Africa/Bamako'),
	(7,'Africa/Bangui'),
	(8,'Africa/Banjul'),
	(9,'Africa/Bissau'),
	(10,'Africa/Blantyre'),
	(11,'Africa/Brazzaville'),
	(12,'Africa/Bujumbura'),
	(13,'Africa/Cairo'),
	(14,'Africa/Casablanca'),
	(15,'Africa/Ceuta'),
	(16,'Africa/Conakry'),
	(17,'Africa/Dakar'),
	(18,'Africa/Dar_es_Salaam'),
	(19,'Africa/Djibouti'),
	(20,'Africa/Douala'),
	(21,'Africa/El_Aaiun'),
	(22,'Africa/Freetown'),
	(23,'Africa/Gaborone'),
	(24,'Africa/Harare'),
	(25,'Africa/Johannesburg'),
	(26,'Africa/Juba'),
	(27,'Africa/Kampala'),
	(28,'Africa/Khartoum'),
	(29,'Africa/Kigali'),
	(30,'Africa/Kinshasa'),
	(31,'Africa/Lagos'),
	(32,'Africa/Libreville'),
	(33,'Africa/Lome'),
	(34,'Africa/Luanda'),
	(35,'Africa/Lubumbashi'),
	(36,'Africa/Lusaka'),
	(37,'Africa/Malabo'),
	(38,'Africa/Maputo'),
	(39,'Africa/Maseru'),
	(40,'Africa/Mbabane'),
	(41,'Africa/Mogadishu'),
	(42,'Africa/Monrovia'),
	(43,'Africa/Nairobi'),
	(44,'Africa/Ndjamena'),
	(45,'Africa/Niamey'),
	(46,'Africa/Nouakchott'),
	(47,'Africa/Ouagadougou'),
	(48,'Africa/Porto-Novo'),
	(49,'Africa/Sao_Tome'),
	(50,'Africa/Tripoli'),
	(51,'Africa/Tunis'),
	(52,'Africa/Windhoek'),
	(53,'America/Adak'),
	(54,'America/Anchorage'),
	(55,'America/Anguilla'),
	(56,'America/Antigua'),
	(57,'America/Araguaina'),
	(58,'America/Argentina/Buenos_Aires'),
	(59,'America/Argentina/Catamarca'),
	(60,'America/Argentina/Cordoba'),
	(61,'America/Argentina/Jujuy'),
	(62,'America/Argentina/La_Rioja'),
	(63,'America/Argentina/Mendoza'),
	(64,'America/Argentina/Rio_Gallegos'),
	(65,'America/Argentina/Salta'),
	(66,'America/Argentina/San_Juan'),
	(67,'America/Argentina/San_Luis'),
	(68,'America/Argentina/Tucuman'),
	(69,'America/Argentina/Ushuaia'),
	(70,'America/Aruba'),
	(71,'America/Asuncion'),
	(72,'America/Atikokan'),
	(73,'America/Bahia'),
	(74,'America/Bahia_Banderas'),
	(75,'America/Barbados'),
	(76,'America/Belem'),
	(77,'America/Belize'),
	(78,'America/Blanc-Sablon'),
	(79,'America/Boa_Vista'),
	(80,'America/Bogota'),
	(81,'America/Boise'),
	(82,'America/Cambridge_Bay'),
	(83,'America/Campo_Grande'),
	(84,'America/Cancun'),
	(85,'America/Caracas'),
	(86,'America/Cayenne'),
	(87,'America/Cayman'),
	(88,'America/Chicago'),
	(89,'America/Chihuahua'),
	(90,'America/Costa_Rica'),
	(91,'America/Creston'),
	(92,'America/Cuiaba'),
	(93,'America/Curacao'),
	(94,'America/Danmarkshavn'),
	(95,'America/Dawson'),
	(96,'America/Dawson_Creek'),
	(97,'America/Denver'),
	(98,'America/Detroit'),
	(99,'America/Dominica'),
	(100,'America/Edmonton'),
	(101,'America/Eirunepe'),
	(102,'America/El_Salvador'),
	(103,'America/Fort_Nelson'),
	(104,'America/Fortaleza'),
	(105,'America/Glace_Bay'),
	(106,'America/Goose_Bay'),
	(107,'America/Grand_Turk'),
	(108,'America/Grenada'),
	(109,'America/Guadeloupe'),
	(110,'America/Guatemala'),
	(111,'America/Guayaquil'),
	(112,'America/Guyana'),
	(113,'America/Halifax'),
	(114,'America/Havana'),
	(115,'America/Hermosillo'),
	(116,'America/Indiana/Indianapolis'),
	(117,'America/Indiana/Knox'),
	(118,'America/Indiana/Marengo'),
	(119,'America/Indiana/Petersburg'),
	(120,'America/Indiana/Tell_City'),
	(121,'America/Indiana/Vevay'),
	(122,'America/Indiana/Vincennes'),
	(123,'America/Indiana/Winamac'),
	(124,'America/Inuvik'),
	(125,'America/Iqaluit'),
	(126,'America/Jamaica'),
	(127,'America/Juneau'),
	(128,'America/Kentucky/Louisville'),
	(129,'America/Kentucky/Monticello'),
	(130,'America/Kralendijk'),
	(131,'America/La_Paz'),
	(132,'America/Lima'),
	(133,'America/Los_Angeles'),
	(134,'America/Lower_Princes'),
	(135,'America/Maceio'),
	(136,'America/Managua'),
	(137,'America/Manaus'),
	(138,'America/Marigot'),
	(139,'America/Martinique'),
	(140,'America/Matamoros'),
	(141,'America/Mazatlan'),
	(142,'America/Menominee'),
	(143,'America/Merida'),
	(144,'America/Metlakatla'),
	(145,'America/Mexico_City'),
	(146,'America/Miquelon'),
	(147,'America/Moncton'),
	(148,'America/Monterrey'),
	(149,'America/Montevideo'),
	(150,'America/Montserrat'),
	(151,'America/Nassau'),
	(152,'America/New_York'),
	(153,'America/Nipigon'),
	(154,'America/Nome'),
	(155,'America/Noronha'),
	(156,'America/North_Dakota/Beulah'),
	(157,'America/North_Dakota/Center'),
	(158,'America/North_Dakota/New_Salem'),
	(159,'America/Nuuk'),
	(160,'America/Ojinaga'),
	(161,'America/Panama'),
	(162,'America/Pangnirtung'),
	(163,'America/Paramaribo'),
	(164,'America/Phoenix'),
	(165,'America/Port-au-Prince'),
	(166,'America/Port_of_Spain'),
	(167,'America/Porto_Velho'),
	(168,'America/Puerto_Rico'),
	(169,'America/Punta_Arenas'),
	(170,'America/Rainy_River'),
	(171,'America/Rankin_Inlet'),
	(172,'America/Recife'),
	(173,'America/Regina'),
	(174,'America/Resolute'),
	(175,'America/Rio_Branco'),
	(176,'America/Santarem'),
	(177,'America/Santiago'),
	(178,'America/Santo_Domingo'),
	(179,'America/Sao_Paulo'),
	(180,'America/Scoresbysund'),
	(181,'America/Sitka'),
	(182,'America/St_Barthelemy'),
	(183,'America/St_Johns'),
	(184,'America/St_Kitts'),
	(185,'America/St_Lucia'),
	(186,'America/St_Thomas'),
	(187,'America/St_Vincent'),
	(188,'America/Swift_Current'),
	(189,'America/Tegucigalpa'),
	(190,'America/Thule'),
	(191,'America/Thunder_Bay'),
	(192,'America/Tijuana'),
	(193,'America/Toronto'),
	(194,'America/Tortola'),
	(195,'America/Vancouver'),
	(196,'America/Whitehorse'),
	(197,'America/Winnipeg'),
	(198,'America/Yakutat'),
	(199,'America/Yellowknife'),
	(200,'Antarctica/Casey'),
	(201,'Antarctica/Davis'),
	(202,'Antarctica/DumontDUrville'),
	(203,'Antarctica/Macquarie'),
	(204,'Antarctica/Mawson'),
	(205,'Antarctica/McMurdo'),
	(206,'Antarctica/Palmer'),
	(207,'Antarctica/Rothera'),
	(208,'Antarctica/Syowa'),
	(209,'Antarctica/Troll'),
	(210,'Antarctica/Vostok'),
	(211,'Arctic/Longyearbyen'),
	(212,'Asia/Aden'),
	(213,'Asia/Almaty'),
	(214,'Asia/Amman'),
	(215,'Asia/Anadyr'),
	(216,'Asia/Aqtau'),
	(217,'Asia/Aqtobe'),
	(218,'Asia/Ashgabat'),
	(219,'Asia/Atyrau'),
	(220,'Asia/Baghdad'),
	(221,'Asia/Bahrain'),
	(222,'Asia/Baku'),
	(223,'Asia/Bangkok'),
	(224,'Asia/Barnaul'),
	(225,'Asia/Beirut'),
	(226,'Asia/Bishkek'),
	(227,'Asia/Brunei'),
	(228,'Asia/Chita'),
	(229,'Asia/Choibalsan'),
	(230,'Asia/Colombo'),
	(231,'Asia/Damascus'),
	(232,'Asia/Dhaka'),
	(233,'Asia/Dili'),
	(234,'Asia/Dubai'),
	(235,'Asia/Dushanbe'),
	(236,'Asia/Famagusta'),
	(237,'Asia/Gaza'),
	(238,'Asia/Hebron'),
	(239,'Asia/Ho_Chi_Minh'),
	(240,'Asia/Hong_Kong'),
	(241,'Asia/Hovd'),
	(242,'Asia/Irkutsk'),
	(243,'Asia/Jakarta'),
	(244,'Asia/Jayapura'),
	(245,'Asia/Jerusalem'),
	(246,'Asia/Kabul'),
	(247,'Asia/Kamchatka'),
	(248,'Asia/Karachi'),
	(249,'Asia/Kathmandu'),
	(250,'Asia/Khandyga'),
	(251,'Asia/Kolkata'),
	(252,'Asia/Krasnoyarsk'),
	(253,'Asia/Kuala_Lumpur'),
	(254,'Asia/Kuching'),
	(255,'Asia/Kuwait'),
	(256,'Asia/Macau'),
	(257,'Asia/Magadan'),
	(258,'Asia/Makassar'),
	(259,'Asia/Manila'),
	(260,'Asia/Muscat'),
	(261,'Asia/Nicosia'),
	(262,'Asia/Novokuznetsk'),
	(263,'Asia/Novosibirsk'),
	(264,'Asia/Omsk'),
	(265,'Asia/Oral'),
	(266,'Asia/Phnom_Penh'),
	(267,'Asia/Pontianak'),
	(268,'Asia/Pyongyang'),
	(269,'Asia/Qatar'),
	(270,'Asia/Qostanay'),
	(271,'Asia/Qyzylorda'),
	(272,'Asia/Riyadh'),
	(273,'Asia/Sakhalin'),
	(274,'Asia/Samarkand'),
	(275,'Asia/Seoul'),
	(276,'Asia/Shanghai'),
	(277,'Asia/Singapore'),
	(278,'Asia/Srednekolymsk'),
	(279,'Asia/Taipei'),
	(280,'Asia/Tashkent'),
	(281,'Asia/Tbilisi'),
	(282,'Asia/Tehran'),
	(283,'Asia/Thimphu'),
	(284,'Asia/Tokyo'),
	(285,'Asia/Tomsk'),
	(286,'Asia/Ulaanbaatar'),
	(287,'Asia/Urumqi'),
	(288,'Asia/Ust-Nera'),
	(289,'Asia/Vientiane'),
	(290,'Asia/Vladivostok'),
	(291,'Asia/Yakutsk'),
	(292,'Asia/Yangon'),
	(293,'Asia/Yekaterinburg'),
	(294,'Asia/Yerevan'),
	(295,'Atlantic/Azores'),
	(296,'Atlantic/Bermuda'),
	(297,'Atlantic/Canary'),
	(298,'Atlantic/Cape_Verde'),
	(299,'Atlantic/Faroe'),
	(300,'Atlantic/Madeira'),
	(301,'Atlantic/Reykjavik'),
	(302,'Atlantic/South_Georgia'),
	(303,'Atlantic/St_Helena'),
	(304,'Atlantic/Stanley'),
	(305,'Australia/Adelaide'),
	(306,'Australia/Brisbane'),
	(307,'Australia/Broken_Hill'),
	(308,'Australia/Darwin'),
	(309,'Australia/Eucla'),
	(310,'Australia/Hobart'),
	(311,'Australia/Lindeman'),
	(312,'Australia/Lord_Howe'),
	(313,'Australia/Melbourne'),
	(314,'Australia/Perth'),
	(315,'Australia/Sydney'),
	(316,'Europe/Amsterdam'),
	(317,'Europe/Andorra'),
	(318,'Europe/Astrakhan'),
	(319,'Europe/Athens'),
	(320,'Europe/Belgrade'),
	(321,'Europe/Berlin'),
	(322,'Europe/Bratislava'),
	(323,'Europe/Brussels'),
	(324,'Europe/Bucharest'),
	(325,'Europe/Budapest'),
	(326,'Europe/Busingen'),
	(327,'Europe/Chisinau'),
	(328,'Europe/Copenhagen'),
	(329,'Europe/Dublin'),
	(330,'Europe/Gibraltar'),
	(331,'Europe/Guernsey'),
	(332,'Europe/Helsinki'),
	(333,'Europe/Isle_of_Man'),
	(334,'Europe/Istanbul'),
	(335,'Europe/Jersey'),
	(336,'Europe/Kaliningrad'),
	(337,'Europe/Kiev'),
	(338,'Europe/Kirov'),
	(339,'Europe/Lisbon'),
	(340,'Europe/Ljubljana'),
	(341,'Europe/London'),
	(342,'Europe/Luxembourg'),
	(343,'Europe/Madrid'),
	(344,'Europe/Malta'),
	(345,'Europe/Mariehamn'),
	(346,'Europe/Minsk'),
	(347,'Europe/Monaco'),
	(348,'Europe/Moscow'),
	(349,'Europe/Oslo'),
	(350,'Europe/Paris'),
	(351,'Europe/Podgorica'),
	(352,'Europe/Prague'),
	(353,'Europe/Riga'),
	(354,'Europe/Rome'),
	(355,'Europe/Samara'),
	(356,'Europe/San_Marino'),
	(357,'Europe/Sarajevo'),
	(358,'Europe/Saratov'),
	(359,'Europe/Simferopol'),
	(360,'Europe/Skopje'),
	(361,'Europe/Sofia'),
	(362,'Europe/Stockholm'),
	(363,'Europe/Tallinn'),
	(364,'Europe/Tirane'),
	(365,'Europe/Ulyanovsk'),
	(366,'Europe/Uzhgorod'),
	(367,'Europe/Vaduz'),
	(368,'Europe/Vatican'),
	(369,'Europe/Vienna'),
	(370,'Europe/Vilnius'),
	(371,'Europe/Volgograd'),
	(372,'Europe/Warsaw'),
	(373,'Europe/Zagreb'),
	(374,'Europe/Zaporozhye'),
	(375,'Europe/Zurich'),
	(376,'Indian/Antananarivo'),
	(377,'Indian/Chagos'),
	(378,'Indian/Christmas'),
	(379,'Indian/Cocos'),
	(380,'Indian/Comoro'),
	(381,'Indian/Kerguelen'),
	(382,'Indian/Mahe'),
	(383,'Indian/Maldives'),
	(384,'Indian/Mauritius'),
	(385,'Indian/Mayotte'),
	(386,'Indian/Reunion'),
	(387,'Pacific/Apia'),
	(388,'Pacific/Auckland'),
	(389,'Pacific/Bougainville'),
	(390,'Pacific/Chatham'),
	(391,'Pacific/Chuuk'),
	(392,'Pacific/Easter'),
	(393,'Pacific/Efate'),
	(394,'Pacific/Fakaofo'),
	(395,'Pacific/Fiji'),
	(396,'Pacific/Funafuti'),
	(397,'Pacific/Galapagos'),
	(398,'Pacific/Gambier'),
	(399,'Pacific/Guadalcanal'),
	(400,'Pacific/Guam'),
	(401,'Pacific/Honolulu'),
	(402,'Pacific/Kanton'),
	(403,'Pacific/Kiritimati'),
	(404,'Pacific/Kosrae'),
	(405,'Pacific/Kwajalein'),
	(406,'Pacific/Majuro'),
	(407,'Pacific/Marquesas'),
	(408,'Pacific/Midway'),
	(409,'Pacific/Nauru'),
	(410,'Pacific/Niue'),
	(411,'Pacific/Norfolk'),
	(412,'Pacific/Noumea'),
	(413,'Pacific/Pago_Pago'),
	(414,'Pacific/Palau'),
	(415,'Pacific/Pitcairn'),
	(416,'Pacific/Pohnpei'),
	(417,'Pacific/Port_Moresby'),
	(418,'Pacific/Rarotonga'),
	(419,'Pacific/Saipan'),
	(420,'Pacific/Tahiti'),
	(421,'Pacific/Tarawa'),
	(422,'Pacific/Tongatapu'),
	(423,'Pacific/Wake'),
	(424,'Pacific/Wallis'),
	(425,'UTC');

/*!40000 ALTER TABLE `timezones` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table towns
# ------------------------------------------------------------

DROP TABLE IF EXISTS `towns`;

CREATE TABLE `towns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `towns_name_unique` (`name`),
  KEY `towns_city_id_foreign` (`city_id`),
  CONSTRAINT `towns_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table transactions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_plan_id_foreign` (`plan_id`),
  KEY `transactions_customer_id_foreign` (`customer_id`),
  CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transactions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_plans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_plans`;

CREATE TABLE `user_plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `ad_limit` bigint unsigned NOT NULL DEFAULT '3',
  `featured_limit` bigint unsigned NOT NULL DEFAULT '0',
  `customer_support` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_image` tinyint(1) NOT NULL DEFAULT '1',
  `badge` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_plans_customer_id_foreign` (`customer_id`),
  CONSTRAINT `user_plans_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table wishlists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wishlists`;

CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_ad_id_foreign` (`ad_id`),
  KEY `wishlists_customer_id_foreign` (`customer_id`),
  CONSTRAINT `wishlists_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
