-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student-management`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_29_211934_create_students_table', 1),
(6, '2024_06_29_212220_create_subjects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` enum('MALE','FEMALE') NOT NULL,
  `address` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `birthdate`, `sex`, `address`, `year`, `course`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Waylon', 'Bogan', '1992-02-05', 'MALE', '3173 Emery Parkway\nSolonchester, IA 08845', 4, 'omnis', 'w', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(2, 'Rosalia', 'Raynor', '1996-01-05', 'FEMALE', '681 Wolf Corners Suite 461\nGagechester, ME 96553-6296', 1, 'rerum', 'o', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(3, 'Ayla', 'Emard', '1990-11-14', 'MALE', '3472 Baylee Squares\nAnkundingtown, MI 31790-7961', 4, 'esse', 'a', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(4, 'Maia', 'Douglas', '2000-01-05', 'FEMALE', '10778 Labadie Fork Suite 676\nLake Leora, MI 39198', 2, 'aut', 'h', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(5, 'William', 'Koepp', '1987-08-08', 'FEMALE', '2968 Mortimer Skyway Apt. 831\nNorth Lela, TN 99097', 2, 'aut', 'c', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(6, 'Marques', 'Little', '1998-03-07', 'FEMALE', '9029 Ines Tunnel\nBalistreriton, TN 15018', 1, 'corporis', 'f', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(7, 'Beverly', 'Wunsch', '1990-08-30', 'FEMALE', '898 Marks Port Apt. 101\nCristton, WV 76029-4669', 4, 'corporis', 'q', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(8, 'Amani', 'Zboncak', '2021-10-15', 'MALE', '242 Wiegand Gardens Apt. 379\nSchroederside, SC 26483-7264', 3, 'molestiae', 'x', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(9, 'Sophia', 'Kuvalis', '1989-02-21', 'FEMALE', '5299 Cassin Ville\nLindchester, MA 79189', 1, 'iste', 'u', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(10, 'Elinor', 'Legros', '1985-12-24', 'FEMALE', '7724 Mikel Forge\nGinaview, NJ 76419-5597', 1, 'animi', 'u', '2024-06-30 07:09:15', '2024-06-30 07:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `instructor` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `grades` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`grades`)),
  `average_grade` double NOT NULL,
  `remarks` enum('PASSED','FAILED') NOT NULL,
  `date_taken` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `student_id`, `subject_code`, `name`, `description`, `instructor`, `schedule`, `grades`, `average_grade`, `remarks`, `date_taken`, `created_at`, `updated_at`) VALUES
(1, 1, 'hxe-754', 'ex corporis et', 'Illo ut voluptatum perspiciatis.', 'Bria Rohan IV', 'Monday 16:46:45', '{\"prelims\":2.93,\"midterms\":1.79,\"pre_finals\":4.04,\"finals\":1.17}', 2.4825, 'FAILED', '1981-08-20', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(2, 1, 'aro-243', 'veniam est doloremque', 'Sunt est nulla temporibus quia et velit deleniti.', 'Prof. Melody Thompson', 'Wednesday 13:36:26', '{\"prelims\":3.09,\"midterms\":4.89,\"pre_finals\":1.07,\"finals\":4.85}', 3.475, 'PASSED', '1979-01-14', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(3, 1, 'oak-406', 'quia tenetur sunt', 'Explicabo animi et eligendi optio dolores nobis enim.', 'Darion Kuvalis DDS', 'Friday 22:10:11', '{\"prelims\":4.5,\"midterms\":4.88,\"pre_finals\":1.93,\"finals\":4.18}', 3.8725, 'PASSED', '2000-08-03', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(4, 1, 'voy-266', 'officia quia ut', 'Quia cupiditate iste neque consectetur quia quia.', 'Jermey Wisoky', 'Monday 23:54:40', '{\"prelims\":1.43,\"midterms\":4.69,\"pre_finals\":1.44,\"finals\":1}', 2.14, 'FAILED', '1988-09-22', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(5, 1, 'vnf-300', 'illo hic voluptas', 'Optio non aperiam ut commodi.', 'Shad Glover', 'Monday 19:56:35', '{\"prelims\":1.92,\"midterms\":3.53,\"pre_finals\":1.84,\"finals\":4.71}', 3, 'PASSED', '2001-12-19', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(6, 2, 'vir-232', 'vitae optio qui', 'Rerum animi veniam neque beatae.', 'Ines Bednar', 'Saturday 05:43:36', '{\"prelims\":4.19,\"midterms\":1.17,\"pre_finals\":2.85,\"finals\":4.74}', 3.2375, 'PASSED', '2019-10-14', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(7, 2, 'wiw-963', 'aliquam deleniti voluptas', 'Et suscipit earum quia non sit omnis ipsam.', 'Albertha Frami V', 'Tuesday 23:58:43', '{\"prelims\":2.28,\"midterms\":2.6,\"pre_finals\":4.56,\"finals\":1.11}', 2.6375, 'FAILED', '1996-10-03', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(8, 2, 'poc-612', 'laboriosam vitae consectetur', 'Dolor unde est iusto unde sed.', 'Frankie Beier', 'Saturday 22:17:21', '{\"prelims\":1.35,\"midterms\":3.67,\"pre_finals\":4.8,\"finals\":3.64}', 3.365, 'PASSED', '2015-09-24', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(9, 2, 'wyo-344', 'odio quos dolorem', 'Id et eos numquam velit ut quisquam consequatur praesentium.', 'Connie Oberbrunner', 'Wednesday 06:49:35', '{\"prelims\":1.31,\"midterms\":3.77,\"pre_finals\":2.42,\"finals\":3.72}', 2.805, 'FAILED', '2019-04-05', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(10, 2, 'xdf-058', 'corrupti distinctio eos', 'Repellendus et in id est ut illo possimus.', 'Mr. Arden Schumm', 'Thursday 12:23:30', '{\"prelims\":2.67,\"midterms\":4.81,\"pre_finals\":4.22,\"finals\":1.13}', 3.2075, 'PASSED', '2011-09-08', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(11, 3, 'dgl-266', 'soluta exercitationem veniam', 'Aut quis earum corrupti ut amet occaecati.', 'Jairo Botsford', 'Wednesday 12:49:16', '{\"prelims\":4.55,\"midterms\":2.94,\"pre_finals\":2.68,\"finals\":4.35}', 3.63, 'PASSED', '2023-11-04', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(12, 3, 'yaj-126', 'dolorem sunt minima', 'In nam iusto qui et qui asperiores.', 'Mr. Furman Parker', 'Sunday 12:40:05', '{\"prelims\":2.77,\"midterms\":1.68,\"pre_finals\":2.91,\"finals\":3.58}', 2.735, 'FAILED', '1978-06-16', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(13, 3, 'afi-991', 'occaecati et sit', 'Quaerat dolor placeat et vitae et.', 'Mrs. Gia Cartwright', 'Wednesday 04:53:16', '{\"prelims\":1.56,\"midterms\":3.33,\"pre_finals\":1.58,\"finals\":2.34}', 2.2025, 'FAILED', '1988-11-07', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(14, 3, 'lle-742', 'eligendi consequatur sed', 'Aut inventore omnis dolores culpa odit.', 'Dayne Monahan', 'Sunday 17:10:58', '{\"prelims\":3.69,\"midterms\":2.51,\"pre_finals\":3.4,\"finals\":2.63}', 3.0575, 'PASSED', '2017-09-05', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(15, 3, 'jvt-579', 'ducimus officiis ratione', 'Soluta ex est pariatur dolores.', 'Dane Greenholt', 'Friday 15:26:50', '{\"prelims\":1.11,\"midterms\":2.47,\"pre_finals\":3.1,\"finals\":2.16}', 2.21, 'FAILED', '1982-06-25', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(16, 4, 'ydb-241', 'id praesentium esse', 'Ratione nobis laudantium vel aliquid ratione adipisci corporis.', 'Dr. Frederic Kerluke Jr.', 'Thursday 17:05:45', '{\"prelims\":5,\"midterms\":2.09,\"pre_finals\":1.95,\"finals\":3.68}', 3.18, 'PASSED', '1973-06-21', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(17, 4, 'glu-748', 'debitis consequatur quae', 'Molestias velit dolor aut.', 'Prince Murray', 'Saturday 01:38:15', '{\"prelims\":2.9,\"midterms\":2.45,\"pre_finals\":1.75,\"finals\":4.62}', 2.93, 'FAILED', '1999-05-14', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(18, 4, 'ryt-294', 'assumenda nam in', 'Eveniet dolor cupiditate reiciendis amet.', 'Alessandro Dicki MD', 'Saturday 10:31:41', '{\"prelims\":4.88,\"midterms\":1.4,\"pre_finals\":4.31,\"finals\":2.05}', 3.16, 'PASSED', '2019-05-11', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(19, 4, 'ccx-612', 'quaerat soluta maxime', 'Aut recusandae dolorem excepturi adipisci.', 'Mr. Dock Moen', 'Tuesday 20:34:41', '{\"prelims\":2.58,\"midterms\":3.88,\"pre_finals\":3.85,\"finals\":4.28}', 3.6475, 'PASSED', '1987-09-06', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(20, 4, 'bdt-406', 'nihil corporis aut', 'Voluptates fuga fugiat id.', 'Marques Frami', 'Wednesday 04:56:35', '{\"prelims\":2.07,\"midterms\":3.06,\"pre_finals\":3.22,\"finals\":1.97}', 2.58, 'FAILED', '2016-05-24', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(21, 5, 'gty-811', 'sed deserunt nulla', 'Totam quia nisi repudiandae.', 'Josephine Hansen', 'Thursday 19:53:27', '{\"prelims\":2.84,\"midterms\":4.01,\"pre_finals\":3.9,\"finals\":1.09}', 2.96, 'FAILED', '2009-10-30', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(22, 5, 'kkh-804', 'nostrum ipsum alias', 'Saepe totam porro id similique.', 'Julianne Rice', 'Friday 22:31:44', '{\"prelims\":3.02,\"midterms\":3.26,\"pre_finals\":1.95,\"finals\":4.36}', 3.1475, 'PASSED', '1982-01-25', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(23, 5, 'zin-111', 'soluta voluptatibus nesciunt', 'Neque aut ut perspiciatis quia aspernatur.', 'Brannon Balistreri', 'Thursday 21:13:08', '{\"prelims\":3.4,\"midterms\":1.73,\"pre_finals\":2.81,\"finals\":1.3}', 2.31, 'FAILED', '2024-01-28', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(24, 5, 'sra-531', 'necessitatibus quia eligendi', 'Sit fugiat et enim dolorem ut dolorem.', 'Mr. Brown Jacobson MD', 'Thursday 11:51:29', '{\"prelims\":3.04,\"midterms\":4.82,\"pre_finals\":3.15,\"finals\":1.75}', 3.19, 'PASSED', '2003-12-29', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(25, 5, 'vib-016', 'ea eos laboriosam', 'Deleniti tenetur animi et facilis et.', 'Brannon Legros', 'Tuesday 09:33:22', '{\"prelims\":3.84,\"midterms\":1.85,\"pre_finals\":3.92,\"finals\":2.01}', 2.905, 'FAILED', '1991-01-25', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(26, 6, 'amz-461', 'autem quia dolorem', 'Consequatur aliquam vel ut nobis.', 'Rosamond Marks', 'Tuesday 03:41:32', '{\"prelims\":4.68,\"midterms\":4.63,\"pre_finals\":3.43,\"finals\":4.66}', 4.35, 'PASSED', '2021-04-17', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(27, 6, 'dtp-707', 'et quam et', 'Ut non ducimus quis id.', 'Henderson Schimmel', 'Friday 20:28:23', '{\"prelims\":4.51,\"midterms\":1.78,\"pre_finals\":1.67,\"finals\":3.97}', 2.9825, 'FAILED', '1985-01-28', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(28, 6, 'azw-895', 'qui amet et', 'Aliquid voluptatum dolorem voluptas quisquam rerum deleniti.', 'Amy Kessler', 'Tuesday 19:08:42', '{\"prelims\":2.4,\"midterms\":3.51,\"pre_finals\":4.89,\"finals\":2.75}', 3.3875, 'PASSED', '1980-09-13', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(29, 6, 'rho-576', 'possimus et totam', 'Totam doloribus ex debitis rerum assumenda perspiciatis soluta.', 'Dennis Bednar II', 'Tuesday 16:28:05', '{\"prelims\":4.89,\"midterms\":1.63,\"pre_finals\":4.22,\"finals\":2.66}', 3.35, 'PASSED', '1995-11-22', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(30, 6, 'wso-223', 'libero voluptatem voluptas', 'Enim deserunt molestias voluptas perspiciatis iusto ut.', 'Ariel Bernhard', 'Saturday 13:39:25', '{\"prelims\":2.74,\"midterms\":2.22,\"pre_finals\":2.44,\"finals\":2.84}', 2.56, 'FAILED', '2008-01-28', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(31, 7, 'mch-226', 'omnis dolor odio', 'Molestiae et est eum nulla possimus amet quod temporibus.', 'Elsie Christiansen', 'Thursday 04:57:04', '{\"prelims\":2.87,\"midterms\":1.55,\"pre_finals\":4.13,\"finals\":1.85}', 2.6, 'FAILED', '2003-01-26', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(32, 7, 'ttv-244', 'consequatur id dolorem', 'Voluptas officiis nihil id ratione molestias nesciunt vitae.', 'Dayna Cormier', 'Sunday 13:52:11', '{\"prelims\":2.06,\"midterms\":3.53,\"pre_finals\":4.26,\"finals\":1.93}', 2.945, 'FAILED', '2010-03-22', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(33, 7, 'psi-331', 'corporis optio commodi', 'Vero ratione voluptatum quidem cum est.', 'Darion Corwin', 'Thursday 07:01:49', '{\"prelims\":1.78,\"midterms\":1.75,\"pre_finals\":4.25,\"finals\":1.48}', 2.315, 'FAILED', '1972-05-16', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(34, 7, 'tsr-888', 'ea dolorum aut', 'Culpa sed dicta earum maxime id et.', 'Prof. Evangeline Romaguera V', 'Tuesday 12:19:34', '{\"prelims\":2.71,\"midterms\":2.22,\"pre_finals\":2.44,\"finals\":3.08}', 2.6125, 'FAILED', '2023-08-11', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(35, 7, 'aqm-989', 'quia aperiam illum', 'Velit modi aliquam omnis vero laboriosam.', 'Mr. Johan Toy', 'Thursday 05:10:06', '{\"prelims\":4.51,\"midterms\":2.58,\"pre_finals\":3.59,\"finals\":3.58}', 3.565, 'PASSED', '1994-01-03', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(36, 8, 'tle-296', 'placeat laudantium reprehenderit', 'Qui laboriosam iusto cumque.', 'Frederic Ziemann', 'Thursday 14:43:33', '{\"prelims\":1.91,\"midterms\":3.45,\"pre_finals\":4.43,\"finals\":2.7}', 3.1225, 'PASSED', '1980-01-05', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(37, 8, 'hua-177', 'beatae ut laboriosam', 'Dolorum nemo qui eos quia.', 'Domenica Larson', 'Friday 09:03:08', '{\"prelims\":1.25,\"midterms\":3.86,\"pre_finals\":3.78,\"finals\":2.92}', 2.9525, 'FAILED', '1972-02-23', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(38, 8, 'tch-261', 'et ex aliquam', 'Vero adipisci ipsum quibusdam veniam.', 'Kody Emard', 'Wednesday 03:56:35', '{\"prelims\":4.73,\"midterms\":4.02,\"pre_finals\":1.44,\"finals\":2.49}', 3.17, 'PASSED', '2002-01-23', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(39, 8, 'oae-002', 'molestiae ipsum pariatur', 'Molestias ratione quasi aspernatur omnis.', 'Taya Rowe', 'Tuesday 23:08:36', '{\"prelims\":2.52,\"midterms\":3.29,\"pre_finals\":1.1,\"finals\":1.27}', 2.045, 'FAILED', '1989-11-21', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(40, 8, 'jhb-065', 'quia fugiat consectetur', 'Dolores beatae eum nam quasi quas accusantium repellendus omnis.', 'Rogers Mraz Sr.', 'Tuesday 15:18:50', '{\"prelims\":1.14,\"midterms\":4.5,\"pre_finals\":4.27,\"finals\":4.81}', 3.68, 'PASSED', '2011-10-16', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(41, 9, 'vfw-380', 'harum est praesentium', 'Rerum velit eaque illum blanditiis dolores incidunt cum.', 'Ms. Noemie Kub Jr.', 'Monday 00:26:43', '{\"prelims\":3.36,\"midterms\":2.03,\"pre_finals\":2.26,\"finals\":3.79}', 2.86, 'FAILED', '1989-06-02', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(42, 9, 'nrf-548', 'eum dolores est', 'Sint voluptas ea nobis nisi.', 'Prof. Zackery Hayes I', 'Sunday 22:22:07', '{\"prelims\":3.28,\"midterms\":2.15,\"pre_finals\":1.92,\"finals\":4.3}', 2.9125, 'FAILED', '2022-12-15', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(43, 9, 'xmv-593', 'et voluptas nulla', 'Molestiae omnis dolorem omnis consequatur repellat sed.', 'Dr. Maudie Kozey PhD', 'Friday 06:56:40', '{\"prelims\":4.39,\"midterms\":2.34,\"pre_finals\":3.89,\"finals\":3.63}', 3.5625, 'PASSED', '2004-06-24', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(44, 9, 'ucm-956', 'et officiis maxime', 'Dolores ducimus nihil et sit tempore ut consequuntur.', 'Herta McDermott III', 'Friday 06:41:38', '{\"prelims\":4.1,\"midterms\":2.32,\"pre_finals\":3.61,\"finals\":3.48}', 3.3775, 'PASSED', '1989-11-07', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(45, 9, 'myn-430', 'a ipsa officia', 'Mollitia reprehenderit deleniti quos aut.', 'Britney Ullrich', 'Monday 18:06:22', '{\"prelims\":3.04,\"midterms\":3.12,\"pre_finals\":2.35,\"finals\":1.63}', 2.535, 'FAILED', '1985-10-18', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(46, 10, 'gvr-606', 'debitis facilis a', 'Recusandae dicta libero hic cum porro itaque.', 'Izabella Bruen', 'Tuesday 09:10:23', '{\"prelims\":4.89,\"midterms\":3.57,\"pre_finals\":4.93,\"finals\":3.24}', 4.1575, 'PASSED', '2002-03-08', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(47, 10, 'xyw-257', 'id fugit quas', 'Quaerat officiis ea iste ab dolores sit ipsa.', 'Estel Halvorson', 'Friday 14:57:40', '{\"prelims\":4,\"midterms\":3.19,\"pre_finals\":2.1,\"finals\":1.53}', 2.705, 'FAILED', '1988-03-06', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(48, 10, 'gsb-085', 'qui magni cupiditate', 'Et dolorem natus veritatis vel ut.', 'Filiberto Gusikowski', 'Saturday 12:47:41', '{\"prelims\":4.96,\"midterms\":1.17,\"pre_finals\":1.79,\"finals\":2.35}', 2.5675, 'FAILED', '1973-11-20', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(49, 10, 'ruo-992', 'amet magnam possimus', 'Consequuntur ut ipsa perferendis illo.', 'Georgiana Stroman', 'Wednesday 13:06:15', '{\"prelims\":4.96,\"midterms\":2.81,\"pre_finals\":3.73,\"finals\":4.37}', 3.9675, 'PASSED', '1992-06-21', '2024-06-30 07:09:15', '2024-06-30 07:09:15'),
(50, 10, 'nrd-182', 'ab asperiores ut', 'Voluptates ut praesentium ut amet id non accusamus quaerat.', 'Ms. Thelma Rogahn', 'Saturday 04:56:28', '{\"prelims\":1.67,\"midterms\":3.91,\"pre_finals\":3.74,\"finals\":2.8}', 3.03, 'PASSED', '1993-03-07', '2024-06-30 07:09:15', '2024-06-30 07:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_student_id_foreign` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
