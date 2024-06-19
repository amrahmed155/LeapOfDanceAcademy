-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leapofdanceacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `prefix`, `name`, `email`, `phone`, `message`, `status`, `createDate`) VALUES
(1, 'Mr.', 'amr ahmed', 'aska@asmd.sxa', '1218938921', 'asdjka sa sjdasdk ', 'read', '2024-06-18 16:25:35'),
(2, 'Mr.', 'amr', 'hbasbhx@ASKM.DSA', '+1 23189421u8', 'sdaijksad', 'read', '2024-06-18 16:25:35'),
(3, 'Mr.', 'dash', 'qsand@sad.dsa', '+1 72831781', 'sajdnaskdnsadkns nfjkasn kdsna kjansd knak nkjasd njkn sadnsa kna knsfkjns dkjfnfds kanjkfdsn kjnsd ajknfd jnkj sdandfsk nkjdfs nkjfdnbg hjfak nldf ndakj', 'read', '2024-06-18 16:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `parentName` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `DOB` date DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gender`, `address`, `parentName`, `email`, `phone`, `status`, `DOB`, `createDate`) VALUES
(1, '', '0', '', 'smds', 'k@sakm.asd', '+11282391', '0', NULL, '2024-06-18 16:25:49'),
(2, '', '0', '', 'smds', 'k@sakm.asd', '+11282391', '0', NULL, '2024-06-18 16:25:49'),
(3, 'amra', '0', 'adsmk', 'smds', 'k@sakm.asd', '+11282391', '0', '2023-05-17', '2024-06-18 16:25:49'),
(4, 'amra', '0', 'adsmk', 'smds', 'k@sakm.asd', '+11282391', '0', '2023-05-17', '2024-06-18 16:25:49'),
(5, 'iasd', '0', 'adsmk', 'smds', 'hbasbhx@ASKM.DSA', '+440123812821', '0', '2024-07-19', '2024-06-18 16:25:49'),
(6, 'sadjnsad', '0', 'dsfaj', 'smds', 'daniel.martinez@example.co', '+443828231', '0', '2023-05-17', '2024-06-18 16:25:49'),
(7, 'jfasdn', '1', 'adsmk', 'smds', 'k@sakm.asd', '+182198231', '0', '2025-07-17', '2024-06-18 16:25:49'),
(8, 'amra', '0', 'asdkm', 'msdakm', 'msdamk@mas.sam', '+12932102319', '0', '2017-04-16', '2024-06-18 16:25:49'),
(9, 'amr ahmed ', '1', 'Amdasj street', 'Ahmed', 'amra15@go.eg', '+201293192112', '0', '1998-05-15', '2024-06-18 16:25:49'),
(10, 'test2', '0', 'Amdasj street2', 'msdakm', 'aa@a.a', '+201002003432', '0', '2008-05-16', '2024-06-18 16:25:49'),
(11, 'test', '0', 'Amdasj street', 'Ahm', 'aska@asmd.sxa', '+12193190', '0', '2023-05-17', '2024-06-18 16:25:49'),
(12, 'teas', '1', 'Amdasj street', 'smds', 'hbasbhx@ASKM.DSA', '+128391', 'read', '2023-04-16', '2024-06-18 16:25:49'),
(13, 'teaas', '1', 'asji', 'dsakm', 'jdsanj@sjd.sad', '+44 12832918321', 'unread', '2025-07-20', '2024-06-19 07:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `placeOfBirth` text NOT NULL,
  `Nationality` text NOT NULL,
  `City` text NOT NULL,
  `Gender` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `sponsorTerms` text NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`id`, `name`, `placeOfBirth`, `Nationality`, `City`, `Gender`, `email`, `phone`, `sponsorTerms`, `createDate`, `status`) VALUES
(1, 'amr', 'sdskma', 'aksmdak', '', '', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'read'),
(2, 'amr', 'sdskma', 'aksmdak', '', '', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'read'),
(3, 'amr', 'sdskma', 'aksmdak', '', 'Female', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'unread'),
(4, 'amr', 'sdskma', 'aksmdak', '', 'Female', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'unread'),
(5, 'amr', 'sdskma', 'aksmdak', '', 'Female', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'read'),
(6, 'teasq231', 'teasq231213', 'teasq2312113', 'dsakm', 'Male', 'sdja@asdsda.sad', '+121412', 'Short term', '2024-06-18 16:25:58', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interestReason` text NOT NULL,
  `stayingDuration` text NOT NULL,
  `skills` text NOT NULL,
  `GoFundMeRadio` text NOT NULL,
  `GoFundMeOtherReason` text NOT NULL,
  `ideas` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `interestReason`, `stayingDuration`, `skills`, `GoFundMeRadio`, `GoFundMeOtherReason`, `ideas`, `email`, `phone`, `status`, `createDate`) VALUES
(1, 'test1', 'test2', 'test3', '-1', 'afsmk', 'test5', 'daniel.martinez@example.co', '+121214241', '0', '2024-06-18 16:26:09'),
(2, 'awa', 'wsd', 'sad', '1', 'askd', 'sadik', 'idas@sida.asd', '+20213123213', 'read', '2024-06-18 16:26:09'),
(3, 'jdsanj', 'kmsda', 'jnadsfdjs', '1', 'test4', 'kmasd', 'smdak@amsa.asd', '+102151315', '0', '2024-06-18 16:26:09'),
(4, 'lsa', 'sda', 'sda', '1', 'sadq', 'asd', 'idas@sida.asda', '+1541512', '0', '2024-06-18 16:26:09'),
(5, 'text1', 'text12', 'text13', 'Yes', 'text5', 'text6', 'text7@t.t', '+112214312412', '0', '2024-06-18 16:26:09'),
(6, 'text1', 'text1', 'text1', 'Yes', 'wasdk', 'saijd', 'jdsanj@sjd.sad', '+1233293', '0', '2024-06-18 16:26:09'),
(7, '', '', '', '', '', '', 'aska@asmd.sxa', '12198 1298321', 'read', '2024-06-18 16:26:09'),
(8, 'dsaj', 'sdja', 'jds', 'Yes', 'dsj', 'asdjn', 'jsda@asdj.das', '+1 38232823', 'read', '2024-06-18 16:26:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
