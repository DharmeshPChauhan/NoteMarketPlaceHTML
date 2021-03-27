-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 02:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notesmarketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `download_id` int(11) NOT NULL,
  `downloaded_note_id` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `downloader` int(11) NOT NULL,
  `is_allowed_download` bit(1) NOT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `is_attachment_downloaded` bit(1) NOT NULL,
  `attachment_downloaded_date` datetime DEFAULT NULL,
  `is_note_paid` bit(1) NOT NULL,
  `purchased_price` decimal(10,2) DEFAULT NULL,
  `note_title` varchar(100) NOT NULL,
  `note_category` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`download_id`, `downloaded_note_id`, `seller`, `downloader`, `is_allowed_download`, `attachment_path`, `is_attachment_downloaded`, `attachment_downloaded_date`, `is_note_paid`, `purchased_price`, `note_title`, `note_category`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 4, 4, 5, b'1', '../Uploads/Members/4/4/Attachments/Attachment_1614942696.pdf', b'1', '2021-03-08 17:12:23', b'0', NULL, 'Computer Organization & Microprocessor', 'IT', '2021-03-08 17:12:23', 5, '2021-03-08 17:12:23', 5),
(4, 4, 4, 4, b'1', '../Uploads/Members/4/4/Attachments/Attachment_1614942696.pdf', b'1', '2021-03-08 17:39:13', b'0', NULL, 'Computer Organization & Microprocessor', 'IT', '2021-03-08 17:39:13', 4, '2021-03-08 17:39:13', 4),
(6, 6, 6, 5, b'1', '../Uploads/Members/6/6/Attachments/Attachment_1614945835.pdf', b'1', '2021-03-08 17:53:32', b'1', '5.00', 'DBMS practical-3', 'Computer', '2021-03-08 17:53:32', 5, '2021-03-09 12:24:23', 5),
(7, 5, 4, 5, b'1', '../Uploads/Members/4/5/Attachments/Attachment_1614944872.pdf', b'1', '2021-03-08 17:54:26', b'1', '10.00', 'Note-1', 'History', '2021-03-08 17:54:26', 5, '2021-03-09 12:18:17', 4),
(8, 6, 6, 6, b'1', '../Uploads/Members/6/6/Attachments/Attachment_1614945835.pdf', b'1', '2021-03-08 18:49:43', b'1', NULL, 'DBMS practical-3', 'Computer', '2021-03-08 18:49:43', 6, '2021-03-08 18:49:43', 6),
(9, 5, 4, 6, b'1', '../Uploads/Members/4/5/Attachments/Attachment_1614944872.pdf', b'1', '2021-03-09 12:20:28', b'1', '10.00', 'Note-1', 'History', '2021-03-09 12:20:28', 6, '2021-03-09 12:37:22', 6),
(10, 8, 5, 4, b'1', '../Uploads/Members/5/8/Attachments/Attachment_1615014763.pdf', b'1', '2021-03-09 15:38:19', b'1', '50.00', 'Hybrid Architecture', 'IT', '2021-03-09 15:38:19', 4, '2021-03-09 15:40:25', 5),
(11, 8, 5, 5, b'1', '../Uploads/Members/5/8/Attachments/Attachment_1615014763.pdf', b'1', '2021-03-09 15:39:22', b'1', NULL, 'Hybrid Architecture', 'IT', '2021-03-09 15:39:22', 5, '2021-03-09 15:39:22', 5),
(12, 10, 6, 4, b'1', '../Uploads/Members/6/10/Attachments/Attachment_1615015350.pdf', b'1', '2021-03-09 15:56:40', b'0', NULL, 'Network Management', 'Science', '2021-03-09 15:56:40', 4, '2021-03-09 15:56:40', 4),
(13, 9, 5, 4, b'1', '../Uploads/Members/5/9/Attachments/Attachment_1615015138.pdf', b'1', '2021-03-09 15:59:39', b'1', '15.00', 'Application Layer - FTP', 'Science', '2021-03-09 15:59:39', 4, '2021-03-09 16:01:35', 5),
(14, 9, 5, 5, b'1', '../Uploads/Members/5/9/Attachments/Attachment_1615015138.pdf', b'1', '2021-03-09 16:00:23', b'1', NULL, 'Application Layer - FTP', 'Science', '2021-03-09 16:00:23', 5, '2021-03-09 16:00:23', 5),
(15, 5, 4, 4, b'1', '../Uploads/Members/4/5/Attachments/Attachment_1614944872.pdf', b'1', '2021-03-09 17:14:46', b'1', NULL, 'Note-1', 'History', '2021-03-09 17:14:46', 4, '2021-03-09 17:14:46', 4),
(16, 5, 4, 7, b'1', '../Uploads/Members/4/5/Attachments/Attachment_1614944872.pdf', b'0', '2021-03-09 17:16:08', b'1', '10.00', 'Note-1', 'History', '2021-03-09 17:16:08', 7, '2021-03-25 17:05:22', 4),
(17, 11, 4, 4, b'1', '../Uploads/Members/4/11/Attachments/Attachment_1615456828.pdf', b'1', '2021-03-13 16:36:30', b'1', NULL, 'Basic Network Command', 'IT', '2021-03-13 16:36:30', 4, '2021-03-13 16:36:30', 4),
(18, 11, 4, 5, b'0', NULL, b'0', '2021-03-15 18:29:57', b'1', '110.00', 'Basic Network Command', 'IT', '2021-03-15 18:29:57', 5, '2021-03-15 18:29:57', 5),
(19, 10, 6, 5, b'1', '../Uploads/Members/6/10/Attachments/Attachment_1615015350.pdf', b'0', '2021-03-20 13:33:57', b'1', '250.00', 'Network Management', 'Computer', '2021-03-20 13:33:57', 5, '2021-03-20 13:45:56', 6),
(20, 10, 6, 6, b'1', '../Uploads/Members/6/10/Attachments/Attachment_1615015350.pdf', b'1', '2021-03-20 13:35:20', b'1', NULL, 'Network Management', 'Computer', '2021-03-20 13:35:20', 6, '2021-03-20 13:35:20', 6),
(22, 6, 6, 4, b'1', '../Uploads/Members/6/6/Attachments/Attachment_1614945835.pdf', b'0', '2021-03-20 14:05:30', b'1', '5.00', 'DBMS practical-3', 'Computer', '2021-03-20 14:05:30', 4, '2021-03-20 14:07:57', 6),
(23, 12, 4, 4, b'1', '../Uploads/Members/4/12/Attachments/Attachment_1616509915.pdf', b'1', '2021-03-23 20:02:49', b'0', NULL, 'dummy', 'History', '2021-03-23 20:02:49', 4, '2021-03-23 20:02:49', 4),
(24, 11, 4, 7, b'1', '../Uploads/Members/4/11/Attachments/Attachment_1615456828.pdf', b'0', '2021-03-24 14:24:56', b'1', '110.00', 'Basic Network Command', 'IT', '2021-03-24 14:24:56', 7, '2021-03-25 17:03:07', 4),
(25, 14, 4, 7, b'0', NULL, b'0', '2021-03-26 23:09:46', b'1', '200.00', 'JAVA Exception Handling', 'Computer', '2021-03-26 23:09:46', 7, '2021-03-26 23:09:46', 7),
(26, 7, 5, 7, b'1', '../Uploads/Members/5/7/Attachments/Attachment_1615014525.pdf', b'1', '2021-03-26 23:10:31', b'0', NULL, 'Computer Networks and Internet', 'Computer', '2021-03-26 23:10:31', 7, '2021-03-26 23:10:31', 7);

-- --------------------------------------------------------

--
-- Table structure for table `note_category`
--

CREATE TABLE `note_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note_category`
--

INSERT INTO `note_category` (`category_id`, `category_name`, `category_description`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 'AI', 'This is AI Category', '2021-03-03 17:55:27', 1, '2021-03-26 19:21:09', 1, b'1'),
(2, 'IT', 'This is IT Category', '2021-03-03 17:55:27', 1, '2021-03-20 17:31:57', 1, b'1'),
(3, 'History', 'This is History Category', '2021-03-03 17:56:17', 1, '2021-03-20 17:32:49', 1, b'1'),
(4, 'Science', 'This is Science Category', '2021-03-03 17:56:17', 1, '2021-03-03 17:56:17', 1, b'1'),
(5, 'Computer', 'This is Computer Category', '2021-03-03 17:56:45', 1, '2021-03-03 17:56:45', 1, b'1'),
(6, 'Commerce', 'This is Commerce Category', '2021-03-20 17:46:04', 1, '2021-03-21 13:18:29', 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `note_country`
--

CREATE TABLE `note_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note_country`
--

INSERT INTO `note_country` (`country_id`, `country_name`, `country_code`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 'United States', '+1', '2021-03-03 19:07:53', 1, '2021-03-21 16:33:43', 1, b'1'),
(2, 'India', '+91', '2021-03-03 19:07:53', 1, '2021-03-03 19:07:53', 1, b'1'),
(3, 'Australia', '+61', '2021-03-03 19:08:55', 1, '2021-03-21 16:35:26', 1, b'1'),
(4, 'United Kingdom', '+44', '2021-03-03 19:08:55', 1, '2021-03-21 16:33:39', 1, b'1'),
(5, 'China', '+86', '2021-03-21 16:41:17', 1, '2021-03-21 16:46:40', 1, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `note_reviews`
--

CREATE TABLE `note_reviews` (
  `review_id` int(11) NOT NULL,
  `review_note_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `against_downloads_id` int(11) NOT NULL,
  `review_rating` decimal(10,2) NOT NULL,
  `review_comment` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_review_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note_reviews`
--

INSERT INTO `note_reviews` (`review_id`, `review_note_id`, `reviewer_id`, `against_downloads_id`, `review_rating`, `review_comment`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_review_active`) VALUES
(1, 9, 5, 14, '4.00', 'I like this book. This is very good book.', '2021-03-10 12:41:19', 5, '2021-03-10 12:41:19', 5, b'1'),
(2, 5, 5, 7, '3.00', 'This book has very good content i like this book.', '2021-03-10 12:43:31', 5, '2021-03-10 12:43:31', 5, b'1'),
(3, 4, 5, 1, '4.00', 'I like this book as this is free book.', '2021-03-10 12:58:03', 5, '2021-03-10 12:58:03', 5, b'1'),
(4, 8, 4, 10, '5.00', 'This is my favourite book.', '2021-03-15 00:36:37', 4, '2021-03-15 00:36:37', 4, b'1'),
(5, 10, 4, 12, '5.00', 'This is nice book because this is free note.', '2021-03-17 17:40:44', 4, '2021-03-20 16:59:00', 1, b'1'),
(6, 10, 6, 20, '3.00', 'This is nice book. You can buy this book.', '2021-03-20 13:35:46', 6, '2021-03-20 17:00:02', 1, b'0'),
(7, 10, 5, 19, '3.00', 'Nice book to buy.', '2021-03-20 13:47:33', 5, '2021-03-20 16:56:29', 1, b'1'),
(8, 6, 6, 8, '5.00', 'very good Book.', '2021-03-20 14:07:23', 6, '2021-03-20 14:07:23', 6, b'1'),
(9, 11, 4, 17, '5.00', 'I like this book this is very nice book.', '2021-03-25 17:25:56', 4, '2021-03-25 17:25:56', 4, b'1'),
(10, 7, 7, 26, '4.00', 'This is nice book i like this book', '2021-03-26 23:11:00', 7, '2021-03-26 23:11:00', 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `note_type`
--

CREATE TABLE `note_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_description` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note_type`
--

INSERT INTO `note_type` (`type_id`, `type_name`, `type_description`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 'handwritten', 'This is Handwritten Books.', '2021-03-03 19:12:18', 1, '2021-03-21 14:01:34', 1, b'1'),
(2, 'university notes', 'This is University Notes.', '2021-03-03 19:12:18', 1, '2021-03-03 19:12:18', 1, b'1'),
(3, 'story books', 'This is Story Books.', '2021-03-03 19:12:45', 1, '2021-03-21 13:55:13', 2, b'1'),
(4, 'Novel', 'This is Novel Note Type', '2021-03-21 13:42:29', 2, '2021-03-21 16:45:54', 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `reference_data`
--

CREATE TABLE `reference_data` (
  `reference_id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `datavalue` varchar(100) NOT NULL,
  `ref_category` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference_data`
--

INSERT INTO `reference_data` (`reference_id`, `value`, `datavalue`, `ref_category`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 'male', 'm', 'gender', '2021-02-13 19:04:57', 1, '2021-02-13 19:04:57', 1, b'1'),
(2, 'female', 'fe', 'gender', '2021-02-13 19:05:49', 1, '2021-02-13 19:05:49', 1, b'1'),
(3, 'unknown', 'u', 'gender', '2021-02-13 19:06:42', 1, '2021-02-13 19:06:42', 1, b'0'),
(4, 'paid', 'p', 'selling mode', '2021-02-13 19:07:41', 1, '2021-02-13 19:07:41', 1, b'1'),
(5, 'free', 'f', 'selling mode', '2021-02-13 19:07:41', 1, '2021-02-13 19:07:41', 1, b'1'),
(6, 'draft', 'draft', 'note status', '2021-02-13 19:09:00', 1, '2021-02-13 19:09:00', 1, b'1'),
(7, 'submitted for review', 'submitted for review', 'note status', '2021-02-13 19:09:00', 1, '2021-02-13 19:09:00', 1, b'1'),
(8, 'in review', 'in review', 'note status', '2021-02-13 19:10:07', 1, '2021-02-13 19:10:07', 1, b'1'),
(9, 'published', 'published', 'note status', '2021-02-13 19:10:07', 1, '2021-02-13 19:10:07', 1, b'1'),
(10, 'rejected', 'rejected', 'note status', '2021-02-13 19:11:54', 1, '2021-02-13 19:11:54', 1, b'1'),
(11, 'removed', 'removed', 'note status', '2021-02-13 19:11:54', 1, '2021-02-13 19:11:54', 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `reported_note`
--

CREATE TABLE `reported_note` (
  `report_id` int(11) NOT NULL,
  `reported_note_id` int(11) NOT NULL,
  `reported_by_id` int(11) NOT NULL,
  `against_download_id` int(11) NOT NULL,
  `report_remarks` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reported_note`
--

INSERT INTO `reported_note` (`report_id`, `reported_note_id`, `reported_by_id`, `against_download_id`, `report_remarks`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 5, 5, 7, 'This is very bad book.', '2021-03-10 16:25:10', 5, '2021-03-10 16:25:10', 5),
(2, 6, 5, 6, 'i do not like this book at all.', '2021-03-10 16:35:53', 5, '2021-03-10 16:35:53', 5),
(3, 4, 5, 1, 'I don''t like this book because this is not helpful to me.', '2021-03-10 16:39:04', 5, '2021-03-10 16:39:04', 5),
(5, 5, 4, 15, 'This is very bad book', '2021-03-25 17:26:38', 4, '2021-03-25 17:26:38', 4);

-- --------------------------------------------------------

--
-- Table structure for table `seller_notes`
--

CREATE TABLE `seller_notes` (
  `note_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `note_status` int(11) NOT NULL,
  `actioned_by` int(11) DEFAULT NULL,
  `admin_remarks` varchar(255) DEFAULT NULL,
  `note_published_date` datetime DEFAULT NULL,
  `note_title` varchar(100) NOT NULL,
  `note_category` int(11) NOT NULL,
  `note_display_picture` varchar(500) DEFAULT NULL,
  `note_type` int(11) NOT NULL,
  `note_number_of_pages` int(11) DEFAULT NULL,
  `note_description` varchar(255) NOT NULL,
  `note_university_name` varchar(200) DEFAULT NULL,
  `note_country` int(11) NOT NULL,
  `note_course` varchar(100) DEFAULT NULL,
  `note_course_code` varchar(100) DEFAULT NULL,
  `note_professor` varchar(100) DEFAULT NULL,
  `is_note_paid` bit(1) NOT NULL,
  `note_price` decimal(10,2) DEFAULT NULL,
  `note_preview` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_note_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_notes`
--

INSERT INTO `seller_notes` (`note_id`, `seller_id`, `note_status`, `actioned_by`, `admin_remarks`, `note_published_date`, `note_title`, `note_category`, `note_display_picture`, `note_type`, `note_number_of_pages`, `note_description`, `note_university_name`, `note_country`, `note_course`, `note_course_code`, `note_professor`, `is_note_paid`, `note_price`, `note_preview`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_note_active`) VALUES
(4, 4, 9, 1, NULL, '2021-03-23 17:23:31', 'Computer Organization & Microprocessor', 2, '', 2, 1, 'This is experimental list of COM Subject.', '', 2, 'COM', 'IT212', '', b'0', '0.00', '../Uploads/Members/4/4/Preview_1614942696.pdf', '2021-03-05 16:41:36', 4, '2021-03-23 17:23:31', 1, b'1'),
(5, 4, 9, 1, 'Name of book is not valid', '2021-03-23 23:06:22', 'Note-1', 3, '../Uploads/Members/4/5/DP_1614944872.jpg', 2, 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aspernatur quo dolor dolores, vero ea. Quidem animi earum assumenda sequi placeat autem, ipsam, non excepturi iure, dolor nihil itaque debitis', '', 1, '', '', '', b'1', '10.00', '../Uploads/Members/4/5/Preview_1614944872.pdf', '2021-03-05 17:17:52', 4, '2021-03-23 23:06:22', 1, b'1'),
(6, 6, 6, NULL, NULL, NULL, 'DBMS practical-3', 5, '../Uploads/Members/6/6/DP_1614945836.jpg', 2, 3, 'This is practical number 3 of database management system.', '', 2, '', '', '', b'1', '5.00', '../Uploads/Members/6/6/Preview_1614945836.pdf', '2021-03-05 17:33:55', 6, '2021-03-22 17:08:33', 6, b'1'),
(7, 5, 9, 1, NULL, '2021-03-26 23:08:29', 'Computer Networks and Internet', 5, '../Uploads/Members/5/7/DP_1615014525.jpg', 2, 0, 'This is Computer Networks and Internet chapter-1 book.', 'CSPIT', 2, 'CN', 'IT344', 'Harsh Patel', b'0', '0.00', '', '2021-03-06 12:38:45', 5, '2021-03-26 23:08:29', 1, b'1'),
(8, 5, 9, 1, NULL, '2021-03-23 19:22:18', 'Hybrid Architecture', 2, '../Uploads/Members/5/8/DP_1615014764.jpg', 2, 6, 'Comparison between client-server, peer-to-peer and hybrid architectures for MMOGs', 'CSPIT', 3, 'CN', 'IT344', '', b'1', '50.00', '../Uploads/Members/5/8/Preview_1615014764.pdf', '2021-03-06 12:42:43', 5, '2021-03-23 19:22:18', 1, b'1'),
(9, 5, 9, 1, NULL, '2021-03-23 19:22:23', 'Application Layer - FTP', 4, '', 2, 60, 'Chapter - 2 of application layer FTP of Computer Network subject. ', 'DEPSTAR', 1, 'CN', 'IT344', 'Harsh Patel', b'1', '15.00', '../Uploads/Members/5/9/Preview_1615015138.pdf', '2021-03-06 12:48:57', 5, '2021-03-23 19:22:23', 1, b'1'),
(10, 6, 6, NULL, NULL, NULL, 'Network Management', 5, '../Uploads/Members/6/10/DP_1615015350.jpg', 2, 40, 'Network Management subject''s chapter - 21 SNMP.', '', 4, '', '', '', b'1', '250.00', '../Uploads/Members/6/10/Preview_1615455117.pdf', '2021-03-06 12:52:30', 6, '2021-03-22 17:08:33', 6, b'1'),
(11, 4, 7, NULL, NULL, NULL, 'Basic Network Command', 2, '../Uploads/Members/4/11/DP_1615454824.jpg', 1, 4, 'Study of basic network command and network configuration command Practical guide with solution.', 'DEPSTAR', 4, 'CN', 'IT344', 'Jay Patel', b'1', '110.00', '../Uploads/Members/4/11/Preview_1615454407.pdf', '2021-03-11 14:50:06', 4, '2021-03-25 11:46:24', 4, b'1'),
(12, 4, 10, 1, 'This is dummy book', '2021-03-26 18:02:52', 'dummy', 3, '', 2, 11, 'dummy', '', 4, '', '', '', b'0', '0.00', '', '2021-03-23 20:01:55', 4, '2021-03-26 18:05:16', 1, b'1'),
(13, 7, 8, 1, NULL, NULL, 'C++', 5, '', 2, 10, 'This is C++ book', 'IIMS', 4, 'IT', 'IT111', 'Raj Kumar', b'1', '100.00', '../Uploads/Members/7/13/Preview_1616576352.pdf', '2021-03-24 14:29:12', 7, '2021-03-26 23:08:39', 1, b'1'),
(14, 4, 9, 1, NULL, '2021-03-26 23:03:48', 'JAVA Exception Handling', 5, '../Uploads/Members/4/14/DP_1616653638.png', 2, 0, 'The exception handling in java is one of the powerful mechanism to handle the runtime errors so that normal flow of the application can be maintained.', 'IIAS', 1, 'JAVA', 'JAVA001', 'SAGAR BHATT', b'1', '200.00', '../Uploads/Members/4/14/Preview_1616653638.pdf', '2021-03-25 11:57:17', 4, '2021-03-26 23:03:48', 1, b'1'),
(15, 7, 7, NULL, NULL, NULL, 'Introduction to Data Structure & Array', 5, '', 2, 33, 'A data structure is a method for organizing and storing data, which would allow efficient data retrieval and usage.', 'ASIT', 2, 'DSA', 'DSA11', 'Harshad patel', b'1', '500.00', '../Uploads/Members/7/15/Preview_1616779616.pdf', '2021-03-26 22:56:56', 7, '2021-03-26 22:56:56', 7, b'1'),
(16, 7, 8, 1, NULL, NULL, 'Stack Data Structure of DSA', 5, '', 2, 37, 'Access is allowed only at one point of the structure, normally termed the top of the stack.', 'ITUS', 1, 'DSA', 'DSA12', 'Evin Lewis', b'0', '0.00', '', '2021-03-26 23:02:44', 7, '2021-03-26 23:30:10', 1, b'1'),
(18, 7, 10, 1, 'this is dummy that''s why', NULL, 'My Dummy Note', 3, '', 4, 10, 'this is my dummy book for rejection', '', 4, '', '', '', b'0', '0.00', '', '2021-03-26 23:23:41', 7, '2021-03-26 23:29:41', 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `seller_notes_attachment`
--

CREATE TABLE `seller_notes_attachment` (
  `attachment_id` int(11) NOT NULL,
  `attachment_note_id` int(11) NOT NULL,
  `attached_file_name` varchar(100) NOT NULL,
  `attached_file_path` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller_notes_attachment`
--

INSERT INTO `seller_notes_attachment` (`attachment_id`, `attachment_note_id`, `attached_file_name`, `attached_file_path`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(2, 4, 'Attachment_1614942696.pdf', '../Uploads/Members/4/4/Attachments/Attachment_1614942696.pdf', '2021-03-05 16:41:36', 4, '2021-03-05 16:41:36', 4, b'1'),
(3, 5, 'Attachment_1614944872.pdf', '../Uploads/Members/4/5/Attachments/Attachment_1614944872.pdf', '2021-03-05 17:17:52', 4, '2021-03-05 17:17:52', 4, b'1'),
(4, 6, 'Attachment_1614945835.pdf', '../Uploads/Members/6/6/Attachments/Attachment_1614945835.pdf', '2021-03-05 17:33:55', 6, '2021-03-05 17:33:55', 6, b'1'),
(5, 7, 'Attachment_1615014525.pdf', '../Uploads/Members/5/7/Attachments/Attachment_1615014525.pdf', '2021-03-06 12:38:45', 5, '2021-03-06 12:38:45', 5, b'1'),
(6, 8, 'Attachment_1615014763.pdf', '../Uploads/Members/5/8/Attachments/Attachment_1615014763.pdf', '2021-03-06 12:42:43', 5, '2021-03-06 12:42:43', 5, b'1'),
(7, 9, 'Attachment_1615015138.pdf', '../Uploads/Members/5/9/Attachments/Attachment_1615015138.pdf', '2021-03-06 12:48:58', 5, '2021-03-06 12:48:58', 5, b'1'),
(8, 10, 'Attachment_1615015350.pdf', '../Uploads/Members/6/10/Attachments/Attachment_1615015350.pdf', '2021-03-06 12:52:30', 6, '2021-03-06 12:52:30', 6, b'1'),
(9, 11, 'Attachment_1615456828.pdf', '../Uploads/Members/4/11/Attachments/Attachment_1615456828.pdf', '2021-03-11 14:50:06', 4, '2021-03-11 15:30:28', 4, b'1'),
(10, 12, 'Attachment_1616509915.pdf', '../Uploads/Members/4/12/Attachments/Attachment_1616509915.pdf', '2021-03-23 20:01:55', 4, '2021-03-23 20:01:55', 4, b'1'),
(11, 13, 'Attachment_1616576352.pdf', '../Uploads/Members/7/13/Attachments/Attachment_1616576352.pdf', '2021-03-24 14:29:12', 7, '2021-03-24 14:29:12', 7, b'1'),
(12, 14, 'Attachment_1616653638.pdf', '../Uploads/Members/4/14/Attachments/Attachment_1616653638.pdf', '2021-03-25 11:57:18', 4, '2021-03-25 11:57:18', 4, b'1'),
(13, 15, 'Attachment_1616779616.pdf', '../Uploads/Members/7/15/Attachments/Attachment_1616779616.pdf', '2021-03-26 22:56:56', 7, '2021-03-26 22:56:56', 7, b'1'),
(14, 16, 'Attachment_1616779964.pdf', '../Uploads/Members/7/16/Attachments/Attachment_1616779964.pdf', '2021-03-26 23:02:44', 7, '2021-03-26 23:02:44', 7, b'1'),
(16, 18, 'Attachment_1616781221.pdf', '../Uploads/Members/7/18/Attachments/Attachment_1616781221.pdf', '2021-03-26 23:23:41', 7, '2021-03-26 23:23:41', 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `sys_config_id` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `user_first_name` varchar(50) NOT NULL,
  `user_last_name` varchar(50) NOT NULL,
  `user_email_id` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `is_user_email_verified` bit(1) NOT NULL DEFAULT b'0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_role_id`, `user_first_name`, `user_last_name`, `user_email_id`, `user_password`, `is_user_email_verified`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 3, 'Dharmesh', 'Chauhan', 'dharmesh.chauhan1698@gmail.com', '$2y$12$e1VP07SBiu4RJ4P3CZDGkesAxSVALd5ccgR0cqomQwkhcu58v53Lm', b'1', '2021-02-13 19:00:06', NULL, '2021-02-17 17:58:10', 1, b'1'),
(2, 2, 'Yash', 'joshi', 'yashjoshi@gmail.com', '$2y$12$kLFZitPa3lPKOmBp3hwBKOlH.By61klUZOUOY/rIWdxiBikQSSwz2', b'1', '2021-03-02 14:22:37', NULL, '2021-03-21 16:58:38', 2, b'1'),
(4, 1, 'Smit', 'Patel', '17it013@charusat.edu.in', '$2y$12$T2wQbCkWr7uYChJIbpE0perPqKzUA2UtGGz6qqUKqtQquW57cA6P2', b'1', '2021-03-03 16:59:57', NULL, '2021-03-25 17:08:23', 4, b'1'),
(5, 1, 'Chintan', 'Patel', 'chintanpatel@gmail.com', '$2y$12$TGxdqt3bXoRhAKEmx6KYkujTZJ.kTTeF2m/QfsQkHRwY3hKDkGgPq', b'1', '2021-03-04 23:10:40', NULL, '2021-03-13 18:16:27', 5, b'1'),
(6, 1, 'Sunil', 'Sakariya', 'sunil123@gmail.com', '$2y$12$QzqtZYKZiegwZl18FyijLeUdtwvMdDGjbLixTNOVI60ElgYgSQ8hu', b'1', '2021-03-05 17:19:47', NULL, '2021-03-05 17:21:15', 6, b'1'),
(7, 1, 'Nevil', 'Amipara', 'dharmeshpc99@gmail.com', '$2y$12$3gmuxAUnzMTwoHAuyxm0c.ITXzDQ8s8eVaC.Q/28bkvmuppjcTLiK', b'1', '2021-03-05 17:27:06', NULL, '2021-03-05 17:29:31', 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `profile_id` int(11) NOT NULL,
  `profile_user_id` int(11) NOT NULL,
  `user_dob` date DEFAULT NULL,
  `user_gender` int(11) DEFAULT NULL,
  `user_second_email_id` varchar(100) DEFAULT NULL,
  `user_phone_country_code` varchar(5) NOT NULL,
  `user_phone_number` varchar(20) NOT NULL,
  `user_profile_picture` varchar(500) DEFAULT NULL,
  `user_address_line1` varchar(100) NOT NULL,
  `user_address_line2` varchar(100) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_state` varchar(50) NOT NULL,
  `user_zipcode` varchar(50) NOT NULL,
  `user_country` varchar(50) NOT NULL,
  `user_university` varchar(100) DEFAULT NULL,
  `user_college` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`profile_id`, `profile_user_id`, `user_dob`, `user_gender`, `user_second_email_id`, `user_phone_country_code`, `user_phone_number`, `user_profile_picture`, `user_address_line1`, `user_address_line2`, `user_city`, `user_state`, `user_zipcode`, `user_country`, `user_university`, `user_college`, `created_date`, `created_by`, `modified_date`, `modified_by`) VALUES
(1, 2, '2021-03-10', 1, '', '+91', '8884656981', '../Uploads/Members/2/DP_1614677848.png', '105-prahlad nagar', 'Godhra', 'Godhra', 'Gujarat', '360001', 'India', 'Charotar University of Science and Technology (CHARUSAT)', 'CSPIT', '2021-03-02 15:07:28', 2, '2021-03-02 15:07:28', 2),
(2, 4, '1999-10-16', 1, '', '+91', '7489361425', '../Uploads/Members/4/DP_1615639746.png', '505-akshat apartment', '', 'rajkot', 'Gujarat', '360007', 'India', 'Charotar University of Science and Technology (CHARUSAT)', 'KDPDIT', '2021-03-03 17:03:54', 4, '2021-03-25 17:08:24', 4),
(3, 5, '2000-10-26', 1, '', '+91', '9898980051', '../Uploads/Members/5/DP_1615639587.png', 'sai society', 'Godhra', 'Godhra', 'Gujarat', '360001', 'India', 'Charotar University of Science and Technology (CHARUSAT)', 'DEPSTAR', '2021-03-04 23:28:46', 5, '2021-03-13 18:16:27', 5),
(4, 6, '0000-00-00', 1, '', '', '', '../Uploads/Members/6/DP_1614945191.png', 'shantivila', '', 'Surendranagar', 'Gujarat', '360000', 'India', 'Charotar University of Science and Technology (CHARUSAT)', 'DEPSTAR', '2021-03-05 17:23:11', 6, '2021-03-05 17:23:11', 6),
(5, 7, '0000-00-00', 1, '', '+61', '8899725221', '../Uploads/Members/7/DP_1615212237.png', '5-A', 'Kunj', 'Surat', 'Gujarat', '360001', 'India', 'Charotar University of Science and Technology (CHARUSAT)', 'CSPIT', '2021-03-08 19:33:57', 7, '2021-03-08 19:33:57', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(255) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_by` int(11) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `role_description`, `created_date`, `created_by`, `modified_date`, `modified_by`, `is_active`) VALUES
(1, 'member', 'This Role is define Members of Notes-Marketplace.', '2021-02-13 18:56:50', 1, '2021-02-13 18:56:50', 1, b'1'),
(2, 'admin', 'This Role is define admin of Notes-Marketplace.', '2021-02-13 18:56:50', 1, '2021-02-13 18:56:50', 1, b'1'),
(3, 'super admin', 'This Role is define super admin of Notes-Marketplace.', '2021-02-13 18:58:03', 1, '2021-02-13 18:58:03', 1, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`download_id`),
  ADD KEY `fk_to_downloaded_note_id` (`downloaded_note_id`),
  ADD KEY `fk_to_downloader` (`downloader`);

--
-- Indexes for table `note_category`
--
ALTER TABLE `note_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `note_country`
--
ALTER TABLE `note_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `note_reviews`
--
ALTER TABLE `note_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `fk_to_review_note_id` (`review_note_id`),
  ADD KEY `fk_to_reviewer_id` (`reviewer_id`),
  ADD KEY `fk_to_against_downloads_id` (`against_downloads_id`);

--
-- Indexes for table `note_type`
--
ALTER TABLE `note_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `reference_data`
--
ALTER TABLE `reference_data`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `reported_note`
--
ALTER TABLE `reported_note`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `fk_to_reported_note_id` (`reported_note_id`),
  ADD KEY `fk_to_reported_by_id` (`reported_by_id`),
  ADD KEY `fk_to_against_download_id` (`against_download_id`);

--
-- Indexes for table `seller_notes`
--
ALTER TABLE `seller_notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `fk_to_note_status` (`note_status`),
  ADD KEY `fk_to_seller_id` (`seller_id`),
  ADD KEY `fk_to_note_category` (`note_category`),
  ADD KEY `fk_to_note_type` (`note_type`),
  ADD KEY `fk_to_note_country` (`note_country`);

--
-- Indexes for table `seller_notes_attachment`
--
ALTER TABLE `seller_notes_attachment`
  ADD PRIMARY KEY (`attachment_id`),
  ADD KEY `fk_to_attachment_note_id` (`attachment_note_id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`sys_config_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email_id` (`user_email_id`),
  ADD KEY `fk_to_user_role_id` (`user_role_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `fk_to_profile_user_id` (`profile_user_id`),
  ADD KEY `fk_to_user_gender` (`user_gender`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `note_category`
--
ALTER TABLE `note_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `note_country`
--
ALTER TABLE `note_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `note_reviews`
--
ALTER TABLE `note_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `note_type`
--
ALTER TABLE `note_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reference_data`
--
ALTER TABLE `reference_data`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reported_note`
--
ALTER TABLE `reported_note`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `seller_notes`
--
ALTER TABLE `seller_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `seller_notes_attachment`
--
ALTER TABLE `seller_notes_attachment`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `sys_config_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `fk_to_downloaded_note_id` FOREIGN KEY (`downloaded_note_id`) REFERENCES `seller_notes` (`note_id`),
  ADD CONSTRAINT `fk_to_downloader` FOREIGN KEY (`downloader`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `note_reviews`
--
ALTER TABLE `note_reviews`
  ADD CONSTRAINT `fk_to_against_downloads_id` FOREIGN KEY (`against_downloads_id`) REFERENCES `downloads` (`download_id`),
  ADD CONSTRAINT `fk_to_review_note_id` FOREIGN KEY (`review_note_id`) REFERENCES `seller_notes` (`note_id`),
  ADD CONSTRAINT `fk_to_reviewer_id` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reported_note`
--
ALTER TABLE `reported_note`
  ADD CONSTRAINT `fk_to_against_download_id` FOREIGN KEY (`against_download_id`) REFERENCES `downloads` (`download_id`),
  ADD CONSTRAINT `fk_to_reported_by_id` FOREIGN KEY (`reported_by_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_to_reported_note_id` FOREIGN KEY (`reported_note_id`) REFERENCES `seller_notes` (`note_id`);

--
-- Constraints for table `seller_notes`
--
ALTER TABLE `seller_notes`
  ADD CONSTRAINT `fk_to_note_category` FOREIGN KEY (`note_category`) REFERENCES `note_category` (`category_id`),
  ADD CONSTRAINT `fk_to_note_country` FOREIGN KEY (`note_country`) REFERENCES `note_country` (`country_id`),
  ADD CONSTRAINT `fk_to_note_status` FOREIGN KEY (`note_status`) REFERENCES `reference_data` (`reference_id`),
  ADD CONSTRAINT `fk_to_note_type` FOREIGN KEY (`note_type`) REFERENCES `note_type` (`type_id`),
  ADD CONSTRAINT `fk_to_seller_id` FOREIGN KEY (`seller_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `seller_notes_attachment`
--
ALTER TABLE `seller_notes_attachment`
  ADD CONSTRAINT `fk_to_attachment_note_id` FOREIGN KEY (`attachment_note_id`) REFERENCES `seller_notes` (`note_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_to_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`role_id`);

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `fk_to_profile_user_id` FOREIGN KEY (`profile_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_to_user_gender` FOREIGN KEY (`user_gender`) REFERENCES `reference_data` (`reference_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
