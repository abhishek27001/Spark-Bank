-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparkbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `srno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`srno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Abhishek', 'Mitali', 9, '2021-04-08 18:08:56'),
(3, 'Suhas', 'Shrushti', 100, '2021-04-08 14:55:43'),
(4, 'Aachal', 'Abhishek', 1, '2021-04-08 14:58:55'),
(5, 'Ujwala', 'Suhas', 5000, '2021-06-03 21:49:16'),
(6, 'Soyal', 'Abhishek', 5000, '2021-06-05 20:41:06'),
(7, 'Soyab', 'Vishkar', 5000, '2021-06-05 23:34:40'),
(8, 'Ruchika', 'Aachal', 5000, '2021-06-06 10:42:24');

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
(1, 'Abhishek', 'abhishek@gmail.com', 50000),
(2, 'soyab', 'soyab85@gmail.com', 30000),
(3, 'suhas', 'suhas123@gmail.com', 39900),
(4, 'Mitali', 'mitali2002@gmail.com', 10000),
(5, 'Shrushti', 'shrushti@gmail.com', 40000),
(6, 'Aachal', 'aachal@gmail.com', 19990),
(7, 'Ujwala', 'ujwala1234@gmail.com', 50009),
(8, 'Soyal', 'ssoyal9987@gmail.com', 40100),
(9, 'Vishkar', 'vishkar88@gmail.com', 30000),
(10, 'Ruchika', 'ruchi34@gmail.com', 50001);

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
  MODIFY `srno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;