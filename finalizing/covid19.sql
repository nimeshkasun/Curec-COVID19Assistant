-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2020 at 12:31 PM
-- Server version: 5.7.29
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edvicon_curec`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnose`
--

CREATE TABLE `diagnose` (
  `DigID` int(11) NOT NULL,
  `DID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `Comment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`DigID`, `DID`, `RID`, `Comment`, `status`, `timestamp`) VALUES
(96, 1, 153, 'Test', 'Travel/ contact history present; symptoms present', '2020-04-19 12:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `medicalRegID` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `workArea` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `name`, `lastname`, `phone`, `status`, `medicalRegID`, `nic`, `workArea`, `email`, `password`) VALUES
(1, 'Nimesh', 'Ekanayake', 718810575, 2, 'MRID23001', '964545210v', 'Colombo', 'doc1@doctor.com', '12345'),
(7, 'Upsala', 'Dissanayake', 784545454, 2, 'MRID3320', '984447565v', 'Colombo', 'doc2@doctor.com', '12345'),
(10, 'Dimuthu', 'Chamod', 774545454, 2, 'MRID3355', '984489165v', 'Anuradhapura', 'doc3@doctor.com', '12345'),
(11, 'Saman', 'Kumara', 711111111, 2, '654321', '800310111V', 'Colombo', '071@071.com', '111');

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `FID` int(11) NOT NULL,
  `phone` int(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`FID`, `phone`, `Address`, `zipcode`, `type`) VALUES
(0, 0, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `lat` double NOT NULL,
  `lan` double NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LID`, `MID`, `lat`, `lan`, `timestamp`) VALUES
(1, 18, 7.5219927, 80.3267071, '2020-04-18 12:10:25'),
(2, 18, 7.5219927, 80.3267071, '2020-04-18 12:10:58'),
(3, 18, 7.5218783, 80.3267799, '2020-04-19 11:00:13'),
(4, 18, 7.5218783, 80.3267799, '2020-04-19 11:00:58'),
(5, 18, 7.5219927, 80.3267071, '2020-04-19 11:20:53'),
(6, 18, 7.5219927, 80.3267071, '2020-04-19 11:22:01'),
(7, 18, 7.5219927, 80.3267071, '2020-04-19 11:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LID` int(11) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LID`, `Username`, `Password`) VALUES
(19, '962420710v', '12345'),
(20, '977533651v', 'sanara'),
(21, '981121864v', 'shaggy'),
(22, '982852714v', 'chanakya'),
(25, '986623728v', 'kp'),
(26, '972952931v', 'malith'),
(27, '842590111v', '111'),
(28, '862643895v', 'Choolaka86'),
(29, '855665000v', 'aaaabbb'),
(30, '983456789012', '12345'),
(31, '842590222v', '222'),
(32, '905961358v', '8594'),
(33, '740402650v', '12345'),
(34, '703530931v', '1234'),
(35, '200001404091', '0767056649'),
(36, '197633001982', 'viraj'),
(37, '196030300648', 'sarath');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `MID` int(11) NOT NULL,
  `FID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(11) NOT NULL,
  `Bloodtype` varchar(100) NOT NULL,
  `Location_lat` double NOT NULL,
  `Location_lan` double NOT NULL,
  `City` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `LID` int(11) NOT NULL,
  `MOID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MID`, `FID`, `Name`, `NIC`, `Gender`, `Age`, `Bloodtype`, `Location_lat`, `Location_lan`, `City`, `phone`, `LID`, `MOID`) VALUES
(15, 0, 'Nimesh Ekanayake', '962420710v', 'Male', 23, 'B+', 111, 111, 'Galenbindunuwewa', 718810575, 19, 1),
(16, 0, 'Suzy', '977533651v', 'Female', 22, '0+', 111, 111, 'Colombo', 716886974, 20, 1),
(17, 0, 'savindu bandara', '981121864v', 'Male', 21, 'A+', 111, 111, 'Matara', 764650666, 21, 1),
(18, 0, 'Chanakya', '982852714v', 'Male', 21, '0+', 111, 111, 'Kurunegala', 774779934, 22, 1),
(19, 0, 'kethmie', '986623728v', 'Female', 21, '0+', 111, 111, 'batimole', 715409658, 25, 1),
(20, 0, 'Malith Ileperuma', '972952931v', 'Male', 0, 'B+', 111, 111, 'Panadura', 772552141, 26, 1),
(21, 0, 'Pradeep', '842590111v', 'Male', 35, 'A+', 111, 111, 'homagama', 718345713, 27, 1),
(22, 0, 'Choolaka Hewawasam', '862643895v', 'Male', 33, 'A+', 111, 111, 'hanwella', 777184294, 28, 1),
(23, 0, 'iroshi', '855665000v', 'Female', 35, 'B+', 111, 111, 'homagama', 702401230, 29, 1),
(24, 0, 'chanakyatest', '983456789012', 'Female', -7814, '0+', 111, 111, 'kurunegala', 446464, 30, 3),
(25, 0, 'Pradeep', '842590222v', 'Male', 35, 'A+', 111, 111, '', 710219263, 31, 1),
(26, 0, 'waruni Kalansooriya ', '905961358v', 'Female', 29, 'A+', 111, 111, 'homagama', 716306909, 32, 1),
(27, 0, 'Mangala Rajamanthri ', '740402650v', 'Male', 46, '0+', 111, 111, 'Malabe', 718668141, 33, 0),
(28, 0, 'Janaka Gunaseela ', '703530931v', 'Male', 49, 'A+', 111, 111, 'Kandy', 777710234, 34, 3),
(29, 0, 'Chamithara Dewanga', '200001404091', 'Male', 20, '0+', 111, 111, 'Kurunegala', 716225111, 35, 3),
(30, 0, 'V. Jayasinghe', '197633001982', 'Male', 0, 'A+', 111, 111, 'colombo', 2147483647, 36, 0),
(31, 0, 'Sarath Rathnayake', '196030300648', 'Male', 59, '0+', 7.5221646, 80.3296949, 'Kurunegala', 773447455, 37, 3);

-- --------------------------------------------------------

--
-- Table structure for table `moh`
--

CREATE TABLE `moh` (
  `MOID` int(11) NOT NULL,
  `officernumber` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `Colony` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moh`
--

INSERT INTO `moh` (`MOID`, `officernumber`, `name`, `lastname`, `nic`, `phone`, `email`, `Colony`, `password`) VALUES
(1, 'MOH1100', 'Pradeep', 'Kalansooriys', '654545252v', 115454555, 'nimesh.ekanayaka7@gmail.com', 'Homagama', '12345'),
(3, 'MOH3302', 'Palitha', 'Yapa', '681459875v', 710127344, 'palitha@gmail.com', 'Colombo', '12345'),
(4, 'MOH2258', 'Nimesh', 'Kasun', '914567825v', 75778899, 'nimeshkasun@gmail.com', 'Negombo', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `DigID` int(11) NOT NULL,
  `PHI` int(11) NOT NULL,
  `MOH` int(11) NOT NULL,
  `location_lat` double NOT NULL,
  `location_lan` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phi`
--

CREATE TABLE `phi` (
  `PID` int(11) NOT NULL,
  `phiNumber` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `Colony` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `priority_queue`
--

CREATE TABLE `priority_queue` (
  `RID` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `arived_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `answer_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `sessionId` text NOT NULL,
  `docToken` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priority_queue`
--

INSERT INTO `priority_queue` (`RID`, `priority`, `status`, `arived_time`, `answer_time`, `end_time`, `sessionId`, `docToken`) VALUES
(151, 4, 2, '2020-04-18 15:33:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1_MX40NjY2NTg3Mn5-MTU4NzIyMzk4MDYyN35Sams4Z0VVMTFtK1IvSUQwQjZDamhMblV-UH4', 'T1==cGFydG5lcl9pZD00NjY2NTg3MiZzaWc9NWQxMDI1MzQ3M2Q4NDU2MDc3MjcyZTA3ZjEzNjY0ODM0ZmE5Y2IyYzpzZXNzaW9uX2lkPTFfTVg0ME5qWTJOVGczTW41LU1UVTROekl5TXprNE1EWXlOMzVTYW1zNFowVlZNVEZ0SzFJdlNVUXdRalpEYW1oTWJsVi1VSDQmY3JlYXRlX3RpbWU9MTU4NzIyMzk4MCZyb2xlPXB1Ymxpc2hlciZub25jZT0xNTg3MjIzOTgwLjcwMzUxNjE2MzAxNDE1JmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Date_time` date NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fever` varchar(10) NOT NULL,
  `cough` varchar(10) NOT NULL,
  `soreThroat` varchar(10) NOT NULL,
  `difficultBreathe` varchar(10) NOT NULL,
  `bodyArchPain` varchar(10) NOT NULL,
  `cold` varchar(10) NOT NULL,
  `lossOfSmell` varchar(10) NOT NULL,
  `diarrhoea` varchar(10) NOT NULL,
  `urineOutput` varchar(10) NOT NULL,
  `ArriveFromAbroad` varchar(10) NOT NULL,
  `dateifYes` date NOT NULL,
  `contactSuspect` varchar(10) NOT NULL,
  `personAbroad` varchar(10) NOT NULL,
  `personHighrisk` varchar(10) NOT NULL,
  `personQuarantine` varchar(10) NOT NULL,
  `personWorkQuarantine` varchar(10) NOT NULL,
  `heartDiseace` varchar(10) NOT NULL,
  `bloodPressure` varchar(10) NOT NULL,
  `Diabetes` varchar(10) NOT NULL,
  `LungDisease` varchar(10) NOT NULL,
  `OtherDisease` varchar(10) NOT NULL,
  `Value1` varchar(100) NOT NULL,
  `Value2` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`RID`, `MID`, `SID`, `Date_time`, `timestamp`, `fever`, `cough`, `soreThroat`, `difficultBreathe`, `bodyArchPain`, `cold`, `lossOfSmell`, `diarrhoea`, `urineOutput`, `ArriveFromAbroad`, `dateifYes`, `contactSuspect`, `personAbroad`, `personHighrisk`, `personQuarantine`, `personWorkQuarantine`, `heartDiseace`, `bloodPressure`, `Diabetes`, `LungDisease`, `OtherDisease`, `Value1`, `Value2`, `priority`) VALUES
(41, 16, 0, '0000-00-00', '2020-04-13 07:46:57', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(42, 16, 0, '0000-00-00', '2020-04-13 07:46:58', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(43, 17, 0, '0000-00-00', '2020-04-13 07:50:13', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 0),
(44, 15, 0, '0000-00-00', '2020-04-13 07:50:24', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Reduced', 'Yes', '2020-04-06', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', '', '', 0),
(45, 19, 0, '0000-00-00', '2020-04-13 08:02:44', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(46, 19, 0, '0000-00-00', '2020-04-13 08:02:44', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(47, 15, 0, '0000-00-00', '2020-04-13 08:20:52', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', '', '', 0),
(48, 18, 0, '0000-00-00', '2020-04-13 08:32:35', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-13', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(49, 19, 0, '0000-00-00', '2020-04-13 12:46:30', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '', '', 0),
(50, 19, 0, '0000-00-00', '2020-04-13 12:46:31', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', '', '', 0),
(51, 17, 0, '0000-00-00', '2020-04-13 12:51:19', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(52, 19, 0, '0000-00-00', '2020-04-13 12:56:08', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(53, 20, 0, '0000-00-00', '2020-04-13 12:57:26', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Normal', 'Yes', '2020-04-01', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(54, 15, 0, '0000-00-00', '2020-04-13 12:57:37', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', '', '', 0),
(55, 16, 0, '0000-00-00', '2020-04-13 14:02:12', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(56, 16, 0, '0000-00-00', '2020-04-13 14:02:29', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(57, 16, 0, '0000-00-00', '2020-04-13 14:02:30', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(58, 16, 0, '0000-00-00', '2020-04-13 14:02:31', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(59, 16, 0, '0000-00-00', '2020-04-13 14:03:20', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(60, 20, 0, '0000-00-00', '2020-04-14 10:34:41', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(61, 15, 0, '0000-00-00', '2020-04-15 03:39:56', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', '', '', 0),
(62, 20, 0, '0000-00-00', '2020-04-15 04:11:53', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-08', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(63, 20, 0, '0000-00-00', '2020-04-15 04:14:50', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Normal', 'Yes', '2020-04-03', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', '', 0),
(64, 20, 0, '0000-00-00', '2020-04-15 04:26:05', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', '', '', 0),
(65, 20, 0, '0000-00-00', '2020-04-15 07:05:17', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-13', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', '', '', 0),
(66, 17, 0, '0000-00-00', '2020-04-15 07:27:17', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', '', '', 0),
(67, 21, 0, '0000-00-00', '2020-04-15 07:30:11', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-10', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(68, 21, 0, '0000-00-00', '2020-04-15 07:36:01', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-11', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(69, 18, 0, '0000-00-00', '2020-04-15 07:37:14', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-17', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(70, 17, 0, '0000-00-00', '2020-04-15 07:48:52', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', '', '', 0),
(71, 21, 0, '0000-00-00', '2020-04-15 07:49:00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-11', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(72, 20, 0, '0000-00-00', '2020-04-15 07:49:31', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Reduced', 'Yes', '2020-04-09', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(73, 16, 0, '0000-00-00', '2020-04-15 07:49:38', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(74, 16, 0, '0000-00-00', '2020-04-15 07:50:00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-09', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(75, 18, 0, '0000-00-00', '2020-04-15 07:50:01', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-15', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(76, 19, 0, '0000-00-00', '2020-04-15 07:50:15', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(77, 15, 0, '0000-00-00', '2020-04-15 07:51:01', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(78, 15, 0, '0000-00-00', '2020-04-15 12:16:53', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', '', '', 0),
(79, 15, 0, '0000-00-00', '2020-04-15 13:00:38', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', '', '', 0),
(80, 15, 0, '0000-00-00', '2020-04-15 13:06:02', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', '', 0),
(81, 15, 0, '0000-00-00', '2020-04-15 13:12:26', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(82, 15, 0, '0000-00-00', '2020-04-16 03:48:13', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', '', '', 0),
(83, 15, 0, '0000-00-00', '2020-04-16 03:59:29', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(84, 15, 0, '0000-00-00', '2020-04-16 03:59:51', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(85, 15, 0, '0000-00-00', '2020-04-16 04:03:51', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(86, 15, 0, '0000-00-00', '2020-04-16 04:08:38', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(87, 15, 0, '0000-00-00', '2020-04-16 04:10:55', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(88, 15, 0, '0000-00-00', '2020-04-16 04:23:13', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(89, 22, 0, '0000-00-00', '2020-04-16 04:27:12', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(90, 15, 0, '0000-00-00', '2020-04-16 04:41:44', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(91, 15, 0, '0000-00-00', '2020-04-16 04:43:03', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(92, 15, 0, '0000-00-00', '2020-04-16 04:46:39', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(93, 23, 0, '0000-00-00', '2020-04-16 05:33:59', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', '', '', 0),
(94, 16, 0, '0000-00-00', '2020-04-16 05:35:32', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(95, 16, 0, '0000-00-00', '2020-04-16 05:36:09', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 0),
(96, 16, 0, '0000-00-00', '2020-04-16 05:36:33', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 0),
(97, 16, 0, '0000-00-00', '2020-04-16 05:36:56', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(98, 16, 0, '0000-00-00', '2020-04-16 05:37:14', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 0),
(99, 16, 0, '0000-00-00', '2020-04-16 05:37:33', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(100, 25, 0, '0000-00-00', '2020-04-16 07:44:07', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(101, 16, 0, '0000-00-00', '2020-04-16 08:06:49', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', '', '', 0),
(102, 16, 0, '0000-00-00', '2020-04-16 08:11:03', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 0),
(103, 26, 0, '0000-00-00', '2020-04-16 08:30:04', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(104, 25, 0, '0000-00-00', '2020-04-16 08:59:56', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(105, 25, 0, '0000-00-00', '2020-04-16 09:02:06', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'Normal', 'Yes', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(106, 25, 0, '0000-00-00', '2020-04-16 09:21:30', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(107, 25, 0, '0000-00-00', '2020-04-16 09:26:40', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(108, 26, 0, '0000-00-00', '2020-04-16 09:30:20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(109, 26, 0, '0000-00-00', '2020-04-16 09:32:14', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(110, 16, 0, '0000-00-00', '2020-04-16 09:50:53', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 0),
(111, 25, 0, '0000-00-00', '2020-04-16 09:55:09', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(112, 25, 0, '0000-00-00', '2020-04-16 09:55:31', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(113, 16, 0, '0000-00-00', '2020-04-16 10:00:28', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', '', '', 0),
(114, 27, 0, '0000-00-00', '2020-04-16 10:37:18', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(115, 16, 0, '0000-00-00', '2020-04-16 10:45:21', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(116, 28, 0, '0000-00-00', '2020-04-16 10:53:39', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(117, 29, 0, '0000-00-00', '2020-04-16 10:56:25', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', '', '', 0),
(118, 25, 0, '0000-00-00', '2020-04-16 11:06:20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(119, 16, 0, '0000-00-00', '2020-04-16 11:53:21', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(120, 27, 0, '0000-00-00', '2020-04-16 15:44:41', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(121, 18, 0, '0000-00-00', '2020-04-17 04:14:40', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Normal', 'Yes', '2020-04-17', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 0),
(122, 18, 0, '0000-00-00', '2020-04-17 13:28:14', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-17', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 3),
(123, 18, 0, '0000-00-00', '2020-04-17 13:43:24', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-17', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 4),
(124, 18, 0, '0000-00-00', '2020-04-17 16:12:24', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-17', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 3),
(125, 30, 0, '0000-00-00', '2020-04-17 16:35:02', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 0),
(126, 30, 0, '0000-00-00', '2020-04-17 16:36:58', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(127, 30, 0, '0000-00-00', '2020-04-17 16:37:16', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(128, 30, 0, '0000-00-00', '2020-04-17 16:45:41', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(129, 25, 0, '0000-00-00', '2020-04-17 16:48:52', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', '', '', 0),
(130, 25, 0, '0000-00-00', '2020-04-17 17:15:38', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(131, 25, 0, '0000-00-00', '2020-04-17 17:29:28', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(132, 15, 0, '0000-00-00', '2020-04-18 04:20:58', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', '', '', 0),
(133, 15, 0, '0000-00-00', '2020-04-18 04:58:51', 'No', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', '', '', 0),
(134, 15, 0, '0000-00-00', '2020-04-18 05:02:38', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(135, 15, 0, '0000-00-00', '2020-04-18 05:05:50', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(136, 15, 0, '0000-00-00', '2020-04-18 05:07:54', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(137, 15, 0, '0000-00-00', '2020-04-18 05:11:10', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(138, 15, 0, '0000-00-00', '2020-04-18 05:14:29', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(139, 15, 0, '0000-00-00', '2020-04-18 05:18:27', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(140, 15, 0, '0000-00-00', '2020-04-18 05:20:07', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(141, 15, 0, '0000-00-00', '2020-04-18 05:21:50', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(142, 15, 0, '0000-00-00', '2020-04-18 05:24:36', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(143, 15, 0, '0000-00-00', '2020-04-18 05:30:00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(144, 15, 0, '0000-00-00', '2020-04-18 05:47:02', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(145, 15, 0, '0000-00-00', '2020-04-18 05:48:18', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(146, 15, 0, '0000-00-00', '2020-04-18 06:11:32', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(147, 15, 0, '0000-00-00', '2020-04-18 06:24:53', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(148, 15, 0, '0000-00-00', '2020-04-18 06:37:34', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 0),
(149, 15, 0, '0000-00-00', '2020-04-18 06:43:18', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 0),
(150, 18, 0, '0000-00-00', '2020-04-18 08:00:15', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-18', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 4),
(151, 25, 0, '0000-00-00', '2020-04-18 15:32:52', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'Yes', '2020-04-04', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(152, 25, 0, '0000-00-00', '2020-04-18 15:37:27', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', '', 0),
(153, 17, 0, '0000-00-00', '2020-04-19 08:52:59', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `symtoms`
--

CREATE TABLE `symtoms` (
  `SID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Definition` varchar(255) NOT NULL,
  `Unit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symtoms`
--

INSERT INTO `symtoms` (`SID`, `Name`, `Definition`, `Unit`) VALUES
(0, 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `AID` int(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `telephone` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nic` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`AID`, `firstname`, `lastname`, `email`, `designation`, `telephone`, `password`, `nic`) VALUES
(6, 'Nimesh', 'Ekanayake', 'admin@admin.com', 'Admin', 718810575, '12345', '962420710v'),
(7, 'Dimuthu', 'Chamod', 'lahiruthivankara@gmail.com', 'admin', 718810576, '12345', '962420711v'),
(8, 'Savindu', 'Ekanayake', 'nimesh.ekanayaka7@gmail.com', 'admin', 718810576, '12345', '962420712v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD PRIMARY KEY (`DigID`),
  ADD KEY `diagnose_ibfk_1` (`DID`),
  ADD KEY `diagnose_ibfk_2` (`RID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`FID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LID`),
  ADD KEY `fk_loc_mem` (`MID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MID`),
  ADD UNIQUE KEY `NIC` (`NIC`),
  ADD KEY `FID` (`FID`),
  ADD KEY `LID` (`LID`),
  ADD KEY `MOID` (`MOID`);

--
-- Indexes for table `moh`
--
ALTER TABLE `moh`
  ADD PRIMARY KEY (`MOID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `DigID` (`DigID`),
  ADD KEY `notification_ibfk_2` (`MOH`),
  ADD KEY `notification_ibfk_3` (`PHI`);

--
-- Indexes for table `phi`
--
ALTER TABLE `phi`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `priority_queue`
--
ALTER TABLE `priority_queue`
  ADD UNIQUE KEY `RID` (`RID`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `record_ibfk_2` (`SID`);

--
-- Indexes for table `symtoms`
--
ALTER TABLE `symtoms`
  ADD PRIMARY KEY (`SID`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`AID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnose`
--
ALTER TABLE `diagnose`
  MODIFY `DigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `FID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `moh`
--
ALTER TABLE `moh`
  MODIFY `MOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phi`
--
ALTER TABLE `phi`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `symtoms`
--
ALTER TABLE `symtoms`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `AID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnose`
--
ALTER TABLE `diagnose`
  ADD CONSTRAINT `diagnose_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `doctor` (`DID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnose_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `fk_loc_mem` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`FID`) REFERENCES `family` (`FID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`LID`) REFERENCES `login` (`LID`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`DigID`) REFERENCES `diagnose` (`DigID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`MOH`) REFERENCES `moh` (`MOID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_3` FOREIGN KEY (`PHI`) REFERENCES `phi` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `priority_queue`
--
ALTER TABLE `priority_queue`
  ADD CONSTRAINT `priority_queue_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `record` (`RID`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `symtoms` (`SID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
