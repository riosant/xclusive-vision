-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2024 at 05:38 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xclusive_vision`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@gmail.com|::1:timer', 'i:1715707115;', 1715707115),
('admin@gmail.com|::1', 'i:1;', 1715707115),
('dsad@dasd|::1:timer', 'i:1715707287;', 1715707287),
('dsad@dasd|::1', 'i:1;', 1715707287),
('ddasd@dasd|::1:timer', 'i:1715707326;', 1715707326),
('ddasd@dasd|::1', 'i:1;', 1715707326),
('ddasd1@adasd|::1:timer', 'i:1715707369;', 1715707369),
('ddasd1@adasd|::1', 'i:1;', 1715707369);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xodUapdU0GF8aVv4ZzBf911bIjHiiYafnYEtTQOh', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib21tZEdyZnJWNjlranVxT0o1alhmVG9WdjdRejZBeDFHYkU1a2ZzdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbC54Y2x1c2l2ZS12aXNpb24uY29tL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1715707393);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` enum('admin','user','agent') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `code` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `code`, `name`, `username`, `email`, `mobile`, `password`, `dob`, `remember_token`, `email_verified_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user', NULL, 'admin', NULL, 'admin@admin.com', NULL, '$2y$12$nbdgFa6RDrcjampz50R3y.fINJAK0EVcH165VAWZKqZZu0HXkLzY2', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-08 11:37:22', '2024-05-08 11:37:22', NULL),
(2, 'admin', 'J66L0r', 'Murphy Dibbert', 'erika43', 'benny97@example.org', '+1 (305) 491-7721', '$2y$12$1bJ.ro87H7CxJ704QiH1Iu.Vs.mLW66ilEPL8vAd67ZCEQUNrG5xW', '2003-04-21', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:31', '2024-05-08 12:14:31', NULL),
(3, 'agent', 'yYaNjQ', 'Myrtie Boehm', 'iconroy', 'seamus.christiansen@example.com', '+16617828842', '$2y$12$7yMm86Vj7KhJ2.kNkZJpfuuQ4reHRyrFpyFOnydG9A/2QYUAnRgy6', '1986-06-25', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:31', '2024-05-08 12:14:31', NULL),
(4, 'admin', 'LhuR4T', 'Carroll Schinner DVM', 'duncan.rutherford', 'theodora.schiller@example.net', '(754) 579-3234', '$2y$12$3HWhkNj71br4.Z60Ad510Om.HkWoUMViWbRd6MET1e4mfvoMPXrHy', '1977-04-23', NULL, '2024-04-11 02:31:27', NULL, NULL, NULL, '2024-05-08 12:14:31', '2024-05-08 12:14:31', NULL),
(5, 'agent', 'F2spBI', 'Woodrow King', 'amie.greenfelder', 'dernser@example.com', '+1.475.255.1724', '$2y$12$1/GGpUFRf/0lrViXLTgnre8Sl4tWGx2Y1h/PNtomUQEAnXCbM9I6W', '2000-07-05', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:32', '2024-05-08 12:14:32', NULL),
(6, 'agent', 'UMPUVi', 'Dr. Mittie Aufderhar', 'blanda.cora', 'abbie04@example.net', '1-220-579-5948', '$2y$12$ciHHie50VSRwVVK6XtWeAuEGfhaB3MoR4qhkCQv89Ep1i2nBn6Jjq', '1982-05-14', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:32', '2024-05-08 12:14:32', NULL),
(7, 'admin', 'E6d4GF', 'Obie Lehner', 'abshire.franco', 'wrutherford@example.org', '+1-857-920-6965', '$2y$12$vdGsvU0tu.8200sJq/IZd.q5qJB62FkD09CubF5F7xWRcrcjZ3ygC', '1977-09-25', NULL, '2024-04-18 03:20:59', NULL, NULL, NULL, '2024-05-08 12:14:32', '2024-05-08 12:14:32', NULL),
(8, 'agent', 'SZS3ZY', 'Catherine Koss MD', 'schuster.fannie', 'schulist.russ@example.net', '234.630.7625', '$2y$12$btGlD8ObtX/gv..VdO0HAuQ1iUA/5BGoWzvL.uIg7m.LEBDIizR8i', '1996-05-08', NULL, '2024-05-03 03:22:20', NULL, NULL, NULL, '2024-05-08 12:14:32', '2024-05-08 12:14:32', NULL),
(9, 'agent', '20lEjB', 'Walton Welch Jr.', 'lynch.forest', 'mkuhn@example.com', '+1 (947) 350-1227', '$2y$12$T7olkDR1lOy3snnXS6DxCuIW/5k7fAi682snNqS71wRMt0uLUn/4i', '1997-02-27', NULL, '2024-04-18 05:54:31', NULL, NULL, NULL, '2024-05-08 12:14:32', '2024-05-08 12:14:32', NULL),
(10, 'admin', 'ILvKp7', 'Breanna Klein', 'elisa.walsh', 'stewart.olson@example.org', '574-815-8317', '$2y$12$qHZ9CHVRKmcJOHR3on3HfOK80CR5W15eV4exsCohgpdJYi0BG3TW.', '2013-10-04', NULL, '2024-04-27 03:38:47', NULL, NULL, NULL, '2024-05-08 12:14:33', '2024-05-08 12:14:33', NULL),
(11, 'agent', 'jtKwzf', 'Marilie Morissette', 'aufderhar.damian', 'nhayes@example.net', '424.627.2607', '$2y$12$hJg/QYPzf6zDl87j2VfHSOELQn8ul8URNG4BUWHORfFQPLSWganIa', '2019-12-06', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:33', '2024-05-08 12:14:33', NULL),
(12, 'agent', 'eA3eCw', 'Quentin Pfannerstill PhD', 'murray.theresia', 'vmurphy@example.org', '+1-531-655-4984', '$2y$12$BQD.qIZTsnyVTGmStBdsyuN/Q1ao0dWlszSBnWGzH4SzICTQbnpWC', '1974-05-20', NULL, '2024-04-11 06:36:32', NULL, NULL, NULL, '2024-05-08 12:14:33', '2024-05-08 12:14:33', NULL),
(13, 'admin', 'yZGkq0', 'Miss Tatyana Thiel', 'bdonnelly', 'bernice.kuhlman@example.com', '352.822.3572', '$2y$12$QGEjdAYvJZ8lZ.aP01.Q9OquzAYCJPv7WdJbCxGjUzrIqKtM/Aq9S', '1988-10-07', NULL, '2024-05-07 18:30:02', NULL, NULL, NULL, '2024-05-08 12:14:33', '2024-05-08 12:14:33', NULL),
(14, 'user', 'H2frCh', 'Oscar Ward', 'jared.friesen', 'tryan@example.net', '+1-716-674-3041', '$2y$12$iM9oEzVClQUv2LPDLyTMqO1AEh0M0yFWeX/o8Vi7aUsgPMawiluie', '1984-09-25', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:33', '2024-05-08 12:14:33', NULL),
(15, 'admin', 'NIo1Kh', 'Duane Yost', 'rrussel', 'eichmann.vladimir@example.org', '+13419758550', '$2y$12$5xUZ2gYJx4fJM.PvUItIyuMA4RkTvmgRmw4lU6vfjGN2geBPOEeRO', '1998-08-26', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:34', '2024-05-08 12:14:34', NULL),
(16, 'admin', 'A3Voxn', 'Antone Barrows', 'lura.gleason', 'camylle.stark@example.org', '+1.947.921.3055', '$2y$12$RR2EMyN44EdJefYCyllrEewaEXIXWhPORnLCT/CRHNMo28T/3OOvC', '1972-11-22', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:34', '2024-05-08 12:14:34', NULL),
(17, 'agent', 'qeairf', 'Jedediah Turcotte Jr.', 'camden.wilkinson', 'torphy.ezra@example.org', '724.903.2351', '$2y$12$U2VZ.zFWJ579O9bDPR4rCukeNpWs04hqxdIjpj50H0pxcFPkbdHFa', '1995-06-16', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:34', '2024-05-08 12:14:34', NULL),
(18, 'admin', '9g0aDn', 'Karlie Wisozk', 'cary15', 'braun.mitchel@example.org', '(513) 621-8008', '$2y$12$moZwXxqzoaDsVvpCIh6cvONwOyodtQdkYYdKRkYYDesQH6KNbKIVG', '1970-05-22', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:34', '2024-05-08 12:14:34', NULL),
(19, 'admin', 'CCXJKv', 'Prof. Edythe Pacocha MD', 'mark84', 'barbara32@example.org', '+1-786-434-9023', '$2y$12$Jk/WHIuhR0t6V3J3DfE5Wu2j/kEU.FATlkpMcuZ1tpznBynrGgxWa', '1975-12-27', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:34', '2024-05-08 12:14:34', NULL),
(20, 'user', '2aHkCj', 'Mrs. Dorothea Gottlieb MD', 'kamren29', 'stamm.trace@example.net', '1-910-376-5770', '$2y$12$waSYqQmymwx5aEpP4Ef4vekG7ba5ZW95yT8o5A4Ad3QKHLt8SIyU6', '1979-08-04', NULL, '2024-04-15 05:42:10', NULL, NULL, NULL, '2024-05-08 12:14:35', '2024-05-08 12:14:35', NULL),
(21, 'agent', 'LIpAfO', 'Vicky Emmerich', 'ftowne', 'miller62@example.org', '254-341-9420', '$2y$12$v3KegLv4Gk1fV1BoSlQtPOSNu.z/m4WTTKQvvCmxT4JoKB3ovXQV2', '2000-11-27', NULL, '2024-04-10 23:14:49', NULL, NULL, NULL, '2024-05-08 12:14:35', '2024-05-08 12:14:35', NULL),
(22, 'user', 'QXXDE8', 'Charlene O\'Reilly', 'rohan.reginald', 'mokeefe@example.org', '(208) 300-1287', '$2y$12$GKa9FcuxeaA6/1k/wDi4Je35M8ifeKLn7sF0nUSJpEz0rCkC.Y1u6', '1991-08-12', NULL, '2024-04-21 13:53:55', NULL, NULL, NULL, '2024-05-08 12:14:35', '2024-05-08 12:14:35', NULL),
(23, 'agent', 'RnuyS9', 'Savanna Funk', 'stoltenberg.roberta', 'leonora71@example.net', '785.713.0455', '$2y$12$rGTJzpnxPct9lwng2/8RsOqsptp7kR16SZ12eybLWHE/vNaEK0lae', '1973-08-18', NULL, '2024-04-14 03:15:03', NULL, NULL, NULL, '2024-05-08 12:14:35', '2024-05-08 12:14:35', NULL),
(24, 'admin', 'RdDLiO', 'Prof. Lawrence Spencer', 'delaney68', 'jarret69@example.org', '+1 (763) 364-3833', '$2y$12$H3gQjIAErUQ98iQj.3uyCuSEeQdyhmzF0thI533X71XqHeqW9I7lu', '2013-01-17', NULL, '2024-04-17 06:09:46', NULL, NULL, NULL, '2024-05-08 12:14:35', '2024-05-08 12:14:35', NULL),
(25, 'user', 'owTTyn', 'Murphy Berge DDS', 'gaetano38', 'constance39@example.org', '+1-628-223-4050', '$2y$12$A2goYbEG8f4pGm.Y/78DUuPPg.SkA5ONu9FE356rkyIvgwn3AIGoC', '2021-12-13', NULL, '2024-04-18 08:05:32', NULL, NULL, NULL, '2024-05-08 12:14:36', '2024-05-08 12:14:36', NULL),
(26, 'agent', 'jQs5R0', 'Odell Tromp', 'ftreutel', 'mrobel@example.com', '724-310-0195', '$2y$12$lHD0iQJTb1DK1qFPaYx2ae67z4ynFutUlfDoVCkzrpP6ujmv1y1AW', '1970-02-17', NULL, '2024-05-01 16:46:42', NULL, NULL, NULL, '2024-05-08 12:14:36', '2024-05-08 12:14:36', NULL),
(27, 'user', 'yAHieS', 'Alphonso Nicolas', 'bessie43', 'karelle.smitham@example.net', '(458) 747-5036', '$2y$12$exl415zJe7RJwS0dtjrZO.Ns/chyVzpSHjD0e/frVzwJVvcrgWz7W', '1995-09-16', NULL, '2024-04-25 03:01:30', NULL, NULL, NULL, '2024-05-08 12:14:36', '2024-05-08 12:14:36', NULL),
(28, 'admin', 'uAjyf6', 'August Bartell', 'abbott.crystel', 'brittany51@example.net', '219.366.5058', '$2y$12$KgzhoJTNiKBxuSikBCvqGuPI3t8uAkDemwm268FtUrgrOs5VX6KO2', '2023-07-19', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:36', '2024-05-08 12:14:36', NULL),
(29, 'admin', 'LHnHMr', 'Susie Hudson DVM', 'fschumm', 'brando.larson@example.net', '(541) 338-6365', '$2y$12$s6GI/iQIMgzolnOwhWsVx.mxZbAEl.nv1YwAvqadw/btbhlOCKu/6', '1994-11-09', NULL, '2024-05-07 12:08:21', NULL, NULL, NULL, '2024-05-08 12:14:36', '2024-05-08 12:14:36', NULL),
(30, 'user', 'sLKMa9', 'Alexys Williamson V', 'sylvan.hayes', 'joanne82@example.com', '1-630-810-1003', '$2y$12$YinVdEDI2gshlNq1oMfHnu.tVTWvziOmBGS/9I9XXU7e9qw0hrcAy', '2016-04-18', NULL, '2024-04-18 07:10:27', NULL, NULL, NULL, '2024-05-08 12:14:37', '2024-05-08 12:14:37', NULL),
(31, 'agent', 'VtL6fV', 'Dr. Lonzo Tremblay Jr.', 'bartoletti.annabel', 'cody99@example.org', '(972) 902-1896', '$2y$12$xWiGso0Xpl6FQbz9PR8yhuJkFpuLFExDDiqxahHxNUt.GEa1Bn2IG', '2016-11-22', NULL, '2024-04-21 10:18:11', NULL, NULL, NULL, '2024-05-08 12:14:37', '2024-05-08 12:14:37', NULL),
(32, 'user', 'YWHpqq', 'Abel Dibbert I', 'tschoen', 'diana24@example.org', '+13106895450', '$2y$12$A3MyWwiUZbYuLeB6j6Yl0ePjqudXwiVN9ijaXSelsAocMaIKnpM8q', '1989-04-25', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:37', '2024-05-08 12:14:37', NULL),
(33, 'user', '4DtiEI', 'Dr. Marjolaine Reynolds DVM', 'liliana80', 'lorenz.collier@example.com', '831-492-1490', '$2y$12$364F8c5UF1gNkTuTNS7HrekDW4Qb499tGnku2RAkEBrQSDottEZYq', '1975-05-23', NULL, '2024-04-25 02:33:17', NULL, NULL, NULL, '2024-05-08 12:14:37', '2024-05-08 12:14:37', NULL),
(34, 'agent', 'x9iap7', 'Fred Williamson', 'hammes.kaya', 'irma78@example.com', '765.541.7427', '$2y$12$vlm7MtbFz.dVtw9oGhjjRO98FLCdvMVy8GWsOOZFU2zXB24c3qghG', '1987-06-15', NULL, '2024-04-09 16:58:30', NULL, NULL, NULL, '2024-05-08 12:14:38', '2024-05-08 12:14:38', NULL),
(35, 'agent', '0LfufS', 'Mrs. Cierra Fahey', 'shaniya50', 'russel.nova@example.net', '320.519.2900', '$2y$12$O.hm8qfYq66xjMKx1BnCau1X2OJs2HrrAGo4WlgixNWx.wba5o5Lu', '1983-08-04', NULL, '2024-04-19 09:54:59', NULL, NULL, NULL, '2024-05-08 12:14:38', '2024-05-08 12:14:38', NULL),
(36, 'admin', 'mzL9LI', 'Vito Walker I', 'arnaldo09', 'clark.corwin@example.org', '(469) 881-0202', '$2y$12$ppdbkOfYlisA2GwUIGyK4.p6r0eL3X7QG5jseXqCqDRk3Nk5J8fF6', '2007-02-24', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:38', '2024-05-08 12:14:38', NULL),
(37, 'user', 'vUNxSn', 'Alvah Paucek', 'schaefer.sebastian', 'stehr.caden@example.net', '1-630-454-2729', '$2y$12$rDXDtnLcTsXnS3TqsKmr6OLItN5s2NgWZTvDB3qYS2XUYw3.JZ3Bu', '1997-04-15', NULL, '2024-04-29 09:29:51', NULL, NULL, NULL, '2024-05-08 12:14:38', '2024-05-08 12:14:38', NULL),
(38, 'agent', 'UwrdTV', 'Prof. Robyn Jones', 'alanna34', 'cblick@example.com', '325.531.4432', '$2y$12$DbIy8KGNa7v3s0Ubzxty5.XxdLEb09f/T22DUMnRXrMN7yUjHciom', '2008-12-06', NULL, '2024-04-15 10:46:15', NULL, NULL, NULL, '2024-05-08 12:14:38', '2024-05-08 12:14:38', NULL),
(39, 'agent', 'ZSMsgs', 'Julio Gerhold', 'kshlerin.faustino', 'schamberger.daniela@example.com', '534-974-4398', '$2y$12$Tum6yrUlc.2mFOT1oUksW.M0qew4EOrmcwiTT7wxP764kQeHIfzc.', '2003-10-05', NULL, '2024-04-22 06:55:13', NULL, NULL, NULL, '2024-05-08 12:14:39', '2024-05-08 12:14:39', NULL),
(40, 'user', 'RBoHt3', 'Katelin Dibbert', 'modesto.buckridge', 'afahey@example.org', '+1.252.819.7771', '$2y$12$F3/j7HUJ3secUPXh/YzUBuT7bAfAbVXLk11ijymebMfMpYBT2cAqe', '1979-05-14', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:39', '2024-05-08 12:14:39', NULL),
(41, 'user', '8IgeVR', 'Garnett Herzog MD', 'barton.isidro', 'zbotsford@example.org', '(402) 492-4402', '$2y$12$RqEz2lnWnIKKznT17TEZoOXCCHXz3FD4vWN6BSgXlrDH2ee.7Sdxa', '1985-10-29', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:39', '2024-05-08 12:14:39', NULL),
(42, 'agent', '8nQk3G', 'Mr. Antone Nienow', 'shields.jean', 'lgusikowski@example.com', '458.444.7208', '$2y$12$1U.vyvHpMRJNNDiPNnJuzexs8Y4inyrDxpsv6Nux96xjkCGYgYqxK', '1987-04-26', NULL, '2024-04-10 06:20:24', NULL, NULL, NULL, '2024-05-08 12:14:39', '2024-05-08 12:14:39', NULL),
(43, 'agent', 'sdcFXL', 'Tyrese Hermiston', 'horace.nolan', 'grant.celestine@example.org', '814-414-6577', '$2y$12$aLck4w4LezLBUBAeEuRNoee9sJjfU9egiHspICBEMAMi7HstTelQq', '1999-04-18', NULL, '2024-04-27 12:09:15', NULL, NULL, NULL, '2024-05-08 12:14:39', '2024-05-08 12:14:39', NULL),
(44, 'user', 'sauL0a', 'Gunner Lueilwitz', 'satterfield.nora', 'jaskolski.lyric@example.net', '+1-920-569-1382', '$2y$12$ZtgTteD/qWM9L/CwGAulIOGfa6tcZz2M9amFa3Etl63FSLlA4m2Bu', '1992-08-18', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:40', '2024-05-08 12:14:40', NULL),
(45, 'user', 'yFGayh', 'Rafaela Beier', 'wwisoky', 'emiliano.roberts@example.net', '1-458-788-0839', '$2y$12$aHCfIryDBDzN2tJlPqxaE.sxQN/d7DjJWWA13MzWGuWqryFvwlq/6', '2000-06-20', NULL, '2024-04-25 15:54:32', NULL, NULL, NULL, '2024-05-08 12:14:40', '2024-05-08 12:14:40', NULL),
(46, 'admin', 'G3VaVq', 'Ford Jaskolski', 'kjones', 'selmer63@example.org', '+1-858-380-1428', '$2y$12$sNVJU9rnzb4VXcxBhlU38eVlkG33syXTNpjYlnxzJ6bAlONLs8m4S', '2001-06-07', NULL, '2024-04-29 08:42:55', NULL, NULL, NULL, '2024-05-08 12:14:40', '2024-05-08 12:14:40', NULL),
(47, 'agent', 'OUiuDu', 'Leda Hauck', 'astroman', 'walter.london@example.net', '+1.505.209.8390', '$2y$12$a10b3yN7ma9jniHPiixAReOWxNWsVOTNFYHXc48VBq1yLRsVRDk0u', '2016-09-15', NULL, '2024-04-23 19:13:01', NULL, NULL, NULL, '2024-05-08 12:14:40', '2024-05-08 12:14:40', NULL),
(48, 'admin', '3P1enO', 'Mrs. Frida Durgan', 'spacocha', 'janis69@example.net', '+18312335514', '$2y$12$eg.dQSyeq1nW34YPN2tVkOmQre64cweqYathNQOPJaAQMVmyVs41O', '2002-03-15', NULL, '2024-05-07 06:53:59', NULL, NULL, NULL, '2024-05-08 12:14:40', '2024-05-08 12:14:40', NULL),
(49, 'agent', 'xgTPyV', 'Nat Swift', 'alvera.koelpin', 'lesch.maye@example.com', '1-283-820-4432', '$2y$12$ih97bLwFyuuWBYRwYv0HJuWQGA9qwxGCIg8SDT68FDALZVg45v.Zq', '1992-07-28', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:41', '2024-05-08 12:14:41', NULL),
(50, 'admin', 'GPC8A9', 'Miss Meggie Lockman PhD', 'boyd01', 'nabbott@example.org', '386.999.6735', '$2y$12$zMcxbqTfVziypxyvJFO6r.SBXZ72wIFz2cR/ZyPIxohlOw4TvQ8iK', '2011-03-30', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:41', '2024-05-08 12:14:41', NULL),
(51, 'user', '8IJTWs', 'Miss Elva Buckridge', 'florence16', 'prudence.prosacco@example.org', '1-469-967-9051', '$2y$12$pQd2oiqHR7C1.ihjsk3k/umDEiJ6fJL9ICf79JWgTg3hd/sMoJrfi', '1983-05-28', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:41', '2024-05-08 12:14:41', NULL),
(52, 'user', 'se3cFV', 'Hailee Little', 'rene.bradtke', 'uharris@example.net', '530.549.0121', '$2y$12$aSrKIIdpTrapA9WA.Wa7N.urnKyrEGuiE7AzkTIfLv97xFitrqWgK', '2007-08-28', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:41', '2024-05-08 12:14:41', NULL),
(53, 'admin', 'RtwTyv', 'Dakota Krajcik PhD', 'ggutmann', 'khettinger@example.com', '1-763-830-6010', '$2y$12$42y4w4fEB7om9QEo/NL0l.Zz9Xv7Y4E4ZT7LBDGMl47oMew9fY2AS', '1983-11-19', NULL, '2024-04-10 00:20:17', NULL, NULL, NULL, '2024-05-08 12:14:41', '2024-05-08 12:14:41', NULL),
(54, 'admin', '6Nxi0f', 'Marianna Goldner', 'kovacek.ludie', 'kyundt@example.net', '1-214-905-9314', '$2y$12$QL6oCdF9RDlwTibXfNsWbuioUb8xvHr2WsmRyk2lo.4KWery4Cjs6', '1983-08-24', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:42', '2024-05-08 12:14:42', NULL),
(55, 'user', 'yUWyBa', 'Prof. Stephany Zboncak IV', 'turcotte.madaline', 'imosciski@example.net', '+14246420319', '$2y$12$L9La1OjzZUq6NfJr0hsqx.IaRzk5Dc.zDfcKomtG1O7zlTtm/rTYm', '1987-09-12', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:42', '2024-05-08 12:14:42', NULL),
(56, 'agent', 'KEnqhA', 'Romaine Bruen DVM', 'murl.bergstrom', 'nbartell@example.net', '(724) 755-6331', '$2y$12$ozLiVNh2MzlvvoIZHKcHwOeuf3Pc0JpBGtF0gaBw/cpWqZEnREEXW', '1970-02-02', NULL, '2024-04-13 14:32:57', NULL, NULL, NULL, '2024-05-08 12:14:42', '2024-05-08 12:14:42', NULL),
(57, 'admin', 'menioD', 'Iva Johnston', 'lincoln.nikolaus', 'lokeefe@example.net', '+1.531.315.6464', '$2y$12$iPuVDUgDSjBO0OAUT3Pq7uCMDz9m5Ir2I10rsuE3a73X0ST/x3a5W', '1989-09-11', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:42', '2024-05-08 12:14:42', NULL),
(58, 'admin', 'Dsamdg', 'Assunta Goodwin', 'lennie.hayes', 'camille88@example.org', '1-678-596-5071', '$2y$12$5JxoyGJ.qZox4HqipVdp7OmG4FuMqEsqH0udRbi1RfjWLo2PUXE3q', '2008-06-11', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:42', '2024-05-08 12:14:42', NULL),
(59, 'agent', 'BJPSoM', 'Loraine Moen', 'lakin.giuseppe', 'constantin.hintz@example.org', '1-989-405-5428', '$2y$12$HiI/s4m5CMeAPZZ.VgSZqejlBqO.J44QRVwuotd.50HY/5Y.GgCeW', '2005-07-04', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:43', '2024-05-08 12:14:43', NULL),
(60, 'agent', 'JAJTXz', 'Prof. Jett Boyle III', 'reece.nicolas', 'nasir.hane@example.org', '930.912.7988', '$2y$12$mUNigwepMNHnTla.exG41uMkMHpqM1Ol2UmmmN9euAPQOzFNUyy2m', '2006-11-07', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:43', '2024-05-08 12:14:43', NULL),
(61, 'agent', 'dTUAye', 'Russ Treutel', 'dcronin', 'matteo53@example.org', '+15407677628', '$2y$12$H9ZQ6b7b5vahXo7R9pFjne7CEls5ogNhUVIX7BxCDTGykSpe.rS9y', '1973-09-14', NULL, '2024-04-16 02:31:47', NULL, NULL, NULL, '2024-05-08 12:14:43', '2024-05-08 12:14:43', NULL),
(62, 'admin', 'rPi5S6', 'Thaddeus Haag', 'shane48', 'christian92@example.org', '(272) 234-6627', '$2y$12$VwA/R/.O77FaU1fO29SIEuKxnEh7cZmnQ0FYzJV1pMZzIcVAWeiE2', '1973-10-07', NULL, '2024-04-20 10:00:12', NULL, NULL, NULL, '2024-05-08 12:14:43', '2024-05-08 12:14:43', NULL),
(63, 'user', 'vu3uUs', 'Kennedy Renner', 'kelvin54', 'dickinson.eusebio@example.net', '+1 (734) 616-9184', '$2y$12$BKJlAFhZuMUybwrLZQ9hrexOGcBQOpp1.29WnCRrMbkPnej.daBxC', '2008-11-15', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:43', '2024-05-08 12:14:43', NULL),
(64, 'admin', 'd7JRgL', 'Kory Schamberger', 'abbey40', 'jdare@example.com', '862-486-0005', '$2y$12$.bkMNIJ6G82cZ8HYj9BABOy5iF7fpNFtudUp4uPdVtCZxI49gNp/e', '2023-06-28', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:44', '2024-05-08 12:14:44', NULL),
(65, 'agent', 'jn3OWt', 'Emery Goldner', 'jerod.daugherty', 'caroline.stanton@example.net', '+12202484471', '$2y$12$bsWvrqhuVg9di/dQBy1FMemwhHFJeP3VriEhhMtqPz6tBpf24RrFG', '1988-07-16', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:44', '2024-05-08 12:14:44', NULL),
(66, 'admin', 'kXfCfI', 'Rossie Morar', 'schowalter.cody', 'catharine.romaguera@example.com', '+1-754-232-7306', '$2y$12$zFkslMdqdcWxauzyPcfTG.XBXizmDTQQEzVmt.mczr8AzYfNlsAE.', '1970-02-04', NULL, '2024-04-15 05:17:46', NULL, NULL, NULL, '2024-05-08 12:14:44', '2024-05-08 12:14:44', NULL),
(67, 'agent', 'b38cfE', 'Paul Conroy', 'deckow.lauretta', 'asauer@example.com', '616.582.1425', '$2y$12$3E0A3LHI0Tmvj4yVd.P3G.ohK4szHNl1ILSoRiszIbI/9C3UIUgn.', '2013-05-05', NULL, '2024-04-24 10:26:06', NULL, NULL, NULL, '2024-05-08 12:14:44', '2024-05-08 12:14:44', NULL),
(68, 'admin', 'IoLbOm', 'Pearl Parker', 'cary37', 'ysanford@example.com', '(903) 585-9715', '$2y$12$Zz5HASKZ.GsKE87ZINs6suFT233ns57A3Y.UQIGTW4DmSpw2GTEJe', '1998-05-05', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:44', '2024-05-08 12:14:44', NULL),
(69, 'user', 'zam5Eu', 'Dr. Glenda Lang', 'jarrod.romaguera', 'ubaldo.runte@example.net', '239.714.7165', '$2y$12$e1IuLJVCGJ9L5bk.fhFZBuIkcTDn/I6L5ovXZ/bL43O6kh.BkUaQO', '2014-02-27', NULL, '2024-04-24 16:31:37', NULL, NULL, NULL, '2024-05-08 12:14:45', '2024-05-08 12:14:45', NULL),
(70, 'user', 'IRpHqt', 'Louisa Daugherty II', 'turner.ansel', 'vivienne.strosin@example.org', '+1-740-798-3601', '$2y$12$Tz4XzF/whOlG/uodC42wxe0ItTT2i9WvRkmxZshlSqQ/DAijqjpku', '1982-12-21', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:45', '2024-05-08 12:14:45', NULL),
(71, 'agent', 'wukr7q', 'Isidro Langworth', 'joanne56', 'lpfeffer@example.net', '+1-458-878-0101', '$2y$12$VN7Jx/5D8Wls.UjdX25k4unoeleq/QORjhoSqf/Oqvh4a7SYpHysm', '2012-04-14', NULL, '2024-04-30 23:35:29', NULL, NULL, NULL, '2024-05-08 12:14:45', '2024-05-08 12:14:45', NULL),
(72, 'user', 'MNXH6s', 'Michaela Jast', 'ncremin', 'carole.schimmel@example.com', '415-261-1806', '$2y$12$djIdpfJ70TsgzwT99CtC2.WqbaYUgNuwltCP3boUoGZJHa0WBqM4i', '2016-10-07', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:45', '2024-05-08 12:14:45', NULL),
(73, 'user', 'Sm6Djf', 'Mathias Huels', 'aditya87', 'dejuan.witting@example.net', '629.897.0909', '$2y$12$RmTHhyOGOvk7J4Q1F3dLnOBexdyy0QP7Zg0EgAdxMeb/JHNy15rD2', '1972-05-26', NULL, '2024-05-03 14:18:10', NULL, NULL, NULL, '2024-05-08 12:14:46', '2024-05-08 12:14:46', NULL),
(74, 'user', '03K6MF', 'Katlyn Lesch', 'otho.pouros', 'kelton60@example.net', '386-634-1049', '$2y$12$Ad.wJMsjD1rZnSOBkCgi0u0RBnFyh6RNb4UaZVMnCIYKNE8e/2zai', '1998-07-18', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:46', '2024-05-08 12:14:46', NULL),
(75, 'admin', 'dAoL5h', 'Eden O\'Hara', 'modesta12', 'dell.wolff@example.org', '720-529-0420', '$2y$12$Yt4Cs66SSTCvlRJBCOKnh.BHflna3WSXPymwn4UXETa2/Md6H0gEy', '1978-08-12', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:46', '2024-05-08 12:14:46', NULL),
(76, 'user', 'nTD61O', 'Dr. Hoyt Feest', 'rutherford.juvenal', 'gilberto.deckow@example.net', '504-797-2316', '$2y$12$eV33wPelEPJXJLZHNhSOjOhqyCeBaLRwW9qRoyRtAQwLITBNl0c2a', '2021-07-18', NULL, '2024-04-08 21:03:59', NULL, NULL, NULL, '2024-05-08 12:14:46', '2024-05-08 12:14:46', NULL),
(77, 'user', 'Lo0rZs', 'Lacy Koch', 'lang.mireille', 'ykemmer@example.org', '479-758-2035', '$2y$12$Of8py9E7k1bfyiGTzn/M8e.Q14ZwDS89mhvRoVMD35Tb17UjAksVm', '1987-05-14', NULL, '2024-05-03 18:28:47', NULL, NULL, NULL, '2024-05-08 12:14:46', '2024-05-08 12:14:46', NULL),
(78, 'agent', 'ys1SmC', 'Jordy Beer', 'ava.goodwin', 'ubeier@example.net', '1-323-689-1672', '$2y$12$ujcCMpzBIfGchdYzERKgAeCL5wYp0wVjwfld3jTQW7PcFv3OPMiEm', '2004-10-30', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:47', '2024-05-08 12:14:47', NULL),
(79, 'agent', '7EUFmr', 'Alfredo Sanford', 'obednar', 'nienow.ezra@example.net', '667-284-1387', '$2y$12$DTYrVcDymqVmNljkkaqrNuci49Rw9VG1mS6wBxz0iqLo420jyGMae', '1970-03-28', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:47', '2024-05-08 12:14:47', NULL),
(80, 'user', 'I5WoS8', 'Mrs. Breana Leuschke MD', 'irwin47', 'vonrueden.lynn@example.net', '(218) 486-0566', '$2y$12$dafVdTEb/asvIPYpYqvLH.m6Hma5kxDKsBSxUR7RVLl/PWkReJg3y', '2003-02-02', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:47', '2024-05-08 12:14:47', NULL),
(81, 'user', 'yIj5wW', 'Abel Dickens', 'minnie.friesen', 'lauryn.muller@example.net', '(878) 352-1566', '$2y$12$5JdD/PbpK/ZXPm31OJu2AuALzDnWEshiNVJ7.TAGMEwaEfWrFntCe', '2004-06-29', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:47', '2024-05-08 12:14:47', NULL),
(82, 'agent', 'i9kp8f', 'Jenifer Donnelly', 'tressa03', 'chadd.langosh@example.org', '+1-283-302-8389', '$2y$12$LrJ6AdOTxhqWD21QsFKgrerXgC04DAdaotkfOJUQpQe4cDrDXtPrS', '1972-07-04', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:47', '2024-05-08 12:14:47', NULL),
(83, 'agent', 'tGMVZT', 'Prof. Michelle Schmitt DVM', 'gutkowski.reymundo', 'zgorczany@example.net', '+1 (347) 671-0528', '$2y$12$PEsbdUIh3ZJ4ewMvKzBBTutn5gUD8UZIx.z0u9O.vRGEsOBFRTiwa', '1993-09-22', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:48', '2024-05-08 12:14:48', NULL),
(84, 'admin', '318My7', 'Jennyfer Koelpin', 'ruben.morar', 'yundt.elsie@example.org', '1-980-662-1307', '$2y$12$NoFh3BNAlmS3V8WDN.jeyexMq0kzYLgDGAgiARyxEUNFeYj5U9hYe', '2003-08-11', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:48', '2024-05-08 12:14:48', NULL),
(85, 'admin', 'x2m2B7', 'Christina O\'Hara', 'favian88', 'olson.ewald@example.org', '272-420-5242', '$2y$12$LoTp1IeizxYVQu1s80fLnOedkA3xNi9oiVPeNjXjXaG5Q8yws7LOG', '1990-10-18', NULL, '2024-04-15 19:10:47', NULL, NULL, NULL, '2024-05-08 12:14:48', '2024-05-08 12:14:48', NULL),
(86, 'user', 'gN98SI', 'Prof. Kelley Swift Sr.', 'hickle.austin', 'lubowitz.roselyn@example.org', '715-669-3047', '$2y$12$SpZ6owxN0BMg6qVI8jhEQOp5KqoHE5ySIo54L/5LCIQjFwkVtbrLW', '1971-07-23', NULL, '2024-04-12 18:19:50', NULL, NULL, NULL, '2024-05-08 12:14:48', '2024-05-08 12:14:48', NULL),
(87, 'agent', 'crm5kk', 'Lura Prohaska DDS', 'schoen.allan', 'kilback.meagan@example.com', '725.394.9339', '$2y$12$n30hlqB9d3YK3bdvKtdDdO84NNH2397AK2XKNnstFoMnv9rO5iRiy', '1979-07-23', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:48', '2024-05-08 12:14:48', NULL),
(88, 'agent', '8y9W6s', 'Reginald Abshire', 'piper17', 'trantow.loy@example.com', '+19013492986', '$2y$12$WiRmb6H1/GdLjhGkMRW2b.fRIBOBszPFt0nlH93BR7yJL3v7gygdK', '2008-09-03', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:49', '2024-05-08 12:14:49', NULL),
(89, 'admin', 'l9VCto', 'Theresia Hartmann', 'jennyfer.kling', 'ziemann.walton@example.org', '469-694-3748', '$2y$12$j1M87pA1dauqtGGWJSLPluzwqsZdjtXIgflKSJk5RNKecfOvGxFTu', '1973-05-24', NULL, '2024-04-26 08:30:46', NULL, NULL, NULL, '2024-05-08 12:14:49', '2024-05-08 12:14:49', NULL),
(90, 'user', '9BMy6C', 'Brooklyn Gottlieb', 'lemke.bell', 'beer.newton@example.org', '281.302.3536', '$2y$12$Izwxv0GIm6fhNf523w8m3.rIPDsib4BVHX21xja3KR3wlJdNusayu', '2001-08-18', NULL, '2024-04-28 22:20:03', NULL, NULL, NULL, '2024-05-08 12:14:49', '2024-05-08 12:14:49', NULL),
(91, 'user', 'blrUwF', 'Katelynn White', 'owen59', 'lschaden@example.net', '(669) 286-6216', '$2y$12$w3y3qTb2ECvOWkZvY1N4pOKMupUXPVbIj3Yerkvs/.sTKL0aeLxVi', '1996-02-23', NULL, '2024-04-15 14:29:57', NULL, NULL, NULL, '2024-05-08 12:14:49', '2024-05-08 12:14:49', NULL),
(92, 'admin', '39VozQ', 'Helene Tillman', 'ymoen', 'jones.lyla@example.com', '(239) 201-2261', '$2y$12$pgP9EQ4EU6Ctqu75XABd8uKiM.rB.9VMNGE.RnF/HB9ixdXd.oTjK', '2002-03-07', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:49', '2024-05-08 12:14:49', NULL),
(93, 'user', 'lG1v7u', 'Penelope Cole', 'schuster.reggie', 'xhayes@example.net', '+15867227365', '$2y$12$a7h2PJLzEOSasw8lqW11qO.8rRvCwFFS6oYyDP8KWmjZtiExWcVZO', '1998-10-03', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:50', '2024-05-08 12:14:50', NULL),
(94, 'agent', '7oausj', 'Mr. Drake Kozey', 'raymond.harvey', 'lera18@example.net', '281-659-7483', '$2y$12$v9jmUtUkdCZekAV4vpvXfuawR.gzFGnmgUbZVyZkssbfNAPwPMFvS', '2017-06-05', NULL, '2024-04-29 21:06:33', NULL, NULL, NULL, '2024-05-08 12:14:50', '2024-05-08 12:14:50', NULL),
(95, 'admin', 'jlK16L', 'Prof. Ubaldo Klein', 'qcarter', 'keyon36@example.net', '1-520-819-1706', '$2y$12$a2HXjwUHKVMEgVkzVrPpGe16j43xfR8R22V0h78IWabvpIOPFsFNy', '2003-05-24', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:50', '2024-05-08 12:14:50', NULL),
(96, 'agent', 'yq8OYA', 'Ms. Elisa Jones Sr.', 'rogelio52', 'rosenbaum.jaida@example.org', '(615) 581-2601', '$2y$12$OmXX0EaeTW4Z7TY5W9SV.ewOjCagSVq67WwZHNgeajrgzja9RFsoK', '2014-03-15', NULL, '2024-04-30 00:04:42', NULL, NULL, NULL, '2024-05-08 12:14:50', '2024-05-08 12:14:50', NULL),
(97, 'user', 'TvC43O', 'Georgette Mitchell', 'bayer.beau', 'adickinson@example.net', '1-651-635-7094', '$2y$12$CR1WBT.80PdRE4JKbJCam.OSV9hRFnjcF.8D.D.4ADIsm3EPO0tN.', '1986-12-10', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:50', '2024-05-08 12:14:50', NULL),
(98, 'user', 'dkNYrx', 'Ron Trantow DDS', 'murazik.sabrina', 'drau@example.org', '+1 (985) 863-0602', '$2y$12$.99UTEHI0SnkqBlXErlW0uIvjKCHqzIPKphTiomFEe/ABf9GqTRPO', '2021-05-16', NULL, '2024-05-05 23:46:29', NULL, NULL, NULL, '2024-05-08 12:14:51', '2024-05-08 12:14:51', NULL),
(99, 'agent', '2rdp6F', 'Hildegard Streich', 'casimir.greenholt', 'khalid11@example.com', '2512521412', '$2y$12$9hd4lydQIan4M3PXGL7Qf.0eqYGXa0X1QP.x6NLqqsvVXFl0Otgc.', '1992-05-03', NULL, '2024-04-20 03:57:43', NULL, NULL, NULL, '2024-05-08 12:14:51', '2024-05-12 13:26:22', NULL),
(100, 'agent', 'O7JQCz', 'Raul Smithamm', 'dlowe', 'pwilkinson1@example.com', '4343434343', '$2y$12$zIbvfGrSU2mh/0Yc/m75v.kKeywZrdZ3zNmCMLr7cz7i7bRJ9KrmS', '1981-03-31', NULL, '2024-04-13 19:23:38', NULL, NULL, NULL, '2024-05-08 12:14:51', '2024-05-12 13:25:29', NULL),
(101, 'user', 'Xfe1r1', 'Matt Wunsch Sr.', 'lily.jaskolski', 'billie.thompson@example.com', '917.954.6854', '$2y$12$OCghiGwPuXWHFwy2ovTL1OMXbVZzpcL1HTIaMT4t6tZcYRrcG.iby', '2009-09-30', NULL, NULL, NULL, NULL, NULL, '2024-05-08 12:14:51', '2024-05-08 12:14:51', NULL),
(102, 'user', NULL, 'Abhishek', 'abhishek', 'abhishek@gmail.com', '9999999999', '$2y$12$nXeg6AC5GIuDZlonNJzCvOlBGhMRoRI70YlaEyTSmbwfol1y4jhGO', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-09 12:20:46', '2024-05-09 12:20:46', NULL),
(103, 'user', NULL, 'Abhishek Vishwakarma', 'abhi', 'abhishekvvvvv@gmail.com', '8369045771', '$2y$12$kULkCL.06aba1WoO8g87B.cmMgLBe917LUlQRhDvtw2lKzdamDbG.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-09 12:21:48', '2024-05-09 12:21:48', NULL),
(104, 'user', 'MG8V6V', 'Abhishek Vishwakarma', 'abhishek1', 'abhishek+1@gmail.com', '8369045771', '$2y$12$hSiU/XXYIlzsFbFoevjGHuxG7TgMLNrrR0ghUPwa9jzMCG.1qqlae', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-09 12:27:56', '2024-05-09 12:27:56', NULL),
(105, 'user', 'MWHDGS', 'Abhishek Vishwakarma', 'abhishek2', 'abhishek2@gmail.com', '8369045771', '$2y$12$GuAhWoUcxGlYCFnLkICV3u5tb9uQxQJaqoNANPGTzPdZ2I7QfVPB2', '2024-01-30', NULL, NULL, NULL, NULL, NULL, '2024-05-09 12:31:58', '2024-05-12 13:16:47', NULL),
(106, 'user', 'YOIPJJ', 'Akshay', 'akshay', 'akshay@gmail.com', '8545854741', '$2y$12$ASTsHksYBYJ3V/2aGm0I9eb0Dd50NygQcZCHhCrfHhWmr4EmRqF2C', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 13:29:51', '2024-05-12 13:29:51', NULL),
(107, 'user', 'EXTNI1', 'John', 'john', 'john@gmail.com', '8596585474', '$2y$12$gi6lulRww0RkeGwjJrcYr.Zf7rrmEGHKoONfopfVCXf5IVy3u15X.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 13:30:27', '2024-05-12 13:30:27', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
