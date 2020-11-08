-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 04:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curec`
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
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnose`
--

INSERT INTO `diagnose` (`DigID`, `DID`, `RID`, `Comment`, `status`, `timestamp`) VALUES
(96, 1, 153, 'Test', 'Travel/ contact history present; symptoms present', '2020-04-19 12:27:20'),
(97, 7, 154, 'test', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-19 14:17:37'),
(98, 7, 158, '', 'Shortness of breath/ chest pain without contact history', '2020-04-19 14:23:23'),
(99, 1, 160, '', 'Travel/ contact history present, no symptoms', '2020-04-19 18:07:21'),
(100, 1, 163, '', 'Travel/ contact history present, no symptoms', '2020-04-20 04:31:44'),
(101, 1, 164, '', 'Travel/ contact history present, no symptoms', '2020-04-20 04:32:04'),
(102, 1, 167, '', 'Travel/ contact history present, no symptoms', '2020-04-20 04:34:56'),
(103, 1, 168, '', 'Shortness of breath/ chest pain without contact history', '2020-04-20 04:37:48'),
(104, 1, 169, '', 'Travel/ contact history present, no symptoms', '2020-04-20 04:39:07'),
(105, 1, 170, '', 'Travel/ contact history present, no symptoms', '2020-04-20 04:44:10'),
(106, 10, 172, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-20 04:45:41'),
(107, 10, 177, 'hellow', 'Mild symptoms, without contact or travel history', '2020-04-20 13:57:45'),
(108, 10, 178, 'nice ', 'Shortness of breath/ chest pain without contact history', '2020-04-20 15:01:51'),
(109, 10, 179, 'oiiiiiii', 'Travel/ contact history present; symptoms present', '2020-04-20 15:15:57'),
(110, 10, 180, 'your condition is not good.', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-20 15:42:05'),
(111, 10, 181, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-20 15:43:35'),
(112, 1, 182, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-20 15:44:17'),
(113, 1, 183, 'Hospitalize immediately', 'Travel/ contact history present; symptoms present', '2020-04-20 16:05:32'),
(114, 1, 184, 'No need to worry', 'Mild symptoms, without contact or travel history', '2020-04-20 16:12:57'),
(115, 1, 185, '', 'Travel/ contact history present, no symptoms', '2020-04-20 16:19:00'),
(116, 1, 186, 'Critical Patient', 'Travel/ contact history present; symptoms present', '2020-04-20 16:22:48'),
(117, 1, 187, '', 'Shortness of breath/ chest pain without contact history', '2020-04-20 17:10:33'),
(118, 1, 188, 'TEst diagns', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-20 17:30:10'),
(119, 1, 191, '', 'Travel/ contact history present, no symptoms', '2020-04-21 02:42:03'),
(120, 1, 195, '', 'Mild symptoms, without contact or travel history', '2020-04-21 03:44:19'),
(121, 1, 196, '', 'Mild symptoms, without contact or travel history', '2020-04-21 05:19:25'),
(122, 1, 199, '', 'Mild symptoms, without contact or travel history', '2020-04-21 05:59:42'),
(123, 1, 201, 'Before present', 'Mild symptoms, without contact or travel history', '2020-04-21 07:56:05'),
(124, 1, 202, 'Done', 'Mild symptoms, without contact or travel history', '2020-04-21 09:02:16'),
(125, 1, 203, '', 'Mild symptoms, without contact or travel history', '2020-04-21 09:33:05'),
(126, 10, 206, '', 'Travel/ contact history present, no symptoms', '2020-04-22 12:40:22'),
(127, 10, 205, '', 'Shortness of breath/ chest pain without contact history', '2020-04-22 12:40:57'),
(128, 10, 204, '', 'Travel/ contact history present, no symptoms', '2020-04-22 12:41:33'),
(129, 10, 207, '', 'Mild symptoms, without contact or travel history', '2020-04-22 12:50:55'),
(130, 1, 208, '', 'Shortness of breath/ chest pain without contact history', '2020-04-22 12:56:18'),
(131, 1, 209, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-22 12:57:55'),
(132, 10, 210, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-22 12:58:03'),
(133, 10, 211, '', 'Travel/ contact history present; symptoms present', '2020-04-22 13:00:13'),
(134, 1, 212, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-22 13:02:16'),
(135, 10, 213, '', 'Shortness of breath/ chest pain without contact history', '2020-04-22 13:06:59'),
(136, 1, 214, '', 'Severe symptoms other than shortness of breath or chest pain; no contact history', '2020-04-22 13:12:03'),
(137, 1, 216, '', 'Travel/ contact history present, no symptoms', '2020-04-23 12:41:42'),
(140, 10, 217, '', 'Travel/ contact history present, no symptoms', '2020-04-26 19:12:17'),
(141, 1, 218, '', 'Shortness of breath/ chest pain without contact history', '2020-04-26 19:21:45'),
(142, 1, 219, '', 'Shortness of breath/ chest pain without contact history', '2020-04-26 19:25:53'),
(143, 10, 220, '', 'Mild symptoms, without contact or travel history', '2020-04-26 19:34:03'),
(144, 10, 221, 'Notes', 'Travel/ contact history present; symptoms present', '2020-04-26 19:57:44'),
(145, 1, 222, '', 'Shortness of breath/ chest pain without contact history', '2020-04-26 20:39:42'),
(146, 1, 224, '', 'Shortness of breath/ chest pain without contact history', '2020-04-30 09:16:04');

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
(10, 'Dimuthu', 'Chamod', 774545454, 1, 'MRID3355', '984489165v', 'Anuradhapura', 'doc3@doctor.com', '12345'),
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
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
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
(7, 18, 7.5219927, 80.3267071, '2020-04-19 11:42:22'),
(8, 18, 7.5219927, 80.3267071, '2020-04-19 12:34:02'),
(9, 15, 8.2637491, 80.6966638, '2020-04-19 12:37:38'),
(10, 15, 8.2637491, 80.6966638, '2020-04-19 12:38:05'),
(11, 15, 8.2637491, 80.6966638, '2020-04-19 12:38:43'),
(12, 15, 8.2637491, 80.6966638, '2020-04-19 12:46:12'),
(13, 32, 6.8518866, 80.0742129, '2020-04-19 13:51:59'),
(14, 32, 6.8518871, 80.0742131, '2020-04-19 14:21:48'),
(15, 16, 6.8846766, 79.9040523, '2020-04-19 17:15:30'),
(16, 15, 8.2604645, 80.7008228, '2020-04-19 18:06:47'),
(17, 32, 6.9199124, 79.8650592, '2020-04-20 04:24:50'),
(18, 32, 6.9199124, 79.8650592, '2020-04-20 04:25:28'),
(19, 32, 6.9199124, 79.8650592, '2020-04-20 04:27:13'),
(20, 15, 8.2453792, 80.7103482, '2020-04-20 04:30:55'),
(21, 15, 8.2453792, 80.7103482, '2020-04-20 04:30:58'),
(22, 15, 8.2453792, 80.7103482, '2020-04-20 04:33:44'),
(23, 15, 8.2453792, 80.7103482, '2020-04-20 04:33:47'),
(24, 15, 8.2453792, 80.7103482, '2020-04-20 04:34:00'),
(25, 15, 8.2453792, 80.7103482, '2020-04-20 04:34:19'),
(26, 15, 8.2453792, 80.7103482, '2020-04-20 04:35:31'),
(27, 15, 8.2453792, 80.7103482, '2020-04-20 04:36:01'),
(28, 15, 8.2453792, 80.7103482, '2020-04-20 04:43:20'),
(29, 18, 7.5177752, 80.3267085, '2020-04-20 06:22:36'),
(30, 18, 7.5177752, 80.3267085, '2020-04-20 06:28:08'),
(31, 18, 7.5177752, 80.3267085, '2020-04-20 06:28:34'),
(32, 18, 7.5177752, 80.3267085, '2020-04-20 06:32:03'),
(33, 18, 7.5177752, 80.3267085, '2020-04-20 06:32:12'),
(34, 18, 7.5177752, 80.3267085, '2020-04-20 06:40:08'),
(35, 18, 7.5177752, 80.3267085, '2020-04-20 06:43:45'),
(36, 18, 7.5177752, 80.3267085, '2020-04-20 06:46:13'),
(37, 18, 7.5177752, 80.3267085, '2020-04-20 06:49:28'),
(38, 18, 7.5177752, 80.3267085, '2020-04-20 06:49:39'),
(39, 18, 7.5221646, 80.3296949, '2020-04-20 06:52:59'),
(40, 18, 7.5221646, 80.3296949, '2020-04-20 06:53:26'),
(41, 18, 7.5221646, 80.3296949, '2020-04-20 06:56:56'),
(42, 18, 7.5221646, 80.3296949, '2020-04-20 06:57:17'),
(43, 18, 7.5221646, 80.3296949, '2020-04-20 06:59:48'),
(44, 18, 7.5221646, 80.3296949, '2020-04-20 07:00:01'),
(45, 18, 7.5221646, 80.3296949, '2020-04-20 07:00:50'),
(46, 18, 7.5221646, 80.3296949, '2020-04-20 07:01:06'),
(47, 18, 7.5221646, 80.3296949, '2020-04-20 07:02:11'),
(48, 18, 7.5221646, 80.3296949, '2020-04-20 07:05:37'),
(49, 18, 7.5221646, 80.3296949, '2020-04-20 07:06:28'),
(50, 18, 7.5180202, 80.3267259, '2020-04-20 07:33:47'),
(51, 18, 7.5180202, 80.3267259, '2020-04-20 07:35:27'),
(52, 18, 7.5180202, 80.3267259, '2020-04-20 07:53:05'),
(53, 18, 7.5180534, 80.326751, '2020-04-20 08:01:57'),
(54, 18, 7.5180534, 80.326751, '2020-04-20 08:06:02'),
(55, 18, 7.5180534, 80.326751, '2020-04-20 08:13:21'),
(56, 18, 7.5179259, 80.3267763, '2020-04-20 08:26:40'),
(57, 18, 7.5179259, 80.3267763, '2020-04-20 08:29:25'),
(58, 31, 7.5179259, 80.3267763, '2020-04-20 08:30:57'),
(59, 18, 7.5179259, 80.3267763, '2020-04-20 08:31:48'),
(60, 18, 7.5178357, 80.3266413, '2020-04-20 10:25:02'),
(61, 18, 7.517963, 80.3266157, '2020-04-20 10:39:38'),
(62, 18, 7.517963, 80.3266157, '2020-04-20 10:42:38'),
(63, 18, 7.5179958, 80.3267324, '2020-04-20 13:21:11'),
(64, 20, 6.6590665, 79.9344157, '2020-04-20 13:39:19'),
(65, 18, 7.5179958, 80.3267324, '2020-04-20 13:41:46'),
(66, 18, 7.5179958, 80.3267324, '2020-04-20 13:53:01'),
(67, 20, 6.6590665, 79.9344157, '2020-04-20 13:58:17'),
(68, 20, 6.6590665, 79.9344157, '2020-04-20 13:59:25'),
(69, 18, 7.5179334, 80.3267636, '2020-04-20 14:14:47'),
(70, 18, 7.5179334, 80.3267636, '2020-04-20 14:15:05'),
(71, 20, 6.6590665, 79.9344157, '2020-04-20 14:21:29'),
(72, 15, 8.2453792, 80.7103482, '2020-04-20 14:55:29'),
(73, 17, 6.0470635, 80.5329349, '2020-04-20 14:58:04'),
(74, 20, 6.6590665, 79.9344157, '2020-04-20 15:06:55'),
(75, 20, 6.6590665, 79.9344157, '2020-04-20 15:22:51'),
(76, 20, 6.6590665, 79.9344157, '2020-04-20 15:23:19'),
(77, 20, 6.6589915, 79.9351589, '2020-04-20 15:25:36'),
(78, 15, 8.2640873, 80.6966638, '2020-04-20 15:42:28'),
(79, 20, 6.6590665, 79.9344157, '2020-04-20 15:43:18'),
(80, 15, 8.2640873, 80.6966638, '2020-04-20 15:43:19'),
(81, 20, 6.6590665, 79.9344157, '2020-04-20 15:43:37'),
(82, 18, 7.5174852, 80.3193956, '2020-04-20 16:00:23'),
(83, 18, 7.5221646, 80.3296949, '2020-04-20 16:10:30'),
(84, 15, 8.2640873, 80.6966638, '2020-04-20 16:18:20'),
(85, 20, 6.6590665, 79.9344157, '2020-04-20 16:35:35'),
(86, 17, 6.0441272, 80.5290857, '2020-04-20 17:04:49'),
(87, 17, 6.0441272, 80.5290857, '2020-04-20 17:18:55'),
(88, 16, 6.8853874, 79.9043786, '2020-04-20 18:16:35'),
(89, 16, 6.8853914, 79.9043765, '2020-04-21 02:26:36'),
(90, 32, 6.8518873, 80.0742131, '2020-04-21 02:41:20'),
(91, 16, 6.8853914, 79.9043765, '2020-04-21 02:49:28'),
(92, 16, 6.8853919, 79.9043842, '2020-04-21 03:18:44'),
(93, 16, 6.8207312, 79.8916024, '2020-04-21 05:39:03'),
(94, 16, 6.8207165, 79.8916123, '2020-04-21 05:53:07'),
(95, 16, 6.8207165, 79.8916123, '2020-04-21 05:57:29'),
(96, 16, 6.9296497, 79.8449535, '2020-04-21 07:54:59'),
(97, 16, 6.9296822, 79.8449709, '2020-04-21 08:04:47'),
(98, 32, 6.9296648, 79.8449693, '2020-04-21 08:04:55'),
(99, 16, 6.929631, 79.8449524, '2020-04-21 08:17:43'),
(100, 16, 6.9283857, 79.8438546, '2020-04-21 08:59:52'),
(101, 17, 6.9296398, 79.8449579, '2020-04-21 09:26:36'),
(102, 33, 6.712598824628325, 80.01983454006766, '2020-04-22 12:30:09'),
(103, 33, 6.712611146899623, 80.01983774583277, '2020-04-22 12:31:02'),
(104, 33, 6.7125834605706824, 80.01983912341906, '2020-04-22 12:33:55'),
(105, 33, 6.712594855871654, 80.0198271609271, '2020-04-22 12:39:48'),
(106, 33, 6.712629964881054, 80.01984865746475, '2020-04-22 12:51:02'),
(107, 18, 7.5179709, 80.3267006, '2020-04-22 12:53:56'),
(108, 33, 6.712638780498418, 80.01984057472492, '2020-04-22 12:54:42'),
(109, 33, 6.7126316457126425, 80.01978422596534, '2020-04-22 13:05:40'),
(110, 17, 7.030082, 79.9139296, '2020-04-22 13:10:39'),
(111, 32, 6.818163, 79.8898823, '2020-04-23 12:37:49'),
(112, 32, 6.8518884, 80.0742241, '2020-04-24 10:51:15'),
(113, 32, 6.8518884, 80.0742241, '2020-04-24 10:53:57'),
(114, 18, 7.5179707, 80.3267006, '2020-04-25 19:33:18'),
(115, 18, 7.5179707, 80.3267006, '2020-04-25 19:36:15'),
(116, 18, 7.5179707, 80.3267006, '2020-04-25 19:39:26'),
(117, 18, 7.5179707, 80.3267006, '2020-04-25 19:39:59'),
(118, 18, 7.5179707, 80.3267006, '2020-04-25 19:42:29'),
(119, 32, 6.8519289, 80.0742582, '2020-04-26 19:10:14'),
(120, 16, 6.8853868, 79.9043792, '2020-04-26 19:53:41'),
(121, 16, 6.8853851, 79.9043766, '2020-04-27 22:12:51'),
(122, 15, 8.2468172, 80.7106077, '2020-04-28 10:11:44'),
(123, 16, 6.8853836, 79.9043766, '2020-04-30 09:13:09'),
(124, 16, 6.8853864, 79.9043804, '2020-04-30 11:53:10'),
(125, 16, 6.8853876, 79.9043817, '2020-05-03 15:03:02');

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
(37, '196030300648', 'sarath'),
(38, '842590333v', '333'),
(39, '970440366v', '1234567890');

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
(31, 0, 'Sarath Rathnayake', '196030300648', 'Male', 59, '0+', 7.5221646, 80.3296949, 'Kurunegala', 773447455, 37, 3),
(32, 0, 'Pradeep', '842590333v', 'Male', 35, '0+', 6.8518866, 80.0742129, 'Homagama', 710219263, 38, 1),
(33, 0, 'Sanjaya Perera', '970440366v', 'Male', 23, '0+', 6.712599664076118, 80.01983897130053, 'Bandaragama', 774409282, 39, 3);

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
  `arived_time` datetime NOT NULL DEFAULT current_timestamp(),
  `answer_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `sessionId` text NOT NULL,
  `docToken` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `priority_queue`
--

INSERT INTO `priority_queue` (`RID`, `priority`, `status`, `arived_time`, `answer_time`, `end_time`, `sessionId`, `docToken`) VALUES
(215, 1, 2, '2020-04-23 12:38:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1_MX40NjY2NTg3Mn5-MTU4NzYyNTYzMDc4OX5GU1drdVg0My9mRjFXTE5CbUplTm9FQ1J-UH4', 'T1==cGFydG5lcl9pZD00NjY2NTg3MiZzaWc9M2JlZDBlMzQwNmQyNDQ3Mzk0YWVhYmZhZjQ3MmU0YjE3ZmIxNjg5MjpzZXNzaW9uX2lkPTFfTVg0ME5qWTJOVGczTW41LU1UVTROell5TlRZek1EYzRPWDVHVTFkcmRWZzBNeTltUmpGWFRFNUNiVXBsVG05RlExSi1VSDQmY3JlYXRlX3RpbWU9MTU4NzYyNTY4MyZyb2xlPXB1Ymxpc2hlciZub25jZT0xNTg3NjI1NjgzLjAwNDYxMTg3MzI3MDMzJmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `RID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Date_time` date NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
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
(153, 17, 0, '0000-00-00', '2020-04-19 08:52:59', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 0),
(154, 32, 0, '0000-00-00', '2020-04-19 14:14:08', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(155, 32, 0, '0000-00-00', '2020-04-19 14:18:07', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(156, 32, 0, '0000-00-00', '2020-04-19 14:19:22', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(157, 32, 0, '0000-00-00', '2020-04-19 14:20:28', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(158, 32, 0, '0000-00-00', '2020-04-19 14:22:04', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(159, 16, 0, '0000-00-00', '2020-04-19 17:15:41', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 3),
(160, 15, 0, '0000-00-00', '2020-04-19 18:06:59', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', '', '', 3),
(161, 32, 0, '0000-00-00', '2020-04-20 04:25:17', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 3),
(162, 32, 0, '0000-00-00', '2020-04-20 04:25:37', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(163, 32, 0, '0000-00-00', '2020-04-20 04:27:35', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 3),
(164, 15, 0, '0000-00-00', '2020-04-20 04:31:13', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(165, 15, 0, '0000-00-00', '2020-04-20 04:33:03', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 1),
(166, 15, 0, '0000-00-00', '2020-04-20 04:33:55', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(167, 15, 0, '0000-00-00', '2020-04-20 04:34:24', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(168, 15, 0, '0000-00-00', '2020-04-20 04:35:42', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(169, 15, 0, '0000-00-00', '2020-04-20 04:37:59', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(170, 15, 0, '0000-00-00', '2020-04-20 04:43:25', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(171, 18, 0, '0000-00-00', '2020-04-20 04:44:27', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Normal', 'Yes', '2020-04-20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(172, 18, 0, '0000-00-00', '2020-04-20 04:44:49', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-20', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 4),
(173, 16, 0, '0000-00-00', '2020-04-20 08:20:37', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(174, 17, 0, '0000-00-00', '2020-04-20 09:33:46', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(175, 20, 0, '0000-00-00', '2020-04-20 12:51:54', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', '', '', 0),
(176, 18, 0, '0000-00-00', '2020-04-20 13:54:43', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 3),
(177, 18, 0, '0000-00-00', '2020-04-20 13:55:37', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 3),
(178, 17, 0, '0000-00-00', '2020-04-20 14:58:30', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 4),
(179, 20, 0, '0000-00-00', '2020-04-20 15:10:36', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 4),
(180, 20, 0, '0000-00-00', '2020-04-20 15:40:22', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', '', '', 4),
(181, 15, 0, '0000-00-00', '2020-04-20 15:42:38', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(182, 15, 0, '0000-00-00', '2020-04-20 15:43:48', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 2),
(183, 18, 0, '0000-00-00', '2020-04-20 16:01:42', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 2),
(184, 18, 0, '0000-00-00', '2020-04-20 16:11:29', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Reduced', 'Yes', '2020-04-01', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 4),
(185, 15, 0, '0000-00-00', '2020-04-20 16:18:29', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(186, 15, 0, '0000-00-00', '2020-04-20 16:19:18', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(187, 17, 0, '0000-00-00', '2020-04-20 17:07:01', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Normal', 'Yes', '2020-04-15', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', '', '', 4),
(188, 17, 0, '0000-00-00', '2020-04-20 17:20:32', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', '', '', 4),
(189, 17, 0, '0000-00-00', '2020-04-20 17:25:52', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', '', '', 1),
(190, 16, 0, '0000-00-00', '2020-04-20 18:16:59', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 2),
(191, 16, 0, '0000-00-00', '2020-04-21 02:28:05', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 3),
(192, 32, 0, '0000-00-00', '2020-04-21 02:41:31', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(193, 16, 0, '0000-00-00', '2020-04-21 02:49:41', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 3),
(194, 16, 0, '0000-00-00', '2020-04-21 02:55:36', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Reduced', 'Yes', '2020-04-10', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 4),
(195, 16, 0, '0000-00-00', '2020-04-21 03:10:24', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Normal', 'Yes', '2020-04-10', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', '', '', 3),
(196, 17, 0, '0000-00-00', '2020-04-21 04:49:05', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', '', '', 3),
(197, 16, 0, '0000-00-00', '2020-04-21 05:39:54', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Normal', 'Yes', '2020-04-09', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 4),
(198, 16, 0, '0000-00-00', '2020-04-21 05:53:18', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 3),
(199, 16, 0, '0000-00-00', '2020-04-21 05:57:45', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 4),
(200, 16, 0, '0000-00-00', '2020-04-21 07:53:52', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', '', '', 2),
(201, 16, 0, '0000-00-00', '2020-04-21 07:55:07', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', '', '', 4),
(202, 16, 0, '0000-00-00', '2020-04-21 09:00:36', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'No', 'Normal', 'Yes', '2020-04-03', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'No', '', '', 4),
(203, 17, 0, '0000-00-00', '2020-04-21 09:27:53', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(204, 33, 0, '0000-00-00', '2020-04-22 12:33:41', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(205, 33, 0, '0000-00-00', '2020-04-22 12:34:30', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(206, 33, 0, '0000-00-00', '2020-04-22 12:35:16', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(207, 33, 0, '0000-00-00', '2020-04-22 12:50:03', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(208, 33, 0, '0000-00-00', '2020-04-22 12:51:09', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(209, 18, 0, '0000-00-00', '2020-04-22 12:54:06', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-22', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', '', '', 3),
(210, 33, 0, '0000-00-00', '2020-04-22 12:54:50', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(211, 18, 0, '0000-00-00', '2020-04-22 12:58:25', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-22', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', '', 3),
(212, 33, 0, '0000-00-00', '2020-04-22 13:01:22', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(213, 33, 0, '0000-00-00', '2020-04-22 13:05:45', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(214, 17, 0, '0000-00-00', '2020-04-22 13:10:53', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Normal', 'No', '0000-00-00', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(215, 32, 0, '0000-00-00', '2020-04-23 12:37:59', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(216, 32, 0, '0000-00-00', '2020-04-23 12:38:29', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(217, 32, 0, '0000-00-00', '2020-04-26 19:10:20', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 1),
(218, 18, 0, '0000-00-00', '2020-04-26 19:19:12', 'ඔව්', 'ඔව්', 'නැත', 'ඔව්', 'ඔව්', 'නැත', 'නැත', 'ඔව්', 'අඩු වශයෙන්', 'ඔව්', '2020-04-12', 'නැත', 'නැත', 'නැත', 'නැත', 'ඔව්', 'ඔව්', 'ඔව්', 'නැත', 'ඔව්', 'නැත', '', '', 1),
(219, 18, 0, '0000-00-00', '2020-04-26 19:24:08', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Reduced', 'Yes', '2020-04-26', 'No', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', '', '', 4),
(220, 18, 0, '0000-00-00', '2020-04-26 19:33:16', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Reduced', 'No', '0000-00-00', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', '', '', 4),
(221, 16, 0, '0000-00-00', '2020-04-26 19:53:46', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 2),
(222, 16, 0, '0000-00-00', '2020-04-26 19:56:43', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 2),
(223, 16, 0, '0000-00-00', '2020-04-27 22:13:49', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Reduced', 'No', '0000-00-00', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', '', '', 2),
(224, 16, 0, '0000-00-00', '2020-04-30 09:13:14', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'Normal', 'No', '0000-00-00', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', '', '', 2);

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
  MODIFY `DigID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

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
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

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
