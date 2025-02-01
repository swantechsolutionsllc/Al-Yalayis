-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 01:33 PM
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
-- Database: `alyalayis`
--

-- --------------------------------------------------------

--
-- Table structure for table `md_settings`
--

CREATE TABLE `md_settings` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(191) NOT NULL,
  `main_area_heading_bg_color` varchar(191) NOT NULL,
  `main_area_heading_text_color` text DEFAULT NULL,
  `main_area_heading_text_size` varchar(191) NOT NULL,
  `main_area_content_bg_color` text DEFAULT NULL,
  `main_content_area_text_color` text DEFAULT NULL,
  `main_content_area_text_size` text DEFAULT NULL,
  `main_content_area_blinking_color` text DEFAULT NULL,
  `history_heading_area_bg_color` text DEFAULT NULL,
  `history_heading_area_bg_text_color` text DEFAULT NULL,
  `history_heading_area_text_size` text DEFAULT NULL,
  `history_content_area_odd_bg_color` text DEFAULT NULL,
  `history_content_area_odd_text_color` text DEFAULT NULL,
  `history_content_area_odd_text_size` text DEFAULT NULL,
  `history_content_area_even_bg_color` text DEFAULT NULL,
  `history_content_area_even_text_color` text DEFAULT NULL,
  `history_content_area_even_text_size` text DEFAULT NULL,
  `no_of_rows` int(11) NOT NULL,
  `text_alignment` varchar(191) NOT NULL,
  `audio` varchar(191) DEFAULT NULL,
  `language` varchar(191) NOT NULL,
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
  `ticket_text_speed` varchar(191) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_settings`
--

INSERT INTO `md_settings` (`id`, `setting_name`, `main_area_heading_bg_color`, `main_area_heading_text_color`, `main_area_heading_text_size`, `main_area_content_bg_color`, `main_content_area_text_color`, `main_content_area_text_size`, `main_content_area_blinking_color`, `history_heading_area_bg_color`, `history_heading_area_bg_text_color`, `history_heading_area_text_size`, `history_content_area_odd_bg_color`, `history_content_area_odd_text_color`, `history_content_area_odd_text_size`, `history_content_area_even_bg_color`, `history_content_area_even_text_color`, `history_content_area_even_text_size`, `no_of_rows`, `text_alignment`, `audio`, `language`, `logo_alignment`, `header_background_color`, `date_time_color`, `logo_image_size`, `visibility`, `ticket_background_color`, `ticket_text_color`, `ticket_text_size`, `ticket_font_family`, `ticket_text_direction`, `ticket_text_speed`, `updated_at`, `created_at`) VALUES
(1, 'Setting 1', '#FF3C3C', '#000000', '125', '#DC7373', '#060606', '50', '#517DC2', '#FF3C3C', '#000000', '25', '#DC7373', '#000000', '30', '#FF3C3C', '#040404', '30', 6, 'center', 'male', 'en_ar', 'left', '#FFFDFD', '#000000', '30', 'show', '#FF3C3C', '#000000', '30', 'Sans Serif', 'right', NULL, '2024-08-28 12:28:11', '2024-08-27 05:40:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `md_settings`
--
ALTER TABLE `md_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `md_settings`
--
ALTER TABLE `md_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
