-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 12:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_package`
--

CREATE TABLE `book_package` (
  `Id` int(11) NOT NULL,
  `package_name` varchar(500) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `name_head` varchar(250) NOT NULL,
  `address` varchar(500) NOT NULL,
  `adhar_no` bigint(16) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `total_adult` int(11) NOT NULL,
  `total_child` int(11) NOT NULL,
  `journey_date` date NOT NULL,
  `total_amount` double NOT NULL,
  `gst` double NOT NULL,
  `grand_total` double NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_package`
--

INSERT INTO `book_package` (`Id`, `package_name`, `mail`, `name_head`, `address`, `adhar_no`, `age`, `phone`, `total_adult`, `total_child`, `journey_date`, `total_amount`, `gst`, `grand_total`, `transaction_id`, `status`) VALUES
(1, 'Manali 5 night Stay', 'ajay@gmail.com', 'Pratik Dinda', 'ghatal,East midnapur, WB 721212', 12345678912, 23, 9933987504, 2, 1, '2023-04-24', 37500, 6750, 44625, '1234566', 'Booked'),
(2, 'West Bengal 10 night Stay', 'ajay@gmail.com', 'Ajay', 'mumbai,40012', 1234567800, 23, 9933456789, 2, 0, '2023-04-22', 32000, 5760, 38080, '457899', 'Booked'),
(3, 'Manali 5 night Stay', 'pratik@gmail.com', 'Ashok', 'chembur,mumbai,maharashtra,400011', 828645912988, 21, 9933987503, 4, 0, '2023-04-25', 60000, 10800, 71400, '12345679', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone_no` bigint(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `messege` text NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mail`, `phone_no`, `subject`, `messege`, `date`, `status`) VALUES
(1, 'AJAY', 'ajay@gmail.com', 9933987504, 'payment fail ', 'how much time to take my return on account ', '2023-04-21', 'Request Sucessfully'),
(2, 'AJAY', 'ajay@gmail.com', 9933987504, 'payment fail ', 'how much time to take my return on account ', '2023-04-21', 'Request Sucessfully');

-- --------------------------------------------------------

--
-- Table structure for table `normal_booking`
--

CREATE TABLE `normal_booking` (
  `id` int(11) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `from_destination` varchar(200) NOT NULL,
  `to_destination` varchar(200) NOT NULL,
  `no_person` int(11) NOT NULL,
  `transportation` varchar(500) NOT NULL,
  `travel_date` date NOT NULL,
  `return_date` date NOT NULL,
  `package` varchar(600) NOT NULL,
  `transaction_Id` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `normal_booking`
--

INSERT INTO `normal_booking` (`id`, `mail`, `from_destination`, `to_destination`, `no_person`, `transportation`, `travel_date`, `return_date`, `package`, `transaction_Id`, `status`) VALUES
(1, '$mail', '$from', '$to', 0, '$transport', '0000-00-00', '0000-00-00', 'package', '$transaction_id', '$status'),
(2, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process'),
(3, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process'),
(4, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process'),
(5, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process'),
(6, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process'),
(7, 'ajay@gmail.com', 'Mumbai', 'Kolkata', 1, 'Flight', '2023-04-23', '2023-04-06', 'none', '123', 'Booking Process');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `PID` int(11) NOT NULL,
  `Package_name` varchar(500) NOT NULL,
  `Price` bigint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`PID`, `Package_name`, `Price`) VALUES
(1, 'Manali 5 night Stay', 15000),
(2, 'Karnataka 6 night Stay', 11000),
(3, 'Kedarnath 4 night Stay', 6000),
(4, 'West Bengal 10 night Stay', 16000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(500) NOT NULL,
  `mail_id` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `mail_id`, `password`) VALUES
('Ajay', 'ajay@gmail.com', '1234'),
('pratik', 'pratik@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_package`
--
ALTER TABLE `book_package`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normal_booking`
--
ALTER TABLE `normal_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_package`
--
ALTER TABLE `book_package`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `normal_booking`
--
ALTER TABLE `normal_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
