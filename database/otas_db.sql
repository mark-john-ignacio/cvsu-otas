-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 02:53 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

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
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(1, '2023010001', 5, 2023, 'The Impact of Social Media Marketing on Small Businesses: A Case Study', '&lt;p&gt;This study aims to determine the impact of social media marketing on the performance of small businesses in the Philippines. A case study approach was employed, involving a survey of 50 small business owners and in-depth interviews with 10 of them. The results of the study show that social media marketing has a positive impact on the revenue and customer base of small businesses. The findings also indicate that small businesses should allocate a significant portion of their marketing budget to social media to stay competitive. This study provides valuable insights for small business owners and policymakers on the importance of social media marketing in today\'s digital age.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Bianca Almario&lt;/p&gt;', 'uploads/banners/archive-1.png?v=1672900900', 'uploads/pdf/archive-1.pdf?v=1672900900', 1, 4, '2023-01-05 14:36:21', '2023-01-05 14:41:40'),
(2, '2023010002', 3, 2023, 'The Effectiveness of Using Virtual Reality in Improving Foreign Language Acquisition', '&lt;p&gt;The purpose of this study was to investigate the effectiveness of using virtual reality (VR) technology in improving foreign language acquisition. A total of 60 college students enrolled in an intermediate Spanish course were randomly assigned to either the experimental group, which received instruction using VR, or the control group, which received traditional instruction. The results of the study showed that the experimental group had significantly higher scores on a foreign language proficiency test compared to the control group. Additionally, the experimental group reported higher levels of motivation and engagement in language learning. These findings suggest that VR technology may be a promising tool for enhancing foreign language acquisition.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Isagani Tolentino&lt;/p&gt;', 'uploads/banners/archive-2.png?v=1672902076', 'uploads/pdf/archive-2.pdf?v=1672902076', 1, 1, '2023-01-05 15:01:16', '2023-01-05 15:14:38'),
(3, '2023010003', 2, 2023, 'The Impact of Customer Service Training on Employee Satisfaction and Retention in the Hospitality Industry', '&lt;p&gt;The hospitality industry relies on customer service to differentiate itself from competitors and to retain customers. Employee satisfaction is also a key factor in the success of a hospitality business, as satisfied employees are more likely to provide better service to customers. This study aims to examine the relationship between customer service training and employee satisfaction in the hospitality industry, as well as the impact of employee satisfaction on retention rates. A total of 100 employees from a range of hospitality businesses participated in the study. The results indicated that customer service training was significantly related to employee satisfaction, and that employee satisfaction was significantly related to retention. These findings suggest that investing in customer service training for employees may lead to increased employee satisfaction, which in turn may lead to higher retention rates in the hospitality industry.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Honey Moreno&lt;/p&gt;', 'uploads/banners/archive-3.png?v=1672902382', 'uploads/pdf/archive-3.pdf?v=1672902382', 1, 2, '2023-01-05 15:06:22', '2023-01-05 15:14:43'),
(4, '2023010004', 1, 2023, 'Developing a Sustainable Tourism Plan for the Municipality of Indang, Cavite', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-ascii-theme-font:major-bidi;\r\nmso-hansi-theme-font:major-bidi;mso-bidi-theme-font:major-bidi&quot;&gt;The\r\nMunicipality of Indang, Cavite is a small town located in the province of\r\nCavite, Philippines. Despite its rich cultural and natural resources, Indang\r\nhas not yet fully developed its tourism industry, and as a result, has not\r\nfully realized its potential as a tourist destination. The purpose of this\r\ncapstone project is to develop a sustainable tourism plan for Indang that will\r\nhelp the municipality to attract and retain tourists while also preserving its\r\ncultural and natural resources.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-ascii-theme-font:major-bidi;\r\nmso-hansi-theme-font:major-bidi;mso-bidi-theme-font:major-bidi&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;\r\n\r\n\r\n\r\n&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align:justify&quot;&gt;&lt;span style=&quot;font-size:12.0pt;\r\nline-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-ascii-theme-font:major-bidi;\r\nmso-hansi-theme-font:major-bidi;mso-bidi-theme-font:major-bidi&quot;&gt;The project is\r\ndivided into two phases. In the first phase, a situational analysis was\r\nconducted to assess the current state of tourism in Indang, including an\r\nanalysis of the municipality\'s strengths, weaknesses, opportunities, and\r\nthreats (SWOT analysis). In the second phase, a tourism development plan was\r\ncreated based on the findings of the situational analysis. The plan includes a\r\nrange of strategies and actions designed to promote tourism in Indang and to\r\naddress the challenges and opportunities identified in the situational\r\nanalysis.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Trisha Mendoza&lt;/p&gt;', 'uploads/banners/archive-4.png?v=1672902864', 'uploads/pdf/archive-4.pdf?v=1672902864', 1, 3, '2023-01-05 15:14:23', '2023-01-05 15:15:06'),
(5, '2023010005', 4, 2023, 'Implementing an Electronic Document Management System in a Small Business', '&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Small businesses often rely on manual systems for storing and organizing documents, which can be inefficient and prone to errors. An electronic document management system (EDMS) can improve document organization, access, and security, but implementing an EDMS can be a daunting task for small businesses with limited resources. The purpose of this capstone project is to develop a plan for implementing an EDMS in a small business. The project includes a review of the literature on EDMS, as well as a case study of a small business that successfully implemented an EDMS.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;;&quot;&gt;Keywords: electronic document management system, small business, document organization, document access, document security.&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Oscar Arceo&lt;/p&gt;', 'uploads/banners/archive-5.png?v=1672903328', 'uploads/pdf/archive-5.pdf?v=1672903328', 1, 5, '2023-01-05 15:22:07', '2023-01-05 16:12:00'),
(6, '2023010006', 7, 2023, 'The Effects of Social Support on the Mental Health of College Students', '&lt;p&gt;The purpose of this study was to examine the relationship between social support and mental health in college students. A literature review was conducted to explore the existing research on this topic. Results from previous studies suggest that social support is a protective factor against mental health problems and can help individuals cope with stress and adversity. However, there is a need for more research to fully understand the complex relationship between social support and mental health. This study aims to contribute to the existing research by examining this relationship in a sample of college students.&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;Paulina Clara&lt;/p&gt;', 'uploads/banners/archive-6.png?v=1672903886', 'uploads/pdf/archive-6.pdf?v=1672903886', 1, 6, '2023-01-05 15:31:26', '2023-01-05 16:11:07'),
(7, '2023010007', 6, 2023, 'The Impact of Student-Centered Instruction on Academic Achievement in a High School Mathematics Classroom', '&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:\r\n&amp;quot;Times New Roman&amp;quot;,serif;mso-ascii-theme-font:major-bidi;mso-hansi-theme-font:\r\nmajor-bidi;mso-bidi-theme-font:major-bidi&quot;&gt;Student-centered instruction is a\r\nteaching approach that focuses on the needs and interests of the student,\r\nrather than the teacher. This approach has been shown to be effective in a\r\nvariety of educational settings, but little research has been done on its\r\nimpact in high school mathematics classrooms. The purpose of this capstone\r\nproject is to examine the impact of student-centered instruction on academic\r\nachievement in a high school mathematics classroom. The project includes a\r\nreview of the literature on student-centered instruction and a case study of a\r\nhigh school mathematics classroom that implemented student-centered\r\ninstruction.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;', '&lt;p&gt;Tristan Espinoza&lt;/p&gt;', 'uploads/banners/archive-7.png?v=1672906247', 'uploads/pdf/archive-7.pdf?v=1672906247', 1, 7, '2023-01-05 16:10:47', '2023-01-05 16:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'BS Tourism Management', '', 1, '2023-01-05 13:50:03', NULL),
(2, 1, 'BS Hospitality Management', '', 1, '2023-01-05 13:50:15', NULL),
(3, 3, 'BS Information Technology', '', 1, '2023-01-05 13:50:25', NULL),
(4, 2, 'BS Office Administration', '', 1, '2023-01-05 13:51:01', NULL),
(5, 2, 'BS Business Administration', '', 1, '2023-01-05 13:52:10', NULL),
(6, 5, 'BS Secondary Education', '', 1, '2023-01-05 13:52:24', NULL),
(7, 4, 'BS Psychology', '', 1, '2023-01-05 13:52:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Department of Hospitality and Tourism Management', '', 1, '2023-01-05 13:45:47', NULL),
(2, 'Department of Management Studies', '', 1, '2023-01-05 13:46:26', NULL),
(3, 'Department of Information Technology', '', 1, '2023-01-05 13:46:35', NULL),
(4, 'Department of Psychology', '', 1, '2023-01-05 13:46:45', NULL),
(5, 'Department of Teacher Education', '', 1, '2023-01-05 13:46:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(1, 'Isagani', 'Gamboa', 'Tolentino', 3, 3, 'isagani.tolentino@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2023-01-05 13:56:44', '2023-01-05 13:57:01'),
(2, 'Honey', 'Talavera', 'Moreno', 1, 2, 'honey.moreno@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 1, '', '2023-01-05 13:58:57', '2023-01-05 14:07:06'),
(3, 'Trisha', 'Tomas', 'Mendoza', 1, 1, 'trisha.mendoza@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 1, '', '2023-01-05 14:00:49', '2023-01-05 14:07:04'),
(4, 'Bianca', 'Marie', 'Almario', 2, 5, 'bianca.almario@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 1, '', '2023-01-05 14:02:05', '2023-01-05 14:06:39'),
(5, 'Oscar', 'Manuel', 'Arceo', 2, 4, 'oscar.arceo@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2023-01-05 14:03:42', '2023-01-05 14:06:49'),
(6, 'Paulina', 'Clara', 'Lim', 4, 7, 'paulina.clara@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Female', 1, '', '2023-01-05 14:05:14', '2023-01-05 14:07:01'),
(7, 'Tristan', 'Sebastian', 'Espinoza', 5, 6, 'tristan.espinoza@cvsu.edu.ph', 'ad6a280417a0f533d8b670c61667e1a0', 'Male', 1, '', '2023-01-05 14:06:29', '2023-01-05 14:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'CvSU-Online Archiving System'),
(6, 'short_name', 'CvSU-OAS'),
(11, 'logo', 'uploads/logo-1672897085.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1672897085.png'),
(15, 'content', 'Array'),
(16, 'email', 'cvsu-oas@cvsu.edu.ph'),
(17, 'contact', ''),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Vibora 4107 General Trias, Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '01193f07bac5fbbe752ff5c7dbaa6050', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2023-01-05 16:47:33'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02'),
(3, 'Mark', NULL, 'Ignacio', 'adminMark', '01193f07bac5fbbe752ff5c7dbaa6050', NULL, NULL, 2, 1, '2023-01-05 16:46:22', NULL);

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

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
