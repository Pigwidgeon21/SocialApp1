-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2020 at 03:02 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Meow Bois gonna Meow!', 'pink_pig', 'meow_moon', '2019-11-12 06:23:10', '', 1),
(2, 'Meow Bois gonna Meow!', 'Pink_pig', 'Meow_moon', '2019-11-12 06:23:10', '', 1),
(3, 'Mama\'s Milk?', 'meow_moon', 'meow_moon', '2019-11-12 18:46:52', 'no', 6),
(4, 'Woof woof!', 'meow_moon', 'meow_moon', '2019-11-12 22:11:50', 'no', 9),
(5, 'Booo!', 'meow_moon', 'meow_moon', '2019-11-12 22:18:06', 'no', 9),
(6, 'Chicken tendies every dayyy', 'meow_moon', 'meow_moon', '2019-11-12 22:19:05', 'no', 36),
(7, 'Little tendddy, lil tennndy', 'meow_moon', 'meow_moon', '2019-11-12 22:19:29', 'no', 36),
(8, 'Tendy all over the place!', 'meow_moon', 'meow_moon', '2019-11-12 22:20:13', 'no', 36),
(9, 'I love my tendy very much. He\'s my lil tendyyyy!', 'meow_moon', 'meow_moon', '2019-11-12 22:20:38', 'no', 36),
(10, '', 'meow_moon', 'meow_moon', '2019-11-13 21:24:22', 'no', 36),
(11, 'I\'m fuzzy for cha!', 'forest_hog', 'meow_moon', '2019-11-21 19:18:43', 'no', 40),
(12, 'Got more fuzz on my back than I can handle.', 'chuck_millman', 'meow_moon', '2019-11-24 14:34:29', 'no', 40),
(13, 'PREACH', 'chuck_millman', 'rot_hole', '2019-11-24 14:35:20', 'no', 32),
(14, 'Name a better song. I\'ll wait.', 'chuck_millman', 'chuck_millman', '2019-11-24 14:35:54', 'no', 30),
(15, 'Wood chuck!', 'meow_moon', 'chuck_millman', '2019-11-28 11:15:50', 'no', 42),
(16, 'It IS your job!', 'meow_moon', 'chuck_millman', '2019-11-29 18:47:31', 'no', 41),
(17, 'Will it work?', 'chuck_millman', 'meow_moon', '2019-11-29 19:04:38', 'no', 43),
(18, 'Maybe now?', 'chuck_millman', 'meow_moon', '2019-11-30 22:52:57', 'no', 43),
(19, 'YESSIRRR! OINK!', 'pink_pig', 'chuck_millman', '2019-12-04 20:42:38', 'no', 49);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(4, 'meow_moon', 'chuck_millman');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(4, 'forest_hog', 5),
(5, 'meow_moon', 40),
(6, 'forest_hog', 40),
(7, 'chuck_millman', 42),
(8, 'chuck_millman', 41),
(9, 'chuck_millman', 36),
(10, 'chuck_millman', 32),
(11, 'chuck_millman', 31),
(13, 'chuck_millman', 28),
(14, 'chuck_millman', 30),
(15, 'meow_moon', 42);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'forest_hog', 'meow_moon', 'Best buds furrever!', '2019-11-21 19:13:40', 'yes', 'yes', 'no'),
(2, 'forest_hog', 'meow_moon', 'Best buds furrever!', '2019-11-21 19:13:50', 'yes', 'yes', 'no'),
(3, 'forest_hog', 'meow_moon', 'Taco Tuesday?', '2019-11-21 19:15:46', 'yes', 'yes', 'no'),
(4, 'forest_hog', 'meow_moon', 'OR', '2019-11-21 19:15:53', 'yes', 'yes', 'no'),
(5, 'forest_hog', 'meow_moon', 'Wing Wednesday??', '2019-11-21 19:16:09', 'yes', 'yes', 'no'),
(6, 'forest_hog', 'meow_moon', 'I\'m more for PIEday Friday.', '2019-11-21 19:16:36', 'yes', 'yes', 'no'),
(7, 'forest_hog', 'meow_moon', 'Pie including pizza as well', '2019-11-21 19:16:58', 'yes', 'yes', 'no'),
(8, 'forest_hog', 'meow_moon', 'Mm. So hungry.', '2019-11-21 19:17:08', 'yes', 'yes', 'no'),
(9, 'meow_moon', 'forest_hog', 'Can I choose both???', '2019-11-21 22:19:25', 'yes', 'yes', 'no'),
(10, 'meow_moon', 'forest_hog', 'I\'m so hungry now.', '2019-11-21 22:19:36', 'yes', 'yes', 'no'),
(11, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:19:44', 'yes', 'yes', 'no'),
(12, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:24:27', 'yes', 'yes', 'no'),
(13, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:24:49', 'yes', 'yes', 'no'),
(14, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:25:15', 'yes', 'yes', 'no'),
(15, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:26:32', 'yes', 'yes', 'no'),
(16, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:27:04', 'yes', 'yes', 'no'),
(17, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:27:32', 'yes', 'yes', 'no'),
(18, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:28:45', 'yes', 'yes', 'no'),
(20, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:29:52', 'yes', 'yes', 'no'),
(21, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:30:26', 'yes', 'yes', 'no'),
(22, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:30:37', 'yes', 'yes', 'no'),
(23, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:30:47', 'yes', 'yes', 'no'),
(24, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:31:20', 'yes', 'yes', 'no'),
(25, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:31:33', 'yes', 'yes', 'no'),
(26, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:31:43', 'yes', 'yes', 'no'),
(27, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:32:24', 'yes', 'yes', 'no'),
(28, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:36:16', 'yes', 'yes', 'no'),
(29, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:36:22', 'yes', 'yes', 'no'),
(30, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:39:59', 'yes', 'yes', 'no'),
(31, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:41:03', 'yes', 'yes', 'no'),
(32, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:41:21', 'yes', 'yes', 'no'),
(33, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:41:57', 'yes', 'yes', 'no'),
(34, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:42:14', 'yes', 'yes', 'no'),
(35, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:42:32', 'yes', 'yes', 'no'),
(36, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:42:44', 'yes', 'yes', 'no'),
(37, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:42:56', 'yes', 'yes', 'no'),
(38, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:43:08', 'yes', 'yes', 'no'),
(39, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:43:24', 'yes', 'yes', 'no'),
(40, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:43:41', 'yes', 'yes', 'no'),
(41, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:43:53', 'yes', 'yes', 'no'),
(42, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:44:09', 'yes', 'yes', 'no'),
(43, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:44:19', 'yes', 'yes', 'no'),
(44, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:44:32', 'yes', 'yes', 'no'),
(45, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:44:54', 'yes', 'yes', 'no'),
(46, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:45:06', 'yes', 'yes', 'no'),
(47, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:45:16', 'yes', 'yes', 'no'),
(48, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-21 22:45:48', 'yes', 'yes', 'no'),
(49, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-22 08:11:57', 'yes', 'yes', 'no'),
(50, 'meow_moon', 'forest_hog', 'THANKS!!', '2019-11-22 08:12:17', 'yes', 'yes', 'no'),
(51, 'meow_moon', 'forest_hog', 'So many thank yous....', '2019-11-22 08:17:11', 'yes', 'yes', 'no'),
(52, 'meow_moon', 'forest_hog', 'So many thank yous....', '2019-11-22 08:21:14', 'yes', 'yes', 'no'),
(53, 'meow_moon', 'forest_hog', 'Will it ever end?', '2019-11-22 08:21:35', 'yes', 'yes', 'no'),
(54, 'meow_moon', 'forest_hog', 'Will it ever end?', '2019-11-22 08:21:46', 'yes', 'yes', 'no'),
(55, 'meow_moon', 'forest_hog', 'I worry it might not.', '2019-11-22 08:22:02', 'yes', 'yes', 'no'),
(56, 'meow_moon', 'forest_hog', 'Did it end??', '2019-11-22 08:32:03', 'yes', 'yes', 'no'),
(57, 'meow_moon', 'forest_hog', 'Did it end??', '2019-11-22 08:32:36', 'yes', 'yes', 'no'),
(58, 'meow_moon', 'forest_hog', 'No. No it did not.', '2019-11-22 08:32:54', 'yes', 'yes', 'no'),
(59, 'meow_moon', 'forest_hog', 'No. No it did not.', '2019-11-22 08:34:05', 'yes', 'yes', 'no'),
(60, 'meow_moon', 'forest_hog', 'Meow?', '2019-11-22 08:34:13', 'yes', 'yes', 'no'),
(61, 'meow_moon', 'forest_hog', 'Meow?', '2019-11-22 18:34:40', 'yes', 'yes', 'no'),
(62, 'meow_moon', 'forest_hog', 'halp! I need someonnneee', '2019-11-22 19:02:10', 'yes', 'yes', 'no'),
(63, 'meow_moon', 'forest_hog', 'halp! I need someonnneee', '2019-11-22 19:15:06', 'yes', 'yes', 'no'),
(64, 'meow_moon', 'forest_hog', 'Did it work???', '2019-11-22 19:15:23', 'yes', 'yes', 'no'),
(65, 'meow_moon', 'forest_hog', 'I THINK IT DID!!!!', '2019-11-22 19:15:48', 'yes', 'yes', 'no'),
(66, 'meow_moon', 'forest_hog', 'I could cry.', '2019-11-22 19:16:04', 'yes', 'yes', 'no'),
(67, 'meow_moon', 'forest_hog', 'Meow.', '2019-11-22 22:00:58', 'yes', 'yes', 'no'),
(68, 'pink_pig', 'forest_hog', 'Pink Piggers!', '2019-11-23 22:56:29', 'yes', 'yes', 'no'),
(69, 'forest_hog', 'pink_pig', 'You\'re my forest hog!', '2019-11-23 23:21:09', 'yes', 'yes', 'no'),
(70, 'forest_hog', 'meow_moon', 'Oh my goodness. I\'m glad you survived.', '2019-11-23 23:28:43', 'yes', 'yes', 'no'),
(71, 'meow_moon', 'forest_hog', 'forest hog i love youuuu', '2019-11-23 23:40:21', 'yes', 'yes', 'no'),
(72, 'rot_hole', 'chuck_millman', 'Hey Rot!', '2019-11-24 14:36:49', 'no', 'yes', 'no'),
(73, 'rot_hole', 'chuck_millman', 'Wanna come wallow with me and the bois?', '2019-11-24 14:37:00', 'no', 'yes', 'no'),
(74, 'chris_betts', 'chuck_millman', 'When you gonna upload a pic?', '2019-11-24 14:37:26', 'no', 'no', 'no'),
(75, 'chris_betts', 'chuck_millman', 'I know yer gotta face!', '2019-11-24 14:37:45', 'no', 'no', 'no'),
(76, 'chris_betts', 'chuck_millman', 'I see it e\'rry day!', '2019-11-24 14:37:58', 'no', 'no', 'no'),
(77, 'chuck_millman', 'chuck_millman', 'Cookies make me a happy lil chuck.', '2019-11-25 22:04:32', 'yes', 'yes', 'no'),
(78, 'chuck_millman', 'chuck_millman', 'Do they?', '2019-11-25 22:05:12', 'yes', 'yes', 'no'),
(79, 'pink_pig', 'forest_hog', 'Wanna play in the mud together?', '2019-11-28 01:21:19', 'yes', 'yes', 'no'),
(80, 'forest_hog', 'meow_moon', 'meow!', '2019-11-28 11:16:30', 'no', 'no', 'no'),
(81, 'pink_pig', 'meow_moon', 'You\'re so pink!', '2019-11-28 16:49:31', 'yes', 'yes', 'no'),
(82, 'chandler_bing', 'meow_moon', 'Meow!', '2019-11-28 17:18:06', 'no', 'no', 'no'),
(83, 'meow_moon', 'pink_pig', 'Meow!', '2019-12-17 15:33:02', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'meow_moon', 'chuck_millman', 'Chuck Millman commented on your post', 'post.php?id=43', '2019-11-29 19:04:38', 'yes', 'yes'),
(2, 'meow_moon', 'chuck_millman', 'Chuck Millman commented on your post', 'post.php?id=43', '2019-11-30 22:52:57', 'yes', 'yes'),
(3, 'chuck_millman', 'pink_pig', 'Pink Pig commented on your post', 'post.php?id=49', '2019-12-04 20:42:38', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'Meow!', 'meow_moon', 'none', '2019-11-09 00:02:03', 'no', 'no', 0, ''),
(2, 'Meow!', 'meow_moon', 'none', '2019-11-09 00:02:31', 'no', 'no', 0, ''),
(3, 'Meow!', 'meow_moon', 'none', '2019-11-09 00:21:40', 'no', 'no', 0, ''),
(4, 'Moonpie Madness', 'meow_moon', 'none', '2019-11-09 00:22:12', 'no', 'no', 0, ''),
(5, 'Got Milk?', 'meow_moon', 'none', '2019-11-09 22:57:23', 'no', 'no', 1, ''),
(6, 'Got Milk?', 'meow_moon', 'none', '2019-11-09 23:03:28', 'no', 'no', 0, ''),
(7, 'Got Milk?', 'meow_moon', 'none', '2019-11-09 23:03:41', 'no', 'no', 0, ''),
(8, 'CATS\nRULE\n', 'meow_moon', 'none', '2019-11-09 23:13:04', 'no', 'no', 0, ''),
(9, 'DOGS\nDROOL', 'meow_moon', 'none', '2019-11-09 23:14:17', 'no', 'no', 0, ''),
(10, 'Hairballs much?\n', 'meow_moon', 'none', '2019-11-10 15:31:52', 'no', 'no', 0, ''),
(11, 'naps all day', 'meow_moon', 'none', '2019-11-10 15:32:07', 'no', 'no', 0, ''),
(12, 'the fuzzier the better\n', 'meow_moon', 'none', '2019-11-10 15:32:19', 'no', 'no', 0, ''),
(13, 'tuna please!', 'meow_moon', 'none', '2019-11-10 15:32:33', 'no', 'no', 0, ''),
(14, 'How do I get the laser pointer??', 'meow_moon', 'none', '2019-11-10 15:33:13', 'no', 'no', 0, ''),
(15, 'Tomcats ', 'meow_moon', 'none', '2019-11-10 15:34:43', 'no', 'no', 0, ''),
(16, 'Tonka trucks. Amiright??', 'chris_betts', 'none', '2019-11-10 16:55:25', 'no', 'no', 0, ''),
(17, 'Love, peace, and chicken grease', 'chris_betts', 'none', '2019-11-10 16:55:52', 'no', 'no', 0, ''),
(18, 'slice n\' dice em\' !', 'chris_betts', 'none', '2019-11-10 16:56:12', 'no', 'no', 0, ''),
(19, 'slice n\' dice em\' !', 'chris_betts', 'none', '2019-11-10 17:00:41', 'no', 'no', 0, ''),
(20, 'Mud bath anyone?', 'chris_betts', 'none', '2019-11-10 17:01:10', 'no', 'no', 0, ''),
(21, 'can I get an amen?', 'chris_betts', 'none', '2019-11-10 17:02:14', 'no', 'no', 0, ''),
(22, 'Mugsy Bogus boiiiiis', 'mugsy_bogus', 'none', '2019-11-10 21:29:54', 'no', 'no', 0, ''),
(23, 'Mean Muggin', 'mugsy_bogus', 'none', '2019-11-10 21:30:04', 'no', 'no', 0, ''),
(24, 'Bug boils?', 'mugsy_bogus', 'none', '2019-11-10 21:30:46', 'no', 'no', 0, ''),
(25, 'Got mud?\r\n', 'pink_pig', 'none', '2019-11-10 21:31:08', 'no', 'no', 0, ''),
(26, 'Pinkin\' arounddd the pinkin treee', 'pink_pig', 'none', '2019-11-10 21:31:28', 'no', 'no', 0, ''),
(27, 'I wish I had a pink worm to play with :(', 'pink_pig', 'none', '2019-11-10 21:31:50', 'no', 'no', 0, ''),
(28, 'It\'s a dirty job, but some Chuck\'s gotta do it....', 'chuck_millman', 'none', '2019-11-10 21:32:40', 'no', 'no', 1, ''),
(29, 'You\'re my lil chuckie ', 'chuck_millman', 'none', '2019-11-10 21:33:04', 'no', 'no', 0, ''),
(30, 'Chuck Chuckin\' on Heaven\'s door', 'chuck_millman', 'none', '2019-11-10 21:33:21', 'no', 'no', 1, ''),
(31, 'Just leave me here to ROT and WALLOW', 'rot_hole', 'none', '2019-11-10 21:34:16', 'no', 'no', 1, ''),
(32, 'Who needs a dirt hole, when you can have a rot hole!', 'rot_hole', 'none', '2019-11-10 21:34:36', 'no', 'no', 1, ''),
(33, 'He\'s my fuzzyyyyy pig, and I love him alooot. He\'s my lil forrrrrest hooooog', 'forest_hog', 'none', '2019-11-10 21:35:50', 'no', 'no', 0, ''),
(34, 'hornin\' for cha', 'forest_hog', 'none', '2019-11-10 21:36:13', 'no', 'yes', 0, ''),
(35, 'My back ain\'t the only thing that\'s fuzzy.', 'forest_hog', 'none', '2019-11-10 21:36:27', 'no', 'yes', 0, ''),
(36, 'Chicken tendyyy, Chicken tenddyyy', 'meow_moon', 'none', '2019-11-12 22:18:43', 'no', 'no', 1, ''),
(37, 'Monica ', 'chandler_bing', 'none', '2019-11-18 21:35:01', 'no', 'no', 0, ''),
(38, 'Your\'re the cutest pink pig I ever did see!', 'meow_moon', 'pink_pig', '2019-11-19 08:33:28', 'no', 'no', 0, ''),
(39, 'Pink Pig is my most favorites little pig.', 'forest_hog', 'none', '2019-11-20 22:02:45', 'no', 'no', 0, ''),
(40, 'You\'re so fuzzy! I love it!', 'meow_moon', 'forest_hog', '2019-11-20 22:26:31', 'no', 'no', 2, ''),
(41, 'Chuckin around like its my job!', 'chuck_millman', 'none', '2019-11-24 14:33:17', 'no', 'no', 1, ''),
(42, 'Got chuck?', 'chuck_millman', 'none', '2019-11-24 14:33:26', 'no', 'no', 2, ''),
(43, 'Posting a comment!', 'meow_moon', 'none', '2019-11-28 16:48:40', 'no', 'no', 0, ''),
(44, 'Post something!', 'meow_moon', 'none', '2019-11-28 17:17:34', 'no', 'yes', 0, ''),
(45, 'How much wood could a wood chuck chuck?', 'chuck_millman', 'none', '2019-12-02 17:36:01', 'no', 'no', 0, ''),
(46, 'Dream Home', 'chuck_millman', 'none', '2019-12-02 19:48:45', 'no', 'yes', 0, ''),
(47, 'Dream Nest', 'chuck_millman', 'none', '2019-12-02 19:51:45', 'no', 'no', 0, ''),
(48, 'Dream Nest', 'chuck_millman', 'none', '2019-12-02 19:53:39', 'no', 'no', 0, 'assets/images/posts/5de5b21340188cm_dreamhome.jpg'),
(49, 'Wanna roll around in the mud later today?', 'chuck_millman', 'pink_pig', '2019-12-02 20:05:36', 'no', 'no', 0, ''),
(50, 'https://youtu.be/I7IlnxgRgnM', 'pink_pig', 'none', '2019-12-04 18:53:18', 'no', 'yes', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Wood', 2),
('Chuck', 2),
('Dream', 3),
('Home', 1),
('Nest', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Christin', 'Bettis', 'MeowBoi', 'meowboi@gmail.com', 'meowPow_127', '2019-10-30', 'hjkkj', 1, 1, 'no', ''),
(2, 'Noodle', 'Pho', 'noodle_pho', 'Meowbiggi@gmail.com', '0a562a627be13e35890005d32220af2e', '2019-11-03', 'assets/images/profile_pics/defaults/head_sun_flower.png', 0, 0, 'no', ','),
(3, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey@gmail.com', '6ddd5794db1d247aeb3e3c3ad9a54844', '2019-11-03', 'assets/images/profile_pics/defaults/head_sun_flower.png', 0, 0, 'no', ','),
(4, 'Minnie', 'Mouse', 'minnie_mouse', 'Minnie@gmail.com', 'b0ee213601377ce871e7a8722c74e554', '2019-11-03', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(5, 'Sailor', 'Moon', 'sailor_moon', 'Smoon1@gmail.com', '774ddb335a9d678603ce680592e06b08', '2019-11-03', 'assets/images/profile_pics/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(6, 'Meow', 'Moon', 'meow_moon', 'Moon1@gmail.com', 'f5338efd59023743d9d418eb4c8b4697', '2019-11-03', 'assets/images/profile_pics/meow_moonc3bffbfa5e49fd8bc9ae06d98435e410n.jpeg', 20, 4, 'no', ',nug_pug,mugsy_bogus,pink_pig,chris_betts,forest_hog,chandler_bing,'),
(7, 'Chris', 'Betts', 'chris_betts', 'Chris@gmail.com', '50fdef3fc386e2c6729f628309cf0b62', '2019-11-10', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 0, 'no', ',nug_pug,mugsy_bogus,pink_pig,chuck_millman,forest_hog,meow_moon,'),
(8, 'Chandler', 'Bing', 'chandler_bing', 'Cb@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/defaults/head_deep_blue.png', 1, 0, 'no', ',meow_moon,'),
(9, 'Nug', 'Pug', 'nug_pug', 'Nug@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',mugsy_bogus,pink_pig,chuck_millman,forest_hog,rot_hole,meow_moon,chris_betts,'),
(10, 'Mugsy', 'Bogus', 'mugsy_bogus', 'Mb@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/defaults/head_deep_blue.png', 3, 0, 'no', ',nug_pug,pink_pig,chuck_millman,forest_hog,rot_hole,meow_moon,chris_betts,'),
(11, 'Pink', 'Pig', 'pink_pig', 'Pp@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/pink_pigf7d810e47970b77124cb83e44a414dd8n.jpeg', 4, 0, 'no', ',nug_pug,mugsy_bogus,chuck_millman,forest_hog,rot_hole,meow_moon,chris_betts,'),
(12, 'Chuck', 'Millman', 'chuck_millman', 'Cm@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/chuck_millman5818bdb1f44244b7a4f40b021c6d21aen.jpeg', 9, 5, 'no', ',nug_pug,mugsy_bogus,pink_pig,forest_hog,rot_hole,chris_betts,'),
(13, 'Forest', 'Hog', 'forest_hog', 'Fh@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/forest_hog615593d3c8e53cb097c08d8c79c787abn.jpeg', 4, 0, 'no', ',nug_pug,mugsy_bogus,pink_pig,chuck_millman,rot_hole,chris_betts,meow_moon,'),
(14, 'Rot', 'Hole', 'rot_hole', 'Rh@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-11-10', 'assets/images/profile_pics/rot_holeb59e2e3f6c4f03aa28c2480aea0fbb91n.jpeg', 2, 2, 'no', ',nug_pug,mugsy_bogus,pink_pig,chuck_millman,forest_hog,meow_moon,chris_betts,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
