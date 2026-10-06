-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for marketplace
CREATE DATABASE IF NOT EXISTS `marketplace` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `marketplace`;

-- Dumping structure for table marketplace.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.categories: ~5 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'AI Chatbot & Asisten', 'ai-chatbot-asisten-sXoN', NULL, '2026-09-01 21:29:20', '2026-09-01 21:29:20'),
	(2, 'AI Penulis & Konten', 'ai-penulis-konten-c2iE', NULL, '2026-09-01 21:29:20', '2026-09-01 21:29:20'),
	(3, 'AI Gambar & Desain', 'ai-gambar-desain-vaqr', NULL, '2026-09-01 21:29:20', '2026-09-01 21:29:20'),
	(4, 'AI Video & Audio', 'ai-video-audio-eMtJ', NULL, '2026-09-01 21:29:20', '2026-09-01 21:29:20'),
	(5, 'AI Coding & Developer Tools', 'ai-coding-developer-tools-bzz5', NULL, '2026-09-01 21:29:20', '2026-09-01 21:29:20');

-- Dumping structure for table marketplace.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table marketplace.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table marketplace.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2024_01_01_000001_create_categories_table', 1),
	(7, '2024_01_01_000002_create_products_table', 1),
	(8, '2024_01_01_000003_create_product_variants_table', 1),
	(9, '2026_09_03_000001_create_tags_table', 2);

-- Dumping structure for table marketplace.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.password_resets: ~0 rows (approximately)

-- Dumping structure for table marketplace.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table marketplace.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table marketplace.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(12,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.products: ~10 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `description`, `price`, `stock`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 1, 'NovaChat AI Assistant', 'novachat-ai-assistant-HGcYp', 'Asisten chatbot AI serbaguna untuk menjawab pertanyaan, brainstorming ide, dan menemani produktivitas harianmu.', 96000.00, 37, 'products/F7dwLPgl7asKBDb8dqx9pdew0g7eOfWS5JuyirLK.png', 1, '2026-09-01 21:29:20', '2026-09-02 00:49:39'),
	(2, 1, 'Helio AI Support Bot', 'helio-ai-support-bot-z2Hra', 'Chatbot AI siap pakai untuk kebutuhan customer service otomatis 24 jam non-stop.', 148000.00, 32, 'products/iCbvuMFUDQoaeUqfuyYBs9zoWeGDRiCdEJXX5qcA.png', 1, '2026-09-01 21:29:20', '2026-09-02 00:49:48'),
	(3, 2, 'ScriptGenius AI Writer', 'scriptgenius-ai-writer-DPu7I', 'AI penulis konten untuk artikel, caption sosial media, dan copywriting dalam hitungan detik.', 87000.00, 21, 'products/KtGmTUUOMAo4WADkhg5Af2382Xmrm1yxeDYar1Mz.png', 1, '2026-09-01 21:29:20', '2026-09-02 00:49:58'),
	(4, 2, 'WordCraft AI Pro', 'wordcraft-ai-pro-yxIlu', 'Bantu proofreading, parafrase, dan optimasi SEO tulisan secara otomatis dengan AI.', 121000.00, 74, 'products/JGEaihSZSKfJNR0GjLJM8hNQ7o7JTOeMomMrU37t.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:50:10'),
	(5, 3, 'PixelMind AI Studio', 'pixelmind-ai-studio-HhlVv', 'Generator gambar AI untuk membuat ilustrasi, desain, dan artwork dari deskripsi teks.', 110000.00, 92, 'products/tTmji4ktBBaYLr6013p7frHUHg4fowNWesr0n3SX.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:50:22'),
	(6, 3, 'ArtVision AI Creator', 'artvision-ai-creator-9mZ2W', 'Ubah ide desainmu jadi visual profesional secara instan dengan bantuan AI generatif.', 101000.00, 80, 'products/nmSrBy80Y8pLKeA5lCSICoXK7Q31LT799azJoyVe.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:50:32'),
	(7, 4, 'ClipForge AI Video', 'clipforge-ai-video-V3Wba', 'Buat video pendek otomatis lengkap dengan voice over AI dan subtitle dari naskahmu.', 117000.00, 90, 'products/iu2T5GIPYm7P04aRxaLlLhavHkivXblFlkolkU63.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:50:43'),
	(8, 4, 'SonicWave AI Audio', 'sonicwave-ai-audio-mIutB', 'Text-to-speech & voice cloning AI berkualitas studio untuk konten audio kamu.', 45000.00, 53, 'products/aSQ2NsYbsmw92yqhHfGdAFnYgSOi31rBSYX3Sjlp.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:50:53'),
	(9, 5, 'CodeGenius AI Assistant', 'codegenius-ai-assistant-04FFf', 'AI pair-programmer untuk membantu menulis, melengkapi, dan debugging kode lebih cepat.', 99000.00, 47, 'products/JqwDLN29LbnX5hfWKNGah2LbHkezt1oaRS7CUA26.jpg', 1, '2026-09-01 21:29:20', '2026-09-02 00:51:03'),
	(10, 5, 'DevMate AI Reviewer', 'devmate-ai-reviewer-6SL7O', 'AI code reviewer otomatis untuk menjaga kualitas & keamanan kode sebelum production.', 138000.00, 26, 'products/E8YldDZspxygjzBUsHegcddSg1iICdWgJFopXm34.png', 1, '2026-09-01 21:29:20', '2026-09-02 00:52:06');

-- Dumping structure for table marketplace.product_tag
CREATE TABLE IF NOT EXISTS `product_tag` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.product_tag: ~12 rows (approximately)
INSERT INTO `product_tag` (`product_id`, `tag_id`) VALUES
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(3, 2),
	(4, 2),
	(9, 3),
	(10, 3),
	(1, 4),
	(2, 4);

-- Dumping structure for table marketplace.product_variants
CREATE TABLE IF NOT EXISTS `product_variants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_variants_product_id_foreign` (`product_id`),
  CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.product_variants: ~30 rows (approximately)
INSERT INTO `product_variants` (`id`, `product_id`, `name`, `price`, `stock`, `sort_order`, `created_at`, `updated_at`) VALUES
	(70, 7, '1 Bulan', 117000.00, 22, 0, '2026-09-03 02:42:21', '2026-09-03 02:42:21'),
	(71, 7, '3 Bulan', 316000.00, 14, 1, '2026-09-03 02:42:21', '2026-09-03 02:42:21'),
	(72, 7, '1 Tahun', 1112000.00, 6, 2, '2026-09-03 02:42:21', '2026-09-03 02:42:21'),
	(73, 5, '1 Bulan', 110000.00, 38, 0, '2026-09-03 02:42:34', '2026-09-03 02:42:34'),
	(74, 5, '3 Bulan', 297000.00, 16, 1, '2026-09-03 02:42:34', '2026-09-03 02:42:34'),
	(75, 5, '1 Tahun', 1045000.00, 11, 2, '2026-09-03 02:42:34', '2026-09-03 02:42:34'),
	(91, 8, '1 Bulan', 45000.00, 48, 0, '2026-09-03 19:33:30', '2026-09-03 19:33:30'),
	(92, 8, '3 Bulan', 122000.00, 27, 1, '2026-09-03 19:33:30', '2026-09-03 19:33:30'),
	(93, 8, '1 Tahun', 428000.00, 28, 2, '2026-09-03 19:33:30', '2026-09-03 19:33:30'),
	(94, 1, '1 Bulan', 96000.00, 40, 0, '2026-09-03 19:44:33', '2026-09-03 19:44:33'),
	(95, 1, '3 Bulan', 259000.00, 26, 1, '2026-09-03 19:44:33', '2026-09-03 19:44:33'),
	(96, 1, '1 Tahun', 912000.00, 48, 2, '2026-09-03 19:44:33', '2026-09-03 19:44:33'),
	(97, 2, '1 Bulan', 148000.00, 18, 0, '2026-09-03 19:44:42', '2026-09-03 19:44:42'),
	(98, 2, '3 Bulan', 400000.00, 20, 1, '2026-09-03 19:44:42', '2026-09-03 19:44:42'),
	(99, 2, '1 Tahun', 1406000.00, 18, 2, '2026-09-03 19:44:42', '2026-09-03 19:44:42'),
	(100, 3, '1 Bulan', 87000.00, 30, 0, '2026-09-03 19:44:58', '2026-09-03 19:44:58'),
	(101, 3, '3 Bulan', 235000.00, 27, 1, '2026-09-03 19:44:58', '2026-09-03 19:44:58'),
	(102, 3, '1 Tahun', 827000.00, 45, 2, '2026-09-03 19:44:58', '2026-09-03 19:44:58'),
	(103, 4, '1 Bulan', 121000.00, 9, 0, '2026-09-03 19:45:11', '2026-09-03 19:45:11'),
	(104, 4, '3 Bulan', 327000.00, 48, 1, '2026-09-03 19:45:11', '2026-09-03 19:45:11'),
	(105, 4, '1 Tahun', 1150000.00, 6, 2, '2026-09-03 19:45:11', '2026-09-03 19:45:11'),
	(106, 6, '1 Bulan', 101000.00, 34, 0, '2026-09-03 19:45:56', '2026-09-03 19:45:56'),
	(107, 6, '3 Bulan', 273000.00, 40, 1, '2026-09-03 19:45:56', '2026-09-03 19:45:56'),
	(108, 6, '1 Tahun', 960000.00, 40, 2, '2026-09-03 19:45:56', '2026-09-03 19:45:56'),
	(109, 9, '1 Bulan', 99000.00, 19, 0, '2026-09-03 19:46:28', '2026-09-03 19:46:28'),
	(110, 9, '3 Bulan', 267000.00, 7, 1, '2026-09-03 19:46:28', '2026-09-03 19:46:28'),
	(111, 9, '1 Tahun', 941000.00, 7, 2, '2026-09-03 19:46:28', '2026-09-03 19:46:28'),
	(112, 10, '1 Bulan', 138000.00, 9, 0, '2026-09-03 19:46:34', '2026-09-03 19:46:34'),
	(113, 10, '3 Bulan', 373000.00, 37, 1, '2026-09-03 19:46:34', '2026-09-03 19:46:34'),
	(114, 10, '1 Tahun', 1311000.00, 15, 2, '2026-09-03 19:46:34', '2026-09-03 19:46:34');

-- Dumping structure for table marketplace.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.tags: ~4 rows (approximately)
INSERT INTO `tags` (`id`, `name`, `slug`, `related_keywords`, `created_at`, `updated_at`) VALUES
	(1, 'Music', 'music', 'audio, video , sound, song, melody, konten', '2026-09-03 02:40:50', '2026-09-03 19:37:33'),
	(2, 'Penulis', 'penulis', 'penulis, writer, teks, menulis', '2026-09-03 02:46:00', '2026-09-03 19:49:03'),
	(3, 'Coding', 'coding', 'pemrograman, program, koding', '2026-09-03 19:43:09', '2026-09-03 19:43:09'),
	(4, 'Bot', 'bot', 'bot, chatbot, ai, komputer', '2026-09-03 19:44:03', '2026-09-03 19:44:03');

-- Dumping structure for table marketplace.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table marketplace.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$tTOuGOodMtZjYhX9Q50Gjec/WNETb1Vw8NJyqwFzXGL3FvjGzyoYC', 'admin', '628123456789', NULL, '2026-09-01 21:29:20', '2026-09-01 21:38:55'),
	(2, 'Budi Santoso', 'budi@gmail.com', NULL, '$2y$10$XE17MTd95Nax7Nr8I0Vu1OxmtxA7ve/gimRWp2g50pfbtOxrp.6km', 'customer', '628987654321', NULL, '2026-09-01 21:29:20', '2026-09-01 21:39:19'),
	(3, 'Wawan Setiawan', 'wawan@gmail.com', NULL, '$2y$10$d145pYL4y48wk0pMMpXgRuo.ZfGKCiIaRvu8dKGGMsHOAdm2kwL5q', 'customer', '087654456232', NULL, '2026-09-02 00:24:41', '2026-09-02 00:24:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
