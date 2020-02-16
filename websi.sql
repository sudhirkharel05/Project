-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 12:57 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add demo', 7, 'add_demo'),
(26, 'Can change demo', 7, 'change_demo'),
(27, 'Can delete demo', 7, 'delete_demo'),
(28, 'Can view demo', 7, 'view_demo'),
(29, 'Can add flights', 8, 'add_flights'),
(30, 'Can change flights', 8, 'change_flights'),
(31, 'Can delete flights', 8, 'delete_flights'),
(32, 'Can view flights', 8, 'view_flights'),
(33, 'Can add flights_details', 9, 'add_flights_details'),
(34, 'Can change flights_details', 9, 'change_flights_details'),
(35, 'Can delete flights_details', 9, 'delete_flights_details'),
(36, 'Can view flights_details', 9, 'view_flights_details'),
(37, 'Can add passanger', 10, 'add_passanger'),
(38, 'Can change passanger', 10, 'change_passanger'),
(39, 'Can delete passanger', 10, 'delete_passanger'),
(40, 'Can view passanger', 10, 'view_passanger'),
(41, 'Can add booking', 11, 'add_booking'),
(42, 'Can change booking', 11, 'change_booking'),
(43, 'Can delete booking', 11, 'delete_booking'),
(44, 'Can view booking', 11, 'view_booking');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$glkr2OZ6HBmc$QST7ugovUm9D+KhRu+JCbCzEdCOqUt+8Rl2pVPgSoyg=', NULL, 0, 'sudhir.kharel.52', 'sudhir', 'kharel', 'sudhir.kharel.52@gmail.com', 0, 1, '2020-01-22 11:46:03.709620'),
(2, 'pbkdf2_sha256$180000$U7gh8WUFWPNR$8d+5hMUmZnvx1lFNUisRyZO1Z/11lVHWgxoqhWkmdoo=', '2020-02-16 06:16:05.174734', 1, 'sudhir', '', '', '', 1, 1, '2020-01-27 04:13:28.340827'),
(3, 'pbkdf2_sha256$180000$ofgupGQdQSRz$1ROecl2Ipu9xaptlSpQJbKcD7UV8hTiBJOQgn3DveOQ=', NULL, 0, 'sdfsdfd', 'asda', 'sdfsd', 'asds@aksfds', 0, 1, '2020-01-27 04:48:16.379430'),
(4, 'pbkdf2_sha256$180000$T0tip9IDgoaK$lFk9czZhCAH0PifPJ0TSniTYqnBXqqUx/BFOZm9DcqA=', '2020-01-30 07:47:25.898210', 0, 'sudhirkharel123', 'sudhir', 'kharel', 'skharel@hamam', 0, 1, '2020-01-28 10:32:41.507001'),
(5, 'pbkdf2_sha256$180000$S1JRsLgMmKlJ$TjBIYnLO11hDWD4b0uYeXKq2gKoOhhyxC02QVCtD8Aw=', NULL, 0, 'asdf', 'ashray', 'pandey', 'ashray@g.com', 0, 1, '2020-02-10 01:55:21.664902'),
(6, 'pbkdf2_sha256$180000$JTEscFz7CYWM$qDDl7LfzILkyYfJ7gj0J5aL6pj9WcDa6i8OhXeYDkB4=', '2020-02-12 08:10:55.819678', 0, 'gaurav', 'gaurav', 'asdsa', 'kharebi@mnstate.edu', 0, 1, '2020-02-11 08:34:00.666641'),
(7, 'pbkdf2_sha256$180000$eFkUUSl6EiH9$us+IZ17FxiPerJyeV1Jivz0Fsel4nH9b6x4EjDyPcdg=', '2020-02-16 11:19:02.702918', 1, 'admin', '', '', 'sudhir.kharel.52@gmail.com', 1, 1, '2020-02-16 11:18:36.565069');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_booking`
--

CREATE TABLE `bookings_booking` (
  `ticket_id` int(11) NOT NULL,
  `seat_number` varchar(3) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `flight_id_id` int(11) NOT NULL,
  `passanger_id_id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings_booking`
--

INSERT INTO `bookings_booking` (`ticket_id`, `seat_number`, `amount`, `status`, `flight_id_id`, `passanger_id_id`, `date`, `user_id`) VALUES
(2, '4B', 60000, 'CONFIRMED', 3, 6, '2020-02-08 21:22:35.000000', 2),
(3, '1B', 25000, '', 4, 7, '2020-02-09 12:03:22.475010', 2),
(4, '1B', 10000, '', 8, 8, '2020-02-09 23:38:08.891977', 1),
(5, '1F', 8000, '', 6, 9, '2020-02-10 00:10:14.641829', 1),
(6, '4F', 60000, '', 3, 28, '2020-02-11 17:34:39.092333', 2),
(7, '3B', 8000, '', 6, 30, '2020-02-11 22:33:26.425500', 6),
(8, '2B', 8000, '', 6, 31, '2020-02-12 08:25:27.964144', 6),
(9, '1E', 8000, '', 6, 32, '2020-02-12 09:36:40.990876', 2),
(10, '2E', 8000, 'CONFIRMED', 6, 33, '2020-02-14 18:16:57.230929', 2),
(11, '2E', 60000, 'CONFIRMED', 3, 34, '2020-02-16 11:13:28.166493', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookings_flights_details`
--

CREATE TABLE `bookings_flights_details` (
  `flight_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `aircraft_model` varchar(20) NOT NULL,
  `departure` time(6) NOT NULL,
  `arrivals` time(6) NOT NULL,
  `date` date NOT NULL,
  `seats` int(11) NOT NULL,
  `duration` time(6) NOT NULL,
  `source` varchar(200) NOT NULL,
  `fare` int(11) NOT NULL,
  `destination` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings_flights_details`
--

INSERT INTO `bookings_flights_details` (`flight_id`, `name`, `aircraft_model`, `departure`, `arrivals`, `date`, `seats`, `duration`, `source`, `fare`, `destination`) VALUES
(3, 'British Airways', 'Airbus', '03:00:00.000000', '02:15:00.000000', '2020-02-23', 150, '12:50:00.000000', 'Kathmandu', 60000, 'London'),
(4, 'Singapore Airlines', 'Boeing', '03:00:00.000000', '02:15:00.000000', '2020-02-20', 150, '12:50:00.000000', 'Kathmandu', 25000, 'Mumbai'),
(5, 'Buddha AIr', 'Boeing', '07:00:00.000000', '05:45:00.000000', '2020-02-11', 10, '00:30:00.000000', 'Biratnagar', 4000, 'Kathmandu'),
(6, 'Southern AIr', 'Airbus', '10:30:00.000000', '09:45:00.000000', '2020-02-13', 60, '02:00:00.000000', 'Bhadrapur', 8000, 'Kolkotta'),
(8, 'Simrik Air', 'Boeing', '03:00:00.000000', '02:15:00.000000', '2020-02-19', 15, '00:30:00.000000', 'Pokhara', 10000, 'Mugu');

-- --------------------------------------------------------

--
-- Table structure for table `bookings_passanger`
--

CREATE TABLE `bookings_passanger` (
  `passanger_id` int(11) NOT NULL,
  `passanger_name` varchar(250) NOT NULL,
  `passport_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings_passanger`
--

INSERT INTO `bookings_passanger` (`passanger_id`, `passanger_name`, `passport_number`) VALUES
(1, 'Sudhir', 6454656),
(2, 'ashray', 56554),
(3, 'ashray', 6546656),
(4, 'ashray', 5616151),
(5, 'ashray', 5616151),
(6, 'Sudhir', 2321312),
(7, 'gaurav', 123123),
(8, 'ram', 45345),
(9, 'aditya', 54645),
(10, 'asdasd', 5154),
(11, 'asdasd', 5154),
(12, 'asdasd', 5154),
(13, 'Sudhir', 456456456),
(14, 'Sudhir', 7777),
(15, 'asdas', 5456444),
(16, 'asdasd', 415415),
(17, 'jhghghg', 156465),
(18, 'fcgfd', 5654654),
(19, 'ashray', 1651651),
(20, 'cffd', 5651651),
(21, 'sdfsdf', 1233213),
(22, 'hgvhf', 13212316),
(23, 'sdsad', 154132),
(24, 'ram', 656561),
(25, 'amrit', 65151),
(26, 'gaurav', 5154515),
(27, 'aditya', 123456),
(28, 'Sudhir', 123456),
(29, 'hhhhh', 123456),
(30, 'suhdir', 514654),
(31, 'ganesh', 6546),
(32, 'sabin', 654654),
(33, 'nimesh', 898941),
(34, 'Sudhir', 4656125),
(35, 'gaurav', 4565465);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-27 04:34:43.021766', '1', 'demo object (1)', 1, '[{\"added\": {}}]', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'bookings', 'booking'),
(7, 'bookings', 'demo'),
(8, 'bookings', 'flights'),
(9, 'bookings', 'flights_details'),
(10, 'bookings', 'passanger'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-22 06:35:24.672208'),
(2, 'auth', '0001_initial', '2020-01-22 06:35:24.830093'),
(3, 'admin', '0001_initial', '2020-01-22 06:35:25.264012'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-22 06:35:25.389676'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-22 06:35:25.399682'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-22 06:35:25.473452'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-22 06:35:25.487414'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-22 06:35:25.506364'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-22 06:35:25.524315'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-22 06:35:25.595156'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-22 06:35:25.598143'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-22 06:35:25.606097'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-22 06:35:25.635020'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-22 06:35:25.653990'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-22 06:35:25.674913'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-22 06:35:25.686880'),
(17, 'sessions', '0001_initial', '2020-01-22 06:35:25.714842'),
(18, 'bookings', '0001_initial', '2020-01-27 04:11:37.771601'),
(19, 'bookings', '0002_auto_20200129_0950', '2020-01-29 04:11:17.749680'),
(20, 'bookings', '0003_auto_20200129_1008', '2020-01-29 04:23:20.911768'),
(21, 'bookings', '0004_booking_passanger', '2020-02-08 13:25:42.322942'),
(22, 'bookings', '0005_booking_date', '2020-02-08 13:41:12.615444'),
(23, 'bookings', '0006_auto_20200211_1223', '2020-02-11 06:38:21.720682'),
(24, 'bookings', '0007_auto_20200214_1804', '2020-02-14 12:19:34.332756');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `bookings_booking_flight_id_id_e98a614c_fk_bookings_` (`flight_id_id`),
  ADD KEY `bookings_booking_passanger_id_id_17806d42_fk_bookings_` (`passanger_id_id`),
  ADD KEY `bookings_booking_user_id_834dfc23_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `bookings_flights_details`
--
ALTER TABLE `bookings_flights_details`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `bookings_passanger`
--
ALTER TABLE `bookings_passanger`
  ADD PRIMARY KEY (`passanger_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bookings_flights_details`
--
ALTER TABLE `bookings_flights_details`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bookings_passanger`
--
ALTER TABLE `bookings_passanger`
  MODIFY `passanger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
-- Constraints for table `bookings_booking`
--
ALTER TABLE `bookings_booking`
  ADD CONSTRAINT `bookings_booking_flight_id_id_e98a614c_fk_bookings_` FOREIGN KEY (`flight_id_id`) REFERENCES `bookings_flights_details` (`flight_id`),
  ADD CONSTRAINT `bookings_booking_passanger_id_id_17806d42_fk_bookings_` FOREIGN KEY (`passanger_id_id`) REFERENCES `bookings_passanger` (`passanger_id`),
  ADD CONSTRAINT `bookings_booking_user_id_834dfc23_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
