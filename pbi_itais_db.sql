-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 17, 2014 at 06:59 AM
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
CREATE DATABASE IF NOT EXISTS `pbi_itais_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pbi_itais_db`;

-- --------------------------------------------------------

--
-- Table structure for table `hardware_t`
--

DROP TABLE IF EXISTS `hardware_t`;
CREATE TABLE IF NOT EXISTS `hardware_t` (
  `har_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `har_barcode_number` varchar(20) NOT NULL COMMENT 'Edit length depending on finalized barcode format',
  `har_asset_number` varchar(20) NOT NULL COMMENT 'asset number from PBI',
  `har_asset_type` varchar(20) NOT NULL,
  `har_erf_number` varchar(20) NOT NULL,
  `har_model` varchar(255) NOT NULL,
  `har_serial_number` varchar(40) NOT NULL,
  `har_hostname` varchar(255) NOT NULL,
  `har_status` varchar(40) NOT NULL,
  `har_vendor` int(40) NOT NULL,
  `har_date_of_purchase` date NOT NULL,
  `har_po_number` varchar(40) NOT NULL,
  `har_cost` double NOT NULL,
  `har_book_value` double NOT NULL,
  `har_predetermined_vale` double NOT NULL,
  `har_asset_value` double NOT NULL,
  `har_date_added` date NOT NULL,
  `har_remarks` varchar(255) NOT NULL,
  `har_personnel_id` int(11) NOT NULL COMMENT 'This is the foreign key',
  PRIMARY KEY (`har_id`),
  UNIQUE KEY `hardware_id` (`har_id`),
  UNIQUE KEY `barcode_number` (`har_barcode_number`),
  KEY `personnel_id` (`har_personnel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the table for the hardware' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `personnel_t`
--

DROP TABLE IF EXISTS `personnel_t`;
CREATE TABLE IF NOT EXISTS `personnel_t` (
  `per_id_number` varchar(20) NOT NULL COMMENT 'Actual ID numbers by the personnels',
  `per_position` varchar(20) NOT NULL,
  `per_office` varchar(20) NOT NULL,
  `per_department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the database of all the personnel';

-- --------------------------------------------------------

--
-- Table structure for table `remark_t`
--

DROP TABLE IF EXISTS `remark_t`;
CREATE TABLE IF NOT EXISTS `remark_t` (
  `rem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `rem_date_of_remark` date NOT NULL,
  `rem_time` time NOT NULL,
  `rem_status` varchar(40) NOT NULL,
  `rem_comment` text NOT NULL,
  `rem_hardware_id` int(11) NOT NULL COMMENT 'Hardware foreign key',
  `rem_personnel_id` int(11) NOT NULL COMMENT 'Personnel foreign key',
  PRIMARY KEY (`rem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This is the table for the remarks tracking used in audit trail' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `software_set_t`
--

DROP TABLE IF EXISTS `software_set_t`;
CREATE TABLE IF NOT EXISTS `software_set_t` (
  `set_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `set_hardware_id` int(11) NOT NULL COMMENT 'Hardware foreign key',
  `set_software_id` int(11) NOT NULL COMMENT 'Software foreign key',
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for the software set for the hardwares' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `software_t`
--

DROP TABLE IF EXISTS `software_t`;
CREATE TABLE IF NOT EXISTS `software_t` (
  `sof_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `sof_barcode_number` varchar(20) NOT NULL,
  `sof_asset_number` varchar(20) NOT NULL,
  `sof_erf_number` varchar(20) NOT NULL,
  `sof_manufacturer` varchar(20) NOT NULL,
  `sof_product` varchar(20) NOT NULL,
  `sof_license_key` varchar(20) NOT NULL,
  `sof_hostname` varchar(20) NOT NULL,
  `sof_vendor` varchar(20) NOT NULL,
  `sof_date_of_purchase` date NOT NULL,
  `sof_po_number` varchar(20) NOT NULL,
  `sof_cost` double NOT NULL,
  `sof_book_value` double NOT NULL,
  `sof_predetermined_value` double NOT NULL,
  `sof_asset_value` double NOT NULL,
  `sof_date_added` date NOT NULL,
  `sof_remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`sof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table for the software' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
