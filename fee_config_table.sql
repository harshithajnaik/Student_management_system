-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2018 at 11:08 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee_config_table`
--
ALTER TABLE `fee_config_table`
  ADD PRIMARY KEY (`parameter_code`),
  ADD KEY `batch` (`batch`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee_config_table`
--
ALTER TABLE `fee_config_table`
  ADD CONSTRAINT `batch_fetch` FOREIGN KEY (`batch`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
