-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 12:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admit_program`
--

CREATE TABLE `admit_program` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `admit_date` datetime NOT NULL,
  `admit_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admit_program`
--

INSERT INTO `admit_program` (`id`, `student_id`, `program_id`, `batch_id`, `admit_date`, `admit_by`) VALUES
(1, 10001, 1, 1, '2020-12-03 15:26:45', 2),
(2, 10001, 3, 1, '2020-12-03 15:53:42', 1),
(3, 10001, 4, 1, '2020-12-03 16:13:31', 1),
(4, 10001, 5, 1, '2020-12-03 16:13:39', 1),
(5, 10001, 6, 1, '2020-12-03 16:13:48', 1),
(6, 10001, 7, 1, '2020-12-03 16:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `start` text DEFAULT NULL,
  `end` text NOT NULL,
  `day` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `name`, `start`, `end`, `day`) VALUES
(1, 'IT2018', '9:00AM', '5:00PM', '3,4,5,6,7');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `message`, `date`) VALUES
(1, 1, 'hello', '2020-12-03 16:39:42'),
(2, 3, 'hello', '2020-12-03 16:40:58'),
(3, 1, 'hi', '2020-12-03 17:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `classname` text NOT NULL,
  `subject_code` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `exam_name` text NOT NULL,
  `total` int(11) DEFAULT NULL,
  `mcq` int(11) DEFAULT NULL,
  `written` int(11) DEFAULT NULL,
  `exam_date` date NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `program_id`, `sub_id`, `exam_name`, `total`, `mcq`, `written`, `exam_date`, `date`, `add_by`) VALUES
(1, 3, 5, 'mid ', 60, 10, 50, '2020-12-04', '2020-12-03 11:20:58', 1),
(2, 7, 21, 'mid', 65, 45, 20, '2020-12-04', '2020-12-03 11:37:20', 1),
(3, 7, 21, 'END', 140, 70, 70, '2020-12-04', '2020-12-03 11:39:52', 1),
(4, 6, 18, 'sxm', 22, 10, 12, '2020-12-12', '2020-12-03 11:47:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `program_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_list`
--

CREATE TABLE `exam_list` (
  `id` int(11) NOT NULL,
  `exam_name` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `subject_name` int(11) NOT NULL,
  `exam_date` datetime NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_mark`
--

CREATE TABLE `exam_mark` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_category_id` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expence`
--

CREATE TABLE `expence` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expence_category`
--

CREATE TABLE `expence_category` (
  `id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `amount` int(11) NOT NULL,
  `notes` text DEFAULT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark_category`
--

CREATE TABLE `mark_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `add_by` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `paid` double NOT NULL,
  `next_date` date DEFAULT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_sms`
--

CREATE TABLE `pending_sms` (
  `id` int(11) NOT NULL,
  `number_list` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `batch` text DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `monthly_fee` int(11) NOT NULL DEFAULT 0,
  `add_by` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id`, `name`, `start`, `end`, `subject`, `batch`, `fee`, `type`, `monthly_fee`, `add_by`, `date`) VALUES
(3, 'Semester 1', '2018-08-01', '2018-12-07', '7,6,5,4,3', '1', 90000, 1, 0, 1, '2020-12-03 15:52:05'),
(4, 'Semester 2', '2019-01-08', '2019-05-15', '11,10,9,8,1', '1', 90000, 1, 0, 1, '2020-12-03 16:01:09'),
(5, 'Semester 3', '2019-08-01', '2019-12-06', '15,14,13,12,2', '1', 90000, 1, 0, 1, '2020-12-03 16:04:46'),
(6, 'Semester 4', '2020-01-08', '2020-07-15', '20,19,18,17,16', '1', 90000, 1, 0, 1, '2020-12-03 16:07:31'),
(7, 'Semester 5', '2020-08-20', '2020-12-13', '24,23,22,21', '1', 90000, 1, 0, 1, '2020-12-03 16:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `receive_payment`
--

CREATE TABLE `receive_payment` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `sms` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `mcq` double DEFAULT NULL,
  `written` double DEFAULT NULL,
  `total` double NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL,
  `sms` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `option_name` text DEFAULT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `set_payment`
--

CREATE TABLE `set_payment` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `add_by` int(11) NOT NULL,
  `last_update` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_activity`
--

CREATE TABLE `site_activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_name` text NOT NULL,
  `action_type` text NOT NULL,
  `table_id` text NOT NULL,
  `ip` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `previous_data` text DEFAULT NULL,
  `present_data` text DEFAULT NULL,
  `login` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_activity`
--

INSERT INTO `site_activity` (`id`, `user_id`, `table_name`, `action_type`, `table_id`, `ip`, `browser`, `previous_data`, `present_data`, `login`, `date`) VALUES
(1, 7, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:04:39'),
(2, 1, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:06:26'),
(3, 1, 'user', 'update', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}', 0, '2020-12-03 15:07:00'),
(4, 2, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:13:57'),
(5, 2, 'user', 'update', '2', '::1', 'Google Chrome', '{\"id\":\"2\",\"uname\":\"VKS\",\"fname\":null,\"photo\":\"\",\"gender\":\"Male\",\"email\":\"vks@iiitl.ac.in\",\"phone\":null,\"address\":null,\"pass\":\"719e47226a5eadccc37a227ac5431305e3790b02b627b91acbded45005ff3269\",\"permit\":\"8\",\"status\":\"1\",\"theme\":\"1\"}', '{\"id\":\"2\",\"uname\":\"VKS\",\"fname\":null,\"photo\":\"user_2.jpg\",\"gender\":\"Male\",\"email\":\"vks@iiitl.ac.in\",\"phone\":null,\"address\":null,\"pass\":\"719e47226a5eadccc37a227ac5431305e3790b02b627b91acbded45005ff3269\",\"permit\":\"8\",\"status\":\"1\",\"theme\":\"1\"}', 0, '2020-12-03 15:16:30'),
(6, 2, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:16:44'),
(7, 3, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:17:50'),
(8, 3, 'user', 'update', '3', '::1', 'Google Chrome', '{\"id\":\"3\",\"uname\":\"mary\",\"fname\":null,\"photo\":\"\",\"gender\":\"Female\",\"email\":\"mary@iiitl.ac.in\",\"phone\":null,\"address\":null,\"pass\":\"6120ac744907caa62f236bd2695b50478c7fdf17fffb928ac84507ad330b2be8\",\"permit\":\"8\",\"status\":\"1\",\"theme\":\"1\"}', '{\"id\":\"3\",\"uname\":\"mary\",\"fname\":null,\"photo\":\"user_3.jpg\",\"gender\":\"Female\",\"email\":\"mary@iiitl.ac.in\",\"phone\":null,\"address\":null,\"pass\":\"6120ac744907caa62f236bd2695b50478c7fdf17fffb928ac84507ad330b2be8\",\"permit\":\"8\",\"status\":\"1\",\"theme\":\"1\"}', 0, '2020-12-03 15:18:04'),
(9, 1, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:18:18'),
(10, 1, 'batch', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"name\":\"IT2018\",\"start\":\"9:00AM\",\"end\":\"5:00PM\",\"day\":\"3,4,5,6,7\"}', 0, '2020-12-03 15:18:57'),
(11, 1, 'batch', 'insert', '2', '::1', 'Google Chrome', '', '{\"id\":\"2\",\"name\":\"IT2019\",\"start\":\"9:00AM\",\"end\":\"5:00PM\",\"day\":\"3,4,5,6,7\"}', 0, '2020-12-03 15:19:16'),
(12, 1, 'batch', 'insert', '3', '::1', 'Google Chrome', '', '{\"id\":\"3\",\"name\":\"CS2019\",\"start\":\"9:00AM\",\"end\":\"5:00PM\",\"day\":\"3,4,5,6,7\"}', 0, '2020-12-03 15:19:37'),
(13, 1, 'subject', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"sub_name\":\"Data Structure And Algorihtm\",\"sub_code\":\"DSA432C\"}', 0, '2020-12-03 15:20:10'),
(14, 1, 'subject', 'update', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"sub_name\":\"Data Structure And Algorihtm\",\"sub_code\":\"DSA432C\"}', '{\"id\":\"1\",\"sub_name\":\"Data Structure And Algorihtm\",\"sub_code\":\"IDSA432C\"}', 0, '2020-12-03 15:21:15'),
(15, 1, 'subject', 'insert', '2', '::1', 'Google Chrome', '', '{\"id\":\"2\",\"sub_name\":\"Discrete Mathematics \",\"sub_code\":\"IDMA232C\"}', 0, '2020-12-03 15:22:05'),
(16, 1, 'program', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"name\":\"BTech-2018\",\"start\":\"2018-08-01\",\"end\":\"2022-05-29\",\"subject\":\"2,1\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 15:22:57\"}', 0, '2020-12-03 15:22:57'),
(17, 1, 'student', 'insert', '10001', '::1', 'Google Chrome', '', '{\"id\":\"10001\",\"name\":\"Naman Gupta\",\"father_name\":\"Krishna Kumar Gupta\",\"mother_name\":\"Pushplata Gupta\",\"email\":\"lit2018045@iiitl.ac.in\",\"photo\":\"10001.jpg\",\"personal_mobile\":\"8090434623\",\"father_mobile\":\"\",\"mother_mobile\":\"8840329402\",\"nick\":\"naman\",\"address\":\"133/187 O Block Kidwai Nagar, Kanpur\",\"birth_day\":\"2000-02-15\",\"gender\":\"Male\",\"religion\":\"Hindu\",\"school\":\"\",\"ssc_rool\":\"0\",\"ssc_reg\":\"0\",\"ssc_board\":\"\",\"ssc_result\":\"0\",\"date\":\"2020-12-03 15:25:13\"}', 0, '2020-12-03 15:25:13'),
(18, 2, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:25:37'),
(19, 2, 'admit_program', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"student_id\":\"10001\",\"program_id\":\"1\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 15:26:45\",\"admit_by\":\"2\"}', 0, '2020-12-03 15:26:45'),
(20, 3, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:27:43'),
(21, 1, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:29:31'),
(22, 1, 'setting', 'update', '4', '::1', 'Google Chrome', '', '', 0, '2020-12-03 15:30:46'),
(23, 1, 'setting', 'update', '5', '::1', 'Google Chrome', '', '', 0, '2020-12-03 15:30:46'),
(24, 3, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:37:59'),
(25, 1, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 15:42:36'),
(26, 1, 'program', 'insert', '2', '::1', 'Google Chrome', '', '{\"id\":\"2\",\"name\":\"BTech-2019\",\"start\":\"2019-08-01\",\"end\":\"2023-05-30\",\"subject\":\"2,1\",\"batch\":\"3,2\",\"fee\":\"110000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 15:43:27\"}', 0, '2020-12-03 15:43:27'),
(27, 1, 'program', 'delete', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"name\":\"BTech-2018\",\"start\":\"2018-08-01\",\"end\":\"2022-05-29\",\"subject\":\"2,1\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 15:22:57\"}', '', 0, '2020-12-03 15:45:25'),
(28, 1, 'program', 'delete', '2', '::1', 'Google Chrome', '{\"id\":\"2\",\"name\":\"BTech-2019\",\"start\":\"2019-08-01\",\"end\":\"2023-05-30\",\"subject\":\"2,1\",\"batch\":\"3,2\",\"fee\":\"110000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 15:43:27\"}', '', 0, '2020-12-03 15:45:28'),
(29, 1, 'subject', 'insert', '3', '::1', 'Google Chrome', '', '{\"id\":\"3\",\"sub_name\":\"Introduction to Programming\",\"sub_code\":\"IITP132C\"}', 0, '2020-12-03 15:46:50'),
(30, 1, 'subject', 'insert', '4', '::1', 'Google Chrome', '', '{\"id\":\"4\",\"sub_name\":\"Fundamentals of Electronics Engineering\",\"sub_code\":\"EFEE132C\"}', 0, '2020-12-03 15:47:40'),
(31, 1, 'subject', 'insert', '5', '::1', 'Google Chrome', '', '{\"id\":\"5\",\"sub_name\":\"Linear Algebra\",\"sub_code\":\"ILA130C\"}', 0, '2020-12-03 15:48:07'),
(32, 1, 'subject', 'insert', '6', '::1', 'Google Chrome', '', '{\"id\":\"6\",\"sub_name\":\"System Management \",\"sub_code\":\"ISM132C\"}', 0, '2020-12-03 15:49:39'),
(33, 1, 'subject', 'insert', '7', '::1', 'Google Chrome', '', '{\"id\":\"7\",\"sub_name\":\"Professional communication-1\",\"sub_code\":\"IPCO132C\"}', 0, '2020-12-03 15:50:03'),
(34, 1, 'program', 'insert', '3', '::1', 'Google Chrome', '', '{\"id\":\"3\",\"name\":\"Semester 1\",\"start\":\"2018-08-01\",\"end\":\"2018-12-07\",\"subject\":\"7,6,5,4,3\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 15:52:05\"}', 0, '2020-12-03 15:52:05'),
(35, 1, 'batch', 'delete', '3', '::1', 'Google Chrome', '{\"id\":\"3\",\"name\":\"CS2019\",\"start\":\"9:00AM\",\"end\":\"5:00PM\",\"day\":\"3,4,5,6,7\"}', '', 0, '2020-12-03 15:52:42'),
(36, 1, 'batch', 'delete', '2', '::1', 'Google Chrome', '{\"id\":\"2\",\"name\":\"IT2019\",\"start\":\"9:00AM\",\"end\":\"5:00PM\",\"day\":\"3,4,5,6,7\"}', '', 0, '2020-12-03 15:52:47'),
(37, 1, 'admit_program', 'insert', '2', '::1', 'Google Chrome', '', '{\"id\":\"2\",\"student_id\":\"10001\",\"program_id\":\"3\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 15:53:42\",\"admit_by\":\"1\"}', 0, '2020-12-03 15:53:42'),
(38, 1, 'student', 'update', '10001', '::1', 'Google Chrome', '{\"id\":\"10001\",\"name\":\"Naman Gupta\",\"father_name\":\"Krishna Kumar Gupta\",\"mother_name\":\"Pushplata Gupta\",\"email\":\"lit2018045@iiitl.ac.in\",\"photo\":\"10001.jpg\",\"personal_mobile\":\"8090434623\",\"father_mobile\":\"\",\"mother_mobile\":\"8840329402\",\"nick\":\"naman\",\"address\":\"133/187 O Block Kidwai Nagar, Kanpur\",\"birth_day\":\"2000-02-15\",\"gender\":\"Male\",\"religion\":\"Hindu\",\"school\":\"\",\"ssc_rool\":\"0\",\"ssc_reg\":\"0\",\"ssc_board\":\"\",\"ssc_result\":\"0\",\"date\":\"2020-12-03 15:25:13\"}', '{\"id\":\"10001\",\"name\":\"Naman Gupta\",\"father_name\":\"Krishna Kumar Gupta\",\"mother_name\":\"Pushplata Gupta\",\"email\":\"lit2018045@iiitl.ac.in\",\"photo\":\"10001.jpg\",\"personal_mobile\":\"8090434623\",\"father_mobile\":\"8115585955\",\"mother_mobile\":\"8840329402\",\"nick\":\"naman\",\"address\":\"133/187 O Block Kidwai Nagar, Kanpur\",\"birth_day\":\"2000-02-15\",\"gender\":\"Male\",\"religion\":\"Hindu\",\"school\":\"\",\"ssc_rool\":\"0\",\"ssc_reg\":\"0\",\"ssc_board\":\"\",\"ssc_result\":\"0\",\"date\":\"2020-12-03 15:25:13\"}', 0, '2020-12-03 15:54:54'),
(39, 1, 'program', 'insert', '4', '::1', 'Google Chrome', '', '{\"id\":\"4\",\"name\":\"Semester 2\",\"start\":\"2019-01-08\",\"end\":\"2019-05-15\",\"subject\":\"11,10,9,8,1\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:01:09\"}', 0, '2020-12-03 16:01:09'),
(40, 1, 'program', 'insert', '5', '::1', 'Google Chrome', '', '{\"id\":\"5\",\"name\":\"Semester 3\",\"start\":\"2019-08-01\",\"end\":\"2019-12-06\",\"subject\":\"15,14,13,12,2\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:04:46\"}', 0, '2020-12-03 16:04:46'),
(41, 1, 'program', 'insert', '6', '::1', 'Google Chrome', '', '{\"id\":\"6\",\"name\":\"Semester 4\",\"start\":\"2020-01-08\",\"end\":\"2020-07-15\",\"subject\":\"20,19,18,17,16\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:07:31\"}', 0, '2020-12-03 16:07:31'),
(42, 1, 'program', 'insert', '7', '::1', 'Google Chrome', '', '{\"id\":\"7\",\"name\":\"Semester 5\",\"start\":\"2020-08-20\",\"end\":\"2020-12-13\",\"subject\":\"24,23,22,21\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:10:21\"}', 0, '2020-12-03 16:10:21'),
(43, 1, 'program', 'insert', '8', '::1', 'Google Chrome', '', '{\"id\":\"8\",\"name\":\"Semester 6\",\"start\":\"2021-01-02\",\"end\":\"2021-06-03\",\"subject\":\"26,25\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:13:06\"}', 0, '2020-12-03 16:13:06'),
(44, 1, 'admit_program', 'insert', '3', '::1', 'Google Chrome', '', '{\"id\":\"3\",\"student_id\":\"10001\",\"program_id\":\"4\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:13:31\",\"admit_by\":\"1\"}', 0, '2020-12-03 16:13:31'),
(45, 1, 'admit_program', 'insert', '4', '::1', 'Google Chrome', '', '{\"id\":\"4\",\"student_id\":\"10001\",\"program_id\":\"5\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:13:39\",\"admit_by\":\"1\"}', 0, '2020-12-03 16:13:39'),
(46, 1, 'admit_program', 'insert', '5', '::1', 'Google Chrome', '', '{\"id\":\"5\",\"student_id\":\"10001\",\"program_id\":\"6\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:13:48\",\"admit_by\":\"1\"}', 0, '2020-12-03 16:13:48'),
(47, 1, 'admit_program', 'insert', '6', '::1', 'Google Chrome', '', '{\"id\":\"6\",\"student_id\":\"10001\",\"program_id\":\"7\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:13:57\",\"admit_by\":\"1\"}', 0, '2020-12-03 16:13:57'),
(48, 1, 'admit_program', 'insert', '7', '::1', 'Google Chrome', '', '{\"id\":\"7\",\"student_id\":\"10001\",\"program_id\":\"8\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:14:05\",\"admit_by\":\"1\"}', 0, '2020-12-03 16:14:05'),
(49, 1, 'admit_program', 'delete', '7', '::1', 'Google Chrome', '{\"id\":\"7\",\"student_id\":\"10001\",\"program_id\":\"8\",\"batch_id\":\"1\",\"admit_date\":\"2020-12-03 16:14:05\",\"admit_by\":\"1\"}', '', 0, '2020-12-03 16:14:09'),
(50, 1, 'program', 'delete', '8', '::1', 'Google Chrome', '{\"id\":\"8\",\"name\":\"Semester 6\",\"start\":\"2021-01-02\",\"end\":\"2021-06-03\",\"subject\":\"26,25\",\"batch\":\"1\",\"fee\":\"90000\",\"type\":\"1\",\"monthly_fee\":\"0\",\"add_by\":\"1\",\"date\":\"2020-12-03 16:13:06\"}', '', 0, '2020-12-03 16:14:20'),
(51, 1, 'subject', 'delete', '25', '::1', 'Google Chrome', '{\"id\":\"25\",\"sub_name\":\"Elective II\",\"sub_code\":\"IE605C\"}', '', 0, '2020-12-03 16:14:37'),
(52, 1, 'subject', 'delete', '28', '::1', 'Google Chrome', '{\"id\":\"28\",\"sub_name\":\"Elective V\",\"sub_code\":\"IE705C\"}', '', 0, '2020-12-03 16:14:41'),
(53, 1, 'subject', 'delete', '27', '::1', 'Google Chrome', '{\"id\":\"27\",\"sub_name\":\"Elective IV\",\"sub_code\":\"IE705C\"}', '', 0, '2020-12-03 16:14:45'),
(54, 1, 'subject', 'delete', '26', '::1', 'Google Chrome', '{\"id\":\"26\",\"sub_name\":\"Elective III\",\"sub_code\":\"IE605C\"}', '', 0, '2020-12-03 16:14:49'),
(55, 1, 'notice', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"title\":\"FEE Payment\",\"description\":\"{{10001}}\",\"date\":\"2020-12-03 16:15:56\",\"add_by\":\"1\"}', 0, '2020-12-03 16:15:56'),
(56, 1, 'notice', 'delete', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"title\":\"FEE Payment\",\"description\":\"{{10001}}\",\"date\":\"2020-12-03 16:15:56\",\"add_by\":\"1\"}', '', 0, '2020-12-03 16:16:49'),
(57, 3, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 16:40:47'),
(58, 2, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 16:41:28'),
(59, 1, 'login', 'insert', '1', '::1', 'Google Chrome', '', '', 1, '2020-12-03 16:43:50'),
(60, 1, 'student', 'update', '10001', '::1', 'Google Chrome', '{\"id\":\"10001\",\"name\":\"Naman Gupta\",\"father_name\":\"Krishna Kumar Gupta\",\"mother_name\":\"Pushplata Gupta\",\"email\":\"lit2018045@iiitl.ac.in\",\"photo\":\"10001.jpg\",\"personal_mobile\":\"8090434623\",\"father_mobile\":\"8115585955\",\"mother_mobile\":\"8840329402\",\"nick\":\"naman\",\"address\":\"133/187 O Block Kidwai Nagar, Kanpur\",\"birth_day\":\"2000-02-15\",\"gender\":\"Male\",\"religion\":\"Hindu\",\"school\":\"\",\"ssc_rool\":\"0\",\"ssc_reg\":\"0\",\"ssc_board\":\"\",\"ssc_result\":\"0\",\"date\":\"2020-12-03 15:25:13\"}', '{\"id\":\"10001\",\"name\":\"Naman Gupta\",\"father_name\":\"Krishna Kumar Gupta\",\"mother_name\":\"Pushplata Gupta\",\"email\":\"lit2018045@iiitl.ac.in\",\"photo\":\"10001.jpg\",\"personal_mobile\":\"8090434623\",\"father_mobile\":\"8115585955\",\"mother_mobile\":\"8840329402\",\"nick\":\"LIT2018045\",\"address\":\"133/187 O Block Kidwai Nagar, Kanpur\",\"birth_day\":\"2000-02-15\",\"gender\":\"Male\",\"religion\":\"Hindu\",\"school\":\"\",\"ssc_rool\":\"0\",\"ssc_reg\":\"0\",\"ssc_board\":\"\",\"ssc_result\":\"0\",\"date\":\"2020-12-03 15:25:13\"}', 0, '2020-12-03 16:46:01'),
(61, 1, 'exam', 'insert', '1', '::1', 'Google Chrome', '', '{\"id\":\"1\",\"program_id\":\"3\",\"sub_id\":\"5\",\"exam_name\":\"mid \",\"total\":\"60\",\"mcq\":\"10\",\"written\":\"50\",\"exam_date\":\"2020-12-04\",\"date\":\"2020-12-03 16:50:58\",\"add_by\":\"1\"}', 0, '2020-12-03 16:50:58'),
(62, 1, 'user', 'update', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"7\"}', 0, '2020-12-03 16:55:38'),
(63, 1, 'user', 'update', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"7\"}', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"2\"}', 0, '2020-12-03 16:55:39'),
(64, 1, 'user', 'update', '1', '::1', 'Google Chrome', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"2\"}', '{\"id\":\"1\",\"uname\":\"admin\",\"fname\":null,\"photo\":\"user_1.png\",\"gender\":\"male\",\"email\":\"admin@iiitl.ac.in\",\"phone\":\"1234567890\",\"address\":null,\"pass\":\"82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d\",\"permit\":\"1\",\"status\":\"1\",\"theme\":\"1\"}', 0, '2020-12-03 16:55:44'),
(65, 1, 'exam', 'insert', '2', '::1', 'Google Chrome', '', '{\"id\":\"2\",\"program_id\":\"7\",\"sub_id\":\"21\",\"exam_name\":\"mid\",\"total\":\"65\",\"mcq\":\"45\",\"written\":\"20\",\"exam_date\":\"2020-12-04\",\"date\":\"2020-12-03 17:07:20\",\"add_by\":\"1\"}', 0, '2020-12-03 17:07:20'),
(66, 1, 'exam', 'insert', '3', '::1', 'Google Chrome', '', '{\"id\":\"3\",\"program_id\":\"7\",\"sub_id\":\"21\",\"exam_name\":\"END\",\"total\":\"140\",\"mcq\":\"70\",\"written\":\"70\",\"exam_date\":\"2020-12-04\",\"date\":\"2020-12-03 17:09:52\",\"add_by\":\"1\"}', 0, '2020-12-03 17:09:52'),
(67, 1, 'exam', 'insert', '4', '::1', 'Google Chrome', '', '{\"id\":\"4\",\"program_id\":\"6\",\"sub_id\":\"18\",\"exam_name\":\"sxm\",\"total\":\"22\",\"mcq\":\"10\",\"written\":\"12\",\"exam_date\":\"2020-12-12\",\"date\":\"2020-12-03 17:17:16\",\"add_by\":\"1\"}', 0, '2020-12-03 17:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms_add`
--

CREATE TABLE `sms_add` (
  `id` int(11) NOT NULL,
  `total_sms` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `total_send` int(11) NOT NULL DEFAULT 0,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_list`
--

CREATE TABLE `sms_list` (
  `id` int(11) NOT NULL,
  `number` text NOT NULL,
  `message` text NOT NULL,
  `len` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `sender` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_setting`
--

CREATE TABLE `sms_setting` (
  `id` int(11) NOT NULL,
  `gateway` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `email` text DEFAULT NULL,
  `photo` text NOT NULL,
  `personal_mobile` text DEFAULT NULL,
  `father_mobile` text DEFAULT NULL,
  `mother_mobile` text DEFAULT NULL,
  `nick` text NOT NULL,
  `address` text DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `religion` text DEFAULT NULL,
  `school` text DEFAULT NULL,
  `ssc_rool` int(11) DEFAULT NULL,
  `ssc_reg` int(11) DEFAULT NULL,
  `ssc_board` text DEFAULT NULL,
  `ssc_result` double DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `email`, `photo`, `personal_mobile`, `father_mobile`, `mother_mobile`, `nick`, `address`, `birth_day`, `gender`, `religion`, `school`, `ssc_rool`, `ssc_reg`, `ssc_board`, `ssc_result`, `date`) VALUES
(10001, 'Naman Gupta', 'Krishna Kumar Gupta', 'Pushplata Gupta', 'lit2018045@iiitl.ac.in', '10001.jpg', '8090434623', '8115585955', '8840329402', 'LIT2018045', '133/187 O Block Kidwai Nagar, Kanpur', '2000-02-15', 'Male', 'Hindu', '', 0, 0, '', 0, '2020-12-03 15:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendence`
--

INSERT INTO `student_attendence` (`id`, `student_id`, `program_id`, `batch_id`, `status`, `date`) VALUES
(1, 10001, 1, 1, 1, '2020-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `student_id`
--

CREATE TABLE `student_id` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `total_fee` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `add_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `sub_name` text NOT NULL,
  `sub_code` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `sub_name`, `sub_code`) VALUES
(1, 'Data Structure', 'IDSA232C'),
(9, 'Probability &\r\nStatistics', 'IPAS232C'),
(2, 'Discrete Mathematics ', 'IDMA332C'),
(3, 'Introduction to Programming', 'IITP132C'),
(4, 'Fundamentals of Electronics Engineering', 'EFEE132C'),
(5, 'Linear Algebra', 'ILA130C'),
(6, 'System Management ', 'ISM132C'),
(7, 'Professional communication-1', 'MPCO132C'),
(8, 'Digital Logic\r\nDesign', 'EDLD232C'),
(10, 'Digital and Data\r\nCommunications', 'EDDC232C'),
(11, 'Professional\r\nCommunication-II', 'MPCO232C'),
(12, 'R\r\nProgramming', 'IRP332C'),
(13, 'Software\r\nManagement', 'ISM332C'),
(14, 'Calculus', 'IC332C'),
(15, 'Theory of\r\nComputation', 'ITOC332C'),
(16, 'Database\r\nManagement\r\nSystem', 'IDBS432C'),
(17, 'Software\r\nEngineering', 'ISOE432C'),
(18, 'Differential\r\nequations &\r\nNumerical\r\nMethods', 'IDNM432C'),
(19, 'Design and\r\nAnalysis of\r\nAlgorithms', 'IDAA432C'),
(20, 'Computer\r\nNetworks', 'ICNE432C'),
(21, 'Cloud\r\nComputing', 'ICC532C'),
(22, 'Operating\r\nSystem', 'IOS532C'),
(23, 'Professional Ethics', 'MPE532C'),
(24, 'Elective I ', 'IE505C');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `bg_color` text NOT NULL,
  `sidebar_hover` text NOT NULL,
  `sidebar_list` text NOT NULL,
  `sidebar_list_hover` text NOT NULL,
  `font_color` text NOT NULL,
  `date` date NOT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `name`, `bg_color`, `sidebar_hover`, `sidebar_list`, `sidebar_list_hover`, `font_color`, `date`, `added_by`) VALUES
(1, 'Default', '#2E363F', '#2A2D35', '#394152', '#313847', '#ffffff', '2018-06-13', 1),
(2, 'Red', '#CF0A2F', '#93021E', '#B54B5F', '#E33A5A', '#ffffff', '2018-06-13', 3),
(3, 'Blue', '#AB2567', '#AB2567', '#AB2567', '#AB2567', '#ffffff', '2018-06-13', 3),
(4, 'Green', '#088730', '#088730', '#4CAB41', '#1BAB2F', '#FFFFFF', '2018-06-13', 3),
(5, 'Yello', '#AB9803', '#AB9803', '#A3AB2E', '#AB9C37', '#000000', '2018-06-13', 3),
(6, 'Black', '#0F0000', '#1C0611', '#260817', '#2B091A', '#FFFFFF', '2018-06-13', 3),
(7, 'Orange', '#E74C3C', '#C0392B', '#E67E22', '#D35400', '#FFFFFF', '2018-06-13', 3),
(9, 'Pink', '#ED5FE9', '#ED3BA1', '#ED98D4', '#ED72CD', '#FFFFFF', '2018-06-13', 3),
(10, 'Blue1', '#564C9E', '#724EED', '#907EED', '#5867ED', '#FFFFFF', '2018-06-14', 3),
(23, 'CYAN', '#005154', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-01-16', 3),
(22, 'Web Dark', '#235A6B', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-01-16', 3),
(21, 'Web', '#378BA6', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-01-16', 3),
(14, 'Deep Rose', '#C44569', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2018-06-21', 3),
(15, 'Purple Corallite', '#574B90', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2018-06-21', 3),
(17, 'Red Color', '#A32929', '#6DEDC2', '#EDE6EC', '#EDE6EC', '#EDE6EC', '2018-10-08', 3),
(19, 'Google color', '#673AB7', '#EDC5D2', '#EDEDED', '#EDE6EC', '#FFFFFF', '2018-11-21', 3),
(20, 'Google Red', '#DB4437', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2018-11-21', 3),
(24, 'new theme', '#331F77', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-01-21', 3),
(25, 'apply', '#ED3B19', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-02-01', 3),
(26, 'dark blue', '#001E4C', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#FFFFFF', '2019-02-08', 3),
(27, 'Copy Theme 1', '#2C293E', '#EDE6EC', '#EDE6EC', '#EDE6EC', '#EDEDED', '2019-04-28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uname` text NOT NULL,
  `fname` text DEFAULT NULL,
  `photo` text NOT NULL,
  `gender` text NOT NULL,
  `email` text DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `permit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `theme` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `fname`, `photo`, `gender`, `email`, `phone`, `address`, `pass`, `permit`, `status`, `theme`) VALUES
(3, 'Dr.Mary Samuels', 'Dr. Mary Samuels', 'user_3.jpg', 'Female', 'mary@iiitl.ac.in', NULL, NULL, '6120ac744907caa62f236bd2695b50478c7fdf17fffb928ac84507ad330b2be8', 8, 1, 1),
(2, 'Dr. Vishal Krishna Singh', 'Dr. Vishal Krishna Singh', 'user_2.jpg', 'Male', 'vks@iiitl.ac.in', NULL, NULL, '719e47226a5eadccc37a227ac5431305e3790b02b627b91acbded45005ff3269', 8, 1, 1),
(1, 'admin', NULL, 'user_1.png', 'male', 'admin@iiitl.ac.in', 1234567890, NULL, '82534dd68dcb1535996973d049e06e83a782526318a259e34ec099630fc2cd3d', 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admit_program`
--
ALTER TABLE `admit_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_list`
--
ALTER TABLE `exam_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_mark`
--
ALTER TABLE `exam_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expence`
--
ALTER TABLE `expence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expence_category`
--
ALTER TABLE `expence_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_category`
--
ALTER TABLE `mark_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_sms`
--
ALTER TABLE `pending_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_payment`
--
ALTER TABLE `receive_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_payment`
--
ALTER TABLE `set_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_activity`
--
ALTER TABLE `site_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_add`
--
ALTER TABLE `sms_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_list`
--
ALTER TABLE `sms_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_setting`
--
ALTER TABLE `sms_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_id`
--
ALTER TABLE `student_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admit_program`
--
ALTER TABLE `admit_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_list`
--
ALTER TABLE `exam_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_mark`
--
ALTER TABLE `exam_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expence`
--
ALTER TABLE `expence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expence_category`
--
ALTER TABLE `expence_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark_category`
--
ALTER TABLE `mark_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_sms`
--
ALTER TABLE `pending_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receive_payment`
--
ALTER TABLE `receive_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_payment`
--
ALTER TABLE `set_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_activity`
--
ALTER TABLE `site_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sms_add`
--
ALTER TABLE `sms_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_list`
--
ALTER TABLE `sms_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_setting`
--
ALTER TABLE `sms_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `student_attendence`
--
ALTER TABLE `student_attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_id`
--
ALTER TABLE `student_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
