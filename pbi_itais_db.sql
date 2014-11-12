-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2014 at 08:31 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pbi_itais_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hardware_t`
--

CREATE TABLE IF NOT EXISTS `hardware_t` (
  `hardware_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `barcode_number` varchar(20) NOT NULL COMMENT 'Edit length depending on finalized barcode format',
  `asset_number` varchar(20) NOT NULL COMMENT 'asset number from PBI',
  `asset_type` varchar(20) NOT NULL,
  `erf_number` varchar(20) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial_number` varchar(40) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `status` varchar(40) NOT NULL,
  `vendor` int(40) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `po_number` varchar(40) NOT NULL,
  `cost` double NOT NULL,
  `book_value` double NOT NULL,
  `predetermined_vale` double NOT NULL,
  `asset_value` double NOT NULL,
  `date_added` date NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `personnel_id` int(11) NOT NULL COMMENT 'This is the foreign key',
  PRIMARY KEY (`hardware_id`),
  UNIQUE KEY `hardware_id` (`hardware_id`),
  UNIQUE KEY `barcode_number` (`barcode_number`),
  KEY `personnel_id` (`personnel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the table for the hardware' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_t`
--

CREATE TABLE IF NOT EXISTS `personnel_t` (
  `personnel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID auto-generated',
  `id_number` varchar(20) NOT NULL COMMENT 'Actual ID numbers by the personnels',
  `position` varchar(20) NOT NULL,
  `office` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`personnel_id`),
  UNIQUE KEY `personnel_id` (`personnel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the database of all the personnel' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `remark_t`
--

CREATE TABLE IF NOT EXISTS `remark_t` (
  `remark_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `date_of_remark` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(40) NOT NULL,
  `comment` text NOT NULL,
  `hardware_id` int(11) NOT NULL COMMENT 'Hardware foreign key',
  `personnel_id` int(11) NOT NULL COMMENT 'Personnel foreign key',
  PRIMARY KEY (`remark_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the table for the remarks tracking used in audit trail' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `software_set_t`
--

CREATE TABLE IF NOT EXISTS `software_set_t` (
  `software_set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `hardware_id` int(11) NOT NULL COMMENT 'Hardware foreign key',
  `software_id` int(11) NOT NULL COMMENT 'Software foreign key',
  PRIMARY KEY (`software_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for the software set for the hardwares' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `software_t`
--

CREATE TABLE IF NOT EXISTS `software_t` (
  `software_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `barcode_number` varchar(20) NOT NULL,
  `asset_number` varchar(20) NOT NULL,
  `erf_number` varchar(20) NOT NULL,
  `manufacturer` varchar(20) NOT NULL,
  `product` varchar(20) NOT NULL,
  `license_key` varchar(20) NOT NULL,
  `hostname` varchar(20) NOT NULL,
  `vendor` varchar(20) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `po_number` varchar(20) NOT NULL,
  `cost` double NOT NULL,
  `book_value` double NOT NULL,
  `predetermined_value` double NOT NULL,
  `asset_value` double NOT NULL,
  `date_added` date NOT NULL,
  `remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`software_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for the software' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
