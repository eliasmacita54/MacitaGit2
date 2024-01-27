-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2024 at 08:19 PM
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
-- Database: `school.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '7 Classe', 1, 0, 1, '2024-01-16 01:12:52', '2024-01-16 01:42:55'),
(2, '8 Classe', 1, 0, 1, '2024-01-16 01:24:06', '2024-01-16 01:24:06'),
(3, '9 Classe', 1, 0, 1, '2024-01-16 01:24:22', '2024-01-16 01:24:22'),
(4, '10 classe', 1, 0, 1, '2024-01-16 01:24:28', '2024-01-16 01:24:28'),
(5, '11 Classe', 1, 0, 1, '2024-01-16 01:24:41', '2024-01-16 01:24:41'),
(6, '12 Classe', 1, 0, 1, '2024-01-16 01:24:49', '2024-01-24 15:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 5, 1, 0, 0, '2024-01-18 10:19:19', '2024-01-18 11:09:06'),
(7, 1, 3, 1, 0, 0, '2024-01-18 10:19:19', '2024-01-18 11:07:54'),
(8, 6, 6, 1, 0, 0, '2024-01-18 11:10:58', '2024-01-18 11:11:43'),
(9, 6, 5, 1, 0, 0, '2024-01-18 11:10:58', '2024-01-18 11:11:34'),
(10, 6, 7, 1, 1, 1, '2024-01-18 11:10:58', '2024-01-18 11:13:17'),
(11, 6, 3, 1, 0, 0, '2024-01-18 11:10:58', '2024-01-18 11:11:21');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:inactive,1:active',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not , 1:Yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Matematics2', 'Pratical', 1, 0, 1, '2024-01-16 02:51:24', '2024-01-16 02:51:48'),
(2, 'Matematics2', 'Pratical', 1, 0, 1, '2024-01-16 02:51:58', '2024-01-16 02:58:11'),
(3, 'Matematics', 'Pratical', 1, 1, 0, '2024-01-16 19:46:24', '2024-01-17 23:26:01'),
(4, 'Portugues', 'Theory', 1, 1, 1, '2024-01-16 02:58:34', '2024-01-16 02:58:40'),
(5, 'English', 'Theory', 1, 1, 0, '2024-01-16 02:59:06', '2024-01-16 02:59:06'),
(6, 'CS', 'Theory', 1, 1, 0, '2024-01-18 11:09:40', '2024-01-18 11:10:44'),
(7, 'HIST', 'Theory', 1, 1, 0, '2024-01-18 11:10:09', '2024-01-18 11:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `admission_number` varchar(50) DEFAULT NULL,
  `roll_number` varchar(50) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(50) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `mobile_number` int(13) DEFAULT NULL,
  `adminssion_date` date DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1:admin, 2:teacher, 3:student, 4:parent',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not deleted; 1 : deleted',
  `status` tinyint(4) DEFAULT 0 COMMENT '0:active; 1:inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `admission_number`, `roll_number`, `class_id`, `gender`, `date_of_birth`, `caste`, `religion`, `mobile_number`, `adminssion_date`, `profile_pic`, `blood_group`, `height`, `weight`, `user_type`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, 'admin@gmail.com', NULL, '$2y$12$YyZ6lPSNoKjBfWNyppWWh.G9nhvxro2HBAJMcW7asNrCwu6hLaRoa', 'o3mW1dHmbiwnXIjb7qxjgRmOGaPuyKhsBWM5RUAwZlU25Crpqkg6w1oTgN3M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2024-01-11 10:48:43', '2024-01-18 20:33:00'),
(2, 'Teacher', NULL, 'teacher@gmail.com', NULL, '$2y$12$ph/4aY8DAzXhUjpAK3I4S.DHxxiQvAASSyfdxpNN4QCM83I15ZHCu', 'WTVzKg482k2mlHeRveKLkf7IvhfVK710I6mfqp5AORFUNcXFmqq61kp7LEOn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, '2024-01-11 10:48:43', '2024-01-11 10:48:43'),
(3, 'School', NULL, 'student@gmail.com', NULL, '$2y$12$rOnDGvx7IWVQPKmod7ET..S2a1j1.qkwTumlLfmodiVMN3aAXubXC', 'RI5gSBzKcrzR9TN9nfZ2C8Uza0k6E5GvQPSRkPNQTelpqB3zyint9w7kA34o', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, '2024-01-11 10:48:43', '2024-01-25 16:37:01'),
(4, 'Parent', NULL, 'parent@gmail.com', NULL, '$2y$12$0w4o9.wOTSFKp6mFdfMOZeMmmK/HUagWZVEC/kI7G9IR2Nvr5IcU.', 'cqXw6sKfV4xPoXOtqwpLbhoN6ftXUz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, '2024-01-11 10:48:43', '2024-01-12 15:19:06'),
(10, 'Elias Macita', NULL, 'eliasmacita54@gmail.com', NULL, '$2y$12$QxYA0OocstJHBq6i6NlOe.ILc3n2.Agspy/uOWlrjnjysLRtFgpUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '2024-01-12 20:05:39', '2024-01-12 20:08:09'),
(19, 'Elias', 'Macita', 'student2@gmail.com', NULL, '$2y$12$sFwHajWGSxCM8nvQkBTcserXDlgfazHlbrycHo3hfrHU.Sq12K3N.', NULL, '12345', '123434', 1, '0', '2024-01-11', 'ads', NULL, NULL, '2024-01-25', NULL, 'asdf', '1.60', '40.4', 3, 0, 0, '2024-01-18 22:43:01', '2024-01-18 22:43:01'),
(23, 'alex', 'a', 'student3@gmail.com', NULL, '$2y$12$Ez0K13s9hyTlCag.PxyZtuHF6ba/B2NKYuoasRpJsA.pnpLlckDTm', NULL, '12345', '123434', 5, '0', '2024-01-01', 'sadds', 'cristan', 847141165, '2024-01-08', 'ue8yxxmnk82dicbkw9km.jpg', 'asdf', '1.60', '40.4', 3, 0, 0, '2024-01-18 23:05:15', '2024-01-18 23:05:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
