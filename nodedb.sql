-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2021 at 02:13 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `delete_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `phone`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'A', 'H', 'P', '2021-06-19 02:32:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'A2', 'H2', 'P2', '2021-06-19 01:46:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'useremail', 'username', 'userphone', '2021-06-19 01:47:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '+useremail+', '+username+', '+userphone+', '2021-06-19 01:50:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '+useremail+', '+username+', '+userphone+', '2021-06-19 01:51:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'momen.samir@gmail.com', 'Momen', '010', '2021-06-19 01:51:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'momen.samir@gmail.com', 'momen', '010', '2021-06-19 02:25:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'momen.samir@gmail.com', 'momen', '0001', '2021-06-19 01:49:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 01:50:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 01:52:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 01:52:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'momen.samir@gmail.com', 'momen', '0003', '2021-06-19 01:56:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 02:02:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 02:02:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 02:02:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'momen.samir@gmail.com', 'momen', '0003', '2021-06-19 02:04:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'momen.samir@gmail.com', 'momen', '0003', '2021-06-19 02:04:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'momen.samir@gmail.com', 'momen', '0003', '2021-06-19 02:07:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'momen.samir@gmail.com', 'momen', '0003', '2021-06-19 02:08:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 02:09:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'momen.samir@gmail.com', 'momen', '0002', '2021-06-19 02:09:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'momen.samir@gmail.com', 'momen', '0005', '2021-06-19 01:52:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'momen.samir@gmail.com', 'momen', '0005', '2021-06-19 01:55:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'momen.samir@gmail.com', 'Momen', '0009', '2021-06-19 02:04:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
