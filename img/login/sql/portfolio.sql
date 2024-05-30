-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 10:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `image`, `link`) VALUES
(1, 'ABCD', 'I am an enthusiastic, self-motivated, reliable, responsible and hards.', 'uploads/tirthomain3.png', 'https://drive.google.com/file/d/1zNdzRMGDInXF5obzwDygn9q_B2yaqdEY/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `about_me_content`
--

CREATE TABLE `about_me_content` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_me_content`
--

INSERT INTO `about_me_content` (`id`, `image_path`, `about_content`) VALUES
(1, 'im1.jpg', 'Hello, I\'m Tirtho Mondal. I hail from the enchanting land of Bangladesh, where the warmth of its people mirrors the beauty of its landscapes. Born on May 6, 2001, I am blessed to be the son of Arindam Mondal and Nilima Mondal, whose unwavering support has shaped my journey.\r\n\r\nAs a proud Bangladeshi, my roots run deep within the rich tapestry of our culture and traditions. Currently, I am pursuing my academic aspirations at Khulna University of Engineering & Technology, where I am enrolled in the B.Sc. program in Computer Science and Engineering. It\'s a path filled with endless possibilities, where I am constantly exploring the realms of technology and innovation.\r\n\r\nYou can find me nestled in Room-507, Khanjahan Ali Hall, KUET, Khulna, where I immerse myself in the pursuit of knowledge and academic excellence. However, my heart remains anchored in Goalbathan, Magurkhali-9282, Paikgachha, Khulna, my beloved hometown where memories of simpler times linger.\r\n\r\nWith an unwavering commitment to personal growth and academic success, I am driven by a desire to make meaningful contributions to the world of technology. Though my journey is still unfolding, I embrace each day with enthusiasm and a sense of purpose.\r\n\r\nThank you for taking the time to get to know me. I look forward to the adventures that await, and the opportunities to connect and learn along the way.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `iframe` varchar(2550) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `number`, `email`, `iframe`) VALUES
(1, '+8801571dfdf', 'tirthomondal.2001@gmail.comdjnjend', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3680.859599997147!2d89.3408116748149!3d22.6962699284273!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff7ff383e53303%3A0x4d9428cfcfc7f7ab!2sTIRTHO%20MONDAL!5e0!3m2!1sen!2sbd!4v1709449573635!5m2!1sen!2sbd\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `date_range` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `date_range`, `institution`, `degree`, `details`) VALUES
(6, '2013-2018', 'Kapilmuni Shachari Vidyamandir', 'Secondary School Certificate (S.S.C)', 'Group- Science \r\nGPA-5.00(scale of 5.00)'),
(7, 'dkidio', 'sdnsdn', '987e89ef', 'edfe');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `date_range` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `date_range`, `position`, `description`) VALUES
(3, '2018 - 2022', 'Software Enginieer ', 'Designing, coding, testing, and deploying software applications for various platforms such as web, mobile, and desktop.'),
(5, 'User Interface (UI) and User Experience (UX) Design', 'Soft', 'Designing intuitive and user-friendly interfaces to enhance the overall user experience of software applications.');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(2, 'a', 'tirthomondal.2001@gmail.com', '2', 'aswerthyujytre', '2024-03-02 17:29:45'),
(3, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:27:46'),
(4, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:31:33'),
(5, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:43:39'),
(6, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:50:40'),
(7, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:51:40'),
(9, 'Tirtho  Mondal', 'tirthomondal.2001@gmail.com', 'how are you', 'duinhfuid dufhyudbf dsifiued fuhd fdfhdjnfiudhfjd fusf jdf nudnf \r\n', '2024-03-03 08:52:17'),
(11, 'KUET', 'tirthomondal.2001@gmail.com', 'dfkldfnffd ', 'CSE', '2024-03-03 09:42:09'),
(12, 'KUET', 'tirthomondal.2001@gmail.com', 'dfkldfnffd ', 'CSE', '2024-03-03 09:43:06'),
(13, 'KUET', 'tirthomondal.2001@gmail.com', 'dfkldfnffd ', 'CSE', '2024-03-03 09:43:44'),
(14, 'Tom', 'tm.2001@gamil.com', 'fqof jfw ', 'f df dsfj sof suifr eskr ef \r\n', '2024-05-30 08:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `port_boxes`
--

CREATE TABLE `port_boxes` (
  `id` int(11) NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `github_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `img_src`, `title`, `sub_title`, `desc`, `github_link`) VALUES
(2, 'uploads/65e44539e2ace.png', 'CSE-Family', 'Kuet CSE department', 'Hotel Zaman is one of the famous hotels in Chittagong. We created their website with a clean and smooth design, meeting the client\'s expectations.', 'https://github.com/Tirtho-Mondal/CSE-Family/tree/master'),
(4, 'uploads/65e430973f58f.jpg', 'Laundry shop Management', 'Laundry Shop', 'Laundry shop management system is a comprehensive solution for organizing and optimizing operations in a laundry business, including customer management, order tracking, inventory control, and billing', 'https://github.com/Tirtho-Mondal/Laundry-Shop'),
(5, 'uploads/65e4319f19450.png', 'House Service', 'It is the Software project ', 'House service management software facilitates the hiring and booking of house workers or daily laborers for various tasks, ensuring efficient and reliable household assistance.', 'https://github.com/Tirtho-Mondal/House-Service'),
(6, 'uploads/66583f86f1a46.jpg', 'Laundy Shop management', 'djsbf a ', 'dkjf', ' abnjkmlf,as');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `image`, `date`, `description`) VALUES
(13, 'C', 'uploads/c.png', '2021-12-27', 'C is a versatile and efficient programming language used for system software and application development.'),
(14, 'C++', 'uploads/c++.png', '2023-03-01', 'C++ proficiency entails mastery of object-oriented programming principles, versatile software development, and high-performance application creation.'),
(15, 'Java', 'uploads/java.png', '2023-07-05', 'Java proficiency entails mastery in developing scalable and platform-independent software applications using object-oriented principles and robust libraries.'),
(16, 'JavaScript', 'uploads/js.png', '2024-03-18', 'JavaScript is a versatile programming language primarily used for enhancing web interactivity and building dynamic, responsive web applications'),
(17, 'Html', 'uploads/html.png', '2024-01-24', 'HTML (Hypertext Markup Language) is the standard language used to create and design documents on the World Wide Web, defining the structure and content of web pages through a system of tags and attributes.'),
(18, 'PHP', 'uploads/location2.png', '2024-02-29', '\r\nPHP is a server-side scripting language commonly used for web development to create dynamic web pages and interact with databases.');

-- --------------------------------------------------------

--
-- Table structure for table `social_media_profiles`
--

CREATE TABLE `social_media_profiles` (
  `id` int(11) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_media_profiles`
--

INSERT INTO `social_media_profiles` (`id`, `platform`, `img`, `alt`, `link`) VALUES
(1, 'Facebook', 'uploads/facebook.jpeg', 'Facebook', 'https://www.facebook.com/tirtho117?mibextid=ZbWKwL '),
(2, 'Twitter', 'uploads/twitter.jpg', 'Twitter', 'https://twitter.com/Tirtho2001'),
(3, 'YouTube', 'uploads/youtube.jpeg', 'My YouTube Profile', 'https://youtube.com/profile'),
(6, 'LinkedIn', 'uploads/link.png', 'LinkedIn', 'https://www.linkedin.com/in/tirtho-mondal-1187b82b1/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Username` mediumtext NOT NULL,
  `Age` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Email`, `Username`, `Age`, `Password`) VALUES
(1, 'tirtho', 'mondal', '22', '117');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_me_content`
--
ALTER TABLE `about_me_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `port_boxes`
--
ALTER TABLE `port_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_profiles`
--
ALTER TABLE `social_media_profiles`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `about_me_content`
--
ALTER TABLE `about_me_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `port_boxes`
--
ALTER TABLE `port_boxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `social_media_profiles`
--
ALTER TABLE `social_media_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
