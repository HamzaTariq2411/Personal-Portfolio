-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 04:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add contact_me', 8, 'add_contact_me'),
(30, 'Can change contact_me', 8, 'change_contact_me'),
(31, 'Can delete contact_me', 8, 'delete_contact_me'),
(32, 'Can view contact_me', 8, 'view_contact_me'),
(33, 'Can add home', 9, 'add_home'),
(34, 'Can change home', 9, 'change_home'),
(35, 'Can delete home', 9, 'delete_home'),
(36, 'Can view home', 9, 'view_home'),
(37, 'Can add portfolio', 10, 'add_portfolio'),
(38, 'Can change portfolio', 10, 'change_portfolio'),
(39, 'Can delete portfolio', 10, 'delete_portfolio'),
(40, 'Can view portfolio', 10, 'view_portfolio'),
(41, 'Can add services', 11, 'add_services'),
(42, 'Can change services', 11, 'change_services'),
(43, 'Can delete services', 11, 'delete_services'),
(44, 'Can view services', 11, 'view_services'),
(45, 'Can add skills', 12, 'add_skills'),
(46, 'Can change skills', 12, 'change_skills'),
(47, 'Can delete skills', 12, 'delete_skills'),
(48, 'Can view skills', 12, 'view_skills'),
(49, 'Can add social_links', 13, 'add_social_links'),
(50, 'Can change social_links', 13, 'change_social_links'),
(51, 'Can delete social_links', 13, 'delete_social_links'),
(52, 'Can view social_links', 13, 'view_social_links');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$bsd9T35vbdcZvNO9mK2aeb$gyw3/aDPnOERDtfawuR9dLz6exPVPwdAlVJzhUEt5GU=', '2023-08-29 14:40:50.759341', 1, 'hamza', '', '', 'hamza@gmail.com', 1, 1, '2023-08-29 14:40:42.080803');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-08-29 14:42:18.647041', '1', 'Hamza Tariq', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-08-29 14:43:11.312991', '1', 'Full-Stack Web Development', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-08-29 14:43:41.599837', '2', 'Custom Web Application Development', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-08-29 14:44:06.926052', '3', 'Front-End Development', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-08-29 14:44:30.900928', '4', 'Database Management and Optimization', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-08-29 14:47:33.958632', '1', 'Hamza Tariq', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-08-29 14:52:41.451377', '4', 'Database Management and Optimization', 2, '[{\"changed\": {\"fields\": [\"Service icon\"]}}]', 11, 1),
(8, '2023-08-29 14:52:53.248645', '1', 'Mysql', 1, '[{\"added\": {}}]', 12, 1),
(9, '2023-08-29 14:53:01.953693', '2', 'CSS3', 1, '[{\"added\": {}}]', 12, 1),
(10, '2023-08-29 14:53:07.782995', '3', 'HTML5', 1, '[{\"added\": {}}]', 12, 1),
(11, '2023-08-29 14:53:16.112799', '4', 'JavaScript', 1, '[{\"added\": {}}]', 12, 1),
(12, '2023-08-29 14:53:22.879787', '5', 'Pyhton', 1, '[{\"added\": {}}]', 12, 1),
(13, '2023-08-29 14:53:32.002018', '6', 'Django', 1, '[{\"added\": {}}]', 12, 1),
(14, '2023-08-29 14:54:03.324073', '1', 'htariq1403@gmail.com', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-08-29 14:54:23.299864', '1', 'Office Employee System', 1, '[{\"added\": {}}]', 10, 1),
(16, '2023-08-29 14:54:36.566590', '2', 'Count Down', 1, '[{\"added\": {}}]', 10, 1),
(17, '2023-08-29 14:54:50.288602', '3', 'Pop-Up  Model', 1, '[{\"added\": {}}]', 10, 1),
(18, '2023-08-29 14:55:15.130902', '1', 'Links', 1, '[{\"added\": {}}]', 13, 1),
(19, '2023-08-29 14:56:28.273097', '2', 'Custom Web Application Development', 2, '[{\"changed\": {\"fields\": [\"Service icon\"]}}]', 11, 1),
(20, '2023-08-29 14:56:56.910819', '1', 'Full-Stack Web Development', 2, '[{\"changed\": {\"fields\": [\"Service icon\"]}}]', 11, 1),
(21, '2023-08-29 14:57:27.445373', '3', 'Front-End Development', 2, '[{\"changed\": {\"fields\": [\"Service icon\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'portfolio', 'about'),
(8, 'portfolio', 'contact_me'),
(9, 'portfolio', 'home'),
(10, 'portfolio', 'portfolio'),
(11, 'portfolio', 'services'),
(12, 'portfolio', 'skills'),
(13, 'portfolio', 'social_links'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-29 14:39:34.540897'),
(2, 'auth', '0001_initial', '2023-08-29 14:39:36.070429'),
(3, 'admin', '0001_initial', '2023-08-29 14:39:36.402758'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-29 14:39:36.418725'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-29 14:39:36.435733'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-29 14:39:36.716527'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-29 14:39:36.891544'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-08-29 14:39:36.930778'),
(9, 'auth', '0004_alter_user_username_opts', '2023-08-29 14:39:36.945773'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-08-29 14:39:37.072774'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-08-29 14:39:37.081773'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-29 14:39:37.101778'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-08-29 14:39:37.141775'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-29 14:39:37.228773'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-08-29 14:39:37.267776'),
(16, 'auth', '0011_update_proxy_permissions', '2023-08-29 14:39:37.293775'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-29 14:39:37.345775'),
(18, 'portfolio', '0001_initial', '2023-08-29 14:39:37.603301'),
(19, 'sessions', '0001_initial', '2023-08-29 14:39:37.722298');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('oisqqtn7ijcid2h5g9w2al3nwh85xq3s', '.eJxVjDsOwyAQBe9CHSGMFwMp0_sMaGHZ4CQCyZ8qyt1jSy6Sdmbee4uA21rCtuQ5TCSuohOXXxYxPXM9BD2w3ptMra7zFOWRyNMucmyUX7ez_TsouJR97cBDJFYASUfdaVZEVjNQpN6B3YUHRLTsDbjMOu2YzaB6MoNnZvH5AuhWOEU:1qazti:DADyMbHmxm7P9CCinayCQPftgwDiCrdqK9qZFVqqxWg', '2023-09-12 14:40:50.766811');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_about`
--

CREATE TABLE `portfolio_about` (
  `id` bigint(20) NOT NULL,
  `about_image` varchar(100) DEFAULT NULL,
  `about_name` varchar(100) NOT NULL,
  `about_role` varchar(150) NOT NULL,
  `about_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_about`
--

INSERT INTO `portfolio_about` (`id`, `about_image`, `about_name`, `about_role`, `about_description`) VALUES
(1, 'about/IMG_7953.jpg', 'Hamza Tariq', 'Web Developer', '<p>I am a seasoned full-stack developer with a wealth of experience in a diverse range of programming languages and technologies. Proficient in HTML, CSS, JavaScript, Bootstrap, Python, Django, and MySQL, I bring a comprehensive skill set to the table. My journey in web development has been marked by a strong commitment to delivering top-notch solutions that seamlessly fuse design aesthetics with robust functionality. Throughout my career, I have cultivated an impressive portfolio of projects that showcase my expertise in these languages, each project a testament to my dedication to quality and innovation. As I continue to evolve in this dynamic field, I remain passionate about leveraging my technical prowess to craft exceptional digital experiences.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_contact_me`
--

CREATE TABLE `portfolio_contact_me` (
  `id` bigint(20) NOT NULL,
  `number` varchar(20) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_contact_me`
--

INSERT INTO `portfolio_contact_me` (`id`, `number`, `mail`, `address`) VALUES
(1, '03244030480', 'htariq1403@gmail.com', 'Shalimar Town Lahore');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_home`
--

CREATE TABLE `portfolio_home` (
  `id` bigint(20) NOT NULL,
  `Full_name` varchar(100) NOT NULL,
  `role` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_home`
--

INSERT INTO `portfolio_home` (`id`, `Full_name`, `role`, `image`, `description`) VALUES
(1, 'Hamza Tariq', 'Front-End Developer & Full Stack Developer', 'home/home-bg.jpg', '<p>I\'m a Full-Stack Developer with experience in HTML5, CSS3, Bootstrap, JavaScript, Python, Mysql and Django framework</p>');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_portfolio`
--

CREATE TABLE `portfolio_portfolio` (
  `id` bigint(20) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_link` varchar(300) NOT NULL,
  `project_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_portfolio`
--

INSERT INTO `portfolio_portfolio` (`id`, `project_name`, `project_link`, `project_image`) VALUES
(1, 'Office Employee System', 'https://github.com/HamzaTariq2411/Employee_Management_System', 'project_pics/Screenshot_2023-08-23_214558.png'),
(2, 'Count Down', 'https://github.com/HamzaTariq2411/Count_Down', 'project_pics/Screenshot_2023-08-20_143911.png'),
(3, 'Pop-Up  Model', 'https://github.com/HamzaTariq2411/Login-Signup-Popup-Model', 'project_pics/Screenshot_2023-08-20_143300.png');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_services`
--

CREATE TABLE `portfolio_services` (
  `id` bigint(20) NOT NULL,
  `service_icon` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `service_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_services`
--

INSERT INTO `portfolio_services` (`id`, `service_icon`, `service_name`, `service_description`) VALUES
(1, 'fa-regular fa-handshake', 'Full-Stack Web Development', '<p>Offering end-to-end web development solutions using HTML, CSS, JavaScript, Bootstrap, Python, Django, and MySQL. From responsive front-end design to back-end server management, I create seamless and user-friendly web applications.</p>'),
(2, 'fa-solid fa-eye', 'Custom Web Application Development', '<p>Tailoring web applications to meet specific business needs. I use Python and Django to build robust and scalable solutions, ensuring that your web application performs flawlessly while maintaining security and flexibility.</p>'),
(3, 'fa-solid fa-users', 'Front-End Development', '<p>Crafting visually stunning and interactive user interfaces with HTML, CSS, and JavaScript. I pay meticulous attention to design aesthetics, ensuring an exceptional user experience and a strong brand presence.</p>'),
(4, 'fa-solid fa-database', 'Database Management and Optimization', '<p>Proficient in MySQL, I provide database design, maintenance, and optimization services. I ensure that your data is efficiently organized, secure, and accessible to support your application\'s performance and growth.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_skills`
--

CREATE TABLE `portfolio_skills` (
  `id` bigint(20) NOT NULL,
  `icon_name` varchar(100) NOT NULL,
  `skill_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_skills`
--

INSERT INTO `portfolio_skills` (`id`, `icon_name`, `skill_name`) VALUES
(1, 'fa-solid fa-database', 'Mysql'),
(2, 'fa-brands fa-css3-alt', 'CSS3'),
(3, 'fa-brands fa-html5', 'HTML5'),
(4, 'fa-brands fa-js', 'JavaScript'),
(5, 'fa-brands fa-python', 'Pyhton'),
(6, 'fa fa-link', 'Django');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_social_links`
--

CREATE TABLE `portfolio_social_links` (
  `id` bigint(20) NOT NULL,
  `Linkin_link` varchar(400) NOT NULL,
  `Github_link` varchar(400) NOT NULL,
  `Instagram_link` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio_social_links`
--

INSERT INTO `portfolio_social_links` (`id`, `Linkin_link`, `Github_link`, `Instagram_link`) VALUES
(1, 'https://www.linkedin.com/in/hamza-tariq-4585a9251', 'https://github.com/HamzaTariq2411', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `portfolio_about`
--
ALTER TABLE `portfolio_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_contact_me`
--
ALTER TABLE `portfolio_contact_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_home`
--
ALTER TABLE `portfolio_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_portfolio`
--
ALTER TABLE `portfolio_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_services`
--
ALTER TABLE `portfolio_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_skills`
--
ALTER TABLE `portfolio_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_social_links`
--
ALTER TABLE `portfolio_social_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `portfolio_about`
--
ALTER TABLE `portfolio_about`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_contact_me`
--
ALTER TABLE `portfolio_contact_me`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_home`
--
ALTER TABLE `portfolio_home`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio_portfolio`
--
ALTER TABLE `portfolio_portfolio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolio_services`
--
ALTER TABLE `portfolio_services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfolio_skills`
--
ALTER TABLE `portfolio_skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolio_social_links`
--
ALTER TABLE `portfolio_social_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
