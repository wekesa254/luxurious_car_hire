-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2020 at 11:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxurious_car_hire`
--

-- --------------------------------------------------------

--
-- Table structure for table `get_quote`
--

CREATE TABLE `get_quote` (
  `id` int(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `address_1` varchar(10) NOT NULL,
  `address_2` varchar(10) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `home_phone_no` varchar(20) NOT NULL,
  `work_phone_no` varchar(20) NOT NULL,
  `preffered_contact` varchar(20) NOT NULL,
  `best_contact_time` time(6) NOT NULL,
  `hire_date` varchar(6) NOT NULL,
  `pick_up_location` varchar(20) NOT NULL,
  `drop_off_location` varchar(20) NOT NULL,
  `no_of_passengers` varchar(100) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `surprise` varchar(5) NOT NULL,
  `booking_today` varchar(5) NOT NULL,
  `single_return` varchar(10) NOT NULL,
  `pick_up_time` time(6) NOT NULL,
  `drop_off_time` time(6) NOT NULL,
  `return_time` time(6) NOT NULL,
  `no_of_pick_ups` int(100) NOT NULL,
  `no_of_drop_offs` int(100) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `add_info` varchar(30) NOT NULL,
  `how_you_heard` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `get_quote`
--

INSERT INTO `get_quote` (`id`, `title`, `first_name`, `last_name`, `mail`, `address_1`, `address_2`, `mobile_no`, `home_phone_no`, `work_phone_no`, `preffered_contact`, `best_contact_time`, `hire_date`, `pick_up_location`, `drop_off_location`, `no_of_passengers`, `reason`, `surprise`, `booking_today`, `single_return`, `pick_up_time`, `drop_off_time`, `return_time`, `no_of_pick_ups`, `no_of_drop_offs`, `vehicle_type`, `add_info`, `how_you_heard`) VALUES
(1, 'Mr.', 'COLLINS', 'WEKESA', 'wekesacol@gmail.com', '172', '052', '079085765', '0743116350', '0111472772', 'MOBILE PHONE', '00:00:00.000000', '2020-0', 'BIRMINGHAM', 'LIVERPOOL', '10', 'WEDDING CEREMONY', 'YES', 'YES', 'RETURN', '05:25:00.000000', '08:25:00.000000', '17:25:00.000000', 1, 1, 'LIMO', '                              ', '                                A friend referred me.');

-- --------------------------------------------------------

--
-- Table structure for table `quick_quote`
--

CREATE TABLE `quick_quote` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `hire_date` date NOT NULL,
  `pick_up` varchar(20) NOT NULL,
  `drop_off` varchar(20) NOT NULL,
  `passengers` int(10) NOT NULL,
  `car` varchar(50) NOT NULL,
  `reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quick_quote`
--

INSERT INTO `quick_quote` (`id`, `name`, `email`, `telephone`, `hire_date`, `pick_up`, `drop_off`, `passengers`, `car`, `reason`) VALUES
(1, 'WEKESA COLLINS', 'WEKESSACOL@GMAIL.COM', '079085765', '2020-09-01', 'BIRMINGHAM', 'LONDON', 4, '', 'PARTY'),
(2, 'WEKESA COLLINS', 'WEKESSACOL@GMAIL.COM', '079085765', '2020-09-01', 'BIRMINGHAM', 'LONDON', 4, '', 'PARTY'),
(3, 'ALLISON', 'allison@gmail.com', '078936528', '2020-09-01', 'BIRMINGHAM', 'LONDON', 4, '', 'PARTY'),
(4, 'CARLISTO', 'cally@gmail.com', '+23476730828', '2020-09-25', 'MANCHESTER', 'LIVERPOOL', 10, '', 'WEDDING CEREMONY'),
(5, 'DAVIS ', 'davis@gmail.com', '0789378272', '2020-09-11', 'LONDON', 'WEMBLEY', 10, 'LIMO', 'WATCH GAME');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `get_quote`
--
ALTER TABLE `get_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quick_quote`
--
ALTER TABLE `quick_quote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `get_quote`
--
ALTER TABLE `get_quote`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quick_quote`
--
ALTER TABLE `quick_quote`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
