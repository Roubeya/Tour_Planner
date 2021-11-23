-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2021 at 06:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Tour_Planner`
--

-- --------------------------------------------------------

--
-- Table structure for table `Login_Database`
--

CREATE TABLE `Login_Database` (
  `Username` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `Password` varchar(16) CHARACTER SET latin7 COLLATE latin7_general_cs NOT NULL DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Login_Database`
--

INSERT INTO `Login_Database` (`Username`, `Password`) VALUES
('', ''),
('aashirbad', 'aashirbad'),
('abhi.asthana', 'password'),
('admin', ''),
('Akansha.asthana', 'akansha'),
('akansha.jain', 'password'),
('Ankur', 'password'),
('Ashirbad', 'ashirbad'),
('hc', 'password'),
('himanshu', 'password'),
('iamcool', 'password'),
('Jatin', 'password'),
('mks', 'password'),
('mohit.arya', 'password'),
('Rasmita', 'Rasmita@1974'),
('Sanjeev.Kumar', 'password'),
('subham', 'result');

-- --------------------------------------------------------

--
-- Table structure for table `Places_Database`
--

CREATE TABLE `Places_Database` (
  `Sl.No` int(2) DEFAULT NULL,
  `Places` varchar(20) DEFAULT NULL,
  `Scenic Beauty` decimal(3,1) DEFAULT NULL,
  `Religious` decimal(4,2) DEFAULT NULL,
  `Zoological Biodiversity` decimal(3,1) DEFAULT NULL,
  `Historical` decimal(3,1) DEFAULT NULL,
  `Amusement` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Places_Database`
--

INSERT INTO `Places_Database` (`Sl.No`, `Places`, `Scenic Beauty`, `Religious`, `Zoological Biodiversity`, `Historical`, `Amusement`) VALUES
(1, 'Almora', '1.5', '1.75', '1.5', '2.0', '1.5'),
(2, 'Auli', '1.4', '1.70', '1.2', '-0.9', '1.2'),
(3, 'Binsar', '-3.0', '1.65', '-3.0', '-3.0', '-3.0'),
(4, 'Chakrata', '1.5', '1.10', '-3.0', '-3.0', '-3.0'),
(5, 'Chaukori', '1.5', '1.50', '2.0', '1.5', '-3.0'),
(6, 'Chopta', '1.5', '1.50', '1.1', '1.1', '0.8'),
(7, 'Dehradun', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(8, 'Dharchula', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(9, 'Dharchula', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(10, 'Harsil', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(11, 'Jim corbettt', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(12, 'kaussani', '1.7', '2.00', '0.5', '2.0', '-0.9'),
(13, 'Kedarnath', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(14, 'Landour', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(15, 'Mount Abott', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(16, 'Mukteshwar', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(17, 'Musoori', '1.5', '1.55', '1.3', '1.5', '1.4'),
(18, 'Nanital', '1.5', '1.80', '0.5', '1.0', '0.5'),
(19, 'Pangot', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(20, 'Rajaji National Park', '1.4', '1.40', '0.0', '0.5', '0.8'),
(21, 'Rishikesh', '1.5', '1.50', '2.0', '1.0', '1.5'),
(22, 'Rudraprayag', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(23, 'Sattal', '-3.0', '-3.00', '-3.0', '-3.0', '-3.0'),
(24, 'Tungath', '1.8', '1.70', '-3.0', '0.0', '-3.0'),
(25, 'Uttarkashi', '4.8', '4.70', '-3.0', '3.0', '-3.0');

-- --------------------------------------------------------

--
-- Table structure for table `Users_Database`
--

CREATE TABLE `Users_Database` (
  `Username` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `Name` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` text NOT NULL,
  `Home State` text NOT NULL,
  `Contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database of the Users';

--
-- Dumping data for table `Users_Database`
--

INSERT INTO `Users_Database` (`Username`, `Name`, `Age`, `Gender`, `Home State`, `Contact`) VALUES
('aashirbad', 'aashirbad', 21, 'Male', 'chandigarh', 9035234124),
('abhi.asthana', 'Abhishek Asthana', 21, 'Male', 'UP', 7007456691),
('admin', 'Administrator', 20, 'Male', 'Odisha', 8954936351),
('Akansha.asthana', 'Akansha Asthana', 21, 'Female', 'Uttarakhand', 9876543210),
('akansha.jain', 'Akansha Jain', 22, 'Female', 'Uttarakhand', 1234567890),
('Ankur', 'Ankur Shukla', 22, 'Male', 'UP', 7003035638),
('Ashirbad', 'Ashirbad Sarangi', 20, 'Male', 'Odisha', 8445339743),
('hc', 'Himanshi Chandel', 20, 'Female', 'New Delhi', 8178628279),
('himanshu', 'Himanshu Kumar', 21, 'Male', 'Bihar', 6204738645),
('iamcool', 'A. Sarangi', 20, 'Female', 'Mumbai', 9083421432),
('Jatin', 'Jatin Sinha', 40, 'Male', 'New Delhi', 7093214902),
('mks', 'Mohit Kumar Singh', 21, 'Male', 'UP', 8081552827),
('mohit.arya', 'Mohit Kumar Arya', 32, 'Male', 'Uttarakhand', 7017369225),
('Rasmita', 'Rasmita Tripathy', 44, 'Female', 'Odisha', 8763214998),
('Sanjeev.Kumar', 'Sanjeev Kumar', 35, 'Male', 'Haryana', 9149396498),
('subham', 'Shubam Prusty', 21, 'Male', 'Odisha', 9821346889);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Login_Database`
--
ALTER TABLE `Login_Database`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `Users_Database`
--
ALTER TABLE `Users_Database`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Contact` (`Contact`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
