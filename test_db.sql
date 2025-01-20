-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2025 at 07:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `user_id`, `post_id`, `text`) VALUES
(1, '2025-01-19 11:04:49', 9, 14, 'test insert comment 1'),
(2, '2025-01-19 11:20:04', 9, 14, 'test insert comment 2'),
(3, '2025-01-19 11:20:06', 9, 14, 'test insert comment 3'),
(4, '2025-01-19 13:13:16', 11, 13, 'can upload now?'),
(5, '2025-01-19 13:13:21', 11, 14, 'nice one bro!'),
(6, '2025-01-19 13:13:27', 11, 2, 'wow cool!!!'),
(7, '2025-01-19 14:02:03', 11, 17, 'test'),
(8, '2025-01-19 14:02:18', 11, 13, 'is it functioning?'),
(9, '2025-01-19 14:02:35', 11, 17, 'wow'),
(10, '2025-01-19 14:08:48', 11, 17, 'this is good'),
(11, '2025-01-19 14:10:34', 11, 17, 'ikram test again'),
(12, '2025-01-19 14:10:44', 11, 14, 'wowerz'),
(13, '2025-01-19 14:41:31', 12, 18, 'sedapnyer'),
(14, '2025-01-19 14:41:41', 12, 17, 'nice post bro'),
(15, '2025-01-20 01:49:00', 13, 19, 'ikram ism'),
(16, '2025-01-20 01:51:25', 13, 18, 'yes looks so delicious'),
(18, '2025-01-20 02:07:37', 7, 2, 'hope for a goodluck bro!'),
(19, '2025-01-20 02:36:42', 7, 18, 'naisu'),
(20, '2025-01-20 04:54:45', 7, 18, 'naisu'),
(21, '2025-01-20 04:55:05', 7, 14, 'ofcorz'),
(22, '2025-01-20 04:55:16', 7, 17, 'ofcourse');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `date_created`, `user_id`, `image`, `caption`) VALUES
(1, '2025-01-19 07:20:01', 5, NULL, 'test'),
(2, '2025-01-19 07:22:28', 5, 'uploads\\resume_picture.png', 'test ikram image'),
(3, '2025-01-19 08:08:11', 6, NULL, 'rest'),
(7, '2025-01-19 08:44:33', 6, NULL, 'test'),
(13, '2025-01-19 10:37:27', 8, NULL, 'test upload'),
(14, '2025-01-19 10:37:49', 8, NULL, 'ikram is da best'),
(17, '2025-01-19 13:37:14', 11, NULL, 'new post'),
(18, '2025-01-19 14:36:06', 12, 'uploads\\maxresdefault.jpg', 'nyum nyum'),
(19, '2025-01-19 14:42:34', 12, 'uploads\\Painting_Art_Back_view_Photographer_575380_600x800.jpg', 'try new photo'),
(20, '2025-01-20 02:12:12', 7, 'uploads\\steak_600x600.png', 'new photo'),
(21, '2025-01-20 05:03:27', 7, NULL, 'Test arba travel project'),
(22, '2025-01-20 06:15:13', 7, 'uploads\\Cheffy-Garlic-Butter-Steak_7.webp', 'upload steak picture');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'test', 'ikram@gmail.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
(2, 'eded', 'edeed@gmail.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
(3, 'test', 'yes', '0766fa0a0cd628539962c6464ec047994482dc5dee9a1cb77847abefc3e88a1c'),
(4, 'ikram', 'test', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae'),
(5, 'ikram tets data', 'ikram134033@gmail.com', '937e8d5fbb48bd4949536cd65b8d35c426b80d2f830c5c308e2cdec422ae2244'),
(6, 'dee', 'dede', 'a299377901f172132c178bcb10dfe44595b4478d91919f5003f4ba4b38da6907'),
(7, 'ikramism1', 'ikramism1@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(8, 'ikramismail', 'test@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(9, 'misterx', 'misterx@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(10, 'alamasari', 'alamsari@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(11, 'wdyumean', 'we@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(12, 'new guy', 'newguy@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(13, 'newikram', 'newikram@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(16, 'testikramism', 'amirulzinel@gmail.com', '0b14d501a594442a01c6859541bcb3e8164d183d32937b851835442f69d5c94e'),
(17, 'ikramtest-account', 'ikramtest@gmail.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
