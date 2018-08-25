-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2018 at 08:34 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms1`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `batch` int(10) NOT NULL,
  `academic_year` int(20) NOT NULL,
  `class_name` varchar(25) NOT NULL COMMENT 'eg:format of 2puc-BASBM-B',
  `section` varchar(5) NOT NULL,
  `action` varchar(10) NOT NULL COMMENT 'active/blocked',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `s_idstudents` (
  `s_id` int(5) NOT NULL AUTO_INCREMENT,
  `s_first_name` varchar(25) NOT NULL,
  `s_last_name` varchar(15) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `parent_mob` int(10) NOT NULL,
  `s_dob` date NOT NULL,
  `admission_date` date NOT NULL,
  `board` varchar(50) NOT NULL,
  `res_address` varchar(100) NOT NULL,
  `batch_year` int(10) NOT NULL,
  `class` varchar(5) NOT NULL,
  `s_email_id` varchar(35) DEFAULT NULL,
  `p_email_id` varchar(35) DEFAULT NULL,
  `sms_service` tinyint(1) NOT NULL,
  `TT_id` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `s_id` (`s_id`),
  KEY `TT_id` (`TT_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `TT_id` int(20) NOT NULL AUTO_INCREMENT,
  `class` varchar(10) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `percentage` varchar(5) NOT NULL,
  PRIMARY KEY (`TT_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `s_id` (`s_id_attendance`);

--
-- Indexes for table `subject1`
--
ALTER TABLE `subject1`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `TT_id` (`TT_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`TT_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `s_id_attendance` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject1`
--
ALTER TABLE `subject1`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `TT_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`s_id_attendance`) REFERENCES `s_idstudents` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  ADD CONSTRAINT `s_idstudents_ibfk_1` FOREIGN KEY (`TT_id`) REFERENCES `time_table` (`TT_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
