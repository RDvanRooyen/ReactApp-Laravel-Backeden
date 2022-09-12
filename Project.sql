-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 12:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapi_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

CREATE TABLE `charts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `techonology` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `techonology`, `skill_level`, `created_at`, `updated_at`) VALUES
(1, 'React.JS', '3', NULL, '2022-09-07 09:43:47'),
(2, 'Laravel9', '5', NULL, '2022-09-07 09:44:10'),
(3, 'Balzor', '2', NULL, NULL),
(4, 'Python', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`id`, `client_img`, `client_title`, `client_description`, `created_at`, `updated_at`) VALUES
(1, 'https://image.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg', 'Test User', 'Test the description of the client review', NULL, '2022-09-07 09:52:22'),
(2, 'https://image.freepik.com/free-photo/handsome-young-man-with-new-stylish-haircut_176420-19637.jpg', 'Test2 User2', 'Test2 the description of the client review', NULL, NULL),
(3, 'https://image.freepik.com/free-photo/curly-man-with-broad-smile-shows-perfect-teeth-being-amused-by-interesting-talk-has-bushy-curly-dark-hair-stands-indoor-against-white-blank-wall_273609-17092.jpg', 'Test3 User3', 'Test3 the description of the client review', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Renier van Rooyen', 'renier@gmail.com', 'Just to test if it works.', NULL, NULL),
(2, 'Piet', 'piet@gmail.com', 'Toets of die stuff reg werk', NULL, NULL),
(3, 'Wiehahn', 'wiehahn@gmail.com', 'kjhbskljdhflksdhjfiahweoihfhkals;sd sdgdft fd dfth drthdfgh fghdrth', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_lecture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_all` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `short_title`, `short_description`, `small_img`, `long_title`, `long_description`, `total_duration`, `total_lecture`, `total_student`, `skill_all`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Test title 1', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'https://image.freepik.com/free-photo/learner-lesson_1098-14155.jpg', 'Test long title 1', 'Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content.', '100', '30', '1000', 'Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', NULL, '2022-09-07 09:45:35'),
(2, 'Test title 2', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'https://image.freepik.com/free-photo/learner-lesson_1098-14155.jpg', 'Test long title 2', 'Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content.', '25', '10', '1200', 'Metus interdum metus\r\nLigula cur maecenas\r\nMetus interdum metus\r\nLigula cur maecenass\r\nMetus interdum metus', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', NULL, NULL),
(3, 'Test title 3', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'https://image.freepik.com/free-photo/learner-lesson_1098-14155.jpg', 'Test long title 3', 'Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content.', '25', '10', '1200', 'Metus interdum metus\r\nLigula cur maecenas\r\nMetus interdum metus\r\nLigula cur maecenass\r\nMetus interdum metus', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', NULL, NULL),
(4, 'Test title 4', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'https://image.freepik.com/free-photo/learner-lesson_1098-14155.jpg', 'Test long title 4', 'Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content. Some quick example text to build on the card title and make up the bulk of the card\'s content.', '25', '10', '1200', 'Metus interdum metus\r\nLigula cur maecenas\r\nMetus interdum metus\r\nLigula cur maecenass\r\nMetus interdum metus', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_credit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `address`, `email`, `phone`, `facebook`, `youtube`, `twitter`, `footer_credit`, `created_at`, `updated_at`) VALUES
(1, '13 Botah st, Pretoria, 0001, South Africa', 'admintest@gmail.com', '+27 54 786 7821', 'https://www.facebook.com/', 'https://www.youtube.com/', 'https://www.twitter.com/', '© Copyright 2022 by Renier van Rooyen, All Rights Reserved', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_page_etcs`
--

CREATE TABLE `home_page_etcs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tech_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_student` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_desciption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_etcs`
--

INSERT INTO `home_page_etcs` (`id`, `home_title`, `home_subtitle`, `tech_description`, `total_student`, `total_course`, `total_review`, `video_desciption`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Renier van Rooyen', 'For fully functional Progressive Web Applications', '<p>Hi! I\'m <font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Renier van Rooyen</font>. I\'m a developer with a serious love for code, I am the founder of TheOneDevGuy and a passionate Frontend and Backend Developer.</p><p>I am working as a freelance developer for the last couple of years and have created several successful apps runing on local servers. I strive to create programs that look professional and is user friendly, I believe in planing and structuring a project in a way that is easy to upgrade and a breeze to use, as well designed app should exists to help your business thrive and succeed in an evergrowing and compettitive environment.</p><p>Each program is unique and should be treated as such, a program should be hand-tailored to serve a specific purpose and should do so in a easy to use and understand fashion. If you agree you’ve come to the right place.</p>', '500', '15', '22', 'Each program is unique and should be treated as such, a program should be hand-tailored to serve a specific purpose and should do so in a easy to use and understand fashion. If you agree you’ve come to the right place.', 'https://media.w3.org/2010/05/sintel/trailer_hd.mp4', NULL, '2022-09-07 09:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `about`, `refund`, `terms`, `privacy`, `created_at`, `updated_at`) VALUES
(1, '<b><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">This is just a basic about me section where you will come to learn more about me.</font></u></b>', 'fgvdsfhbdfgb', 'dfgbxcvbfdgb', 'dfgnfdgghujk,hjdfh', NULL, '2022-09-07 09:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_05_21_183639_create_sessions_table', 1),
(7, '2021_05_21_185441_create_services_table', 1),
(8, '2021_05_21_190049_create_client_reviews_table', 1),
(9, '2021_05_21_191857_create_projects_table', 1),
(10, '2021_05_21_192323_create_contacts_table', 1),
(11, '2021_05_21_193443_create_footers_table', 1),
(12, '2021_05_21_193903_create_home_page_etcs_table', 1),
(13, '2021_05_21_194357_create_charts_table', 1),
(14, '2021_05_21_195441_create_information_table', 1),
(15, '2021_05_21_195919_create_courses_table', 1),
(16, '2022_09_02_105216_create_work_as_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_features` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_preview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `img_one`, `img_two`, `project_name`, `project_description`, `project_features`, `live_preview`, `created_at`, `updated_at`) VALUES
(1, 'https://image.freepik.com/free-vector/online-courses-tutorials_52683-37860.jpg', 'http://localhost:3000/static/media/pdetails.8992071ab6e4473fb218.png', 'Project Name 1', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'Requirment Gathering\r\n\r\nMetus interdum metus\r\n\r\nLigula cur maecenas Ligula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenasLigula\r\n\r\nLigula cur maecenasLigula cur maecenasLigula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenas', 'http://localhost:3000/projectdetails#', NULL, '2022-09-07 09:40:48'),
(2, 'https://image.freepik.com/free-vector/online-courses-tutorials_52683-37860.jpg', 'http://localhost:3000/static/media/pdetails.8992071ab6e4473fb218.png', 'Project Name 2', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'Requirment Gathering\r\n\r\nMetus interdum metus\r\n\r\nLigula cur maecenas Ligula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenasLigula\r\n\r\nLigula cur maecenasLigula cur maecenasLigula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenas', 'http://localhost:3000/projectdetails#', NULL, NULL),
(3, 'https://image.freepik.com/free-vector/online-courses-tutorials_52683-37860.jpg', 'http://localhost:3000/static/media/pdetails.8992071ab6e4473fb218.png', 'Project Name 3', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'Requirment Gathering\r\n\r\nMetus interdum metus\r\n\r\nLigula cur maecenas Ligula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenasLigula\r\n\r\nLigula cur maecenasLigula cur maecenasLigula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenas', 'http://localhost:3000/projectdetails#', NULL, NULL),
(4, 'https://image.freepik.com/free-vector/online-courses-tutorials_52683-37860.jpg', 'http://localhost:3000/static/media/pdetails.8992071ab6e4473fb218.png', 'Project Name 4', 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', 'Requirment Gathering\r\n\r\nMetus interdum metus\r\n\r\nLigula cur maecenas Ligula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenasLigula\r\n\r\nLigula cur maecenasLigula cur maecenasLigula cur maecenas\r\n\r\nLigula cur maecenasLigula cur maecenas', 'http://localhost:3000/projectdetails#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_discription`, `service_logo`, `created_at`, `updated_at`) VALUES
(1, 'Service Name1', 'Service description to describe this service', 'http://127.0.0.1:8000/upload/service/1742688074587324.png', NULL, '2022-09-07 09:42:50'),
(2, 'Web Design', 'Qualified web design and attractive effects which catches visitor’s Eye.', 'http://127.0.0.1:8000/upload/service/1742688086004024.png', NULL, '2022-08-31 12:41:09'),
(3, 'Web Development', 'Clean and fresh issue free code to make your website dynamic perfectly.', 'http://127.0.0.1:8000/upload/service/1742688096459715.png', NULL, '2022-08-31 12:41:19'),
(4, 'Ecommerce Development', 'I will design and develop ecommerce online store website. Clean and fresh issue free code to make your website dynamic perfectly.', 'http://127.0.0.1:8000/upload/service/1742688113634420.png', NULL, '2022-08-31 12:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Oyy9rWdk5quJixSZImlGNZ35R4p104hH1hunboNP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoib2RhNnIxTFgzMVdiWFVDUXlacGxYOHhhQTh0cnhNSzhvdE9EREJKSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXZpZXcvYWxsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHRja3R6WXRKZkloMUtpNXVyNDdCSS5OMlJoZ3ZlYUEwQ25tV0c5cVp2dXRhVXZNRS9PeXhtIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR0Y2t0ell0SmZJaDFLaTV1cjQ3QkkuTjJSaGd2ZWFBMENubVdHOXFadnV0YVV2TUUvT3l4bSI7fQ==', 1662551543);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$tcktzYtJfIh1Ki5ur47BI.N2RhgveaA0CnmWG9qZvutaUvME/Oyxm', NULL, NULL, NULL, NULL, NULL, '2022-08-31 12:49:55', '2022-08-31 12:49:55');

-- --------------------------------------------------------

--
-- Table structure for table `work_as`
--

CREATE TABLE `work_as` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `workas_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_as`
--

INSERT INTO `work_as` (`id`, `workas_title`, `created_at`, `updated_at`) VALUES
(1, 'a Web Developer.', NULL, NULL),
(2, 'a Back-End Developer.', NULL, NULL),
(3, 'a Front-End Developer.', NULL, NULL),
(4, 'a Full-Stack Developer.', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charts`
--
ALTER TABLE `charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_etcs`
--
ALTER TABLE `home_page_etcs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_as`
--
ALTER TABLE `work_as`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `charts`
--
ALTER TABLE `charts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_etcs`
--
ALTER TABLE `home_page_etcs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_as`
--
ALTER TABLE `work_as`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
