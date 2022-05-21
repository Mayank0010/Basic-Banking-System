-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 02:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Mayank', 'Rahul', 900, '2022-05-06 18:08:56'),
(3, 'Shubham', 'Raj', 1000, '2022-05-12 14:55:43'),
(4, 'Ram', 'Yash', 10, '2022-04-23 14:58:55'),
(5, 'Rahul', 'Rajesh', 5000, '2022-05-07 21:49:16'),
(6, 'Sangam', 'Alok', 5000, '2022-05-10 20:41:06'),
(9, 'Sangam', 'Mayank', 100, '2022-05-21 16:16:51'),
(10, 'Ramesh', 'Deepak', 41, '2022-05-21 18:07:25'),
(11, 'Shubham', 'Yash', 501, '2022-05-21 18:07:47'),
(12, 'Ram', 'Rohit', 999, '2022-05-21 18:08:14'),
(13, 'Ramesh', 'Alok', 110, '2022-05-21 18:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Raj', 'raj@gmail.com', 50000),
(2, 'Ramesh', 'ramesh@gmail.com', 29849),
(3, 'Mayank', 'mayank@gmail.com', 40000),
(4, 'Sangam', 'sangam@gmail.com', 9900),
(5, 'Rohit', 'rohit@gmail.com', 40999),
(6, 'Ram', 'ram@gmail.com', 18991),
(7, 'Deepak', 'deepak@gmail.com', 541),
(8, 'Yash', 'yash@gmail.com', 4501),
(9, 'Alok', 'alok@gmail.com', 30110),
(10, 'Shubham', 'shubham@gmail.com', 19999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
