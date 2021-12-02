-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2021 at 06:42 PM
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
('aashirbad', 'aashirbad'),
('abhi.asthana', 'password'),
('abhishek', 'password'),
('admin', ''),
('akansha.jain', 'password'),
('Ankur', 'password'),
('Ashirbad', 'ashirbad'),
('barsha', 'tuy'),
('hc', 'password'),
('himanshu', 'password'),
('iamcool', 'password'),
('Jatin', 'password'),
('mks', 'password'),
('mohit.arya', 'password'),
('Rasmita', 'Rasmita@1974'),
('Sanjeev.Kumar', 'password'),
('subham', 'result'),
('User-1', 'password'),
('User-10', 'password'),
('User-11', 'password'),
('User-12', 'password'),
('User-13', 'password'),
('User-14', 'password'),
('User-15', 'password'),
('User-16', 'password'),
('User-17', 'password'),
('User-18', 'password'),
('User-19', 'password'),
('User-2', 'password'),
('User-20', 'password'),
('User-21', 'password'),
('User-22', 'password'),
('User-23', 'password'),
('User-24', 'password'),
('User-25', 'password'),
('User-26', 'password'),
('User-27', 'password'),
('User-28', 'password'),
('User-29', 'password'),
('User-3', 'password'),
('User-30', 'password'),
('User-31', 'password'),
('User-32', 'password'),
('User-33', 'password'),
('User-34', 'password'),
('User-35', 'password'),
('User-36', 'password'),
('User-37', 'password'),
('User-38', 'password'),
('User-39', 'password'),
('User-4', 'password'),
('User-40', 'password'),
('User-41', 'password'),
('User-42', 'password'),
('User-43', 'password'),
('User-44', 'password'),
('User-45', 'password'),
('User-46', 'password'),
('User-47', 'password'),
('User-48', 'password'),
('User-49', 'password'),
('User-5', 'password'),
('User-6', 'password'),
('User-7', 'password'),
('User-8', 'password'),
('User-9', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `Places_Database`
--

CREATE TABLE `Places_Database` (
  `Sl.No` int(2) NOT NULL,
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
(1, 'Almora', '4.5', '4.75', '4.5', '5.0', '4.5'),
(2, 'Auli', '4.4', '4.70', '4.2', '2.1', '4.2'),
(3, 'Binsar', '4.7', '4.65', '4.1', '2.1', '4.1'),
(4, 'Chakrata', '4.5', '4.10', '4.4', '2.8', '4.7'),
(5, 'Chaukori', '4.5', '4.50', '5.0', '4.5', '3.9'),
(6, 'Chopta', '4.5', '4.50', '4.1', '4.1', '3.8'),
(7, 'Dehradun', '4.1', '3.80', '3.7', '4.1', '4.7'),
(8, 'Dharchula', '4.2', '4.10', '2.9', '2.5', '4.3'),
(9, 'Gaurikund', '4.3', '2.70', '3.5', '2.5', '4.5'),
(10, 'Harsil', '4.1', '1.70', '5.0', '3.1', '4.0'),
(11, 'Jim Corbettt', '4.7', '5.00', '3.5', '5.0', '2.1'),
(12, 'Kaussani', '4.5', '5.00', '4.2', '4.1', '4.2'),
(13, 'Kedarnath', '4.1', '2.30', '3.2', '2.4', '4.6'),
(14, 'Landour', '4.3', '1.80', '3.2', '2.3', '4.2'),
(15, 'Lansdowne', '4.4', '3.70', '3.9', '3.9', '4.2'),
(16, 'Mount Abott', '4.5', '4.55', '4.3', '4.5', '4.4'),
(17, 'Mukteshwar', '4.5', '4.80', '3.5', '4.0', '4.6'),
(18, 'Musoorie', '3.9', '3.50', '3.8', '2.8', '4.3'),
(19, 'Nanital', '4.4', '4.40', '3.0', '3.5', '3.8'),
(20, 'Pangot', '4.5', '4.50', '5.0', '4.0', '4.5'),
(21, 'Rajaji National Park', '4.2', '4.30', '4.1', '3.4', '4.2'),
(22, 'Rishikesh', '4.4', '2.60', '3.2', '2.3', '4.7'),
(23, 'Rudraprayag', '3.9', '4.70', '4.2', '3.8', '3.7'),
(24, 'Sattal', '4.8', '4.70', '3.8', '4.1', '4.4'),
(25, 'Tungath', '4.1', '4.60', '3.9', '4.1', '4.0'),
(26, 'Uttarkashi', '4.7', '2.80', '3.9', '3.6', '4.3');

-- --------------------------------------------------------

--
-- Table structure for table `Test_Table`
--

CREATE TABLE `Test_Table` (
  `Name` varchar(100) DEFAULT NULL,
  `Password` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Test_Table`
--

INSERT INTO `Test_Table` (`Name`, `Password`) VALUES
('1', 'password'),
('2', 'password'),
('3', 'password'),
('4', 'password'),
('5', 'password'),
('6', 'password'),
('7', 'password'),
('8', 'password'),
('9', 'password'),
('10', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `Users_Database`
--

CREATE TABLE `Users_Database` (
  `Username` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `Name` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` text NOT NULL,
  `Home State` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database of the Users';

--
-- Dumping data for table `Users_Database`
--

INSERT INTO `Users_Database` (`Username`, `Name`, `Age`, `Gender`, `Home State`) VALUES
('aashirbad', 'aashirbad', 21, 'Male', 'chandigarh'),
('abhi.asthana', 'Abhishek Asthana', 21, 'Male', 'UP'),
('abhishek', 'Abhishek Asthana', 22, 'Male', 'Uttar Pradesh'),
('admin', 'Administrator', 20, 'Male', 'Odisha'),
('Akansha.asthana', 'Akansha Asthana', 21, 'Female', 'Uttarakhand'),
('akansha.jain', 'Akansha Jain', 22, 'Female', 'Uttarakhand'),
('Ankur', 'Ankur Shukla', 22, 'Male', 'UP'),
('Ashirbad', 'Ashirbad Sarangi', 20, 'Male', 'Odisha'),
('barsha', 'Barsha Senapati', 21, 'Female', 'Odisha'),
('hc', 'Himanshi Chandel', 20, 'Female', 'New Delhi'),
('himanshu', 'Himanshu Kumar', 21, 'Male', 'Bihar'),
('iamcool', 'A. Sarangi', 20, 'Female', 'Mumbai'),
('Jatin', 'Jatin Sinha', 40, 'Male', 'New Delhi'),
('mks', 'Mohit Kumar Singh', 21, 'Male', 'UP'),
('mohit.arya', 'Mohit Kumar Arya', 32, 'Male', 'Uttarakhand'),
('Rasmita', 'Rasmita Tripathy', 44, 'Female', 'Odisha'),
('Sanjeev.Kumar', 'Sanjeev Kumar', 35, 'Male', 'Haryana'),
('subham', 'Shubam Prusty', 21, 'Male', 'Odisha'),
('User-1', 'Name-1', 19, 'Male', 'Punjab'),
('User-10', 'Name-10', 15, 'Female', 'Uttar pradesh'),
('User-11', 'Name-11', 47, 'Female', 'Uttar Pradesh'),
('User-12', 'Name-12', 18, 'Female', 'Uttar Pradesh'),
('User-13', 'Name-13', 14, 'Female', 'Uttar Pradesh'),
('User-14', 'Name-14', 21, 'Female', 'Odisha '),
('User-15', 'Name-15', 16, 'Female', 'Uttar Pradesh '),
('User-16', 'Name-16', 16, 'Female', 'Uttar Pradesh'),
('User-17', 'Name-17', 21, 'Male', 'Odisha'),
('User-18', 'Name-18', 22, 'Male', 'Odisha'),
('User-19', 'Name-19', 22, 'Male', 'Orissa'),
('User-2', 'Name-2', 17, 'Female', 'Uttar Pradesh '),
('User-20', 'Name-20', 21, 'Male', 'Punjab'),
('User-21', 'Name-21', 21, 'Male', 'Odisha'),
('User-22', 'Name-22', 21, 'Male', 'Odisha '),
('User-23', 'Name-23', 20, 'Male', 'Uttar Pradesh '),
('User-24', 'Name-24', 21, 'Male', 'Odisha '),
('User-25', 'Name-25', 17, 'Female', 'Uttar Pradesh'),
('User-26', 'Name-26', 22, 'Male', 'Odisha'),
('User-27', 'Name-27', 17, 'Male', 'Uttar Pradesh '),
('User-28', 'Name-28', 22, 'Male', 'Odisha'),
('User-29', 'Name-29', 22, 'Male', 'Odisha'),
('User-3', 'Name-3', 17, 'Female', 'New Delhi'),
('User-30', 'Name-30', 48, 'Male', 'Uttar Pradesh'),
('User-31', 'Name-31', 21, 'Male', 'Odisha'),
('User-32', 'Name-32', 21, 'Male', 'Odisha'),
('User-33', 'Name-33', 109, 'Male', 'Goa'),
('User-34', 'Name-34', 23, 'Male', 'Dehradun'),
('User-35', 'Name-35', 21, 'Male', 'Odisha'),
('User-36', 'Name-36', 21, 'Female', 'Odisha'),
('User-37', 'Name-37', 21, 'Male', 'Odisha '),
('User-38', 'Name-38', 17, 'Female', 'Uttar Pradesh'),
('User-39', 'Name-39', 23, 'Female', 'Odisha'),
('User-4', 'Name-4', 18, 'Male', 'Uttar Pradesh'),
('User-40', 'Name-40', 23, 'Male', 'Odisha '),
('User-41', 'Name-41', 20, 'Male', 'Uttar Pradesh'),
('User-42', 'Name-42', 21, 'Male', 'Madhya Pradesh'),
('User-43', 'Name-43', 22, 'Male', 'Odisha'),
('User-44', 'Name-44', 22, 'Male', 'Odisha'),
('User-45', 'Name-45', 21, 'Male', 'Uttar Pradesh'),
('User-46', 'Name-46', 16, 'Female', 'Uttar Pradesh '),
('User-47', 'Name-47', 20, 'Male', 'Madhya Pradesh'),
('User-48', 'Name-48', 16, 'Female', 'Uttar Pradesh '),
('User-49', 'Name-49', 21, 'Female', 'Odisha'),
('User-5', 'Name-5', 18, 'Female', 'Uttar pradesh'),
('User-6', 'Name-6', 15, 'Female', 'Uttar Pradesh'),
('User-7', 'Name-7', 17, 'Female', 'Uttar Pradesh'),
('User-8', 'Name-8', 18, 'Male', 'Uttar Pradesh'),
('User-9', 'Name-9', 21, 'Female', 'Odisha ');

-- --------------------------------------------------------

--
-- Table structure for table `Users_Recommendation`
--

CREATE TABLE `Users_Recommendation` (
  `Username` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `Recommendation` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users_Recommendation`
--

INSERT INTO `Users_Recommendation` (`Username`, `Recommendation`) VALUES
('aashirbad', NULL),
('abhi.asthana', NULL),
('abhishek', NULL),
('admin', 'ans[]=1&ans[]=2&ans[]=3&ans[]=4&ans[]=5&ans[]=6&ans[]=7&ans[]=8&ans[]=9&ans[]=10&ans[]=11&ans[]=12&ans[]=13&ans[]=14&ans[]=15&ans[]=16&ans[]=17&ans[]=18&ans[]=19&ans[]=20&ans[]=21&ans[]=22&ans[]=23&ans[]=24&ans[]=25&ans[]=26&ans[]='),
('akansha.jain', NULL),
('Ankur', NULL),
('Ashirbad', NULL),
('barsha', NULL),
('hc', NULL),
('himanshu', NULL),
('iamcool', NULL),
('Jatin', NULL),
('mks', NULL),
('mohit.arya', NULL),
('Rasmita', NULL),
('Sanjeev.Kumar', NULL),
('subham', NULL),
('User-1', NULL),
('User-10', NULL),
('User-11', NULL),
('User-12', NULL),
('User-13', NULL),
('User-14', NULL),
('User-15', NULL),
('User-16', NULL),
('User-17', NULL),
('User-18', NULL),
('User-19', NULL),
('User-2', NULL),
('User-20', NULL),
('User-21', NULL),
('User-22', NULL),
('User-23', NULL),
('User-24', NULL),
('User-25', NULL),
('User-26', NULL),
('User-27', NULL),
('User-28', NULL),
('User-29', NULL),
('User-3', NULL),
('User-30', NULL),
('User-31', NULL),
('User-32', NULL),
('User-33', NULL),
('User-34', NULL),
('User-35', NULL),
('User-36', NULL),
('User-37', NULL),
('User-38', NULL),
('User-39', NULL),
('User-4', NULL),
('User-40', NULL),
('User-41', NULL),
('User-42', NULL),
('User-43', NULL),
('User-44', NULL),
('User-45', NULL),
('User-46', NULL),
('User-47', NULL),
('User-48', NULL),
('User-49', NULL),
('User-5', NULL),
('User-6', NULL),
('User-7', NULL),
('User-8', NULL),
('User-9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Users_Response`
--

CREATE TABLE `Users_Response` (
  `Username` varchar(100) CHARACTER SET latin2 COLLATE latin2_czech_cs NOT NULL,
  `Scenic_Beauty` float DEFAULT NULL,
  `Religious` float DEFAULT NULL,
  `Zoological_Biodiversity` float DEFAULT NULL,
  `Historical` float DEFAULT NULL,
  `Amusement` float DEFAULT NULL,
  `Mean` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users_Response`
--

INSERT INTO `Users_Response` (`Username`, `Scenic_Beauty`, `Religious`, `Zoological_Biodiversity`, `Historical`, `Amusement`, `Mean`) VALUES
('aashirbad', 3.5, 1.25, 4.35, 1.75, 4.75, 3.12),
('abhi.asthana', 3.25, 1.75, 4.35, 1.25, 4.75, 3.07),
('abhishek', 1.25, 3.5, 2.4, 2.5, 4, 2.73),
('admin', 0.25, 4, 0, 2, 0, 1.25),
('akansha.jain', 2, 4.25, 1.35, 4.75, 1.75, 2.82),
('Ankur', 2, 5, 1.35, 5, 1.75, 3.02),
('Ashirbad', 1.25, 3.5, 2.4, 2.5, 4, 4.55),
('barsha', 1, 4, 2.05, 2, 3.25, 2.46),
('hc', 1, 4, 2.05, 2, 3.25, 2.46),
('himanshu', 1, 4, 2.05, 2, 3.25, 2.46),
('Jatin', 2, 5, 2.05, 5, 3.25, 3.46),
('mks', 2.75, 0.5, 3.7, 1.5, 4.5, 2.59),
('mohit.arya', 1.25, 3.5, 2.4, 2.5, 4, 2.73),
('Rasmita', 2, 5, 2.05, 5, 3.25, 3.46),
('Sanjeev.Kumar', 5, 5, 3.95, 5, 2.75, 4.34),
('subham', 2, 4.25, 1.35, 4.75, 1.75, 2.82),
('User-1', 2, 3.5, 3.05, 2.5, 4.25, 3.06),
('User-10', 5, 3.5, 4.3, 4.5, 3.5, 4.16),
('User-11', 5, 5, 5, 5, 5, 5),
('User-12', 3, 3, 3.35, 3, 3.75, 3.22),
('User-13', 5, 5, 5, 5, 5, 5),
('User-14', 4.75, 4, 3.95, 4, 2.75, 3.89),
('User-15', 3, 3, 3, 3, 3, 3),
('User-16', 1.25, 4.25, 1.35, 2.75, 1.75, 2.27),
('User-17', 4.75, 3.25, 5, 3.75, 5, 4.35),
('User-18', 3, 2.25, 3.7, 2.75, 4.5, 3.24),
('User-19', 4.25, 3.5, 5, 2.5, 5, 4.05),
('User-2', 3, 3, 3, 3, 3, 3),
('User-20', 1, 1, 1, 1, 1, 1),
('User-21', 3.5, 5, 2.3, 5, 1.5, 3.46),
('User-22', 4.25, 2, 5, 2, 5, 3.65),
('User-23', 5, 5, 3.6, 5, 2, 4.12),
('User-24', 4, 2.5, 4, 3.5, 4, 3.6),
('User-25', 4.25, 2, 5, 2, 5, 3.65),
('User-26', 4.75, 3.25, 3.95, 3.75, 2.75, 3.69),
('User-27', 3.25, 4, 3.7, 4, 4.5, 3.89),
('User-28', 3.75, 3, 3.65, 3, 3.25, 3.33),
('User-29', 3.5, 3.5, 3.65, 2.5, 3.25, 3.28),
('User-3', 1, 1, 1, 1, 1, 1),
('User-30', 3.5, 2, 4, 2, 4, 3.1),
('User-31', 4.75, 4, 3.95, 4, 2.75, 3.89),
('User-32', 3.25, 2.5, 3.3, 1.5, 2.5, 2.61),
('User-33', 4, 1, 5, 1, 5, 3.2),
('User-34', 2.5, 2.5, 2.3, 1.5, 1.5, 2.06),
('User-35', 4.75, 3.25, 4.65, 3.75, 4.25, 4.13),
('User-36', 5, 3.5, 4.3, 4.5, 3.5, 4.16),
('User-37', 5, 5, 5, 5, 5, 5),
('User-38', 1.25, 1.25, 1.7, 1.75, 2.5, 1.69),
('User-39', 4.75, 3.25, 3.6, 3.75, 2, 3.47),
('User-4', 1, 3.25, 1.7, 1.75, 2.5, 2.04),
('User-40', 4.75, 4, 4.65, 4, 4.25, 4.33),
('User-41', 4.5, 1.5, 3.6, 2.5, 2, 2.82),
('User-42', 4, 4, 4, 4, 4, 4),
('User-43', 4.75, 2.5, 3.6, 3.5, 2, 3.27),
('User-44', 3, 3, 3, 3, 3, 3),
('User-45', 4.25, 2.75, 3.65, 4.25, 3.25, 3.63),
('User-46', 3, 3, 3, 3, 3, 3),
('User-47', 3.25, 2.5, 3.35, 3.5, 3.75, 3.27),
('User-48', 4.25, 5, 4.35, 5, 4.75, 4.67),
('User-49', 4.5, 3.75, 4.65, 3.25, 4.25, 4.08),
('User-5', 1.25, 4.25, 1, 2.75, 1, 2.05),
('User-6', 5, 5, 5, 5, 5, 5),
('User-7', 1, 4, 1, 2, 1, 1.8),
('User-8', 1, 3.25, 1.7, 1.75, 2.5, 2.04),
('User-9', 1.25, 1.25, 1.7, 1.75, 2.5, 1.69);

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
-- Indexes for table `Places_Database`
--
ALTER TABLE `Places_Database`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `Users_Database`
--
ALTER TABLE `Users_Database`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Users_Recommendation`
--
ALTER TABLE `Users_Recommendation`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Users_Response`
--
ALTER TABLE `Users_Response`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
