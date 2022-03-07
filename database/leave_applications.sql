-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 12:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kodiinit_hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leaveType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `halfDayType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_updated_by` int(10) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `days` int(11) NOT NULL,
  `applied_on` date DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `application_status` enum('approved','rejected','pending') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `company_id`, `employee_id`, `leaveType`, `halfDayType`, `last_updated_by`, `start_date`, `end_date`, `days`, `applied_on`, `reason`, `application_status`, `created_at`, `updated_at`) VALUES
(1, 7, 50, 'Annual', 'no', NULL, '2021-11-19', NULL, 1, '2021-11-17', 'Travel', 'approved', '2021-11-17 16:51:35', '2021-11-17 17:01:26'),
(2, 7, 50, 'Annual', 'no', NULL, '2021-11-22', NULL, 1, '2021-11-17', 'Travel', 'approved', '2021-11-17 16:51:35', '2021-11-17 17:01:17'),
(3, 7, 50, 'Academic Leave', 'no', NULL, '2021-11-26', NULL, 1, '2021-11-19', 'Exams', 'approved', '2021-11-19 17:58:41', '2021-11-19 17:59:55'),
(4, 7, 50, 'Annual', 'no', NULL, '2021-12-23', NULL, 1, '2021-12-21', 'Annual', 'approved', '2021-12-21 18:06:16', '2021-12-21 18:11:27'),
(5, 7, 50, 'Academic Leave', 'no', NULL, '2022-01-11', NULL, 1, '2022-01-07', 'Exams', 'approved', '2022-01-07 17:52:56', '2022-01-07 17:54:31'),
(6, 7, 50, 'Annual', NULL, NULL, '2022-01-21', '2022-01-25', 5, '2022-01-20', 'test', 'approved', '2022-01-20 20:00:28', '2022-01-20 20:01:43'),
(7, 7, 50, 'Sick Leave', 'yes', NULL, '2022-03-02', NULL, 1, '2022-03-02', 'Sick', 'approved', '2022-03-02 17:55:20', '2022-03-02 18:13:09'),
(8, 7, 50, 'Sick Leave', 'yes', NULL, '2022-03-03', NULL, 1, '2022-03-02', 'Sick', 'approved', '2022-03-02 18:03:24', '2022-03-03 16:46:56'),
(9, 7, 50, 'Annual', 'yes', NULL, '2022-03-03', NULL, 1, '2022-03-02', 'Sick', 'approved', '2022-03-02 18:09:15', '2022-03-03 16:47:53'),
(10, 7, 50, 'Sick Leave', 'yes', NULL, '2022-03-04', NULL, 1, '2022-03-04', '', 'approved', '2022-03-04 07:30:53', '2022-03-04 07:57:34'),
(11, 7, 50, 'Sick Leave', 'yes', NULL, '2022-03-04', NULL, 1, '2022-03-04', '', 'pending', '2022-03-04 07:31:13', '2022-03-04 07:31:13'),
(12, 7, 52, 'Sick Leave', 'no', NULL, '2022-03-05', NULL, 1, '2022-03-04', '', 'pending', '2022-03-04 07:32:32', '2022-03-04 07:32:32'),
(13, 7, 52, 'Academic Leave', 'no', NULL, '2022-03-17', NULL, 1, '2022-03-04', '', 'pending', '2022-03-04 07:40:35', '2022-03-04 07:40:35'),
(14, 7, 52, 'Academic Leave', 'no', NULL, '2022-03-17', NULL, 1, '2022-03-04', 'Sick', 'pending', '2022-03-04 07:40:41', '2022-03-04 07:40:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_applications_company_id_foreign` (`company_id`),
  ADD KEY `leave_applications_employee_id_foreign` (`employee_id`),
  ADD KEY `leave_applications_leavetype_index` (`leaveType`),
  ADD KEY `leave_applications_halfdaytype_index` (`halfDayType`),
  ADD KEY `leave_applications_last_updated_by_foreign` (`last_updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leave_applications_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `leave_applications_last_updated_by_foreign` FOREIGN KEY (`last_updated_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
