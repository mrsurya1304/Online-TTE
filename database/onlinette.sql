-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2022 at 03:18 PM
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
-- Database: `onlinette`
--

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `Uname` varchar(8) NOT NULL,
  `Pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`Uname`, `Pwd`) VALUES
('TTE01', 'abc'),
('TTE02', '123'),
('TTE03', '789');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `Sno` int(3) NOT NULL,
  `Cname` varchar(20) NOT NULL,
  `Reason` varchar(50) NOT NULL,
  `Amount` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `passengerdetails`
--

CREATE TABLE `passengerdetails` (
  `Seatno` int(3) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Source` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `ID` varchar(10) NOT NULL,
  `Phoneno` int(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passengerdetails`
--

INSERT INTO `passengerdetails` (`Seatno`, `Name`, `Source`, `Destination`, `ID`, `Phoneno`, `Status`) VALUES
(1, 'Surya', 'Chennai Egmore', 'Tiruchirappalli', '4044ABC2', 80234521, 'Checked'),
(2, 'Akash', 'Tambaram', 'Madurai', '2312DLK1', 98123423, 'Unchecked'),
(3, 'Ram', 'Chengalpattu', 'Tiruchirappalli', '30AB1232', 73772088, 'Unchecked'),
(4, 'Raju', 'Villupuram', 'Madurai', '302H1122', 98022022, 'Unchecked'),
(5, 'Sam', 'Chennai Egmore', 'Chengalpattu', '6712AA23', 90123505, 'Unchecked'),
(6, 'Abishek', 'Chengalpattu', 'Tirunelveli', '10AX2340', 88275210, 'Unchecked'),
(7, 'Sharma', 'Chennai Egmore', 'Tirunelveli', '7823ER12', 77201827, 'Unchecked'),
(8, 'Priya', 'Tiruchirappalli', 'Madurai', '67AXX2B', 70128902, 'Unchecked'),
(9, 'Pooja', 'Villupuram', 'Vridhachalam', '44RE1203', 90568272, 'Unchecked'),
(10, 'Arjun', 'Vridhachalam', 'Tiruchirappalli', '12HF2012', 80562342, 'Unchecked'),
(11, 'Manoj', 'Chennai Egmore', 'Tirunelveli', '50OC1122', 99422450, 'Unchecked'),
(12, 'Kumar', 'Villupuram', 'Madurai', '42SW8783', 89071222, 'Unchecked'),
(13, 'Radha', 'Madurai', 'Tirunelveli', '6765TH12', 98701278, 'Unchecked'),
(14, 'Vandhana', 'Chennai Egmore', 'Vridhachalam', '32IP0989', 72129808, 'Unchecked'),
(15, 'Logesh', 'Vridhachalam', 'Madurai', '1234ABCD', 98765432, 'Unchecked'),
(16, 'Ben', 'Chennai Egmore', 'Madurai', '6786YB10', 89012899, 'Unchecked'),
(17, 'Ishika', 'Tambaram', 'Tiruchirappalli', '71NVTT09', 85925602, 'Unchecked'),
(18, 'Shiva', 'Madurai', 'Tirunelveli', '2678IQ98', 98943202, 'Unchecked'),
(19, 'Ankita', 'Tiruchirapalli', 'Dindigul', '42XX8910', 78123456, 'Unchecked'),
(20, 'Raji', 'Chennai Egmore', 'Villupuram', '98IU9KLM', 81238907, 'Unchecked'),
(21, 'Ajay', 'Chennai Egmore', 'Madurai', '9812WEZ2', 70341234, 'Unchecked'),
(22, 'Shalini', 'Tambaram', 'Tirunelveli', '3UIE1232', 63728910, 'Unchecked'),
(23, 'Jackson', 'Vridhachalam', 'Dindigul', '6712TNM2', 62819019, 'Unchecked'),
(24, 'Sridevi', 'Chennai Egmore', 'Vilupuram', '4HIJ2985', 90123843, 'Unchecked'),
(25, 'Sakthivel', 'Tambaram', 'Vridhachalam', '5512PF34', 80887821, 'Unchecked'),
(26, 'Shelton', 'Chennai Egmore', 'Tiruchirappalli', '23RTI901', 61808812, 'Unchecked'),
(27, 'Anbu', 'Vridhachalam', 'Madurai', '66UM0911', 63827901, 'Unchecked'),
(28, 'Arihant', 'Chennai Egmore', 'Vilupuram', '5TH68911', 70128901, 'Unchecked'),
(29, 'Shruthi', 'Vilupuram', 'Dindigul', '8IO00956', 98929234, 'Unchecked'),
(30, 'Shanthi', 'Vilupuram', 'Tirunelveli', '90BH0912', 65126982, 'Unchecked');

-- --------------------------------------------------------

--
-- Table structure for table `traincoaches`
--

CREATE TABLE `traincoaches` (
  `trainno` int(5) NOT NULL,
  `coach` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `traincoaches`
--

INSERT INTO `traincoaches` (`trainno`, `coach`) VALUES
(16127, 'S1'),
(16127, 'S2'),
(16127, 'S3'),
(16127, 'S4'),
(16127, 'S5'),
(16127, 'S6'),
(16127, 'S7'),
(16127, 'S8'),
(16127, 'S9'),
(16127, 'S10'),
(16127, 'B1'),
(16127, 'B2'),
(16127, 'A1'),
(16127, 'D1'),
(16127, 'D2'),
(16127, 'D3'),
(12631, 'S1'),
(12631, 'S2'),
(12631, 'S3'),
(12631, 'S4'),
(12631, 'S5'),
(12631, 'S6'),
(12631, 'S7'),
(12631, 'S8'),
(12631, 'S9'),
(12631, 'S10'),
(12631, 'S11'),
(12631, 'B1'),
(12631, 'B2'),
(12631, 'B3'),
(12631, 'B4'),
(12631, 'B5'),
(12631, 'A1'),
(12631, 'D1'),
(12631, 'D2'),
(12631, 'D3'),
(12633, 'D1'),
(12633, 'D2'),
(12633, 'D3'),
(12633, 'S1'),
(12633, 'S2'),
(12633, 'S3'),
(12633, 'S4'),
(12633, 'S5'),
(12633, 'S6'),
(12633, 'S7'),
(12633, 'S8'),
(12633, 'S9'),
(12633, 'S10'),
(12633, 'B1'),
(12633, 'B2'),
(12633, 'B3'),
(12633, 'A1'),
(12633, 'A2'),
(12633, 'HA1'),
(16723, 'D1'),
(16723, 'D2'),
(16723, 'D3'),
(16723, 'S1'),
(16723, 'S2'),
(16723, 'S3'),
(16723, 'S4'),
(16723, 'S5'),
(16723, 'S6'),
(16723, 'S7'),
(16723, 'S8'),
(16723, 'S9'),
(16723, 'S10'),
(16723, 'S11'),
(16723, 'B1'),
(16723, 'B2'),
(16723, 'B3'),
(16723, 'A1'),
(16723, 'HA1');

-- --------------------------------------------------------

--
-- Table structure for table `trainroutes`
--

CREATE TABLE `trainroutes` (
  `Sno` int(5) NOT NULL,
  `Trainno` int(5) NOT NULL,
  `Station` varchar(20) NOT NULL,
  `Arrival` varchar(10) NOT NULL,
  `Departure` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainroutes`
--

INSERT INTO `trainroutes` (`Sno`, `Trainno`, `Station`, `Arrival`, `Departure`) VALUES
(1, 16127, 'Chennai Egmore', '-', '09:00'),
(2, 16127, 'Tambaram', '09:28', '09:30'),
(3, 16127, 'Chengalpattu', '09:58', '10:00'),
(4, 16127, 'Melmaruvattur', '10:28', '10:30'),
(5, 16127, 'Tindivanam', '10:53', '10:55'),
(6, 16127, 'Vilupuram Jn', '11:28', '11:30'),
(7, 16127, 'Vridhachalam Jn', '12:10', '12:12'),
(8, 16127, 'Pennadam', '12:25', '12:26'),
(9, 16127, 'Ariyallur', '12:49', '12:50'),
(10, 16127, 'Srirangam', '13:28', '13:30'),
(11, 16127, 'Tiruchirappalli Jn', '14:00', '14:05'),
(12, 16127, 'Manaparai', '14:34', '14:35'),
(13, 16127, 'Dindigul Jn', '15:17', '15:20'),
(14, 16127, 'Sholavandan', '15:49', '15:50'),
(15, 16127, 'Kudal Nagar', '16:04', '16:05'),
(16, 16127, 'Madurai Jn', '16:25', '16:30'),
(17, 16127, 'Virudunagar Jn', '17:08', '17:10'),
(18, 16127, 'Satur', '17:31', '17:33'),
(19, 16127, 'Kovilpatti', '17:53', '17:55'),
(20, 16127, 'Vanchimaniyachi', '18:35', '18:40'),
(21, 16127, 'Tirunelveli Jn', '19:35', '19:40'),
(22, 16127, 'Nanguneri', '20:09', '20:10'),
(23, 16127, 'Valliyur', '20:19', '20:20'),
(24, 16127, 'Nagercoil Jn', '21:10', '21:20'),
(25, 16127, 'Eraniel', '21:44', '21:45'),
(26, 16127, 'Kulitthurai', '22:00', '22:01'),
(27, 16127, 'Neyyattinkara', '22:24', '22:25'),
(28, 16127, 'Trivandrum Ctrl', '22:55', '23:00'),
(29, 16127, 'Chirayinkeezh', '23:25', '23:26'),
(30, 16127, 'Varkalasivagiri', '23:42', '23:43'),
(31, 16127, 'Kollam Jn', '00:07', '00:10'),
(32, 16127, 'Kayankulam Jn', '01:10', '01:12'),
(33, 16127, 'Alleppey', '01:49', '01:52'),
(34, 16127, 'Ernakulam Jn', '04:00', '04:05'),
(35, 16127, 'Ernakulam Town', '04:13', '04:15'),
(36, 16127, 'Aluva', '04:33', '04:35'),
(37, 16127, 'Angamali', '04:44', '04:45'),
(38, 16127, 'Chalakudi', '04:59', '05:00'),
(39, 16127, 'Irinjalakuda', '05:07', '05:08'),
(40, 16127, 'Thrisur', '05:32', '05:35'),
(41, 16127, 'Punkunnam', '05:39', '05:40'),
(42, 16127, 'Guruvayur', '06:40', '-'),
(1, 16723, 'Chennai Egmore', '-', '20:10'),
(2, 16723, 'Tambaram', '20:38', '20:40'),
(3, 16723, 'Chengalpattu', '21:08', '21:10'),
(4, 16723, 'Madurantakam', '21:28', '21:30'),
(5, 16723, 'Melmaruvattur', '21:38', '21:40'),
(6, 16723, 'Tindivanam', '22:03', '22:05'),
(7, 16723, 'Vilupuram Jn', '22:48', '22:50'),
(8, 16723, 'Vridhachalam Jn', '23:30', '23:32'),
(9, 16723, 'Tiruchirappalli Jn', '01:30', '01:35'),
(10, 16723, 'Dindigul Jn', '02:52', '02:55'),
(11, 16723, 'Madurai Jn', '03:50', '03:55'),
(12, 16723, 'Tirumangalam', '04:14', '04:15'),
(13, 16723, 'Virudunagar Jn', '04:33', '04:35'),
(14, 16723, 'Satur', '04:56', '04:58'),
(15, 16723, 'Kovilpatti', '05:18', '05:20'),
(16, 16723, 'Tirunelveli', '06:45', '06:50'),
(17, 16723, 'Nanguneri', '07:17', '07:18'),
(18, 16723, 'Valliyur', '07:28', '07:29'),
(19, 16723, 'Aralvaymozhi', '07:47', '07:48'),
(20, 16723, 'Nagercoil Jn', '09:00', '09:05'),
(21, 16723, 'Eraniel', '09:24', '09:25'),
(22, 16723, 'Kulitthurai', '09:40', '09:43'),
(23, 16723, 'Parashshala', '09:53', '09:54'),
(24, 16723, 'Neyyattinkara', '10:06', '10:07'),
(25, 16723, 'Trivandrum Ctrl', '10:35', '10:40'),
(26, 16723, 'Varkalasivagiri', '11:18', '11:19'),
(27, 16723, 'Paravur', '11:30', '11:31'),
(28, 16723, 'Kollam Jn', '12:10', '-'),
(1, 12633, 'Chennai Egmore', '-', '17:20'),
(2, 12633, 'Tambaram', '17:48', '17:50'),
(3, 12633, 'Chengalpattu', '18:18', '18:20'),
(4, 12633, 'Melmaruvattur', '18:48', '18:50'),
(5, 12633, 'Tindivanam', '19:13', '19:15'),
(6, 12633, 'Vilupuram Jn', '19:55', '20:00'),
(7, 12633, 'Vridhachalam Jn', '20:40', '20:42'),
(8, 12633, 'Tiruchirappalli Jn', '22:25', '22:30'),
(9, 12633, 'Dindigul Jn', '23:55', '23:58'),
(10, 12633, 'Madurai Jn', '01:00', '01:05'),
(11, 12633, 'Virudunagar Jn', '01:43', '01:45'),
(12, 12633, 'Tirunelveli', '03:45', '03:50'),
(13, 12633, 'Valliyur', '04:24', '04:25'),
(14, 12633, 'Nagercoil Jn', '05:00', '05:05'),
(15, 12633, 'Kanyakumari', '05:55', '-'),
(1, 12631, 'Chennai Egmore', '-', '19:50'),
(2, 12631, 'Tambaram', '20:18', '20:20'),
(3, 12631, 'Chengalpattu', '20:48', '20:50'),
(4, 12631, 'Melmaruvattur', '21:18', '21:20'),
(5, 12631, 'Tindivanam', '21:43', '21:45'),
(6, 12631, 'Vilupuram Jn', '22:28', '22:30'),
(7, 12631, 'Vridhachalam Jn', '23:10', '23:12'),
(8, 12631, 'Tiruchirappalli Jn', '01:10', '01:15'),
(9, 12631, 'Dindigul Jn', '02:32', '02:35'),
(10, 12631, 'Madurai Jn', '03:30', '03:35'),
(11, 12631, 'Virudunagar Jn', '04:13', '04:15'),
(12, 12631, 'Satur', '04:36', '04:38'),
(13, 12631, 'Kovilpatti', '04:58', '05:00'),
(14, 12631, 'Tirunelveli', '06:40', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`Sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
