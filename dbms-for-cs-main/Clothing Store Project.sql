-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 12:40 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothing store`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Item_ID` varchar(50) NOT NULL,
  `C_Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Item_ID`, `C_Name`, `Phone`) VALUES
('401', 'Nayeem Chowdhury', '01310981234'),
('305', 'Oishee Ahmed', '01416789034'),
('502', 'Afnan Khan', '01551239876'),
('302', 'Rehnuma Haque', '01671234567'),
('202', 'Mr. Abraham', '01710987654'),
('103', 'Mr. Hussain', '01711234567'),
('102', 'Mr. Ahmed', '01714567890'),
('405', 'Masudur Rahman', '01810987451'),
('403', 'Iyaz Hossain', '01914560912');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_ID` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Price` float(6,2) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_ID`, `Type`, `Color`, `Price`, `Status`) VALUES
('101', 'Shirt', 'Red', 1790.00, 'Available'),
('102', 'Shirt', 'Blue', 1890.00, 'Sold'),
('103', 'Shirt', 'Black', 1840.00, 'Sold'),
('104', 'Shirt', 'Maroon', 1990.00, 'Available'),
('105', 'Shirt', 'Purple', 1690.00, 'Available'),
('201', 'Pant', 'Blue', 1690.00, 'Available'),
('202', 'Pant', 'Black', 1990.00, 'Sold'),
('203', 'Pant', 'Brown', 1840.00, 'Available'),
('204', 'Pant', 'Off White', 1690.00, 'Available'),
('301', 'Sharee', 'Black', 2990.00, 'Available'),
('302', 'Sharee', 'Red', 3590.00, 'Sold'),
('303', 'Sharee', 'Blue', 2690.00, 'Available'),
('304', 'Sharee', 'Green', 2590.00, 'Available'),
('305', 'Sharee', 'Purple', 3390.00, 'Sold'),
('401', 'Punjabi', 'Green', 2190.00, 'Sold'),
('402', 'Punjabi', 'Black', 1890.00, 'Available'),
('403', 'Punjabi', 'Maroon', 2190.00, 'Sold'),
('404', 'Punjabi', 'Yellow', 1890.00, 'Available'),
('405', 'Punjabi', 'Red', 2090.00, 'Sold'),
('501', 'Salowar', 'Purple', 1890.00, 'Available'),
('502', 'Salowar', 'Red', 1990.00, 'Sold'),
('503', 'Salowar', 'Yellow', 1890.00, 'Available'),
('504', 'Salowar', 'Blue', 1790.00, 'Available'),
('505', 'Salowar', 'Black', 1840.00, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `C_Name` varchar(50) NOT NULL,
  `Item_ID` varchar(50) NOT NULL,
  `Bill` float(6,2) NOT NULL,
  `Method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`C_Name`, `Item_ID`, `Bill`, `Method`) VALUES
('Mr. Ahmed', '102', 1890.00, 'Card'),
('Mr. Hussain', '103', 1840.00, 'Mobile Banking'),
('Mr. Abraham', '202', 1990.00, 'Cash'),
('Rehnuma Haque', '302', 3590.00, 'Cash'),
('Oishee Ahmed', '305', 3390.00, 'Mobile Banking'),
('Nayeem Chowdhury', '401', 2190.00, 'Cash'),
('Iyaz Hossain', '403', 2190.00, 'Card'),
('Masudur Rahman', '405', 2090.00, 'Mobile Banking'),
('Afnan Khan', '502', 1990.00, 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `S_ID` varchar(50) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `Item_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`S_ID`, `S_Name`, `Item_ID`) VALUES
('001', 'Aadi', '102'),
('001', 'Aadi', '202'),
('003', 'Sohan', '103'),
('003', 'Sohan', '403'),
('003', 'Sohan', '401'),
('001', 'Aadi', '405'),
('002', 'Mim', '302'),
('002', 'Mim', '305'),
('004', 'Atika', '502');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Sup_ID` varchar(50) NOT NULL,
  `Sup_Name` varchar(50) NOT NULL,
  `Item_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Sup_ID`, `Sup_Name`, `Item_ID`) VALUES
('1124', 'Capital Fabrics', '101'),
('1124', 'Capital Fabrics', '102'),
('1124', 'Capital Fabrics', '103'),
('1124', 'Capital Fabrics', '104'),
('1124', 'Capital Fabrics', '105'),
('1080', 'WAL', '201'),
('1080', 'WAL', '202'),
('1080', 'WAL', '203'),
('1080', 'WAL', '204'),
('1331', 'Shaarighor', '301'),
('1331', 'Shaarighor', '302'),
('1331', 'Shaarighor', '303'),
('1331', 'Shaarighor', '304'),
('1331', 'Shaarighor', '305'),
('1290', 'Hamid Fashion', '401'),
('1290', 'Hamid Fashion', '402'),
('1290', 'Hamid Fashion', '403'),
('1290', 'Hamid Fashion', '404'),
('1290', 'Hamid Fashion', '405'),
('1408', 'Merina', '501'),
('1408', 'Merina', '502'),
('1408', 'Merina', '503'),
('1408', 'Merina', '504'),
('1408', 'Merina', '505');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `Phone` (`Phone`),
  ADD UNIQUE KEY `Phone_2` (`Phone`),
  ADD UNIQUE KEY `Phone_3` (`Phone`),
  ADD UNIQUE KEY `Phone_4` (`Phone`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD UNIQUE KEY `ID` (`Item_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Item_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
