-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 07:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(4, 4, '202112055511', 'iggy', 2, 0, '2021-12-05 21:08:39'),
(5, 4, '202112054238', 'eminem', 3, 0, '2021-12-05 18:51:51'),
(6, 4, '202112053519', 'charlie', 2, 0, '2021-12-05 18:52:54'),
(7, 4, '202112054946', 'selena', 2, 0, '2021-12-05 18:54:24'),
(8, 4, '202112054577', 'taylor', 2, 0, '2021-12-05 19:09:06'),
(9, 4, '202112058962', 'ariana', 2, 0, '2021-12-05 20:44:47'),
(10, 4, '202112052588', 'rihana', 1, 0, '2021-12-05 20:57:06'),
(11, 5, '202112051919', 'Chris Brown', 1, 0, '2021-12-05 23:15:16'),
(12, 5, '202112059930', 'Drake', 2, 1, '2021-12-06 22:55:27'),
(13, 6, '20211205966', 'Beyonce', 1, 1, '2021-12-05 23:44:50'),
(14, 6, '202112062325', 'Divisha', 2, 1, '2021-12-06 21:03:58'),
(15, 6, '202112061228', 'Gaurang', 1, 0, '2021-12-06 16:17:46'),
(16, 21, '202112062112', 'Samartha', 1, 1, '2021-12-06 21:04:05'),
(17, 29, '2021120664', 'Diya', 2, 0, '2021-12-06 21:00:38'),
(18, 17, '202112066432', 'Suleman', 1, 0, '2021-12-06 21:02:09'),
(19, 14, '202112064014', 'halsey', 1, 0, '2021-12-06 21:21:18'),
(20, 16, '202112062864', 'sejal', 4, 0, '2021-12-07 10:56:21'),
(21, 21, '202112061678', 'Tejal', 2, 1, '2021-12-06 23:16:12'),
(22, 20, '202112077373', 'Ishita', 1, 1, '2021-12-07 10:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(1, 'sunflower travels', '5001', 1, '2021-12-05 21:13:11'),
(2, 'vrl travels', '5000', 1, '2021-12-05 21:13:21'),
(3, 'Rose Travels', '5002', 1, '2021-12-05 21:13:30'),
(6, 'Hansraj travels', '5003', 1, '2021-12-05 22:50:25'),
(7, 'Neeta Volvo', '5004', 1, '2021-12-05 22:50:46'),
(8, 'Overlando', '5005', 1, '2021-12-05 22:51:15'),
(9, 'SRS Travels', '5006', 1, '2021-12-05 22:51:26'),
(10, 'Cross Transport', '5007', 1, '2021-12-05 22:51:51'),
(11, 'Easy Travel', '5008', 1, '2021-12-05 22:52:07'),
(12, 'Red rocket bus', '5009', 1, '2021-12-05 22:52:33'),
(13, 'Indigo bus', '5010', 1, '2021-12-05 22:52:52'),
(14, 'Magic Bus', '5011', 1, '2021-12-05 22:53:15'),
(15, 'Wish busses', '5012', 1, '2021-12-05 22:53:33'),
(16, 'Bus Buzz Special', '5013', 1, '2021-12-05 22:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'LP chauk', 'Navi Mumbai', 'Maharashtra', 1, '2021-12-05 22:48:23'),
(4, 'Diamond Garden', 'Mumbai', 'Maharashtra', 1, '2021-12-05 22:54:34'),
(5, 'Nashik Road', 'Nashik', 'Maharashtra', 1, '2021-12-05 22:55:35'),
(6, 'CBS pune', 'Pune', 'Maharashtra', 1, '2021-12-05 22:56:01'),
(7, 'JLG Marg', 'Jalgaon', 'Maharashtra', 1, '2021-12-05 22:57:16'),
(8, 'Dhule Depo', 'Dhule', 'Maharashtra', 1, '2021-12-05 22:57:38'),
(9, 'Buldhana Chowk', 'Buldhana', 'Maharashtra', 1, '2021-12-05 22:58:03'),
(10, 'Gandhi chowk', 'Akola', 'Maharashtra', 1, '2021-12-05 22:58:21'),
(11, 'Amravati central', 'Amravati', 'Maharashtra', 1, '2021-12-05 22:58:39'),
(12, 'Washim Road', 'Washim', 'Maharashtra', 1, '2021-12-05 22:58:56'),
(13, 'Yavatmal ', 'Yavatmal', 'Maharashtra', 1, '2021-12-05 22:59:48'),
(14, 'Nagpur Road', 'Nagpur', 'Maharashtra', 1, '2021-12-05 23:00:13'),
(15, 'Wardha Marg', 'Wardha', 'Maharashtra', 1, '2021-12-05 23:00:28'),
(16, 'Chandrapur Road', 'Chandrapur', 'Maharashtra', 1, '2021-12-05 23:00:52'),
(17, 'Solapur Road', 'Solapur', 'Maharashtra', 1, '2021-12-05 23:01:22'),
(18, 'Aurangabad Marg', 'Aurangabad', 'Maharashtra', 1, '2021-12-05 23:01:49'),
(19, 'MG road', 'Alibaug', 'Maharashtra', 1, '2021-12-05 23:02:08'),
(20, 'Sindhu Durg', 'Sindhudurg', 'Maharashtra', 1, '2021-12-05 23:03:44'),
(21, 'Sangli Rd', 'Sangli', 'Maharashtra', 1, '2021-12-05 23:04:00'),
(22, 'Raigad Road', 'Raigad ', 'Maharashtra', 1, '2021-12-05 23:04:51'),
(23, 'Ahmednagar Rd', 'Ahmednagar', 'Maharashtra', 1, '2021-12-05 23:05:11'),
(24, 'Nanded Nagar', 'Nanded', 'Maharashtra', 1, '2021-12-05 23:05:53'),
(25, 'Ulhasnagar ', 'Thane', 'Maharashtra', 1, '2021-12-05 23:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(5, 1, 1, 1, '2021-12-18 14:00:00', '2021-12-18 16:00:00', 1, 50, '99', '2021-12-06 06:16:54'),
(6, 3, 1, 4, '2021-12-07 21:00:00', '2021-12-07 21:00:00', 1, 30, '79', '2021-12-05 17:49:37'),
(7, 6, 4, 1, '2021-12-08 21:00:00', '2021-12-08 23:00:00', 1, 40, '399', '2021-12-05 17:51:02'),
(8, 7, 5, 6, '2021-12-08 02:00:00', '2021-12-08 07:00:00', 1, 45, '599', '2021-12-05 18:29:20'),
(9, 8, 6, 7, '2021-12-08 04:00:00', '2021-12-08 06:00:00', 1, 35, '499', '2021-12-05 18:30:21'),
(10, 9, 7, 8, '2021-12-09 04:00:00', '2021-12-09 07:00:00', 1, 40, '499', '2021-12-05 18:31:19'),
(11, 10, 8, 9, '2021-12-09 03:00:00', '2021-12-09 06:00:00', 1, 30, '599', '2021-12-05 18:32:14'),
(12, 11, 9, 10, '2021-12-09 02:00:00', '2021-12-09 05:00:00', 1, 20, '599', '2021-12-05 18:32:49'),
(13, 12, 10, 11, '2021-12-18 14:00:00', '2021-12-18 16:00:00', 1, 40, '299', '2021-12-06 05:25:39'),
(14, 13, 11, 12, '2021-12-18 14:00:00', '2021-12-18 17:00:00', 1, 30, '399', '2021-12-06 05:26:22'),
(15, 14, 12, 13, '2021-12-18 14:00:00', '2021-12-18 17:00:00', 1, 20, '499', '2021-12-06 05:28:32'),
(16, 14, 13, 14, '2021-12-18 14:00:00', '2021-12-18 16:00:00', 1, 30, '599', '2021-12-06 05:30:37'),
(17, 15, 14, 15, '2021-12-18 14:00:00', '2021-12-18 16:00:00', 1, 50, '499', '2021-12-06 05:31:48'),
(18, 16, 15, 16, '2021-12-18 14:00:00', '2021-12-18 16:00:00', 1, 30, '499', '2021-12-06 05:33:17'),
(19, 1, 16, 17, '2021-12-18 14:00:00', '2021-12-18 18:00:00', 1, 30, '499', '2021-12-06 05:55:13'),
(20, 2, 17, 18, '2021-12-18 14:00:00', '2021-12-18 20:00:00', 1, 50, '899', '2021-12-06 05:56:09'),
(21, 3, 18, 19, '2021-12-18 14:00:00', '2021-12-18 18:00:00', 1, 45, '799', '2021-12-06 05:57:38'),
(22, 6, 19, 20, '2021-12-18 14:00:00', '2021-12-19 02:00:00', 1, 30, '999', '2021-12-06 06:10:27'),
(23, 7, 20, 21, '2021-12-18 14:00:00', '2021-12-18 22:00:00', 1, 35, '799', '2021-12-06 06:12:19'),
(24, 8, 21, 22, '2021-12-18 14:00:00', '2021-12-18 22:00:00', 1, 40, '799', '2021-12-06 06:13:56'),
(25, 9, 22, 23, '2021-12-18 14:00:00', '2021-12-18 20:00:00', 1, 30, '699', '2021-12-06 06:15:37'),
(26, 10, 23, 24, '2021-12-18 14:00:00', '2021-12-18 22:00:00', 1, 40, '599', '2021-12-06 06:17:55'),
(27, 11, 24, 25, '2021-12-18 14:00:00', '2021-12-19 02:00:00', 1, 30, '799', '2021-12-06 06:18:43'),
(28, 13, 1, 4, '2021-12-18 14:00:00', '2021-12-18 15:00:00', 1, 40, '69', '2021-12-06 09:54:33'),
(29, 9, 6, 7, '2021-12-18 14:00:00', '2021-12-18 22:00:00', 1, 20, '499', '2021-12-06 09:55:27'),
(30, 14, 10, 17, '2021-12-18 14:00:00', '2021-12-19 02:00:00', 1, 60, '999', '2021-12-06 17:28:07'),
(31, 14, 8, 22, '2021-12-18 14:00:00', '2021-12-18 20:00:00', 1, 40, '799', '2021-12-07 05:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(3, 'Samartha', 1, 'admin', 'admin123', 1, '2021-12-05 20:48:24'),
(4, 'Gaurang', 1, 'admin', 'admin123', 1, '2021-12-05 20:48:56'),
(5, 'Diya', 1, 'admin', 'admin123', 1, '2021-12-05 20:49:15'),
(6, 'Student', 3, 'student123', 'student123', 1, '2021-12-05 00:00:00'),
(8, 'test admin', 1, 'admin', 'admin123', 1, '2021-12-07 10:58:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
