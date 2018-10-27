-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 11:21 AM
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

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `updation_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `updation_date`) VALUES
(1, 'Harshitha', 'e3afed0047b08059d0fada10f400c1e5', '2018-07-21 00:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `batch` text NOT NULL,
  `academic_year` int(20) NOT NULL,
  `class_name` varchar(25) NOT NULL COMMENT 'eg:format of 2puc-BASBM-B',
  `section` varchar(5) NOT NULL,
  `action` varchar(10) NOT NULL COMMENT 'active/blocked',
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`batch`, `academic_year`, `class_name`, `section`, `action`, `class_id`) VALUES
('2019-20', 2019, 'second', 'A', 'active', 2),
('2018-19', 2019, 'first', 'B', 'active', 3),
('2020-21', 2020, 'first', 'B', 'Active', 9);

-- --------------------------------------------------------

--
-- Table structure for table `fee_config_table`
--

CREATE TABLE `fee_config_table` (
  `parameter_code` varchar(10) NOT NULL,
  `batch` int(10) NOT NULL,
  `parameter_name` varchar(40) NOT NULL,
  `amount_in_Rs` int(10) NOT NULL,
  `fee_type` varchar(40) NOT NULL COMMENT 'general/specific',
  `payment-type` varchar(20) NOT NULL COMMENT 'monthly/installment',
  `status` varchar(10) NOT NULL COMMENT 'active /blocked'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `uid` int(11) NOT NULL,
  `teacher_uid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `section` varchar(50) NOT NULL,
  `object` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject1`
--

CREATE TABLE `subject1` (
  `sub_code` varchar(10) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_order` int(5) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `s_id` int(10) NOT NULL
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

CREATE TABLE `s_idstudents` (
  `s_id` int(5) NOT NULL,
  `s_first_name` varchar(25) NOT NULL,
  `s_last_name` varchar(15) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `father_mob` int(10) NOT NULL,
  `mother_mob` int(10) NOT NULL,
  `s_dob` date NOT NULL,
  `admission_date` date NOT NULL,
  `board` varchar(50) NOT NULL,
  `res_address` varchar(100) NOT NULL,
  `admssn_no` int(10) NOT NULL,
  `batch_year` int(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section` varchar(3) NOT NULL,
  `s_email_id` varchar(35) DEFAULT NULL,
  `p_email_id` varchar(35) DEFAULT NULL,
  `sms_service` tinyint(1) NOT NULL,
  `TT_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_idstudents`
--

INSERT INTO `s_idstudents` (`s_id`, `s_first_name`, `s_last_name`, `father_name`, `mother_name`, `father_mob`, `mother_mob`, `s_dob`, `admission_date`, `board`, `res_address`, `admssn_no`, `batch_year`, `class_id`, `section`, `s_email_id`, `p_email_id`, `sms_service`, `TT_id`) VALUES
(1, 'sanath', 'HM', 'abc', 'bcd', 990011, 88779900, '2018-03-14', '2018-08-07', 'CBSC', 'uhweu3e8238eh2', 223422, 2018, 3, 'A', 'sanath@gmail.com', 'father@gmail.com', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`uid`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Sanath', 'sanath@gmail.com', '900889900', 'sanath');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `TT_id` int(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `sec` varchar(5) NOT NULL,
  `percentage` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`TT_id`, `class`, `sec`, `percentage`) VALUES
(1, '1PUC', 'A', '90'),
(2, '1PUC', 'A', '90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `fee_config_table`
--
ALTER TABLE `fee_config_table`
  ADD PRIMARY KEY (`parameter_code`),
  ADD KEY `batch` (`batch`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uid` (`uid`);

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
  ADD KEY `TT_id` (`TT_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`uid`);

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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject1`
--
ALTER TABLE `subject1`
  MODIFY `s_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `TT_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee_config_table`
--
ALTER TABLE `fee_config_table`
  ADD CONSTRAINT `batch_fetch` FOREIGN KEY (`batch`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `s_idstudents`
--
ALTER TABLE `s_idstudents`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `s_idstudents_ibfk_1` FOREIGN KEY (`TT_id`) REFERENCES `time_table` (`TT_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
