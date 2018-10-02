-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: siliconcitydb.cdc93webrjny.ap-south-1.rds.amazonaws.com:3306
-- Generation Time: Oct 02, 2018 at 06:06 PM
-- Server version: 5.7.22-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siliconcity_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `updation_date` timestamp NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `updation_date`) VALUES
(1, 'Harshitha', 'e3afed0047b08059d0fada10f400c1e5', '2018-07-21 00:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `s_id_attendance` int(20) NOT NULL AUTO_INCREMENT,
  `batch_year` varchar(10) NOT NULL,
  `subjects` varchar(20) NOT NULL,
  `percentage` varchar(5) NOT NULL,
  KEY `s_id` (`s_id_attendance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `batch` varchar(20) NOT NULL,
  `academic_year` varchar(20) NOT NULL,
  `class_name` varchar(25) NOT NULL COMMENT 'eg:format of 2puc-BASBM-B',
  `section` varchar(5) NOT NULL,
  `action` varchar(10) NOT NULL COMMENT 'active/blocked',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`batch`, `academic_year`, `class_name`, `section`, `action`, `id`) VALUES
('2018-2019', '2018-2019', 'I PUC', 'A', 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject1`
--

DROP TABLE IF EXISTS `subject1`;
CREATE TABLE IF NOT EXISTS `subject1` (
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_order` int(5) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject1`
--

INSERT INTO `subject1` (`sub_code`, `sub_name`, `sub_order`, `status`, `creation_date`, `s_id`) VALUES
('001', 'Hindi', NULL, NULL, '2018-08-05 07:28:52', 1),
('001', 'Hindi', NULL, NULL, '2018-08-05 07:28:59', 2),
('1', 'hindi', NULL, NULL, '2018-08-05 07:29:32', 3),
('22', 'kkkkk', NULL, NULL, '2018-08-05 07:30:05', 4),
('22', 'kkkkk', NULL, NULL, '2018-08-05 07:31:53', 5),
('77', 'hhh', NULL, NULL, '2018-08-05 07:32:00', 6),
('009', 'english', NULL, NULL, '2018-08-05 07:33:18', 7),
('005', 'kannada', NULL, NULL, '2018-08-05 07:37:52', 8),
('0041', 'kanglish', NULL, NULL, '2018-08-05 07:55:41', 9);

-- --------------------------------------------------------

--
-- Table structure for table `s_idstudents`
--

DROP TABLE IF EXISTS `s_idstudents`;
CREATE TABLE IF NOT EXISTS `s_idstudents` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT,
  `s_first_name` varchar(25) NOT NULL,
  `s_last_name` varchar(15) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `parent_mob` varchar(20) NOT NULL,
  `s_dob` varchar(30) NOT NULL,
  `admission_date` varchar(30) NOT NULL,
  `board` varchar(50) NOT NULL,
  `res_address` varchar(256) NOT NULL,
  `batch_year` int(10) NOT NULL,
  `class` varchar(5) NOT NULL,
  `s_email_id` varchar(35) DEFAULT NULL,
  `p_email_id` varchar(35) DEFAULT NULL,
  `sms_service` tinyint(1) NOT NULL,
  `TT_id` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `s_id` (`s_id`),
  KEY `TT_id` (`TT_id`),
  KEY `class_id` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_idstudents`
--

INSERT INTO `s_idstudents` (`s_id`, `s_first_name`, `s_last_name`, `father_name`, `mother_name`, `parent_mob`, `s_dob`, `admission_date`, `board`, `res_address`, `batch_year`, `class`, `s_email_id`, `p_email_id`, `sms_service`, `TT_id`, `gender`, `class_id`) VALUES
(1, 'Natesh', 'M', 'Manjunath M K', 'Seethalakshmi', '+91 9986108756', '08/19/1989', '2018-10-02 18:01:40', 'IPUC', '#476/A 2nd cross 1st block JP Nagar 8th phase Opposite to HM World City Apartments Bangalore - 560062', 2018, '1', 'natesh.8934@gmail.com', 'natesh.8934@gmail.com', 1, 0, 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
CREATE TABLE IF NOT EXISTS `time_table` (
  `TT_id` int(20) NOT NULL AUTO_INCREMENT,
  `class` varchar(10) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `percentage` varchar(5) NOT NULL,
  PRIMARY KEY (`TT_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  ADD CONSTRAINT `s_idstudents_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
