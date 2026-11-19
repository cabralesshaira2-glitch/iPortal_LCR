-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2026 at 07:02 AM
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
-- Database: `iportal_lcr_birth_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `record_id` int(10) UNSIGNED DEFAULT NULL,
  `action` varchar(80) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `record_id`, `action`, `ip_address`, `created_at`) VALUES
(1, 1, NULL, 'login', '::1', '2026-11-18 12:57:17'),
(2, 1, NULL, 'login', '::1', '2026-11-18 13:00:44'),
(3, 1, 1, 'record_created', '::1', '2026-11-18 13:17:20'),
(4, 1, 1, 'record_viewed', '::1', '2026-11-18 13:17:20'),
(5, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:17:28'),
(6, 1, 1, 'record_viewed', '::1', '2026-11-18 13:23:17'),
(7, 1, 1, 'record_viewed', '::1', '2026-11-18 13:23:31'),
(8, 1, NULL, 'logout', '::1', '2026-11-18 13:28:37'),
(9, 1, NULL, 'login', '::1', '2026-11-18 13:35:12'),
(10, 1, NULL, 'logout', '::1', '2026-11-18 13:36:08'),
(11, 1, NULL, 'login', '::1', '2026-11-18 13:37:52'),
(12, 1, NULL, 'user_created', '::1', '2026-11-18 13:39:58'),
(13, 1, 1, 'record_viewed', '::1', '2026-11-18 13:41:46'),
(14, 1, 1, 'record_viewed', '::1', '2026-11-18 13:42:07'),
(15, 1, 1, 'record_viewed', '::1', '2026-11-18 13:42:26'),
(16, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:42:28'),
(17, 1, 1, 'record_viewed', '::1', '2026-11-18 13:43:14'),
(18, 1, 1, 'record_viewed', '::1', '2026-11-18 13:53:54'),
(19, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:54:14'),
(20, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:54:35'),
(21, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:55:53'),
(22, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:55:54'),
(23, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:55:54'),
(24, 1, 1, 'record_viewed', '::1', '2026-11-18 13:57:18'),
(25, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:57:21'),
(26, 1, 1, 'record_viewed', '::1', '2026-11-18 13:57:40'),
(27, 1, 1, 'record_updated', '::1', '2026-11-18 13:57:44'),
(28, 1, 1, 'record_viewed', '::1', '2026-11-18 13:57:44'),
(29, 1, 1, 'form1a_printed', '::1', '2026-11-18 13:57:46'),
(30, 1, NULL, 'login', '::1', '2026-11-19 04:51:38'),
(31, 1, 1, 'record_viewed', '::1', '2026-11-19 04:53:53'),
(32, 1, 1, 'form1a_printed', '::1', '2026-11-19 04:53:55'),
(33, 1, 1, 'record_viewed', '::1', '2026-11-19 04:55:27'),
(34, 1, NULL, 'logout', '::1', '2026-11-19 04:55:53'),
(35, 1, NULL, 'login', '::1', '2026-11-19 04:57:25'),
(36, 1, NULL, 'user_deactivated', '::1', '2026-11-19 05:00:27'),
(37, 1, NULL, 'logout', '::1', '2026-11-19 05:02:28'),
(38, 1, NULL, 'login', '::1', '2026-11-19 05:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `birth_records`
--

CREATE TABLE `birth_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `registry_number` varchar(50) DEFAULT NULL,
  `child_first_name` varchar(100) NOT NULL,
  `child_middle_name` varchar(100) DEFAULT NULL,
  `child_last_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `birth_time` time DEFAULT NULL,
  `birth_place` varchar(255) NOT NULL,
  `sex` enum('female','male','undetermined') NOT NULL,
  `mother_full_name` varchar(200) NOT NULL,
  `mother_birth_date` date DEFAULT NULL,
  `mother_birth_place` varchar(200) DEFAULT NULL,
  `mother_citizenship` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(150) DEFAULT NULL,
  `father_full_name` varchar(200) DEFAULT NULL,
  `father_birth_date` date DEFAULT NULL,
  `father_birth_place` varchar(200) DEFAULT NULL,
  `father_citizenship` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(150) DEFAULT NULL,
  `parents_marital_status` enum('married','unmarried') NOT NULL,
  `marriage_date` date DEFAULT NULL,
  `marriage_place` varchar(200) DEFAULT NULL,
  `informant_name` varchar(200) NOT NULL,
  `informant_relationship` varchar(100) NOT NULL,
  `informant_address` text NOT NULL,
  `status` enum('draft','for_review','approved') NOT NULL DEFAULT 'draft',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `birth_records`
--

INSERT INTO `birth_records` (`id`, `registry_number`, `child_first_name`, `child_middle_name`, `child_last_name`, `birth_date`, `birth_time`, `birth_place`, `sex`, `mother_full_name`, `mother_birth_date`, `mother_birth_place`, `mother_citizenship`, `mother_occupation`, `father_full_name`, `father_birth_date`, `father_birth_place`, `father_citizenship`, `father_occupation`, `parents_marital_status`, `marriage_date`, `marriage_place`, `informant_name`, `informant_relationship`, `informant_address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2026-000001', 'Crisnamie', 'Cabalida', 'Aragon', '2004-06-18', '10:04:00', 'baguitan,Guipos zamboanga del sur', 'female', 'Miraflor Cabalida Aragon', '1980-03-27', 'dumalinao ZAMBOANGA DEL SUR', 'filipino', 'house wife', 'Crissinte decosto Aragon', '1997-09-28', 'kalasan pagadian city', 'filipino', 'farmer', 'married', NULL, 'Pagadian city', 'Miraflor C. Aragon', 'Daugther', 'M7F4+P9Q\r\nLantawan', 'draft', 1, 1, '2026-11-18 13:17:20', '2026-11-18 13:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `document_requirements`
--

CREATE TABLE `document_requirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(220) NOT NULL,
  `marital_scope` enum('all','married','unmarried') NOT NULL DEFAULT 'all',
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `record_documents`
--

CREATE TABLE `record_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `requirement_id` int(10) UNSIGNED DEFAULT NULL,
  `original_name` varchar(255) NOT NULL,
  `stored_name` char(64) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `file_size` int(10) UNSIGNED NOT NULL,
  `uploaded_by` int(10) UNSIGNED NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registry_sequences`
--

CREATE TABLE `registry_sequences` (
  `registration_year` smallint(5) UNSIGNED NOT NULL,
  `last_number` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registry_sequences`
--

INSERT INTO `registry_sequences` (`registration_year`, `last_number`, `updated_at`) VALUES
(2026, 1, '2026-11-18 13:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(160) NOT NULL,
  `username` varchar(80) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','registrar') NOT NULL DEFAULT 'registrar',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password_hash`, `role`, `created_at`, `is_active`) VALUES
(1, 'admin', 'admin', '$2y$10$TEK30OECoSI5e9izjEmeTu84qjgstkFw/kLNLaRTO.t1fU6tFQUii', 'admin', '2026-11-18 12:57:02', 1),
(2, 'staff', 'staff', '$2y$10$WMiJv65U2I/XZLVUB95eq.x0GgTyIb82ohhcVcugOtQ7zVCuNyDUm', 'registrar', '2026-11-18 13:39:58', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_audit_user` (`user_id`),
  ADD KEY `idx_audit_record` (`record_id`,`created_at`);

--
-- Indexes for table `birth_records`
--
ALTER TABLE `birth_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registry_number` (`registry_number`),
  ADD KEY `fk_birth_created_by` (`created_by`),
  ADD KEY `fk_birth_updated_by` (`updated_by`),
  ADD KEY `idx_child_name` (`child_last_name`,`child_first_name`),
  ADD KEY `idx_birth_date` (`birth_date`),
  ADD KEY `idx_registry_number` (`registry_number`);

--
-- Indexes for table `document_requirements`
--
ALTER TABLE `document_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_requirement_user` (`created_by`),
  ADD KEY `idx_requirement_scope` (`active`,`marital_scope`,`sort_order`);

--
-- Indexes for table `record_documents`
--
ALTER TABLE `record_documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stored_name` (`stored_name`),
  ADD KEY `fk_document_requirement` (`requirement_id`),
  ADD KEY `fk_document_user` (`uploaded_by`),
  ADD KEY `idx_document_record` (`record_id`);

--
-- Indexes for table `registry_sequences`
--
ALTER TABLE `registry_sequences`
  ADD PRIMARY KEY (`registration_year`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `birth_records`
--
ALTER TABLE `birth_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `document_requirements`
--
ALTER TABLE `document_requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record_documents`
--
ALTER TABLE `record_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_record` FOREIGN KEY (`record_id`) REFERENCES `birth_records` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `birth_records`
--
ALTER TABLE `birth_records`
  ADD CONSTRAINT `fk_birth_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_birth_updated_by` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `document_requirements`
--
ALTER TABLE `document_requirements`
  ADD CONSTRAINT `fk_requirement_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `record_documents`
--
ALTER TABLE `record_documents`
  ADD CONSTRAINT `fk_document_record` FOREIGN KEY (`record_id`) REFERENCES `birth_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_document_requirement` FOREIGN KEY (`requirement_id`) REFERENCES `document_requirements` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
