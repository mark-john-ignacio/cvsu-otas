-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2022 at 01:57 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int NOT NULL,
  `year` year NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `student_id` int DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(4, '2021120001', 10, 2021, 'The Effects of Social Media to Self-Esteem', '&lt;p&gt;This study demonstrates that there is a significant link between social media and self-esteem. Individuals\' self-esteem suffers as their use of social media increases. An individual\'s self-esteem score drops by 5.574 points after spending one hour every day on Facebook. &lt;/p&gt;&lt;p&gt;Whether you love it, despise it, or simply accept it, social media is an integral part of life, particularly for teenagers.&lt;/p&gt;&lt;p&gt;Issues with social media are frequently complex, and there are rarely any &quot;correct answers&quot; to draw on. Having said that, there is a growing corpus of research from which some guidelines for wise use can be derived.&lt;/p&gt;&lt;p&gt;While social media is frequently marketed as a way to alleviate loneliness, a growing body of evidence suggests it may have the opposite impact. It can cause self-doubt by eliciting comparisons with others, which can lead to mental health difficulties, including anxiety and despair. In this post, I\'ll take a balanced look at some of these disturbing situations.&lt;/p&gt;', '&lt;div&gt;Authors:&lt;/div&gt;&lt;ol&gt;&lt;li&gt;Xander Grande&amp;nbsp;&lt;/li&gt;&lt;li&gt;Maria Agnes Calay&lt;/li&gt;&lt;li&gt;Katherine Saavedra&lt;/li&gt;&lt;/ol&gt;', 'uploads/banners/archive-4.png?v=1640835811', 'uploads/pdf/archive-4.pdf?v=1640835811', 1, 4, '2021-12-30 11:43:24', '2021-12-30 14:25:43'),
(6, '2021120003', 12, 2021, 'The Impact of Self-Service Technologies on Employee Job Satisfaction in the Hotel Industry', '&lt;p&gt;The goal of this study was to see if the deployment of various self-service technologies (SSTs) in hotels has an impact on employees\' views and happiness with their workplace. The primary purpose of this research was to see if there was a link between hotel self-service technology usage and actually measured employee job satisfaction. This study\'s findings enabled the dissemination of both academic and practical information about the impact of self-service technologies on the hotel business. According to research, high levels of job satisfaction are linked to favorable workplace attitudes (Stanley, 2013), and that attitude has an indirect impact on business financial performance (Rucci et al., 1998). As a result, the study\'s premise was predicated on the knowledge that employee job satisfaction has an impact on a company\'s bottom line performance.&lt;/p&gt;&lt;p&gt;A survey was issued directly to hotel employees as the data collection tool for this thesis research. This survey looked at how hotels use self-service technologies, how employees feel about them, and how satisfied they are with their jobs. These three self-service technologies have no effect on hotel staff work satisfaction, according to the findings. However, there appears to be a modest link between employees\' attitudes toward self-service technologies utilized in their workplace and their overall job happiness.&lt;/p&gt;', '&lt;p&gt;Buboy Calay&lt;/p&gt;&lt;p&gt;Bettina Grande\r\n&lt;/p&gt;&lt;p&gt;Alex Grande&lt;br&gt;&lt;/p&gt;', 'uploads/banners/archive-6.png?v=1640918425', 'uploads/pdf/archive-6.pdf?v=1640918425', 1, 5, '2021-12-31 10:40:19', '2021-12-31 10:41:35'),
(7, '2021120002', 11, 2021, 'Risk management through financial derivatives in tourism sector', '&lt;p&gt;In today\'s globalized modern economy, financial derivatives are becoming increasingly essential credentials, shaped in part by the COVID-19 epidemic. Companies\' risk exposure has skyrocketed, and executives are dealing with tumultuous conditions involving financial difficulties, digital hurdles, stock market volatility, and financial losses. Derivative goods are effective instruments that businesses can employ to manage financial risks. They are no longer limited to a single country but are now global and complex. However, whether derivatives are intrinsically harmful financial tools that lead to company financial collapses or a constructive innovation for risk management in global financial markets is still up for debate. This Special Issue covers a variety of significant subjects in risk management and financial derivatives, as well as innovative instruments and strategies for optimizing portfolio management with financial derivatives to mitigate risk exposure concerns. It encourages contributions that offer novel, high-quality theoretical and empirical research, as well as policy-oriented research papers, that provide clear findings to further knowledge in this subject. Empirical articles on optimal portfolio management for various sorts of enterprises and groups of countries using financial derivatives are especially encouraged.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Jose Dimaguiba&lt;/p&gt;&lt;p&gt;Juan Dela Cruz&lt;/p&gt;&lt;p&gt;Juana Garcia&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'uploads/banners/archive-7.png?v=1640923022', 'uploads/pdf/archive-7.pdf?v=1640923022', 1, 6, '2021-12-31 11:56:57', '2021-12-31 11:57:15'),
(8, '2021120004', 14, 2021, 'Influence of banking sector on economic growth', '&lt;p&gt;The key reason for choosing this thesis topic is to research and analyse the impact of the banking sector\'s development on the economy of the country. Banks are the primary conduit for deposits, withdrawals, investments, and other financial transactions in the country. This topic for thesis can be chosen by students who have chosen accounting or banking as their field of concentration.&lt;br&gt;&lt;/p&gt;', '&lt;p class=&quot;MsoNormal&quot; align=&quot;center&quot; style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Jose Matulungin&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; align=&quot;center&quot; style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Juan Dela Cruz&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; align=&quot;center&quot; style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;font-family:&amp;quot;Arial&amp;quot;,sans-serif&quot;&gt;Juana Garcia&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', 'uploads/banners/archive-8.png?v=1640923936', 'uploads/pdf/archive-8.pdf?v=1640923937', 1, 7, '2021-12-31 12:12:12', '2022-01-04 10:49:42'),
(9, '2022010001', 13, 2022, 'What are the most appealing career prospects in the country\'s office administration sector for newcomers?', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Jay Fernandez&lt;/p&gt;&lt;p&gt;Julius San Juan&lt;/p&gt;&lt;p&gt;Clauie Bernales&lt;/p&gt;', 'uploads/banners/archive-9.png?v=1641266302', 'uploads/pdf/archive-9.pdf?v=1641266302', 1, 8, '2022-01-04 11:18:17', '2022-01-04 11:19:01'),
(10, '2022010002', 16, 2022, 'How does bullying effect high school or college students\' social interactions?', '&lt;p&gt;According to a new poll issued today by UNICEF, the United Nations organization that works for children\'s rights, one in every three young people in 30 countries has been a victim of online bullying, with one in five reporting they have skipped school due to cyberbullying and violence.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;Cyberviolence affects nearly half of children aged 13 to 17 in the Philippines, according to new national data. Males (44%) have nearly the same rate of cyber violence as females (43%) do (43 percent).&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Judy Bernales&lt;/p&gt;&lt;p&gt;Sheri San Juan-Grande&lt;/p&gt;&lt;p&gt;Marites Calay&lt;br&gt;&lt;/p&gt;', 'uploads/banners/archive-10.png?v=1641267518', 'uploads/pdf/archive-10.pdf?v=1641267518', 1, 9, '2022-01-04 11:38:34', '2022-01-04 11:40:24'),
(11, '2022010003', 10, 2022, 'The study of emerging sample studies in the current generation', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Uno Dela Cruz&lt;/p&gt;&lt;p&gt;Dos Garcia&lt;/p&gt;&lt;p&gt;Tres Reyes&lt;/p&gt;', 'uploads/banners/archive-11.png?v=1642295093', 'uploads/pdf/archive-11.pdf?v=1642295093', 1, 11, '2022-01-16 09:04:47', '2022-01-16 09:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int NOT NULL,
  `department_id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(10, 9, 'BS Information Technology', '', 1, '2021-12-29 15:47:27', '2021-12-29 15:48:52'),
(11, 7, 'BS Tourism Management', '', 1, '2021-12-29 15:48:17', '2021-12-29 15:49:03'),
(12, 7, 'BS Hospitality Management', '', 1, '2021-12-29 15:49:26', NULL),
(13, 8, 'BS Office Administration', '', 1, '2021-12-29 15:50:10', NULL),
(14, 8, 'BS Business Administration', '', 1, '2021-12-29 15:50:56', NULL),
(15, 11, 'BS Secondary Education', '', 1, '2021-12-29 15:51:26', NULL),
(16, 10, 'BS Psychology', '', 1, '2021-12-29 15:51:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(7, 'Department of Hospitality and Tourism Management', '', 1, '2021-12-29 15:44:05', NULL),
(8, 'Department of Management Studies', '', 1, '2021-12-29 15:44:32', NULL),
(9, 'Department of Information Technology', '', 1, '2021-12-29 15:44:57', NULL),
(10, 'Department of Psychology', '', 1, '2021-12-29 15:45:16', NULL),
(11, 'Department of Teacher Education', '', 1, '2021-12-29 15:45:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int NOT NULL,
  `curriculum_id` int NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(2, 'Admin', '', 'Mark', 9, 10, 'admin@mark', '0192023a7bbd73250516f069df18b500', 'Male', 1, '', '2022-01-04 14:40:00', '2022-01-04 15:59:45'),
(4, 'Hopie', '', 'Soberanya', 9, 10, 'hopie.soberanya@cvsu.edu.ph', 'cd73502828457d15655bbd7a63fb0bc8', 'Female', 1, '', '2021-12-30 11:12:12', '2021-12-30 11:14:23'),
(5, 'Buboy', '', 'Calay', 7, 12, 'buboy.calay@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2021-12-31 09:29:54', '2021-12-31 09:30:28'),
(6, 'Mirasol', '', 'Amparo', 7, 11, 'mirasol.amparo@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2021-12-31 11:00:55', '2021-12-31 11:38:23'),
(7, 'Orly ', '', 'Cranberry', 8, 14, 'orly.cranberry@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2021-12-31 12:01:45', '2021-12-31 12:02:08'),
(8, 'Jay', '', 'Fernandez', 8, 13, 'jay.fernandez@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2022-01-04 10:56:11', '2022-01-04 10:56:35'),
(9, 'Judy', '', 'Bernales', 10, 16, 'judy.bernales@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2022-01-04 11:20:37', '2022-01-04 11:21:05'),
(11, 'Uno', '', 'Dela Cruz', 9, 10, 'uno.garcia@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2022-01-16 08:57:54', '2022-01-16 08:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'CvSU Online Thesis Archiving System'),
(6, 'short_name', 'CvSU - OTAS'),
(11, 'logo', 'uploads/logo-1640590391.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1640590394.png'),
(15, 'content', 'Array'),
(16, 'email', 'cvsuotas@cvsu.edu.ph'),
(17, 'contact', '0912-3456-789'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', ' 007 Arnaldo, General Trias, 4107 Cavite');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1' COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Admin', NULL, 'Mark', 'adminmark', '0192023a7bbd73250516f069df18b500', NULL, NULL, 1, 1, '2021-12-29 16:00:51', '2021-12-30 11:23:41'),
(3, 'Staff', NULL, 'Menard', 'staffmenard', 'de9bf5643eabf80f4a56fda3bbb84483', NULL, NULL, 2, 1, '2021-12-30 11:09:46', '2021-12-30 11:26:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
