-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 09:42 AM
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
-- Database: `ohmcccc`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_queues`
--

CREATE TABLE `action_queues` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `event` varchar(191) NOT NULL,
  `requested_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action_queues`
--

INSERT INTO `action_queues` (`id`, `device_id`, `event`, `requested_at`, `started_at`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'update-content', '2024-04-25 07:27:18', NULL, NULL, '2024-04-25 07:27:18', '2024-04-25 07:27:18'),
(2, 3, 'update-content', NULL, NULL, NULL, '2024-04-25 07:27:18', '2024-04-25 07:27:18'),
(3, 4, 'update-content', NULL, NULL, NULL, '2024-04-25 07:27:18', '2024-04-25 07:27:18'),
(4, 5, 'update-content', NULL, NULL, NULL, '2024-04-25 07:27:18', '2024-04-25 07:27:18'),
(5, 6, 'update-content', NULL, NULL, NULL, '2024-04-25 07:27:18', '2024-04-25 07:27:18');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_name` varchar(191) NOT NULL,
  `log_type` varchar(191) NOT NULL,
  `data` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `organization_id`, `user_id`, `table_name`, `log_type`, `data`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'zones', 'created', 'A New Zone Added with name United Arab Emirates', '2022-09-06 20:06:35', '2022-09-06 20:06:35'),
(2, 3, 1, 'cities', 'created', 'A New City Added with name Dubai', '2022-09-06 20:06:55', '2022-09-06 20:06:55'),
(3, 3, 1, 'branches', 'created', 'A New Branch Added with name Samsung DCC', '2022-09-06 20:07:49', '2022-09-06 20:07:49'),
(4, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name Samsung', '2022-09-06 20:08:24', '2022-09-06 20:08:24'),
(5, 3, 1, 'cities', 'updated', 'N/A', '2022-09-06 20:09:33', '2022-09-06 20:09:33'),
(6, 3, 1, 'branches', 'updated', 'N/A', '2022-09-06 20:09:54', '2022-09-06 20:09:54'),
(7, 3, 1, 'device-groups', 'updated', 'N/A', '2022-09-06 20:10:07', '2022-09-06 20:10:07'),
(8, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name Samsung', '2022-09-22 21:31:40', '2022-09-22 21:31:40'),
(9, 3, 1, 'cities', 'deleted', 'Device Group named Samsung is deleted', '2022-09-22 21:31:45', '2022-09-22 21:31:45'),
(10, 3, 1, 'cities', 'created', 'A New City Added with name Sharjah', '2022-09-30 22:26:16', '2022-09-30 22:26:16'),
(11, 3, 1, 'zones', 'created', 'A New Zone Added with name Qatar', '2022-10-19 17:45:40', '2022-10-19 17:45:40'),
(12, 3, 1, 'zones', 'deleted', 'Zone named Qatar is deleted', '2022-10-19 17:46:03', '2022-10-19 17:46:03'),
(13, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name Dubai Mall', '2022-10-19 18:51:42', '2022-10-19 18:51:42'),
(14, 3, 1, 'zones', 'created', 'A New Zone Added with name Qatar', '2022-10-19 18:52:22', '2022-10-19 18:52:22'),
(15, 3, 1, 'cities', 'created', 'A New City Added with name Doha', '2022-10-19 18:52:31', '2022-10-19 18:52:31'),
(16, 3, 1, 'branches', 'created', 'A New Branch Added with name Mall No 1', '2022-10-19 18:53:03', '2022-10-19 18:53:03'),
(17, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name Inside', '2022-10-19 18:53:15', '2022-10-19 18:53:15'),
(18, 3, 1, 'cities', 'updated', 'N/A', '2022-10-19 18:53:26', '2022-10-19 18:53:26'),
(19, 3, 1, 'branches', 'updated', 'N/A', '2022-10-19 18:53:35', '2022-10-19 18:53:35'),
(20, 3, 1, 'device-groups', 'updated', 'N/A', '2022-10-19 18:53:42', '2022-10-19 18:53:42'),
(21, 3, 1, 'cities', 'created', 'A New City Added with name North', '2022-10-19 18:59:44', '2022-10-19 18:59:44'),
(22, 3, 1, 'cities', 'created', 'A New City Added with name Abu Dhabi', '2022-10-19 19:00:12', '2022-10-19 19:00:12'),
(23, 3, 1, 'cities', 'created', 'A New City Added with name Sharjah', '2022-10-19 19:00:18', '2022-10-19 19:00:18'),
(24, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Template 1', '2022-10-19 19:18:03', '2022-10-19 19:18:03'),
(25, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Template 1', '2022-10-19 19:18:29', '2022-10-19 19:18:29'),
(26, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Template 2', '2022-10-19 19:20:04', '2022-10-19 19:20:04'),
(27, 3, 1, 'schedules', 'created', 'Template Template 1 is Scheduled on Device x96 DSS from 10-19-2022 16:24:36 to 10-19-2022 16:24:36', '2022-10-19 19:24:44', '2022-10-19 19:24:44'),
(28, 3, 1, 'schedules', 'created', 'Template Template 2 is Scheduled on Device x96 DSS from 10-29-2022 16:25:39 to 10-29-2022 16:25:39', '2022-10-19 19:25:54', '2022-10-19 19:25:54'),
(29, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name Habib Test', '2022-11-28 01:23:54', '2022-11-28 01:23:54'),
(30, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-11 16:42:05', '2023-01-11 16:42:05'),
(31, 3, 1, 'device-template-data', 'deleted', 'Template named Bilal Ashraf is deleted', '2023-01-11 16:43:31', '2023-01-11 16:43:31'),
(32, 3, 1, 'schedules', 'created', 'Template Template 1 is Scheduled on Device x96 DSS from 01-12-2023 18:52:40 to 01-12-2023 18:52:40', '2023-01-12 08:53:00', '2023-01-12 08:53:00'),
(33, 3, 1, 'schedules', 'created', 'Template Template 1 is Scheduled on Device x96 DSS from 01-12-2023 19:56:35 to 01-12-2023 19:56:35', '2023-01-12 08:53:58', '2023-01-12 08:53:58'),
(34, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-12 14:27:12', '2023-01-12 14:27:12'),
(35, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-12 14:31:45', '2023-01-12 14:31:45'),
(36, 3, 1, 'cities', 'created', 'A New City Added with name jnb', '2023-01-24 08:36:25', '2023-01-24 08:36:25'),
(37, 3, 1, 'cities', 'created', 'A New City Added with name Lahore', '2023-01-24 08:36:40', '2023-01-24 08:36:40'),
(38, 3, 1, 'cities', 'created', 'A New City Added with name Karachi', '2023-01-24 08:36:41', '2023-01-24 08:36:41'),
(39, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 09:15:32', '2023-01-24 09:15:32'),
(40, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 09:15:32', '2023-01-24 09:15:32'),
(41, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 09:32:49', '2023-01-24 09:32:49'),
(42, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 09:32:49', '2023-01-24 09:32:49'),
(43, 3, 1, 'branches', 'created', 'A New Branch Added with name lxl;gjsdf', '2023-01-24 09:34:28', '2023-01-24 09:34:28'),
(44, 3, 1, 'branches', 'created', 'A New Branch Added with name dgfsdfgsdfgsd', '2023-01-24 09:34:28', '2023-01-24 09:34:28'),
(45, 3, 1, 'branches', 'created', 'A New Branch Added with name kkfjhskajfha', '2023-01-24 09:35:12', '2023-01-24 09:35:12'),
(46, 3, 1, 'branches', 'created', 'A New Branch Added with name asdfasdfasdf', '2023-01-24 09:35:12', '2023-01-24 09:35:12'),
(47, 3, 1, 'cities', 'created', 'A New City Added with name Islamabad', '2023-01-24 18:23:27', '2023-01-24 18:23:27'),
(48, 3, 1, 'cities', 'created', 'A New City Added with name Mulan', '2023-01-24 18:23:27', '2023-01-24 18:23:27'),
(49, 3, 1, 'branches', 'created', 'A New Branch Added with name ubl dubai', '2023-01-24 18:24:01', '2023-01-24 18:24:01'),
(50, 3, 1, 'branches', 'created', 'A New Branch Added with name hbl dubai', '2023-01-24 18:24:01', '2023-01-24 18:24:01'),
(51, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name new device group', '2023-01-24 18:24:20', '2023-01-24 18:24:20'),
(52, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(53, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(54, 3, 1, 'branches', 'created', 'A New Branch Added with name ', '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(55, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name 1', '2023-01-24 18:29:10', '2023-01-24 18:29:10'),
(56, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name 2', '2023-01-24 18:29:10', '2023-01-24 18:29:10'),
(57, 3, 1, 'device-groups', 'created', 'A New Device Group Added with name 3', '2023-01-24 18:29:10', '2023-01-24 18:29:10'),
(58, 3, 1, 'device-template-data', 'created', 'A New Template Added with name this is gallery template', '2023-01-30 09:41:55', '2023-01-30 09:41:55'),
(59, 3, 1, 'device-template-data', 'created', 'A New Template Added with name this is gallery template', '2023-01-30 09:42:54', '2023-01-30 09:42:54'),
(60, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-30 09:47:59', '2023-01-30 09:47:59'),
(61, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-30 09:53:10', '2023-01-30 09:53:10'),
(62, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Bilal Ashraf', '2023-01-30 09:57:18', '2023-01-30 09:57:18'),
(63, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-01-30 12:24:38', '2023-01-30 12:24:38'),
(64, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-01-30 12:27:05', '2023-01-30 12:27:05'),
(65, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-01-30 12:27:23', '2023-01-30 12:27:23'),
(66, 3, 1, 'schedules', 'created', 'Template Bilal Ashraf is Scheduled on Device sfjasdlfk from 03-21-2023 19:57:06 to 03-21-2023 19:57:06', '2023-03-21 14:57:14', '2023-03-21 14:57:14'),
(67, 3, 1, 'schedules', 'created', 'Template Bilal Ashraf is Scheduled on Device sfjasdlfk from 2023-03-21 20:13:09 to 2023-03-21 20:13:09', '2023-03-21 14:13:16', '2023-03-21 14:13:16'),
(68, 3, 1, 'schedules', 'created', 'Template Bilal Ashraf is Scheduled on Device sfjasdlfk from 2023-03-23 06:02:12 to 2023-03-23 06:02:12', '2023-03-24 00:02:29', '2023-03-24 00:02:29'),
(69, 3, 1, 'schedules', 'created', 'Template Bilal Ashraf is Scheduled on Device sfjasdlfk from 2023-03-24 06:03:04 to 2023-03-24 06:03:04', '2023-03-24 00:03:10', '2023-03-24 00:03:10'),
(70, 3, 1, 'schedules', 'created', 'Template Bilal Ashraf is Scheduled on Device sfjasdlfk from 2023-03-27 06:05:39 to 2023-03-27 06:05:39', '2023-03-24 00:05:48', '2023-03-24 00:05:48'),
(71, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-03-24 01:49:15', '2023-03-24 01:49:15'),
(72, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-03-24 02:03:36', '2023-03-24 02:03:36'),
(73, 3, 1, 'device-template-data', 'created', 'A New Template Added with name asdasd', '2023-03-24 02:03:58', '2023-03-24 02:03:58'),
(74, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-03-24 02:04:52', '2023-03-24 02:04:52'),
(75, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-03-24 02:06:37', '2023-03-24 02:06:37'),
(76, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-03-24 02:06:49', '2023-03-24 02:06:49'),
(77, 3, 1, 'device-template-data', 'deleted', 'Template named asdasd is deleted', '2023-03-24 06:16:26', '2023-03-24 06:16:26'),
(78, 3, 1, 'device-template-data', 'deleted', 'Template named Bilal Ashraf is deleted', '2023-03-24 06:16:34', '2023-03-24 06:16:34'),
(79, 3, 1, 'schedules', 'deleted', 'Schedule named  is deleted', '2023-03-24 06:41:22', '2023-03-24 06:41:22'),
(80, 3, 1, 'schedules', 'deleted', 'Schedule named  is deleted', '2023-03-24 06:42:27', '2023-03-24 06:42:27'),
(81, 3, 1, 'schedules', 'deleted', 'Schedule named  is deleted', '2023-03-24 07:02:28', '2023-03-24 07:02:28'),
(82, 3, 1, 'device-template-data', 'created', 'A New Template Added with name test template', '2023-04-11 19:10:26', '2023-04-11 19:10:26'),
(83, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-11 19:30:41', '2023-04-11 19:30:41'),
(84, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-11 20:26:22', '2023-04-11 20:26:22'),
(85, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-11 20:27:22', '2023-04-11 20:27:22'),
(86, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-11 20:29:06', '2023-04-11 20:29:06'),
(87, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-11 20:30:57', '2023-04-11 20:30:57'),
(88, 3, 1, 'device-template-data', 'created', 'A New Template Added with name This is test template', '2023-04-12 05:16:11', '2023-04-12 05:16:11'),
(89, 3, 1, 'device-template-data', 'created', 'A New Template Added with name This is another Temaplte', '2023-04-12 05:18:39', '2023-04-12 05:18:39'),
(90, 3, 1, 'device-template-data', 'created', 'A New Template Added with name ', '2023-04-12 07:07:08', '2023-04-12 07:07:08'),
(91, 3, 1, 'device-template-data', 'created', 'A New Template Added with name This is a test template', '2023-04-12 07:19:12', '2023-04-12 07:19:12'),
(92, 3, 1, 'device-template-data', 'created', 'A New Template Added with name A New template', '2023-04-12 07:20:07', '2023-04-12 07:20:07'),
(93, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-04-15 07:47:55', '2023-04-15 07:47:55'),
(94, 3, 1, 'device-template-data', 'updated', 'Template name changed from Super Admin to Updated', '2023-04-15 08:06:19', '2023-04-15 08:06:19'),
(95, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-04-15 08:06:43', '2023-04-15 08:06:43'),
(96, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-04-15 08:07:08', '2023-04-15 08:07:08'),
(97, 3, 1, 'schedules', 'created', 'Template This is test template is Scheduled on Device test from 2023-04-27 14:48:59 to 2023-04-27 14:48:59', '2023-04-27 09:49:05', '2023-04-27 09:49:05'),
(98, 3, 1, 'device-template-data', 'deleted', 'Template named Updated is deleted', '2023-08-24 05:56:53', '2023-08-24 05:56:53'),
(99, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Samsung Potrat Template', '2023-08-24 06:00:19', '2023-08-24 06:00:19'),
(100, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(101, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Samsung Landscape Template', '2023-08-24 10:42:24', '2023-08-24 10:42:24'),
(102, 3, 1, 'device-template-data', 'updated', 'N/A', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(103, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Super Admin', '2023-08-30 13:41:41', '2023-08-30 13:41:41'),
(104, 3, 1, 'device-template-data', 'deleted', 'Template named Super Admin is deleted', '2023-09-04 04:15:21', '2023-09-04 04:15:21'),
(105, 3, 1, 'device-template-data', 'created', 'A New Template Added with name Emirates Template with Image', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(106, 6, 8, 'zones', 'created', 'A New Zone Added with name UAE', '2024-02-08 13:44:57', '2024-02-08 13:44:57'),
(107, 6, 8, 'cities', 'created', 'A New City Added with name Dubai', '2024-02-08 13:45:01', '2024-02-08 13:45:01'),
(108, 6, 8, 'cities', 'created', 'A New City Added with name Sharjah', '2024-02-08 13:45:05', '2024-02-08 13:45:05'),
(109, 6, 8, 'branches', 'created', 'A New Branch Added with name Branch 1 (Talha)', '2024-02-08 13:45:20', '2024-02-08 13:45:20'),
(110, 6, 8, 'device-groups', 'created', 'A New Device Group Added with name Device Group (Talha)', '2024-02-08 13:45:29', '2024-02-08 13:45:29'),
(111, 6, 8, 'device-template-data', 'created', 'A New Template Added with name Emirates Template', '2024-02-08 13:47:52', '2024-02-08 13:47:52'),
(112, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-12 21:18:52', '2024-02-12 21:18:52'),
(113, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-12 21:41:40', '2024-02-12 21:41:40'),
(114, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-12 22:22:15', '2024-02-12 22:22:15'),
(115, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-12 22:24:26', '2024-02-12 22:24:26'),
(116, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-12 22:35:42', '2024-02-12 22:35:42'),
(117, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 19:07:35', '2024-02-13 19:07:35'),
(118, 6, 8, 'device-template-data', 'created', 'A New Template Added with name OHMC Template', '2024-02-13 19:25:47', '2024-02-13 19:25:47'),
(119, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 19:44:11', '2024-02-13 19:44:11'),
(120, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 19:47:12', '2024-02-13 19:47:12'),
(121, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 19:48:00', '2024-02-13 19:48:00'),
(122, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 19:49:07', '2024-02-13 19:49:07'),
(123, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 20:01:56', '2024-02-13 20:01:56'),
(124, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-13 20:25:30', '2024-02-13 20:25:30'),
(125, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-02-14 00:15:33', '2024-02-14 00:15:33'),
(126, 6, 8, 'zones', 'created', 'A New Zone Added with name New Zone', '2024-03-13 11:31:16', '2024-03-13 11:31:16'),
(127, 6, 8, 'cities', 'created', 'A New City Added with name New City 1', '2024-03-13 11:31:55', '2024-03-13 11:31:55'),
(128, 6, 8, 'cities', 'created', 'A New City Added with name New City 2', '2024-03-13 11:31:55', '2024-03-13 11:31:55'),
(129, 6, 8, 'cities', 'created', 'A New City Added with name New City 3', '2024-03-13 11:31:55', '2024-03-13 11:31:55'),
(130, 6, 8, 'branches', 'created', 'A New Branch Added with name Branch', '2024-03-13 11:32:11', '2024-03-13 11:32:11'),
(131, 6, 8, 'device-groups', 'created', 'A New Device Group Added with name Device Group', '2024-03-13 11:32:24', '2024-03-13 11:32:24'),
(132, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-03-19 09:42:42', '2024-03-19 09:42:42'),
(133, 6, 8, 'device-template-data', 'deleted', 'Template named Emirates Template is deleted', '2024-03-21 11:29:20', '2024-03-21 11:29:20'),
(134, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-03-21 11:29:35', '2024-03-21 11:29:35'),
(135, 6, 8, 'device-template-data', 'updated', 'N/A', '2024-03-25 10:45:37', '2024-03-25 10:45:37'),
(136, 6, 8, 'device-template-data', 'created', 'A New Template Added with name al_yalis', '2024-06-24 04:05:34', '2024-06-24 04:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', '$2y$10$ifjGPlivw7IIexXActOxx.RMTc8fRwrdEAuSYPS9k95JnMyMvuJGW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `branch_manager_name` varchar(255) DEFAULT NULL,
  `branch_contact_no` varchar(255) DEFAULT NULL,
  `branch_it_support_name` varchar(255) DEFAULT NULL,
  `branch_it_support_no` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `organization_id`, `city_id`, `branch_name`, `branch_code`, `branch_manager_name`, `branch_contact_no`, `branch_it_support_name`, `branch_it_support_no`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Samsung DCC', 'SamDCC', 'Shaheer', '+971549956513', 'Bilal', '+971549956513', NULL, '2022-09-06 20:07:49', '2022-09-06 20:09:54'),
(2, 3, 3, 'Mall No 1', 'MN1', 'shaheer', '971549956513', 'shaheer', '971549956513', NULL, '2022-10-19 18:53:03', '2022-10-19 18:53:35'),
(9, 3, 1, 'kkfjhskajfha', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 09:35:12', '2023-01-24 09:35:12'),
(10, 3, 1, 'asdfasdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 09:35:12', '2023-01-24 09:35:12'),
(11, 3, 5, 'ubl dubai', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:24:00', '2023-01-24 18:24:00'),
(12, 3, 5, 'hbl dubai', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:24:01', '2023-01-24 18:24:01'),
(13, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(14, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(15, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:27:17', '2023-01-24 18:27:17'),
(16, 6, 12, 'Branch 1 (Talha)', NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-08 13:45:20', '2024-02-08 13:45:20'),
(17, 6, 16, 'Branch', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-13 11:32:11', '2024-03-13 11:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `organization_id`, `zone_id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Dubai', 'dubai', NULL, '2022-09-06 20:06:55', '2022-09-06 20:09:33'),
(2, 3, NULL, 'Sharjah', 'sharjah', NULL, '2022-09-30 22:26:16', '2022-09-30 22:26:16'),
(3, 3, 3, 'Doha', 'doha', NULL, '2022-10-19 18:52:31', '2022-10-19 18:53:26'),
(4, 3, 3, 'North', 'north', NULL, '2022-10-19 18:59:44', '2022-10-19 18:59:44'),
(5, 3, 1, 'Abu Dhabi', 'abu-dhabi', NULL, '2022-10-19 19:00:12', '2022-10-19 19:00:12'),
(6, 3, 1, 'Sharjah', 'sharjah', NULL, '2022-10-19 19:00:18', '2022-10-19 19:00:18'),
(7, 3, 1, 'jnb', 'jnb', NULL, '2023-01-24 08:36:25', '2023-01-24 08:36:25'),
(8, 3, 1, 'Lahore', 'lahore', NULL, '2023-01-24 08:36:40', '2023-01-24 08:36:40'),
(9, 3, 1, 'Karachi', 'karachi', NULL, '2023-01-24 08:36:41', '2023-01-24 08:36:41'),
(10, 3, 1, 'Islamabad', 'islamabad', NULL, '2023-01-24 18:23:27', '2023-01-24 18:23:27'),
(11, 3, 1, 'Mulan', 'mulan', NULL, '2023-01-24 18:23:27', '2023-01-24 18:23:27'),
(12, 6, 4, 'Dubai', 'dubai', NULL, '2024-02-08 13:45:01', '2024-02-08 13:45:01'),
(13, 6, 4, 'Sharjah', 'sharjah', NULL, '2024-02-08 13:45:05', '2024-02-08 13:45:05'),
(14, 6, 5, 'New City 1', 'new-city-1', NULL, '2024-03-13 11:31:55', '2024-03-13 11:31:55'),
(15, 6, 5, 'New City 2', 'new-city-2', NULL, '2024-03-13 11:31:55', '2024-03-13 11:31:55'),
(16, 6, 5, 'New City 3', 'new-city-3', NULL, '2024-03-13 11:31:55', '2024-03-13 11:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_in_qms` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `device_no` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` tinyint(4) DEFAULT 0,
  `content_download_completed_at` timestamp NULL DEFAULT NULL,
  `device_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `organization_id`, `name`, `name_in_qms`, `ip_address`, `device_no`, `deleted_at`, `status`, `created_at`, `updated_at`, `is_online`, `content_download_completed_at`, `device_id`) VALUES
(7, 3, 'updated', 'cd', 'lksa', '358240051111110', NULL, 0, '2023-01-24 19:20:05', '2024-01-31 13:32:12', 1, '2023-09-20 13:29:05', 10),
(8, 3, 'Device ID 8', 'cd', '192.168.2.37', 'd8384a6639c4238b', NULL, 1, '2023-04-27 09:48:21', '2023-09-14 06:13:50', 1, '2023-08-23 13:59:08', 0),
(10, 3, 'Device ID 10', 'cd', '192.168.2.37', 'd8384a6639c4238bbbb', NULL, 1, '2023-08-11 10:21:47', '2023-09-19 09:33:36', 1, '2023-08-23 13:59:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua And Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas The'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Republic Of The Congo'),
(50, 'CD', 'Democratic Republic Of The Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)'),
(54, 'HR', 'Croatia (Hrvatska)'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'TP', 'East Timor'),
(63, 'EC', 'Ecuador'),
(64, 'EG', 'Egypt'),
(65, 'SV', 'El Salvador'),
(66, 'GQ', 'Equatorial Guinea'),
(67, 'ER', 'Eritrea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'XA', 'External Territories of Australia'),
(71, 'FK', 'Falkland Islands'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji Islands'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia The'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'XU', 'Guernsey and Alderney'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HK', 'Hong Kong S.A.R.'),
(99, 'HU', 'Hungary'),
(100, 'IS', 'Iceland'),
(101, 'IN', 'India'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'XJ', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea North'),
(116, 'KR', 'Korea South'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Laos'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau S.A.R.'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'XM', 'Man (Isle of)'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'YT', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia'),
(144, 'MD', 'Moldova'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NL', 'Netherlands The'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua new Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn Island'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russia'),
(182, 'RW', 'Rwanda'),
(183, 'SH', 'Saint Helena'),
(184, 'KN', 'Saint Kitts And Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'PM', 'Saint Pierre and Miquelon'),
(187, 'VC', 'Saint Vincent And The Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'XG', 'Smaller Territories of the UK'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia'),
(204, 'SS', 'South Sudan'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syria'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad And Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks And Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State (Holy See)'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (US)'),
(241, 'WF', 'Wallis And Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'YU', 'Yugoslavia'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `device_group_id` bigint(20) DEFAULT NULL,
  `device_orientation` varchar(255) DEFAULT NULL,
  `device_name` varchar(255) DEFAULT NULL,
  `device_type` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `device_uid` varchar(255) DEFAULT NULL,
  `device_no` varchar(255) DEFAULT NULL,
  `device_mac_address` varchar(255) DEFAULT NULL,
  `device_model` varchar(255) DEFAULT NULL,
  `device_description` varchar(255) DEFAULT NULL,
  `device_screen_height` varchar(255) DEFAULT NULL,
  `device_screen_width` varchar(255) DEFAULT NULL,
  `device_storage_memory` varchar(255) DEFAULT NULL,
  `screen_resolution` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` tinyint(4) DEFAULT 0,
  `current_running_asset` int(11) DEFAULT NULL,
  `memory_status` varchar(191) DEFAULT NULL,
  `last_content_update_sent` timestamp NULL DEFAULT NULL,
  `content_download_completed_at` timestamp NULL DEFAULT NULL,
  `content_download_status` varchar(191) DEFAULT NULL,
  `application_installed` tinyint(4) DEFAULT 0,
  `socket_token` varchar(191) DEFAULT NULL,
  `ticket_color` varchar(191) DEFAULT NULL,
  `qms_name` varchar(191) DEFAULT NULL,
  `counter_no_color` varchar(191) DEFAULT NULL,
  `ticket_no_blinking_color` varchar(191) DEFAULT NULL,
  `ticket_no_font_size` varchar(191) DEFAULT NULL,
  `counter_no_font_size` varchar(191) DEFAULT NULL,
  `qms_port_no` varchar(191) DEFAULT NULL,
  `background_content` varchar(191) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT 'image',
  `is_staff_logged_in` tinyint(4) DEFAULT 0,
  `loggedin_staff_id` varchar(50) DEFAULT NULL,
  `setting_id` int(11) DEFAULT NULL,
  `content_download_page` varchar(191) NOT NULL DEFAULT '0',
  `total_pings` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `organization_id`, `zone_id`, `city_id`, `branch_id`, `device_group_id`, `device_orientation`, `device_name`, `device_type`, `ip_address`, `device_uid`, `device_no`, `device_mac_address`, `device_model`, `device_description`, `device_screen_height`, `device_screen_width`, `device_storage_memory`, `screen_resolution`, `deleted_at`, `status`, `created_at`, `updated_at`, `is_online`, `current_running_asset`, `memory_status`, `last_content_update_sent`, `content_download_completed_at`, `content_download_status`, `application_installed`, `socket_token`, `ticket_color`, `qms_name`, `counter_no_color`, `ticket_no_blinking_color`, `ticket_no_font_size`, `counter_no_font_size`, `qms_port_no`, `background_content`, `content_type`, `is_staff_logged_in`, `loggedin_staff_id`, `setting_id`, `content_download_page`, `total_pings`) VALUES
(2, 6, 4, 12, 16, 10, 'landscape', 'SWANTECH T1', 'cd', '192.168.0.103', NULL, 'f769bc9ba8689ccb', '40cd1c1c25179752805623aefa368b76957e548c', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-22 14:26:26', '2024-06-24 06:20:34', 1, NULL, NULL, '2024-03-23 14:20:45', '2024-03-27 09:46:17', '100', 0, '2e9088c088bdb21a3950b85260693e59', '#ff0000', '2', '#fff700', '#00ffcc', '400', '250', '1050', '/uploads/videos/77275_1711175885.mp4', 'video', 0, NULL, NULL, '0', 0),
(3, 6, 4, 12, 16, 10, 'landscape', 'SWANTECH D1', 'cd', '192.168.0.105', NULL, 'acfce0d724d99f84', '16b402b102140e8a300eefe95eab768e87028890', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-22 14:29:35', '2024-03-27 09:41:57', 0, NULL, NULL, '2024-03-22 16:08:02', '2024-03-26 13:48:54', '100', 0, 'f5207e71c003553ded535e496d94b537', '#ff0000', '3', '#f00000', '#00fbff', '450', '250', '1050', '/uploads/videos/42318_1711178595.mp4', 'video', 1, '1003', NULL, '0', 0),
(4, 6, 4, 12, 16, 10, 'landscape', 'SWANTECH BLACK T2', 'cd', '192.168.0.105', NULL, '8f98a49d4de54f38', '8f98a49d4de54f38', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-23 10:57:51', '2024-04-05 12:33:55', 0, NULL, NULL, '2024-04-05 12:33:55', '2024-04-04 13:05:45', '0', 0, 'e5ef6130d904914bf888c16e5d319727', '#ff0000', '4', '#000000', '#04ff00', '300', '150', '1050', '/uploads/videos/99612_1711175607.mp4', 'video', 0, NULL, 1, '0', 0),
(5, 6, 4, 12, 16, 10, 'landscape', 'Talha\'s Device', 'md', '192.168.0.101', NULL, '5c64505ddff6755c', '22e5d3567b8519d0347f663cccb7e197c4b8f47b', 'rockchip', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-25 10:45:09', '2024-03-26 10:29:53', 0, NULL, '3968', NULL, '2024-03-25 10:48:50', '100', 0, 'b594440e09581486fba6a4e5f0756e4b', '#000000', '1', '#ff0000', '#73ff00', '70', '70', '1050', NULL, 'image', 0, NULL, NULL, '0', 0),
(6, 6, 4, 12, 16, 10, 'landscape', 'CD 19', 'cd', '192.168.4.80', NULL, '10855e98bee5b9ba', '7074f94a77fc733ba9c71d683aefedb7c7dda3b0', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-04-02 15:54:06', '2024-04-02 16:44:47', 1, NULL, NULL, '2024-04-02 16:14:16', '2024-04-02 16:19:03', '100', 0, 'd403d1c800a94655e8d6bb64d826701a', '#000000', '19', '#000000', '#ffae00', '200', '200', '1050', '/uploads/videos/99612_1711175607.mp4', 'video', 0, NULL, NULL, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `device_groups`
--

CREATE TABLE `device_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_groups`
--

INSERT INTO `device_groups` (`id`, `organization_id`, `branch_id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Samsung', 'samsung', NULL, '2022-09-06 20:08:24', '2022-09-06 20:10:07'),
(2, 3, NULL, 'Samsung', 'samsung', '2022-09-22 21:31:45', '2022-09-22 21:31:40', '2022-09-22 21:31:45'),
(3, 3, NULL, 'Dubai Mall', 'dubai-mall', NULL, '2022-10-19 18:51:42', '2022-10-19 18:51:42'),
(4, 3, 2, 'Inside', 'inside', NULL, '2022-10-19 18:53:15', '2022-10-19 18:53:42'),
(5, 3, 1, 'Habib Test', 'habib-test', NULL, '2022-11-28 01:23:54', '2022-11-28 01:23:54'),
(6, 3, 1, 'new device group', 'new-device-group', NULL, '2023-01-24 18:24:20', '2023-01-24 18:24:20'),
(7, 3, 9, '1', '1', NULL, '2023-01-24 18:29:09', '2023-01-24 18:29:09'),
(8, 3, 9, '2', '2', NULL, '2023-01-24 18:29:10', '2023-01-24 18:29:10'),
(9, 3, 9, '3', '3', NULL, '2023-01-24 18:29:10', '2023-01-24 18:29:10'),
(10, 6, 16, 'Device Group (Talha)', 'device-group-talha', NULL, '2024-02-08 13:45:29', '2024-02-08 13:45:29'),
(11, 6, 17, 'Device Group', 'device-group', NULL, '2024-03-13 11:32:24', '2024-03-13 11:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `device_play_list`
--

CREATE TABLE `device_play_list` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `play_list_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `device_play_list`
--

INSERT INTO `device_play_list` (`id`, `device_id`, `play_list_id`) VALUES
(5, 10, 2),
(6, 7, 1),
(7, 8, 1),
(10, 8, 2),
(11, 7, 2),
(14, 10, 3),
(15, 12, 5),
(16, 15, 5),
(17, 19, 5),
(18, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `device_templates`
--

CREATE TABLE `device_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quebox_required` int(11) DEFAULT NULL,
  `logo_required` int(11) DEFAULT NULL,
  `ticker_text_required` int(11) DEFAULT NULL,
  `images_required` int(11) DEFAULT NULL,
  `videos_required` int(11) DEFAULT NULL,
  `ppt_required` int(11) DEFAULT NULL,
  `template_images` varchar(255) DEFAULT NULL,
  `rss_feed_required` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view_order` int(11) DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT 0,
  `content_option` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_templates`
--

INSERT INTO `device_templates` (`id`, `name`, `quebox_required`, `logo_required`, `ticker_text_required`, `images_required`, `videos_required`, `ppt_required`, `template_images`, `rss_feed_required`, `created_at`, `updated_at`, `view_order`, `is_special`, `content_option`) VALUES
(1, 'template_1', 1, 1, 1, 0, 1, 0, 'template_images/1.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 1, 0, 0),
(2, 'template_2', 0, 1, 1, 0, 1, 0, 'template_images/2.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 2, 0, 0),
(3, 'template_3', 1, 1, 0, 0, 1, 0, 'template_images/3.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(4, 'template_4', 1, 0, 1, 0, 1, 0, 'template_images/4.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(5, 'template_5', 1, 1, 1, 1, 0, 0, 'template_images/5.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 3, 0, 0),
(6, 'template_6', 0, 1, 1, 1, 0, 0, 'template_images/6.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 4, 0, 0),
(7, 'template_7', 1, 1, 0, 1, 0, 0, 'template_images/7.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(8, 'template_8', 1, 0, 1, 1, 0, 0, 'template_images/8.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(9, 'template_9', 1, 1, 1, 0, 2, 0, 'template_images/9.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(10, 'template_10', 0, 1, 1, 0, 2, 0, 'template_images/10.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(11, 'template_11', 1, 1, 0, 0, 2, 0, 'template_images/11.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(12, 'template_12', 1, 0, 1, 0, 2, 0, 'template_images/12.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(13, 'template_13', 1, 1, 1, 2, 0, 0, 'template_images/13.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(14, 'template_14', 0, 1, 1, 2, 0, 0, 'template_images/14.jpg', NULL, '2020-12-27 04:27:55', '2020-12-27 04:27:55', 12, 0, 0),
(15, 'template_15', 1, 1, 0, 2, 0, 0, 'template_images/15.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(16, 'template_16', 1, 0, 1, 2, 0, 0, 'template_images/16.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(17, 'template_17', 1, 1, 1, 0, 4, 0, 'template_images/17.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(18, 'template_18', 0, 1, 1, 0, 4, 0, 'template_images/18.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(19, 'template_19', 1, 1, 0, 0, 4, 0, 'template_images/19.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(20, 'template_20', 1, 0, 1, 0, 4, 0, 'template_images/20.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(21, 'template_21', 1, 1, 1, 4, 0, 0, 'template_images/21.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(22, 'template_22', 0, 1, 1, 4, 0, 0, 'template_images/22.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(23, 'template_23', 1, 1, 0, 4, 0, 0, 'template_images/23.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(24, 'template_24', 1, 0, 1, 4, 0, 0, 'template_images/24.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(25, 'template_25', 1, 1, 1, 1, 2, 0, 'template_images/25.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(26, 'template_26', 0, 1, 1, 1, 2, 0, 'template_images/26.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(27, 'template_27', 1, 1, 0, 1, 2, 0, 'template_images/27.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(28, 'template_28', 1, 0, 1, 1, 2, 0, 'template_images/28.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(29, 'template_29', 1, 1, 1, 2, 1, 0, 'template_images/29.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(30, 'template_30', 0, 1, 1, 2, 1, 0, 'template_images/30.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(31, 'template_31', 1, 1, 0, 2, 1, 0, 'template_images/31.jpg', NULL, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(32, 'template_32', 1, 0, 1, 2, 1, 0, 'template_images/32.jpg', 1, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(37, 'template_37', 0, 0, 0, 0, 0, 0, 'template_images/37.jpg', 0, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 12, 0, 0),
(38, 'template_38', 0, 0, 0, 0, 1, 0, 'template_images/38.jpg', 0, '2020-12-27 04:27:56', '2020-12-27 04:27:56', 5, 0, 0),
(39, 'template_39', 0, 0, 1, 0, 1, 0, 'template_images/39.jpg', 0, NULL, NULL, 6, 0, 0),
(40, 'template_40', 0, 0, 0, 1, 0, 0, 'template_images/40.jpg', 0, NULL, NULL, 7, 0, 0),
(41, 'template_41', 0, 0, 1, 1, 0, 0, 'template_images/41.jpg', 0, NULL, NULL, 8, 0, 0),
(42, 'template_42', 1, 1, 1, 1, 1, 0, 'template_images/42.jpg', 0, NULL, NULL, 36, 1, 0),
(43, 'template_43', 1, 1, 1, 1, 1, 0, 'template_images/43.png', 0, NULL, NULL, 36, 1, 0),
(44, 'template_44', 1, 1, 1, 1, 1, 0, 'template_images/44.png', 0, NULL, NULL, 36, 1, 1),
(45, 'template_45', 1, 0, 0, 1, 1, 0, 'template_images/45.jpeg', 1, NULL, NULL, 36, 1, 0),
(46, 'template_46', 1, 0, 1, 1, 1, 0, 'template_images/46.jpg', 0, NULL, NULL, 36, 1, 1),
(47, 'template_47', 1, 1, 1, 1, 1, 0, 'template_images/47.jpg', 0, NULL, NULL, 36, 1, 1),
(48, 'template_48', 1, 1, 1, 1, 1, 0, 'template_images/44.png', 0, NULL, NULL, 36, 1, 1),
(49, 'template_49', 1, 0, 1, 1, 1, 0, 'template_images/49.jpeg', 0, NULL, NULL, 36, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `device_template_asssets`
--

CREATE TABLE `device_template_asssets` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_data_id` int(11) DEFAULT NULL,
  `box_no` int(11) DEFAULT NULL,
  `asset_url` varchar(255) DEFAULT NULL,
  `asset_type` varchar(255) DEFAULT NULL,
  `asset_box_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_template_asssets`
--

INSERT INTO `device_template_asssets` (`id`, `template_data_id`, `box_no`, `asset_url`, `asset_type`, `asset_box_number`, `created_at`, `updated_at`) VALUES
(7, 1, 1, '/uploads/videos/35531_1691419236.mp4', 'video', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(8, 1, 1, '/uploads/videos/80954_1680866223.mp4', 'video', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(9, 1, 2, '/uploads/images/86914_1692856728.jpg', 'image', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(10, 1, 2, '/uploads/images/52533_1692856727.jpg', 'image', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(11, 1, 2, '/uploads/images/33301_1692856725.jpg', 'image', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(12, 1, 2, '/uploads/images/19131_1692856722.jpg', 'image', '1', '2023-08-24 06:06:39', '2023-08-24 06:06:39'),
(20, 2, 1, '/uploads/videos/35531_1691419236.mp4', 'video', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(21, 2, 1, '/uploads/videos/80954_1680866223.mp4', 'video', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(22, 2, 2, '/uploads/images/86914_1692856728.jpg', 'image', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(23, 2, 2, '/uploads/images/52533_1692856727.jpg', 'image', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(24, 2, 2, '/uploads/images/33301_1692856725.jpg', 'image', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(25, 2, 2, '/uploads/images/19131_1692856722.jpg', 'image', '1', '2023-08-24 11:54:59', '2023-08-24 11:54:59'),
(26, 3, 1, '/uploads/videos/35531_1691419236.mp4', 'video', '1', '2023-08-30 13:41:41', '2023-08-30 13:41:41'),
(27, 3, 1, '/uploads/videos/80954_1680866223.mp4', 'video', '1', '2023-08-30 13:41:41', '2023-08-30 13:41:41'),
(28, 3, 1, '/uploads/videos/26910_1680866220.mp4', 'video', '1', '2023-08-30 13:41:41', '2023-08-30 13:41:41'),
(29, 4, 1, '/uploads/images/86914_1692856728.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(30, 4, 1, '/uploads/images/52533_1692856727.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(31, 4, 1, '/uploads/images/33301_1692856725.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(32, 4, 1, '/uploads/images/19131_1692856722.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(33, 4, 1, '/uploads/images/64081_1680866144.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(34, 4, 1, '/uploads/images/85414_1680866144.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(35, 4, 1, '/uploads/images/41416_1680866143.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(36, 4, 1, '/uploads/images/45993_1680866143.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(37, 4, 1, '/uploads/images/13813_1680866142.jpg', 'image', '1', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(75, 5, 1, '/uploads/videos/35531_1691419236.mp4', 'video', '1', '2024-02-13 19:48:00', '2024-02-13 19:48:00'),
(76, 5, 1, '/uploads/videos/80954_1680866223.mp4', 'video', '1', '2024-02-13 19:48:00', '2024-02-13 19:48:00'),
(111, 6, 1, '/uploads/videos/42318_1711178595.mp4', 'video', '1', '2024-03-25 10:45:37', '2024-03-25 10:45:37'),
(112, 6, 1, '/uploads/videos/77275_1711175885.mp4', 'video', '1', '2024-03-25 10:45:37', '2024-03-25 10:45:37'),
(113, 6, 1, '/uploads/videos/35531_1691419236.mp4', 'video', '1', '2024-03-25 10:45:37', '2024-03-25 10:45:37'),
(114, 7, 1, '/uploads/images/44878_1711022361.jpg', 'image', '1', '2024-06-24 04:05:34', '2024-06-24 04:05:34'),
(115, 7, 1, '/uploads/images/43889_1711022350.JPG', 'image', '1', '2024-06-24 04:05:34', '2024-06-24 04:05:34'),
(116, 7, 1, '/uploads/images/36274_1707843971.png', 'image', '1', '2024-06-24 04:05:34', '2024-06-24 04:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `device_template_data`
--

CREATE TABLE `device_template_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `ticker_text` varchar(255) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `template_id` int(11) NOT NULL,
  `rss_feed` blob DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = no, 1 = yes',
  `asset_cur_version` bigint(20) NOT NULL DEFAULT 1,
  `asset_prev_vesrion` bigint(20) NOT NULL DEFAULT 0,
  `content_type` enum('image','video','both') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_template_data`
--

INSERT INTO `device_template_data` (`id`, `name`, `logo`, `ticker_text`, `organization_id`, `template_id`, `rss_feed`, `is_deleted`, `asset_cur_version`, `asset_prev_vesrion`, `content_type`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Potrat Template', '/uploads/images/70818_1692856715.png', 'Stay Home Stay Safe', 3, 43, NULL, 0, 2, 1, NULL, '2023-08-24 06:00:19', '2023-08-24 06:06:39'),
(2, 'Samsung Landscape Template', '/uploads/images/70818_1692856715.png', 'Samsung Landscape Template', 3, 42, NULL, 0, 2, 1, NULL, '2023-08-24 10:42:24', '2023-08-24 11:54:59'),
(3, 'Super Admin', '/uploads/images/33301_1692856725.jpg', NULL, 3, 3, NULL, 1, 1, 0, NULL, '2023-08-30 13:41:41', '2023-09-04 04:15:21'),
(4, 'Emirates Template with Image', '/uploads/images/86914_1692856728.jpg', 'Emirates Template with Image', 3, 44, NULL, 0, 1, 0, 'image', '2024-01-22 06:23:48', '2024-01-22 06:23:48'),
(5, 'Emirates Template', '/uploads/images/20478_1707838974.png', 'Welcome to Emirates & Dnata', 6, 44, NULL, 1, 9, 8, 'video', '2024-02-08 13:47:52', '2024-03-21 11:29:20'),
(6, 'OHMC Template', '/uploads/images/20478_1707838974.png', 'Welcome to OHMC', 6, 48, NULL, 0, 9, 8, 'video', '2024-02-13 19:25:47', '2024-03-25 10:45:37'),
(7, 'al_yalis', NULL, 'asfsadf', 6, 49, NULL, 0, 1, 0, 'image', '2024-06-24 04:05:34', '2024-06-24 04:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `thamnail_url` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `size` varchar(191) NOT NULL,
  `dimessions` varchar(191) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `thamnail_url`, `url`, `name`, `type`, `size`, `dimessions`, `duration`, `created_at`, `updated_at`) VALUES
(4, '/uploads/images/thumbs/thumb_16808661043809.jpg', '/uploads/images/91326_1680866105.jpg', 'photo2@2x.jpg', 'image', '165.16 KB', '1440 x 960', NULL, '2023-04-07 11:15:05', '2023-04-07 11:15:05'),
(6, '/uploads/images/thumbs/thumb_16808661068206.jpg', '/uploads/images/27677_1680866106.jpg', 'photo3@2x.jpg', 'image', '147.63 KB', '1440 x 960', NULL, '2023-04-07 11:15:06', '2023-04-07 11:15:06'),
(8, '/uploads/images/thumbs/thumb_16808661071244.jpg', '/uploads/images/61153_1680866107.jpg', 'photo4@2x.jpg', 'image', '149.18 KB', '1440 x 960', NULL, '2023-04-07 11:15:07', '2023-04-07 11:15:07'),
(10, '/uploads/images/thumbs/thumb_16808661084950.jpg', '/uploads/images/20596_1680866108.jpg', 'photo5@2x.jpg', 'image', '172.51 KB', '1440 x 960', NULL, '2023-04-07 11:15:08', '2023-04-07 11:15:08'),
(12, '/uploads/images/thumbs/thumb_16808661096245.jpg', '/uploads/images/37617_1680866110.jpg', 'photo6@2x.jpg', 'image', '286.6 KB', '1440 x 960', NULL, '2023-04-07 11:15:10', '2023-04-07 11:15:10'),
(14, '/uploads/images/thumbs/thumb_16808661111100.jpg', '/uploads/images/48711_1680866111.jpg', 'photo7@2x.jpg', 'image', '95.4 KB', '1440 x 960', NULL, '2023-04-07 11:15:11', '2023-04-07 11:15:11'),
(16, '/uploads/images/thumbs/thumb_16808661122325.jpg', '/uploads/images/96206_1680866113.jpg', 'photo8@2x.jpg', 'image', '303 KB', '1440 x 960', NULL, '2023-04-07 11:15:13', '2023-04-07 11:15:13'),
(18, '/uploads/images/thumbs/thumb_16808661146412.jpg', '/uploads/images/92758_1680866114.jpg', 'photo9@2x.jpg', 'image', '193.4 KB', '1440 x 960', NULL, '2023-04-07 11:15:14', '2023-04-07 11:15:14'),
(20, '/uploads/images/thumbs/thumb_16808661151871.jpg', '/uploads/images/28921_1680866115.jpg', 'photo10@2x.jpg', 'image', '253.89 KB', '1440 x 960', NULL, '2023-04-07 11:15:15', '2023-04-07 11:15:15'),
(22, '/uploads/images/thumbs/thumb_16808661165833.jpg', '/uploads/images/55617_1680866116.jpg', 'photo11@2x.jpg', 'image', '199.51 KB', '1440 x 960', NULL, '2023-04-07 11:15:16', '2023-04-07 11:15:16'),
(24, '/uploads/images/thumbs/thumb_16808661176761.jpg', '/uploads/images/92794_1680866117.jpg', 'photo12@2x.jpg', 'image', '73.45 KB', '1440 x 960', NULL, '2023-04-07 11:15:17', '2023-04-07 11:15:17'),
(26, '/uploads/images/thumbs/thumb_16808661181568.jpg', '/uploads/images/16734_1680866119.jpg', 'photo13@2x.jpg', 'image', '265.51 KB', '1440 x 960', NULL, '2023-04-07 11:15:19', '2023-04-07 11:15:19'),
(28, '/uploads/images/thumbs/thumb_16808661207223.jpg', '/uploads/images/43027_1680866120.jpg', 'photo14@2x.jpg', 'image', '295.84 KB', '1440 x 960', NULL, '2023-04-07 11:15:20', '2023-04-07 11:15:20'),
(30, '/uploads/images/thumbs/thumb_16808661212929.jpg', '/uploads/images/37466_1680866121.jpg', 'photo15@2x.jpg', 'image', '229.04 KB', '1440 x 960', NULL, '2023-04-07 11:15:21', '2023-04-07 11:15:21'),
(32, '/uploads/images/thumbs/thumb_16808661226774.jpg', '/uploads/images/60443_1680866122.jpg', 'photo16@2x.jpg', 'image', '130.06 KB', '1440 x 960', NULL, '2023-04-07 11:15:22', '2023-04-07 11:15:22'),
(34, '/uploads/images/thumbs/thumb_16808661236251.jpg', '/uploads/images/30911_1680866123.jpg', 'photo17@2x.jpg', 'image', '131.26 KB', '1440 x 960', NULL, '2023-04-07 11:15:23', '2023-04-07 11:15:23'),
(36, '/uploads/images/thumbs/thumb_16808661244191.jpg', '/uploads/images/32272_1680866124.jpg', 'photo18@2x.jpg', 'image', '234.68 KB', '1440 x 960', NULL, '2023-04-07 11:15:24', '2023-04-07 11:15:24'),
(38, '/uploads/images/thumbs/thumb_16808661252412.jpg', '/uploads/images/43165_1680866125.jpg', 'photo19@2x.jpg', 'image', '437.77 KB', '1440 x 960', NULL, '2023-04-07 11:15:25', '2023-04-07 11:15:25'),
(40, '/uploads/images/thumbs/thumb_16808661269800.jpg', '/uploads/images/41763_1680866126.jpg', 'photo20@2x.jpg', 'image', '193.67 KB', '1440 x 960', NULL, '2023-04-07 11:15:26', '2023-04-07 11:15:26'),
(42, '/uploads/images/thumbs/thumb_16808661278766.jpg', '/uploads/images/84983_1680866127.jpg', 'photo21@2x.jpg', 'image', '117.12 KB', '1440 x 960', NULL, '2023-04-07 11:15:27', '2023-04-07 11:15:27'),
(44, '/uploads/images/thumbs/thumb_16808661282255.jpg', '/uploads/images/43295_1680866128.jpg', 'photo22@2x.jpg', 'image', '348.83 KB', '1440 x 960', NULL, '2023-04-07 11:15:28', '2023-04-07 11:15:28'),
(46, '/uploads/images/thumbs/thumb_16808661296435.jpg', '/uploads/images/57973_1680866129.jpg', 'photo23@2x.jpg', 'image', '163.28 KB', '1440 x 960', NULL, '2023-04-07 11:15:29', '2023-04-07 11:15:29'),
(48, '/uploads/images/thumbs/thumb_16808661308753.jpg', '/uploads/images/59503_1680866130.jpg', 'photo24@2x.jpg', 'image', '176.31 KB', '1440 x 960', NULL, '2023-04-07 11:15:30', '2023-04-07 11:15:30'),
(50, '/uploads/images/thumbs/thumb_16808661317251.jpg', '/uploads/images/52572_1680866131.jpg', 'photo25@2x.jpg', 'image', '67.66 KB', '1440 x 960', NULL, '2023-04-07 11:15:31', '2023-04-07 11:15:31'),
(52, '/uploads/images/thumbs/thumb_16808661327194.jpg', '/uploads/images/13351_1680866132.jpg', 'photo26@2x.jpg', 'image', '126.01 KB', '1440 x 960', NULL, '2023-04-07 11:15:32', '2023-04-07 11:15:32'),
(54, '/uploads/images/thumbs/thumb_16808661337525.jpg', '/uploads/images/68726_1680866133.jpg', 'photo27@2x.jpg', 'image', '178.37 KB', '1440 x 960', NULL, '2023-04-07 11:15:33', '2023-04-07 11:15:33'),
(56, '/uploads/images/thumbs/thumb_16808661341439.jpg', '/uploads/images/92870_1680866134.jpg', 'photo28@2x.jpg', 'image', '134.35 KB', '1440 x 960', NULL, '2023-04-07 11:15:34', '2023-04-07 11:15:34'),
(58, '/uploads/images/thumbs/thumb_16808661357192.jpg', '/uploads/images/14579_1680866135.jpg', 'photo29@2x.jpg', 'image', '233.77 KB', '1440 x 960', NULL, '2023-04-07 11:15:35', '2023-04-07 11:15:35'),
(60, '/uploads/images/thumbs/thumb_16808661362521.jpg', '/uploads/images/68956_1680866136.jpg', 'photo30@2x.jpg', 'image', '233.85 KB', '1440 x 960', NULL, '2023-04-07 11:15:36', '2023-04-07 11:15:36'),
(62, '/uploads/images/thumbs/thumb_16808661372279.jpg', '/uploads/images/19156_1680866137.jpg', 'photo31@2x.jpg', 'image', '255.75 KB', '1440 x 960', NULL, '2023-04-07 11:15:37', '2023-04-07 11:15:37'),
(64, '/uploads/images/thumbs/thumb_16808661377436.jpg', '/uploads/images/82776_1680866138.jpg', 'photo32@2x.jpg', 'image', '112.92 KB', '1440 x 960', NULL, '2023-04-07 11:15:38', '2023-04-07 11:15:38'),
(66, '/uploads/images/thumbs/thumb_16808661387638.jpg', '/uploads/images/50699_1680866138.jpg', 'photo33@2x.jpg', 'image', '209.71 KB', '1440 x 960', NULL, '2023-04-07 11:15:38', '2023-04-07 11:15:38'),
(68, '/uploads/images/thumbs/thumb_16808661393141.jpg', '/uploads/images/20744_1680866140.jpg', 'photo34@2x.jpg', 'image', '90.89 KB', '1440 x 960', NULL, '2023-04-07 11:15:40', '2023-04-07 11:15:40'),
(70, '/uploads/images/thumbs/thumb_16808661416668.jpg', '/uploads/images/93287_1680866141.jpg', 'photo35@2x.jpg', 'image', '263.13 KB', '1440 x 960', NULL, '2023-04-07 11:15:41', '2023-04-07 11:15:41'),
(72, '/uploads/images/thumbs/thumb_16808661426349.jpg', '/uploads/images/13813_1680866142.jpg', 'photo36@2x.jpg', 'image', '176.94 KB', '1440 x 960', NULL, '2023-04-07 11:15:42', '2023-04-07 11:15:42'),
(74, '/uploads/images/thumbs/thumb_16808661436008.jpg', '/uploads/images/41416_1680866143.jpg', 'photo37@2x.jpg', 'image', '74.01 KB', '1440 x 960', NULL, '2023-04-07 11:15:43', '2023-04-07 11:15:43'),
(76, '/uploads/images/thumbs/thumb_16808661448536.jpg', '/uploads/images/64081_1680866144.jpg', 'photo38@2x.jpg', 'image', '470.01 KB', '1440 x 960', NULL, '2023-04-07 11:15:44', '2023-04-07 11:15:44'),
(78, '/uploads/images/thumbs/thumb_16808661447421.jpg', '/uploads/images/11998_1680866145.jpg', 'photo39@2x.jpg', 'image', '244.76 KB', '1440 x 960', NULL, '2023-04-07 11:15:45', '2023-04-07 11:15:45'),
(79, 'uploads/videos/thumbs/thumb_24654_1680866213.png', '/uploads/videos/89377_1680866213.mp4', '1.mp4', 'video', '9.06 MB', 'N/A', 83, '2023-04-07 11:16:55', '2023-04-07 11:16:55'),
(80, 'uploads/videos/thumbs/thumb_41235_1680866217.png', '/uploads/videos/15990_1680866217.mp4', '1.mp4', 'video', '9.06 MB', 'N/A', 83, '2023-04-07 11:16:58', '2023-04-07 11:16:58'),
(81, 'uploads/videos/thumbs/thumb_51073_1680866220.png', '/uploads/videos/26910_1680866220.mp4', '1.mp4', 'video', '9.06 MB', 'N/A', 83, '2023-04-07 11:17:01', '2023-04-07 11:17:01'),
(82, 'uploads/videos/thumbs/thumb_26160_1680866223.png', '/uploads/videos/80954_1680866223.mp4', '1.mp4', 'video', '9.06 MB', 'N/A', 83, '2023-04-07 11:17:04', '2023-04-07 11:17:04'),
(83, 'uploads/videos/thumbs/thumb_75390_1691444165.png', '/uploads/videos/30289_1691444165.mp4', '13058_1661322841.mp4', 'video', '1.5 MB', 'N/A', 30, '2023-08-07 21:36:13', '2023-08-07 21:36:13'),
(84, '/uploads/images/thumbs/thumb_16928567142802.png', '/uploads/images/70818_1692856715.png', 'logo.png', 'image', '5.26 KB', '184 x 33', NULL, '2023-08-24 05:58:35', '2023-08-24 05:58:35'),
(85, '/uploads/images/thumbs/thumb_16928567229766.jpg', '/uploads/images/19131_1692856722.jpg', 'image2.jpg', 'image', '430.28 KB', '1920 x 1080', NULL, '2023-08-24 05:58:42', '2023-08-24 05:58:42'),
(86, '/uploads/images/thumbs/thumb_16928567234998.jpg', '/uploads/images/33301_1692856725.jpg', 'image1.jpg', 'image', '3.71 MB', '5443 x 3633', NULL, '2023-08-24 05:58:45', '2023-08-24 05:58:45'),
(87, '/uploads/images/thumbs/thumb_16928567266388.jpg', '/uploads/images/52533_1692856727.jpg', 'image3.jpg', 'image', '2.17 MB', '1920 x 1080', NULL, '2023-08-24 05:58:47', '2023-08-24 05:58:47'),
(88, '/uploads/images/thumbs/thumb_16928567278287.jpg', '/uploads/images/86914_1692856728.jpg', 'image5.jpg', 'image', '461.3 KB', '5000 x 2223', NULL, '2023-08-24 05:58:48', '2023-08-24 05:58:48'),
(89, 'uploads/videos/thumbs/thumb_37316_1691476366.png', '/uploads/videos/35531_1691419236.mp4', '35531_1691419236.mp4', 'video', '1.5 MB', 'N/A', 30, '2023-08-07 21:36:13', '2023-08-07 21:36:13'),
(90, '/uploads/images/thumbs/thumb_17077485026310.jpg', '/uploads/images/83482_1707748502.jpg', 'ek_dn_eng_tag_cmyk-01.jpg', 'image', '120.63 KB', '884 x 489', NULL, '2024-02-12 18:35:02', '2024-02-12 18:35:02'),
(91, '/uploads/images/thumbs/thumb_17077589474559.png', '/uploads/images/91593_1707758947.png', 'cd background.png', 'image', '13.8 KB', '1212 x 601', NULL, '2024-02-12 21:29:07', '2024-02-12 21:29:07'),
(92, '/uploads/images/thumbs/thumb_17078368338861.png', '/uploads/images/19519_1707836836.png', 'OHMC Gold and grey HD.png', 'image', '3.77 MB', '10000 x 4140', NULL, '2024-02-13 19:07:16', '2024-02-13 19:07:16'),
(93, '/uploads/images/thumbs/thumb_17078389746828.png', '/uploads/images/20478_1707838974.png', 'OHMC Gold and grey HD 1.png', 'image', '53.55 KB', '644 x 275', NULL, '2024-02-13 19:42:54', '2024-02-13 19:42:54'),
(94, '/uploads/images/thumbs/thumb_17078439719642.png', '/uploads/images/36274_1707843971.png', 'ohmc doctor profile.png', 'image', '709.48 KB', '1920 x 1080', NULL, '2024-02-13 21:06:11', '2024-02-13 21:06:11'),
(95, '/uploads/images/thumbs/thumb_17110223503204.JPG', '/uploads/images/43889_1711022350.JPG', '.3.JPG', 'image', '17.73 KB', '538 x 253', NULL, '2024-03-21 15:59:10', '2024-03-21 15:59:10'),
(96, '/uploads/images/thumbs/thumb_17110223583075.JPG', '/uploads/images/64913_1711022358.JPG', '2.JPG', 'image', '65.8 KB', '654 x 604', NULL, '2024-03-21 15:59:18', '2024-03-21 15:59:18'),
(97, '/uploads/images/thumbs/thumb_17110223606314.jpg', '/uploads/images/44878_1711022361.jpg', '303351062_450362230444649_5163411226556136148_n.jpg', 'image', '166.54 KB', '2000 x 1368', NULL, '2024-03-21 15:59:21', '2024-03-21 15:59:21'),
(98, 'uploads/videos/thumbs/thumb_35473_1711175607.png', '/uploads/videos/99612_1711175607.mp4', 'animation_-_14035 (540p).mp4', 'video', '1.35 MB', 'N/A', 7, '2024-03-23 10:33:27', '2024-03-23 10:33:27'),
(99, 'uploads/videos/thumbs/thumb_23832_1711175660.png', '/uploads/videos/19465_1711175660.mp4', 'istockphoto-1824514573-640_adpp_is.mp4', 'video', '927.11 KB', 'N/A', 10, '2024-03-23 10:34:20', '2024-03-23 10:34:20'),
(100, 'uploads/videos/thumbs/thumb_88004_1711175740.png', '/uploads/videos/31276_1711175740.mp4', 'istockphoto-1212606444-640_adpp_is.mp4', 'video', '1.87 MB', 'N/A', 21, '2024-03-23 10:35:41', '2024-03-23 10:35:41'),
(101, 'uploads/videos/thumbs/thumb_81850_1711175806.png', '/uploads/videos/38629_1711175806.mp4', 'istockphoto-1212606444-640_adpp_is.mp4', 'video', '1.87 MB', 'N/A', 21, '2024-03-23 10:36:46', '2024-03-23 10:36:46'),
(102, 'uploads/videos/thumbs/thumb_18139_1711175838.png', '/uploads/videos/21761_1711175838.crdownload', 'tube_-_9005 (360p).mp4.crdownload', 'video', '64 KB', 'N/A', 17, '2024-03-23 10:37:18', '2024-03-23 10:37:18'),
(103, 'uploads/videos/thumbs/thumb_94638_1711175885.png', '/uploads/videos/77275_1711175885.mp4', 'reading_-_3608 (540p).mp4', 'video', '1.62 MB', 'N/A', 9, '2024-03-23 10:38:05', '2024-03-23 10:38:05'),
(104, 'uploads/videos/thumbs/thumb_17400_1711178595.png', '/uploads/videos/42318_1711178595.mp4', 'istockphoto-1389532697-640_adpp_is.mp4', 'video', '919.64 KB', 'N/A', 15, '2024-03-23 11:23:16', '2024-03-23 11:23:16'),
(105, 'uploads/videos/thumbs/thumb_67268_1711956809.png', '/uploads/videos/72144_1711956809.mp4', '13058_1661322841.mp4', 'video', '1.5 MB', 'N/A', 30, '2024-04-01 11:33:35', '2024-04-01 11:33:35'),
(106, 'uploads/videos/thumbs/thumb_72001_1711956890.png', '/uploads/videos/60226_1711956890.mp4', '13058_1661322841.mp4', 'video', '1.5 MB', 'N/A', 30, '2024-04-01 11:34:51', '2024-04-01 11:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `imeis`
--

CREATE TABLE `imeis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imei` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `expiery` varchar(255) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'Online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imeis`
--

INSERT INTO `imeis` (`id`, `imei`, `key`, `expiery`, `type`, `created_at`, `updated_at`) VALUES
(1, '5c64505ddff6755c', '22e5d3567b8519d0347f663cccb7e197c4b8f47b', '1722369600', 'Online', '2024-03-22 14:21:21', '2024-03-22 14:21:21'),
(2, 'f769bc9ba8689ccb', '40cd1c1c25179752805623aefa368b76957e548c', '1732910400', 'Online', '2024-03-22 14:24:45', '2024-03-22 14:24:45'),
(3, 'acfce0d724d99f84', '16b402b102140e8a300eefe95eab768e87028890', '1724961600', 'Online', '2024-03-22 14:28:32', '2024-03-22 14:28:32'),
(4, '8f98a49d4de54f38', '04c799e911ec9d5af1be651ba8414f7d901a4f3a', '1718913600', 'Online', '2024-03-23 10:55:53', '2024-03-23 10:55:53'),
(5, '10855e98bee5b9ba', '7074f94a77fc733ba9c71d683aefedb7c7dda3b0', '1732651200', 'Online', '2024-04-02 15:49:28', '2024-04-02 15:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `json_templates`
--

CREATE TABLE `json_templates` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `json_templates`
--

INSERT INTO `json_templates` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '{\"properties\":{\"canvus\":{\"height\":\"720\",\"width\":\"1080\",\"backgroundColor\":\"#fedeed\"},\"header\":{\"height\":\"100\",\"width\":\"1080\",\"backgroundColor\":\"#ffffff\",\"positionX\":\"0\",\"poistionY\":\"0\",\"logo\":{\"height\":\"100\",\"width\":\"150\",\"backgroundImage\":\"\\/images\\/logo\\/hmc.png\",\"positionX\":\"10\",\"poistionY\":\"10\"},\"dateNTime\":{\"fontColor\":\"#000000\",\"positionX\":\"600\",\"poistionY\":\"10\"}},\"queueArea\":{\"backgroundImage\":\"\\/images\\/queue\\/hmcBg.png\",\"positionX\":\"0\",\"poistionY\":\"100\",\"totalRows\":4,\"totalCols\":2,\"row1\":{\"ticketNo\":{\"positionX\":\"300\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false,\"statDuration\":\"5\",\"ticketNoTextDefault\":\"1001\"},\"counterNo\":{\"positionX\":\"600\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false}},\"row2\":{\"ticketNo\":{\"positionX\":\"600\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false,\"statDuration\":\"5\",\"ticketNoTextDefault\":\"1001\"},\"counterNo\":{\"positionX\":\"600\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false}},\"row3\":{\"ticketNo\":{\"positionX\":\"900\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false,\"statDuration\":\"5\",\"ticketNoTextDefault\":\"1001\"},\"counterNo\":{\"positionX\":\"900\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false}},\"row4\":{\"ticketNo\":{\"positionX\":\"300\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false,\"statDuration\":\"5\",\"ticketNoTextDefault\":\"1001\"},\"counterNo\":{\"positionX\":\"600\",\"positionY\":\"300\",\"priority\":1,\"fontColor\":\"#00000\",\"fontFamily\":\"Poppins, sans-seirf\",\"blinkingColor\":\"red\",\"blinkingDuration\":\"3000\",\"disapper\":false}}}}}', '2024-01-26 15:58:09', '2024-01-26 15:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `api_call_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `md_settings`
--

CREATE TABLE `md_settings` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(191) NOT NULL,
  `history_area_heading_bg_color` varchar(191) NOT NULL,
  `history_area_heading_text_size` varchar(191) NOT NULL,
  `history_area_content_color_even` varchar(191) NOT NULL,
  `main_area_heading_bg_color` varchar(191) NOT NULL,
  `main_area_heading_text_size` varchar(191) NOT NULL,
  `mai_area_content_bg_color_odd` varchar(191) NOT NULL,
  `mai_area_content_bg_color_even` varchar(191) NOT NULL,
  `no_of_column` int(11) NOT NULL,
  `no_of_rows` int(11) NOT NULL,
  `text_alignment` varchar(191) NOT NULL,
  `audio_1` varchar(191) NOT NULL,
  `audio_2` varchar(191) NOT NULL,
  `language` varchar(191) NOT NULL,
  `blinking_color` varchar(191) NOT NULL,
  `logo_alignment` varchar(191) NOT NULL,
  `header_background_color` varchar(191) NOT NULL,
  `date_time_color` varchar(191) NOT NULL,
  `logo_image_size` varchar(191) NOT NULL,
  `visibility` varchar(191) NOT NULL,
  `ticket_background_color` varchar(191) NOT NULL,
  `ticket_text_color` varchar(191) NOT NULL,
  `ticket_text_size` varchar(191) NOT NULL,
  `ticket_font_family` varchar(191) NOT NULL,
  `ticket_text_direction` varchar(191) NOT NULL,
  `ticket_text_speed` varchar(191) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_settings`
--

INSERT INTO `md_settings` (`id`, `setting_name`, `history_area_heading_bg_color`, `history_area_heading_text_size`, `history_area_content_color_even`, `main_area_heading_bg_color`, `main_area_heading_text_size`, `mai_area_content_bg_color_odd`, `mai_area_content_bg_color_even`, `no_of_column`, `no_of_rows`, `text_alignment`, `audio_1`, `audio_2`, `language`, `blinking_color`, `logo_alignment`, `header_background_color`, `date_time_color`, `logo_image_size`, `visibility`, `ticket_background_color`, `ticket_text_color`, `ticket_text_size`, `ticket_font_family`, `ticket_text_direction`, `ticket_text_speed`, `updated_at`, `created_at`) VALUES
(1, 'test', '#123AE3', '20', '#4EEF75', '#36D5B0', '20', '#C71EAE', '#EB2957', 10, 10, 'left', 'male', 'male', 'en_ar', '#153ADD', 'right', '#1734ED', '#21CD21', '20', 'show', '#E39F16', '#1FD531', '20', 'ligsdk', 'left', '20', '2024-03-28 15:18:58', '2024-03-28 15:18:58');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_12_172945_create_questions_table', 1),
(4, '2020_04_12_175125_create_branches_table', 1),
(5, '2020_04_27_115116_create_answers_table', 1),
(6, '2020_05_03_082014_create_devices_table', 1),
(7, '2020_05_03_085944_create_categories_table', 1),
(8, '2020_05_03_090000_create_subcategories_table', 1),
(9, '2020_05_18_071805_create_device_templates_table', 1),
(10, '2020_06_08_081126_create_logs_table', 1),
(11, '2020_07_20_074254_create_schedule_templates_table', 1),
(12, '2020_09_14_115017_create_organizations_table', 1),
(13, '2020_09_14_115203_create_zones_table', 1),
(14, '2020_09_14_115217_create_cities_table', 1),
(15, '2020_09_14_115310_create_device_groups_table', 1),
(16, '2020_09_21_110449_create_permission_tables', 1),
(17, '2020_09_30_091446_create_template_videos_table', 1),
(18, '2020_09_30_092331_create_template_pictures_table', 1),
(19, '2020_10_04_081153_create_device_template_asssets_table', 1),
(20, '2020_10_04_081550_create_device_template_data_table', 1),
(21, '2020_11_09_080124_create_schedules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 7),
(5, 'App\\User', 5),
(8, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `slug`, `logo`, `country_id`, `created_at`, `updated_at`) VALUES
(3, 'SWANTECH SOL.', 'swantech-sol', '/uploads/organizations/logos/6392eb175bb62_1-logo-Centre-Stage.jpg', 229, '2022-09-06 19:55:02', '2022-12-09 15:00:23'),
(4, 'Jackys - Demo', 'jackys-demo', '/uploads/organizations/logos/634fdd46e33b2_jackys.jpg', 229, '2022-10-19 18:14:17', '2022-10-19 18:19:34'),
(5, 'SIB', 'sib', '/uploads/organizations/logos/634fddc2a7fb2_SIB.png', 229, '2022-10-19 18:17:21', '2022-10-19 18:21:38'),
(6, 'CENTER STAGE', 'center-stage', 'assets/media/various/ecom_product3.png', 229, '2024-02-08 13:43:12', '2024-02-08 13:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `parent_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 0, 'zones', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(2, 1, 'create_zones', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(3, 1, 'update_zones', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(4, 1, 'delete_zones', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(5, 1, 'assign_zones', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(6, 0, 'cities', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(7, 6, 'create_cities', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(8, 6, 'update_cities', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(9, 6, 'delete_cities', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(10, 6, 'assign_cities', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(11, 0, 'branches', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(12, 11, 'create_branches', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(13, 11, 'update_branches', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(14, 11, 'delete_branches', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(15, 11, 'assign_branches', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(16, 0, 'device_groups', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(17, 16, 'create_device_groups', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(18, 16, 'update_device_groups', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(19, 16, 'delete_device_groups', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(20, 16, 'assign_device_groups', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(21, 0, 'devices', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(22, 21, 'create_devices', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54'),
(23, 21, 'update_devices', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(24, 0, 'users', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(25, 24, 'create_users', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(26, 24, 'update_users', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(27, 24, 'delete_users', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(28, 0, 'device_templates', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(29, 28, 'create_device_templates', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(30, 28, 'update_device_templates', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(31, 28, 'delete_device_templates', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(32, 0, 'playlists', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(33, 32, '', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(34, 32, 'update_playlists', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(35, 32, 'delete_playlists', 'web', '2022-07-18 05:18:55', '2022-07-18 05:18:55'),
(36, 0, 'use_apis', 'web', NULL, NULL),
(37, 0, 'api_logs', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(38, 0, 'gallery', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(39, 38, 'upload_gallery', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(40, 38, 'delete_gallery', 'web', '2022-07-18 05:18:53', '2022-07-18 05:18:53'),
(41, 0, 'add_lisence', 'web', '2022-07-18 05:18:54', '2022-07-18 05:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_assets`
--

CREATE TABLE `playlist_assets` (
  `id` bigint(20) NOT NULL,
  `play_list_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist_assets`
--

INSERT INTO `playlist_assets` (`id`, `play_list_id`, `asset_id`, `duration`, `created_at`, `updated_at`) VALUES
(45, 1, 3, 1, '2023-08-24 06:01:06', NULL),
(46, 1, 4, 1, '2023-08-24 06:01:06', NULL),
(47, 1, 5, 1, '2023-08-24 06:01:06', NULL),
(48, 1, 6, 1, '2023-08-24 06:01:06', NULL),
(49, 1, 1, 1, '2023-08-24 06:01:06', NULL),
(50, 1, 2, 1, '2023-08-24 06:01:06', NULL),
(51, 2, 16, 1, '2023-08-24 10:42:48', NULL),
(52, 2, 17, 1, '2023-08-24 10:42:48', NULL),
(53, 2, 18, 1, '2023-08-24 10:42:48', NULL),
(54, 2, 19, 1, '2023-08-24 10:42:48', NULL),
(55, 2, 13, 1, '2023-08-24 10:42:48', NULL),
(56, 2, 14, 1, '2023-08-24 10:42:48', NULL),
(57, 2, 15, 1, '2023-08-24 10:42:48', NULL),
(58, 3, 29, NULL, '2024-01-22 07:31:09', NULL),
(59, 3, 30, NULL, '2024-01-22 07:31:09', NULL),
(60, 3, 31, NULL, '2024-01-22 07:31:09', NULL),
(61, 3, 32, NULL, '2024-01-22 07:31:09', NULL),
(62, 3, 33, NULL, '2024-01-22 07:31:09', NULL),
(63, 3, 34, NULL, '2024-01-22 07:31:09', NULL),
(64, 3, 35, NULL, '2024-01-22 07:31:09', NULL),
(65, 3, 36, NULL, '2024-01-22 07:31:09', NULL),
(66, 3, 37, NULL, '2024-01-22 07:31:09', NULL),
(67, 4, 9, NULL, '2024-02-06 13:48:56', NULL),
(68, 4, 10, NULL, '2024-02-06 13:48:56', NULL),
(69, 4, 11, NULL, '2024-02-06 13:48:56', NULL),
(70, 4, 12, NULL, '2024-02-06 13:48:56', NULL),
(71, 4, 7, 30, '2024-02-06 13:48:56', NULL),
(72, 4, 8, 83, '2024-02-06 13:48:56', NULL),
(75, 5, 63, NULL, '2024-02-13 15:26:21', NULL),
(76, 5, 64, NULL, '2024-02-13 15:26:21', NULL),
(77, 5, 65, NULL, '2024-02-13 15:26:21', NULL),
(78, 5, 66, NULL, '2024-02-13 15:26:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `play_lists`
--

CREATE TABLE `play_lists` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `device_template_data_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `play_lists`
--

INSERT INTO `play_lists` (`id`, `name`, `status`, `device_template_data_id`, `created_at`, `updated_at`) VALUES
(5, 'Testing Playlist', 1, 6, '2024-02-08 13:48:24', '2024-02-13 19:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `play_list_templates`
--

CREATE TABLE `play_list_templates` (
  `id` bigint(20) NOT NULL,
  `play_list_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qms_webhooks`
--

CREATE TABLE `qms_webhooks` (
  `id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qms_webhooks`
--

INSERT INTO `qms_webhooks` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '\"updateContent,1\"', '2024-04-25 07:17:03', '2024-04-25 07:17:03'),
(2, '\"downloadStatus,1,80\"', '2024-04-25 07:17:07', '2024-04-25 07:17:07'),
(3, '\"downloadStatus,1,80\"', '2024-04-25 07:17:28', '2024-04-25 07:17:28'),
(4, '\"downloadStatus,1,70\"', '2024-04-25 07:17:39', '2024-04-25 07:17:39'),
(5, '\"downloadStatus,1,100\"', '2024-04-25 07:17:54', '2024-04-25 07:17:54'),
(6, '\"updateContent,2\"', '2024-04-25 07:17:54', '2024-04-25 07:17:54'),
(7, '\"updateContent,1\"', '2024-04-25 07:18:31', '2024-04-25 07:18:31'),
(8, '\"updateContent,1\"', '2024-04-25 07:19:09', '2024-04-25 07:19:09'),
(9, '\"downloadStatus,1,100\"', '2024-04-25 07:19:14', '2024-04-25 07:19:14'),
(10, '\"updateContent,2\"', '2024-04-25 07:19:15', '2024-04-25 07:19:15'),
(11, '\"downloadStatus,1,100\"', '2024-04-25 07:19:23', '2024-04-25 07:19:23'),
(12, '\"updateContent,3\"', '2024-04-25 07:19:23', '2024-04-25 07:19:23'),
(13, '\"downloadStatus,2,70\"', '2024-04-25 07:19:37', '2024-04-25 07:19:37'),
(14, '\"updateContent,1\"', '2024-04-25 07:27:19', '2024-04-25 07:27:19'),
(15, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(16, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(17, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(18, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(19, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(20, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(21, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(22, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(23, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(24, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(25, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(26, '\"restart-app\"', '2024-06-24 06:11:09', '2024-06-24 06:11:09'),
(27, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(28, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(29, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(30, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(31, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(32, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(33, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(34, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(35, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(36, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(37, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(38, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(39, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(40, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(41, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(42, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(43, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(44, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(45, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(46, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(47, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(48, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(49, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(50, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(51, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(52, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(53, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(54, '\"restart-app\"', '2024-06-24 06:11:10', '2024-06-24 06:11:10'),
(55, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(56, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(57, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(58, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(59, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(60, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(61, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(62, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(63, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(64, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(65, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(66, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(67, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(68, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(69, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(70, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(71, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(72, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(73, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(74, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(75, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(76, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(77, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(78, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(79, '\"restart-app\"', '2024-06-24 06:11:11', '2024-06-24 06:11:11'),
(80, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(81, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(82, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(83, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(84, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(85, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(86, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(87, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(88, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(89, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(90, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(91, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(92, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(93, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(94, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(95, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(96, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(97, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(98, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(99, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(100, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(101, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(102, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(103, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(104, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(105, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(106, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(107, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(108, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(109, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(110, '\"restart-app\"', '2024-06-24 06:11:12', '2024-06-24 06:11:12'),
(111, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(112, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(113, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(114, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(115, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(116, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(117, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(118, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(119, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(120, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(121, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(122, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(123, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(124, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(125, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(126, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(127, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(128, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(129, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(130, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(131, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(132, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(133, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(134, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(135, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(136, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(137, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(138, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(139, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(140, '\"restart-app\"', '2024-06-24 06:11:13', '2024-06-24 06:11:13'),
(141, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(142, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(143, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(144, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(145, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(146, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(147, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(148, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(149, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(150, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(151, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(152, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(153, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(154, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(155, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(156, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(157, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(158, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(159, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(160, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(161, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(162, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(163, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(164, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(165, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(166, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(167, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(168, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(169, '\"restart-app\"', '2024-06-24 06:11:14', '2024-06-24 06:11:14'),
(170, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(171, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(172, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(173, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(174, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(175, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(176, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(177, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(178, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(179, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(180, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(181, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(182, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(183, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(184, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(185, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(186, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(187, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(188, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(189, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(190, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(191, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(192, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(193, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(194, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(195, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(196, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(197, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(198, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(199, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(200, '\"restart-app\"', '2024-06-24 06:11:15', '2024-06-24 06:11:15'),
(201, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(202, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(203, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(204, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(205, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(206, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(207, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(208, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(209, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(210, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(211, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(212, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(213, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(214, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(215, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(216, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(217, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(218, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(219, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(220, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(221, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(222, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(223, '\"restart-app\"', '2024-06-24 06:11:16', '2024-06-24 06:11:16'),
(224, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(225, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(226, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(227, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(228, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(229, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(230, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(231, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(232, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(233, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(234, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(235, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(236, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(237, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(238, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(239, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(240, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(241, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(242, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(243, '\"restart-app\"', '2024-06-24 06:11:17', '2024-06-24 06:11:17'),
(244, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(245, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(246, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(247, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(248, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(249, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(250, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(251, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(252, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(253, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(254, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(255, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(256, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(257, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(258, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(259, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(260, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(261, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(262, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(263, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(264, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(265, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(266, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(267, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(268, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(269, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(270, '\"restart-app\"', '2024-06-24 06:11:18', '2024-06-24 06:11:18'),
(271, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(272, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(273, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(274, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(275, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(276, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(277, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(278, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(279, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(280, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(281, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(282, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(283, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(284, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(285, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(286, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(287, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(288, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(289, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(290, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(291, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(292, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(293, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(294, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(295, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(296, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(297, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(298, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(299, '\"restart-app\"', '2024-06-24 06:11:19', '2024-06-24 06:11:19'),
(300, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(301, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(302, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(303, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(304, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(305, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(306, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(307, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(308, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(309, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(310, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(311, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(312, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(313, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(314, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(315, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(316, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(317, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(318, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(319, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(320, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(321, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(322, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(323, '\"restart-app\"', '2024-06-24 06:11:20', '2024-06-24 06:11:20'),
(324, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(325, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(326, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(327, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(328, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(329, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(330, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(331, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(332, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(333, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(334, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(335, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(336, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(337, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(338, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(339, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(340, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(341, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(342, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(343, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(344, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(345, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(346, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(347, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(348, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(349, '\"restart-app\"', '2024-06-24 06:11:21', '2024-06-24 06:11:21'),
(350, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(351, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(352, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(353, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(354, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(355, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(356, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(357, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(358, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(359, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(360, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(361, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(362, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(363, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(364, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(365, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(366, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(367, '\"restart-app\"', '2024-06-24 06:11:22', '2024-06-24 06:11:22'),
(368, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(369, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(370, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(371, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(372, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(373, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(374, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(375, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(376, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(377, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(378, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(379, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(380, '\"restart-app\"', '2024-06-24 06:11:23', '2024-06-24 06:11:23'),
(381, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(382, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(383, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(384, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(385, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(386, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(387, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(388, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(389, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(390, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(391, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(392, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(393, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(394, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(395, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(396, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(397, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(398, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(399, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(400, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(401, '\"restart-app\"', '2024-06-24 06:11:24', '2024-06-24 06:11:24'),
(402, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(403, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(404, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(405, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(406, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(407, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(408, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(409, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(410, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(411, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(412, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(413, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(414, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(415, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(416, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(417, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(418, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(419, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(420, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(421, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(422, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(423, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(424, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(425, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(426, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(427, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(428, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(429, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(430, '\"restart-app\"', '2024-06-24 06:11:25', '2024-06-24 06:11:25'),
(431, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(432, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(433, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(434, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(435, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(436, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(437, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(438, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(439, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(440, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(441, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(442, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(443, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(444, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(445, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(446, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(447, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(448, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(449, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(450, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(451, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(452, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(453, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(454, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(455, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(456, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(457, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(458, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(459, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(460, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(461, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(462, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(463, '\"restart-app\"', '2024-06-24 06:11:26', '2024-06-24 06:11:26'),
(464, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(465, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(466, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(467, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(468, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(469, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(470, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(471, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(472, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(473, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(474, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(475, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(476, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(477, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(478, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(479, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(480, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(481, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(482, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(483, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(484, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(485, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(486, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(487, '\"restart-app\"', '2024-06-24 06:11:27', '2024-06-24 06:11:27'),
(488, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(489, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(490, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(491, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(492, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(493, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(494, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(495, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(496, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(497, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(498, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(499, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(500, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(501, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(502, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(503, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(504, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(505, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(506, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(507, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(508, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(509, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(510, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(511, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(512, '\"restart-app\"', '2024-06-24 06:11:28', '2024-06-24 06:11:28'),
(513, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(514, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(515, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(516, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(517, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(518, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(519, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(520, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(521, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(522, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(523, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(524, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(525, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(526, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(527, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(528, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(529, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(530, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(531, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(532, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(533, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(534, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(535, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(536, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(537, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(538, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(539, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(540, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(541, '\"restart-app\"', '2024-06-24 06:11:29', '2024-06-24 06:11:29'),
(542, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(543, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(544, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(545, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(546, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(547, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(548, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(549, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(550, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(551, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(552, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(553, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(554, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(555, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(556, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(557, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(558, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(559, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(560, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(561, '\"restart-app\"', '2024-06-24 06:11:30', '2024-06-24 06:11:30'),
(562, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(563, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(564, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(565, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(566, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(567, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(568, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(569, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(570, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(571, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(572, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(573, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(574, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(575, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(576, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(577, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(578, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(579, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(580, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(581, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(582, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(583, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(584, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(585, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(586, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(587, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(588, '\"restart-app\"', '2024-06-24 06:11:31', '2024-06-24 06:11:31'),
(589, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(590, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(591, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(592, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(593, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(594, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(595, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(596, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(597, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(598, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(599, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(600, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(601, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(602, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(603, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(604, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(605, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(606, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(607, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(608, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(609, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(610, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(611, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(612, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(613, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(614, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(615, '\"restart-app\"', '2024-06-24 06:11:32', '2024-06-24 06:11:32'),
(616, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(617, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(618, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(619, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(620, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(621, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(622, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(623, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(624, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(625, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(626, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(627, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(628, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(629, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(630, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(631, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(632, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(633, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(634, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(635, '\"restart-app\"', '2024-06-24 06:11:33', '2024-06-24 06:11:33'),
(636, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(637, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(638, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(639, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(640, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(641, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(642, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(643, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(644, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(645, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(646, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(647, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(648, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(649, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(650, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(651, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(652, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(653, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(654, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(655, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(656, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(657, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(658, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(659, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(660, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(661, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(662, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(663, '\"restart-app\"', '2024-06-24 06:11:34', '2024-06-24 06:11:34'),
(664, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(665, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(666, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(667, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(668, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(669, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(670, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(671, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(672, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(673, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(674, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(675, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(676, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(677, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(678, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(679, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(680, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(681, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(682, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(683, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(684, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(685, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(686, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(687, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(688, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(689, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(690, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(691, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(692, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(693, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(694, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(695, '\"restart-app\"', '2024-06-24 06:11:35', '2024-06-24 06:11:35'),
(696, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(697, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(698, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(699, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(700, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(701, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(702, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(703, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(704, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(705, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(706, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(707, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(708, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(709, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(710, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(711, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(712, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(713, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36');
INSERT INTO `qms_webhooks` (`id`, `content`, `created_at`, `updated_at`) VALUES
(714, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(715, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(716, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(717, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(718, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(719, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(720, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(721, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(722, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(723, '\"restart-app\"', '2024-06-24 06:11:36', '2024-06-24 06:11:36'),
(724, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(725, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(726, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(727, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(728, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(729, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(730, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(731, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(732, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(733, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(734, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(735, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(736, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(737, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(738, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(739, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(740, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(741, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(742, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(743, '\"restart-app\"', '2024-06-24 06:11:37', '2024-06-24 06:11:37'),
(744, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(745, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(746, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(747, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(748, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(749, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(750, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(751, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(752, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(753, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(754, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(755, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(756, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(757, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(758, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(759, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(760, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(761, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(762, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(763, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(764, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(765, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(766, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(767, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(768, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(769, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(770, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(771, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(772, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(773, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(774, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(775, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(776, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(777, '\"restart-app\"', '2024-06-24 06:11:38', '2024-06-24 06:11:38'),
(778, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(779, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(780, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(781, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(782, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(783, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(784, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(785, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(786, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(787, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(788, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(789, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(790, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(791, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(792, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(793, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(794, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(795, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(796, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(797, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(798, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(799, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(800, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(801, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(802, '\"restart-app\"', '2024-06-24 06:11:39', '2024-06-24 06:11:39'),
(803, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(804, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(805, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(806, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(807, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(808, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(809, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(810, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(811, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(812, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(813, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(814, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(815, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(816, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(817, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(818, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(819, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(820, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(821, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(822, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(823, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(824, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(825, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(826, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(827, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(828, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(829, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(830, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(831, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(832, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(833, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(834, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(835, '\"restart-app\"', '2024-06-24 06:11:40', '2024-06-24 06:11:40'),
(836, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(837, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(838, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(839, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(840, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(841, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(842, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(843, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(844, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(845, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(846, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(847, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(848, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(849, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(850, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(851, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(852, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(853, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(854, '\"restart-app\"', '2024-06-24 06:11:41', '2024-06-24 06:11:41'),
(855, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(856, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(857, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(858, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(859, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(860, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(861, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(862, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(863, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(864, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(865, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(866, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(867, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(868, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(869, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(870, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(871, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(872, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(873, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(874, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(875, '\"restart-app\"', '2024-06-24 06:11:42', '2024-06-24 06:11:42'),
(876, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(877, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(878, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(879, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(880, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(881, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(882, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(883, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(884, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(885, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(886, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(887, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(888, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(889, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(890, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(891, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(892, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(893, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(894, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(895, '\"restart-app\"', '2024-06-24 06:11:43', '2024-06-24 06:11:43'),
(896, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(897, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(898, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(899, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(900, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(901, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(902, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(903, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(904, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(905, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(906, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(907, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(908, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(909, '\"restart-app\"', '2024-06-24 06:11:44', '2024-06-24 06:11:44'),
(910, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(911, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(912, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(913, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(914, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(915, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(916, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(917, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(918, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(919, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(920, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(921, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(922, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(923, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(924, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(925, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(926, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(927, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(928, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(929, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(930, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(931, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(932, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(933, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(934, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(935, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(936, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(937, '\"restart-app\"', '2024-06-24 06:11:45', '2024-06-24 06:11:45'),
(938, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(939, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(940, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(941, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(942, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(943, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(944, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(945, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(946, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(947, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(948, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(949, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(950, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(951, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(952, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(953, '\"restart-app\"', '2024-06-24 06:11:46', '2024-06-24 06:11:46'),
(954, '\"restart-app\"', '2024-06-24 06:13:00', '2024-06-24 06:13:00'),
(955, '\"restart-app\"', '2024-06-24 06:16:00', '2024-06-24 06:16:00'),
(956, '\"restart-app\"', '2024-06-24 06:18:00', '2024-06-24 06:18:00'),
(957, '\"pong,2\"', '2024-06-24 06:18:44', '2024-06-24 06:18:44'),
(958, '\"restart-app\"', '2024-06-24 06:20:34', '2024-06-24 06:20:34'),
(959, '\"pong,2\"', '2024-06-24 06:20:34', '2024-06-24 06:20:34'),
(960, '\"pong,2\"', '2024-06-24 06:20:41', '2024-06-24 06:20:41'),
(961, '\"pong,2\"', '2024-06-24 06:20:50', '2024-06-24 06:20:50'),
(962, '\"pong,2\"', '2024-06-24 06:20:52', '2024-06-24 06:20:52'),
(963, '\"pong,2\"', '2024-06-24 06:20:54', '2024-06-24 06:20:54'),
(964, '\"pong,2\"', '2024-06-24 06:20:57', '2024-06-24 06:20:57'),
(965, '\"pong,2\"', '2024-06-24 06:22:17', '2024-06-24 06:22:17'),
(966, '\"pong,2\"', '2024-06-24 06:23:10', '2024-06-24 06:23:10'),
(967, '\"pong,2\"', '2024-06-24 06:25:05', '2024-06-24 06:25:05'),
(968, '\"pong,2\"', '2024-06-24 06:25:15', '2024-06-24 06:25:15'),
(969, '\"pong,2\"', '2024-06-24 06:25:17', '2024-06-24 06:25:17'),
(970, '\"pong,2\"', '2024-06-24 06:25:59', '2024-06-24 06:25:59'),
(971, '\"pong,2\"', '2024-06-24 06:26:01', '2024-06-24 06:26:01'),
(972, '\"pong,2\"', '2024-06-24 06:26:02', '2024-06-24 06:26:02'),
(973, '\"pong,2\"', '2024-06-24 06:26:03', '2024-06-24 06:26:03'),
(974, '\"pong,2\"', '2024-06-24 06:26:03', '2024-06-24 06:26:03'),
(975, '\"pong,2\"', '2024-06-24 06:26:03', '2024-06-24 06:26:03'),
(976, '\"pong,2\"', '2024-06-24 06:26:03', '2024-06-24 06:26:03'),
(977, '\"pong,2\"', '2024-06-24 06:26:04', '2024-06-24 06:26:04'),
(978, '\"pong,2\"', '2024-06-24 06:26:04', '2024-06-24 06:26:04'),
(979, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(980, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(981, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(982, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(983, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(984, '\"pong,2\"', '2024-06-24 06:26:05', '2024-06-24 06:26:05'),
(985, '\"pong,2\"', '2024-06-24 06:28:04', '2024-06-24 06:28:04'),
(986, '\"pong,2\"', '2024-06-24 06:29:59', '2024-06-24 06:29:59'),
(987, '\"pong,2\"', '2024-06-24 06:30:50', '2024-06-24 06:30:50'),
(988, '\"pong,2\"', '2024-06-24 06:30:59', '2024-06-24 06:30:59'),
(989, '\"pong,2\"', '2024-06-24 06:31:04', '2024-06-24 06:31:04'),
(990, '\"pong,2\"', '2024-06-24 06:32:17', '2024-06-24 06:32:17'),
(991, '\"pong,2\"', '2024-06-24 06:32:17', '2024-06-24 06:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `question_title` varchar(255) NOT NULL,
  `option_1` varchar(255) DEFAULT NULL,
  `option_2` varchar(255) DEFAULT NULL,
  `option_3` varchar(255) DEFAULT NULL,
  `option_4` varchar(255) DEFAULT NULL,
  `question_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `organization_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Administrator', 'web', '2022-09-06 19:55:43', '2022-09-06 19:55:43'),
(4, 3, 'Media Admin', 'web', '2022-10-19 18:25:58', '2022-10-19 18:37:01'),
(5, 3, 'Resource admin', 'web', '2022-10-19 18:35:02', '2022-10-19 18:35:02'),
(6, 3, 'Branch Manager', 'web', '2022-10-19 18:37:14', '2022-10-19 18:37:14'),
(7, 3, 'asdfas', 'web', '2023-04-26 21:36:56', '2023-04-26 21:36:56'),
(8, 6, 'Administrator', 'web', '2024-02-08 13:43:28', '2024-02-08 13:43:28');

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
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(9, 8),
(10, 8),
(11, 8),
(12, 8),
(13, 8),
(14, 8),
(15, 8),
(16, 8),
(17, 8),
(18, 8),
(19, 8),
(20, 8),
(21, 8),
(22, 8),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(31, 8),
(32, 8),
(33, 8),
(34, 8),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sas`
--

CREATE TABLE `sas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sas`
--

INSERT INTO `sas` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bilal Ashraf', 'admin@admin.com', '$2y$10$ifjGPlivw7IIexXActOxx.RMTc8fRwrdEAuSYPS9k95JnMyMvuJGW', NULL, '2020-11-26 09:08:52', '2021-01-18 19:33:54');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `device_group_id` bigint(20) NOT NULL,
  `device_id` bigint(20) NOT NULL,
  `device_template_data_id` bigint(20) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `assets_download_time` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `organization_id`, `zone_id`, `city_id`, `branch_id`, `device_group_id`, `device_id`, `device_template_data_id`, `start_time`, `end_time`, `assets_download_time`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 3, 2, 4, 7, 1, '2023-03-23 01:02:12', '2023-03-23 10:04:12', '2023-03-23 01:01:12', '2023-03-24 06:41:22', '2023-03-24 00:02:29', '2023-03-24 06:41:22'),
(2, 3, 3, 3, 2, 4, 7, 2, '2023-03-24 01:03:04', '2023-03-25 01:05:04', '2023-03-24 01:02:04', '2023-03-24 07:02:28', '2023-03-24 00:03:10', '2023-03-24 07:02:28'),
(3, 3, 3, 3, 2, 4, 7, 2, '2023-03-27 01:05:39', '2023-03-28 09:07:39', '2023-03-24 01:04:39', '2023-03-24 06:42:27', '2023-03-24 00:05:48', '2023-03-24 06:42:27'),
(4, 3, 1, 1, 1, 1, 8, 1, '2023-04-27 09:48:59', '2023-05-06 09:50:59', '2023-04-27 09:47:59', NULL, '2023-04-27 09:49:05', '2023-04-27 09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `service_logs`
--

CREATE TABLE `service_logs` (
  `id` bigint(20) NOT NULL,
  `url` text DEFAULT NULL,
  `params` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `call_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `request_content` longtext DEFAULT NULL,
  `response_content` longtext DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `response_code` varchar(255) DEFAULT NULL,
  `log_type` enum('error-log','request-log') DEFAULT 'request-log',
  `file` longtext DEFAULT NULL,
  `line` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `trace` longtext DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `service_logs`
--

INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(2, 'http://127.0.0.1:8000/api/all-branches?email=shaheer%40gmail.com&password=ahamaham', '{\"email\":\"shaheer@gmail.com\",\"password\":\"ahamaham\"}', 1, '127.0.0.1', '2023-01-26 05:21:31', '2023-01-26 05:21:31', 'GET', 'January 26, 2023, 5:21 am', NULL, '{\"email\":\"shaheer@gmail.com\",\"password\":\"ahamaham\"}', NULL, 'PostmanRuntime/7.30.0', NULL, 'request-log', NULL, NULL, NULL, NULL, 3),
(3, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:30:26', '2023-08-11 05:30:26', 'GET', 'August 11, 2023, 5:30 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(4, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:32:47', '2023-08-11 05:32:47', 'GET', 'August 11, 2023, 5:32 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(5, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:33:59', '2023-08-11 05:33:59', 'GET', 'August 11, 2023, 5:33 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(6, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:34:17', '2023-08-11 05:34:17', 'GET', 'August 11, 2023, 5:34 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(7, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:34:51', '2023-08-11 05:34:51', 'GET', 'August 11, 2023, 5:34 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(8, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:36:24', '2023-08-11 05:36:24', 'GET', 'August 11, 2023, 5:36 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(9, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:37:08', '2023-08-11 05:37:08', 'GET', 'August 11, 2023, 5:37 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(10, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:37:57', '2023-08-11 05:37:57', 'GET', 'August 11, 2023, 5:37 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(11, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 05:38:01', '2023-08-11 05:38:01', 'GET', 'August 11, 2023, 5:38 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(12, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:38:30', '2023-08-11 05:38:30', 'GET', 'August 11, 2023, 5:38 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(13, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:38:41', '2023-08-11 05:38:41', 'GET', 'August 11, 2023, 5:38 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(14, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:39:00', '2023-08-11 05:39:00', 'GET', 'August 11, 2023, 5:39 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(15, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:39:04', '2023-08-11 05:39:04', 'GET', 'August 11, 2023, 5:39 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(16, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:40:37', '2023-08-11 05:40:37', 'GET', 'August 11, 2023, 5:40 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(17, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:41:03', '2023-08-11 05:41:03', 'GET', 'August 11, 2023, 5:41 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(18, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:41:43', '2023-08-11 05:41:43', 'GET', 'August 11, 2023, 5:41 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(19, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:42:01', '2023-08-11 05:42:01', 'GET', 'August 11, 2023, 5:42 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(20, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 05:42:37', '2023-08-11 05:42:37', 'GET', 'August 11, 2023, 5:42 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(21, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:42:41', '2023-08-11 05:42:41', 'GET', 'August 11, 2023, 5:42 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(22, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:43:03', '2023-08-11 05:43:03', 'GET', 'August 11, 2023, 5:43 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(23, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-08-11 05:53:43', '2023-08-11 05:53:43', 'GET', 'August 11, 2023, 5:53 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(24, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-08-11 05:54:37', '2023-08-11 05:54:37', 'GET', 'August 11, 2023, 5:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(25, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-08-11 05:54:58', '2023-08-11 05:54:58', 'GET', 'August 11, 2023, 5:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(26, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-08-11 05:55:30', '2023-08-11 05:55:30', 'GET', 'August 11, 2023, 5:55 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(27, 'http://127.0.0.1:8000/api/branches?city_id=1', '{\"city_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:55:40', '2023-08-11 05:55:40', 'GET', 'August 11, 2023, 5:55 am', NULL, '{\"city_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(28, 'http://127.0.0.1:8000/api/device-groups?city_id=1', '{\"city_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:56:53', '2023-08-11 05:56:53', 'GET', 'August 11, 2023, 5:56 am', NULL, '{\"city_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(29, 'http://127.0.0.1:8000/api/device-groups?city_id=1', '{\"city_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:58:29', '2023-08-11 05:58:29', 'GET', 'August 11, 2023, 5:58 am', NULL, '{\"city_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(30, 'http://127.0.0.1:8000/api/device-groups?branch_id=1', '{\"branch_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:58:37', '2023-08-11 05:58:37', 'GET', 'August 11, 2023, 5:58 am', NULL, '{\"branch_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(31, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 05:59:58', '2023-08-11 05:59:58', 'GET', 'August 11, 2023, 5:59 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(32, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:01:10', '2023-08-11 06:01:10', 'GET', 'August 11, 2023, 6:01 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(33, 'http://127.0.0.1:8000/api/branches?city_id=1', '{\"city_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:01:28', '2023-08-11 06:01:28', 'GET', 'August 11, 2023, 6:01 am', NULL, '{\"city_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(34, 'http://127.0.0.1:8000/api/device-groups?branch_id=1', '{\"branch_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:02:21', '2023-08-11 06:02:21', 'GET', 'August 11, 2023, 6:02 am', NULL, '{\"branch_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(35, 'http://127.0.0.1:8000/api/devices?branch_id=1', '{\"branch_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:03:15', '2023-08-11 06:03:15', 'GET', 'August 11, 2023, 6:03 am', NULL, '{\"branch_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(36, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:04:35', '2023-08-11 06:04:35', 'GET', 'August 11, 2023, 6:04 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(37, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:20:34', '2023-08-11 06:20:34', 'GET', 'August 11, 2023, 6:20 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(38, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:22:43', '2023-08-11 06:22:43', 'GET', 'August 11, 2023, 6:22 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(39, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 06:23:02', '2023-08-11 06:23:02', 'GET', 'August 11, 2023, 6:23 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(40, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 06:24:11', '2023-08-11 06:24:11', 'GET', 'August 11, 2023, 6:24 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(41, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:24:15', '2023-08-11 06:24:15', 'GET', 'August 11, 2023, 6:24 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(42, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:24:29', '2023-08-11 06:24:29', 'GET', 'August 11, 2023, 6:24 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(43, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:24:51', '2023-08-11 06:24:51', 'GET', 'August 11, 2023, 6:24 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(44, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:25:07', '2023-08-11 06:25:07', 'GET', 'August 11, 2023, 6:25 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(45, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:29:28', '2023-08-11 06:29:28', 'GET', 'August 11, 2023, 6:29 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(46, 'http://127.0.0.1:8000/api/devices?device_group_id=1', '{\"device_group_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:30:12', '2023-08-11 06:30:12', 'GET', 'August 11, 2023, 6:30 am', NULL, '{\"device_group_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(47, 'http://127.0.0.1:8000/api/all-cities', '[]', NULL, '127.0.0.1', '2023-08-11 06:34:34', '2023-08-11 06:34:34', 'GET', 'August 11, 2023, 6:34 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(48, 'http://127.0.0.1:8000/api/all-branches', '[]', NULL, '127.0.0.1', '2023-08-11 06:35:10', '2023-08-11 06:35:10', 'GET', 'August 11, 2023, 6:35 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(49, 'http://127.0.0.1:8000/api/all-device-groups', '[]', NULL, '127.0.0.1', '2023-08-11 06:35:48', '2023-08-11 06:35:48', 'GET', 'August 11, 2023, 6:35 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(50, 'http://127.0.0.1:8000/api/all-device-groups', '[]', NULL, '127.0.0.1', '2023-08-11 06:35:57', '2023-08-11 06:35:57', 'GET', 'August 11, 2023, 6:35 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(51, 'http://127.0.0.1:8000/api/cities?zone_id=1', '{\"zone_id\":\"1\"}', NULL, '127.0.0.1', '2023-08-11 06:36:26', '2023-08-11 06:36:26', 'GET', 'August 11, 2023, 6:36 am', NULL, '{\"zone_id\":\"1\"}', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(52, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 06:44:19', '2023-08-11 06:44:19', 'GET', 'August 11, 2023, 6:44 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(53, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-08-11 06:45:08', '2023-08-11 06:45:08', 'GET', 'August 11, 2023, 6:45 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(54, 'http://127.0.0.1:8000/api/cities/1', '[]', NULL, '127.0.0.1', '2023-08-11 06:45:48', '2023-08-11 06:45:48', 'GET', 'August 11, 2023, 6:45 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(55, 'http://127.0.0.1:8000/api/cities/1', '[]', NULL, '127.0.0.1', '2023-08-11 06:48:38', '2023-08-11 06:48:38', 'GET', 'August 11, 2023, 6:48 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(56, 'http://127.0.0.1:8000/api/cities/1', '[]', NULL, '127.0.0.1', '2023-08-11 06:48:49', '2023-08-11 06:48:49', 'GET', 'August 11, 2023, 6:48 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(57, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 06:49:01', '2023-08-11 06:49:01', 'GET', 'August 11, 2023, 6:49 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(58, 'http://127.0.0.1:8000/api/branches/1', '[]', NULL, '127.0.0.1', '2023-08-11 06:50:09', '2023-08-11 06:50:09', 'GET', 'August 11, 2023, 6:50 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(59, 'http://127.0.0.1:8000/api/branches/1', '[]', NULL, '127.0.0.1', '2023-08-11 07:49:38', '2023-08-11 07:49:38', 'GET', 'August 11, 2023, 7:49 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(60, 'http://127.0.0.1:8000/api/branches/1', '[]', NULL, '127.0.0.1', '2023-08-11 07:52:14', '2023-08-11 07:52:14', 'GET', 'August 11, 2023, 7:52 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(61, 'http://127.0.0.1:8000/api/branches/1', '[]', NULL, '127.0.0.1', '2023-08-11 07:52:20', '2023-08-11 07:52:20', 'GET', 'August 11, 2023, 7:52 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(62, 'http://127.0.0.1:8000/api/device-groups/1', '[]', NULL, '127.0.0.1', '2023-08-11 07:53:36', '2023-08-11 07:53:36', 'GET', 'August 11, 2023, 7:53 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(63, 'http://127.0.0.1:8000/api/device-groups/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:00:08', '2023-08-11 08:00:08', 'GET', 'August 11, 2023, 8:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(64, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:03:22', '2023-08-11 08:03:22', 'GET', 'August 11, 2023, 8:03 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(65, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:03:37', '2023-08-11 08:03:37', 'GET', 'August 11, 2023, 8:03 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(66, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-08-11 08:04:15', '2023-08-11 08:04:15', 'GET', 'August 11, 2023, 8:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(67, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-08-11 08:04:25', '2023-08-11 08:04:25', 'GET', 'August 11, 2023, 8:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(68, 'http://127.0.0.1:8000/api/device-groups', '[]', NULL, '127.0.0.1', '2023-08-11 08:04:32', '2023-08-11 08:04:32', 'GET', 'August 11, 2023, 8:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(69, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 08:04:54', '2023-08-11 08:04:54', 'GET', 'August 11, 2023, 8:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(70, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 08:05:13', '2023-08-11 08:05:13', 'GET', 'August 11, 2023, 8:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(71, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 08:05:25', '2023-08-11 08:05:25', 'GET', 'August 11, 2023, 8:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(72, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:15:31', '2023-08-11 08:15:31', 'GET', 'August 11, 2023, 8:15 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(73, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:17:39', '2023-08-11 08:17:39', 'GET', 'August 11, 2023, 8:17 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(74, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:18:41', '2023-08-11 08:18:41', 'GET', 'August 11, 2023, 8:18 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(75, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:19:32', '2023-08-11 08:19:32', 'GET', 'August 11, 2023, 8:19 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(76, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-08-11 08:19:53', '2023-08-11 08:19:53', 'GET', 'August 11, 2023, 8:19 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(77, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:20:18', '2023-08-11 08:20:18', 'GET', 'August 11, 2023, 8:20 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(78, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:20:57', '2023-08-11 08:20:57', 'GET', 'August 11, 2023, 8:20 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(79, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:21:07', '2023-08-11 08:21:07', 'GET', 'August 11, 2023, 8:21 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(80, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:22:22', '2023-08-11 08:22:22', 'GET', 'August 11, 2023, 8:22 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(81, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:22:45', '2023-08-11 08:22:45', 'GET', 'August 11, 2023, 8:22 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(82, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:23:33', '2023-08-11 08:23:33', 'GET', 'August 11, 2023, 8:23 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(83, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:23:46', '2023-08-11 08:23:46', 'GET', 'August 11, 2023, 8:23 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(84, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:24:13', '2023-08-11 08:24:13', 'GET', 'August 11, 2023, 8:24 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(85, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:24:27', '2023-08-11 08:24:27', 'GET', 'August 11, 2023, 8:24 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(86, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:31:53', '2023-08-11 08:31:53', 'GET', 'August 11, 2023, 8:31 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(87, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:32:02', '2023-08-11 08:32:02', 'GET', 'August 11, 2023, 8:32 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(88, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:32:06', '2023-08-11 08:32:06', 'GET', 'August 11, 2023, 8:32 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(89, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:32:40', '2023-08-11 08:32:40', 'GET', 'August 11, 2023, 8:32 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(90, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-08-11 08:34:57', '2023-08-11 08:34:57', 'GET', 'August 11, 2023, 8:34 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(91, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-08-11 10:22:14', '2023-08-11 10:22:14', 'GET', 'August 11, 2023, 10:22 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(92, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-08-24 05:43:14', '2023-08-24 05:43:14', 'GET', 'August 24, 2023, 5:43 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(93, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-08-24 06:01:23', '2023-08-24 06:01:23', 'GET', 'August 24, 2023, 6:01 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(94, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-08-24 06:07:10', '2023-08-24 06:07:10', 'GET', 'August 24, 2023, 6:07 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(95, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-08-24 11:56:14', '2023-08-24 11:56:14', 'GET', 'August 24, 2023, 11:56 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(96, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-08-24 12:13:15', '2023-08-24 12:13:15', 'GET', 'August 24, 2023, 12:13 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(97, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-08-24 12:19:15', '2023-08-24 12:19:15', 'GET', 'August 24, 2023, 12:19 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(98, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-08-25 14:42:48', '2023-08-25 14:42:48', 'GET', 'August 25, 2023, 2:42 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(99, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-08-25 14:43:43', '2023-08-25 14:43:43', 'GET', 'August 25, 2023, 2:43 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(100, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-04 04:52:44', '2023-09-04 04:52:44', 'GET', 'September 4, 2023, 4:52 am', NULL, '[]', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(101, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-04 04:52:54', '2023-09-04 04:52:54', 'GET', 'September 4, 2023, 4:52 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(102, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-04 04:54:10', '2023-09-04 04:54:10', 'GET', 'September 4, 2023, 4:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(103, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-04 04:54:54', '2023-09-04 04:54:54', 'GET', 'September 4, 2023, 4:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(104, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 05:07:55', '2023-09-04 05:07:55', 'GET', 'September 4, 2023, 5:07 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(105, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 05:15:27', '2023-09-04 05:15:27', 'GET', 'September 4, 2023, 5:15 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(106, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-04 05:19:18', '2023-09-04 05:19:18', 'GET', 'September 4, 2023, 5:19 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(107, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-04 05:20:44', '2023-09-04 05:20:44', 'GET', 'September 4, 2023, 5:20 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(108, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 05:23:11', '2023-09-04 05:23:11', 'GET', 'September 4, 2023, 5:23 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(109, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-04 05:25:49', '2023-09-04 05:25:49', 'GET', 'September 4, 2023, 5:25 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(110, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-04 05:27:11', '2023-09-04 05:27:11', 'GET', 'September 4, 2023, 5:27 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(111, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 05:28:40', '2023-09-04 05:28:40', 'GET', 'September 4, 2023, 5:28 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(112, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 10:28:49', '2023-09-04 10:28:49', 'GET', 'September 4, 2023, 10:28 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(113, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-04 10:30:00', '2023-09-04 10:30:00', 'GET', 'September 4, 2023, 10:30 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(114, 'http://127.0.0.1:8000/api/test-socket', '[]', NULL, '127.0.0.1', '2023-09-06 18:42:47', '2023-09-06 18:42:47', 'GET', 'September 6, 2023, 6:42 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(115, 'http://127.0.0.1:8000/api/test-socket', '[]', NULL, '127.0.0.1', '2023-09-06 18:44:59', '2023-09-06 18:44:59', 'GET', 'September 6, 2023, 6:44 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(116, 'http://127.0.0.1:8000/api/test-socket', '[]', NULL, '127.0.0.1', '2023-09-06 18:45:11', '2023-09-06 18:45:11', 'GET', 'September 6, 2023, 6:45 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(117, 'http://127.0.0.1:8000/api/test-socket', '[]', NULL, '127.0.0.1', '2023-09-06 18:45:20', '2023-09-06 18:45:20', 'GET', 'September 6, 2023, 6:45 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(118, 'http://127.0.0.1:8000/api/test-socket', '[]', NULL, '127.0.0.1', '2023-09-06 18:45:41', '2023-09-06 18:45:41', 'GET', 'September 6, 2023, 6:45 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(119, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-09 18:29:26', '2023-09-09 18:29:26', 'GET', 'September 9, 2023, 6:29 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(120, 'http://127.0.0.1:8000/api/playlist/10', '[]', NULL, '127.0.0.1', '2023-09-09 18:34:47', '2023-09-09 18:34:47', 'GET', 'September 9, 2023, 6:34 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(121, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-09-09 18:51:13', '2023-09-09 18:51:13', 'GET', 'September 9, 2023, 6:51 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(122, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-09-09 18:51:36', '2023-09-09 18:51:36', 'GET', 'September 9, 2023, 6:51 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(123, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-09-09 18:55:43', '2023-09-09 18:55:43', 'GET', 'September 9, 2023, 6:55 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(124, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-09 20:59:43', '2023-09-09 20:59:43', 'GET', 'September 9, 2023, 8:59 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(125, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:00:44', '2023-09-11 10:00:44', 'GET', 'September 11, 2023, 10:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(126, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 10:00:55', '2023-09-11 10:00:55', 'GET', 'September 11, 2023, 10:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(127, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 10:01:18', '2023-09-11 10:01:18', 'GET', 'September 11, 2023, 10:01 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(128, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 10:01:35', '2023-09-11 10:01:35', 'GET', 'September 11, 2023, 10:01 am', NULL, '[]', NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(129, 'http://127.0.0.1:8000/api/zones', '[]', NULL, '127.0.0.1', '2023-09-11 10:04:52', '2023-09-11 10:04:52', 'GET', 'September 11, 2023, 10:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(130, 'http://127.0.0.1:8000/api/cities/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:00', '2023-09-11 10:05:00', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(131, 'http://127.0.0.1:8000/api/branches/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:03', '2023-09-11 10:05:03', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(132, 'http://127.0.0.1:8000/api/device-groups/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:06', '2023-09-11 10:05:06', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(133, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:09', '2023-09-11 10:05:09', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(134, 'http://127.0.0.1:8000/api/cities', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:19', '2023-09-11 10:05:19', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(135, 'http://127.0.0.1:8000/api/branches', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:23', '2023-09-11 10:05:23', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(136, 'http://127.0.0.1:8000/api/device-groups', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:26', '2023-09-11 10:05:26', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(137, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:32', '2023-09-11 10:05:32', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(138, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:05:58', '2023-09-11 10:05:58', 'GET', 'September 11, 2023, 10:05 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(139, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:06:34', '2023-09-11 10:06:34', 'GET', 'September 11, 2023, 10:06 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(140, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:08:33', '2023-09-11 10:08:33', 'GET', 'September 11, 2023, 10:08 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(141, 'http://127.0.0.1:8000/api/devices/1', '[]', NULL, '127.0.0.1', '2023-09-11 10:09:11', '2023-09-11 10:09:11', 'GET', 'September 11, 2023, 10:09 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(142, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 13:13:14', '2023-09-11 13:13:14', 'GET', 'September 11, 2023, 1:13 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(143, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-11 13:28:08', '2023-09-11 13:28:08', 'GET', 'September 11, 2023, 1:28 pm', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(144, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-12 05:15:14', '2023-09-12 05:15:14', 'GET', 'September 12, 2023, 5:15 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(145, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-12 07:27:27', '2023-09-12 07:27:27', 'GET', 'September 12, 2023, 7:27 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(146, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-12 07:57:51', '2023-09-12 07:57:51', 'GET', 'September 12, 2023, 7:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(147, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-09-14 06:59:49', '2023-09-14 06:59:49', 'GET', 'September 14, 2023, 6:59 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(148, 'http://127.0.0.1:8000/api/playlist/7', '[]', NULL, '127.0.0.1', '2023-09-14 06:59:57', '2023-09-14 06:59:57', 'GET', 'September 14, 2023, 6:59 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(149, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:00:06', '2023-09-14 07:00:06', 'GET', 'September 14, 2023, 7:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(150, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:00:35', '2023-09-14 07:00:35', 'GET', 'September 14, 2023, 7:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(151, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:01:09', '2023-09-14 07:01:09', 'GET', 'September 14, 2023, 7:01 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(152, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:02:45', '2023-09-14 07:02:45', 'GET', 'September 14, 2023, 7:02 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(153, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:02:56', '2023-09-14 07:02:56', 'GET', 'September 14, 2023, 7:02 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(154, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-14 07:15:10', '2023-09-14 07:15:10', 'GET', 'September 14, 2023, 7:15 am', NULL, '[]', NULL, 'PostmanRuntime/7.32.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(155, 'http://127.0.0.1:8000/api/playlist/8', '[]', NULL, '127.0.0.1', '2023-09-19 07:31:36', '2023-09-19 07:31:36', 'GET', 'September 19, 2023, 7:31 am', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(156, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-19 07:31:45', '2023-09-19 07:31:45', 'GET', 'September 19, 2023, 7:31 am', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(157, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-19 08:12:24', '2023-09-19 08:12:24', 'GET', 'September 19, 2023, 8:12 am', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(158, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-19 15:39:12', '2023-09-19 15:39:12', 'GET', 'September 19, 2023, 3:39 pm', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(159, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-20 06:45:25', '2023-09-20 06:45:25', 'GET', 'September 20, 2023, 7:45 am', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(160, 'http://127.0.0.1:8000/api/playlist/6', '[]', NULL, '127.0.0.1', '2023-09-20 13:08:44', '2023-09-20 13:08:44', 'GET', 'September 20, 2023, 2:08 pm', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(161, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-09-20 13:08:49', '2023-09-20 13:08:49', 'GET', 'September 20, 2023, 2:08 pm', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(162, 'http://127.0.0.1:8000/api/playlist/1', '[]', NULL, '127.0.0.1', '2023-09-20 13:08:52', '2023-09-20 13:08:52', 'GET', 'September 20, 2023, 2:08 pm', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(163, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2023-09-20 13:08:57', '2023-09-20 13:08:57', 'GET', 'September 20, 2023, 2:08 pm', NULL, '[]', NULL, 'PostmanRuntime/7.33.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(164, 'http://127.0.0.1:8000/api/submit-template-file', '[]', NULL, '127.0.0.1', '2024-01-26 12:18:32', '2024-01-26 12:18:32', 'POST', 'January 26, 2024, 1:18 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(165, 'http://127.0.0.1:8000/api/submit-template-file', '[]', NULL, '127.0.0.1', '2024-01-26 12:19:04', '2024-01-26 12:19:04', 'POST', 'January 26, 2024, 1:19 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(166, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 12:19:31', '2024-01-26 12:19:31', 'POST', 'January 26, 2024, 1:19 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(167, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 12:31:56', '2024-01-26 12:31:56', 'POST', 'January 26, 2024, 1:31 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(168, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 12:33:33', '2024-01-26 12:33:33', 'POST', 'January 26, 2024, 1:33 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(169, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 12:33:46', '2024-01-26 12:33:46', 'POST', 'January 26, 2024, 1:33 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(170, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 12:34:06', '2024-01-26 12:34:06', 'POST', 'January 26, 2024, 1:34 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(171, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:50:28', '2024-01-26 15:50:28', 'POST', 'January 26, 2024, 4:50 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(172, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:50:40', '2024-01-26 15:50:40', 'POST', 'January 26, 2024, 4:50 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(173, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:50:52', '2024-01-26 15:50:52', 'POST', 'January 26, 2024, 4:50 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(174, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:50:56', '2024-01-26 15:50:56', 'POST', 'January 26, 2024, 4:50 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(175, 'http://127.0.0.1:8000/api/submit-template-file', '{\"json_file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:51:24', '2024-01-26 15:51:24', 'POST', 'January 26, 2024, 4:51 pm', NULL, '{\"json_file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(176, 'http://127.0.0.1:8000/api/submit-template-file', '{\"file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:51:40', '2024-01-26 15:51:40', 'POST', 'January 26, 2024, 4:51 pm', NULL, '{\"file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(177, 'http://127.0.0.1:8000/api/submit-template-file', '{\"file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:52:52', '2024-01-26 15:52:52', 'POST', 'January 26, 2024, 4:52 pm', NULL, '{\"file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(178, 'http://127.0.0.1:8000/api/submit-template-file', '{\"file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:55:12', '2024-01-26 15:55:12', 'POST', 'January 26, 2024, 4:55 pm', NULL, '{\"file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(179, 'http://127.0.0.1:8000/api/submit-template-file', '{\"file\":{}}', NULL, '127.0.0.1', '2024-01-26 15:58:09', '2024-01-26 15:58:09', 'POST', 'January 26, 2024, 4:58 pm', NULL, '{\"file\":{}}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(180, 'http://127.0.0.1:8000/api/android-device-online-license', '[]', NULL, '127.0.0.1', '2024-02-06 12:51:07', '2024-02-06 12:51:07', 'POST', 'February 6, 2024, 1:51 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(181, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"safd\",\"license_key\":\"asfsad\"}', NULL, '127.0.0.1', '2024-02-06 12:51:21', '2024-02-06 12:51:21', 'POST', 'February 6, 2024, 1:51 pm', NULL, '{\"imei\":\"safd\",\"license_key\":\"asfsad\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(182, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"358240051111110\",\"license_key\":\"asfsad\"}', NULL, '127.0.0.1', '2024-02-06 12:51:29', '2024-02-06 12:51:29', 'POST', 'February 6, 2024, 1:51 pm', NULL, '{\"imei\":\"358240051111110\",\"license_key\":\"asfsad\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(183, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"358240051111110\",\"license_key\":\"ljasfdlj\"}', NULL, '127.0.0.1', '2024-02-06 12:51:42', '2024-02-06 12:51:42', 'POST', 'February 6, 2024, 1:51 pm', NULL, '{\"imei\":\"358240051111110\",\"license_key\":\"ljasfdlj\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(184, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\",\"license_key\":\"ljasfdlj\"}', NULL, '127.0.0.1', '2024-02-06 12:52:06', '2024-02-06 12:52:06', 'POST', 'February 6, 2024, 1:52 pm', NULL, '{\"imei\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\",\"license_key\":\"ljasfdlj\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(185, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:52:12', '2024-02-06 12:52:12', 'POST', 'February 6, 2024, 1:52 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(186, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:53:45', '2024-02-06 12:53:45', 'POST', 'February 6, 2024, 1:53 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(187, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:54:01', '2024-02-06 12:54:01', 'POST', 'February 6, 2024, 1:54 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(188, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:54:25', '2024-02-06 12:54:25', 'POST', 'February 6, 2024, 1:54 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(189, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:54:36', '2024-02-06 12:54:36', 'POST', 'February 6, 2024, 1:54 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(190, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:54:54', '2024-02-06 12:54:54', 'POST', 'February 6, 2024, 1:54 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(191, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:55:25', '2024-02-06 12:55:25', 'POST', 'February 6, 2024, 1:55 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(192, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:55:36', '2024-02-06 12:55:36', 'POST', 'February 6, 2024, 1:55 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(193, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:57:23', '2024-02-06 12:57:23', 'POST', 'February 6, 2024, 1:57 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(194, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:57:41', '2024-02-06 12:57:41', 'POST', 'February 6, 2024, 1:57 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(195, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:57:59', '2024-02-06 12:57:59', 'POST', 'February 6, 2024, 1:57 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(196, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:58:28', '2024-02-06 12:58:28', 'POST', 'February 6, 2024, 1:58 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(197, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:58:41', '2024-02-06 12:58:41', 'POST', 'February 6, 2024, 1:58 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(198, 'http://127.0.0.1:8000/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '127.0.0.1', '2024-02-06 12:59:29', '2024-02-06 12:59:29', 'POST', 'February 6, 2024, 1:59 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(199, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '39.37.83.211', '2024-02-08 12:51:02', '2024-02-08 12:51:02', 'POST', 'February 8, 2024, 8:51 am', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(200, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '39.37.83.211', '2024-02-08 12:54:44', '2024-02-08 12:54:44', 'GET', 'February 8, 2024, 8:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(201, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '39.37.83.211', '2024-02-08 12:54:55', '2024-02-08 12:54:55', 'POST', 'February 8, 2024, 8:54 am', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(202, 'https://devdssv2.swantech.ae/api/online-license?imei=34b1c76ba98b3218', '{\"imei\":\"34b1c76ba98b3218\"}', NULL, '39.37.83.211', '2024-02-08 13:36:49', '2024-02-08 13:36:49', 'POST', 'February 8, 2024, 9:36 am', NULL, '{\"imei\":\"34b1c76ba98b3218\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(203, NULL, NULL, NULL, NULL, '2024-02-08 13:36:49', '2024-02-08 13:36:49', NULL, NULL, NULL, '{\"imei\":\"34b1c76ba98b3218\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(204, 'https://devdssv2.swantech.ae/api/online-license?imei=34b1c76ba98b3218', '{\"imei\":\"34b1c76ba98b3218\"}', NULL, '39.37.83.211', '2024-02-08 13:40:33', '2024-02-08 13:40:33', 'POST', 'February 8, 2024, 9:40 am', NULL, '{\"imei\":\"34b1c76ba98b3218\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(205, NULL, NULL, NULL, NULL, '2024-02-08 13:40:33', '2024-02-08 13:40:33', NULL, NULL, NULL, '{\"imei\":\"34b1c76ba98b3218\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(206, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 13:53:31', '2024-02-08 13:53:31', 'POST', 'February 8, 2024, 9:53 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(207, NULL, NULL, NULL, NULL, '2024-02-08 13:53:31', '2024-02-08 13:53:32', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(208, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=%7B%22key%22%3A%2204c799e911ec9d5af1be651ba8414f7d901a4f3a%22%2C%22device%22%3A%5B%7B%22zone%22%3A%22UAE%22%2C%22city%22%3A%22Dubai%22%2C%22branch%22%3A%22Branch%201%20%28Talha%29%22%2C%22device_group%22%3A%22Device%20Group%20%28Talha%29%22%2C%22id%22%3A13%2C%22organization_id%22%3A6%2C%22zone_id%22%3A4%2C%22city_id%22%3A12%2C%22branch_id%22%3A16%2C%22device_group_id%22%3A10%2C%22device_orientation%22%3A%22landscape%22%2C%22device_name%22%3A%22Counter%20Display%22%2C%22device_type%22%3A%22cd%22%2C%22ip_address%22%3A%22192.168.0.102%22%2C%22device_uid%22%3Anull%2C%22device_no%22%3A%221234567890%22%2C%22device_mac_address%22%3A%2204c799e911ec9d5af1be651ba8414f7d901a4f3a%22%2C%22device_model%22%3A%22N%5C%2FA%22%2C%22device_description%22%3Anull%2C%22device_screen_height%22%3Anull%2C%22device_screen_width%22%3Anull%2C%22device_storage_memory%22%3Anull%2C%22screen_resolution%22%3Anull%2C%22deleted_at%22%3Anull%2C%22status%22%3A1%2C%22created_at%22%3A%222024-02-08T09%3A51%3A24.000000Z%22%2C%22updated_at%22%3A%222024-02-08T09%3A51%3A24.000000Z%22%2C%22is_online%22%3A0%2C%22current_running_asset%22%3Anull%2C%22memory_status%22%3Anull%2C%22last_content_update_sent%22%3Anull%2C%22content_download_completed_at%22%3Anull%2C%22content_download_status%22%3Anull%2C%22application_installed%22%3A0%2C%22socket_token%22%3A%22731bf35f90f97ccbed780b30445ef70b%22%2C%22ticket_color%22%3A%22%23238109%22%2C%22background_image%22%3A%22%5C%2Fuploads%5C%2Fimages%5C%2F41416_1680866143.jpg%22%2C%22qms_name%22%3A%221%22%7D%5D%7D', '{\"imei\":\"1234567890\",\"license_key\":\"{\\\"key\\\":\\\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\\\",\\\"device\\\":[{\\\"zone\\\":\\\"UAE\\\",\\\"city\\\":\\\"Dubai\\\",\\\"branch\\\":\\\"Branch 1 (Talha)\\\",\\\"device_group\\\":\\\"Device Group (Talha)\\\",\\\"id\\\":13,\\\"organization_id\\\":6,\\\"zone_id\\\":4,\\\"city_id\\\":12,\\\"branch_id\\\":16,\\\"device_group_id\\\":10,\\\"device_orientation\\\":\\\"landscape\\\",\\\"device_name\\\":\\\"Counter Display\\\",\\\"device_type\\\":\\\"cd\\\",\\\"ip_address\\\":\\\"192.168.0.102\\\",\\\"device_uid\\\":null,\\\"device_no\\\":\\\"1234567890\\\",\\\"device_mac_address\\\":\\\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\\\",\\\"device_model\\\":\\\"N\\\\\\/A\\\",\\\"device_description\\\":null,\\\"device_screen_height\\\":null,\\\"device_screen_width\\\":null,\\\"device_storage_memory\\\":null,\\\"screen_resolution\\\":null,\\\"deleted_at\\\":null,\\\"status\\\":1,\\\"created_at\\\":\\\"2024-02-08T09:51:24.000000Z\\\",\\\"updated_at\\\":\\\"2024-02-08T09:51:24.000000Z\\\",\\\"is_online\\\":0,\\\"current_running_asset\\\":null,\\\"memory_status\\\":null,\\\"last_content_update_sent\\\":null,\\\"content_download_completed_at\\\":null,\\\"content_download_status\\\":null,\\\"application_installed\\\":0,\\\"socket_token\\\":\\\"731bf35f90f97ccbed780b30445ef70b\\\",\\\"ticket_color\\\":\\\"#238109\\\",\\\"background_image\\\":\\\"\\\\\\/uploads\\\\\\/images\\\\\\/41416_1680866143.jpg\\\",\\\"qms_name\\\":\\\"1\\\"}]}\"}', NULL, '39.37.83.211', '2024-02-08 13:53:34', '2024-02-08 13:53:34', 'POST', 'February 8, 2024, 9:53 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"{\\\"key\\\":\\\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\\\",\\\"device\\\":[{\\\"zone\\\":\\\"UAE\\\",\\\"city\\\":\\\"Dubai\\\",\\\"branch\\\":\\\"Branch 1 (Talha)\\\",\\\"device_group\\\":\\\"Device Group (Talha)\\\",\\\"id\\\":13,\\\"organization_id\\\":6,\\\"zone_id\\\":4,\\\"city_id\\\":12,\\\"branch_id\\\":16,\\\"device_group_id\\\":10,\\\"device_orientation\\\":\\\"landscape\\\",\\\"device_name\\\":\\\"Counter Display\\\",\\\"device_type\\\":\\\"cd\\\",\\\"ip_address\\\":\\\"192.168.0.102\\\",\\\"device_uid\\\":null,\\\"device_no\\\":\\\"1234567890\\\",\\\"device_mac_address\\\":\\\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\\\",\\\"device_model\\\":\\\"N\\\\\\/A\\\",\\\"device_description\\\":null,\\\"device_screen_height\\\":null,\\\"device_screen_width\\\":null,\\\"device_storage_memory\\\":null,\\\"screen_resolution\\\":null,\\\"deleted_at\\\":null,\\\"status\\\":1,\\\"created_at\\\":\\\"2024-02-08T09:51:24.000000Z\\\",\\\"updated_at\\\":\\\"2024-02-08T09:51:24.000000Z\\\",\\\"is_online\\\":0,\\\"current_running_asset\\\":null,\\\"memory_status\\\":null,\\\"last_content_update_sent\\\":null,\\\"content_download_completed_at\\\":null,\\\"content_download_status\\\":null,\\\"application_installed\\\":0,\\\"socket_token\\\":\\\"731bf35f90f97ccbed780b30445ef70b\\\",\\\"ticket_color\\\":\\\"#238109\\\",\\\"background_image\\\":\\\"\\\\\\/uploads\\\\\\/images\\\\\\/41416_1680866143.jpg\\\",\\\"qms_name\\\":\\\"1\\\"}]}\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(209, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 13:55:20', '2024-02-08 13:55:20', 'POST', 'February 8, 2024, 9:55 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(210, NULL, NULL, NULL, NULL, '2024-02-08 13:55:20', '2024-02-08 13:55:20', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(211, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 13:57:12', '2024-02-08 13:57:12', 'POST', 'February 8, 2024, 9:57 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(212, NULL, NULL, NULL, NULL, '2024-02-08 13:57:12', '2024-02-08 13:57:12', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(213, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 13:57:48', '2024-02-08 13:57:48', 'POST', 'February 8, 2024, 9:57 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(214, NULL, NULL, NULL, NULL, '2024-02-08 13:57:48', '2024-02-08 13:57:48', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(215, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 14:00:09', '2024-02-08 14:00:09', 'POST', 'February 8, 2024, 10:00 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(216, NULL, NULL, NULL, NULL, '2024-02-08 14:00:09', '2024-02-08 14:00:09', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(217, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 14:03:11', '2024-02-08 14:03:11', 'POST', 'February 8, 2024, 10:03 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(218, NULL, NULL, NULL, NULL, '2024-02-08 14:03:11', '2024-02-08 14:03:11', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(219, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 14:05:15', '2024-02-08 14:05:15', 'POST', 'February 8, 2024, 10:05 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(220, NULL, NULL, NULL, NULL, '2024-02-08 14:05:15', '2024-02-08 14:05:15', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(221, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 14:07:32', '2024-02-08 14:07:32', 'POST', 'February 8, 2024, 10:07 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(222, NULL, NULL, NULL, NULL, '2024-02-08 14:07:32', '2024-02-08 14:07:32', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(223, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '39.37.83.211', '2024-02-08 14:07:39', '2024-02-08 14:07:39', 'POST', 'February 8, 2024, 10:07 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(224, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 16:10:16', '2024-02-08 16:10:16', 'POST', 'February 8, 2024, 12:10 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(225, NULL, NULL, NULL, NULL, '2024-02-08 16:10:16', '2024-02-08 16:10:16', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(226, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '39.37.83.211', '2024-02-08 16:10:18', '2024-02-08 16:10:18', 'POST', 'February 8, 2024, 12:10 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(227, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 16:12:52', '2024-02-08 16:12:52', 'POST', 'February 8, 2024, 12:12 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(228, NULL, NULL, NULL, NULL, '2024-02-08 16:12:52', '2024-02-08 16:12:52', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(229, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '39.37.83.211', '2024-02-08 16:12:55', '2024-02-08 16:12:55', 'POST', 'February 8, 2024, 12:12 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(230, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.158', '2024-02-08 16:47:03', '2024-02-08 16:47:03', 'POST', 'February 8, 2024, 12:47 pm', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(231, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 19:45:44', '2024-02-08 19:45:44', 'POST', 'February 8, 2024, 3:45 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(232, NULL, NULL, NULL, NULL, '2024-02-08 19:45:44', '2024-02-08 19:45:44', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(233, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 20:11:59', '2024-02-08 20:11:59', 'POST', 'February 8, 2024, 4:11 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(234, NULL, NULL, NULL, NULL, '2024-02-08 20:11:59', '2024-02-08 20:11:59', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(235, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '39.37.83.211', '2024-02-08 20:12:14', '2024-02-08 20:12:14', 'POST', 'February 8, 2024, 4:12 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(236, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '39.37.83.211', '2024-02-08 20:16:04', '2024-02-08 20:16:04', 'POST', 'February 8, 2024, 4:16 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(237, NULL, NULL, NULL, NULL, '2024-02-08 20:16:04', '2024-02-08 20:16:04', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(238, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '39.37.83.211', '2024-02-08 20:16:15', '2024-02-08 20:16:15', 'POST', 'February 8, 2024, 4:16 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(239, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 09:11:43', '2024-02-09 09:11:43', 'POST', 'February 9, 2024, 5:11 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(240, NULL, NULL, NULL, NULL, '2024-02-09 09:11:43', '2024-02-09 09:11:43', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(241, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 09:12:10', '2024-02-09 09:12:10', 'POST', 'February 9, 2024, 5:12 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(242, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 09:43:10', '2024-02-09 09:43:10', 'POST', 'February 9, 2024, 5:43 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(243, NULL, NULL, NULL, NULL, '2024-02-09 09:43:10', '2024-02-09 09:43:10', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(244, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 09:43:12', '2024-02-09 09:43:12', 'POST', 'February 9, 2024, 5:43 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(245, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 09:48:40', '2024-02-09 09:48:40', 'POST', 'February 9, 2024, 5:48 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(246, NULL, NULL, NULL, NULL, '2024-02-09 09:48:40', '2024-02-09 09:48:40', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(247, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 09:48:42', '2024-02-09 09:48:42', 'POST', 'February 9, 2024, 5:48 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(248, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 09:56:43', '2024-02-09 09:56:43', 'POST', 'February 9, 2024, 5:56 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(249, NULL, NULL, NULL, NULL, '2024-02-09 09:56:43', '2024-02-09 09:56:43', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(250, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 09:56:46', '2024-02-09 09:56:46', 'POST', 'February 9, 2024, 5:56 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(251, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 09:59:21', '2024-02-09 09:59:21', 'POST', 'February 9, 2024, 5:59 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(252, NULL, NULL, NULL, NULL, '2024-02-09 09:59:21', '2024-02-09 09:59:21', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(253, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 09:59:24', '2024-02-09 09:59:24', 'POST', 'February 9, 2024, 5:59 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(254, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 10:15:13', '2024-02-09 10:15:13', 'POST', 'February 9, 2024, 6:15 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(255, NULL, NULL, NULL, NULL, '2024-02-09 10:15:13', '2024-02-09 10:15:13', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(256, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 10:15:17', '2024-02-09 10:15:17', 'POST', 'February 9, 2024, 6:15 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(257, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.177', '2024-02-09 10:44:06', '2024-02-09 10:44:06', 'POST', 'February 9, 2024, 6:44 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(258, NULL, NULL, NULL, NULL, '2024-02-09 10:44:06', '2024-02-09 10:44:06', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(259, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.177', '2024-02-09 10:44:09', '2024-02-09 10:44:09', 'POST', 'February 9, 2024, 6:44 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(260, 'https://devdssv2.swantech.ae/api/single-device/%7B%7Bdevice_id%7D%7D', '[]', NULL, '175.107.228.158', '2024-02-09 10:46:44', '2024-02-09 10:46:44', 'GET', 'February 9, 2024, 6:46 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(261, 'https://devdssv2.swantech.ae/api/single-device/1', '[]', NULL, '175.107.228.158', '2024-02-09 10:46:49', '2024-02-09 10:46:49', 'GET', 'February 9, 2024, 6:46 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(262, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.158', '2024-02-09 10:46:56', '2024-02-09 10:46:56', 'POST', 'February 9, 2024, 6:46 am', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(263, 'https://devdssv2.swantech.ae/api/single-device/11', '[]', NULL, '175.107.228.158', '2024-02-09 10:47:12', '2024-02-09 10:47:12', 'GET', 'February 9, 2024, 6:47 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(264, 'https://devdssv2.swantech.ae/api/playlist/11', '[]', NULL, '175.107.228.158', '2024-02-09 10:47:31', '2024-02-09 10:47:31', 'GET', 'February 9, 2024, 6:47 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(265, 'https://devdssv2.swantech.ae/api/single-device/11', '[]', NULL, '175.107.228.158', '2024-02-09 10:54:42', '2024-02-09 10:54:42', 'GET', 'February 9, 2024, 6:54 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(266, 'https://devdssv2.swantech.ae/api/single-device/11', '[]', NULL, '175.107.228.158', '2024-02-09 10:55:49', '2024-02-09 10:55:49', 'GET', 'February 9, 2024, 6:55 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(267, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 11:17:13', '2024-02-09 11:17:13', 'GET', 'February 9, 2024, 7:17 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(268, 'https://devdssv2.swantech.ae/api/playlist/13', '[]', NULL, '137.59.231.225', '2024-02-09 11:17:36', '2024-02-09 11:17:36', 'GET', 'February 9, 2024, 7:17 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(269, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '154.80.62.197', '2024-02-09 11:17:51', '2024-02-09 11:17:51', 'GET', 'February 9, 2024, 7:17 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(270, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '154.80.62.197', '2024-02-09 11:23:26', '2024-02-09 11:23:26', 'GET', 'February 9, 2024, 7:23 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(271, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '154.80.62.197', '2024-02-09 11:24:41', '2024-02-09 11:24:41', 'GET', 'February 9, 2024, 7:24 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(272, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '154.80.62.197', '2024-02-09 11:25:05', '2024-02-09 11:25:05', 'GET', 'February 9, 2024, 7:25 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(273, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '154.80.62.197', '2024-02-09 11:32:18', '2024-02-09 11:32:18', 'POST', 'February 9, 2024, 7:32 am', NULL, '{\"imei\":\"0000000000\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(274, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '154.80.62.197', '2024-02-09 11:54:57', '2024-02-09 11:54:57', 'POST', 'February 9, 2024, 7:54 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(275, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '154.80.62.197', '2024-02-09 11:55:14', '2024-02-09 11:55:14', 'POST', 'February 9, 2024, 7:55 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(276, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '154.80.62.197', '2024-02-09 11:56:02', '2024-02-09 11:56:02', 'POST', 'February 9, 2024, 7:56 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(277, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '154.80.62.197', '2024-02-09 11:57:27', '2024-02-09 11:57:27', 'POST', 'February 9, 2024, 7:57 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(278, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '154.80.62.197', '2024-02-09 11:58:37', '2024-02-09 11:58:37', 'POST', 'February 9, 2024, 7:58 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(279, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:35:22', '2024-02-09 16:35:22', 'POST', 'February 9, 2024, 12:35 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(280, NULL, NULL, NULL, NULL, '2024-02-09 16:35:22', '2024-02-09 16:35:22', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(281, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:35:25', '2024-02-09 16:35:25', 'POST', 'February 9, 2024, 12:35 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(282, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:39:32', '2024-02-09 16:39:32', 'POST', 'February 9, 2024, 12:39 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(283, NULL, NULL, NULL, NULL, '2024-02-09 16:39:32', '2024-02-09 16:39:32', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(284, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:39:34', '2024-02-09 16:39:34', 'POST', 'February 9, 2024, 12:39 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(285, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:40:57', '2024-02-09 16:40:57', 'POST', 'February 9, 2024, 12:40 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(286, NULL, NULL, NULL, NULL, '2024-02-09 16:40:57', '2024-02-09 16:40:57', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(287, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:41:00', '2024-02-09 16:41:00', 'POST', 'February 9, 2024, 12:41 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(288, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:47:04', '2024-02-09 16:47:04', 'POST', 'February 9, 2024, 12:47 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(289, NULL, NULL, NULL, NULL, '2024-02-09 16:47:04', '2024-02-09 16:47:04', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(290, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:47:08', '2024-02-09 16:47:08', 'POST', 'February 9, 2024, 12:47 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(291, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:50:00', '2024-02-09 16:50:00', 'POST', 'February 9, 2024, 12:50 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(292, NULL, NULL, NULL, NULL, '2024-02-09 16:50:00', '2024-02-09 16:50:00', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(293, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:50:03', '2024-02-09 16:50:03', 'POST', 'February 9, 2024, 12:50 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(294, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 16:54:01', '2024-02-09 16:54:01', 'POST', 'February 9, 2024, 12:54 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(295, NULL, NULL, NULL, NULL, '2024-02-09 16:54:01', '2024-02-09 16:54:01', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(296, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 16:54:04', '2024-02-09 16:54:04', 'POST', 'February 9, 2024, 12:54 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(297, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:07:12', '2024-02-09 17:07:12', 'GET', 'February 9, 2024, 1:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(298, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:08:21', '2024-02-09 17:08:21', 'GET', 'February 9, 2024, 1:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(299, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:08:46', '2024-02-09 17:08:46', 'GET', 'February 9, 2024, 1:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(300, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 17:12:49', '2024-02-09 17:12:49', 'POST', 'February 9, 2024, 1:12 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(301, NULL, NULL, NULL, NULL, '2024-02-09 17:12:49', '2024-02-09 17:12:49', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(302, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 17:12:54', '2024-02-09 17:12:54', 'POST', 'February 9, 2024, 1:12 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(303, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:21:30', '2024-02-09 17:21:30', 'GET', 'February 9, 2024, 1:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(304, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:21:32', '2024-02-09 17:21:32', 'GET', 'February 9, 2024, 1:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(305, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:21:34', '2024-02-09 17:21:34', 'GET', 'February 9, 2024, 1:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(306, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:23:09', '2024-02-09 17:23:09', 'GET', 'February 9, 2024, 1:23 pm', NULL, '[]', NULL, 'WhatsApp/2.24.2.76 i', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(307, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '175.107.208.186', '2024-02-09 17:25:43', '2024-02-09 17:25:43', 'GET', 'February 9, 2024, 1:25 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(308, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '175.107.208.186', '2024-02-09 17:32:56', '2024-02-09 17:32:56', 'GET', 'February 9, 2024, 1:32 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(309, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 17:34:46', '2024-02-09 17:34:46', 'POST', 'February 9, 2024, 1:34 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(310, NULL, NULL, NULL, NULL, '2024-02-09 17:34:46', '2024-02-09 17:34:46', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(311, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 17:34:50', '2024-02-09 17:34:50', 'POST', 'February 9, 2024, 1:34 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(312, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:35:24', '2024-02-09 17:35:24', 'GET', 'February 9, 2024, 1:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(313, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:35:26', '2024-02-09 17:35:26', 'GET', 'February 9, 2024, 1:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(314, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:35:46', '2024-02-09 17:35:46', 'GET', 'February 9, 2024, 1:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(315, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:35:47', '2024-02-09 17:35:47', 'GET', 'February 9, 2024, 1:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(316, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 17:49:55', '2024-02-09 17:49:55', 'POST', 'February 9, 2024, 1:49 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(317, NULL, NULL, NULL, NULL, '2024-02-09 17:49:55', '2024-02-09 17:49:55', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(318, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 17:49:58', '2024-02-09 17:49:58', 'POST', 'February 9, 2024, 1:49 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(319, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:51:20', '2024-02-09 17:51:20', 'GET', 'February 9, 2024, 1:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(320, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 17:51:22', '2024-02-09 17:51:22', 'GET', 'February 9, 2024, 1:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(321, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 17:59:13', '2024-02-09 17:59:13', 'POST', 'February 9, 2024, 1:59 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(322, NULL, NULL, NULL, NULL, '2024-02-09 17:59:13', '2024-02-09 17:59:13', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(323, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 17:59:15', '2024-02-09 17:59:15', 'POST', 'February 9, 2024, 1:59 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(324, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:41', '2024-02-09 18:00:41', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(325, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:41', '2024-02-09 18:00:41', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(326, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:43', '2024-02-09 18:00:43', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(327, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:44', '2024-02-09 18:00:44', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(328, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:45', '2024-02-09 18:00:45', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(329, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:46', '2024-02-09 18:00:46', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(330, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:46', '2024-02-09 18:00:46', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(331, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:48', '2024-02-09 18:00:48', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(332, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:00:51', '2024-02-09 18:00:51', 'GET', 'February 9, 2024, 2:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(333, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:01:02', '2024-02-09 18:01:02', 'GET', 'February 9, 2024, 2:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(334, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:01:04', '2024-02-09 18:01:04', 'GET', 'February 9, 2024, 2:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(335, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:01:14', '2024-02-09 18:01:14', 'GET', 'February 9, 2024, 2:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(336, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:01:16', '2024-02-09 18:01:16', 'GET', 'February 9, 2024, 2:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(337, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:03:39', '2024-02-09 18:03:39', 'GET', 'February 9, 2024, 2:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(338, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:03:42', '2024-02-09 18:03:42', 'GET', 'February 9, 2024, 2:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(339, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:05:02', '2024-02-09 18:05:02', 'GET', 'February 9, 2024, 2:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(340, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:06:00', '2024-02-09 18:06:00', 'GET', 'February 9, 2024, 2:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(341, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:06:12', '2024-02-09 18:06:12', 'GET', 'February 9, 2024, 2:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(342, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-09 18:08:34', '2024-02-09 18:08:34', 'POST', 'February 9, 2024, 2:08 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(343, NULL, NULL, NULL, NULL, '2024-02-09 18:08:34', '2024-02-09 18:08:34', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(344, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-09 18:08:53', '2024-02-09 18:08:53', 'POST', 'February 9, 2024, 2:08 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(345, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:10:34', '2024-02-09 18:10:34', 'GET', 'February 9, 2024, 2:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(346, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:12:46', '2024-02-09 18:12:46', 'GET', 'February 9, 2024, 2:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(347, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:12:46', '2024-02-09 18:12:46', 'GET', 'February 9, 2024, 2:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(348, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:12:51', '2024-02-09 18:12:51', 'GET', 'February 9, 2024, 2:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(349, 'https://devdssv2.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-09 18:12:51', '2024-02-09 18:12:51', 'GET', 'February 9, 2024, 2:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(350, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 18:23:11', '2024-02-09 18:23:11', 'POST', 'February 9, 2024, 2:23 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(351, NULL, NULL, NULL, NULL, '2024-02-09 18:23:11', '2024-02-09 18:23:11', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(352, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 18:23:13', '2024-02-09 18:23:13', 'POST', 'February 9, 2024, 2:23 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(353, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 18:23:18', '2024-02-09 18:23:18', 'GET', 'February 9, 2024, 2:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(354, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 18:23:18', '2024-02-09 18:23:18', 'GET', 'February 9, 2024, 2:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(355, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 18:23:18', '2024-02-09 18:23:18', 'GET', 'February 9, 2024, 2:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(356, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 18:23:18', '2024-02-09 18:23:18', 'GET', 'February 9, 2024, 2:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(357, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 18:23:18', '2024-02-09 18:23:18', 'GET', 'February 9, 2024, 2:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(358, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 18:31:16', '2024-02-09 18:31:16', 'POST', 'February 9, 2024, 2:31 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(359, NULL, NULL, NULL, NULL, '2024-02-09 18:31:16', '2024-02-09 18:31:16', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(360, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 18:31:18', '2024-02-09 18:31:18', 'POST', 'February 9, 2024, 2:31 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(361, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 18:31:23', '2024-02-09 18:31:23', 'GET', 'February 9, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(362, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 18:31:23', '2024-02-09 18:31:23', 'GET', 'February 9, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(363, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 18:31:24', '2024-02-09 18:31:24', 'GET', 'February 9, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(364, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 18:31:24', '2024-02-09 18:31:24', 'GET', 'February 9, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(365, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 18:31:24', '2024-02-09 18:31:24', 'GET', 'February 9, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(366, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 18:32:35', '2024-02-09 18:32:35', 'GET', 'February 9, 2024, 2:32 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(367, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 18:32:37', '2024-02-09 18:32:37', 'GET', 'February 9, 2024, 2:32 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(368, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 18:32:44', '2024-02-09 18:32:44', 'GET', 'February 9, 2024, 2:32 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(369, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 18:37:36', '2024-02-09 18:37:36', 'POST', 'February 9, 2024, 2:37 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(370, NULL, NULL, NULL, NULL, '2024-02-09 18:37:36', '2024-02-09 18:37:36', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(371, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 18:37:38', '2024-02-09 18:37:38', 'POST', 'February 9, 2024, 2:37 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(372, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 18:37:44', '2024-02-09 18:37:44', 'GET', 'February 9, 2024, 2:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(373, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 18:37:44', '2024-02-09 18:37:44', 'GET', 'February 9, 2024, 2:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(374, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 18:37:44', '2024-02-09 18:37:44', 'GET', 'February 9, 2024, 2:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(375, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 18:37:44', '2024-02-09 18:37:44', 'GET', 'February 9, 2024, 2:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(376, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 18:37:44', '2024-02-09 18:37:44', 'GET', 'February 9, 2024, 2:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(377, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 18:39:01', '2024-02-09 18:39:01', 'GET', 'February 9, 2024, 2:39 pm', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(378, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 18:51:50', '2024-02-09 18:51:50', 'POST', 'February 9, 2024, 2:51 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(379, NULL, NULL, NULL, NULL, '2024-02-09 18:51:50', '2024-02-09 18:51:50', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(380, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 18:51:52', '2024-02-09 18:51:52', 'POST', 'February 9, 2024, 2:51 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(381, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 18:51:57', '2024-02-09 18:51:57', 'GET', 'February 9, 2024, 2:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(382, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 18:51:57', '2024-02-09 18:51:57', 'GET', 'February 9, 2024, 2:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(383, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 18:51:58', '2024-02-09 18:51:58', 'GET', 'February 9, 2024, 2:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(384, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 18:51:58', '2024-02-09 18:51:58', 'GET', 'February 9, 2024, 2:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(385, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 18:51:58', '2024-02-09 18:51:58', 'GET', 'February 9, 2024, 2:51 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(386, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.230.166', '2024-02-09 18:59:18', '2024-02-09 18:59:18', 'GET', 'February 9, 2024, 2:59 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(387, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 19:00:20', '2024-02-09 19:00:20', 'POST', 'February 9, 2024, 3:00 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(388, NULL, NULL, NULL, NULL, '2024-02-09 19:00:20', '2024-02-09 19:00:20', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(389, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 19:00:22', '2024-02-09 19:00:22', 'POST', 'February 9, 2024, 3:00 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(390, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:27', '2024-02-09 19:00:27', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(391, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:27', '2024-02-09 19:00:27', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(392, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:27', '2024-02-09 19:00:27', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(393, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:27', '2024-02-09 19:00:27', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(394, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:27', '2024-02-09 19:00:27', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(395, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 19:00:42', '2024-02-09 19:00:42', 'GET', 'February 9, 2024, 3:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(396, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 19:11:39', '2024-02-09 19:11:39', 'POST', 'February 9, 2024, 3:11 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(397, NULL, NULL, NULL, NULL, '2024-02-09 19:11:39', '2024-02-09 19:11:39', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(398, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 19:11:42', '2024-02-09 19:11:42', 'POST', 'February 9, 2024, 3:11 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(399, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 19:11:47', '2024-02-09 19:11:47', 'GET', 'February 9, 2024, 3:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(400, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 19:11:47', '2024-02-09 19:11:47', 'GET', 'February 9, 2024, 3:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(401, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 19:11:47', '2024-02-09 19:11:47', 'GET', 'February 9, 2024, 3:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(402, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 19:11:47', '2024-02-09 19:11:47', 'GET', 'February 9, 2024, 3:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(403, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 19:11:47', '2024-02-09 19:11:47', 'GET', 'February 9, 2024, 3:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(404, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 19:12:02', '2024-02-09 19:12:02', 'GET', 'February 9, 2024, 3:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(405, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 19:25:51', '2024-02-09 19:25:51', 'POST', 'February 9, 2024, 3:25 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(406, NULL, NULL, NULL, NULL, '2024-02-09 19:25:51', '2024-02-09 19:25:51', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(407, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 19:25:54', '2024-02-09 19:25:54', 'POST', 'February 9, 2024, 3:25 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(408, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 19:25:59', '2024-02-09 19:25:59', 'GET', 'February 9, 2024, 3:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(409, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 19:25:59', '2024-02-09 19:25:59', 'GET', 'February 9, 2024, 3:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(410, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 19:25:59', '2024-02-09 19:25:59', 'GET', 'February 9, 2024, 3:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(411, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 19:25:59', '2024-02-09 19:25:59', 'GET', 'February 9, 2024, 3:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(412, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 19:25:59', '2024-02-09 19:25:59', 'GET', 'February 9, 2024, 3:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(413, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 19:26:18', '2024-02-09 19:26:18', 'GET', 'February 9, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(414, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 19:39:18', '2024-02-09 19:39:18', 'GET', 'February 9, 2024, 3:39 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(415, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-09 19:43:06', '2024-02-09 19:43:06', 'POST', 'February 9, 2024, 3:43 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(416, NULL, NULL, NULL, NULL, '2024-02-09 19:43:06', '2024-02-09 19:43:06', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(417, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-09 19:43:08', '2024-02-09 19:43:08', 'POST', 'February 9, 2024, 3:43 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(418, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:13', '2024-02-09 19:43:13', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(419, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:13', '2024-02-09 19:43:13', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(420, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:14', '2024-02-09 19:43:14', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(421, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:14', '2024-02-09 19:43:14', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(422, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:17', '2024-02-09 19:43:17', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(423, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-09 19:43:36', '2024-02-09 19:43:36', 'GET', 'February 9, 2024, 3:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(424, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '103.131.212.227', '2024-02-12 16:10:26', '2024-02-12 16:10:26', 'POST', 'February 12, 2024, 12:10 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(425, NULL, NULL, NULL, NULL, '2024-02-12 16:10:26', '2024-02-12 16:10:26', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(426, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '103.131.212.227', '2024-02-12 16:10:28', '2024-02-12 16:10:28', 'POST', 'February 12, 2024, 12:10 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(427, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 16:10:35', '2024-02-12 16:10:35', 'GET', 'February 12, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(428, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 16:10:35', '2024-02-12 16:10:35', 'GET', 'February 12, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(429, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 16:10:35', '2024-02-12 16:10:35', 'GET', 'February 12, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(430, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 16:10:35', '2024-02-12 16:10:35', 'GET', 'February 12, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(431, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 16:10:36', '2024-02-12 16:10:36', 'GET', 'February 12, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(432, 'https://devdssv2.swantech.ae/api/playlist/12', '[]', NULL, '103.131.212.227', '2024-02-12 16:11:00', '2024-02-12 16:11:00', 'GET', 'February 12, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(433, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-12 18:11:32', '2024-02-12 18:11:32', 'POST', 'February 12, 2024, 2:11 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(434, NULL, NULL, NULL, NULL, '2024-02-12 18:11:32', '2024-02-12 18:11:32', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(435, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-12 18:11:35', '2024-02-12 18:11:35', 'POST', 'February 12, 2024, 2:11 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(436, NULL, NULL, NULL, NULL, '2024-02-12 18:11:35', '2024-02-12 18:11:35', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(437, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-12 18:18:03', '2024-02-12 18:18:03', 'POST', 'February 12, 2024, 2:18 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(438, NULL, NULL, NULL, NULL, '2024-02-12 18:18:03', '2024-02-12 18:18:03', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(439, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-12 18:18:09', '2024-02-12 18:18:09', 'POST', 'February 12, 2024, 2:18 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(440, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-12 18:18:14', '2024-02-12 18:18:14', 'GET', 'February 12, 2024, 2:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(441, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-12 18:18:14', '2024-02-12 18:18:14', 'GET', 'February 12, 2024, 2:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(442, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-12 18:18:14', '2024-02-12 18:18:14', 'GET', 'February 12, 2024, 2:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(443, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-12 18:18:14', '2024-02-12 18:18:14', 'GET', 'February 12, 2024, 2:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(444, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-12 18:18:14', '2024-02-12 18:18:14', 'GET', 'February 12, 2024, 2:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(445, 'https://devdssv2.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '103.131.212.227', '2024-02-12 18:19:55', '2024-02-12 18:19:55', 'POST', 'February 12, 2024, 2:19 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(446, NULL, NULL, NULL, NULL, '2024-02-12 18:19:55', '2024-02-12 18:19:55', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(447, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '103.131.212.227', '2024-02-12 18:19:58', '2024-02-12 18:19:58', 'POST', 'February 12, 2024, 2:19 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(448, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-12 18:20:00', '2024-02-12 18:20:00', 'POST', 'February 12, 2024, 2:20 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(449, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 18:20:03', '2024-02-12 18:20:03', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(450, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 18:20:03', '2024-02-12 18:20:03', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(451, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 18:20:04', '2024-02-12 18:20:04', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(452, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 18:20:04', '2024-02-12 18:20:04', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(453, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 18:20:04', '2024-02-12 18:20:04', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(454, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:05', '2024-02-12 18:20:05', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(455, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:05', '2024-02-12 18:20:05', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(456, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:05', '2024-02-12 18:20:05', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(457, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:05', '2024-02-12 18:20:05', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(458, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:05', '2024-02-12 18:20:05', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(459, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 18:20:22', '2024-02-12 18:20:22', 'GET', 'February 12, 2024, 2:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(460, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-12 18:20:46', '2024-02-12 18:20:46', 'POST', 'February 12, 2024, 2:20 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(461, NULL, NULL, NULL, NULL, '2024-02-12 18:20:46', '2024-02-12 18:20:46', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(462, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-12 18:20:48', '2024-02-12 18:20:48', 'POST', 'February 12, 2024, 2:20 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(463, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 18:21:45', '2024-02-12 18:21:45', 'GET', 'February 12, 2024, 2:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(464, 'https://devdssv2.swantech.ae/api/playlist/16', '[]', NULL, '103.131.212.227', '2024-02-12 18:27:24', '2024-02-12 18:27:24', 'GET', 'February 12, 2024, 2:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(465, 'https://devdssv2.swantech.ae/api/playlist/16', '[]', NULL, '103.131.212.227', '2024-02-12 18:27:37', '2024-02-12 18:27:37', 'GET', 'February 12, 2024, 2:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(466, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.212.227', '2024-02-12 18:30:13', '2024-02-12 18:30:13', 'POST', 'February 12, 2024, 2:30 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(467, NULL, NULL, NULL, NULL, '2024-02-12 18:30:13', '2024-02-12 18:30:13', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(468, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.212.227', '2024-02-12 18:30:15', '2024-02-12 18:30:15', 'POST', 'February 12, 2024, 2:30 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(469, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-12 18:30:23', '2024-02-12 18:30:23', 'GET', 'February 12, 2024, 2:30 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(470, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.212.227', '2024-02-12 19:07:38', '2024-02-12 19:07:38', 'POST', 'February 12, 2024, 3:07 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(471, NULL, NULL, NULL, NULL, '2024-02-12 19:07:38', '2024-02-12 19:07:38', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(472, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.212.227', '2024-02-12 19:07:40', '2024-02-12 19:07:40', 'POST', 'February 12, 2024, 3:07 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(473, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.212.227', '2024-02-12 19:07:45', '2024-02-12 19:07:45', 'POST', 'February 12, 2024, 3:07 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(474, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:09:06', '2024-02-12 19:09:06', 'GET', 'February 12, 2024, 3:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(475, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:09:29', '2024-02-12 19:09:29', 'GET', 'February 12, 2024, 3:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(476, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:10:08', '2024-02-12 19:10:08', 'GET', 'February 12, 2024, 3:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(477, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:16:27', '2024-02-12 19:16:27', 'GET', 'February 12, 2024, 3:16 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(478, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.212.227', '2024-02-12 19:18:18', '2024-02-12 19:18:18', 'POST', 'February 12, 2024, 3:18 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(479, NULL, NULL, NULL, NULL, '2024-02-12 19:18:18', '2024-02-12 19:18:18', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(480, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.212.227', '2024-02-12 19:18:20', '2024-02-12 19:18:20', 'POST', 'February 12, 2024, 3:18 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(481, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:22:10', '2024-02-12 19:22:10', 'GET', 'February 12, 2024, 3:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(482, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:23:28', '2024-02-12 19:23:28', 'GET', 'February 12, 2024, 3:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(483, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:24:22', '2024-02-12 19:24:22', 'GET', 'February 12, 2024, 3:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(484, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:03', '2024-02-12 19:26:03', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(485, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:08', '2024-02-12 19:26:08', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(486, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:14', '2024-02-12 19:26:14', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(487, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:19', '2024-02-12 19:26:19', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(488, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:25', '2024-02-12 19:26:25', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(489, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(490, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(491, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(492, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(493, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(494, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(495, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:31', '2024-02-12 19:26:31', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(496, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:48', '2024-02-12 19:26:48', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(497, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:49', '2024-02-12 19:26:49', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(498, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:49', '2024-02-12 19:26:49', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(499, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:49', '2024-02-12 19:26:49', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(500, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:49', '2024-02-12 19:26:49', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(501, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:50', '2024-02-12 19:26:50', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(502, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:26:51', '2024-02-12 19:26:51', 'GET', 'February 12, 2024, 3:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(503, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:06', '2024-02-12 19:27:06', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(504, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:07', '2024-02-12 19:27:07', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(505, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:07', '2024-02-12 19:27:07', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(506, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:08', '2024-02-12 19:27:08', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(507, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:08', '2024-02-12 19:27:08', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(508, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:08', '2024-02-12 19:27:08', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(509, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:09', '2024-02-12 19:27:09', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(510, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:24', '2024-02-12 19:27:24', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(511, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:25', '2024-02-12 19:27:25', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(512, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:25', '2024-02-12 19:27:25', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(513, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:25', '2024-02-12 19:27:25', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(514, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:26', '2024-02-12 19:27:26', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(515, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:26', '2024-02-12 19:27:26', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(516, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:27', '2024-02-12 19:27:27', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(517, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:42', '2024-02-12 19:27:42', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(518, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:43', '2024-02-12 19:27:43', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(519, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:43', '2024-02-12 19:27:43', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(520, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:44', '2024-02-12 19:27:44', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(521, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:44', '2024-02-12 19:27:44', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(522, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:44', '2024-02-12 19:27:44', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(523, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:27:45', '2024-02-12 19:27:45', 'GET', 'February 12, 2024, 3:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(524, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:00', '2024-02-12 19:28:00', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(525, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:01', '2024-02-12 19:28:01', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(526, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:02', '2024-02-12 19:28:02', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(527, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:02', '2024-02-12 19:28:02', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(528, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:02', '2024-02-12 19:28:02', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(529, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:02', '2024-02-12 19:28:02', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(530, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:28:03', '2024-02-12 19:28:03', 'GET', 'February 12, 2024, 3:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(531, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:32:31', '2024-02-12 19:32:31', 'GET', 'February 12, 2024, 3:32 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(532, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '103.131.212.227', '2024-02-12 19:33:16', '2024-02-12 19:33:16', 'GET', 'February 12, 2024, 3:33 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(533, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.227', '2024-02-12 19:34:26', '2024-02-12 19:34:26', 'POST', 'February 12, 2024, 3:34 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(534, NULL, NULL, NULL, NULL, '2024-02-12 19:34:26', '2024-02-12 19:34:26', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(535, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.227', '2024-02-12 19:34:28', '2024-02-12 19:34:28', 'POST', 'February 12, 2024, 3:34 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(536, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 19:34:34', '2024-02-12 19:34:34', 'GET', 'February 12, 2024, 3:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(537, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 19:34:34', '2024-02-12 19:34:34', 'GET', 'February 12, 2024, 3:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(538, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 19:34:34', '2024-02-12 19:34:34', 'GET', 'February 12, 2024, 3:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(539, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 19:34:34', '2024-02-12 19:34:34', 'GET', 'February 12, 2024, 3:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(540, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 19:34:34', '2024-02-12 19:34:34', 'GET', 'February 12, 2024, 3:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(541, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 19:36:50', '2024-02-12 19:36:50', 'GET', 'February 12, 2024, 3:36 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(542, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 19:36:54', '2024-02-12 19:36:54', 'GET', 'February 12, 2024, 3:36 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(543, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 20:01:02', '2024-02-12 20:01:02', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(544, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 20:01:02', '2024-02-12 20:01:02', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(545, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 20:01:04', '2024-02-12 20:01:04', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(546, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 20:01:04', '2024-02-12 20:01:04', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(547, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 20:01:05', '2024-02-12 20:01:05', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(548, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 20:01:06', '2024-02-12 20:01:06', 'GET', 'February 12, 2024, 4:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(549, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-12 21:12:09', '2024-02-12 21:12:09', 'POST', 'February 12, 2024, 5:12 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(550, NULL, NULL, NULL, NULL, '2024-02-12 21:12:09', '2024-02-12 21:12:09', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(551, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-12 21:12:11', '2024-02-12 21:12:11', 'POST', 'February 12, 2024, 5:12 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(552, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-12 21:13:47', '2024-02-12 21:13:47', 'POST', 'February 12, 2024, 5:13 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(553, NULL, NULL, NULL, NULL, '2024-02-12 21:13:47', '2024-02-12 21:13:47', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(554, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-12 21:13:57', '2024-02-12 21:13:57', 'POST', 'February 12, 2024, 5:13 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(555, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:02', '2024-02-12 21:14:02', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(556, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:02', '2024-02-12 21:14:02', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(557, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:02', '2024-02-12 21:14:02', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(558, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:02', '2024-02-12 21:14:02', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(559, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:02', '2024-02-12 21:14:02', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(560, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:10', '2024-02-12 21:14:10', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(561, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:14:30', '2024-02-12 21:14:30', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(562, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 21:14:45', '2024-02-12 21:14:45', 'GET', 'February 12, 2024, 5:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(563, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-12 21:18:05', '2024-02-12 21:18:05', 'GET', 'February 12, 2024, 5:18 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(564, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:19:35', '2024-02-12 21:19:35', 'GET', 'February 12, 2024, 5:19 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(565, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:20:54', '2024-02-12 21:20:54', 'GET', 'February 12, 2024, 5:20 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(566, 'https://devdssv2.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '92.97.175.243', '2024-02-12 21:21:59', '2024-02-12 21:21:59', 'POST', 'February 12, 2024, 5:21 pm', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(567, NULL, NULL, NULL, NULL, '2024-02-12 21:21:59', '2024-02-12 21:21:59', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(568, 'https://devdssv2.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '92.97.175.243', '2024-02-12 21:26:34', '2024-02-12 21:26:34', 'POST', 'February 12, 2024, 5:26 pm', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(569, NULL, NULL, NULL, NULL, '2024-02-12 21:26:34', '2024-02-12 21:26:34', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(570, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '92.97.175.243', '2024-02-12 21:26:49', '2024-02-12 21:26:49', 'POST', 'February 12, 2024, 5:26 pm', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(571, 'https://devdssv2.swantech.ae/api/single-device/17', '[]', NULL, '92.97.175.243', '2024-02-12 21:27:23', '2024-02-12 21:27:23', 'GET', 'February 12, 2024, 5:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(572, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.227', '2024-02-12 21:28:25', '2024-02-12 21:28:25', 'POST', 'February 12, 2024, 5:28 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(573, NULL, NULL, NULL, NULL, '2024-02-12 21:28:25', '2024-02-12 21:28:25', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(574, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.227', '2024-02-12 21:28:27', '2024-02-12 21:28:27', 'POST', 'February 12, 2024, 5:28 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(575, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 21:28:32', '2024-02-12 21:28:32', 'GET', 'February 12, 2024, 5:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(576, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 21:28:32', '2024-02-12 21:28:32', 'GET', 'February 12, 2024, 5:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(577, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 21:28:32', '2024-02-12 21:28:32', 'GET', 'February 12, 2024, 5:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(578, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 21:28:32', '2024-02-12 21:28:32', 'GET', 'February 12, 2024, 5:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(579, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 21:28:32', '2024-02-12 21:28:32', 'GET', 'February 12, 2024, 5:28 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(580, 'https://devdssv2.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-12 21:31:11', '2024-02-12 21:31:11', 'GET', 'February 12, 2024, 5:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(581, 'https://devdssv2.swantech.ae/api/single-device/17', '[]', NULL, '92.97.175.243', '2024-02-12 21:31:13', '2024-02-12 21:31:13', 'GET', 'February 12, 2024, 5:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(582, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 21:34:05', '2024-02-12 21:34:05', 'GET', 'February 12, 2024, 5:34 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(583, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:39:18', '2024-02-12 21:39:18', 'GET', 'February 12, 2024, 5:39 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(584, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:39:36', '2024-02-12 21:39:36', 'GET', 'February 12, 2024, 5:39 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(585, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 21:41:47', '2024-02-12 21:41:47', 'GET', 'February 12, 2024, 5:41 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(586, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 21:41:47', '2024-02-12 21:41:47', 'GET', 'February 12, 2024, 5:41 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(587, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.227', '2024-02-12 21:46:53', '2024-02-12 21:46:53', 'POST', 'February 12, 2024, 5:46 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(588, NULL, NULL, NULL, NULL, '2024-02-12 21:46:53', '2024-02-12 21:46:53', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(589, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.227', '2024-02-12 21:46:55', '2024-02-12 21:46:55', 'POST', 'February 12, 2024, 5:46 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(590, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:01', '2024-02-12 21:47:01', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(591, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:01', '2024-02-12 21:47:01', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(592, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:01', '2024-02-12 21:47:01', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(593, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:01', '2024-02-12 21:47:01', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(594, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:01', '2024-02-12 21:47:01', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(595, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 21:47:17', '2024-02-12 21:47:17', 'GET', 'February 12, 2024, 5:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(596, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 22:22:21', '2024-02-12 22:22:21', 'GET', 'February 12, 2024, 6:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(597, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 22:22:22', '2024-02-12 22:22:22', 'GET', 'February 12, 2024, 6:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(598, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 22:24:30', '2024-02-12 22:24:30', 'GET', 'February 12, 2024, 6:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(599, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.227', '2024-02-12 22:25:40', '2024-02-12 22:25:40', 'GET', 'February 12, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(600, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-12 22:34:54', '2024-02-12 22:34:54', 'POST', 'February 12, 2024, 6:34 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(601, NULL, NULL, NULL, NULL, '2024-02-12 22:34:54', '2024-02-12 22:34:54', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(602, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-12 22:34:57', '2024-02-12 22:34:57', 'POST', 'February 12, 2024, 6:34 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(603, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:02', '2024-02-12 22:35:02', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(604, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:02', '2024-02-12 22:35:02', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(605, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:02', '2024-02-12 22:35:02', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(606, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:02', '2024-02-12 22:35:02', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(607, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:02', '2024-02-12 22:35:02', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(608, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:17', '2024-02-12 22:35:17', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(609, 'https://devdssv2.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-12 22:35:55', '2024-02-12 22:35:55', 'GET', 'February 12, 2024, 6:35 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(610, 'https://devdssv2.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.227', '2024-02-12 22:40:15', '2024-02-12 22:40:15', 'POST', 'February 12, 2024, 6:40 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(611, NULL, NULL, NULL, NULL, '2024-02-12 22:40:15', '2024-02-12 22:40:15', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(612, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.227', '2024-02-12 22:40:32', '2024-02-12 22:40:32', 'POST', 'February 12, 2024, 6:40 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(613, 'https://devdssv2.swantech.ae/api/zones', '[]', NULL, '103.131.212.227', '2024-02-12 22:40:37', '2024-02-12 22:40:37', 'GET', 'February 12, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(614, 'https://devdssv2.swantech.ae/api/cities', '[]', NULL, '103.131.212.227', '2024-02-12 22:40:37', '2024-02-12 22:40:37', 'GET', 'February 12, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(615, 'https://devdssv2.swantech.ae/api/branches', '[]', NULL, '103.131.212.227', '2024-02-12 22:40:37', '2024-02-12 22:40:37', 'GET', 'February 12, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(616, 'https://devdssv2.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.227', '2024-02-12 22:40:37', '2024-02-12 22:40:37', 'GET', 'February 12, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(617, 'https://devdssv2.swantech.ae/api/devices', '[]', NULL, '103.131.212.227', '2024-02-12 22:40:37', '2024-02-12 22:40:37', 'GET', 'February 12, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(618, 'https://devdssv2.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.212.227', '2024-02-12 22:41:22', '2024-02-12 22:41:22', 'POST', 'February 12, 2024, 6:41 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(619, NULL, NULL, NULL, NULL, '2024-02-12 22:41:22', '2024-02-12 22:41:22', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(620, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.212.227', '2024-02-12 22:41:33', '2024-02-12 22:41:33', 'POST', 'February 12, 2024, 6:41 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(621, 'http://127.0.0.1:8000/api/staff-details/%7B%7B1001%7D%7D', '[]', NULL, '127.0.0.1', '2024-02-13 05:26:34', '2024-02-13 05:26:34', 'GET', 'February 13, 2024, 6:26 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(622, 'http://127.0.0.1:8000/api/staff-details/1001', '[]', NULL, '127.0.0.1', '2024-02-13 05:26:40', '2024-02-13 05:26:40', 'GET', 'February 13, 2024, 6:26 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(623, 'http://127.0.0.1:8000/api/staff-details/1001', '[]', NULL, '127.0.0.1', '2024-02-13 05:27:02', '2024-02-13 05:27:02', 'GET', 'February 13, 2024, 6:27 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(624, 'http://127.0.0.1:8000/api/staff-details/1001', '[]', NULL, '127.0.0.1', '2024-02-13 05:27:15', '2024-02-13 05:27:15', 'GET', 'February 13, 2024, 6:27 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(625, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '154.80.30.78', '2024-02-13 11:04:57', '2024-02-13 11:04:57', 'GET', 'February 13, 2024, 7:04 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(626, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '154.80.30.92', '2024-02-13 14:14:24', '2024-02-13 14:14:24', 'GET', 'February 13, 2024, 10:14 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(627, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '154.80.30.92', '2024-02-13 14:14:58', '2024-02-13 14:14:58', 'GET', 'February 13, 2024, 10:14 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(628, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 17:56:08', '2024-02-13 17:56:08', 'GET', 'February 13, 2024, 1:56 pm', NULL, '[]', NULL, 'PostmanRuntime/7.36.1', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(629, 'http://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-02-13 18:15:35', '2024-02-13 18:15:35', 'POST', 'February 13, 2024, 2:15 pm', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(630, NULL, NULL, NULL, NULL, '2024-02-13 18:15:35', '2024-02-13 18:15:35', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(631, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-02-13 18:15:37', '2024-02-13 18:15:37', 'POST', 'February 13, 2024, 2:15 pm', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(632, 'http://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-02-13 18:31:21', '2024-02-13 18:31:21', 'GET', 'February 13, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(633, 'http://ohmc.swantech.ae/api/staff-details/1003', '[]', NULL, '137.59.231.225', '2024-02-13 18:31:50', '2024-02-13 18:31:50', 'GET', 'February 13, 2024, 2:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(634, 'http://ohmc.swantech.ae/api/staff-details/1003', '[]', NULL, '137.59.231.225', '2024-02-13 18:33:20', '2024-02-13 18:33:20', 'GET', 'February 13, 2024, 2:33 pm', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(635, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 18:33:46', '2024-02-13 18:33:46', 'GET', 'February 13, 2024, 2:33 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(636, 'http://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-02-13 18:51:52', '2024-02-13 18:51:52', 'POST', 'February 13, 2024, 2:51 pm', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(637, NULL, NULL, NULL, NULL, '2024-02-13 18:51:52', '2024-02-13 18:51:52', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(638, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-02-13 18:51:54', '2024-02-13 18:51:54', 'POST', 'February 13, 2024, 2:51 pm', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(639, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 18:52:38', '2024-02-13 18:52:38', 'GET', 'February 13, 2024, 2:52 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(640, 'http://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-02-13 18:53:29', '2024-02-13 18:53:29', 'GET', 'February 13, 2024, 2:53 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(641, 'http://ohmc.swantech.ae/api/staff-details/1003', '[]', NULL, '137.59.231.225', '2024-02-13 18:54:10', '2024-02-13 18:54:10', 'GET', 'February 13, 2024, 2:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(642, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-13 18:54:18', '2024-02-13 18:54:18', 'GET', 'February 13, 2024, 2:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(643, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-13 18:54:59', '2024-02-13 18:54:59', 'GET', 'February 13, 2024, 2:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(644, 'http://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-02-13 19:04:03', '2024-02-13 19:04:03', 'GET', 'February 13, 2024, 3:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(645, 'http://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-02-13 19:04:21', '2024-02-13 19:04:21', 'GET', 'February 13, 2024, 3:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(646, 'http://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-02-13 19:04:48', '2024-02-13 19:04:48', 'GET', 'February 13, 2024, 3:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(647, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 19:05:13', '2024-02-13 19:05:13', 'POST', 'February 13, 2024, 3:05 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(648, NULL, NULL, NULL, NULL, '2024-02-13 19:05:13', '2024-02-13 19:05:13', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(649, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 19:05:15', '2024-02-13 19:05:15', 'POST', 'February 13, 2024, 3:05 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(650, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:20', '2024-02-13 19:05:20', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(651, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:20', '2024-02-13 19:05:20', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(652, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:20', '2024-02-13 19:05:20', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(653, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:20', '2024-02-13 19:05:20', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(654, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:20', '2024-02-13 19:05:20', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(655, 'http://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-02-13 19:05:24', '2024-02-13 19:05:24', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(656, 'http://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-02-13 19:05:34', '2024-02-13 19:05:34', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(657, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:05:49', '2024-02-13 19:05:49', 'GET', 'February 13, 2024, 3:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(658, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:07:47', '2024-02-13 19:07:47', 'GET', 'February 13, 2024, 3:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(659, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.41', '2024-02-13 19:31:14', '2024-02-13 19:31:14', 'POST', 'February 13, 2024, 3:31 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(660, NULL, NULL, NULL, NULL, '2024-02-13 19:31:14', '2024-02-13 19:31:14', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(661, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.41', '2024-02-13 19:31:17', '2024-02-13 19:31:17', 'POST', 'February 13, 2024, 3:31 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(662, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.41', '2024-02-13 19:31:22', '2024-02-13 19:31:22', 'GET', 'February 13, 2024, 3:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(663, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.41', '2024-02-13 19:31:22', '2024-02-13 19:31:22', 'GET', 'February 13, 2024, 3:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(664, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.41', '2024-02-13 19:31:22', '2024-02-13 19:31:22', 'GET', 'February 13, 2024, 3:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(665, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.41', '2024-02-13 19:31:22', '2024-02-13 19:31:22', 'GET', 'February 13, 2024, 3:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(666, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.41', '2024-02-13 19:31:22', '2024-02-13 19:31:22', 'GET', 'February 13, 2024, 3:31 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(667, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.41', '2024-02-13 19:32:00', '2024-02-13 19:32:00', 'GET', 'February 13, 2024, 3:32 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(668, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 19:46:50', '2024-02-13 19:46:50', 'POST', 'February 13, 2024, 3:46 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(669, NULL, NULL, NULL, NULL, '2024-02-13 19:46:50', '2024-02-13 19:46:50', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(670, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 19:46:53', '2024-02-13 19:46:53', 'POST', 'February 13, 2024, 3:46 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(671, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 19:46:58', '2024-02-13 19:46:58', 'GET', 'February 13, 2024, 3:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(672, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 19:46:58', '2024-02-13 19:46:58', 'GET', 'February 13, 2024, 3:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(673, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 19:46:58', '2024-02-13 19:46:58', 'GET', 'February 13, 2024, 3:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(674, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 19:46:58', '2024-02-13 19:46:58', 'GET', 'February 13, 2024, 3:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(675, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 19:46:58', '2024-02-13 19:46:58', 'GET', 'February 13, 2024, 3:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(676, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:47:30', '2024-02-13 19:47:30', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(677, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.41', '2024-02-13 19:47:49', '2024-02-13 19:47:49', 'POST', 'February 13, 2024, 3:47 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(678, NULL, NULL, NULL, NULL, '2024-02-13 19:47:49', '2024-02-13 19:47:49', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(679, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=%20%20dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.41', '2024-02-13 19:47:52', '2024-02-13 19:47:52', 'POST', 'February 13, 2024, 3:47 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(680, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.41', '2024-02-13 19:47:57', '2024-02-13 19:47:57', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(681, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.41', '2024-02-13 19:47:57', '2024-02-13 19:47:57', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(682, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.41', '2024-02-13 19:47:57', '2024-02-13 19:47:57', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(683, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.41', '2024-02-13 19:47:57', '2024-02-13 19:47:57', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(684, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.41', '2024-02-13 19:47:57', '2024-02-13 19:47:57', 'GET', 'February 13, 2024, 3:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(685, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:48:05', '2024-02-13 19:48:05', 'GET', 'February 13, 2024, 3:48 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(686, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.41', '2024-02-13 19:48:13', '2024-02-13 19:48:13', 'GET', 'February 13, 2024, 3:48 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(687, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:49:18', '2024-02-13 19:49:18', 'GET', 'February 13, 2024, 3:49 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(688, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.41', '2024-02-13 19:49:18', '2024-02-13 19:49:18', 'GET', 'February 13, 2024, 3:49 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(689, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 19:59:06', '2024-02-13 19:59:06', 'POST', 'February 13, 2024, 3:59 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(690, NULL, NULL, NULL, NULL, '2024-02-13 19:59:07', '2024-02-13 19:59:07', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(691, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 19:59:08', '2024-02-13 19:59:08', 'POST', 'February 13, 2024, 3:59 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(692, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:13', '2024-02-13 19:59:13', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(693, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:13', '2024-02-13 19:59:13', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(694, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:13', '2024-02-13 19:59:13', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(695, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:13', '2024-02-13 19:59:13', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(696, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:13', '2024-02-13 19:59:13', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(697, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 19:59:28', '2024-02-13 19:59:28', 'GET', 'February 13, 2024, 3:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(698, 'http://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-13 20:00:53', '2024-02-13 20:00:53', 'POST', 'February 13, 2024, 4:00 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(699, NULL, NULL, NULL, NULL, '2024-02-13 20:00:53', '2024-02-13 20:00:53', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(700, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-13 20:00:56', '2024-02-13 20:00:56', 'POST', 'February 13, 2024, 4:00 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(701, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 20:02:01', '2024-02-13 20:02:01', 'GET', 'February 13, 2024, 4:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(702, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 20:02:50', '2024-02-13 20:02:50', 'GET', 'February 13, 2024, 4:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(703, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 20:04:09', '2024-02-13 20:04:09', 'GET', 'February 13, 2024, 4:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(704, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 20:05:38', '2024-02-13 20:05:38', 'GET', 'February 13, 2024, 4:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(705, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 20:05:38', '2024-02-13 20:05:38', 'GET', 'February 13, 2024, 4:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(706, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 20:06:08', '2024-02-13 20:06:08', 'GET', 'February 13, 2024, 4:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(707, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 20:06:08', '2024-02-13 20:06:08', 'GET', 'February 13, 2024, 4:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(708, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 20:06:23', '2024-02-13 20:06:23', 'GET', 'February 13, 2024, 4:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(709, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 20:06:23', '2024-02-13 20:06:23', 'GET', 'February 13, 2024, 4:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(710, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.41', '2024-02-13 20:11:55', '2024-02-13 20:11:55', 'POST', 'February 13, 2024, 4:11 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(711, NULL, NULL, NULL, NULL, '2024-02-13 20:11:55', '2024-02-13 20:11:55', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(712, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.41', '2024-02-13 20:11:57', '2024-02-13 20:11:57', 'POST', 'February 13, 2024, 4:11 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(713, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:02', '2024-02-13 20:12:02', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(714, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:02', '2024-02-13 20:12:02', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(715, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:02', '2024-02-13 20:12:02', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(716, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:02', '2024-02-13 20:12:02', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(717, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:02', '2024-02-13 20:12:02', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(718, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.41', '2024-02-13 20:12:25', '2024-02-13 20:12:25', 'GET', 'February 13, 2024, 4:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(719, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.212.41', '2024-02-13 20:14:27', '2024-02-13 20:14:27', 'POST', 'February 13, 2024, 4:14 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(720, NULL, NULL, NULL, NULL, '2024-02-13 20:14:27', '2024-02-13 20:14:27', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(721, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.41', '2024-02-13 20:14:37', '2024-02-13 20:14:37', 'POST', 'February 13, 2024, 4:14 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(722, 'http://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '103.131.212.41', '2024-02-13 20:15:43', '2024-02-13 20:15:43', 'GET', 'February 13, 2024, 4:15 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(723, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.212.41', '2024-02-13 20:19:15', '2024-02-13 20:19:15', 'GET', 'February 13, 2024, 4:19 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(724, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 20:22:28', '2024-02-13 20:22:28', 'GET', 'February 13, 2024, 4:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(725, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 20:24:07', '2024-02-13 20:24:07', 'GET', 'February 13, 2024, 4:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(726, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 20:25:35', '2024-02-13 20:25:35', 'GET', 'February 13, 2024, 4:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(727, 'http://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '103.131.212.41', '2024-02-13 20:26:39', '2024-02-13 20:26:39', 'POST', 'February 13, 2024, 4:26 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(728, NULL, NULL, NULL, NULL, '2024-02-13 20:26:39', '2024-02-13 20:26:39', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(729, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '103.131.212.41', '2024-02-13 20:26:42', '2024-02-13 20:26:42', 'POST', 'February 13, 2024, 4:26 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(730, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.41', '2024-02-13 20:26:47', '2024-02-13 20:26:47', 'GET', 'February 13, 2024, 4:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(731, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.41', '2024-02-13 20:26:47', '2024-02-13 20:26:47', 'GET', 'February 13, 2024, 4:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(732, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.41', '2024-02-13 20:26:47', '2024-02-13 20:26:47', 'GET', 'February 13, 2024, 4:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(733, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.41', '2024-02-13 20:26:47', '2024-02-13 20:26:47', 'GET', 'February 13, 2024, 4:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(734, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.41', '2024-02-13 20:26:47', '2024-02-13 20:26:47', 'GET', 'February 13, 2024, 4:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(735, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.41', '2024-02-13 20:27:02', '2024-02-13 20:27:02', 'GET', 'February 13, 2024, 4:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(736, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 20:58:06', '2024-02-13 20:58:06', 'POST', 'February 13, 2024, 4:58 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(737, NULL, NULL, NULL, NULL, '2024-02-13 20:58:06', '2024-02-13 20:58:06', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(738, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 20:58:09', '2024-02-13 20:58:09', 'POST', 'February 13, 2024, 4:58 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(739, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:13', '2024-02-13 20:58:13', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(740, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:13', '2024-02-13 20:58:13', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(741, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:13', '2024-02-13 20:58:13', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(742, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:13', '2024-02-13 20:58:13', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(743, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:14', '2024-02-13 20:58:14', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(744, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 20:58:28', '2024-02-13 20:58:28', 'GET', 'February 13, 2024, 4:58 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(745, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 21:01:24', '2024-02-13 21:01:24', 'POST', 'February 13, 2024, 5:01 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(746, NULL, NULL, NULL, NULL, '2024-02-13 21:01:24', '2024-02-13 21:01:24', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(747, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 21:01:27', '2024-02-13 21:01:27', 'POST', 'February 13, 2024, 5:01 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(748, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:32', '2024-02-13 21:01:32', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(749, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:32', '2024-02-13 21:01:32', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(750, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:32', '2024-02-13 21:01:32', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(751, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:32', '2024-02-13 21:01:32', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(752, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:32', '2024-02-13 21:01:32', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(753, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 21:01:46', '2024-02-13 21:01:46', 'GET', 'February 13, 2024, 5:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(754, 'http://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-13 21:02:38', '2024-02-13 21:02:38', 'POST', 'February 13, 2024, 5:02 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(755, NULL, NULL, NULL, NULL, '2024-02-13 21:02:38', '2024-02-13 21:02:38', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(756, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-13 21:02:39', '2024-02-13 21:02:39', 'POST', 'February 13, 2024, 5:02 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(757, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:03:47', '2024-02-13 21:03:47', 'GET', 'February 13, 2024, 5:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(758, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:05:49', '2024-02-13 21:05:49', 'GET', 'February 13, 2024, 5:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(759, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:06:28', '2024-02-13 21:06:28', 'GET', 'February 13, 2024, 5:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(760, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:06:43', '2024-02-13 21:06:43', 'GET', 'February 13, 2024, 5:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(761, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:11:50', '2024-02-13 21:11:50', 'POST', 'February 13, 2024, 5:11 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(762, NULL, NULL, NULL, NULL, '2024-02-13 21:11:50', '2024-02-13 21:11:50', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(763, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:11:52', '2024-02-13 21:11:52', 'POST', 'February 13, 2024, 5:11 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(764, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:12:41', '2024-02-13 21:12:41', 'GET', 'February 13, 2024, 5:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(765, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:12:55', '2024-02-13 21:12:55', 'GET', 'February 13, 2024, 5:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(766, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:16:04', '2024-02-13 21:16:04', 'POST', 'February 13, 2024, 5:16 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(767, NULL, NULL, NULL, NULL, '2024-02-13 21:16:04', '2024-02-13 21:16:04', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(768, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:16:14', '2024-02-13 21:16:14', 'POST', 'February 13, 2024, 5:16 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(769, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:21:35', '2024-02-13 21:21:35', 'GET', 'February 13, 2024, 5:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(770, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:21:49', '2024-02-13 21:21:49', 'GET', 'February 13, 2024, 5:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(771, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:22:26', '2024-02-13 21:22:26', 'GET', 'February 13, 2024, 5:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(772, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:22:40', '2024-02-13 21:22:40', 'GET', 'February 13, 2024, 5:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(773, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:31', '2024-02-13 21:24:31', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(774, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:33', '2024-02-13 21:24:33', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(775, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:33', '2024-02-13 21:24:33', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(776, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:33', '2024-02-13 21:24:33', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(777, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:33', '2024-02-13 21:24:33', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(778, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 21:24:33', '2024-02-13 21:24:33', 'GET', 'February 13, 2024, 5:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(779, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 21:25:02', '2024-02-13 21:25:02', 'GET', 'February 13, 2024, 5:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(780, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 21:25:16', '2024-02-13 21:25:16', 'GET', 'February 13, 2024, 5:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(781, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 21:25:18', '2024-02-13 21:25:18', 'GET', 'February 13, 2024, 5:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(782, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:29:29', '2024-02-13 21:29:29', 'POST', 'February 13, 2024, 5:29 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(783, NULL, NULL, NULL, NULL, '2024-02-13 21:29:29', '2024-02-13 21:29:29', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(784, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:29:31', '2024-02-13 21:29:31', 'POST', 'February 13, 2024, 5:29 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(785, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:32:52', '2024-02-13 21:32:52', 'POST', 'February 13, 2024, 5:32 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(786, NULL, NULL, NULL, NULL, '2024-02-13 21:32:52', '2024-02-13 21:32:52', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(787, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:32:54', '2024-02-13 21:32:54', 'POST', 'February 13, 2024, 5:32 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(788, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:38:45', '2024-02-13 21:38:45', 'POST', 'February 13, 2024, 5:38 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(789, NULL, NULL, NULL, NULL, '2024-02-13 21:38:45', '2024-02-13 21:38:45', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(790, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:38:47', '2024-02-13 21:38:47', 'POST', 'February 13, 2024, 5:38 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(791, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 21:49:44', '2024-02-13 21:49:44', 'GET', 'February 13, 2024, 5:49 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(792, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:54:30', '2024-02-13 21:54:30', 'POST', 'February 13, 2024, 5:54 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(793, NULL, NULL, NULL, NULL, '2024-02-13 21:54:30', '2024-02-13 21:54:30', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(794, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:54:32', '2024-02-13 21:54:32', 'POST', 'February 13, 2024, 5:54 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(795, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 21:54:53', '2024-02-13 21:54:53', 'GET', 'February 13, 2024, 5:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(796, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 21:58:33', '2024-02-13 21:58:33', 'POST', 'February 13, 2024, 5:58 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(797, NULL, NULL, NULL, NULL, '2024-02-13 21:58:33', '2024-02-13 21:58:33', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(798, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 21:58:36', '2024-02-13 21:58:36', 'POST', 'February 13, 2024, 5:58 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(799, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 21:59:06', '2024-02-13 21:59:06', 'GET', 'February 13, 2024, 5:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(800, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 22:01:12', '2024-02-13 22:01:12', 'GET', 'February 13, 2024, 6:01 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(801, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-13 22:17:21', '2024-02-13 22:17:21', 'GET', 'February 13, 2024, 6:17 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(802, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-13 22:22:41', '2024-02-13 22:22:41', 'POST', 'February 13, 2024, 6:22 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(803, NULL, NULL, NULL, NULL, '2024-02-13 22:22:41', '2024-02-13 22:22:41', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(804, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 22:22:56', '2024-02-13 22:22:56', 'POST', 'February 13, 2024, 6:22 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(805, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:01', '2024-02-13 22:23:01', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(806, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:01', '2024-02-13 22:23:01', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(807, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:01', '2024-02-13 22:23:01', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(808, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:01', '2024-02-13 22:23:01', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(809, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:01', '2024-02-13 22:23:01', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(810, 'http://ohmc.swantech.ae/api/playlist/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:23:19', '2024-02-13 22:23:19', 'GET', 'February 13, 2024, 6:23 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(811, 'http://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-13 22:23:28', '2024-02-13 22:23:28', 'POST', 'February 13, 2024, 6:23 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(812, NULL, NULL, NULL, NULL, '2024-02-13 22:23:28', '2024-02-13 22:23:28', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(813, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-13 22:23:30', '2024-02-13 22:23:30', 'POST', 'February 13, 2024, 6:23 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(814, 'http://ohmc.swantech.ae/api/playlist/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:24:45', '2024-02-13 22:24:45', 'GET', 'February 13, 2024, 6:24 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(815, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-13 22:25:45', '2024-02-13 22:25:45', 'POST', 'February 13, 2024, 6:25 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(816, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-13 22:25:49', '2024-02-13 22:25:49', 'GET', 'February 13, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(817, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-13 22:25:49', '2024-02-13 22:25:49', 'GET', 'February 13, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(818, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-13 22:25:49', '2024-02-13 22:25:49', 'GET', 'February 13, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(819, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-13 22:25:49', '2024-02-13 22:25:49', 'GET', 'February 13, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(820, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-13 22:25:49', '2024-02-13 22:25:49', 'GET', 'February 13, 2024, 6:25 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(821, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-13 22:26:07', '2024-02-13 22:26:07', 'GET', 'February 13, 2024, 6:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(822, 'http://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-13 22:27:01', '2024-02-13 22:27:01', 'POST', 'February 13, 2024, 6:27 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(823, NULL, NULL, NULL, NULL, '2024-02-13 22:27:01', '2024-02-13 22:27:01', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(824, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-13 22:27:03', '2024-02-13 22:27:03', 'POST', 'February 13, 2024, 6:27 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(825, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-13 22:27:07', '2024-02-13 22:27:07', 'GET', 'February 13, 2024, 6:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(826, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-13 22:27:07', '2024-02-13 22:27:07', 'GET', 'February 13, 2024, 6:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(827, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-13 22:27:07', '2024-02-13 22:27:07', 'GET', 'February 13, 2024, 6:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(828, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-13 22:27:08', '2024-02-13 22:27:08', 'GET', 'February 13, 2024, 6:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(829, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-13 22:27:08', '2024-02-13 22:27:08', 'GET', 'February 13, 2024, 6:27 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(830, 'http://ohmc.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-13 22:37:35', '2024-02-13 22:37:35', 'GET', 'February 13, 2024, 6:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(831, 'http://ohmc.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-02-13 22:37:43', '2024-02-13 22:37:43', 'GET', 'February 13, 2024, 6:37 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(832, 'http://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd%20%20%20', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-13 22:38:15', '2024-02-13 22:38:15', 'POST', 'February 13, 2024, 6:38 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(833, NULL, NULL, NULL, NULL, '2024-02-13 22:38:15', '2024-02-13 22:38:15', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(834, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd%20%20%20&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-13 22:38:16', '2024-02-13 22:38:16', 'POST', 'February 13, 2024, 6:38 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(835, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-13 22:38:21', '2024-02-13 22:38:21', 'GET', 'February 13, 2024, 6:38 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(836, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-13 22:38:21', '2024-02-13 22:38:21', 'GET', 'February 13, 2024, 6:38 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(837, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-13 22:38:21', '2024-02-13 22:38:21', 'GET', 'February 13, 2024, 6:38 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(838, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-13 22:38:21', '2024-02-13 22:38:21', 'GET', 'February 13, 2024, 6:38 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(839, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-13 22:38:22', '2024-02-13 22:38:22', 'GET', 'February 13, 2024, 6:38 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(840, 'http://ohmc.swantech.ae/api/playlist/17', '[]', NULL, '137.59.231.225', '2024-02-13 22:39:10', '2024-02-13 22:39:10', 'GET', 'February 13, 2024, 6:39 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(841, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 22:40:18', '2024-02-13 22:40:18', 'POST', 'February 13, 2024, 6:40 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(842, NULL, NULL, NULL, NULL, '2024-02-13 22:40:18', '2024-02-13 22:40:18', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(843, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 22:40:19', '2024-02-13 22:40:19', 'POST', 'February 13, 2024, 6:40 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(844, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:40:21', '2024-02-13 22:40:21', 'GET', 'February 13, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(845, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:40:46', '2024-02-13 22:40:46', 'GET', 'February 13, 2024, 6:40 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(846, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:41:22', '2024-02-13 22:41:22', 'GET', 'February 13, 2024, 6:41 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(847, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:41:52', '2024-02-13 22:41:52', 'GET', 'February 13, 2024, 6:41 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(848, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:42:57', '2024-02-13 22:42:57', 'GET', 'February 13, 2024, 6:42 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(849, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:43:40', '2024-02-13 22:43:40', 'GET', 'February 13, 2024, 6:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(850, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:43:54', '2024-02-13 22:43:54', 'GET', 'February 13, 2024, 6:43 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(851, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:45:49', '2024-02-13 22:45:49', 'GET', 'February 13, 2024, 6:45 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(852, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:46:02', '2024-02-13 22:46:02', 'GET', 'February 13, 2024, 6:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(853, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:46:53', '2024-02-13 22:46:53', 'GET', 'February 13, 2024, 6:46 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(854, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:47:00', '2024-02-13 22:47:00', 'GET', 'February 13, 2024, 6:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(855, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:47:10', '2024-02-13 22:47:10', 'GET', 'February 13, 2024, 6:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(856, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-13 22:47:29', '2024-02-13 22:47:29', 'GET', 'February 13, 2024, 6:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(857, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:47:49', '2024-02-13 22:47:49', 'GET', 'February 13, 2024, 6:47 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(858, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:48:48', '2024-02-13 22:48:48', 'GET', 'February 13, 2024, 6:48 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(859, 'http://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '92.97.175.243', '2024-02-13 22:49:50', '2024-02-13 22:49:50', 'GET', 'February 13, 2024, 6:49 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(860, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:50:00', '2024-02-13 22:50:00', 'GET', 'February 13, 2024, 6:50 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(861, 'http://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-02-13 22:50:51', '2024-02-13 22:50:51', 'GET', 'February 13, 2024, 6:50 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(862, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 22:54:58', '2024-02-13 22:54:58', 'GET', 'February 13, 2024, 6:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(863, 'http://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-02-13 22:55:47', '2024-02-13 22:55:47', 'POST', 'February 13, 2024, 6:55 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(864, NULL, NULL, NULL, NULL, '2024-02-13 22:55:47', '2024-02-13 22:55:47', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(865, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-02-13 22:56:17', '2024-02-13 22:56:17', 'POST', 'February 13, 2024, 6:56 pm', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(866, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:22', '2024-02-13 22:56:22', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(867, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:22', '2024-02-13 22:56:22', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(868, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:22', '2024-02-13 22:56:22', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(869, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:22', '2024-02-13 22:56:22', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(870, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:22', '2024-02-13 22:56:22', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(871, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '137.59.231.225', '2024-02-13 22:56:40', '2024-02-13 22:56:40', 'GET', 'February 13, 2024, 6:56 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(872, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 22:58:53', '2024-02-13 22:58:53', 'POST', 'February 13, 2024, 6:58 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(873, NULL, NULL, NULL, NULL, '2024-02-13 22:58:53', '2024-02-13 22:58:53', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(874, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 22:58:54', '2024-02-13 22:58:54', 'POST', 'February 13, 2024, 6:58 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(875, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 23:07:11', '2024-02-13 23:07:11', 'GET', 'February 13, 2024, 7:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(876, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-13 23:10:04', '2024-02-13 23:10:04', 'GET', 'February 13, 2024, 7:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(877, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 23:14:41', '2024-02-13 23:14:41', 'POST', 'February 13, 2024, 7:14 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(878, NULL, NULL, NULL, NULL, '2024-02-13 23:14:41', '2024-02-13 23:14:41', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(879, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 23:14:42', '2024-02-13 23:14:42', 'POST', 'February 13, 2024, 7:14 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(880, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-02-13 23:34:54', '2024-02-13 23:34:54', 'POST', 'February 13, 2024, 7:34 pm', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(881, NULL, NULL, NULL, NULL, '2024-02-13 23:34:54', '2024-02-13 23:34:54', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(882, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-02-13 23:34:59', '2024-02-13 23:34:59', 'POST', 'February 13, 2024, 7:34 pm', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(883, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-02-13 23:44:33', '2024-02-13 23:44:33', 'GET', 'February 13, 2024, 7:44 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(884, 'http://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-13 23:53:26', '2024-02-13 23:53:26', 'GET', 'February 13, 2024, 7:53 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(885, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-13 23:54:19', '2024-02-13 23:54:19', 'GET', 'February 13, 2024, 7:54 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(886, 'http://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-13 23:59:18', '2024-02-13 23:59:18', 'GET', 'February 13, 2024, 7:59 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(887, 'http://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '92.97.175.243', '2024-02-14 00:03:19', '2024-02-14 00:03:19', 'POST', 'February 13, 2024, 8:03 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(888, NULL, NULL, NULL, NULL, '2024-02-14 00:03:19', '2024-02-14 00:03:19', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(889, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '92.97.175.243', '2024-02-14 00:03:21', '2024-02-14 00:03:21', 'POST', 'February 13, 2024, 8:03 pm', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(890, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:25', '2024-02-14 00:03:25', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(891, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:25', '2024-02-14 00:03:25', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(892, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:26', '2024-02-14 00:03:26', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(893, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:26', '2024-02-14 00:03:26', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(894, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:26', '2024-02-14 00:03:26', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(895, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-14 00:03:41', '2024-02-14 00:03:41', 'GET', 'February 13, 2024, 8:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(896, 'http://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '92.97.175.243', '2024-02-14 00:05:08', '2024-02-14 00:05:08', 'POST', 'February 13, 2024, 8:05 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(897, NULL, NULL, NULL, NULL, '2024-02-14 00:05:08', '2024-02-14 00:05:08', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(898, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '92.97.175.243', '2024-02-14 00:05:11', '2024-02-14 00:05:11', 'POST', 'February 13, 2024, 8:05 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(899, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:05:40', '2024-02-14 00:05:40', 'GET', 'February 13, 2024, 8:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(900, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:06:54', '2024-02-14 00:06:54', 'GET', 'February 13, 2024, 8:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(901, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:07:29', '2024-02-14 00:07:29', 'GET', 'February 13, 2024, 8:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(902, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:10:15', '2024-02-14 00:10:15', 'GET', 'February 13, 2024, 8:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(903, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:10:15', '2024-02-14 00:10:15', 'GET', 'February 13, 2024, 8:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(904, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:11:10', '2024-02-14 00:11:10', 'GET', 'February 13, 2024, 8:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(905, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:12:28', '2024-02-14 00:12:28', 'GET', 'February 13, 2024, 8:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(906, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:13:44', '2024-02-14 00:13:44', 'GET', 'February 13, 2024, 8:13 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(907, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:14:32', '2024-02-14 00:14:32', 'GET', 'February 13, 2024, 8:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(908, 'http://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '92.97.175.243', '2024-02-14 00:15:13', '2024-02-14 00:15:13', 'GET', 'February 13, 2024, 8:15 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(909, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-14 00:15:43', '2024-02-14 00:15:43', 'GET', 'February 13, 2024, 8:15 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(910, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:21:45', '2024-02-14 00:21:45', 'GET', 'February 13, 2024, 8:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(911, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:21:45', '2024-02-14 00:21:45', 'GET', 'February 13, 2024, 8:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(912, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:21:57', '2024-02-14 00:21:57', 'GET', 'February 13, 2024, 8:21 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(913, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:22:27', '2024-02-14 00:22:27', 'GET', 'February 13, 2024, 8:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(914, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:22:27', '2024-02-14 00:22:27', 'GET', 'February 13, 2024, 8:22 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(915, 'http://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '137.59.231.225', '2024-02-14 00:26:07', '2024-02-14 00:26:07', 'GET', 'February 13, 2024, 8:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(916, 'http://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '137.59.231.225', '2024-02-14 00:26:32', '2024-02-14 00:26:32', 'GET', 'February 13, 2024, 8:26 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(917, 'http://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.212.115', '2024-02-14 09:05:53', '2024-02-14 09:05:53', 'POST', 'February 14, 2024, 5:05 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(918, NULL, NULL, NULL, NULL, '2024-02-14 09:05:53', '2024-02-14 09:05:53', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(919, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.115', '2024-02-14 09:06:02', '2024-02-14 09:06:02', 'POST', 'February 14, 2024, 5:06 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(920, 'http://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '103.131.212.115', '2024-02-14 09:08:01', '2024-02-14 09:08:01', 'POST', 'February 14, 2024, 5:08 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(921, NULL, NULL, NULL, NULL, '2024-02-14 09:08:01', '2024-02-14 09:08:01', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(922, 'http://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '103.131.212.115', '2024-02-14 09:08:04', '2024-02-14 09:08:04', 'POST', 'February 14, 2024, 5:08 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(923, 'http://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:10', '2024-02-14 09:08:10', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(924, 'http://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:10', '2024-02-14 09:08:10', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(925, 'http://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:10', '2024-02-14 09:08:10', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(926, 'http://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:10', '2024-02-14 09:08:10', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(927, 'http://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:10', '2024-02-14 09:08:10', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(928, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.115', '2024-02-14 09:08:38', '2024-02-14 09:08:38', 'GET', 'February 14, 2024, 5:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(929, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '92.97.175.243', '2024-02-14 09:10:42', '2024-02-14 09:10:42', 'GET', 'February 14, 2024, 5:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(930, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.115', '2024-02-14 09:10:42', '2024-02-14 09:10:42', 'GET', 'February 14, 2024, 5:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(931, 'http://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.115', '2024-02-14 09:12:41', '2024-02-14 09:12:41', 'GET', 'February 14, 2024, 5:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(932, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 13:40:20', '2024-03-12 13:40:20', 'GET', 'March 12, 2024, 9:40 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(933, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 13:48:40', '2024-03-12 13:48:40', 'GET', 'March 12, 2024, 9:48 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(934, 'https://devdssv2.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '137.59.231.225', '2024-03-12 14:01:22', '2024-03-12 14:01:22', 'POST', 'March 12, 2024, 10:01 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(935, NULL, NULL, NULL, NULL, '2024-03-12 14:01:22', '2024-03-12 14:01:22', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(936, 'https://devdssv2.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '137.59.231.225', '2024-03-12 14:01:26', '2024-03-12 14:01:26', 'POST', 'March 12, 2024, 10:01 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(937, 'https://ohmc.swantech.ae/api/single-device/1', '[]', NULL, '175.107.228.164', '2024-03-12 14:08:05', '2024-03-12 14:08:05', 'GET', 'March 12, 2024, 10:08 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(938, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '175.107.228.164', '2024-03-12 14:08:26', '2024-03-12 14:08:26', 'GET', 'March 12, 2024, 10:08 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(939, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '175.107.228.164', '2024-03-12 14:35:21', '2024-03-12 14:35:21', 'GET', 'March 12, 2024, 10:35 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(940, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '175.107.228.164', '2024-03-12 14:36:20', '2024-03-12 14:36:20', 'GET', 'March 12, 2024, 10:36 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(941, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 14:37:52', '2024-03-12 14:37:52', 'GET', 'March 12, 2024, 10:37 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(942, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 14:38:23', '2024-03-12 14:38:23', 'GET', 'March 12, 2024, 10:38 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(943, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 14:38:37', '2024-03-12 14:38:37', 'GET', 'March 12, 2024, 10:38 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(944, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-12 14:38:57', '2024-03-12 14:38:57', 'GET', 'March 12, 2024, 10:38 am', NULL, '[]', NULL, 'WhatsApp/2.23.20.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(945, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '154.80.22.101', '2024-03-13 18:03:33', '2024-03-13 18:03:33', 'GET', 'March 13, 2024, 2:03 pm', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(946, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '154.80.22.101', '2024-03-13 18:04:21', '2024-03-13 18:04:21', 'GET', 'March 13, 2024, 2:04 pm', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(947, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-14 08:50:45', '2024-03-14 08:50:45', 'GET', 'March 14, 2024, 4:50 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(948, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-14 08:52:41', '2024-03-14 08:52:41', 'GET', 'March 14, 2024, 4:52 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(949, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.212.69', '2024-03-14 10:42:52', '2024-03-14 10:42:52', 'POST', 'March 14, 2024, 6:42 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(950, NULL, NULL, NULL, NULL, '2024-03-14 10:42:52', '2024-03-14 10:42:52', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(951, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.69', '2024-03-14 10:42:54', '2024-03-14 10:42:54', 'POST', 'March 14, 2024, 6:42 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(952, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.69', '2024-03-14 10:43:02', '2024-03-14 10:43:02', 'POST', 'March 14, 2024, 6:43 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(953, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.69', '2024-03-14 10:43:14', '2024-03-14 10:43:14', 'POST', 'March 14, 2024, 6:43 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(954, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.164', '2024-03-14 10:44:50', '2024-03-14 10:44:50', 'POST', 'March 14, 2024, 6:44 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(955, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.164', '2024-03-14 10:47:26', '2024-03-14 10:47:26', 'POST', 'March 14, 2024, 6:47 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(956, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.164', '2024-03-14 10:48:03', '2024-03-14 10:48:03', 'POST', 'March 14, 2024, 6:48 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(957, 'https://devdssv2.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.164', '2024-03-14 10:49:15', '2024-03-14 10:49:15', 'POST', 'March 14, 2024, 6:49 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(958, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.212.69', '2024-03-14 10:53:08', '2024-03-14 10:53:08', 'POST', 'March 14, 2024, 6:53 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(959, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.69', '2024-03-14 10:57:29', '2024-03-14 10:57:29', 'POST', 'March 14, 2024, 6:57 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(960, NULL, NULL, NULL, NULL, '2024-03-14 10:57:29', '2024-03-14 10:57:29', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(961, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.212.69', '2024-03-14 10:57:32', '2024-03-14 10:57:32', 'POST', 'March 14, 2024, 6:57 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(962, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.69', '2024-03-14 11:32:45', '2024-03-14 11:32:45', 'POST', 'March 14, 2024, 7:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(963, NULL, NULL, NULL, NULL, '2024-03-14 11:32:45', '2024-03-14 11:32:45', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(964, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.212.69', '2024-03-14 11:32:48', '2024-03-14 11:32:48', 'POST', 'March 14, 2024, 7:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(965, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.69', '2024-03-14 12:01:37', '2024-03-14 12:01:37', 'POST', 'March 14, 2024, 8:01 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(966, NULL, NULL, NULL, NULL, '2024-03-14 12:01:37', '2024-03-14 12:01:37', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(967, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.212.69', '2024-03-14 12:01:44', '2024-03-14 12:01:44', 'POST', 'March 14, 2024, 8:01 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(968, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '103.131.212.69', '2024-03-14 12:02:10', '2024-03-14 12:02:10', 'GET', 'March 14, 2024, 8:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(969, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '103.131.212.69', '2024-03-14 12:04:24', '2024-03-14 12:04:24', 'GET', 'March 14, 2024, 8:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(970, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.69', '2024-03-14 12:06:56', '2024-03-14 12:06:56', 'POST', 'March 14, 2024, 8:06 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(971, NULL, NULL, NULL, NULL, '2024-03-14 12:06:56', '2024-03-14 12:06:56', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(972, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.212.69', '2024-03-14 12:06:59', '2024-03-14 12:06:59', 'POST', 'March 14, 2024, 8:06 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(973, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '103.131.212.69', '2024-03-14 12:07:18', '2024-03-14 12:07:18', 'GET', 'March 14, 2024, 8:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(974, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 12:51:46', '2024-03-14 12:51:46', 'POST', 'March 14, 2024, 8:51 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(975, NULL, NULL, NULL, NULL, '2024-03-14 12:51:46', '2024-03-14 12:51:46', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(976, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 12:51:57', '2024-03-14 12:51:57', 'POST', 'March 14, 2024, 8:51 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(977, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-14 12:57:40', '2024-03-14 12:57:40', 'GET', 'March 14, 2024, 8:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(978, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 13:09:06', '2024-03-14 13:09:06', 'POST', 'March 14, 2024, 9:09 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(979, NULL, NULL, NULL, NULL, '2024-03-14 13:09:06', '2024-03-14 13:09:06', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(980, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 13:11:46', '2024-03-14 13:11:46', 'POST', 'March 14, 2024, 9:11 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(981, NULL, NULL, NULL, NULL, '2024-03-14 13:11:46', '2024-03-14 13:11:46', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(982, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 13:12:02', '2024-03-14 13:12:02', 'POST', 'March 14, 2024, 9:12 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(983, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 13:18:25', '2024-03-14 13:18:25', 'POST', 'March 14, 2024, 9:18 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(984, NULL, NULL, NULL, NULL, '2024-03-14 13:18:25', '2024-03-14 13:18:25', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(985, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 13:18:32', '2024-03-14 13:18:32', 'POST', 'March 14, 2024, 9:18 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(986, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 13:19:13', '2024-03-14 13:19:13', 'POST', 'March 14, 2024, 9:19 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(987, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-14 13:32:28', '2024-03-14 13:32:28', 'GET', 'March 14, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(988, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-14 13:45:00', '2024-03-14 13:45:00', 'GET', 'March 14, 2024, 9:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(989, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-14 13:47:28', '2024-03-14 13:47:28', 'GET', 'March 14, 2024, 9:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(990, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 14:34:44', '2024-03-14 14:34:44', 'POST', 'March 14, 2024, 10:34 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(991, NULL, NULL, NULL, NULL, '2024-03-14 14:34:44', '2024-03-14 14:34:44', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(992, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 14:34:50', '2024-03-14 14:34:50', 'POST', 'March 14, 2024, 10:34 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(993, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 14:34:58', '2024-03-14 14:34:58', 'POST', 'March 14, 2024, 10:34 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(994, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-14 14:36:43', '2024-03-14 14:36:43', 'POST', 'March 14, 2024, 10:36 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(995, NULL, NULL, NULL, NULL, '2024-03-14 14:36:43', '2024-03-14 14:36:43', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(996, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-14 14:36:50', '2024-03-14 14:36:50', 'POST', 'March 14, 2024, 10:36 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(997, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-14 14:47:24', '2024-03-14 14:47:24', 'GET', 'March 14, 2024, 10:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(998, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '175.107.228.164', '2024-03-14 15:19:15', '2024-03-14 15:19:15', 'GET', 'March 14, 2024, 11:19 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(999, 'https://ohmc.swantech.ae/api/online-license?imei=689e913fe04f2c90', '{\"imei\":\"689e913fe04f2c90\"}', NULL, '2.51.8.118', '2024-03-15 10:02:33', '2024-03-15 10:02:33', 'POST', 'March 15, 2024, 6:02 am', NULL, '{\"imei\":\"689e913fe04f2c90\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1000, NULL, NULL, NULL, NULL, '2024-03-15 10:02:33', '2024-03-15 10:02:33', NULL, NULL, NULL, '{\"imei\":\"689e913fe04f2c90\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1001, 'https://ohmc.swantech.ae/api/online-license?imei=689e913fe04f2c90', '{\"imei\":\"689e913fe04f2c90\"}', NULL, '2.51.8.118', '2024-03-15 10:03:40', '2024-03-15 10:03:40', 'POST', 'March 15, 2024, 6:03 am', NULL, '{\"imei\":\"689e913fe04f2c90\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1002, NULL, NULL, NULL, NULL, '2024-03-15 10:03:40', '2024-03-15 10:03:40', NULL, NULL, NULL, '{\"imei\":\"689e913fe04f2c90\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1003, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.8.118', '2024-03-15 10:03:42', '2024-03-15 10:03:42', 'POST', 'March 15, 2024, 6:03 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1004, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.8.118', '2024-03-15 10:04:04', '2024-03-15 10:04:04', 'POST', 'March 15, 2024, 6:04 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1005, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.8.118', '2024-03-15 10:04:14', '2024-03-15 10:04:14', 'POST', 'March 15, 2024, 6:04 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1006, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.8.118', '2024-03-15 10:25:30', '2024-03-15 10:25:30', 'POST', 'March 15, 2024, 6:25 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1007, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '2.51.8.118', '2024-03-15 10:25:35', '2024-03-15 10:25:35', 'GET', 'March 15, 2024, 6:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1008, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '2.51.8.118', '2024-03-15 10:25:35', '2024-03-15 10:25:35', 'GET', 'March 15, 2024, 6:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1009, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '2.51.8.118', '2024-03-15 10:25:35', '2024-03-15 10:25:35', 'GET', 'March 15, 2024, 6:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1010, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '2.51.8.118', '2024-03-15 10:25:35', '2024-03-15 10:25:35', 'GET', 'March 15, 2024, 6:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1011, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '2.51.8.118', '2024-03-15 10:25:35', '2024-03-15 10:25:35', 'GET', 'March 15, 2024, 6:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1012, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 10:26:12', '2024-03-15 10:26:12', 'GET', 'March 15, 2024, 6:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1013, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 10:27:35', '2024-03-15 10:27:35', 'GET', 'March 15, 2024, 6:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1014, 'https://ohmc.swantech.ae/api/online-license?imei=689e913fe04f2c90', '{\"imei\":\"689e913fe04f2c90\"}', NULL, '2.51.8.118', '2024-03-15 10:28:43', '2024-03-15 10:28:43', 'POST', 'March 15, 2024, 6:28 am', NULL, '{\"imei\":\"689e913fe04f2c90\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1015, NULL, NULL, NULL, NULL, '2024-03-15 10:28:43', '2024-03-15 10:28:43', NULL, NULL, NULL, '{\"imei\":\"689e913fe04f2c90\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1016, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.8.118', '2024-03-15 10:28:46', '2024-03-15 10:28:46', 'POST', 'March 15, 2024, 6:28 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1017, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '2.51.8.118', '2024-03-15 10:28:51', '2024-03-15 10:28:51', 'GET', 'March 15, 2024, 6:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1018, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '2.51.8.118', '2024-03-15 10:28:51', '2024-03-15 10:28:51', 'GET', 'March 15, 2024, 6:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1019, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '2.51.8.118', '2024-03-15 10:28:51', '2024-03-15 10:28:51', 'GET', 'March 15, 2024, 6:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1020, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '2.51.8.118', '2024-03-15 10:28:51', '2024-03-15 10:28:51', 'GET', 'March 15, 2024, 6:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1021, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '2.51.8.118', '2024-03-15 10:28:51', '2024-03-15 10:28:51', 'GET', 'March 15, 2024, 6:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1022, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 10:29:11', '2024-03-15 10:29:11', 'GET', 'March 15, 2024, 6:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1023, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 10:31:01', '2024-03-15 10:31:01', 'GET', 'March 15, 2024, 6:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1024, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.159', '2024-03-15 10:37:10', '2024-03-15 10:37:10', 'POST', 'March 15, 2024, 6:37 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1025, NULL, NULL, NULL, NULL, '2024-03-15 10:37:10', '2024-03-15 10:37:10', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1026, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.212.159', '2024-03-15 10:37:12', '2024-03-15 10:37:12', 'POST', 'March 15, 2024, 6:37 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1027, 'https://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.159', '2024-03-15 10:39:24', '2024-03-15 10:39:24', 'POST', 'March 15, 2024, 6:39 am', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1028, NULL, NULL, NULL, NULL, '2024-03-15 10:39:24', '2024-03-15 10:39:24', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1029, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.159', '2024-03-15 10:39:27', '2024-03-15 10:39:27', 'POST', 'March 15, 2024, 6:39 am', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1030, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:32', '2024-03-15 10:39:32', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1031, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:32', '2024-03-15 10:39:32', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1032, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:32', '2024-03-15 10:39:32', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1033, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:32', '2024-03-15 10:39:32', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1034, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:32', '2024-03-15 10:39:32', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1035, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.159', '2024-03-15 10:39:33', '2024-03-15 10:39:33', 'POST', 'March 15, 2024, 6:39 am', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1036, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:38', '2024-03-15 10:39:38', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1037, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:38', '2024-03-15 10:39:38', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1038, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:38', '2024-03-15 10:39:38', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1039, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:38', '2024-03-15 10:39:38', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1040, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.159', '2024-03-15 10:39:38', '2024-03-15 10:39:38', 'GET', 'March 15, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1041, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.159', '2024-03-15 10:40:00', '2024-03-15 10:40:00', 'GET', 'March 15, 2024, 6:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1042, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '137.59.231.225', '2024-03-15 10:41:02', '2024-03-15 10:41:02', 'GET', 'March 15, 2024, 6:41 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1043, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '137.59.231.225', '2024-03-15 10:41:23', '2024-03-15 10:41:23', 'GET', 'March 15, 2024, 6:41 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1044, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '137.59.231.225', '2024-03-15 10:41:52', '2024-03-15 10:41:52', 'GET', 'March 15, 2024, 6:41 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1045, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '175.107.228.164', '2024-03-15 10:49:42', '2024-03-15 10:49:42', 'GET', 'March 15, 2024, 6:49 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1046, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 10:50:12', '2024-03-15 10:50:12', 'GET', 'March 15, 2024, 6:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1047, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.159', '2024-03-15 12:49:05', '2024-03-15 12:49:05', 'GET', 'March 15, 2024, 8:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1048, 'https://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '103.131.212.159', '2024-03-15 14:14:43', '2024-03-15 14:14:43', 'POST', 'March 15, 2024, 10:14 am', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1049, NULL, NULL, NULL, NULL, '2024-03-15 14:14:43', '2024-03-15 14:14:43', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1050, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.159', '2024-03-15 14:14:46', '2024-03-15 14:14:46', 'POST', 'March 15, 2024, 10:14 am', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1051, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '103.131.212.159', '2024-03-15 14:14:49', '2024-03-15 14:14:49', 'POST', 'March 15, 2024, 10:14 am', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1052, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:51', '2024-03-15 14:14:51', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1053, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:51', '2024-03-15 14:14:51', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1054, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:51', '2024-03-15 14:14:51', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1055, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:51', '2024-03-15 14:14:51', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1056, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:51', '2024-03-15 14:14:51', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1057, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:54', '2024-03-15 14:14:54', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1058, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:54', '2024-03-15 14:14:54', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1059, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:54', '2024-03-15 14:14:54', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1060, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:54', '2024-03-15 14:14:54', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1061, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '103.131.212.159', '2024-03-15 14:14:54', '2024-03-15 14:14:54', 'GET', 'March 15, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1062, 'https://ohmc.swantech.ae/api/playlist/15', '[]', NULL, '103.131.212.159', '2024-03-15 14:15:13', '2024-03-15 14:15:13', 'GET', 'March 15, 2024, 10:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1063, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 15:26:20', '2024-03-15 15:26:20', 'GET', 'March 15, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1064, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 15:27:58', '2024-03-15 15:27:58', 'GET', 'March 15, 2024, 11:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1065, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 15:28:06', '2024-03-15 15:28:06', 'GET', 'March 15, 2024, 11:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1066, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 15:32:08', '2024-03-15 15:32:08', 'GET', 'March 15, 2024, 11:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1067, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.8.118', '2024-03-15 15:40:00', '2024-03-15 15:40:00', 'GET', 'March 15, 2024, 11:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1068, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.8.118', '2024-03-16 14:26:50', '2024-03-16 14:26:50', 'POST', 'March 16, 2024, 10:26 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1069, NULL, NULL, NULL, NULL, '2024-03-16 14:26:50', '2024-03-16 14:26:50', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1070, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.8.118', '2024-03-16 14:30:06', '2024-03-16 14:30:06', 'POST', 'March 16, 2024, 10:30 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1071, NULL, NULL, NULL, NULL, '2024-03-16 14:30:06', '2024-03-16 14:30:06', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1072, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.8.118', '2024-03-16 14:30:08', '2024-03-16 14:30:08', 'POST', 'March 16, 2024, 10:30 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1073, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.8.118', '2024-03-16 14:34:23', '2024-03-16 14:34:23', 'GET', 'March 16, 2024, 10:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1074, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.8.118', '2024-03-16 14:36:56', '2024-03-16 14:36:56', 'GET', 'March 16, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1075, 'https://ohmc.swantech.ae/api/online-license?imei=0aa882b15134bf2c', '{\"imei\":\"0aa882b15134bf2c\"}', NULL, '137.59.231.225', '2024-03-18 11:43:13', '2024-03-18 11:43:13', 'POST', 'March 18, 2024, 7:43 am', NULL, '{\"imei\":\"0aa882b15134bf2c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1076, NULL, NULL, NULL, NULL, '2024-03-18 11:43:13', '2024-03-18 11:43:13', NULL, NULL, NULL, '{\"imei\":\"0aa882b15134bf2c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1077, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=0aa882b15134bf2c&license_key=dffb9dbafd4f0a69bf2c4751c899e585c68e7e39', '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, '137.59.231.225', '2024-03-18 11:43:15', '2024-03-18 11:43:15', 'POST', 'March 18, 2024, 7:43 am', NULL, '{\"imei\":\"0aa882b15134bf2c\",\"license_key\":\"dffb9dbafd4f0a69bf2c4751c899e585c68e7e39\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1078, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:20', '2024-03-18 11:43:20', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1079, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:20', '2024-03-18 11:43:20', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1080, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:20', '2024-03-18 11:43:20', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1081, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:20', '2024-03-18 11:43:20', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1082, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:20', '2024-03-18 11:43:20', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1083, 'https://ohmc.swantech.ae/api/playlist/16', '[]', NULL, '137.59.231.225', '2024-03-18 11:43:45', '2024-03-18 11:43:45', 'GET', 'March 18, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1084, 'https://ohmc.swantech.ae/api/playlist/17', '[]', NULL, '137.59.231.225', '2024-03-18 11:44:16', '2024-03-18 11:44:16', 'GET', 'March 18, 2024, 7:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1085, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-18 11:50:13', '2024-03-18 11:50:13', 'POST', 'March 18, 2024, 7:50 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1086, NULL, NULL, NULL, NULL, '2024-03-18 11:50:13', '2024-03-18 11:50:13', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1087, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-18 11:50:24', '2024-03-18 11:50:24', 'POST', 'March 18, 2024, 7:50 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1088, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-18 11:58:18', '2024-03-18 11:58:18', 'POST', 'March 18, 2024, 7:58 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1089, NULL, NULL, NULL, NULL, '2024-03-18 11:58:18', '2024-03-18 11:58:18', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1090, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-18 11:58:24', '2024-03-18 11:58:24', 'POST', 'March 18, 2024, 7:58 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1091, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 12:02:12', '2024-03-18 12:02:12', 'GET', 'March 18, 2024, 8:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1092, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-18 12:04:48', '2024-03-18 12:04:48', 'POST', 'March 18, 2024, 8:04 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1093, NULL, NULL, NULL, NULL, '2024-03-18 12:04:48', '2024-03-18 12:04:48', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1094, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-18 12:04:50', '2024-03-18 12:04:50', 'POST', 'March 18, 2024, 8:04 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1095, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 12:05:24', '2024-03-18 12:05:24', 'GET', 'March 18, 2024, 8:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1096, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 12:08:03', '2024-03-18 12:08:03', 'GET', 'March 18, 2024, 8:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1097, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 12:10:34', '2024-03-18 12:10:34', 'GET', 'March 18, 2024, 8:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1098, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 13:39:14', '2024-03-18 13:39:14', 'GET', 'March 18, 2024, 9:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1099, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 13:55:16', '2024-03-18 13:55:16', 'GET', 'March 18, 2024, 9:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1100, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 13:55:40', '2024-03-18 13:55:40', 'GET', 'March 18, 2024, 9:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1101, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 13:58:11', '2024-03-18 13:58:11', 'GET', 'March 18, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1102, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 13:58:11', '2024-03-18 13:58:11', 'GET', 'March 18, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1103, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 14:31:51', '2024-03-18 14:31:51', 'GET', 'March 18, 2024, 10:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1104, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 14:32:28', '2024-03-18 14:32:28', 'GET', 'March 18, 2024, 10:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1105, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 14:35:33', '2024-03-18 14:35:33', 'GET', 'March 18, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1106, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 14:36:06', '2024-03-18 14:36:06', 'GET', 'March 18, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1107, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-18 14:45:12', '2024-03-18 14:45:12', 'POST', 'March 18, 2024, 10:45 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1108, NULL, NULL, NULL, NULL, '2024-03-18 14:45:12', '2024-03-18 14:45:12', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1109, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-18 14:45:24', '2024-03-18 14:45:24', 'POST', 'March 18, 2024, 10:45 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1110, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-18 14:49:03', '2024-03-18 14:49:03', 'POST', 'March 18, 2024, 10:49 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1111, NULL, NULL, NULL, NULL, '2024-03-18 14:49:03', '2024-03-18 14:49:03', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1112, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '137.59.231.225', '2024-03-18 14:49:05', '2024-03-18 14:49:05', 'POST', 'March 18, 2024, 10:49 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1113, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 14:50:17', '2024-03-18 14:50:17', 'GET', 'March 18, 2024, 10:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1114, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '137.59.231.225', '2024-03-18 14:51:35', '2024-03-18 14:51:35', 'GET', 'March 18, 2024, 10:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1115, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '137.59.231.225', '2024-03-18 15:06:16', '2024-03-18 15:06:16', 'GET', 'March 18, 2024, 11:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1116, 'https://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '137.59.231.225', '2024-03-18 15:47:39', '2024-03-18 15:47:39', 'POST', 'March 18, 2024, 11:47 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1117, NULL, NULL, NULL, NULL, '2024-03-18 15:47:39', '2024-03-18 15:47:39', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1118, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=7f35c7ea1df08fdd&license_key=3441facb76683dc70bdfe5ac81f470c3b5ca1458', '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, '137.59.231.225', '2024-03-18 15:47:41', '2024-03-18 15:47:41', 'POST', 'March 18, 2024, 11:47 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\",\"license_key\":\"3441facb76683dc70bdfe5ac81f470c3b5ca1458\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1119, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-03-18 15:47:46', '2024-03-18 15:47:46', 'GET', 'March 18, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1120, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-03-18 15:47:46', '2024-03-18 15:47:46', 'GET', 'March 18, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1121, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-03-18 15:47:46', '2024-03-18 15:47:46', 'GET', 'March 18, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1122, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-03-18 15:47:46', '2024-03-18 15:47:46', 'GET', 'March 18, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1123, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-03-18 15:47:46', '2024-03-18 15:47:46', 'GET', 'March 18, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1124, 'https://ohmc.swantech.ae/api/playlist/12', '[]', NULL, '137.59.231.225', '2024-03-18 15:48:08', '2024-03-18 15:48:08', 'GET', 'March 18, 2024, 11:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1125, 'https://ohmc.swantech.ae/api/online-license?imei=689e913fe04f2c90', '{\"imei\":\"689e913fe04f2c90\"}', NULL, '2.51.14.220', '2024-03-19 09:41:11', '2024-03-19 09:41:11', 'POST', 'March 19, 2024, 5:41 am', NULL, '{\"imei\":\"689e913fe04f2c90\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1126, NULL, NULL, NULL, NULL, '2024-03-19 09:41:11', '2024-03-19 09:41:11', NULL, NULL, NULL, '{\"imei\":\"689e913fe04f2c90\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1127, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.14.220', '2024-03-19 09:41:13', '2024-03-19 09:41:13', 'POST', 'March 19, 2024, 5:41 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1128, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:18', '2024-03-19 09:41:18', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1129, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:18', '2024-03-19 09:41:18', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1130, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:18', '2024-03-19 09:41:18', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1131, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:18', '2024-03-19 09:41:18', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1132, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:18', '2024-03-19 09:41:18', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1133, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 09:41:47', '2024-03-19 09:41:47', 'GET', 'March 19, 2024, 5:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1134, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 09:42:51', '2024-03-19 09:42:51', 'GET', 'March 19, 2024, 5:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1135, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.14.220', '2024-03-19 09:43:18', '2024-03-19 09:43:18', 'POST', 'March 19, 2024, 5:43 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1136, NULL, NULL, NULL, NULL, '2024-03-19 09:43:18', '2024-03-19 09:43:18', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1137, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.14.220', '2024-03-19 09:43:20', '2024-03-19 09:43:20', 'POST', 'March 19, 2024, 5:43 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1138, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:46:22', '2024-03-19 09:46:22', 'GET', 'March 19, 2024, 5:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1139, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:46:34', '2024-03-19 09:46:34', 'GET', 'March 19, 2024, 5:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1140, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:57:35', '2024-03-19 09:57:35', 'GET', 'March 19, 2024, 5:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1141, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:58:48', '2024-03-19 09:58:48', 'GET', 'March 19, 2024, 5:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1142, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:59:17', '2024-03-19 09:59:17', 'GET', 'March 19, 2024, 5:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1143, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 09:59:33', '2024-03-19 09:59:33', 'GET', 'March 19, 2024, 5:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1144, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 10:01:32', '2024-03-19 10:01:32', 'GET', 'March 19, 2024, 6:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1145, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:07:27', '2024-03-19 10:07:27', 'GET', 'March 19, 2024, 6:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1146, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:07:27', '2024-03-19 10:07:27', 'GET', 'March 19, 2024, 6:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1147, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:09:39', '2024-03-19 10:09:39', 'GET', 'March 19, 2024, 6:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1148, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:09:39', '2024-03-19 10:09:39', 'GET', 'March 19, 2024, 6:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1149, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 10:14:46', '2024-03-19 10:14:46', 'GET', 'March 19, 2024, 6:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1150, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 10:14:46', '2024-03-19 10:14:46', 'GET', 'March 19, 2024, 6:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1151, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:34:25', '2024-03-19 10:34:25', 'GET', 'March 19, 2024, 6:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1152, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 10:40:39', '2024-03-19 10:40:39', 'GET', 'March 19, 2024, 6:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1153, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '2.51.14.220', '2024-03-19 10:40:49', '2024-03-19 10:40:49', 'GET', 'March 19, 2024, 6:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1154, 'https://ohmc.swantech.ae/api/online-license?imei=7f35c7ea1df08fdd', '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, '103.131.213.80', '2024-03-19 10:47:21', '2024-03-19 10:47:21', 'POST', 'March 19, 2024, 6:47 am', NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1155, NULL, NULL, NULL, NULL, '2024-03-19 10:47:21', '2024-03-19 10:47:21', NULL, NULL, NULL, '{\"imei\":\"7f35c7ea1df08fdd\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1156, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-19 10:47:32', '2024-03-19 10:47:32', 'GET', 'March 19, 2024, 6:47 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1157, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-19 10:48:14', '2024-03-19 10:48:14', 'GET', 'March 19, 2024, 6:48 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1158, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.213.80', '2024-03-19 10:48:28', '2024-03-19 10:48:28', 'POST', 'March 19, 2024, 6:48 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1159, NULL, NULL, NULL, NULL, '2024-03-19 10:48:28', '2024-03-19 10:48:28', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1160, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.213.80', '2024-03-19 10:48:30', '2024-03-19 10:48:30', 'POST', 'March 19, 2024, 6:48 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1161, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-19 10:48:39', '2024-03-19 10:48:39', 'GET', 'March 19, 2024, 6:48 am', NULL, '[]', NULL, 'PostmanRuntime/7.36.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1162, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.213.80', '2024-03-19 10:58:48', '2024-03-19 10:58:48', 'POST', 'March 19, 2024, 6:58 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1163, NULL, NULL, NULL, NULL, '2024-03-19 10:58:48', '2024-03-19 10:58:48', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1164, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.213.80', '2024-03-19 10:58:51', '2024-03-19 10:58:51', 'POST', 'March 19, 2024, 6:58 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1165, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.213.80', '2024-03-19 11:09:49', '2024-03-19 11:09:49', 'POST', 'March 19, 2024, 7:09 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1166, NULL, NULL, NULL, NULL, '2024-03-19 11:09:49', '2024-03-19 11:09:49', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1167, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 11:10:38', '2024-03-19 11:10:38', 'POST', 'March 19, 2024, 7:10 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1168, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '137.59.231.225', '2024-03-19 11:18:15', '2024-03-19 11:18:15', 'POST', 'March 19, 2024, 7:18 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1169, NULL, NULL, NULL, NULL, '2024-03-19 11:18:15', '2024-03-19 11:18:15', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1170, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 11:18:17', '2024-03-19 11:18:17', 'POST', 'March 19, 2024, 7:18 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1171, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1172, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1173, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1174, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1175, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1176, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1177, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:37:01', '2024-03-19 11:37:01', 'GET', 'March 19, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1178, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:41:32', '2024-03-19 11:41:32', 'GET', 'March 19, 2024, 7:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1179, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 11:41:32', '2024-03-19 11:41:32', 'GET', 'March 19, 2024, 7:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1180, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 11:52:02', '2024-03-19 11:52:02', 'GET', 'March 19, 2024, 7:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1181, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 11:52:30', '2024-03-19 11:52:30', 'GET', 'March 19, 2024, 7:52 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1182, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 11:54:35', '2024-03-19 11:54:35', 'GET', 'March 19, 2024, 7:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1183, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 11:55:56', '2024-03-19 11:55:56', 'GET', 'March 19, 2024, 7:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1184, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 12:04:02', '2024-03-19 12:04:02', 'GET', 'March 19, 2024, 8:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1185, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '137.59.231.225', '2024-03-19 12:05:15', '2024-03-19 12:05:15', 'POST', 'March 19, 2024, 8:05 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1186, NULL, NULL, NULL, NULL, '2024-03-19 12:05:15', '2024-03-19 12:05:15', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1187, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 12:05:17', '2024-03-19 12:05:17', 'POST', 'March 19, 2024, 8:05 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1188, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 12:05:53', '2024-03-19 12:05:53', 'GET', 'March 19, 2024, 8:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1189, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 12:07:16', '2024-03-19 12:07:16', 'GET', 'March 19, 2024, 8:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1190, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 12:07:16', '2024-03-19 12:07:16', 'GET', 'March 19, 2024, 8:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1191, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 12:09:14', '2024-03-19 12:09:14', 'GET', 'March 19, 2024, 8:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1192, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 12:09:14', '2024-03-19 12:09:14', 'GET', 'March 19, 2024, 8:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1193, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 12:11:56', '2024-03-19 12:11:56', 'GET', 'March 19, 2024, 8:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1194, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 12:28:35', '2024-03-19 12:28:35', 'GET', 'March 19, 2024, 8:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1195, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-19 12:28:35', '2024-03-19 12:28:35', 'GET', 'March 19, 2024, 8:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1196, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:10:28', '2024-03-19 13:10:28', 'GET', 'March 19, 2024, 9:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1197, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:11:06', '2024-03-19 13:11:06', 'GET', 'March 19, 2024, 9:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1198, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:15:46', '2024-03-19 13:15:46', 'GET', 'March 19, 2024, 9:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1199, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:16:36', '2024-03-19 13:16:36', 'GET', 'March 19, 2024, 9:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1200, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:18:22', '2024-03-19 13:18:22', 'GET', 'March 19, 2024, 9:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1201, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:21:13', '2024-03-19 13:21:13', 'GET', 'March 19, 2024, 9:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1202, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:22:41', '2024-03-19 13:22:41', 'GET', 'March 19, 2024, 9:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1203, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:25:05', '2024-03-19 13:25:05', 'GET', 'March 19, 2024, 9:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1204, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:26:24', '2024-03-19 13:26:24', 'GET', 'March 19, 2024, 9:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1205, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:27:28', '2024-03-19 13:27:28', 'GET', 'March 19, 2024, 9:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1206, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:28:44', '2024-03-19 13:28:44', 'GET', 'March 19, 2024, 9:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1207, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:29:47', '2024-03-19 13:29:47', 'GET', 'March 19, 2024, 9:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1208, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:32:01', '2024-03-19 13:32:01', 'GET', 'March 19, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1209, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:37:21', '2024-03-19 13:37:21', 'GET', 'March 19, 2024, 9:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1210, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:41:19', '2024-03-19 13:41:19', 'GET', 'March 19, 2024, 9:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1211, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:42:22', '2024-03-19 13:42:22', 'GET', 'March 19, 2024, 9:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1212, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:42:39', '2024-03-19 13:42:39', 'GET', 'March 19, 2024, 9:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1213, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:42:39', '2024-03-19 13:42:39', 'GET', 'March 19, 2024, 9:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1214, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:48:54', '2024-03-19 13:48:54', 'GET', 'March 19, 2024, 9:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1215, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:48:54', '2024-03-19 13:48:54', 'GET', 'March 19, 2024, 9:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1216, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:01', '2024-03-19 13:49:01', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1217, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:02', '2024-03-19 13:49:02', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1218, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:06', '2024-03-19 13:49:06', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1219, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:07', '2024-03-19 13:49:07', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1220, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:08', '2024-03-19 13:49:08', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1221, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:08', '2024-03-19 13:49:08', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1222, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:09', '2024-03-19 13:49:09', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1223, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:10', '2024-03-19 13:49:10', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1224, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:10', '2024-03-19 13:49:10', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1225, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:11', '2024-03-19 13:49:11', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1226, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:11', '2024-03-19 13:49:11', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1227, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-19 13:49:12', '2024-03-19 13:49:12', 'GET', 'March 19, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1228, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:50:30', '2024-03-19 13:50:30', 'GET', 'March 19, 2024, 9:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1229, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1230, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1231, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1232, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1233, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1234, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:54:07', '2024-03-19 13:54:07', 'GET', 'March 19, 2024, 9:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1235, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:55:02', '2024-03-19 13:55:02', 'GET', 'March 19, 2024, 9:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1236, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:56:53', '2024-03-19 13:56:53', 'GET', 'March 19, 2024, 9:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1237, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:57:18', '2024-03-19 13:57:18', 'GET', 'March 19, 2024, 9:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1238, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 13:57:18', '2024-03-19 13:57:18', 'GET', 'March 19, 2024, 9:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1239, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:58:27', '2024-03-19 13:58:27', 'GET', 'March 19, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1240, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:58:29', '2024-03-19 13:58:29', 'GET', 'March 19, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1241, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:58:49', '2024-03-19 13:58:49', 'GET', 'March 19, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1242, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:58:49', '2024-03-19 13:58:49', 'GET', 'March 19, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1243, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 13:59:22', '2024-03-19 13:59:22', 'GET', 'March 19, 2024, 9:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1244, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:59:33', '2024-03-19 13:59:33', 'GET', 'March 19, 2024, 9:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1245, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 13:59:33', '2024-03-19 13:59:33', 'GET', 'March 19, 2024, 9:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1246, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:01:20', '2024-03-19 14:01:20', 'GET', 'March 19, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1247, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:01:34', '2024-03-19 14:01:34', 'GET', 'March 19, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1248, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:01:34', '2024-03-19 14:01:34', 'GET', 'March 19, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1249, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:01:46', '2024-03-19 14:01:46', 'GET', 'March 19, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1250, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:01:46', '2024-03-19 14:01:46', 'GET', 'March 19, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1251, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:07:34', '2024-03-19 14:07:34', 'GET', 'March 19, 2024, 10:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1252, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:08:32', '2024-03-19 14:08:32', 'GET', 'March 19, 2024, 10:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1253, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:08:32', '2024-03-19 14:08:32', 'GET', 'March 19, 2024, 10:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1254, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:11:19', '2024-03-19 14:11:19', 'GET', 'March 19, 2024, 10:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1255, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 14:11:52', '2024-03-19 14:11:52', 'GET', 'March 19, 2024, 10:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1256, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 14:12:22', '2024-03-19 14:12:22', 'GET', 'March 19, 2024, 10:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1257, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 14:12:36', '2024-03-19 14:12:36', 'GET', 'March 19, 2024, 10:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1258, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 14:12:41', '2024-03-19 14:12:41', 'GET', 'March 19, 2024, 10:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1259, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-19 14:13:09', '2024-03-19 14:13:09', 'GET', 'March 19, 2024, 10:13 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1260, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:14:02', '2024-03-19 14:14:02', 'GET', 'March 19, 2024, 10:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1261, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '137.59.231.225', '2024-03-19 14:21:14', '2024-03-19 14:21:14', 'POST', 'March 19, 2024, 10:21 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1262, NULL, NULL, NULL, NULL, '2024-03-19 14:21:14', '2024-03-19 14:21:14', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1263, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 14:21:16', '2024-03-19 14:21:16', 'POST', 'March 19, 2024, 10:21 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1264, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:21:28', '2024-03-19 14:21:28', 'GET', 'March 19, 2024, 10:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1265, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:25:18', '2024-03-19 14:25:18', 'GET', 'March 19, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1266, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 14:25:28', '2024-03-19 14:25:28', 'GET', 'March 19, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1267, 'https://ohmc.swantech.ae/api/staff-details/1004', '[]', NULL, '137.59.231.225', '2024-03-19 14:25:28', '2024-03-19 14:25:28', 'GET', 'March 19, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1268, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:25:46', '2024-03-19 14:25:46', 'GET', 'March 19, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1269, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 14:25:46', '2024-03-19 14:25:46', 'GET', 'March 19, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1270, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:26:00', '2024-03-19 14:26:00', 'GET', 'March 19, 2024, 10:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1271, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:26:00', '2024-03-19 14:26:00', 'GET', 'March 19, 2024, 10:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1272, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:28:34', '2024-03-19 14:28:34', 'GET', 'March 19, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1273, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:28:34', '2024-03-19 14:28:34', 'GET', 'March 19, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1274, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:32:50', '2024-03-19 14:32:50', 'GET', 'March 19, 2024, 10:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1275, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:34:02', '2024-03-19 14:34:02', 'GET', 'March 19, 2024, 10:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1276, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:34:06', '2024-03-19 14:34:06', 'GET', 'March 19, 2024, 10:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1277, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:35:18', '2024-03-19 14:35:18', 'GET', 'March 19, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1278, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:43:51', '2024-03-19 14:43:51', 'GET', 'March 19, 2024, 10:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1279, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:44:40', '2024-03-19 14:44:40', 'GET', 'March 19, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1280, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:45:20', '2024-03-19 14:45:20', 'GET', 'March 19, 2024, 10:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1281, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '137.59.231.225', '2024-03-19 14:49:19', '2024-03-19 14:49:19', 'GET', 'March 19, 2024, 10:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1282, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:50:00', '2024-03-19 14:50:00', 'GET', 'March 19, 2024, 10:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1283, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:55:51', '2024-03-19 14:55:51', 'GET', 'March 19, 2024, 10:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1284, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:56:50', '2024-03-19 14:56:50', 'GET', 'March 19, 2024, 10:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1285, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '137.59.231.225', '2024-03-19 14:58:14', '2024-03-19 14:58:14', 'POST', 'March 19, 2024, 10:58 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1286, NULL, NULL, NULL, NULL, '2024-03-19 14:58:14', '2024-03-19 14:58:14', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1287, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 14:58:18', '2024-03-19 14:58:18', 'POST', 'March 19, 2024, 10:58 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1288, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 14:58:37', '2024-03-19 14:58:37', 'GET', 'March 19, 2024, 10:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1289, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '137.59.231.225', '2024-03-19 15:03:42', '2024-03-19 15:03:42', 'POST', 'March 19, 2024, 11:03 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1290, NULL, NULL, NULL, NULL, '2024-03-19 15:03:42', '2024-03-19 15:03:42', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1291, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '137.59.231.225', '2024-03-19 15:03:44', '2024-03-19 15:03:44', 'POST', 'March 19, 2024, 11:03 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1292, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 15:04:05', '2024-03-19 15:04:05', 'GET', 'March 19, 2024, 11:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1293, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 15:04:29', '2024-03-19 15:04:29', 'GET', 'March 19, 2024, 11:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1294, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-19 15:07:24', '2024-03-19 15:07:24', 'GET', 'March 19, 2024, 11:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1295, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 15:08:57', '2024-03-19 15:08:57', 'GET', 'March 19, 2024, 11:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1296, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 15:08:57', '2024-03-19 15:08:57', 'GET', 'March 19, 2024, 11:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1297, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 15:10:25', '2024-03-19 15:10:25', 'GET', 'March 19, 2024, 11:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1298, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '137.59.231.225', '2024-03-19 15:10:25', '2024-03-19 15:10:25', 'GET', 'March 19, 2024, 11:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1299, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-21 11:10:02', '2024-03-21 11:10:02', 'POST', 'March 21, 2024, 7:10 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1300, NULL, NULL, NULL, NULL, '2024-03-21 11:10:02', '2024-03-21 11:10:02', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1301, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.14.220', '2024-03-21 11:11:54', '2024-03-21 11:11:54', 'POST', 'March 21, 2024, 7:11 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1302, NULL, NULL, NULL, NULL, '2024-03-21 11:11:55', '2024-03-21 11:11:55', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1303, 'https://ohmc.swantech.ae/api/online-license?imei=689e913fe04f2c90', '{\"imei\":\"689e913fe04f2c90\"}', NULL, '2.51.14.220', '2024-03-21 11:14:03', '2024-03-21 11:14:03', 'POST', 'March 21, 2024, 7:14 am', NULL, '{\"imei\":\"689e913fe04f2c90\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1304, NULL, NULL, NULL, NULL, '2024-03-21 11:14:03', '2024-03-21 11:14:03', NULL, NULL, NULL, '{\"imei\":\"689e913fe04f2c90\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1305, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '2.51.14.220', '2024-03-21 11:15:16', '2024-03-21 11:15:16', 'POST', 'March 21, 2024, 7:15 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1306, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:15:26', '2024-03-21 11:15:26', 'GET', 'March 21, 2024, 7:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1307, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.14.220', '2024-03-21 11:15:39', '2024-03-21 11:15:39', 'POST', 'March 21, 2024, 7:15 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1308, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:15:50', '2024-03-21 11:15:50', 'GET', 'March 21, 2024, 7:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1309, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:17:15', '2024-03-21 11:17:15', 'GET', 'March 21, 2024, 7:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1310, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:17:53', '2024-03-21 11:17:53', 'GET', 'March 21, 2024, 7:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1311, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:18:44', '2024-03-21 11:18:44', 'GET', 'March 21, 2024, 7:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1312, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=689e913fe04f2c90&license_key=8d3edbf255138848fc6abe0274d34e33684f68a7', '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, '2.51.14.220', '2024-03-21 11:23:12', '2024-03-21 11:23:12', 'POST', 'March 21, 2024, 7:23 am', NULL, '{\"imei\":\"689e913fe04f2c90\",\"license_key\":\"8d3edbf255138848fc6abe0274d34e33684f68a7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1313, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:17', '2024-03-21 11:23:17', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1314, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:17', '2024-03-21 11:23:17', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1315, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:17', '2024-03-21 11:23:17', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1316, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:17', '2024-03-21 11:23:17', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1317, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:17', '2024-03-21 11:23:17', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1318, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-21 11:23:39', '2024-03-21 11:23:39', 'GET', 'March 21, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1319, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:24:09', '2024-03-21 11:24:09', 'GET', 'March 21, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1320, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:24:09', '2024-03-21 11:24:09', 'GET', 'March 21, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1321, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:25:23', '2024-03-21 11:25:23', 'GET', 'March 21, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1322, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:25:23', '2024-03-21 11:25:23', 'GET', 'March 21, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1323, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:26:03', '2024-03-21 11:26:03', 'GET', 'March 21, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1324, 'https://ohmc.swantech.ae/api/single-device/16', '[]', NULL, '2.51.14.220', '2024-03-21 11:26:03', '2024-03-21 11:26:03', 'GET', 'March 21, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1325, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:26:28', '2024-03-21 11:26:28', 'GET', 'March 21, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1326, 'https://ohmc.swantech.ae/api/single-device/20', '[]', NULL, '2.51.14.220', '2024-03-21 11:26:55', '2024-03-21 11:26:55', 'GET', 'March 21, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1327, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:27:07', '2024-03-21 11:27:07', 'GET', 'March 21, 2024, 7:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1328, 'https://ohmc.swantech.ae/api/playlist/19', '[]', NULL, '2.51.14.220', '2024-03-21 11:29:41', '2024-03-21 11:29:41', 'GET', 'March 21, 2024, 7:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1329, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:30:53', '2024-03-21 11:30:53', 'GET', 'March 21, 2024, 7:30 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1330, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:30:53', '2024-03-21 11:30:53', 'GET', 'March 21, 2024, 7:30 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1331, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:34:25', '2024-03-21 11:34:25', 'GET', 'March 21, 2024, 7:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1332, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:34:32', '2024-03-21 11:34:32', 'GET', 'March 21, 2024, 7:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1333, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:35:12', '2024-03-21 11:35:12', 'GET', 'March 21, 2024, 7:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1334, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:38:00', '2024-03-21 11:38:00', 'GET', 'March 21, 2024, 7:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1335, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:38:00', '2024-03-21 11:38:00', 'GET', 'March 21, 2024, 7:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1336, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:38:21', '2024-03-21 11:38:21', 'GET', 'March 21, 2024, 7:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1337, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:39:38', '2024-03-21 11:39:38', 'GET', 'March 21, 2024, 7:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1338, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:39:38', '2024-03-21 11:39:38', 'GET', 'March 21, 2024, 7:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1339, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:41:22', '2024-03-21 11:41:22', 'GET', 'March 21, 2024, 7:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1340, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:43:56', '2024-03-21 11:43:56', 'GET', 'March 21, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1341, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:43:56', '2024-03-21 11:43:56', 'GET', 'March 21, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1342, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:44:39', '2024-03-21 11:44:39', 'GET', 'March 21, 2024, 7:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1343, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:44:39', '2024-03-21 11:44:39', 'GET', 'March 21, 2024, 7:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1344, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:46:46', '2024-03-21 11:46:46', 'GET', 'March 21, 2024, 7:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1345, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:47:57', '2024-03-21 11:47:57', 'GET', 'March 21, 2024, 7:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1346, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:47:57', '2024-03-21 11:47:57', 'GET', 'March 21, 2024, 7:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1347, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:52:20', '2024-03-21 11:52:20', 'GET', 'March 21, 2024, 7:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1348, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:53:11', '2024-03-21 11:53:11', 'GET', 'March 21, 2024, 7:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1349, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:53:12', '2024-03-21 11:53:12', 'GET', 'March 21, 2024, 7:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1350, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:54:17', '2024-03-21 11:54:17', 'GET', 'March 21, 2024, 7:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1351, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:54:31', '2024-03-21 11:54:31', 'GET', 'March 21, 2024, 7:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1352, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 11:55:08', '2024-03-21 11:55:08', 'GET', 'March 21, 2024, 7:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1353, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 11:56:01', '2024-03-21 11:56:01', 'GET', 'March 21, 2024, 7:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1354, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 11:56:05', '2024-03-21 11:56:05', 'GET', 'March 21, 2024, 7:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1355, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.213.164', '2024-03-21 11:59:16', '2024-03-21 11:59:16', 'POST', 'March 21, 2024, 7:59 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1356, NULL, NULL, NULL, NULL, '2024-03-21 11:59:16', '2024-03-21 11:59:16', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1357, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.213.164', '2024-03-21 11:59:28', '2024-03-21 11:59:28', 'POST', 'March 21, 2024, 7:59 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1358, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.213.164', '2024-03-21 12:03:55', '2024-03-21 12:03:55', 'POST', 'March 21, 2024, 8:03 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1359, NULL, NULL, NULL, NULL, '2024-03-21 12:03:55', '2024-03-21 12:03:55', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1360, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.213.164', '2024-03-21 12:04:16', '2024-03-21 12:04:16', 'POST', 'March 21, 2024, 8:04 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1361, NULL, NULL, NULL, NULL, '2024-03-21 12:04:16', '2024-03-21 12:04:16', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1362, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '223.123.1.184', '2024-03-21 12:04:30', '2024-03-21 12:04:30', 'POST', 'March 21, 2024, 8:04 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1363, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '223.123.1.184', '2024-03-21 12:05:08', '2024-03-21 12:05:08', 'GET', 'March 21, 2024, 8:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1364, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '223.123.1.184', '2024-03-21 12:05:30', '2024-03-21 12:05:30', 'GET', 'March 21, 2024, 8:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1365, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '223.123.1.184', '2024-03-21 12:06:08', '2024-03-21 12:06:08', 'GET', 'March 21, 2024, 8:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1366, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '223.123.1.184', '2024-03-21 12:06:08', '2024-03-21 12:06:08', 'GET', 'March 21, 2024, 8:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1367, 'https://ohmc.swantech.ae/api/single-device/17', '[]', NULL, '223.123.1.184', '2024-03-21 12:06:08', '2024-03-21 12:06:08', 'GET', 'March 21, 2024, 8:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1368, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '2.51.14.220', '2024-03-21 12:12:43', '2024-03-21 12:12:43', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1369, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '223.123.1.184', '2024-03-21 12:12:44', '2024-03-21 12:12:44', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1370, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '223.123.1.184', '2024-03-21 12:12:44', '2024-03-21 12:12:44', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1371, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '223.123.1.184', '2024-03-21 12:12:44', '2024-03-21 12:12:44', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1372, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '223.123.1.184', '2024-03-21 12:12:44', '2024-03-21 12:12:44', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1373, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '223.123.1.184', '2024-03-21 12:12:44', '2024-03-21 12:12:44', 'GET', 'March 21, 2024, 8:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1374, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '137.59.231.225', '2024-03-21 12:27:30', '2024-03-21 12:27:30', 'GET', 'March 21, 2024, 8:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1375, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 12:44:24', '2024-03-21 12:44:24', 'GET', 'March 21, 2024, 8:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1376, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 12:44:24', '2024-03-21 12:44:24', 'GET', 'March 21, 2024, 8:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1377, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.213.164', '2024-03-21 12:53:24', '2024-03-21 12:53:24', 'GET', 'March 21, 2024, 8:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1378, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 12:59:18', '2024-03-21 12:59:18', 'GET', 'March 21, 2024, 8:59 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1379, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 13:00:21', '2024-03-21 13:00:21', 'GET', 'March 21, 2024, 9:00 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1380, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 13:00:24', '2024-03-21 13:00:24', 'GET', 'March 21, 2024, 9:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1381, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.213.164', '2024-03-21 13:00:29', '2024-03-21 13:00:29', 'GET', 'March 21, 2024, 9:00 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1382, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 13:00:56', '2024-03-21 13:00:56', 'GET', 'March 21, 2024, 9:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1383, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 13:01:19', '2024-03-21 13:01:19', 'GET', 'March 21, 2024, 9:01 am', NULL, '[]', NULL, 'WhatsApp/2.23.20.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1384, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 13:01:36', '2024-03-21 13:01:36', 'GET', 'March 21, 2024, 9:01 am', NULL, '[]', NULL, 'WhatsApp/2.23.20.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1385, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 13:02:27', '2024-03-21 13:02:27', 'GET', 'March 21, 2024, 9:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1386, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.19.19', '2024-03-21 13:02:28', '2024-03-21 13:02:28', 'GET', 'March 21, 2024, 9:02 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1387, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.213.164', '2024-03-21 13:38:15', '2024-03-21 13:38:15', 'GET', 'March 21, 2024, 9:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1388, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 13:39:00', '2024-03-21 13:39:00', 'GET', 'March 21, 2024, 9:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1389, 'https://ohmc.swantech.ae/api/staff-details/1001', '[]', NULL, '2.51.14.220', '2024-03-21 13:39:48', '2024-03-21 13:39:48', 'GET', 'March 21, 2024, 9:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1390, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f842222', '{\"imei\":\"acfce0d724d99f842222\"}', NULL, '103.131.213.164', '2024-03-21 13:43:08', '2024-03-21 13:43:08', 'POST', 'March 21, 2024, 9:43 am', NULL, '{\"imei\":\"acfce0d724d99f842222\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1391, NULL, NULL, NULL, NULL, '2024-03-21 13:43:08', '2024-03-21 13:43:08', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f842222\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1392, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f842222&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f842222\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.213.164', '2024-03-21 13:43:11', '2024-03-21 13:43:11', 'POST', 'March 21, 2024, 9:43 am', NULL, '{\"imei\":\"acfce0d724d99f842222\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1393, 'https://ohmc.swantech.ae/api/check-device-status/Akeem%20Raymond', '[]', NULL, '103.131.213.164', '2024-03-21 13:43:45', '2024-03-21 13:43:45', 'GET', 'March 21, 2024, 9:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1394, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f842222', '{\"imei\":\"acfce0d724d99f842222\"}', NULL, '103.131.213.164', '2024-03-21 13:45:30', '2024-03-21 13:45:30', 'POST', 'March 21, 2024, 9:45 am', NULL, '{\"imei\":\"acfce0d724d99f842222\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1395, NULL, NULL, NULL, NULL, '2024-03-21 13:45:30', '2024-03-21 13:45:30', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f842222\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1396, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f842222&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f842222\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '103.131.213.164', '2024-03-21 13:45:33', '2024-03-21 13:45:33', 'POST', 'March 21, 2024, 9:45 am', NULL, '{\"imei\":\"acfce0d724d99f842222\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1397, 'https://ohmc.swantech.ae/api/staff-details/1002', '[]', NULL, '2.51.14.220', '2024-03-21 13:45:40', '2024-03-21 13:45:40', 'GET', 'March 21, 2024, 9:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1398, 'https://ohmc.swantech.ae/api/check-device-status/Akeem%20Raymond', '[]', NULL, '103.131.213.164', '2024-03-21 13:46:02', '2024-03-21 13:46:02', 'GET', 'March 21, 2024, 9:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1399, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 13:46:17', '2024-03-21 13:46:17', 'GET', 'March 21, 2024, 9:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1400, 'https://ohmc.swantech.ae/api/check-device-status/Akeem%20Raymond', '[]', NULL, '103.131.213.164', '2024-03-21 13:46:53', '2024-03-21 13:46:53', 'GET', 'March 21, 2024, 9:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1401, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 13:47:26', '2024-03-21 13:47:26', 'POST', 'March 21, 2024, 9:47 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1402, NULL, NULL, NULL, NULL, '2024-03-21 13:47:26', '2024-03-21 13:47:26', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1403, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 13:47:31', '2024-03-21 13:47:31', 'POST', 'March 21, 2024, 9:47 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1404, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 13:47:44', '2024-03-21 13:47:44', 'GET', 'March 21, 2024, 9:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1405, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 13:48:07', '2024-03-21 13:48:07', 'GET', 'March 21, 2024, 9:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1406, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 13:48:07', '2024-03-21 13:48:07', 'GET', 'March 21, 2024, 9:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1407, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 13:49:02', '2024-03-21 13:49:02', 'GET', 'March 21, 2024, 9:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1408, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 13:51:28', '2024-03-21 13:51:28', 'GET', 'March 21, 2024, 9:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1409, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 13:53:07', '2024-03-21 13:53:07', 'GET', 'March 21, 2024, 9:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1410, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 13:53:07', '2024-03-21 13:53:07', 'GET', 'March 21, 2024, 9:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1411, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 13:56:10', '2024-03-21 13:56:10', 'GET', 'March 21, 2024, 9:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1412, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 13:56:54', '2024-03-21 13:56:54', 'GET', 'March 21, 2024, 9:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1413, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 13:56:55', '2024-03-21 13:56:55', 'GET', 'March 21, 2024, 9:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1414, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 13:57:08', '2024-03-21 13:57:08', 'GET', 'March 21, 2024, 9:57 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1415, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 13:58:30', '2024-03-21 13:58:30', 'GET', 'March 21, 2024, 9:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1416, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '2.51.14.220', '2024-03-21 14:08:37', '2024-03-21 14:08:37', 'GET', 'March 21, 2024, 10:08 am', NULL, '[]', NULL, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Mobile Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1417, 'https://ohmc.swantech.ae/api/staff-details/100111', '[]', NULL, '175.107.228.164', '2024-03-21 14:11:23', '2024-03-21 14:11:23', 'GET', 'March 21, 2024, 10:11 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1418, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:12:23', '2024-03-21 14:12:23', 'GET', 'March 21, 2024, 10:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1419, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:15:17', '2024-03-21 14:15:17', 'GET', 'March 21, 2024, 10:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1420, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:17:33', '2024-03-21 14:17:33', 'GET', 'March 21, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1421, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:17:34', '2024-03-21 14:17:34', 'GET', 'March 21, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1422, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:17:39', '2024-03-21 14:17:39', 'GET', 'March 21, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1423, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:17:40', '2024-03-21 14:17:40', 'GET', 'March 21, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1424, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:18:16', '2024-03-21 14:18:16', 'GET', 'March 21, 2024, 10:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1425, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:18:16', '2024-03-21 14:18:16', 'GET', 'March 21, 2024, 10:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1426, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:18:16', '2024-03-21 14:18:16', 'GET', 'March 21, 2024, 10:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1427, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:18:18', '2024-03-21 14:18:18', 'GET', 'March 21, 2024, 10:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1428, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:19:25', '2024-03-21 14:19:25', 'GET', 'March 21, 2024, 10:19 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1429, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:19:25', '2024-03-21 14:19:25', 'GET', 'March 21, 2024, 10:19 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1430, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:22:50', '2024-03-21 14:22:50', 'GET', 'March 21, 2024, 10:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1431, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 14:27:52', '2024-03-21 14:27:52', 'POST', 'March 21, 2024, 10:27 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1432, NULL, NULL, NULL, NULL, '2024-03-21 14:27:52', '2024-03-21 14:27:52', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1433, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 14:27:55', '2024-03-21 14:27:55', 'POST', 'March 21, 2024, 10:27 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1434, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:28:14', '2024-03-21 14:28:14', 'GET', 'March 21, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1435, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:28:57', '2024-03-21 14:28:57', 'GET', 'March 21, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1436, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:28:57', '2024-03-21 14:28:57', 'GET', 'March 21, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1437, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:31:45', '2024-03-21 14:31:45', 'GET', 'March 21, 2024, 10:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1438, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:35:07', '2024-03-21 14:35:07', 'GET', 'March 21, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1439, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:35:08', '2024-03-21 14:35:08', 'GET', 'March 21, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1440, 'https://ohmc.swantech.ae/api/staff-details/1005', '[]', NULL, '103.131.213.164', '2024-03-21 14:35:08', '2024-03-21 14:35:08', 'GET', 'March 21, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1441, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-21 14:36:22', '2024-03-21 14:36:22', 'GET', 'March 21, 2024, 10:36 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1442, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-21 14:43:45', '2024-03-21 14:43:45', 'GET', 'March 21, 2024, 10:43 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1443, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-21 14:44:47', '2024-03-21 14:44:47', 'GET', 'March 21, 2024, 10:44 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1444, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:48:17', '2024-03-21 14:48:17', 'GET', 'March 21, 2024, 10:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1445, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:52:13', '2024-03-21 14:52:13', 'GET', 'March 21, 2024, 10:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1446, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 14:54:30', '2024-03-21 14:54:30', 'POST', 'March 21, 2024, 10:54 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1447, NULL, NULL, NULL, NULL, '2024-03-21 14:54:30', '2024-03-21 14:54:30', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1448, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 14:54:31', '2024-03-21 14:54:31', 'POST', 'March 21, 2024, 10:54 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1449, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 14:54:45', '2024-03-21 14:54:45', 'GET', 'March 21, 2024, 10:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1450, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:58:51', '2024-03-21 14:58:51', 'GET', 'March 21, 2024, 10:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1451, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '103.131.213.164', '2024-03-21 14:58:51', '2024-03-21 14:58:51', 'GET', 'March 21, 2024, 10:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1452, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '175.107.228.164', '2024-03-21 14:59:48', '2024-03-21 14:59:48', 'GET', 'March 21, 2024, 10:59 am', NULL, '[]', NULL, 'WhatsApp/2.23.20.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1453, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:04:14', '2024-03-21 15:04:14', 'GET', 'March 21, 2024, 11:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1454, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:05:28', '2024-03-21 15:05:28', 'GET', 'March 21, 2024, 11:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1455, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 15:07:37', '2024-03-21 15:07:37', 'POST', 'March 21, 2024, 11:07 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1456, NULL, NULL, NULL, NULL, '2024-03-21 15:07:37', '2024-03-21 15:07:37', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1457, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 15:07:39', '2024-03-21 15:07:39', 'POST', 'March 21, 2024, 11:07 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1458, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:07:55', '2024-03-21 15:07:55', 'GET', 'March 21, 2024, 11:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1459, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:10:33', '2024-03-21 15:10:33', 'GET', 'March 21, 2024, 11:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1460, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:10:34', '2024-03-21 15:10:34', 'GET', 'March 21, 2024, 11:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1461, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:08', '2024-03-21 15:14:08', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1462, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:08', '2024-03-21 15:14:08', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1463, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:08', '2024-03-21 15:14:08', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1464, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:09', '2024-03-21 15:14:09', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1465, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:30', '2024-03-21 15:14:30', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1466, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:30', '2024-03-21 15:14:30', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1467, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:30', '2024-03-21 15:14:30', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1468, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:30', '2024-03-21 15:14:30', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1469, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:14:31', '2024-03-21 15:14:31', 'GET', 'March 21, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1470, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:16:02', '2024-03-21 15:16:02', 'GET', 'March 21, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1471, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:16:45', '2024-03-21 15:16:45', 'GET', 'March 21, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1472, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:16:45', '2024-03-21 15:16:45', 'GET', 'March 21, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1473, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:16:45', '2024-03-21 15:16:45', 'GET', 'March 21, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1474, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:16:46', '2024-03-21 15:16:46', 'GET', 'March 21, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1475, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-21 15:25:16', '2024-03-21 15:25:16', 'POST', 'March 21, 2024, 11:25 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1476, NULL, NULL, NULL, NULL, '2024-03-21 15:25:16', '2024-03-21 15:25:16', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1477, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '2.51.14.220', '2024-03-21 15:25:17', '2024-03-21 15:25:17', 'POST', 'March 21, 2024, 11:25 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1478, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:25:30', '2024-03-21 15:25:30', 'GET', 'March 21, 2024, 11:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1479, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.14.220', '2024-03-21 15:25:40', '2024-03-21 15:25:40', 'POST', 'March 21, 2024, 11:25 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1480, NULL, NULL, NULL, NULL, '2024-03-21 15:25:40', '2024-03-21 15:25:40', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1481, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.14.220', '2024-03-21 15:25:42', '2024-03-21 15:25:42', 'POST', 'March 21, 2024, 11:25 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1482, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:25:56', '2024-03-21 15:25:56', 'GET', 'March 21, 2024, 11:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1483, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:26:23', '2024-03-21 15:26:23', 'GET', 'March 21, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1484, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:26:44', '2024-03-21 15:26:44', 'GET', 'March 21, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1485, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:26:54', '2024-03-21 15:26:54', 'GET', 'March 21, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1486, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:26:54', '2024-03-21 15:26:54', 'GET', 'March 21, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1487, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:28:15', '2024-03-21 15:28:15', 'GET', 'March 21, 2024, 11:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1488, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:28:15', '2024-03-21 15:28:15', 'GET', 'March 21, 2024, 11:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1489, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:29:13', '2024-03-21 15:29:13', 'GET', 'March 21, 2024, 11:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1490, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:29:22', '2024-03-21 15:29:22', 'GET', 'March 21, 2024, 11:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1491, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:29:22', '2024-03-21 15:29:22', 'GET', 'March 21, 2024, 11:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1492, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:29:57', '2024-03-21 15:29:57', 'GET', 'March 21, 2024, 11:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1493, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:30:10', '2024-03-21 15:30:10', 'GET', 'March 21, 2024, 11:30 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1494, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:32:05', '2024-03-21 15:32:05', 'GET', 'March 21, 2024, 11:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1495, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:32:05', '2024-03-21 15:32:05', 'GET', 'March 21, 2024, 11:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1496, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:33:57', '2024-03-21 15:33:57', 'GET', 'March 21, 2024, 11:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1497, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:33:59', '2024-03-21 15:33:59', 'GET', 'March 21, 2024, 11:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1498, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:34:25', '2024-03-21 15:34:25', 'GET', 'March 21, 2024, 11:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1499, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 15:34:25', '2024-03-21 15:34:25', 'GET', 'March 21, 2024, 11:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1500, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '103.131.213.164', '2024-03-21 15:34:57', '2024-03-21 15:34:57', 'POST', 'March 21, 2024, 11:34 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1501, NULL, NULL, NULL, NULL, '2024-03-21 15:34:57', '2024-03-21 15:34:57', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1502, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '103.131.213.164', '2024-03-21 15:35:13', '2024-03-21 15:35:13', 'POST', 'March 21, 2024, 11:35 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1503, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '103.131.213.164', '2024-03-21 15:35:44', '2024-03-21 15:35:44', 'GET', 'March 21, 2024, 11:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1504, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '103.131.213.164', '2024-03-21 15:37:10', '2024-03-21 15:37:10', 'GET', 'March 21, 2024, 11:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1505, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '103.131.213.164', '2024-03-21 15:37:10', '2024-03-21 15:37:10', 'GET', 'March 21, 2024, 11:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1506, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-21 15:40:37', '2024-03-21 15:40:37', 'POST', 'March 21, 2024, 11:40 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1507, NULL, NULL, NULL, NULL, '2024-03-21 15:40:37', '2024-03-21 15:40:37', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1508, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '2.51.14.220', '2024-03-21 15:40:40', '2024-03-21 15:40:40', 'POST', 'March 21, 2024, 11:40 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1509, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:11', '2024-03-21 15:41:11', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1510, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:36', '2024-03-21 15:41:36', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1511, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:36', '2024-03-21 15:41:36', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1512, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:48', '2024-03-21 15:41:48', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1513, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:48', '2024-03-21 15:41:48', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1514, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:41:48', '2024-03-21 15:41:48', 'GET', 'March 21, 2024, 11:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1515, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:43:31', '2024-03-21 15:43:31', 'GET', 'March 21, 2024, 11:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1516, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:44:29', '2024-03-21 15:44:29', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1517, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:44:29', '2024-03-21 15:44:29', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1518, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:44:29', '2024-03-21 15:44:29', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1519, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:44:29', '2024-03-21 15:44:29', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1520, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:44:29', '2024-03-21 15:44:29', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1521, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 15:44:37', '2024-03-21 15:44:37', 'POST', 'March 21, 2024, 11:44 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1522, NULL, NULL, NULL, NULL, '2024-03-21 15:44:37', '2024-03-21 15:44:37', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1523, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 15:44:44', '2024-03-21 15:44:44', 'POST', 'March 21, 2024, 11:44 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1524, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:44:56', '2024-03-21 15:44:56', 'GET', 'March 21, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1525, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:45:14', '2024-03-21 15:45:14', 'GET', 'March 21, 2024, 11:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1526, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 15:47:38', '2024-03-21 15:47:38', 'GET', 'March 21, 2024, 11:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1527, 'https://ohmc.swantech.ae/api/online-license?imei=1234567890', '{\"imei\":\"1234567890\"}', NULL, '103.131.213.164', '2024-03-21 15:51:25', '2024-03-21 15:51:25', 'POST', 'March 21, 2024, 11:51 am', NULL, '{\"imei\":\"1234567890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1528, NULL, NULL, NULL, NULL, '2024-03-21 15:51:25', '2024-03-21 15:51:25', NULL, NULL, NULL, '{\"imei\":\"1234567890\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1529, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=1234567890&license_key=50b65e5c065171a4ea5c2a97208ab841f625bcff', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '103.131.213.164', '2024-03-21 15:51:27', '2024-03-21 15:51:27', 'POST', 'March 21, 2024, 11:51 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1530, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:52:04', '2024-03-21 15:52:04', 'GET', 'March 21, 2024, 11:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1531, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:53:23', '2024-03-21 15:53:23', 'GET', 'March 21, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1532, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:53:23', '2024-03-21 15:53:23', 'GET', 'March 21, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1533, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:55:00', '2024-03-21 15:55:00', 'GET', 'March 21, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1534, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:55:00', '2024-03-21 15:55:00', 'GET', 'March 21, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1535, 'https://ohmc.swantech.ae/api/check-device-status/5', '[]', NULL, '103.131.213.164', '2024-03-21 15:55:00', '2024-03-21 15:55:00', 'GET', 'March 21, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1536, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-21 16:01:49', '2024-03-21 16:01:49', 'POST', 'March 21, 2024, 12:01 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1537, NULL, NULL, NULL, NULL, '2024-03-21 16:01:49', '2024-03-21 16:01:49', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1538, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.14.220', '2024-03-21 16:01:55', '2024-03-21 16:01:55', 'POST', 'March 21, 2024, 12:01 pm', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1539, NULL, NULL, NULL, NULL, '2024-03-21 16:01:55', '2024-03-21 16:01:55', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1540, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.14.220', '2024-03-21 16:01:57', '2024-03-21 16:01:57', 'POST', 'March 21, 2024, 12:01 pm', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1541, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '2.51.14.220', '2024-03-21 16:01:58', '2024-03-21 16:01:58', 'POST', 'March 21, 2024, 12:01 pm', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1542, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:02:17', '2024-03-21 16:02:17', 'GET', 'March 21, 2024, 12:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1543, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:02:18', '2024-03-21 16:02:18', 'GET', 'March 21, 2024, 12:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1544, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:03:24', '2024-03-21 16:03:24', 'GET', 'March 21, 2024, 12:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1545, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:03:50', '2024-03-21 16:03:50', 'GET', 'March 21, 2024, 12:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1546, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:04:30', '2024-03-21 16:04:30', 'GET', 'March 21, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1547, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:04:30', '2024-03-21 16:04:30', 'GET', 'March 21, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1548, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:04:30', '2024-03-21 16:04:30', 'GET', 'March 21, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1549, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:05', '2024-03-21 16:05:05', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1550, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:30', '2024-03-21 16:05:30', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1551, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:30', '2024-03-21 16:05:30', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1552, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:30', '2024-03-21 16:05:30', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1553, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:30', '2024-03-21 16:05:30', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1554, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:05:30', '2024-03-21 16:05:30', 'GET', 'March 21, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1555, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1556, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1557, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1558, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1559, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1560, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:01', '2024-03-21 16:06:01', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1561, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:13', '2024-03-21 16:06:13', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1562, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:22', '2024-03-21 16:06:22', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1563, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:22', '2024-03-21 16:06:22', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1564, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:56', '2024-03-21 16:06:56', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1565, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:56', '2024-03-21 16:06:56', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1566, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:06:56', '2024-03-21 16:06:56', 'GET', 'March 21, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1567, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:07:33', '2024-03-21 16:07:33', 'GET', 'March 21, 2024, 12:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1568, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:07:33', '2024-03-21 16:07:33', 'GET', 'March 21, 2024, 12:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1569, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:07:33', '2024-03-21 16:07:33', 'GET', 'March 21, 2024, 12:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1570, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:07:33', '2024-03-21 16:07:33', 'GET', 'March 21, 2024, 12:07 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1571, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:04', '2024-03-21 16:08:04', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1572, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:04', '2024-03-21 16:08:04', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1573, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:04', '2024-03-21 16:08:04', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1574, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:32', '2024-03-21 16:08:32', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1575, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:32', '2024-03-21 16:08:32', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1576, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:32', '2024-03-21 16:08:32', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1577, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:32', '2024-03-21 16:08:32', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1578, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:08:32', '2024-03-21 16:08:32', 'GET', 'March 21, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1579, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1580, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1581, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1582, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1583, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1584, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:36', '2024-03-21 16:09:36', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1585, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:09:46', '2024-03-21 16:09:46', 'GET', 'March 21, 2024, 12:09 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1586, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-21 16:10:36', '2024-03-21 16:10:36', 'GET', 'March 21, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1587, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:10:57', '2024-03-21 16:10:57', 'GET', 'March 21, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1588, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:10:57', '2024-03-21 16:10:57', 'GET', 'March 21, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1589, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:10:57', '2024-03-21 16:10:57', 'GET', 'March 21, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1590, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:10:57', '2024-03-21 16:10:57', 'GET', 'March 21, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1591, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:11:25', '2024-03-21 16:11:25', 'GET', 'March 21, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1592, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:11:25', '2024-03-21 16:11:25', 'GET', 'March 21, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1593, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:11:25', '2024-03-21 16:11:25', 'GET', 'March 21, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1594, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:11:25', '2024-03-21 16:11:25', 'GET', 'March 21, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1595, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-21 16:11:25', '2024-03-21 16:11:25', 'GET', 'March 21, 2024, 12:11 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1596, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '103.131.213.164', '2024-03-21 16:11:39', '2024-03-21 16:11:39', 'POST', 'March 21, 2024, 12:11 pm', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1597, NULL, NULL, NULL, NULL, '2024-03-21 16:11:39', '2024-03-21 16:11:39', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1598, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '103.131.213.164', '2024-03-21 16:11:47', '2024-03-21 16:11:47', 'POST', 'March 21, 2024, 12:11 pm', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1599, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.213.164', '2024-03-21 16:12:04', '2024-03-21 16:12:04', 'GET', 'March 21, 2024, 12:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1600, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 07:25:35', '2024-03-22 07:25:35', 'GET', 'March 22, 2024, 3:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1601, 'https://ohmc.swantech.ae/api/single-device/%7B%7Bdevice_id%7D%7D', '[]', NULL, '175.107.228.164', '2024-03-22 09:56:42', '2024-03-22 09:56:42', 'GET', 'March 22, 2024, 5:56 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1602, 'https://ohmc.swantech.ae/api/single-device/1', '[]', NULL, '175.107.228.164', '2024-03-22 09:56:50', '2024-03-22 09:56:50', 'GET', 'March 22, 2024, 5:56 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1603, 'https://ohmc.swantech.ae/api/single-device/1', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:17', '2024-03-22 09:57:17', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1604, 'https://ohmc.swantech.ae/api/single-device/2', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:35', '2024-03-22 09:57:35', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1605, 'https://ohmc.swantech.ae/api/single-device/3', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:39', '2024-03-22 09:57:39', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1606, 'https://ohmc.swantech.ae/api/single-device/4', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:43', '2024-03-22 09:57:43', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1607, 'https://ohmc.swantech.ae/api/single-device/5', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:46', '2024-03-22 09:57:46', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1608, 'https://ohmc.swantech.ae/api/single-device/6', '[]', NULL, '175.107.228.164', '2024-03-22 09:57:50', '2024-03-22 09:57:50', 'GET', 'March 22, 2024, 5:57 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1609, 'https://ohmc.swantech.ae/api/single-device/12', '[]', NULL, '175.107.228.164', '2024-03-22 10:00:10', '2024-03-22 10:00:10', 'GET', 'March 22, 2024, 6:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1610, 'https://ohmc.swantech.ae/api/single-device/13', '[]', NULL, '175.107.228.164', '2024-03-22 10:00:19', '2024-03-22 10:00:19', 'GET', 'March 22, 2024, 6:00 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1611, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:01:09', '2024-03-22 10:01:09', 'GET', 'March 22, 2024, 6:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1612, 'https://ohmc.swantech.ae/api/android-device-online-license', '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, '175.107.228.164', '2024-03-22 10:07:50', '2024-03-22 10:07:50', 'POST', 'March 22, 2024, 6:07 am', NULL, '{\"imei\":\"1234567890\",\"license_key\":\"50b65e5c065171a4ea5c2a97208ab841f625bcff\"}', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1613, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:15:10', '2024-03-22 10:15:10', 'GET', 'March 22, 2024, 6:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1614, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 10:33:22', '2024-03-22 10:33:22', 'GET', 'March 22, 2024, 6:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1615, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 10:33:32', '2024-03-22 10:33:32', 'GET', 'March 22, 2024, 6:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1616, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 10:33:37', '2024-03-22 10:33:37', 'GET', 'March 22, 2024, 6:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1617, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '103.131.212.79', '2024-03-22 10:36:32', '2024-03-22 10:36:32', 'POST', 'March 22, 2024, 6:36 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1618, NULL, NULL, NULL, NULL, '2024-03-22 10:36:32', '2024-03-22 10:36:32', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1619, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '103.131.212.79', '2024-03-22 10:36:36', '2024-03-22 10:36:36', 'POST', 'March 22, 2024, 6:36 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1620, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:37:01', '2024-03-22 10:37:01', 'GET', 'March 22, 2024, 6:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1621, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:38:32', '2024-03-22 10:38:32', 'GET', 'March 22, 2024, 6:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1622, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:41:20', '2024-03-22 10:41:20', 'GET', 'March 22, 2024, 6:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1623, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:44:43', '2024-03-22 10:44:43', 'GET', 'March 22, 2024, 6:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1624, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 10:45:44', '2024-03-22 10:45:44', 'GET', 'March 22, 2024, 6:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1625, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:01:37', '2024-03-22 11:01:37', 'GET', 'March 22, 2024, 7:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1626, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:01:42', '2024-03-22 11:01:42', 'GET', 'March 22, 2024, 7:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1627, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:03:38', '2024-03-22 11:03:38', 'GET', 'March 22, 2024, 7:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1628, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:09:33', '2024-03-22 11:09:33', 'GET', 'March 22, 2024, 7:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1629, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:11:02', '2024-03-22 11:11:02', 'GET', 'March 22, 2024, 7:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1630, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:18:14', '2024-03-22 11:18:14', 'GET', 'March 22, 2024, 7:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1631, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:18:15', '2024-03-22 11:18:15', 'GET', 'March 22, 2024, 7:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1632, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:22:32', '2024-03-22 11:22:32', 'GET', 'March 22, 2024, 7:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1633, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:22:32', '2024-03-22 11:22:32', 'GET', 'March 22, 2024, 7:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1634, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:22:33', '2024-03-22 11:22:33', 'GET', 'March 22, 2024, 7:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1635, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:24:15', '2024-03-22 11:24:15', 'GET', 'March 22, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1636, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:24:24', '2024-03-22 11:24:24', 'GET', 'March 22, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1637, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:24:24', '2024-03-22 11:24:24', 'GET', 'March 22, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1638, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 11:24:24', '2024-03-22 11:24:24', 'GET', 'March 22, 2024, 7:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1639, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '103.131.212.79', '2024-03-22 11:36:13', '2024-03-22 11:36:13', 'POST', 'March 22, 2024, 7:36 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1640, NULL, NULL, NULL, NULL, '2024-03-22 11:36:13', '2024-03-22 11:36:13', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1641, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '103.131.212.79', '2024-03-22 11:36:17', '2024-03-22 11:36:17', 'POST', 'March 22, 2024, 7:36 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1642, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:37:01', '2024-03-22 11:37:01', 'GET', 'March 22, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1643, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '103.131.212.79', '2024-03-22 11:41:16', '2024-03-22 11:41:16', 'POST', 'March 22, 2024, 7:41 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1644, NULL, NULL, NULL, NULL, '2024-03-22 11:41:16', '2024-03-22 11:41:16', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1645, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '103.131.212.79', '2024-03-22 11:41:21', '2024-03-22 11:41:21', 'POST', 'March 22, 2024, 7:41 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1646, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:41:48', '2024-03-22 11:41:48', 'GET', 'March 22, 2024, 7:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1647, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:45:07', '2024-03-22 11:45:07', 'GET', 'March 22, 2024, 7:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1648, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '103.131.212.79', '2024-03-22 11:46:39', '2024-03-22 11:46:39', 'POST', 'March 22, 2024, 7:46 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1649, NULL, NULL, NULL, NULL, '2024-03-22 11:46:39', '2024-03-22 11:46:39', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1650, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '103.131.212.79', '2024-03-22 11:47:51', '2024-03-22 11:47:51', 'POST', 'March 22, 2024, 7:47 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1651, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '103.131.212.79', '2024-03-22 11:48:34', '2024-03-22 11:48:34', 'GET', 'March 22, 2024, 7:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1652, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-22 14:01:07', '2024-03-22 14:01:07', 'POST', 'March 22, 2024, 10:01 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1653, NULL, NULL, NULL, NULL, '2024-03-22 14:01:07', '2024-03-22 14:01:07', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1654, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=10039a902986988d0bd1a00e54c4b5ebf19a0e85', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, '2.51.14.220', '2024-03-22 14:01:08', '2024-03-22 14:01:08', 'POST', 'March 22, 2024, 10:01 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"10039a902986988d0bd1a00e54c4b5ebf19a0e85\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1655, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:01:24', '2024-03-22 14:01:24', 'GET', 'March 22, 2024, 10:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1656, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '2.51.14.220', '2024-03-22 14:02:14', '2024-03-22 14:02:14', 'POST', 'March 22, 2024, 10:02 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1657, NULL, NULL, NULL, NULL, '2024-03-22 14:02:14', '2024-03-22 14:02:14', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1658, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '2.51.14.220', '2024-03-22 14:02:16', '2024-03-22 14:02:16', 'POST', 'March 22, 2024, 10:02 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1659, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:02:29', '2024-03-22 14:02:29', 'GET', 'March 22, 2024, 10:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1660, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:02:49', '2024-03-22 14:02:49', 'GET', 'March 22, 2024, 10:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1661, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:03:14', '2024-03-22 14:03:14', 'GET', 'March 22, 2024, 10:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1662, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:03:24', '2024-03-22 14:03:24', 'GET', 'March 22, 2024, 10:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1663, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:03:24', '2024-03-22 14:03:24', 'GET', 'March 22, 2024, 10:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1664, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:05:21', '2024-03-22 14:05:21', 'GET', 'March 22, 2024, 10:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1665, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:06:07', '2024-03-22 14:06:07', 'GET', 'March 22, 2024, 10:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1666, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:07:55', '2024-03-22 14:07:55', 'GET', 'March 22, 2024, 10:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1667, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:08:06', '2024-03-22 14:08:06', 'GET', 'March 22, 2024, 10:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1668, 'https://ohmc.swantech.ae/api/online-license?imei=c60e484540fc3edb', '{\"imei\":\"c60e484540fc3edb\"}', NULL, '137.59.231.225', '2024-03-22 14:09:04', '2024-03-22 14:09:04', 'POST', 'March 22, 2024, 10:09 am', NULL, '{\"imei\":\"c60e484540fc3edb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1669, NULL, NULL, NULL, NULL, '2024-03-22 14:09:04', '2024-03-22 14:09:04', NULL, NULL, NULL, '{\"imei\":\"c60e484540fc3edb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1670, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:09:08', '2024-03-22 14:09:08', 'GET', 'March 22, 2024, 10:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1671, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=c60e484540fc3edb&license_key=aef618c62910907377fb5f4b0652ba32441246f8', '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, '137.59.231.225', '2024-03-22 14:09:11', '2024-03-22 14:09:11', 'POST', 'March 22, 2024, 10:09 am', NULL, '{\"imei\":\"c60e484540fc3edb\",\"license_key\":\"aef618c62910907377fb5f4b0652ba32441246f8\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1672, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:09:31', '2024-03-22 14:09:31', 'GET', 'March 22, 2024, 10:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1673, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:09:53', '2024-03-22 14:09:53', 'GET', 'March 22, 2024, 10:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1674, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:09:54', '2024-03-22 14:09:54', 'GET', 'March 22, 2024, 10:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1675, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:10:11', '2024-03-22 14:10:11', 'GET', 'March 22, 2024, 10:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1676, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '2.51.14.220', '2024-03-22 14:10:19', '2024-03-22 14:10:19', 'GET', 'March 22, 2024, 10:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1677, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '137.59.231.225', '2024-03-22 14:10:43', '2024-03-22 14:10:43', 'GET', 'March 22, 2024, 10:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1678, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '137.59.231.225', '2024-03-22 14:14:10', '2024-03-22 14:14:10', 'GET', 'March 22, 2024, 10:14 am', NULL, '[]', NULL, 'WhatsApp/2.23.20.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1679, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '137.59.231.225', '2024-03-22 14:14:20', '2024-03-22 14:14:20', 'GET', 'March 22, 2024, 10:14 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1680, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 14:14:39', '2024-03-22 14:14:39', 'POST', 'March 22, 2024, 10:14 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1681, NULL, NULL, NULL, NULL, '2024-03-22 14:14:39', '2024-03-22 14:14:39', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1682, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '175.107.228.164', '2024-03-22 14:15:27', '2024-03-22 14:15:27', 'GET', 'March 22, 2024, 10:15 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.0', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1683, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=b30af1a66b577d20738bbd27d5b6b2811f2245dc', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, '2.51.14.220', '2024-03-22 14:15:58', '2024-03-22 14:15:58', 'POST', 'March 22, 2024, 10:15 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"b30af1a66b577d20738bbd27d5b6b2811f2245dc\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1684, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:16:09', '2024-03-22 14:16:09', 'GET', 'March 22, 2024, 10:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1685, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-22 14:23:00', '2024-03-22 14:23:00', 'POST', 'March 22, 2024, 10:23 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1686, NULL, NULL, NULL, NULL, '2024-03-22 14:23:00', '2024-03-22 14:23:00', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1687, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-22 14:23:02', '2024-03-22 14:23:02', 'POST', 'March 22, 2024, 10:23 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1688, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:23:14', '2024-03-22 14:23:14', 'GET', 'March 22, 2024, 10:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1689, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-22 14:23:29', '2024-03-22 14:23:29', 'POST', 'March 22, 2024, 10:23 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1690, NULL, NULL, NULL, NULL, '2024-03-22 14:23:29', '2024-03-22 14:23:29', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1691, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:23:58', '2024-03-22 14:23:58', 'GET', 'March 22, 2024, 10:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1692, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 14:24:50', '2024-03-22 14:24:50', 'POST', 'March 22, 2024, 10:24 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1693, NULL, NULL, NULL, NULL, '2024-03-22 14:24:50', '2024-03-22 14:24:50', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1694, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-22 14:27:00', '2024-03-22 14:27:00', 'POST', 'March 22, 2024, 10:27 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1695, NULL, NULL, NULL, NULL, '2024-03-22 14:27:00', '2024-03-22 14:27:00', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1696, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=40cd1c1c25179752805623aefa368b76957e548c', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, '2.51.14.220', '2024-03-22 14:27:02', '2024-03-22 14:27:02', 'POST', 'March 22, 2024, 10:27 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1697, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:27:13', '2024-03-22 14:27:13', 'GET', 'March 22, 2024, 10:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1698, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:28:18', '2024-03-22 14:28:18', 'GET', 'March 22, 2024, 10:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1699, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 14:28:48', '2024-03-22 14:28:48', 'POST', 'March 22, 2024, 10:28 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1700, NULL, NULL, NULL, NULL, '2024-03-22 14:28:48', '2024-03-22 14:28:48', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1701, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:29:40', '2024-03-22 14:29:40', 'GET', 'March 22, 2024, 10:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1702, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 14:31:26', '2024-03-22 14:31:26', 'POST', 'March 22, 2024, 10:31 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1703, NULL, NULL, NULL, NULL, '2024-03-22 14:31:26', '2024-03-22 14:31:26', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1704, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 14:32:21', '2024-03-22 14:32:21', 'POST', 'March 22, 2024, 10:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1705, NULL, NULL, NULL, NULL, '2024-03-22 14:32:21', '2024-03-22 14:32:21', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1706, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '2.51.14.220', '2024-03-22 14:32:22', '2024-03-22 14:32:22', 'POST', 'March 22, 2024, 10:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1707, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:32:33', '2024-03-22 14:32:33', 'GET', 'March 22, 2024, 10:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1708, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:33:18', '2024-03-22 14:33:18', 'GET', 'March 22, 2024, 10:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1709, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:34:37', '2024-03-22 14:34:37', 'GET', 'March 22, 2024, 10:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1710, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:35:28', '2024-03-22 14:35:28', 'GET', 'March 22, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1711, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:35:47', '2024-03-22 14:35:47', 'GET', 'March 22, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1712, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:36:45', '2024-03-22 14:36:45', 'GET', 'March 22, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1713, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:36:45', '2024-03-22 14:36:45', 'GET', 'March 22, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1714, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:36:56', '2024-03-22 14:36:56', 'GET', 'March 22, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1715, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:37:56', '2024-03-22 14:37:56', 'GET', 'March 22, 2024, 10:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1716, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:38:14', '2024-03-22 14:38:14', 'GET', 'March 22, 2024, 10:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1717, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:38:55', '2024-03-22 14:38:55', 'GET', 'March 22, 2024, 10:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1718, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 14:39:05', '2024-03-22 14:39:05', 'GET', 'March 22, 2024, 10:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1719, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:39:48', '2024-03-22 14:39:48', 'GET', 'March 22, 2024, 10:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1720, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:39:48', '2024-03-22 14:39:48', 'GET', 'March 22, 2024, 10:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1721, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 14:40:17', '2024-03-22 14:40:17', 'GET', 'March 22, 2024, 10:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1722, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:41:46', '2024-03-22 14:41:46', 'GET', 'March 22, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1723, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:41:46', '2024-03-22 14:41:46', 'GET', 'March 22, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1724, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:41:46', '2024-03-22 14:41:46', 'GET', 'March 22, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1725, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:41:46', '2024-03-22 14:41:46', 'GET', 'March 22, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1726, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:41:46', '2024-03-22 14:41:46', 'GET', 'March 22, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1727, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:44:49', '2024-03-22 14:44:49', 'GET', 'March 22, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1728, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:44:49', '2024-03-22 14:44:49', 'GET', 'March 22, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1729, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:44:49', '2024-03-22 14:44:49', 'GET', 'March 22, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1730, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:44:49', '2024-03-22 14:44:49', 'GET', 'March 22, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1731, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:44:49', '2024-03-22 14:44:49', 'GET', 'March 22, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1732, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:45:11', '2024-03-22 14:45:11', 'GET', 'March 22, 2024, 10:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1733, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:45:16', '2024-03-22 14:45:16', 'GET', 'March 22, 2024, 10:45 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1734, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:47:27', '2024-03-22 14:47:27', 'GET', 'March 22, 2024, 10:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1735, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:47:59', '2024-03-22 14:47:59', 'GET', 'March 22, 2024, 10:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1736, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-22 14:49:04', '2024-03-22 14:49:04', 'POST', 'March 22, 2024, 10:49 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1737, NULL, NULL, NULL, NULL, '2024-03-22 14:49:04', '2024-03-22 14:49:04', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1738, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-22 14:49:06', '2024-03-22 14:49:06', 'POST', 'March 22, 2024, 10:49 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1739, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:51:05', '2024-03-22 14:51:05', 'GET', 'March 22, 2024, 10:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1740, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 14:55:28', '2024-03-22 14:55:28', 'GET', 'March 22, 2024, 10:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1741, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:09:53', '2024-03-22 15:09:53', 'GET', 'March 22, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1742, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:09:53', '2024-03-22 15:09:53', 'GET', 'March 22, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1743, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-22 15:11:36', '2024-03-22 15:11:36', 'POST', 'March 22, 2024, 11:11 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1744, NULL, NULL, NULL, NULL, '2024-03-22 15:11:36', '2024-03-22 15:11:36', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1745, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-22 15:11:38', '2024-03-22 15:11:38', 'POST', 'March 22, 2024, 11:11 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1746, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:12:20', '2024-03-22 15:12:20', 'GET', 'March 22, 2024, 11:12 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1747, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:16:28', '2024-03-22 15:16:28', 'GET', 'March 22, 2024, 11:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1748, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:18:15', '2024-03-22 15:18:15', 'GET', 'March 22, 2024, 11:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1749, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:20:09', '2024-03-22 15:20:09', 'GET', 'March 22, 2024, 11:20 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1750, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-22 15:22:07', '2024-03-22 15:22:07', 'POST', 'March 22, 2024, 11:22 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1751, NULL, NULL, NULL, NULL, '2024-03-22 15:22:07', '2024-03-22 15:22:07', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1752, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-22 15:22:09', '2024-03-22 15:22:09', 'POST', 'March 22, 2024, 11:22 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1753, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:23:09', '2024-03-22 15:23:09', 'GET', 'March 22, 2024, 11:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1754, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-22 15:25:31', '2024-03-22 15:25:31', 'POST', 'March 22, 2024, 11:25 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1755, NULL, NULL, NULL, NULL, '2024-03-22 15:25:31', '2024-03-22 15:25:31', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1756, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-22 15:25:35', '2024-03-22 15:25:35', 'POST', 'March 22, 2024, 11:25 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1757, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:26:00', '2024-03-22 15:26:00', 'GET', 'March 22, 2024, 11:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1758, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:27:45', '2024-03-22 15:27:45', 'GET', 'March 22, 2024, 11:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1759, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:29:03', '2024-03-22 15:29:03', 'GET', 'March 22, 2024, 11:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1760, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:32:40', '2024-03-22 15:32:40', 'GET', 'March 22, 2024, 11:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1761, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:34:01', '2024-03-22 15:34:01', 'GET', 'March 22, 2024, 11:34 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1762, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-22 15:38:06', '2024-03-22 15:38:06', 'GET', 'March 22, 2024, 11:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1763, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:40:43', '2024-03-22 15:40:43', 'GET', 'March 22, 2024, 11:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1764, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:40:45', '2024-03-22 15:40:45', 'GET', 'March 22, 2024, 11:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1765, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:42:07', '2024-03-22 15:42:07', 'GET', 'March 22, 2024, 11:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1766, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:42:22', '2024-03-22 15:42:22', 'GET', 'March 22, 2024, 11:42 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1767, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '2.51.14.220', '2024-03-22 15:52:24', '2024-03-22 15:52:24', 'POST', 'March 22, 2024, 11:52 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1768, NULL, NULL, NULL, NULL, '2024-03-22 15:52:24', '2024-03-22 15:52:24', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1769, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '2.51.14.220', '2024-03-22 15:52:27', '2024-03-22 15:52:27', 'POST', 'March 22, 2024, 11:52 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1770, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-22 15:52:30', '2024-03-22 15:52:30', 'POST', 'March 22, 2024, 11:52 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1771, NULL, NULL, NULL, NULL, '2024-03-22 15:52:30', '2024-03-22 15:52:30', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1772, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=40cd1c1c25179752805623aefa368b76957e548c', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, '2.51.14.220', '2024-03-22 15:52:32', '2024-03-22 15:52:32', 'POST', 'March 22, 2024, 11:52 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1773, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:52:39', '2024-03-22 15:52:39', 'GET', 'March 22, 2024, 11:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1774, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:52:44', '2024-03-22 15:52:44', 'GET', 'March 22, 2024, 11:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1775, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:53:13', '2024-03-22 15:53:13', 'GET', 'March 22, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1776, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:53:31', '2024-03-22 15:53:31', 'GET', 'March 22, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1777, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:53:37', '2024-03-22 15:53:37', 'GET', 'March 22, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1778, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:53:42', '2024-03-22 15:53:42', 'GET', 'March 22, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1779, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:53:55', '2024-03-22 15:53:55', 'GET', 'March 22, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1780, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:55:09', '2024-03-22 15:55:09', 'GET', 'March 22, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1781, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:56:39', '2024-03-22 15:56:39', 'GET', 'March 22, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1782, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:58:09', '2024-03-22 15:58:09', 'GET', 'March 22, 2024, 11:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1783, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 15:58:24', '2024-03-22 15:58:24', 'GET', 'March 22, 2024, 11:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1784, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 15:58:38', '2024-03-22 15:58:38', 'GET', 'March 22, 2024, 11:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1785, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-22 16:00:29', '2024-03-22 16:00:29', 'GET', 'March 22, 2024, 12:00 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1786, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:03:51', '2024-03-22 16:03:51', 'GET', 'March 22, 2024, 12:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1787, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:04:39', '2024-03-22 16:04:39', 'GET', 'March 22, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1788, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:05:20', '2024-03-22 16:05:20', 'GET', 'March 22, 2024, 12:05 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1789, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:06:58', '2024-03-22 16:06:58', 'GET', 'March 22, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1790, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:08:03', '2024-03-22 16:08:03', 'GET', 'March 22, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1791, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '2.51.14.220', '2024-03-22 16:08:42', '2024-03-22 16:08:42', 'GET', 'March 22, 2024, 12:08 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1792, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:16:45', '2024-03-23 09:16:45', 'GET', 'March 23, 2024, 5:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1793, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:19:23', '2024-03-23 09:19:23', 'GET', 'March 23, 2024, 5:19 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1794, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:19:33', '2024-03-23 09:19:33', 'GET', 'March 23, 2024, 5:19 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1795, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:24:25', '2024-03-23 09:24:25', 'GET', 'March 23, 2024, 5:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1796, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:25:11', '2024-03-23 09:25:11', 'GET', 'March 23, 2024, 5:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1797, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:25:24', '2024-03-23 09:25:24', 'GET', 'March 23, 2024, 5:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1798, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 09:31:23', '2024-03-23 09:31:23', 'GET', 'March 23, 2024, 5:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1799, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:31:47', '2024-03-23 10:31:47', 'GET', 'March 23, 2024, 6:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1800, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:32:29', '2024-03-23 10:32:29', 'GET', 'March 23, 2024, 6:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1801, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:36:19', '2024-03-23 10:36:19', 'GET', 'March 23, 2024, 6:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1802, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:37:25', '2024-03-23 10:37:25', 'GET', 'March 23, 2024, 6:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1803, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:39:18', '2024-03-23 10:39:18', 'GET', 'March 23, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1804, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:39:31', '2024-03-23 10:39:31', 'GET', 'March 23, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1805, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:39:59', '2024-03-23 10:39:59', 'GET', 'March 23, 2024, 6:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1806, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:41:00', '2024-03-23 10:41:00', 'GET', 'March 23, 2024, 6:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1807, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:41:19', '2024-03-23 10:41:19', 'GET', 'March 23, 2024, 6:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1808, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:41:34', '2024-03-23 10:41:34', 'GET', 'March 23, 2024, 6:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1809, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:41:48', '2024-03-23 10:41:48', 'GET', 'March 23, 2024, 6:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1810, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:52:53', '2024-03-23 10:52:53', 'GET', 'March 23, 2024, 6:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1811, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:53:01', '2024-03-23 10:53:01', 'GET', 'March 23, 2024, 6:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1812, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '2.51.14.220', '2024-03-23 10:54:01', '2024-03-23 10:54:01', 'POST', 'March 23, 2024, 6:54 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1813, NULL, NULL, NULL, NULL, '2024-03-23 10:54:01', '2024-03-23 10:54:01', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1814, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '2.51.14.220', '2024-03-23 10:58:31', '2024-03-23 10:58:31', 'POST', 'March 23, 2024, 6:58 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1815, NULL, NULL, NULL, NULL, '2024-03-23 10:58:31', '2024-03-23 10:58:31', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1816, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '2.51.14.220', '2024-03-23 10:58:33', '2024-03-23 10:58:33', 'POST', 'March 23, 2024, 6:58 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1817, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 10:58:43', '2024-03-23 10:58:43', 'GET', 'March 23, 2024, 6:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1818, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 10:58:55', '2024-03-23 10:58:55', 'GET', 'March 23, 2024, 6:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1819, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 10:59:54', '2024-03-23 10:59:54', 'GET', 'March 23, 2024, 6:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1820, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 11:01:09', '2024-03-23 11:01:09', 'GET', 'March 23, 2024, 7:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1821, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 11:01:41', '2024-03-23 11:01:41', 'GET', 'March 23, 2024, 7:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1822, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 11:02:01', '2024-03-23 11:02:01', 'GET', 'March 23, 2024, 7:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1823, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 11:04:30', '2024-03-23 11:04:30', 'GET', 'March 23, 2024, 7:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1824, 'https://ohmc.swantech.ae/api/online-license?imei=84db14a1728e006e', '{\"imei\":\"84db14a1728e006e\"}', NULL, '39.37.67.155', '2024-03-23 11:05:12', '2024-03-23 11:05:12', 'POST', 'March 23, 2024, 7:05 am', NULL, '{\"imei\":\"84db14a1728e006e\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1825, NULL, NULL, NULL, NULL, '2024-03-23 11:05:12', '2024-03-23 11:05:12', NULL, NULL, NULL, '{\"imei\":\"84db14a1728e006e\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1826, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '39.37.67.155', '2024-03-23 11:05:18', '2024-03-23 11:05:18', 'GET', 'March 23, 2024, 7:05 am', NULL, '[]', NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1827, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 11:08:05', '2024-03-23 11:08:05', 'GET', 'March 23, 2024, 7:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1828, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 11:08:18', '2024-03-23 11:08:18', 'GET', 'March 23, 2024, 7:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1829, 'https://ohmc.swantech.ae/api/online-license?imei=84db14a1728e006e', '{\"imei\":\"84db14a1728e006e\"}', NULL, '39.37.67.155', '2024-03-23 11:12:05', '2024-03-23 11:12:05', 'POST', 'March 23, 2024, 7:12 am', NULL, '{\"imei\":\"84db14a1728e006e\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1830, NULL, NULL, NULL, NULL, '2024-03-23 11:12:05', '2024-03-23 11:12:05', NULL, NULL, NULL, '{\"imei\":\"84db14a1728e006e\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1831, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:15:05', '2024-03-23 11:15:05', 'GET', 'March 23, 2024, 7:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1832, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:17:21', '2024-03-23 11:17:21', 'GET', 'March 23, 2024, 7:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1833, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 11:28:35', '2024-03-23 11:28:35', 'GET', 'March 23, 2024, 7:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1834, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 11:28:47', '2024-03-23 11:28:47', 'GET', 'March 23, 2024, 7:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1835, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:40:15', '2024-03-23 11:40:15', 'GET', 'March 23, 2024, 7:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1836, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:41:27', '2024-03-23 11:41:27', 'GET', 'March 23, 2024, 7:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1837, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:43:25', '2024-03-23 11:43:25', 'GET', 'March 23, 2024, 7:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1838, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:12', '2024-03-23 11:50:12', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1839, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:12', '2024-03-23 11:50:12', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1840, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:12', '2024-03-23 11:50:12', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1841, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:12', '2024-03-23 11:50:12', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1842, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:12', '2024-03-23 11:50:12', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1843, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:13', '2024-03-23 11:50:13', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1844, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:50:13', '2024-03-23 11:50:13', 'GET', 'March 23, 2024, 7:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1845, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:57:35', '2024-03-23 11:57:35', 'GET', 'March 23, 2024, 7:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1846, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:59:03', '2024-03-23 11:59:03', 'GET', 'March 23, 2024, 7:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1847, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '39.37.67.155', '2024-03-23 11:59:03', '2024-03-23 11:59:03', 'GET', 'March 23, 2024, 7:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1848, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:22:02', '2024-03-23 12:22:02', 'GET', 'March 23, 2024, 8:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1849, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:15', '2024-03-23 12:26:15', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1850, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:15', '2024-03-23 12:26:15', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1851, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:15', '2024-03-23 12:26:15', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1852, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:16', '2024-03-23 12:26:16', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1853, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:16', '2024-03-23 12:26:16', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1854, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:26:47', '2024-03-23 12:26:47', 'GET', 'March 23, 2024, 8:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1855, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:29:01', '2024-03-23 12:29:01', 'GET', 'March 23, 2024, 8:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1856, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:33:20', '2024-03-23 12:33:20', 'GET', 'March 23, 2024, 8:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1857, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '223.123.3.236', '2024-03-23 12:48:31', '2024-03-23 12:48:31', 'GET', 'March 23, 2024, 8:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1858, 'https://ohmc.swantech.ae/api/online-license?imei=f769bc9ba8689ccb', '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, '2.51.14.220', '2024-03-23 13:20:51', '2024-03-23 13:20:51', 'POST', 'March 23, 2024, 9:20 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1859, NULL, NULL, NULL, NULL, '2024-03-23 13:20:51', '2024-03-23 13:20:51', NULL, NULL, NULL, '{\"imei\":\"f769bc9ba8689ccb\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1860, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=f769bc9ba8689ccb&license_key=40cd1c1c25179752805623aefa368b76957e548c', '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, '2.51.14.220', '2024-03-23 13:20:55', '2024-03-23 13:20:55', 'POST', 'March 23, 2024, 9:20 am', NULL, '{\"imei\":\"f769bc9ba8689ccb\",\"license_key\":\"40cd1c1c25179752805623aefa368b76957e548c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1861, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:21:05', '2024-03-23 13:21:05', 'GET', 'March 23, 2024, 9:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1862, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '2.51.14.220', '2024-03-23 13:21:25', '2024-03-23 13:21:25', 'POST', 'March 23, 2024, 9:21 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1863, NULL, NULL, NULL, NULL, '2024-03-23 13:21:25', '2024-03-23 13:21:25', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1864, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '2.51.14.220', '2024-03-23 13:21:28', '2024-03-23 13:21:28', 'POST', 'March 23, 2024, 9:21 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1865, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 13:21:38', '2024-03-23 13:21:38', 'GET', 'March 23, 2024, 9:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1866, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:21:56', '2024-03-23 13:21:56', 'GET', 'March 23, 2024, 9:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1867, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:23:10', '2024-03-23 13:23:10', 'GET', 'March 23, 2024, 9:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1868, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:24:26', '2024-03-23 13:24:26', 'GET', 'March 23, 2024, 9:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1869, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 13:24:26', '2024-03-23 13:24:26', 'GET', 'March 23, 2024, 9:24 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1870, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 13:25:30', '2024-03-23 13:25:30', 'GET', 'March 23, 2024, 9:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1871, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:26:57', '2024-03-23 13:26:57', 'GET', 'March 23, 2024, 9:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1872, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:27:07', '2024-03-23 13:27:07', 'GET', 'March 23, 2024, 9:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1873, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 13:29:13', '2024-03-23 13:29:13', 'GET', 'March 23, 2024, 9:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1874, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:29:50', '2024-03-23 13:29:50', 'GET', 'March 23, 2024, 9:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1875, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 13:50:29', '2024-03-23 13:50:29', 'GET', 'March 23, 2024, 9:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1876, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 13:50:30', '2024-03-23 13:50:30', 'GET', 'March 23, 2024, 9:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1877, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 14:20:45', '2024-03-23 14:20:45', 'GET', 'March 23, 2024, 10:20 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1878, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 14:22:05', '2024-03-23 14:22:05', 'GET', 'March 23, 2024, 10:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1879, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 14:22:06', '2024-03-23 14:22:06', 'GET', 'March 23, 2024, 10:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(1880, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 14:50:03', '2024-03-23 14:50:03', 'GET', 'March 23, 2024, 10:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1881, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 15:14:30', '2024-03-23 15:14:30', 'GET', 'March 23, 2024, 11:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1882, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-23 15:32:10', '2024-03-23 15:32:10', 'GET', 'March 23, 2024, 11:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1883, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 15:54:43', '2024-03-23 15:54:43', 'GET', 'March 23, 2024, 11:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1884, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-23 15:55:06', '2024-03-23 15:55:06', 'GET', 'March 23, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1885, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-25 09:36:36', '2024-03-25 09:36:36', 'GET', 'March 25, 2024, 5:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1886, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-25 09:36:45', '2024-03-25 09:36:45', 'GET', 'March 25, 2024, 5:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1887, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-25 09:37:01', '2024-03-25 09:37:01', 'GET', 'March 25, 2024, 5:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1888, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-25 09:38:02', '2024-03-25 09:38:02', 'GET', 'March 25, 2024, 5:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1889, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-25 09:38:08', '2024-03-25 09:38:08', 'GET', 'March 25, 2024, 5:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1890, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-25 09:38:55', '2024-03-25 09:38:55', 'GET', 'March 25, 2024, 5:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1891, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-25 09:39:03', '2024-03-25 09:39:03', 'GET', 'March 25, 2024, 5:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1892, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-25 09:39:13', '2024-03-25 09:39:13', 'GET', 'March 25, 2024, 5:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1893, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-25 10:00:40', '2024-03-25 10:00:40', 'GET', 'March 25, 2024, 6:00 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1894, 'https://ohmc.swantech.ae/api/online-license?imei=5c64505ddff6755c', '{\"imei\":\"5c64505ddff6755c\"}', NULL, '137.59.231.225', '2024-03-25 10:47:22', '2024-03-25 10:47:22', 'POST', 'March 25, 2024, 6:47 am', NULL, '{\"imei\":\"5c64505ddff6755c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1895, NULL, NULL, NULL, NULL, '2024-03-25 10:47:22', '2024-03-25 10:47:22', NULL, NULL, NULL, '{\"imei\":\"5c64505ddff6755c\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1896, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=5c64505ddff6755c&license_key=22e5d3567b8519d0347f663cccb7e197c4b8f47b', '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, '137.59.231.225', '2024-03-25 10:47:24', '2024-03-25 10:47:24', 'POST', 'March 25, 2024, 6:47 am', NULL, '{\"imei\":\"5c64505ddff6755c\",\"license_key\":\"22e5d3567b8519d0347f663cccb7e197c4b8f47b\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1897, 'https://ohmc.swantech.ae/api/zones', '[]', NULL, '137.59.231.225', '2024-03-25 10:47:29', '2024-03-25 10:47:29', 'GET', 'March 25, 2024, 6:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1898, 'https://ohmc.swantech.ae/api/cities', '[]', NULL, '137.59.231.225', '2024-03-25 10:47:29', '2024-03-25 10:47:29', 'GET', 'March 25, 2024, 6:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1899, 'https://ohmc.swantech.ae/api/device-groups', '[]', NULL, '137.59.231.225', '2024-03-25 10:47:29', '2024-03-25 10:47:29', 'GET', 'March 25, 2024, 6:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1900, 'https://ohmc.swantech.ae/api/branches', '[]', NULL, '137.59.231.225', '2024-03-25 10:47:29', '2024-03-25 10:47:29', 'GET', 'March 25, 2024, 6:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1901, 'https://ohmc.swantech.ae/api/devices', '[]', NULL, '137.59.231.225', '2024-03-25 10:47:29', '2024-03-25 10:47:29', 'GET', 'March 25, 2024, 6:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1902, 'https://ohmc.swantech.ae/api/playlist/5', '[]', NULL, '137.59.231.225', '2024-03-25 10:48:46', '2024-03-25 10:48:46', 'GET', 'March 25, 2024, 6:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1903, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-26 09:57:25', '2024-03-26 09:57:25', 'GET', 'March 26, 2024, 5:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1904, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-26 09:57:51', '2024-03-26 09:57:51', 'GET', 'March 26, 2024, 5:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1905, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.212.116', '2024-03-26 10:31:39', '2024-03-26 10:31:39', 'POST', 'March 26, 2024, 6:31 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1906, NULL, NULL, NULL, NULL, '2024-03-26 10:31:39', '2024-03-26 10:31:39', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1907, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '103.131.212.116', '2024-03-26 10:31:40', '2024-03-26 10:31:40', 'POST', 'March 26, 2024, 6:31 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1908, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:36:24', '2024-03-26 10:36:24', 'POST', 'March 26, 2024, 6:36 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1909, NULL, NULL, NULL, NULL, '2024-03-26 10:36:24', '2024-03-26 10:36:24', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1910, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:36:26', '2024-03-26 10:36:26', 'POST', 'March 26, 2024, 6:36 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1911, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-26 10:36:39', '2024-03-26 10:36:39', 'GET', 'March 26, 2024, 6:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1912, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:40:44', '2024-03-26 10:40:44', 'POST', 'March 26, 2024, 6:40 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1913, NULL, NULL, NULL, NULL, '2024-03-26 10:40:44', '2024-03-26 10:40:44', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1914, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:40:47', '2024-03-26 10:40:47', 'POST', 'March 26, 2024, 6:40 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1915, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-26 10:40:59', '2024-03-26 10:40:59', 'GET', 'March 26, 2024, 6:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1916, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-26 10:46:31', '2024-03-26 10:46:31', 'GET', 'March 26, 2024, 6:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1917, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '2.51.14.220', '2024-03-26 10:46:33', '2024-03-26 10:46:33', 'GET', 'March 26, 2024, 6:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1918, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:49:18', '2024-03-26 10:49:18', 'POST', 'March 26, 2024, 6:49 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1919, NULL, NULL, NULL, NULL, '2024-03-26 10:49:18', '2024-03-26 10:49:18', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1920, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:49:20', '2024-03-26 10:49:20', 'POST', 'March 26, 2024, 6:49 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1921, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-26 10:49:33', '2024-03-26 10:49:33', 'GET', 'March 26, 2024, 6:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1922, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:50:35', '2024-03-26 10:50:35', 'POST', 'March 26, 2024, 6:50 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1923, NULL, NULL, NULL, NULL, '2024-03-26 10:50:35', '2024-03-26 10:50:35', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1924, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:50:37', '2024-03-26 10:50:37', 'POST', 'March 26, 2024, 6:50 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1925, 'https://ohmc.swantech.ae/api/check-device-status/1', '[]', NULL, '137.59.231.225', '2024-03-26 10:50:50', '2024-03-26 10:50:50', 'GET', 'March 26, 2024, 6:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1926, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:54:08', '2024-03-26 10:54:08', 'POST', 'March 26, 2024, 6:54 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1927, NULL, NULL, NULL, NULL, '2024-03-26 10:54:08', '2024-03-26 10:54:08', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1928, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:54:14', '2024-03-26 10:54:14', 'POST', 'March 26, 2024, 6:54 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1929, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:54:26', '2024-03-26 10:54:26', 'GET', 'March 26, 2024, 6:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1930, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:54:27', '2024-03-26 10:54:27', 'GET', 'March 26, 2024, 6:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1931, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:56:52', '2024-03-26 10:56:52', 'GET', 'March 26, 2024, 6:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1932, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:57:45', '2024-03-26 10:57:45', 'GET', 'March 26, 2024, 6:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1933, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 10:58:35', '2024-03-26 10:58:35', 'POST', 'March 26, 2024, 6:58 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1934, NULL, NULL, NULL, NULL, '2024-03-26 10:58:35', '2024-03-26 10:58:35', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1935, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 10:58:44', '2024-03-26 10:58:44', 'POST', 'March 26, 2024, 6:58 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1936, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:58:57', '2024-03-26 10:58:57', 'GET', 'March 26, 2024, 6:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1937, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 10:58:58', '2024-03-26 10:58:58', 'GET', 'March 26, 2024, 6:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1938, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:01:18', '2024-03-26 11:01:18', 'GET', 'March 26, 2024, 7:01 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1939, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:07:57', '2024-03-26 11:07:57', 'POST', 'March 26, 2024, 7:07 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1940, NULL, NULL, NULL, NULL, '2024-03-26 11:07:57', '2024-03-26 11:07:57', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1941, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:08:00', '2024-03-26 11:08:00', 'POST', 'March 26, 2024, 7:08 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1942, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:08:12', '2024-03-26 11:08:12', 'GET', 'March 26, 2024, 7:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1943, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:08:13', '2024-03-26 11:08:13', 'GET', 'March 26, 2024, 7:08 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1944, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:09:11', '2024-03-26 11:09:11', 'GET', 'March 26, 2024, 7:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1945, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:09:52', '2024-03-26 11:09:52', 'POST', 'March 26, 2024, 7:09 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1946, NULL, NULL, NULL, NULL, '2024-03-26 11:09:52', '2024-03-26 11:09:52', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1947, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:09:56', '2024-03-26 11:09:56', 'POST', 'March 26, 2024, 7:09 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1948, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:10:14', '2024-03-26 11:10:14', 'GET', 'March 26, 2024, 7:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1949, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:10:15', '2024-03-26 11:10:15', 'GET', 'March 26, 2024, 7:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1950, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:13:13', '2024-03-26 11:13:13', 'POST', 'March 26, 2024, 7:13 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1951, NULL, NULL, NULL, NULL, '2024-03-26 11:13:13', '2024-03-26 11:13:13', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1952, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:13:26', '2024-03-26 11:13:26', 'POST', 'March 26, 2024, 7:13 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1953, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:13:39', '2024-03-26 11:13:39', 'GET', 'March 26, 2024, 7:13 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1954, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:13:40', '2024-03-26 11:13:40', 'GET', 'March 26, 2024, 7:13 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1955, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:13:43', '2024-03-26 11:13:43', 'GET', 'March 26, 2024, 7:13 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1956, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:14:46', '2024-03-26 11:14:46', 'GET', 'March 26, 2024, 7:14 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1957, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:15:16', '2024-03-26 11:15:16', 'POST', 'March 26, 2024, 7:15 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1958, NULL, NULL, NULL, NULL, '2024-03-26 11:15:16', '2024-03-26 11:15:16', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1959, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:15:18', '2024-03-26 11:15:18', 'POST', 'March 26, 2024, 7:15 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1960, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:15:36', '2024-03-26 11:15:36', 'GET', 'March 26, 2024, 7:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1961, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:15:45', '2024-03-26 11:15:45', 'GET', 'March 26, 2024, 7:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1962, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:21:15', '2024-03-26 11:21:15', 'GET', 'March 26, 2024, 7:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1963, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:23:07', '2024-03-26 11:23:07', 'POST', 'March 26, 2024, 7:23 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1964, NULL, NULL, NULL, NULL, '2024-03-26 11:23:07', '2024-03-26 11:23:07', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1965, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:23:08', '2024-03-26 11:23:08', 'POST', 'March 26, 2024, 7:23 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1966, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:23:20', '2024-03-26 11:23:20', 'GET', 'March 26, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1967, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:23:22', '2024-03-26 11:23:22', 'GET', 'March 26, 2024, 7:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1968, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:24:50', '2024-03-26 11:24:50', 'POST', 'March 26, 2024, 7:24 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1969, NULL, NULL, NULL, NULL, '2024-03-26 11:24:50', '2024-03-26 11:24:50', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1970, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:24:52', '2024-03-26 11:24:52', 'POST', 'March 26, 2024, 7:24 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1971, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:25:14', '2024-03-26 11:25:14', 'GET', 'March 26, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1972, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:25:15', '2024-03-26 11:25:15', 'GET', 'March 26, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1973, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:26:38', '2024-03-26 11:26:38', 'POST', 'March 26, 2024, 7:26 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1974, NULL, NULL, NULL, NULL, '2024-03-26 11:26:38', '2024-03-26 11:26:38', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1975, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:26:43', '2024-03-26 11:26:43', 'POST', 'March 26, 2024, 7:26 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1976, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:26:56', '2024-03-26 11:26:56', 'GET', 'March 26, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1977, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:26:58', '2024-03-26 11:26:58', 'GET', 'March 26, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1978, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:28:04', '2024-03-26 11:28:04', 'POST', 'March 26, 2024, 7:28 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1979, NULL, NULL, NULL, NULL, '2024-03-26 11:28:04', '2024-03-26 11:28:04', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1980, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:28:07', '2024-03-26 11:28:07', 'POST', 'March 26, 2024, 7:28 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1981, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:28:20', '2024-03-26 11:28:20', 'GET', 'March 26, 2024, 7:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1982, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:28:22', '2024-03-26 11:28:22', 'GET', 'March 26, 2024, 7:28 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1983, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:30:50', '2024-03-26 11:30:50', 'POST', 'March 26, 2024, 7:30 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1984, NULL, NULL, NULL, NULL, '2024-03-26 11:30:50', '2024-03-26 11:30:50', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1985, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:31:02', '2024-03-26 11:31:02', 'POST', 'March 26, 2024, 7:31 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1986, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:31:14', '2024-03-26 11:31:14', 'GET', 'March 26, 2024, 7:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1987, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:31:17', '2024-03-26 11:31:17', 'GET', 'March 26, 2024, 7:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1988, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '137.59.231.225', '2024-03-26 11:32:47', '2024-03-26 11:32:47', 'POST', 'March 26, 2024, 7:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1989, NULL, NULL, NULL, NULL, '2024-03-26 11:32:47', '2024-03-26 11:32:47', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1990, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=acfce0d724d99f84&license_key=16b402b102140e8a300eefe95eab768e87028890', '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, '137.59.231.225', '2024-03-26 11:32:49', '2024-03-26 11:32:49', 'POST', 'March 26, 2024, 7:32 am', NULL, '{\"imei\":\"acfce0d724d99f84\",\"license_key\":\"16b402b102140e8a300eefe95eab768e87028890\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1991, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:33:01', '2024-03-26 11:33:01', 'GET', 'March 26, 2024, 7:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1992, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:33:03', '2024-03-26 11:33:03', 'GET', 'March 26, 2024, 7:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1993, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:33:26', '2024-03-26 11:33:26', 'GET', 'March 26, 2024, 7:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1994, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 11:38:57', '2024-03-26 11:38:57', 'GET', 'March 26, 2024, 7:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1995, 'https://ohmc.swantech.ae/api/check-device-status/3', '[]', NULL, '137.59.231.225', '2024-03-26 13:48:39', '2024-03-26 13:48:39', 'GET', 'March 26, 2024, 9:48 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1996, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-26 16:15:01', '2024-03-26 16:15:01', 'GET', 'March 26, 2024, 12:15 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1997, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-26 16:16:30', '2024-03-26 16:16:30', 'GET', 'March 26, 2024, 12:16 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1998, 'https://ohmc.swantech.ae/api/check-device-status/2', '[]', NULL, '2.51.14.220', '2024-03-27 09:46:15', '2024-03-27 09:46:15', 'GET', 'March 27, 2024, 5:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(1999, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '86.98.30.42', '2024-03-29 15:10:36', '2024-03-29 15:10:36', 'GET', 'March 29, 2024, 11:10 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2000, 'https://ohmc.swantech.ae/api/online-license?imei=acfce0d724d99f84', '{\"imei\":\"acfce0d724d99f84\"}', NULL, '103.131.213.112', '2024-04-01 11:52:13', '2024-04-01 11:52:13', 'POST', 'April 1, 2024, 7:52 am', NULL, '{\"imei\":\"acfce0d724d99f84\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2001, NULL, NULL, NULL, NULL, '2024-04-01 11:52:13', '2024-04-01 11:52:13', NULL, NULL, NULL, '{\"imei\":\"acfce0d724d99f84\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2002, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '103.131.213.112', '2024-04-01 11:57:07', '2024-04-01 11:57:07', 'POST', 'April 1, 2024, 7:57 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2003, NULL, NULL, NULL, NULL, '2024-04-01 11:57:07', '2024-04-01 11:57:07', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2004, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.112', '2024-04-01 11:57:10', '2024-04-01 11:57:10', 'POST', 'April 1, 2024, 7:57 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2005, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 11:57:23', '2024-04-01 11:57:23', 'GET', 'April 1, 2024, 7:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2006, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:02:15', '2024-04-01 12:02:15', 'GET', 'April 1, 2024, 8:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2007, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:03:01', '2024-04-01 12:03:01', 'GET', 'April 1, 2024, 8:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2008, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:15:12', '2024-04-01 12:15:12', 'GET', 'April 1, 2024, 8:15 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2009, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:16:41', '2024-04-01 12:16:41', 'GET', 'April 1, 2024, 8:16 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2010, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:40:14', '2024-04-01 12:40:14', 'GET', 'April 1, 2024, 8:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2011, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:40:16', '2024-04-01 12:40:16', 'GET', 'April 1, 2024, 8:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2012, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:40:26', '2024-04-01 12:40:26', 'GET', 'April 1, 2024, 8:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2013, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:46:07', '2024-04-01 12:46:07', 'GET', 'April 1, 2024, 8:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2014, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:49:54', '2024-04-01 12:49:54', 'GET', 'April 1, 2024, 8:49 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2015, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '103.131.213.112', '2024-04-01 12:51:08', '2024-04-01 12:51:08', 'POST', 'April 1, 2024, 8:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2016, NULL, NULL, NULL, NULL, '2024-04-01 12:51:08', '2024-04-01 12:51:08', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2017, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.112', '2024-04-01 12:51:10', '2024-04-01 12:51:10', 'POST', 'April 1, 2024, 8:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2018, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 12:51:23', '2024-04-01 12:51:23', 'GET', 'April 1, 2024, 8:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2019, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '103.131.213.112', '2024-04-01 13:30:55', '2024-04-01 13:30:55', 'POST', 'April 1, 2024, 9:30 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2020, NULL, NULL, NULL, NULL, '2024-04-01 13:30:55', '2024-04-01 13:30:55', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2021, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.112', '2024-04-01 13:30:57', '2024-04-01 13:30:57', 'POST', 'April 1, 2024, 9:30 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2022, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:31:10', '2024-04-01 13:31:10', 'GET', 'April 1, 2024, 9:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2023, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:31:17', '2024-04-01 13:31:17', 'GET', 'April 1, 2024, 9:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2024, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:31:17', '2024-04-01 13:31:17', 'GET', 'April 1, 2024, 9:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2025, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:32:46', '2024-04-01 13:32:46', 'GET', 'April 1, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2026, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:33:12', '2024-04-01 13:33:12', 'GET', 'April 1, 2024, 9:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2027, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:35:02', '2024-04-01 13:35:02', 'GET', 'April 1, 2024, 9:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2028, 'https://ohmc.swantech.ae/api/check-device-status/12', '[]', NULL, '86.98.30.42', '2024-04-01 13:37:29', '2024-04-01 13:37:29', 'GET', 'April 1, 2024, 9:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2029, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:40:30', '2024-04-01 13:40:30', 'GET', 'April 1, 2024, 9:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2030, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.112', '2024-04-01 13:40:49', '2024-04-01 13:40:49', 'GET', 'April 1, 2024, 9:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2031, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-01 13:41:35', '2024-04-01 13:41:35', 'GET', 'April 1, 2024, 9:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2032, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '86.98.30.42', '2024-04-01 14:06:28', '2024-04-01 14:06:28', 'GET', 'April 1, 2024, 10:06 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2033, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-01 14:36:11', '2024-04-01 14:36:11', 'POST', 'April 1, 2024, 10:36 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2034, NULL, NULL, NULL, NULL, '2024-04-01 14:36:11', '2024-04-01 14:36:11', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2035, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-01 14:36:35', '2024-04-01 14:36:35', 'POST', 'April 1, 2024, 10:36 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2036, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-01 14:36:47', '2024-04-01 14:36:47', 'GET', 'April 1, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2037, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-01 14:51:17', '2024-04-01 14:51:17', 'POST', 'April 1, 2024, 10:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2038, NULL, NULL, NULL, NULL, '2024-04-01 14:51:17', '2024-04-01 14:51:17', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2039, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-01 14:51:27', '2024-04-01 14:51:27', 'POST', 'April 1, 2024, 10:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2040, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-01 14:51:33', '2024-04-01 14:51:33', 'POST', 'April 1, 2024, 10:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2041, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-01 14:51:41', '2024-04-01 14:51:41', 'GET', 'April 1, 2024, 10:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2042, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-01 14:51:46', '2024-04-01 14:51:46', 'GET', 'April 1, 2024, 10:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2043, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-01 14:54:34', '2024-04-01 14:54:34', 'GET', 'April 1, 2024, 10:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `service_logs` (`id`, `url`, `params`, `user_id`, `ip`, `created_at`, `updated_at`, `method`, `call_time`, `duration`, `request_content`, `response_content`, `user_agent`, `response_code`, `log_type`, `file`, `line`, `message`, `trace`, `organization_id`) VALUES
(2044, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.121', '2024-04-02 07:29:19', '2024-04-02 07:29:19', 'GET', 'April 2, 2024, 3:29 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2045, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:05:13', '2024-04-02 11:05:13', 'GET', 'April 2, 2024, 7:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2046, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:05:30', '2024-04-02 11:05:30', 'GET', 'April 2, 2024, 7:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2047, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:22:21', '2024-04-02 11:22:21', 'GET', 'April 2, 2024, 7:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2048, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:25:07', '2024-04-02 11:25:07', 'GET', 'April 2, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2049, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:25:20', '2024-04-02 11:25:20', 'GET', 'April 2, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2050, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:25:24', '2024-04-02 11:25:24', 'GET', 'April 2, 2024, 7:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2051, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:36:08', '2024-04-02 11:36:08', 'GET', 'April 2, 2024, 7:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2052, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '103.131.213.207', '2024-04-02 11:49:17', '2024-04-02 11:49:17', 'POST', 'April 2, 2024, 7:49 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2053, NULL, NULL, NULL, NULL, '2024-04-02 11:49:17', '2024-04-02 11:49:17', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2054, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.207', '2024-04-02 11:51:34', '2024-04-02 11:51:34', 'POST', 'April 2, 2024, 7:51 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2055, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:51:51', '2024-04-02 11:51:51', 'GET', 'April 2, 2024, 7:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2056, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:51:53', '2024-04-02 11:51:53', 'GET', 'April 2, 2024, 7:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2057, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:54:02', '2024-04-02 11:54:02', 'GET', 'April 2, 2024, 7:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2058, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:58:02', '2024-04-02 11:58:02', 'GET', 'April 2, 2024, 7:58 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2059, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:59:08', '2024-04-02 11:59:08', 'GET', 'April 2, 2024, 7:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2060, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 11:59:10', '2024-04-02 11:59:10', 'GET', 'April 2, 2024, 7:59 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2061, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '103.131.213.207', '2024-04-02 12:39:39', '2024-04-02 12:39:39', 'POST', 'April 2, 2024, 8:39 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2062, NULL, NULL, NULL, NULL, '2024-04-02 12:39:39', '2024-04-02 12:39:39', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2063, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '103.131.213.207', '2024-04-02 12:39:42', '2024-04-02 12:39:42', 'POST', 'April 2, 2024, 8:39 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2064, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 12:39:58', '2024-04-02 12:39:58', 'GET', 'April 2, 2024, 8:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2065, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 12:40:01', '2024-04-02 12:40:01', 'GET', 'April 2, 2024, 8:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2066, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 12:41:07', '2024-04-02 12:41:07', 'GET', 'April 2, 2024, 8:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2067, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.213.207', '2024-04-02 12:43:38', '2024-04-02 12:43:38', 'GET', 'April 2, 2024, 8:43 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2068, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 12:55:59', '2024-04-02 12:55:59', 'GET', 'April 2, 2024, 8:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2069, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:02:24', '2024-04-02 13:02:24', 'POST', 'April 2, 2024, 9:02 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2070, NULL, NULL, NULL, NULL, '2024-04-02 13:02:24', '2024-04-02 13:02:24', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2071, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:02:27', '2024-04-02 13:02:27', 'POST', 'April 2, 2024, 9:02 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2072, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:02:42', '2024-04-02 13:02:42', 'GET', 'April 2, 2024, 9:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2073, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:02:43', '2024-04-02 13:02:43', 'GET', 'April 2, 2024, 9:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2074, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:03:46', '2024-04-02 13:03:46', 'GET', 'April 2, 2024, 9:03 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2075, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:04:51', '2024-04-02 13:04:51', 'GET', 'April 2, 2024, 9:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2076, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:05:05', '2024-04-02 13:05:05', 'GET', 'April 2, 2024, 9:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2077, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:05:10', '2024-04-02 13:05:10', 'GET', 'April 2, 2024, 9:05 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2078, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:18:34', '2024-04-02 13:18:34', 'GET', 'April 2, 2024, 9:18 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2079, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:20:01', '2024-04-02 13:20:01', 'GET', 'April 2, 2024, 9:20 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2080, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:24:31', '2024-04-02 13:24:31', 'POST', 'April 2, 2024, 9:24 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2081, NULL, NULL, NULL, NULL, '2024-04-02 13:24:31', '2024-04-02 13:24:31', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2082, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:24:33', '2024-04-02 13:24:33', 'POST', 'April 2, 2024, 9:24 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2083, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:25:00', '2024-04-02 13:25:00', 'GET', 'April 2, 2024, 9:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2084, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:25:12', '2024-04-02 13:25:12', 'GET', 'April 2, 2024, 9:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2085, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:25:43', '2024-04-02 13:25:43', 'GET', 'April 2, 2024, 9:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2086, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:31:19', '2024-04-02 13:31:19', 'POST', 'April 2, 2024, 9:31 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2087, NULL, NULL, NULL, NULL, '2024-04-02 13:31:19', '2024-04-02 13:31:19', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2088, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:32:18', '2024-04-02 13:32:18', 'POST', 'April 2, 2024, 9:32 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2089, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:32:37', '2024-04-02 13:32:37', 'GET', 'April 2, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2090, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:32:39', '2024-04-02 13:32:39', 'GET', 'April 2, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2091, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:44:26', '2024-04-02 13:44:26', 'POST', 'April 2, 2024, 9:44 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2092, NULL, NULL, NULL, NULL, '2024-04-02 13:44:26', '2024-04-02 13:44:26', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2093, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:44:28', '2024-04-02 13:44:28', 'POST', 'April 2, 2024, 9:44 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2094, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:44:43', '2024-04-02 13:44:43', 'GET', 'April 2, 2024, 9:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2095, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:44:45', '2024-04-02 13:44:45', 'GET', 'April 2, 2024, 9:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2096, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:45:59', '2024-04-02 13:45:59', 'POST', 'April 2, 2024, 9:45 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2097, NULL, NULL, NULL, NULL, '2024-04-02 13:45:59', '2024-04-02 13:45:59', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2098, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:46:02', '2024-04-02 13:46:02', 'POST', 'April 2, 2024, 9:46 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2099, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:46:21', '2024-04-02 13:46:21', 'GET', 'April 2, 2024, 9:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2100, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:46:24', '2024-04-02 13:46:24', 'GET', 'April 2, 2024, 9:46 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2101, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 13:47:25', '2024-04-02 13:47:25', 'POST', 'April 2, 2024, 9:47 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2102, NULL, NULL, NULL, NULL, '2024-04-02 13:47:25', '2024-04-02 13:47:25', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2103, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 13:47:28', '2024-04-02 13:47:28', 'POST', 'April 2, 2024, 9:47 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2104, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:47:42', '2024-04-02 13:47:42', 'GET', 'April 2, 2024, 9:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2105, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:47:43', '2024-04-02 13:47:43', 'GET', 'April 2, 2024, 9:47 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2106, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:52:26', '2024-04-02 13:52:26', 'GET', 'April 2, 2024, 9:52 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2107, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 13:56:39', '2024-04-02 13:56:39', 'GET', 'April 2, 2024, 9:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2108, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:00:53', '2024-04-02 14:00:53', 'GET', 'April 2, 2024, 10:00 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2109, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:02:15', '2024-04-02 14:02:15', 'GET', 'April 2, 2024, 10:02 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2110, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 14:04:08', '2024-04-02 14:04:08', 'POST', 'April 2, 2024, 10:04 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2111, NULL, NULL, NULL, NULL, '2024-04-02 14:04:08', '2024-04-02 14:04:08', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2112, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 14:04:10', '2024-04-02 14:04:10', 'POST', 'April 2, 2024, 10:04 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2113, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:04:22', '2024-04-02 14:04:22', 'GET', 'April 2, 2024, 10:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2114, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:04:24', '2024-04-02 14:04:24', 'GET', 'April 2, 2024, 10:04 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2115, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 14:06:45', '2024-04-02 14:06:45', 'POST', 'April 2, 2024, 10:06 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2116, NULL, NULL, NULL, NULL, '2024-04-02 14:06:45', '2024-04-02 14:06:45', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2117, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 14:06:59', '2024-04-02 14:06:59', 'POST', 'April 2, 2024, 10:06 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2118, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:07:19', '2024-04-02 14:07:19', 'GET', 'April 2, 2024, 10:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2119, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:07:29', '2024-04-02 14:07:29', 'GET', 'April 2, 2024, 10:07 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2120, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 14:16:42', '2024-04-02 14:16:42', 'POST', 'April 2, 2024, 10:16 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2121, NULL, NULL, NULL, NULL, '2024-04-02 14:16:42', '2024-04-02 14:16:42', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2122, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 14:17:02', '2024-04-02 14:17:02', 'POST', 'April 2, 2024, 10:17 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2123, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:17:14', '2024-04-02 14:17:14', 'GET', 'April 2, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2124, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:17:16', '2024-04-02 14:17:16', 'GET', 'April 2, 2024, 10:17 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2125, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:19:23', '2024-04-02 14:19:23', 'GET', 'April 2, 2024, 10:19 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2126, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:20:27', '2024-04-02 14:20:27', 'GET', 'April 2, 2024, 10:20 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2127, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:22:10', '2024-04-02 14:22:10', 'GET', 'April 2, 2024, 10:22 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2128, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:23:04', '2024-04-02 14:23:04', 'GET', 'April 2, 2024, 10:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2129, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:23:26', '2024-04-02 14:23:26', 'GET', 'April 2, 2024, 10:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2130, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:23:30', '2024-04-02 14:23:30', 'GET', 'April 2, 2024, 10:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2131, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:25:23', '2024-04-02 14:25:23', 'GET', 'April 2, 2024, 10:25 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2132, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:31:25', '2024-04-02 14:31:25', 'GET', 'April 2, 2024, 10:31 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2133, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:33:05', '2024-04-02 14:33:05', 'GET', 'April 2, 2024, 10:33 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2134, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:35:03', '2024-04-02 14:35:03', 'GET', 'April 2, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2135, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:35:55', '2024-04-02 14:35:55', 'GET', 'April 2, 2024, 10:35 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2136, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:36:08', '2024-04-02 14:36:08', 'GET', 'April 2, 2024, 10:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2137, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:37:04', '2024-04-02 14:37:04', 'GET', 'April 2, 2024, 10:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2138, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:37:40', '2024-04-02 14:37:40', 'GET', 'April 2, 2024, 10:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2139, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:40:05', '2024-04-02 14:40:05', 'GET', 'April 2, 2024, 10:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2140, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:41:20', '2024-04-02 14:41:20', 'GET', 'April 2, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2141, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:41:42', '2024-04-02 14:41:42', 'GET', 'April 2, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2142, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:41:42', '2024-04-02 14:41:42', 'GET', 'April 2, 2024, 10:41 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2143, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:44:03', '2024-04-02 14:44:03', 'GET', 'April 2, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2144, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:44:27', '2024-04-02 14:44:27', 'GET', 'April 2, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2145, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 14:44:48', '2024-04-02 14:44:48', 'GET', 'April 2, 2024, 10:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2146, 'https://ohmc.swantech.ae/api/online-license?imei=10855e98bee5b9ba', '{\"imei\":\"10855e98bee5b9ba\"}', NULL, '31.219.157.165', '2024-04-02 15:35:13', '2024-04-02 15:35:13', 'POST', 'April 2, 2024, 11:35 am', NULL, '{\"imei\":\"10855e98bee5b9ba\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2147, NULL, NULL, NULL, NULL, '2024-04-02 15:35:13', '2024-04-02 15:35:13', NULL, NULL, NULL, '{\"imei\":\"10855e98bee5b9ba\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2148, 'https://ohmc.swantech.ae/api/online-license?imei=10855e98bee5b9ba', '{\"imei\":\"10855e98bee5b9ba\"}', NULL, '31.219.157.165', '2024-04-02 15:38:00', '2024-04-02 15:38:00', 'POST', 'April 2, 2024, 11:38 am', NULL, '{\"imei\":\"10855e98bee5b9ba\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2149, NULL, NULL, NULL, NULL, '2024-04-02 15:38:00', '2024-04-02 15:38:00', NULL, NULL, NULL, '{\"imei\":\"10855e98bee5b9ba\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2150, 'https://ohmc.swantech.ae/api/online-license?imei=10855e98bee5b9ba', '{\"imei\":\"10855e98bee5b9ba\"}', NULL, '31.219.157.165', '2024-04-02 15:38:09', '2024-04-02 15:38:09', 'POST', 'April 2, 2024, 11:38 am', NULL, '{\"imei\":\"10855e98bee5b9ba\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2151, NULL, NULL, NULL, NULL, '2024-04-02 15:38:09', '2024-04-02 15:38:09', NULL, NULL, NULL, '{\"imei\":\"10855e98bee5b9ba\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2152, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 15:47:50', '2024-04-02 15:47:50', 'POST', 'April 2, 2024, 11:47 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2153, NULL, NULL, NULL, NULL, '2024-04-02 15:47:50', '2024-04-02 15:47:50', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2154, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 15:47:52', '2024-04-02 15:47:52', 'POST', 'April 2, 2024, 11:47 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2155, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 15:48:11', '2024-04-02 15:48:11', 'POST', 'April 2, 2024, 11:48 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2156, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 15:48:39', '2024-04-02 15:48:39', 'POST', 'April 2, 2024, 11:48 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2157, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 15:50:16', '2024-04-02 15:50:16', 'POST', 'April 2, 2024, 11:50 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2158, NULL, NULL, NULL, NULL, '2024-04-02 15:50:16', '2024-04-02 15:50:16', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2159, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 15:50:18', '2024-04-02 15:50:18', 'POST', 'April 2, 2024, 11:50 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2160, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-02 15:50:36', '2024-04-02 15:50:36', 'POST', 'April 2, 2024, 11:50 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2161, NULL, NULL, NULL, NULL, '2024-04-02 15:50:36', '2024-04-02 15:50:36', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2162, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-02 15:50:39', '2024-04-02 15:50:39', 'POST', 'April 2, 2024, 11:50 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2163, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:50:59', '2024-04-02 15:50:59', 'GET', 'April 2, 2024, 11:50 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2164, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:51:03', '2024-04-02 15:51:03', 'GET', 'April 2, 2024, 11:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2165, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:51:41', '2024-04-02 15:51:41', 'GET', 'April 2, 2024, 11:51 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2166, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:53:34', '2024-04-02 15:53:34', 'GET', 'April 2, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2167, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:53:45', '2024-04-02 15:53:45', 'GET', 'April 2, 2024, 11:53 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2168, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:54:03', '2024-04-02 15:54:03', 'GET', 'April 2, 2024, 11:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2169, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:54:14', '2024-04-02 15:54:14', 'GET', 'April 2, 2024, 11:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2170, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:54:28', '2024-04-02 15:54:28', 'GET', 'April 2, 2024, 11:54 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2171, 'https://ohmc.swantech.ae/api/online-license?imei=10855e98bee5b9ba', '{\"imei\":\"10855e98bee5b9ba\"}', NULL, '31.219.157.165', '2024-04-02 15:55:09', '2024-04-02 15:55:09', 'POST', 'April 2, 2024, 11:55 am', NULL, '{\"imei\":\"10855e98bee5b9ba\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2172, NULL, NULL, NULL, NULL, '2024-04-02 15:55:09', '2024-04-02 15:55:09', NULL, NULL, NULL, '{\"imei\":\"10855e98bee5b9ba\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2173, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=10855e98bee5b9ba&license_key=7074f94a77fc733ba9c71d683aefedb7c7dda3b0', '{\"imei\":\"10855e98bee5b9ba\",\"license_key\":\"7074f94a77fc733ba9c71d683aefedb7c7dda3b0\"}', NULL, '31.219.157.165', '2024-04-02 15:55:11', '2024-04-02 15:55:11', 'POST', 'April 2, 2024, 11:55 am', NULL, '{\"imei\":\"10855e98bee5b9ba\",\"license_key\":\"7074f94a77fc733ba9c71d683aefedb7c7dda3b0\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2174, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 15:55:21', '2024-04-02 15:55:21', 'GET', 'April 2, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2175, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 15:55:35', '2024-04-02 15:55:35', 'GET', 'April 2, 2024, 11:55 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2176, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:02:43', '2024-04-02 16:02:43', 'GET', 'April 2, 2024, 12:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2177, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:03:09', '2024-04-02 16:03:09', 'GET', 'April 2, 2024, 12:03 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2178, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 16:06:54', '2024-04-02 16:06:54', 'GET', 'April 2, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2179, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 16:06:55', '2024-04-02 16:06:55', 'GET', 'April 2, 2024, 12:06 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2180, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:12:25', '2024-04-02 16:12:25', 'GET', 'April 2, 2024, 12:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2181, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-02 16:12:57', '2024-04-02 16:12:57', 'GET', 'April 2, 2024, 12:12 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2182, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:14:16', '2024-04-02 16:14:16', 'GET', 'April 2, 2024, 12:14 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2183, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:15:02', '2024-04-02 16:15:02', 'GET', 'April 2, 2024, 12:15 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2184, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:17:06', '2024-04-02 16:17:06', 'GET', 'April 2, 2024, 12:17 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2185, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:17:28', '2024-04-02 16:17:28', 'GET', 'April 2, 2024, 12:17 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2186, 'https://ohmc.swantech.ae/api/check-device-status/19', '[]', NULL, '31.219.157.165', '2024-04-02 16:19:01', '2024-04-02 16:19:01', 'GET', 'April 2, 2024, 12:19 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2187, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '103.131.212.212', '2024-04-03 07:21:24', '2024-04-03 07:21:24', 'GET', 'April 3, 2024, 3:21 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2188, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-03 09:11:18', '2024-04-03 09:11:18', 'GET', 'April 3, 2024, 5:11 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2189, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-03 12:57:04', '2024-04-03 12:57:04', 'GET', 'April 3, 2024, 8:57 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2190, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-04 13:23:37', '2024-04-04 13:23:37', 'POST', 'April 4, 2024, 9:23 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2191, NULL, NULL, NULL, NULL, '2024-04-04 13:23:37', '2024-04-04 13:23:38', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2192, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-04 13:23:39', '2024-04-04 13:23:39', 'POST', 'April 4, 2024, 9:23 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2193, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-04 13:23:41', '2024-04-04 13:23:41', 'POST', 'April 4, 2024, 9:23 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2194, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-04 13:23:57', '2024-04-04 13:23:57', 'GET', 'April 4, 2024, 9:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2195, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-04 13:23:59', '2024-04-04 13:23:59', 'GET', 'April 4, 2024, 9:23 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2196, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-04 13:30:34', '2024-04-04 13:30:34', 'GET', 'April 4, 2024, 9:30 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2197, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-04 13:32:01', '2024-04-04 13:32:01', 'GET', 'April 4, 2024, 9:32 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2198, 'https://ohmc.swantech.ae/api/online-license?imei=8f98a49d4de54f38', '{\"imei\":\"8f98a49d4de54f38\"}', NULL, '137.59.231.225', '2024-04-04 13:39:53', '2024-04-04 13:39:53', 'POST', 'April 4, 2024, 9:39 am', NULL, '{\"imei\":\"8f98a49d4de54f38\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2199, NULL, NULL, NULL, NULL, '2024-04-04 13:39:53', '2024-04-04 13:39:53', NULL, NULL, NULL, '{\"imei\":\"8f98a49d4de54f38\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2200, 'https://ohmc.swantech.ae/api/android-device-online-license?imei=8f98a49d4de54f38&license_key=04c799e911ec9d5af1be651ba8414f7d901a4f3a', '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, '137.59.231.225', '2024-04-04 13:40:00', '2024-04-04 13:40:00', 'POST', 'April 4, 2024, 9:40 am', NULL, '{\"imei\":\"8f98a49d4de54f38\",\"license_key\":\"04c799e911ec9d5af1be651ba8414f7d901a4f3a\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2201, 'https://ohmc.swantech.ae/api/check-device-status/4', '[]', NULL, '137.59.231.225', '2024-04-04 13:40:12', '2024-04-04 13:40:12', 'GET', 'April 4, 2024, 9:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2202, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 09:19:16', '2024-04-25 09:19:16', 'GET', 'April 25, 2024, 10:19 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2203, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 09:21:12', '2024-04-25 09:21:12', 'GET', 'April 25, 2024, 10:21 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2204, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 09:21:29', '2024-04-25 09:21:29', 'GET', 'April 25, 2024, 10:21 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2205, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 09:22:22', '2024-04-25 09:22:22', 'GET', 'April 25, 2024, 10:22 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2206, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 09:22:45', '2024-04-25 09:22:45', 'GET', 'April 25, 2024, 10:22 am', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2207, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 11:26:42', '2024-04-25 11:26:42', 'GET', 'April 25, 2024, 12:26 pm', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2208, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 11:28:49', '2024-04-25 11:28:49', 'GET', 'April 25, 2024, 12:28 pm', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2209, 'http://127.0.0.1:8000/api/devices', '[]', NULL, '127.0.0.1', '2024-04-25 11:29:33', '2024-04-25 11:29:33', 'GET', 'April 25, 2024, 12:29 pm', NULL, '[]', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `ds` varbinary(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `ds`) VALUES
(1, 0x70565a8885cfb7be195792bcc4f383e8);

-- --------------------------------------------------------

--
-- Table structure for table `socket_message_logs`
--

CREATE TABLE `socket_message_logs` (
  `id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `message_content` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `staff_id` varchar(191) NOT NULL,
  `content_type` varchar(50) DEFAULT 'image',
  `staff_background_content` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `background_stay_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `organization_id`, `name`, `staff_id`, `content_type`, `staff_background_content`, `created_at`, `updated_at`, `background_stay_time`) VALUES
(1, 6, 'Shaheer', '1003', 'image', '/uploads/images/48711_1680866111.jpg', '2024-03-22 14:33:50', '2024-03-22 15:56:26', 20),
(2, 6, 'Shaheer 2', '1002', 'image', '/uploads/images/14579_1680866135.jpg', '2024-03-22 14:34:11', '2024-03-22 14:34:11', 20),
(3, 6, 'Talha', 'S1116', 'image', '/uploads/images/36274_1707843971.png', '2024-03-22 14:34:24', '2024-04-01 13:02:38', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `is_super` tinyint(1) DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `organization_id`, `name`, `avatar`, `email`, `is_super`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'SHAHEER', NULL, 'shaheer@gmail.com', NULL, NULL, '$2y$10$RAEZ27qGJKhu/i0Riy28aOe52L.S6Cvtqq0.k9C5h.dq3hRJVWdJW', NULL, '2022-09-06 19:55:02', '2022-12-09 15:00:23'),
(2, 4, 'jackys - Demo', NULL, 'jackys@jackys.com', 1, NULL, '$2y$10$CdQUuUJko0S.F23ZepRDo.OCDD.ljAdwBMZ0KfSaTtPHUoVGn/ptO', NULL, '2022-10-19 18:14:17', '2022-10-19 18:19:34'),
(3, 5, 'sib', NULL, 'sib@admin.com', 1, NULL, '$2y$10$aAf79mRE70j5jYkQVT3dcOqKFuL8UFuG/j.keEoUvlv5FeXDXbajG', NULL, '2022-10-19 18:17:21', '2022-10-19 18:17:21'),
(5, 3, 'shaheer@gmail.com', 'assets/media/avatar/1.png', 'admin@admin.com', NULL, NULL, '$2y$10$P28TkyKBSb94RSTQbD0IJeHeH7CU144VfxdH0fcWO19SzrQ6.HzIq', NULL, '2023-01-17 13:14:40', '2023-01-17 13:23:47'),
(7, 3, 'New User', 'assets/media/avatar/1.png', 'abc@gmail.com', 0, NULL, '$2y$10$l8iJGiM74H6wxugrAKki4eLY5fKGF1mzU0OZbewzsh7sEyWZMAdVi', NULL, '2023-04-12 08:17:25', '2023-04-12 08:17:25'),
(8, 6, 'centerstage', NULL, 'centerstage@gmail.com', 1, NULL, '$2y$10$HF4uTjog4kiXl4Z14JD8Y.1U5oDbRMQaTSWKIMSzs2n.nw.pPius2', NULL, '2024-02-08 13:43:12', '2024-02-08 13:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `organization_id`, `name`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'United Arab Emirates', 'united-arab-emirates', NULL, '2022-09-06 20:06:35', '2022-09-06 20:06:35'),
(2, 3, 'Qatar', 'qatar', '2022-10-19 17:46:03', '2022-10-19 17:45:40', '2022-10-19 17:46:03'),
(3, 3, 'Qatar', 'qatar', NULL, '2022-10-19 18:52:22', '2022-10-19 18:52:22'),
(4, 6, 'UAE', 'uae', NULL, '2024-02-08 13:44:57', '2024-02-08 13:44:57'),
(5, 6, 'New Zone', 'new-zone', NULL, '2024-03-13 11:31:16', '2024-03-13 11:31:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_queues`
--
ALTER TABLE `action_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supper_admins_email_unique` (`email`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_groups`
--
ALTER TABLE `device_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_play_list`
--
ALTER TABLE `device_play_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_templates`
--
ALTER TABLE `device_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_template_asssets`
--
ALTER TABLE `device_template_asssets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_template_data`
--
ALTER TABLE `device_template_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imeis`
--
ALTER TABLE `imeis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `json_templates`
--
ALTER TABLE `json_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_settings`
--
ALTER TABLE `md_settings`
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
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_assets`
--
ALTER TABLE `playlist_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_lists`
--
ALTER TABLE `play_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play_list_templates`
--
ALTER TABLE `play_list_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qms_webhooks`
--
ALTER TABLE `qms_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
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
-- Indexes for table `sas`
--
ALTER TABLE `sas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_logs`
--
ALTER TABLE `service_logs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `ip` (`ip`) USING BTREE,
  ADD KEY `created_at` (`created_at`) USING BTREE,
  ADD KEY `updated_at` (`updated_at`) USING BTREE,
  ADD KEY `method` (`method`) USING BTREE,
  ADD KEY `call_time` (`call_time`) USING BTREE,
  ADD KEY `duration` (`duration`) USING BTREE,
  ADD KEY `log_type` (`log_type`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socket_message_logs`
--
ALTER TABLE `socket_message_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_queues`
--
ALTER TABLE `action_queues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `device_groups`
--
ALTER TABLE `device_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `device_play_list`
--
ALTER TABLE `device_play_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `device_templates`
--
ALTER TABLE `device_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `device_template_asssets`
--
ALTER TABLE `device_template_asssets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `device_template_data`
--
ALTER TABLE `device_template_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `imeis`
--
ALTER TABLE `imeis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `json_templates`
--
ALTER TABLE `json_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_settings`
--
ALTER TABLE `md_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `playlist_assets`
--
ALTER TABLE `playlist_assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `play_lists`
--
ALTER TABLE `play_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `play_list_templates`
--
ALTER TABLE `play_list_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qms_webhooks`
--
ALTER TABLE `qms_webhooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=992;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sas`
--
ALTER TABLE `sas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_logs`
--
ALTER TABLE `service_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2210;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socket_message_logs`
--
ALTER TABLE `socket_message_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
