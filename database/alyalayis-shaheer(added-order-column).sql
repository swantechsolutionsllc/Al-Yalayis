-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 10:23 AM
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
-- Database: `alyalayis`
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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action_queues`
--

INSERT INTO `action_queues` (`id`, `device_id`, `event`, `requested_at`, `started_at`, `completed_at`, `created_at`, `updated_at`, `order`) VALUES
(1, 1, 'update-content', '2024-06-27 07:38:17', NULL, NULL, '2024-06-27 07:38:17', '2024-06-27 07:38:17', 1),
(2, 2, 'update-content', NULL, NULL, NULL, '2024-06-27 07:38:17', '2024-06-27 07:38:17', 2),
(3, 3, 'update-content', NULL, NULL, NULL, '2024-06-27 07:38:17', '2024-06-27 07:38:17', 3);

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
(1, 1, 1, 'zones', 'created', 'A New Zone Added with name United Arab Emirates', '2024-06-10 10:47:13', '2024-06-10 10:47:13'),
(2, 1, 1, 'branches', 'created', 'A New Branch Added with name Dubai', '2024-06-10 10:47:29', '2024-06-10 10:47:29'),
(3, 1, 1, 'device-groups', 'created', 'A New Device Group Added with name EK Facilities', '2024-06-10 10:47:37', '2024-06-10 10:47:37'),
(4, 1, 1, 'device-template-data', 'created', 'A New Template Added with name Emirates Facilities Template', '2024-06-10 10:56:09', '2024-06-10 10:56:09'),
(5, 1, 1, 'device-template-data', 'updated', 'N/A', '2024-06-10 11:37:46', '2024-06-10 11:37:46'),
(6, 1, 1, 'device-template-data', 'updated', 'N/A', '2024-06-10 12:03:36', '2024-06-10 12:03:36'),
(7, 1, 1, 'device-template-data', 'created', 'A New Template Added with name Al Yalayis Template', '2024-06-24 08:15:26', '2024-06-24 08:15:26'),
(8, 1, 1, 'device-template-data', 'updated', 'N/A', '2024-06-24 08:17:35', '2024-06-24 08:17:35');

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
(1, 1, 1, 'Dubai', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-10 10:47:29', '2024-06-10 10:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `cd_settings`
--

CREATE TABLE `cd_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `ticket_color` varchar(191) NOT NULL,
  `counter_number_color` varchar(191) NOT NULL,
  `ticket_blinking_color` varchar(191) NOT NULL,
  `ticket_font_size` varchar(191) NOT NULL,
  `counter_number_font_size` varchar(191) NOT NULL,
  `service_name_color` varchar(191) NOT NULL,
  `service_font_size` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 1, 1, 'Dubai', 'dubai', NULL, '2024-05-20 11:48:32', '2024-05-20 11:48:32');

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
  `total_pings` int(11) NOT NULL DEFAULT 0,
  `md_counters` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `organization_id`, `zone_id`, `city_id`, `branch_id`, `device_group_id`, `device_orientation`, `device_name`, `device_type`, `ip_address`, `device_uid`, `device_no`, `device_mac_address`, `device_model`, `device_description`, `device_screen_height`, `device_screen_width`, `device_storage_memory`, `screen_resolution`, `deleted_at`, `status`, `created_at`, `updated_at`, `is_online`, `current_running_asset`, `memory_status`, `last_content_update_sent`, `content_download_completed_at`, `content_download_status`, `application_installed`, `socket_token`, `ticket_color`, `qms_name`, `counter_no_color`, `ticket_no_blinking_color`, `ticket_no_font_size`, `counter_no_font_size`, `qms_port_no`, `background_content`, `content_type`, `is_staff_logged_in`, `loggedin_staff_id`, `setting_id`, `content_download_page`, `total_pings`, `md_counters`) VALUES
(1, 1, 1, 1, 1, 1, 'landscape', 'Counter Display 1', 'cd', '192.168.0.111', NULL, 'f9fbf04e81fdc879', 'd9c9d3c1962d112497bf15a8a8b57d9799f9637c', 'TX3 DSS', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 10:53:16', '2024-06-27 08:22:50', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '#ffffff', '1', '#ffffff', '#ff0000', '255', '250', '1051', '/uploads/images/96230_1719216849.png', 'image', 0, NULL, NULL, '0', 233, NULL),
(2, 1, 1, 1, 1, 1, 'landscape', 'Counter Display 2', 'cd', '192.168.0.103', NULL, '47dcb8a33de9b12d', '636581815c291aa58be002c6b0ccc8eae317d82c', 'TX3 DSS', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 10:54:05', '2024-06-27 08:22:50', 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '#ffffff', '2', '#ffffff', '#ff0000', '350', '250', '1051', '/uploads/images/96230_1719216849.png', 'image', 0, NULL, NULL, '0', 233, NULL),
(3, 1, 1, 1, 1, 1, 'landscape', 'Main Display 1', 'md', '192.168.0.113', NULL, 'f800754e6677aeb9', '6c321a346b4e5e1b8c01edad6643910729666d41', 'TX3 DSS', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-10 10:55:20', '2024-06-27 08:22:50', 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, '#000000', NULL, '#000000', '#000000', NULL, NULL, '1051', NULL, 'image', 0, NULL, NULL, '0', 106, NULL);

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
(1, 1, 1, 'EK Facilities', 'ek-facilities', NULL, '2024-06-10 10:47:37', '2024-06-10 10:47:37');

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
(1, 3, 1);

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
(48, 'template_48', 1, 1, 1, 1, 1, 0, 'template_images/48.jpeg', 0, NULL, NULL, 36, 1, 1),
(49, 'template_49', 1, 1, 1, 1, 1, 0, 'template_images/49.jpeg', 0, NULL, NULL, 36, 1, 1);

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
(7, 1, 1, '/uploads/videos/72097_1719216871.mp4', 'video', '1', '2024-06-24 08:17:36', '2024-06-24 08:17:36');

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
(1, 'Al Yalayis Template', '/uploads/images/83665_1719216824.png', 'Welcome to Al Yalayis Government Transaction Center', 1, 49, NULL, 0, 2, 1, 'video', '2024-06-24 08:15:26', '2024-06-24 08:17:35');

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
(1, '/uploads/images/thumbs/thumb_17192168249324.png', '/uploads/images/83665_1719216824.png', 'header.png', 'image', '33.94 KB', '1080 x 183', NULL, '2024-06-24 08:13:44', '2024-06-24 08:13:44'),
(2, '/uploads/images/thumbs/thumb_17192168294817.jpg', '/uploads/images/50042_1719216830.jpg', 'om.jpg', 'image', '238.48 KB', '768 x 768', NULL, '2024-06-24 08:13:50', '2024-06-24 08:13:50'),
(3, '/uploads/images/thumbs/thumb_17192168489690.png', '/uploads/images/15180_1719216848.png', 'CD_1920x1080 - Amer.png', 'image', '1.22 MB', '1920 x 1080', NULL, '2024-06-24 08:14:08', '2024-06-24 08:14:08'),
(4, '/uploads/images/thumbs/thumb_17192168494342.png', '/uploads/images/96230_1719216849.png', 'CD_1920x1080 - DED_01.png', 'image', '1.16 MB', '1920 x 1080', NULL, '2024-06-24 08:14:09', '2024-06-24 08:14:09'),
(5, 'uploads/videos/thumbs/thumb_25873_1719216871.png', '/uploads/videos/72097_1719216871.mp4', 'Alyalayis video.mp4', 'video', '27.95 MB', 'N/A', 92, '2024-06-24 08:14:37', '2024-06-24 08:14:37');

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
(1, 'f9fbf04e81fdc879', 'd9c9d3c1962d112497bf15a8a8b57d9799f9637c', '1735156800', 'Online', '2024-06-10 10:48:09', '2024-06-27 07:32:55'),
(2, '47dcb8a33de9b12d', '636581815c291aa58be002c6b0ccc8eae317d82c', '1732737600', 'Online', '2024-06-10 10:48:53', '2024-06-10 10:48:53'),
(3, 'f800754e6677aeb9', '6c321a346b4e5e1b8c01edad6643910729666d41', '1727899200', 'Online', '2024-06-10 10:49:25', '2024-06-27 07:25:24'),
(4, 'f800754e6677aeb9', '77d55fe59e2ef21ef4bc5d550bf0d92f2efecf3e', '1727294400', 'Online', '2024-06-27 07:24:17', '2024-06-27 07:24:17');

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
-- Table structure for table `main_display_counter`
--

CREATE TABLE `main_display_counter` (
  `id` int(11) NOT NULL,
  `main_display` int(11) NOT NULL,
  `counter_display` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_display_counter`
--

INSERT INTO `main_display_counter` (`id`, `main_display`, `counter_display`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2024-06-27 07:25:42', NULL),
(4, 3, 2, '2024-06-27 07:25:43', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, 'App\\User', 8),
(9, 'App\\User', 1);

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
(1, 'EK', 'ek', '/uploads/organizations/logos/664b3472b2b10_logo.jpeg', 229, '2024-05-20 11:30:58', '2024-05-20 11:30:58');

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
(1, 1, 7, 92, '2024-06-24 08:18:01', NULL);

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
(1, 'Al Yalayis 1', 1, 1, '2024-06-24 08:17:56', '2024-06-24 08:18:06');

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
(1, '\"downloadStatus,2,100\"', '2024-06-24 08:40:11', '2024-06-24 08:40:11');

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
(8, 6, 'Administrator', 'web', '2024-02-08 13:43:28', '2024-02-08 13:43:28'),
(9, 1, 'Administrator', 'web', '2024-05-20 11:31:09', '2024-05-20 11:31:09');

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
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(9, 9),
(10, 9),
(11, 9),
(12, 9),
(13, 9),
(14, 9),
(15, 9),
(16, 9),
(17, 9),
(18, 9),
(19, 9),
(20, 9),
(21, 9),
(22, 9),
(23, 9),
(24, 9),
(25, 9),
(26, 9),
(27, 9),
(28, 9),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 9);

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
(1, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 10:47:50', '2024-06-10 10:47:50', 'POST', 'June 10, 2024, 10:47 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, '2024-06-10 10:47:50', '2024-06-10 10:47:50', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(3, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d', '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, '192.168.0.103', '2024-06-10 10:48:31', '2024-06-10 10:48:31', 'POST', 'June 10, 2024, 10:48 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, '2024-06-10 10:48:31', '2024-06-10 10:48:31', NULL, NULL, NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(5, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7', '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, '192.168.0.108', '2024-06-10 10:49:08', '2024-06-10 10:49:08', 'POST', 'June 10, 2024, 10:49 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, '2024-06-10 10:49:08', '2024-06-10 10:49:08', NULL, NULL, NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(7, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 10:57:35', '2024-06-10 10:57:35', 'POST', 'June 10, 2024, 10:57 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, '2024-06-10 10:57:35', '2024-06-10 10:57:35', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(9, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d', '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, '192.168.0.103', '2024-06-10 10:57:40', '2024-06-10 10:57:40', 'POST', 'June 10, 2024, 10:57 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, '2024-06-10 10:57:40', '2024-06-10 10:57:40', NULL, NULL, NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(11, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 10:59:14', '2024-06-10 10:59:14', 'POST', 'June 10, 2024, 10:59 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, '2024-06-10 10:59:14', '2024-06-10 10:59:14', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(13, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7', '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, '192.168.0.108', '2024-06-10 10:59:43', '2024-06-10 10:59:43', 'POST', 'June 10, 2024, 10:59 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, '2024-06-10 10:59:43', '2024-06-10 10:59:43', NULL, NULL, NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(15, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 11:00:23', '2024-06-10 11:00:23', 'POST', 'June 10, 2024, 11:00 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, '2024-06-10 11:00:23', '2024-06-10 11:00:23', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(17, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:06:14', '2024-06-10 11:06:14', 'POST', 'June 10, 2024, 11:06 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, '2024-06-10 11:06:14', '2024-06-10 11:06:14', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(19, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:06:47', '2024-06-10 11:06:47', 'POST', 'June 10, 2024, 11:06 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, '2024-06-10 11:06:47', '2024-06-10 11:06:47', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(21, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:08:05', '2024-06-10 11:08:05', 'POST', 'June 10, 2024, 11:08 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, '2024-06-10 11:08:05', '2024-06-10 11:08:05', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(23, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:08:17', '2024-06-10 11:08:17', 'POST', 'June 10, 2024, 11:08 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, '2024-06-10 11:08:17', '2024-06-10 11:08:17', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(25, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 11:08:25', '2024-06-10 11:08:25', 'POST', 'June 10, 2024, 11:08 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, '2024-06-10 11:08:25', '2024-06-10 11:08:25', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(27, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d', '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, '192.168.0.103', '2024-06-10 11:09:05', '2024-06-10 11:09:05', 'POST', 'June 10, 2024, 11:09 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, '2024-06-10 11:09:05', '2024-06-10 11:09:05', NULL, NULL, NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(29, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c', '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, '192.168.0.103', '2024-06-10 11:09:07', '2024-06-10 11:09:07', 'POST', 'June 10, 2024, 11:09 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(30, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=91f789b6afbde5da&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c', '{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, '192.168.0.106', '2024-06-10 11:09:10', '2024-06-10 11:09:10', 'POST', 'June 10, 2024, 11:09 am', NULL, '{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(31, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7', '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, '192.168.0.108', '2024-06-10 11:09:21', '2024-06-10 11:09:21', 'POST', 'June 10, 2024, 11:09 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, '2024-06-10 11:09:21', '2024-06-10 11:09:21', NULL, NULL, NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(33, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=ab6ff943a84e56d7&license_key=6c321a346b4e5e1b8c01edad6643910729666d41', '{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, '192.168.0.108', '2024-06-10 11:09:23', '2024-06-10 11:09:23', 'POST', 'June 10, 2024, 11:09 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(34, 'http://192.168.0.104:8080/EK/public/api/zones', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:27', '2024-06-10 11:09:27', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(35, 'http://192.168.0.104:8080/EK/public/api/cities', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:27', '2024-06-10 11:09:27', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(36, 'http://192.168.0.104:8080/EK/public/api/branches', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:27', '2024-06-10 11:09:27', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(37, 'http://192.168.0.104:8080/EK/public/api/devices', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:28', '2024-06-10 11:09:28', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(38, 'http://192.168.0.104:8080/EK/public/api/device-groups', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:28', '2024-06-10 11:09:28', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(39, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 11:09:41', '2024-06-10 11:09:41', 'GET', 'June 10, 2024, 11:09 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(40, 'http://192.168.0.104:8080/EK/public/api/counter-content/1', '[]', NULL, '192.168.0.106', '2024-06-10 11:37:54', '2024-06-10 11:37:54', 'GET', 'June 10, 2024, 11:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(41, 'http://192.168.0.104:8080/EK/public/api/counter-content/1', '[]', NULL, '192.168.0.106', '2024-06-10 11:39:44', '2024-06-10 11:39:44', 'GET', 'June 10, 2024, 11:39 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(42, 'http://192.168.0.104:8080/EK/public/api/counter-content/1', '[]', NULL, '192.168.0.106', '2024-06-10 11:40:57', '2024-06-10 11:40:57', 'GET', 'June 10, 2024, 11:40 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(43, 'http://192.168.0.104:8080/EK/public/api/counter-content/2', '[]', NULL, '192.168.0.103', '2024-06-10 11:44:04', '2024-06-10 11:44:04', 'GET', 'June 10, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(44, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 11:44:48', '2024-06-10 11:44:48', 'GET', 'June 10, 2024, 11:44 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(45, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c', '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, '192.168.0.103', '2024-06-10 11:45:25', '2024-06-10 11:45:25', 'POST', 'June 10, 2024, 11:45 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(46, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:49:27', '2024-06-10 11:49:27', 'POST', 'June 10, 2024, 11:49 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, '2024-06-10 11:49:27', '2024-06-10 11:49:27', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(48, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.104', '2024-06-10 11:51:46', '2024-06-10 11:51:46', 'POST', 'June 10, 2024, 11:51 am', NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', NULL, 'PostmanRuntime/7.37.3', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, '2024-06-10 11:51:46', '2024-06-10 11:51:46', NULL, NULL, NULL, '{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(50, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da', '{\"imei\":\"91f789b6afbde5da\"}', NULL, '192.168.0.106', '2024-06-10 11:53:07', '2024-06-10 11:53:07', 'POST', 'June 10, 2024, 11:53 am', NULL, '{\"imei\":\"91f789b6afbde5da\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, '2024-06-10 11:53:07', '2024-06-10 11:53:07', NULL, NULL, NULL, '{\"imei\":\"91f789b6afbde5da\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(52, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=91f789b6afbde5da&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c', '{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, '192.168.0.106', '2024-06-10 11:53:10', '2024-06-10 11:53:10', 'POST', 'June 10, 2024, 11:53 am', NULL, '{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(53, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d', '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, '192.168.0.103', '2024-06-10 11:53:57', '2024-06-10 11:53:57', 'POST', 'June 10, 2024, 11:53 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, '2024-06-10 11:53:57', '2024-06-10 11:53:57', NULL, NULL, NULL, '{\"imei\":\"47dcb8a33de9b12d\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(55, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c', '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, '192.168.0.103', '2024-06-10 11:53:59', '2024-06-10 11:53:59', 'POST', 'June 10, 2024, 11:53 am', NULL, '{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(56, 'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7', '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, '192.168.0.108', '2024-06-10 11:55:45', '2024-06-10 11:55:45', 'POST', 'June 10, 2024, 11:55 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, '2024-06-10 11:55:45', '2024-06-10 11:55:45', NULL, NULL, NULL, '{\"imei\":\"ab6ff943a84e56d7\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(58, 'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=ab6ff943a84e56d7&license_key=6c321a346b4e5e1b8c01edad6643910729666d41', '{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, '192.168.0.108', '2024-06-10 11:55:55', '2024-06-10 11:55:55', 'POST', 'June 10, 2024, 11:55 am', NULL, '{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(59, 'http://192.168.0.104:8080/EK/public/api/zones', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:01', '2024-06-10 11:56:01', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(60, 'http://192.168.0.104:8080/EK/public/api/cities', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:01', '2024-06-10 11:56:01', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(61, 'http://192.168.0.104:8080/EK/public/api/branches', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:01', '2024-06-10 11:56:01', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(62, 'http://192.168.0.104:8080/EK/public/api/device-groups', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:01', '2024-06-10 11:56:01', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(63, 'http://192.168.0.104:8080/EK/public/api/devices', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:01', '2024-06-10 11:56:01', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(64, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 11:56:18', '2024-06-10 11:56:18', 'GET', 'June 10, 2024, 11:56 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(65, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 12:02:39', '2024-06-10 12:02:39', 'GET', 'June 10, 2024, 12:02 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(66, 'http://192.168.0.104:8080/EK/public/api/counter-content/1', '[]', NULL, '192.168.0.106', '2024-06-10 12:04:08', '2024-06-10 12:04:08', 'GET', 'June 10, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(67, 'http://192.168.0.104:8080/EK/public/api/counter-content/2', '[]', NULL, '192.168.0.103', '2024-06-10 12:04:10', '2024-06-10 12:04:10', 'GET', 'June 10, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(68, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 12:04:13', '2024-06-10 12:04:13', 'GET', 'June 10, 2024, 12:04 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(69, 'http://192.168.0.104:8080/EK/public/api/counter-content/1', '[]', NULL, '192.168.0.106', '2024-06-10 12:10:12', '2024-06-10 12:10:12', 'GET', 'June 10, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(70, 'http://192.168.0.104:8080/EK/public/api/counter-content/2', '[]', NULL, '192.168.0.103', '2024-06-10 12:10:14', '2024-06-10 12:10:14', 'GET', 'June 10, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(71, 'http://192.168.0.104:8080/EK/public/api/playlist/3', '[]', NULL, '192.168.0.108', '2024-06-10 12:10:17', '2024-06-10 12:10:17', 'GET', 'June 10, 2024, 12:10 pm', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(72, 'http://192.168.0.100:8000/api/online-license?imei=f800754e6677aeb9', '{\"imei\":\"f800754e6677aeb9\"}', NULL, '192.168.0.113', '2024-06-27 07:22:56', '2024-06-27 07:22:56', 'POST', 'June 27, 2024, 7:22 am', NULL, '{\"imei\":\"f800754e6677aeb9\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, '2024-06-27 07:22:58', '2024-06-27 07:22:58', NULL, NULL, NULL, '{\"imei\":\"f800754e6677aeb9\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(74, 'http://192.168.0.100:8000/api/online-license?imei=f800754e6677aeb9', '{\"imei\":\"f800754e6677aeb9\"}', NULL, '192.168.0.113', '2024-06-27 07:26:29', '2024-06-27 07:26:29', 'POST', 'June 27, 2024, 7:26 am', NULL, '{\"imei\":\"f800754e6677aeb9\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, '2024-06-27 07:26:30', '2024-06-27 07:26:30', NULL, NULL, NULL, '{\"imei\":\"f800754e6677aeb9\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(76, 'http://192.168.0.100:8000/api/android-device-online-license?imei=f800754e6677aeb9&license_key=6c321a346b4e5e1b8c01edad6643910729666d41', '{\"imei\":\"f800754e6677aeb9\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, '192.168.0.113', '2024-06-27 07:26:31', '2024-06-27 07:26:31', 'POST', 'June 27, 2024, 7:26 am', NULL, '{\"imei\":\"f800754e6677aeb9\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(77, 'http://192.168.0.100:8000/api/zones', '[]', NULL, '192.168.0.113', '2024-06-27 07:26:37', '2024-06-27 07:26:37', 'GET', 'June 27, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(78, 'http://192.168.0.100:8000/api/cities', '[]', NULL, '192.168.0.113', '2024-06-27 07:26:37', '2024-06-27 07:26:37', 'GET', 'June 27, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(79, 'http://192.168.0.100:8000/api/branches', '[]', NULL, '192.168.0.113', '2024-06-27 07:26:37', '2024-06-27 07:26:37', 'GET', 'June 27, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(80, 'http://192.168.0.100:8000/api/device-groups', '[]', NULL, '192.168.0.113', '2024-06-27 07:26:38', '2024-06-27 07:26:38', 'GET', 'June 27, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(81, 'http://192.168.0.100:8000/api/devices', '[]', NULL, '192.168.0.113', '2024-06-27 07:26:38', '2024-06-27 07:26:38', 'GET', 'June 27, 2024, 7:26 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(82, 'http://192.168.0.100:8000/api/playlist/3', '[]', NULL, '192.168.0.113', '2024-06-27 07:27:04', '2024-06-27 07:27:04', 'GET', 'June 27, 2024, 7:27 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(83, 'http://192.168.0.100:8000/api/online-license?imei=f9fbf04e81fdc879', '{\"imei\":\"f9fbf04e81fdc879\"}', NULL, '192.168.0.111', '2024-06-27 07:32:08', '2024-06-27 07:32:08', 'POST', 'June 27, 2024, 7:32 am', NULL, '{\"imei\":\"f9fbf04e81fdc879\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, '2024-06-27 07:32:09', '2024-06-27 07:32:09', NULL, NULL, NULL, '{\"imei\":\"f9fbf04e81fdc879\"}', 'Lisence Not Found against this IMEI', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(85, 'http://192.168.0.100:8000/api/online-license?imei=f9fbf04e81fdc879', '{\"imei\":\"f9fbf04e81fdc879\"}', NULL, '192.168.0.111', '2024-06-27 07:33:10', '2024-06-27 07:33:10', 'POST', 'June 27, 2024, 7:33 am', NULL, '{\"imei\":\"f9fbf04e81fdc879\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, '2024-06-27 07:33:10', '2024-06-27 07:33:10', NULL, NULL, NULL, '{\"imei\":\"f9fbf04e81fdc879\"}', 'Lisence Found', NULL, NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(87, 'http://192.168.0.100:8000/api/android-device-online-license?imei=f9fbf04e81fdc879&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c', '{\"imei\":\"f9fbf04e81fdc879\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, '192.168.0.111', '2024-06-27 07:33:13', '2024-06-27 07:33:13', 'POST', 'June 27, 2024, 7:33 am', NULL, '{\"imei\":\"f9fbf04e81fdc879\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(88, 'http://192.168.0.100:8000/api/counter-content/1', '[]', NULL, '192.168.0.111', '2024-06-27 07:36:34', '2024-06-27 07:36:34', 'GET', 'June 27, 2024, 7:36 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(89, 'http://192.168.0.100:8000/api/counter-content/1', '[]', NULL, '192.168.0.111', '2024-06-27 07:37:01', '2024-06-27 07:37:01', 'GET', 'June 27, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(90, 'http://192.168.0.100:8000/api/counter-content/1', '[]', NULL, '192.168.0.111', '2024-06-27 07:37:22', '2024-06-27 07:37:22', 'GET', 'June 27, 2024, 7:37 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL),
(91, 'http://192.168.0.100:8000/api/counter-content/1', '[]', NULL, '192.168.0.111', '2024-06-27 07:38:17', '2024-06-27 07:38:17', 'GET', 'June 27, 2024, 7:38 am', NULL, '[]', NULL, 'okhttp/5.0.0-alpha.2', NULL, 'request-log', NULL, NULL, NULL, NULL, NULL);

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
(1, 1, 'admin', NULL, 'admin@ek.com', 1, NULL, '$2y$10$ug.SPiMeNWQ/2VduIcSgd.McmBwytVeyVuGl5kkp.aFxOgoYrNsYW', NULL, '2024-05-20 11:30:58', '2024-05-20 11:30:58');

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
(1, 1, 'United Arab Emirates', 'united-arab-emirates', NULL, '2024-06-10 10:47:13', '2024-06-10 10:47:13');

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
-- Indexes for table `cd_settings`
--
ALTER TABLE `cd_settings`
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
-- Indexes for table `main_display_counter`
--
ALTER TABLE `main_display_counter`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cd_settings`
--
ALTER TABLE `cd_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `device_groups`
--
ALTER TABLE `device_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_play_list`
--
ALTER TABLE `device_play_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `device_templates`
--
ALTER TABLE `device_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `device_template_asssets`
--
ALTER TABLE `device_template_asssets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `device_template_data`
--
ALTER TABLE `device_template_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `imeis`
--
ALTER TABLE `imeis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `json_templates`
--
ALTER TABLE `json_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_display_counter`
--
ALTER TABLE `main_display_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `md_settings`
--
ALTER TABLE `md_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `playlist_assets`
--
ALTER TABLE `playlist_assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `play_lists`
--
ALTER TABLE `play_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `play_list_templates`
--
ALTER TABLE `play_list_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qms_webhooks`
--
ALTER TABLE `qms_webhooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sas`
--
ALTER TABLE `sas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_logs`
--
ALTER TABLE `service_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
