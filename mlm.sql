-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 06:26 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deviotech_language_lad`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_requests`
--

CREATE TABLE `booking_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 For Pending , 1 For Accepted , 2 For Declined, 3 For Completed',
  `refund_status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 Default, 1 Requested, 2 Refunded',
  `cancel_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_requests`
--

INSERT INTO `booking_requests` (`id`, `student_id`, `tutor_id`, `student_package_id`, `date`, `start_time`, `end_time`, `hours`, `amount`, `channel`, `channel_type`, `note`, `status`, `refund_status`, `cancel_by`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(33, 40, 41, 2, '2021-09-20 18:00:00', '6:00 PM', '7:00 PM', '1.5', 40, NULL, NULL, NULL, '2', '1', 'student', 'Test Cancellation', '2021-09-08 03:03:15', '2021-09-13 07:46:19'),
(35, 40, 41, 2, '2021-09-13 09:30:00', '9:30 AM', '10:00 AM', '1', 40, 'TestZoomLink', 'Zoom', 'Test Zoom', '3', '0', NULL, NULL, '2021-09-08 05:30:48', '2021-09-13 04:13:05'),
(36, 40, 41, 4, '2021-09-27 09:30:00', '9:30 AM', '10:00 AM', '1', 30, NULL, NULL, NULL, '0', '1', 'student', 'Test Cancel Request', '2021-09-09 00:14:11', '2021-09-13 07:35:50'),
(37, 40, 41, 2, '2021-09-20 18:30:00', '6:30 PM', '7:00 PM', '1', 40, 'TestSkypeID', 'Skype', 'Test', '2', '1', 'Teacher', 'Test Booking By Teacher', '2021-09-13 02:32:21', '2021-09-13 08:31:26'),
(38, 40, 42, 5, '2021-09-21 10:00:00', '10:00 AM', '11:30 AM', '2', 80, NULL, NULL, NULL, '0', '0', NULL, NULL, '2021-09-13 02:38:11', '2021-09-13 02:38:11'),
(43, 40, 43, 9, '2021-09-27 10:00:00', '10:00 AM', '11:00 AM', '1.5', 10.5, NULL, NULL, NULL, '0', '0', NULL, NULL, '2021-09-15 02:46:07', '2021-09-15 02:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `iso` char(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`iso`, `name`) VALUES
('KRW', '(South) Korean Won'),
('AFA', 'Afghanistan Afghani'),
('ALL', 'Albanian Lek'),
('DZD', 'Algerian Dinar'),
('ADP', 'Andorran Peseta'),
('AOK', 'Angolan Kwanza'),
('ARS', 'Argentine Peso'),
('AMD', 'Armenian Dram'),
('AWG', 'Aruban Florin'),
('AUD', 'Australian Dollar'),
('BSD', 'Bahamian Dollar'),
('BHD', 'Bahraini Dinar'),
('BDT', 'Bangladeshi Taka'),
('BBD', 'Barbados Dollar'),
('BZD', 'Belize Dollar'),
('BMD', 'Bermudian Dollar'),
('BTN', 'Bhutan Ngultrum'),
('BOB', 'Bolivian Boliviano'),
('BWP', 'Botswanian Pula'),
('BRL', 'Brazilian Real'),
('GBP', 'British Pound'),
('BND', 'Brunei Dollar'),
('BGN', 'Bulgarian Lev'),
('BUK', 'Burma Kyat'),
('BIF', 'Burundi Franc'),
('CAD', 'Canadian Dollar'),
('CVE', 'Cape Verde Escudo'),
('KYD', 'Cayman Islands Dollar'),
('CLP', 'Chilean Peso'),
('CLF', 'Chilean Unidades de Fomento'),
('COP', 'Colombian Peso'),
('XOF', 'Communauté Financière Africaine BCEAO - Francs'),
('XAF', 'Communauté Financière Africaine BEAC, Francs'),
('KMF', 'Comoros Franc'),
('XPF', 'Comptoirs Français du Pacifique Francs'),
('CRC', 'Costa Rican Colon'),
('CUP', 'Cuban Peso'),
('CYP', 'Cyprus Pound'),
('CZK', 'Czech Republic Koruna'),
('DKK', 'Danish Krone'),
('YDD', 'Democratic Yemeni Dinar'),
('DOP', 'Dominican Peso'),
('XCD', 'East Caribbean Dollar'),
('TPE', 'East Timor Escudo'),
('ECS', 'Ecuador Sucre'),
('EGP', 'Egyptian Pound'),
('SVC', 'El Salvador Colon'),
('EEK', 'Estonian Kroon (EEK)'),
('ETB', 'Ethiopian Birr'),
('EUR', 'Euro'),
('FKP', 'Falkland Islands Pound'),
('FJD', 'Fiji Dollar'),
('GMD', 'Gambian Dalasi'),
('GHC', 'Ghanaian Cedi'),
('GIP', 'Gibraltar Pound'),
('XAU', 'Gold, Ounces'),
('GTQ', 'Guatemalan Quetzal'),
('GNF', 'Guinea Franc'),
('GWP', 'Guinea-Bissau Peso'),
('GYD', 'Guyanan Dollar'),
('HTG', 'Haitian Gourde'),
('HNL', 'Honduran Lempira'),
('HKD', 'Hong Kong Dollar'),
('HUF', 'Hungarian Forint'),
('INR', 'Indian Rupee'),
('IDR', 'Indonesian Rupiah'),
('XDR', 'International Monetary Fund (IMF) Special Drawing Rights'),
('IRR', 'Iranian Rial'),
('IQD', 'Iraqi Dinar'),
('IEP', 'Irish Punt'),
('ILS', 'Israeli Shekel'),
('JMD', 'Jamaican Dollar'),
('JPY', 'Japanese Yen'),
('JOD', 'Jordanian Dinar'),
('KHR', 'Kampuchean (Cambodian) Riel'),
('KES', 'Kenyan Schilling'),
('KWD', 'Kuwaiti Dinar'),
('LAK', 'Lao Kip'),
('LBP', 'Lebanese Pound'),
('LSL', 'Lesotho Loti'),
('LRD', 'Liberian Dollar'),
('LYD', 'Libyan Dinar'),
('MOP', 'Macau Pataca'),
('MGF', 'Malagasy Franc'),
('MWK', 'Malawi Kwacha'),
('MYR', 'Malaysian Ringgit'),
('MVR', 'Maldive Rufiyaa'),
('MTL', 'Maltese Lira'),
('MRO', 'Mauritanian Ouguiya'),
('MUR', 'Mauritius Rupee'),
('MXP', 'Mexican Peso'),
('MNT', 'Mongolian Tugrik'),
('MAD', 'Moroccan Dirham'),
('MZM', 'Mozambique Metical'),
('NAD', 'Namibian Dollar'),
('NPR', 'Nepalese Rupee'),
('ANG', 'Netherlands Antillian Guilder'),
('YUD', 'New Yugoslavia Dinar'),
('NZD', 'New Zealand Dollar'),
('NIO', 'Nicaraguan Cordoba'),
('NGN', 'Nigerian Naira'),
('KPW', 'North Korean Won'),
('NOK', 'Norwegian Kroner'),
('OMR', 'Omani Rial'),
('PKR', 'Pakistan Rupee'),
('XPD', 'Palladium Ounces'),
('PAB', 'Panamanian Balboa'),
('PGK', 'Papua New Guinea Kina'),
('PYG', 'Paraguay Guarani'),
('PEN', 'Peruvian Nuevo Sol'),
('PHP', 'Philippine Peso'),
('XPT', 'Platinum, Ounces'),
('PLN', 'Polish Zloty'),
('QAR', 'Qatari Rial'),
('RON', 'Romanian Leu'),
('RUB', 'Russian Ruble'),
('RWF', 'Rwanda Franc'),
('WST', 'Samoan Tala'),
('STD', 'Sao Tome and Principe Dobra'),
('SAR', 'Saudi Arabian Riyal'),
('SCR', 'Seychelles Rupee'),
('SLL', 'Sierra Leone Leone'),
('XAG', 'Silver, Ounces'),
('SGD', 'Singapore Dollar'),
('SKK', 'Slovak Koruna'),
('SBD', 'Solomon Islands Dollar'),
('SOS', 'Somali Schilling'),
('ZAR', 'South African Rand'),
('LKR', 'Sri Lanka Rupee'),
('SHP', 'St. Helena Pound'),
('SDP', 'Sudanese Pound'),
('SRG', 'Suriname Guilder'),
('SZL', 'Swaziland Lilangeni'),
('SEK', 'Swedish Krona'),
('CHF', 'Swiss Franc'),
('SYP', 'Syrian Potmd'),
('TWD', 'Taiwan Dollar'),
('TZS', 'Tanzanian Schilling'),
('THB', 'Thai Baht'),
('TOP', 'Tongan Paanga'),
('TTD', 'Trinidad and Tobago Dollar'),
('TND', 'Tunisian Dinar'),
('TRY', 'Turkish Lira'),
('UGX', 'Uganda Shilling'),
('AED', 'United Arab Emirates Dirham'),
('UYU', 'Uruguayan Peso'),
('USD', 'US Dollar'),
('VUV', 'Vanuatu Vatu'),
('VEF', 'Venezualan Bolivar'),
('VND', 'Vietnamese Dong'),
('YER', 'Yemeni Rial'),
('CNY', 'Yuan (Chinese) Renminbi'),
('ZRZ', 'Zaire Zaire'),
('ZMK', 'Zambian Kwacha'),
('ZWD', 'Zimbabwe Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `day_slots`
--

CREATE TABLE `day_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_table_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `single_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `slot_type` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 All Day, 1 Specific Day, 2 Closed Day',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `day_slots`
--

INSERT INTO `day_slots` (`id`, `time_table_id`, `tutor_id`, `single_day`, `from`, `to`, `is_closed`, `slot_type`, `created_at`, `updated_at`) VALUES
(59, 96, 41, '2021-09-20', '5:00 PM', '7:00 PM', 0, '1', '2021-09-08 01:32:18', '2021-09-08 01:32:18'),
(60, 58, 42, NULL, '9:00 AM', '12:30 PM', 0, '0', '2021-09-13 02:37:15', '2021-09-13 02:37:15'),
(61, 94, 43, NULL, '9:00 AM', '5:00 PM', 0, '0', '2021-09-13 05:08:28', '2021-09-13 05:08:28'),
(62, 65, 43, NULL, '9:00 AM', '1:15 PM', 0, '0', '2021-09-13 11:56:31', '2021-09-13 11:56:31'),
(63, 65, 43, NULL, '2:00 PM', '4:40 PM', 0, '0', '2021-09-13 11:56:31', '2021-09-13 11:56:31'),
(65, 67, 43, NULL, '5:00 AM', '12:00 PM', 0, '0', '2021-09-13 11:58:19', '2021-09-13 11:58:19'),
(66, 67, 43, NULL, '2:00 PM', '4:00 PM', 0, '0', '2021-09-13 11:58:19', '2021-09-13 11:58:19'),
(69, 96, 41, NULL, '9:00 AM', '1:15 PM', 0, '0', '2021-09-17 02:40:38', '2021-09-17 02:40:38'),
(70, 96, 41, NULL, '2:00 PM', '4:40 PM', 0, '0', '2021-09-17 02:40:38', '2021-09-17 02:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'English', '2021-09-03 08:08:45', '2021-09-03 08:08:45'),
(3, 'French', '2021-09-03 08:08:56', '2021-09-03 08:08:56'),
(4, 'Spanish', '2021-09-03 08:09:10', '2021-09-03 08:09:10'),
(5, 'Urdu', '2021-09-03 08:09:23', '2021-09-03 08:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_10_110215_create_tutor_profiles_table', 1),
(5, '2021_06_14_062515_create_student_profiles_table', 1),
(6, '2021_06_28_111505_create_student_speaks_table', 1),
(7, '2021_06_28_122409_create_tutor_speaks_table', 1),
(8, '2021_06_28_131101_create_tutor_lessons_table', 1),
(9, '2021_06_28_132613_create_tutor_lesson_packages_table', 1),
(10, '2021_06_29_053440_create_tutor_certificates_table', 1),
(11, '2021_06_29_093431_alter_tutor_profiles_for_description', 2),
(12, '2020_05_10_000000_create_integrations_table', 3),
(13, '2021_06_14_094859_alter_tutor_profiles_for_video_and_profile_description', 3),
(14, '2021_06_14_131855_alter_users_table_for_username_field', 4),
(15, '2021_06_30_062607_alter_student_profiles_for_nullable_fields', 4),
(16, '2021_06_30_105839_alter_tutor_lesson_packages_table_for_nullable_fields', 4),
(17, '2021_07_01_052345_alter_tutor_lesson_packages_table', 4),
(18, '2021_07_06_053926_alter_users_table_for_calendar_id', 4),
(19, '2021_07_06_063932_create_time_tables_table', 5),
(22, '2021_07_06_104246_alter_tutor_profiles_table_for_is_free_trial', 6),
(23, '2021_07_07_123135_alter_tutor_profiles_to_make_fields_nullable', 7),
(24, '2021_07_08_123452_create_booking_requests_table', 7),
(25, '2021_07_08_124600_create_transactions_table', 7),
(26, '2021_07_08_124712_create_tutor_reviews_table', 7),
(27, '2021_07_08_124943_create_tutoring_sessions_table', 7),
(28, '2021_07_12_104624_alter_transactions_table_for_tutor_and_student_id', 8),
(29, '2021_07_13_050628_alter_booking_requests_table_for_status', 9),
(30, '2021_07_14_100428_alter_tutor_profiles_table_for_default_zero_step', 9),
(31, '2021_07_26_073120_alter_transactions_table_for_admin_amount', 9),
(32, '2021_08_02_055340_create_settings_table', 10),
(33, '2021_08_02_075624_alter_tutor_profiles_for_modify_is_approved_column', 11),
(34, '2021_08_03_071738_alter_transactions_table_for_is_refund_column', 11),
(35, '2021_08_09_071508_alter_users_table_for_time_zone_column', 12),
(37, '2021_08_10_041521_alter_booking_requests_table_for_start_and_end_time', 13),
(38, '2021_08_11_042015_create_trial_classes_table', 14),
(39, '2021_08_13_054138_create_stripe_transfers_table', 15),
(40, '2021_08_13_054727_alter_tutor_profiles_table_for_stripe_account', 16),
(41, '2021_08_13_055422_alter_transactions_table_for_payout_status', 17),
(48, '2021_08_17_104621_alter_booking_requests_table_for_channel_and_note', 18),
(49, '2021_08_23_080937_alter_trial_classes_table_for_day_and_time_slots', 18),
(50, '2021_08_23_092606_alter_trial_classes_table_for_drop_status_column', 19),
(51, '2021_08_23_110615_alter_trial_classes_table_for_channel_and_note', 20),
(52, '2021_08_24_044920_alter_time_tables_for_drop_from_and_to', 21),
(53, '2021_08_24_045250_create_day_slots_table', 22),
(54, '2021_08_24_065215_create_tutor_education_table', 23),
(55, '2021_08_24_065224_create_tutor_experiences_table', 23),
(56, '2021_08_25_041131_create_testimonials_table', 24),
(58, '2021_08_28_084743_alter_tutor_reviews_for_trial_class_id_column', 25),
(59, '2021_08_28_101128_alter_tutor_lesson_packages_table_for_package_number', 26),
(61, '2021_08_30_044204_alter_transactions_table_for_payment_method_column', 27),
(62, '2021_08_30_111138_alter_transactions_table_for_nullable_stripe_charge_id', 28),
(63, '2021_09_03_124348_create_languages_table', 28),
(64, '2021_09_03_124406_create_tags_table', 28),
(65, '2021_09_06_052607_alter_day_slots_table_for_status_column', 29),
(66, '2021_09_06_075445_alter_time_tables_table_for_status_column', 30),
(67, '2021_09_07_063740_alter_tutor_lesson_packages_table_for_package_number_string', 31),
(68, '2021_09_07_072259_alter_booking_requests_table_for_channel_name_column', 31),
(69, '2021_09_07_090737_alter_student_profiles_table_for_wallet_amount', 32),
(70, '2021_09_07_094618_alter_booking_requests_table_for_refund_payment_column', 33),
(71, '2021_09_07_164729_alter_transactions_table_for_trial_class_id', 34),
(73, '2021_09_07_180553_alter_trial_classes_table_for_refund_status_column', 35),
(74, '2021_09_07_190019_alter_transactions_table_payment_method_wallet', 36),
(75, '2021_09_07_193651_alter_trial_classes_table_for_channel_type_column', 37),
(76, '2021_09_08_062036_alter_day_slots_table_for_slot_type', 38),
(77, '2021_09_08_064451_create_student_packages_table', 39),
(80, '2021_09_08_070046_alter_booking_requests_table_for_student_package_id', 40),
(81, '2021_09_08_075906_alter_student_packages_table_for_status_column', 41),
(82, '2021_09_13_104817_alter_booking_requests_table_for_cancellation_reason', 42),
(83, '2021_09_13_185606_alter_trial_classes_table_for_cancel_by_and_cancel_reason', 43);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('deviotech@andrew.com', '$2y$10$1xauLgRLwr7TeqFBcM5qleGAlzpf55NxQMRDGYhrOXqECAFSw0kMK', '2021-07-07 23:49:53'),
('deviotech@jorge.com', '$2y$10$szTDCxeXP6/6pcMOd1OH4u0k7cdPO0LJbOD7G8o2KBGgRvh9GFDfa', '2021-07-15 05:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'admin_commission', '15', '2021-08-02 00:59:20', '2021-08-02 04:29:50');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_transfers`
--

CREATE TABLE `stripe_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stripe_transfer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_packages`
--

CREATE TABLE `student_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_lesson_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_classes` int(11) NOT NULL DEFAULT 0,
  `remaining_classes` int(11) NOT NULL DEFAULT 0,
  `cancelled_classes` int(11) NOT NULL DEFAULT 0,
  `completed_classes` int(11) NOT NULL DEFAULT 0,
  `total_amount_paid` double(8,2) NOT NULL DEFAULT 0.00,
  `total_amount_refunded` double(8,2) NOT NULL DEFAULT 0.00,
  `status` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 Active, 2 Completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_packages`
--

INSERT INTO `student_packages` (`id`, `tutor_id`, `student_id`, `tutor_lesson_id`, `tutor_lesson_package_id`, `total_classes`, `remaining_classes`, `cancelled_classes`, `completed_classes`, `total_amount_paid`, `total_amount_refunded`, `status`, `created_at`, `updated_at`) VALUES
(2, 41, 40, 44, 206, 10, 7, 0, 0, 400.00, 0.00, '1', '2021-09-08 03:03:15', '2021-09-13 02:32:21'),
(4, 41, 40, 33, 201, 20, 19, 0, 0, 600.00, 0.00, '1', '2021-09-09 00:14:11', '2021-09-09 00:14:11'),
(5, 42, 40, 34, 87, 1, 0, 0, 0, 80.00, 0.00, '2', '2021-09-13 02:38:11', '2021-09-13 02:38:11'),
(9, 43, 40, 47, 215, 20, 19, 0, 0, 210.00, 0.00, '1', '2021-09-15 02:46:07', '2021-09-15 02:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_profiles`
--

CREATE TABLE `student_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lives_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_profiles`
--

INSERT INTO `student_profiles` (`id`, `user_id`, `image`, `country`, `lives_in`, `native_language`, `wallet_amount`, `created_at`, `updated_at`) VALUES
(10, 40, 'uploads/students/40/1628838674-27bs-profile-picture.png', 'Pakistan', 'Lahore', 'French', 310.00, '2021-08-13 14:11:14', '2021-09-13 02:38:11'),
(11, 46, 'uploads/students/46/1628840940-bDlV-profile-picture.png', NULL, NULL, NULL, 0.00, '2021-08-13 14:49:00', '2021-08-13 14:49:00'),
(12, 47, NULL, NULL, NULL, NULL, 0.00, '2021-08-23 00:25:17', '2021-08-23 00:25:17'),
(13, 51, NULL, NULL, NULL, NULL, 0.00, '2021-08-28 11:10:30', '2021-08-28 11:10:30'),
(15, 55, NULL, NULL, NULL, NULL, 0.00, '2021-09-16 23:31:14', '2021-09-16 23:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `student_speaks`
--

CREATE TABLE `student_speaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_speaks`
--

INSERT INTO `student_speaks` (`id`, `student_id`, `language`, `level`, `created_at`, `updated_at`) VALUES
(19, 40, 'Spanish', 'B2: Upper Intermediate', '2021-08-27 11:34:12', '2021-08-27 11:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Test A', '2021-09-03 08:09:42', '2021-09-03 08:09:42'),
(2, 'Tag B', '2021-09-03 08:09:54', '2021-09-03 08:10:04'),
(3, 'Tag C', '2021-09-03 08:10:17', '2021-09-03 08:10:17');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'uploads/admin/6125d01085a3b/1629868048-VJq9-testimonial-user.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only fiv', '2021-08-25 00:00:04', '2021-08-25 00:07:28'),
(3, 'uploads/admin/6125d01f2a4c2/1629868063-djm9-testimonial-user.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only fiv', '2021-08-25 00:04:24', '2021-08-25 00:07:43'),
(4, 'uploads/admin/6125d02ec4a7b/1629868078-I630-testimonial-user.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only fiv', '2021-08-25 00:06:07', '2021-08-25 00:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `tutor_id`, `day`, `is_closed`, `created_at`, `updated_at`) VALUES
(51, 41, 'Tuesday', 0, '2021-08-13 14:17:57', '2021-08-13 14:17:57'),
(52, 41, 'Wednesday', 0, '2021-08-13 14:17:57', '2021-08-13 14:17:57'),
(53, 41, 'Thursday', 0, '2021-08-13 14:17:57', '2021-08-13 14:17:57'),
(54, 41, 'Friday', 0, '2021-08-13 14:17:57', '2021-08-13 14:17:57'),
(55, 41, 'Saturday', 0, '2021-08-13 14:17:57', '2021-08-13 14:17:57'),
(56, 41, 'Sunday', 1, '2021-08-13 14:17:57', '2021-09-06 04:15:49'),
(58, 42, 'Tuesday', 0, '2021-08-13 14:25:27', '2021-08-13 14:25:27'),
(59, 42, 'Wednesday', 0, '2021-08-13 14:25:27', '2021-08-13 14:25:27'),
(60, 42, 'Thursday', 0, '2021-08-13 14:25:27', '2021-08-13 14:25:27'),
(63, 42, 'Sunday', 0, '2021-08-13 14:25:27', '2021-08-13 14:25:27'),
(65, 43, 'Tuesday', 0, '2021-08-13 14:33:47', '2021-08-13 14:33:47'),
(66, 43, 'Wednesday', 1, '2021-08-13 14:33:47', '2021-09-20 04:52:53'),
(67, 43, 'Thursday', 0, '2021-08-13 14:33:47', '2021-08-13 14:33:47'),
(68, 43, 'Friday', 0, '2021-08-13 14:33:47', '2021-08-13 14:33:47'),
(69, 43, 'Saturday', 0, '2021-08-13 14:33:47', '2021-08-13 14:33:47'),
(70, 43, 'Sunday', 0, '2021-08-13 14:33:47', '2021-08-13 14:33:47'),
(71, 44, 'Monday', 0, '2021-08-13 14:40:43', '2021-08-13 14:40:43'),
(72, 44, 'Tuesday', 0, '2021-08-13 14:40:43', '2021-08-13 14:40:43'),
(73, 44, 'Wednesday', 0, '2021-08-13 14:40:43', '2021-08-13 14:40:43'),
(74, 44, 'Thursday', 0, '2021-08-13 14:40:44', '2021-08-13 14:40:44'),
(75, 44, 'Friday', 0, '2021-08-13 14:40:44', '2021-08-13 14:40:44'),
(76, 44, 'Saturday', 0, '2021-08-13 14:40:44', '2021-08-13 14:40:44'),
(77, 44, 'Sunday', 0, '2021-08-13 14:40:44', '2021-08-13 14:40:44'),
(78, 45, 'Monday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(79, 45, 'Tuesday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(80, 45, 'Wednesday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(81, 45, 'Thursday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(82, 45, 'Friday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(83, 45, 'Saturday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(84, 45, 'Sunday', 0, '2021-08-13 14:46:11', '2021-08-13 14:46:11'),
(92, 42, 'Friday', 0, '2021-08-24 00:29:14', '2021-08-24 00:29:14'),
(93, 42, 'Monday', 0, '2021-08-27 05:49:15', '2021-08-27 05:49:15'),
(94, 43, 'Monday', 0, '2021-08-28 02:42:36', '2021-08-28 02:42:36'),
(96, 41, 'Monday', 0, '2021-09-06 00:00:16', '2021-09-06 00:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, '(UTC-11:00) Midway Island', 'Pacific/Midway', '2021-03-04 06:25:58', '2021-03-04 06:25:58'),
(2, '(UTC-11:00) Samoa', 'Pacific/Samoa', '2021-03-04 06:25:58', '2021-03-04 06:25:58'),
(3, '(UTC-10:00) Hawaii', 'Pacific/Honolulu', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(4, '(UTC-09:00) Alaska', 'US/Alaska', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(5, '(UTC-08:00) Pacific Time (US', 'America/Los_Angeles', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(6, '(UTC-08:00) Tijuana', 'America/Tijuana', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(7, '(UTC-07:00) Arizona', 'US/Arizona', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(8, '(UTC-07:00) Chihuahua', 'America/Chihuahua', '2021-03-04 06:25:59', '2021-03-04 06:25:59'),
(9, '(UTC-07:00) La Paz', 'America/Chihuahua', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(10, '(UTC-07:00) Mazatlan', 'America/Mazatlan', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(11, '(UTC-07:00) Mountain Time (US', 'US/Mountain', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(12, '(UTC-06:00) Central America', 'America/Managua', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(13, '(UTC-06:00) Central Time (US', 'US/Central', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(14, '(UTC-06:00) Guadalajara', 'America/Mexico_City', '2021-03-04 06:26:00', '2021-03-04 06:26:00'),
(15, '(UTC-06:00) Mexico City', 'America/Mexico_City', '2021-03-04 06:26:01', '2021-03-04 06:26:01'),
(16, '(UTC-06:00) Monterrey', 'America/Monterrey', '2021-03-04 06:26:01', '2021-03-04 06:26:01'),
(17, '(UTC-06:00) Saskatchewan', 'Canada/Saskatchewan', '2021-03-04 06:26:01', '2021-03-04 06:26:01'),
(18, '(UTC-05:00) Bogota', 'America/Bogota', '2021-03-04 06:26:01', '2021-03-04 06:26:01'),
(19, '(UTC-05:00) Eastern Time (US', 'US/Eastern', '2021-03-04 06:26:01', '2021-03-04 06:26:01'),
(20, '(UTC-05:00) Indiana (East)', 'US/East-Indiana', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(21, '(UTC-05:00) Lima', 'America/Lima', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(22, '(UTC-05:00) Quito', 'America/Bogota', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(23, '(UTC-04:00) Atlantic Time (Canada)', 'Canada/Atlantic', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(24, '(UTC-04:30) Caracas', 'America/Caracas', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(25, '(UTC-04:00) La Paz', 'America/La_Paz', '2021-03-04 06:26:02', '2021-03-04 06:26:02'),
(26, '(UTC-04:00) Santiago', 'America/Santiago', '2021-03-04 06:26:03', '2021-03-04 06:26:03'),
(27, '(UTC-03:30) Newfoundland', 'Canada/Newfoundland', '2021-03-04 06:26:03', '2021-03-04 06:26:03'),
(28, '(UTC-03:00) Brasilia', 'America/Sao_Paulo', '2021-03-04 06:26:03', '2021-03-04 06:26:03'),
(29, '(UTC-03:00) Buenos Aires', 'America/Argentina/Buenos_Aires', '2021-03-04 06:26:03', '2021-03-04 06:26:03'),
(30, '(UTC-03:00) Georgetown', 'America/Argentina/Buenos_Aires', '2021-03-04 06:26:03', '2021-03-04 06:26:03'),
(31, '(UTC-03:00) Greenland', 'America/Godthab', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(32, '(UTC-02:00) Mid-Atlantic', 'America/Noronha', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(33, '(UTC-01:00) Azores', 'Atlantic/Azores', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(34, '(UTC-01:00) Cape Verde Is.', 'Atlantic/Cape_Verde', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(35, '(UTC 00:00) Casablanca', 'Africa/Casablanca', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(36, '(UTC 00:00) Edinburgh', 'Europe/Edinburgh', '2021-03-04 06:26:04', '2021-03-04 06:26:04'),
(37, '(UTC 00:00) Greenwich Mean Time : Dublin', 'Etc/Greenwich', '2021-03-04 06:26:05', '2021-03-04 06:26:05'),
(38, '(UTC 00:00) Lisbon', 'Europe/Lisbon', '2021-03-04 06:26:05', '2021-03-04 06:26:05'),
(39, '(UTC 00:00) London', 'Europe/London', '2021-03-04 06:26:05', '2021-03-04 06:26:05'),
(40, '(UTC 00:00) Monrovia', 'Africa/Monrovia', '2021-03-04 06:26:05', '2021-03-04 06:26:05'),
(41, '(UTC 00:00) UTC', 'UTC', '2021-03-04 06:26:05', '2021-03-04 06:26:05'),
(42, '(UTC 01:00) Amsterdam', 'Europe/Amsterdam', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(43, '(UTC 01:00) Belgrade', 'Europe/Belgrade', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(44, '(UTC 01:00) Berlin', 'Europe/Berlin', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(45, '(UTC 01:00) Bern', 'Europe/Berlin', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(46, '(UTC 01:00) Bratislava', 'Europe/Bratislava', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(47, '(UTC 01:00) Brussels', 'Europe/Brussels', '2021-03-04 06:26:06', '2021-03-04 06:26:06'),
(48, '(UTC 01:00) Budapest', 'Europe/Budapest', '2021-03-04 06:26:07', '2021-03-04 06:26:07'),
(49, '(UTC 01:00) Copenhagen', 'Europe/Copenhagen', '2021-03-04 06:26:07', '2021-03-04 06:26:07'),
(50, '(UTC 01:00) Ljubljana', 'Europe/Ljubljana', '2021-03-04 06:26:07', '2021-03-04 06:26:07'),
(51, '(UTC 01:00) Madrid', 'Europe/Madrid', '2021-03-04 06:26:07', '2021-03-04 06:26:07'),
(52, '(UTC 01:00) Paris', 'Europe/Paris', '2021-03-04 06:26:07', '2021-03-04 06:26:07'),
(53, '(UTC 01:00) Prague', 'Europe/Prague', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(54, '(UTC 01:00) Rome', 'Europe/Rome', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(55, '(UTC 01:00) Sarajevo', 'Europe/Sarajevo', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(56, '(UTC 01:00) Skopje', 'Europe/Skopje', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(57, '(UTC 01:00) Stockholm', 'Europe/Stockholm', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(58, '(UTC 01:00) Vienna', 'Europe/Vienna', '2021-03-04 06:26:08', '2021-03-04 06:26:08'),
(59, '(UTC 01:00) Warsaw', 'Europe/Warsaw', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(60, '(UTC 01:00) West Central Africa', 'Africa/Lagos', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(61, '(UTC 01:00) Zagreb', 'Europe/Zagreb', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(62, '(UTC 02:00) Athens', 'Europe/Athens', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(63, '(UTC 02:00) Bucharest', 'Europe/Bucharest', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(64, '(UTC 02:00) Cairo', 'Africa/Cairo', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(65, '(UTC 02:00) Harare', 'Africa/Harare', '2021-03-04 06:26:09', '2021-03-04 06:26:09'),
(66, '(UTC 02:00) Helsinki', 'Europe/Helsinki', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(67, '(UTC 02:00) Istanbul', 'Europe/Istanbul', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(68, '(UTC 02:00) Jerusalem', 'Asia/Jerusalem', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(69, '(UTC 02:00) Kyiv', 'Europe/Helsinki', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(70, '(UTC 02:00) Pretoria', 'Africa/Johannesburg', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(71, '(UTC 02:00) Riga', 'Europe/Riga', '2021-03-04 06:26:10', '2021-03-04 06:26:10'),
(72, '(UTC 02:00) Sofia', 'Europe/Sofia', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(73, '(UTC 02:00) Tallinn', 'Europe/Tallinn', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(74, '(UTC 02:00) Vilnius', 'Europe/Vilnius', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(75, '(UTC 03:00) Baghdad', 'Asia/Baghdad', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(76, '(UTC 03:00) Kuwait', 'Asia/Kuwait', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(77, '(UTC 03:00) Minsk', 'Europe/Minsk', '2021-03-04 06:26:11', '2021-03-04 06:26:11'),
(78, '(UTC 03:00) Nairobi', 'Africa/Nairobi', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(79, '(UTC 03:00) Riyadh', 'Asia/Riyadh', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(80, '(UTC 03:00) Volgograd', 'Europe/Volgograd', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(81, '(UTC 03:30) Tehran', 'Asia/Tehran', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(82, '(UTC 04:00) Abu Dhabi', 'Asia/Muscat', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(83, '(UTC 04:00) Baku', 'Asia/Baku', '2021-03-04 06:26:12', '2021-03-04 06:26:12'),
(84, '(UTC 04:00) Moscow', 'Europe/Moscow', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(85, '(UTC 04:00) Muscat', 'Asia/Muscat', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(86, '(UTC 04:00) St. Petersburg', 'Europe/Moscow', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(87, '(UTC 04:00) Tbilisi', 'Asia/Tbilisi', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(88, '(UTC 04:00) Yerevan', 'Asia/Yerevan', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(89, '(UTC 04:30) Kabul', 'Asia/Kabul', '2021-03-04 06:26:13', '2021-03-04 06:26:13'),
(90, '(UTC 05:00) Islamabad', 'Asia/Karachi', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(91, '(UTC 05:00) Karachi', 'Asia/Karachi', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(92, '(UTC 05:00) Tashkent', 'Asia/Tashkent', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(93, '(UTC 05:30) Chennai', 'Asia/Calcutta', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(94, '(UTC 05:30) Kolkata', 'Asia/Kolkata', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(95, '(UTC 05:30) Mumbai', 'Asia/Calcutta', '2021-03-04 06:26:14', '2021-03-04 06:26:14'),
(96, '(UTC 05:30) New Delhi', 'Asia/Calcutta', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(97, '(UTC 05:30) Sri Jayawardenepura', 'Asia/Calcutta', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(98, '(UTC 05:45) Kathmandu', 'Asia/Katmandu', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(99, '(UTC 06:00) Almaty', 'Asia/Almaty', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(100, '(UTC 06:00) Astana', 'Asia/Dhaka', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(101, '(UTC 06:00) Dhaka', 'Asia/Dhaka', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(102, '(UTC 06:00) Ekaterinburg', 'Asia/Yekaterinburg', '2021-03-04 06:26:15', '2021-03-04 06:26:15'),
(103, '(UTC 06:30) Rangoon', 'Asia/Rangoon', '2021-03-04 06:26:16', '2021-03-04 06:26:16'),
(104, '(UTC 07:00) Bangkok', 'Asia/Bangkok', '2021-03-04 06:26:16', '2021-03-04 06:26:16'),
(105, '(UTC 07:00) Hanoi', 'Asia/Bangkok', '2021-03-04 06:26:16', '2021-03-04 06:26:16'),
(106, '(UTC 07:00) Jakarta', 'Asia/Jakarta', '2021-03-04 06:26:16', '2021-03-04 06:26:16'),
(107, '(UTC 07:00) Novosibirsk', 'Asia/Novosibirsk', '2021-03-04 06:26:16', '2021-03-04 06:26:16'),
(108, '(UTC 08:00) Beijing', 'Asia/Hong_Kong', '2021-03-04 06:26:17', '2021-03-04 06:26:17'),
(109, '(UTC 08:00) Chongqing', 'Asia/Chongqing', '2021-03-04 06:26:17', '2021-03-04 06:26:17'),
(110, '(UTC 08:00) Hong Kong', 'Asia/Hong_Kong', '2021-03-04 06:26:17', '2021-03-04 06:26:17'),
(111, '(UTC 08:00) Krasnoyarsk', 'Asia/Krasnoyarsk', '2021-03-04 06:26:17', '2021-03-04 06:26:17'),
(112, '(UTC 08:00) Kuala Lumpur', 'Asia/Kuala_Lumpur', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(113, '(UTC 08:00) Perth', 'Australia/Perth', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(114, '(UTC 08:00) Singapore', 'Asia/Singapore', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(115, '(UTC 08:00) Taipei', 'Asia/Taipei', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(116, '(UTC 08:00) Ulaan Bataar', 'Asia/Ulan_Bator', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(117, '(UTC 08:00) Urumqi', 'Asia/Urumqi', '2021-03-04 06:26:18', '2021-03-04 06:26:18'),
(118, '(UTC 09:00) Irkutsk', 'Asia/Irkutsk', '2021-03-04 06:26:19', '2021-03-04 06:26:19'),
(119, '(UTC 09:00) Osaka', 'Asia/Tokyo', '2021-03-04 06:26:19', '2021-03-04 06:26:19'),
(120, '(UTC 09:00) Sapporo', 'Asia/Tokyo', '2021-03-04 06:26:19', '2021-03-04 06:26:19'),
(121, '(UTC 09:00) Seoul', 'Asia/Seoul', '2021-03-04 06:26:19', '2021-03-04 06:26:19'),
(122, '(UTC 09:00) Tokyo', 'Asia/Tokyo', '2021-03-04 06:26:19', '2021-03-04 06:26:19'),
(123, '(UTC 09:30) Adelaide', 'Australia/Adelaide', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(124, '(UTC 09:30) Darwin', 'Australia/Darwin', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(125, '(UTC 10:00) Brisbane', 'Australia/Brisbane', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(126, '(UTC 10:00) Canberra', 'Australia/Canberra', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(127, '(UTC 10:00) Guam', 'Pacific/Guam', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(128, '(UTC 10:00) Hobart', 'Australia/Hobart', '2021-03-04 06:26:20', '2021-03-04 06:26:20'),
(129, '(UTC 10:00) Melbourne', 'Australia/Melbourne', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(130, '(UTC 10:00) Port Moresby', 'Pacific/Port_Moresby', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(131, '(UTC 10:00) Sydney', 'Australia/Sydney', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(132, '(UTC 10:00) Yakutsk', 'Asia/Yakutsk', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(133, '(UTC 11:00) Vladivostok', 'Asia/Vladivostok', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(134, '(UTC 12:00) Auckland', 'Pacific/Auckland', '2021-03-04 06:26:21', '2021-03-04 06:26:21'),
(135, '(UTC 12:00) Fiji', 'Pacific/Fiji', '2021-03-04 06:26:22', '2021-03-04 06:26:22'),
(136, '(UTC 12:00) International Date Line West', 'Pacific/Kwajalein', '2021-03-04 06:26:22', '2021-03-04 06:26:22'),
(137, '(UTC 12:00) Kamchatka', 'Asia/Kamchatka', '2021-03-04 06:26:22', '2021-03-04 06:26:22'),
(138, '(UTC 12:00) Magadan', 'Asia/Magadan', '2021-03-04 06:26:22', '2021-03-04 06:26:22'),
(139, '(UTC 12:00) Marshall Is.', 'Pacific/Fiji', '2021-03-04 06:26:23', '2021-03-04 06:26:23'),
(140, '(UTC 12:00) New Caledonia', 'Asia/Magadan', '2021-03-04 06:26:23', '2021-03-04 06:26:23'),
(141, '(UTC 12:00) Solomon Is.', 'Asia/Magadan', '2021-03-04 06:26:23', '2021-03-04 06:26:23'),
(142, '(UTC 12:00) Wellington', 'Pacific/Auckland', '2021-03-04 06:26:23', '2021-03-04 06:26:23'),
(143, '(UTC 13:00) Nuku\'alofa', 'Pacific/Tongatapu', '2021-03-04 06:26:23', '2021-03-04 06:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trial_class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `admin_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `is_captured` tinyint(1) NOT NULL DEFAULT 1,
  `is_refunded` tinyint(1) NOT NULL DEFAULT 0,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('paypal','stripe','wallet') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `student_id`, `tutor_id`, `booking_request_id`, `trial_class_id`, `stripe_charge_id`, `paypal_id`, `amount`, `admin_amount`, `is_captured`, `is_refunded`, `is_paid`, `payment_method`, `created_at`, `updated_at`) VALUES
(24, 47, 41, NULL, 12, 'ch_3JX8OeFIQnHdLDIG1msFHIIr', NULL, 10.00, 0.00, 0, 1, 0, 'stripe', '2021-09-07 12:47:49', '2021-09-07 14:18:57'),
(25, 40, 41, 32, NULL, 'ch_3JXLW8FIQnHdLDIG10g1I1PQ', NULL, 510.00, 90.00, 0, 0, 0, 'stripe', '2021-09-08 02:48:28', '2021-09-08 02:48:28'),
(27, 40, 41, 36, NULL, 'ch_3JXfaOFIQnHdLDIG0PWyR6LS', NULL, 510.00, 90.00, 1, 0, 0, 'stripe', '2021-09-09 00:14:11', '2021-09-09 00:14:11'),
(28, 40, 42, 38, NULL, NULL, NULL, 68.00, 12.00, 1, 0, 0, 'wallet', '2021-09-13 02:38:11', '2021-09-13 02:38:11'),
(33, 40, 43, 43, NULL, NULL, 'PAYID-MFA2JIA5B027695ML7889826', 178.50, 31.50, 1, 0, 0, 'paypal', '2021-09-15 02:46:07', '2021-09-15 02:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `trial_classes`
--

CREATE TABLE `trial_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 For Pending , 1 For Accepted , 2 For Declined. 3 For Completed',
  `refund_status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 Default, 1 Requested, 2 Refunded',
  `cancel_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trial_classes`
--

INSERT INTO `trial_classes` (`id`, `tutor_id`, `student_id`, `date`, `start_time`, `end_time`, `amount`, `channel`, `channel_type`, `note`, `hours`, `status`, `refund_status`, `cancel_by`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(6, 41, 47, '2021-08-25 10:00:00', '9:00 AM', '10:00 AM', 0.00, 'https://zoom.us/postattendee?mn=aU1EepEm6Ot3gAxmeQmxA4P5fhuNIpfoZuAW.tD3SOqkIewPUpi2a&id=34', NULL, 'lksjlkfjsdlfkjsdlkfsdlf', '1.5', '1', '0', NULL, NULL, '2021-08-23 04:17:09', '2021-08-23 07:11:30'),
(7, 42, 40, '2021-08-30 08:00:00', '8:00 AM', '9:00 AM', 0.00, 'alikashi543211', NULL, 'Test description Test description Test description Test description Test description Test description', '1.5', '1', '0', NULL, NULL, '2021-08-27 06:40:47', '2021-08-27 07:04:26'),
(8, 43, 40, '2021-08-30 09:00:00', '9:00 AM', '10:00 AM', 0.00, 'alikashi5543211', NULL, 'Test accept trial request Test accept trial request Test accept trial request Test accept trial request', '1.5', '3', '0', NULL, NULL, '2021-08-28 02:43:07', '2021-08-28 03:44:31'),
(12, 41, 47, '2021-09-13 10:30:00', '10:30 AM', '11:00 AM', 10.00, 'testskypeid', 'Skype', 'Test note', '1', '1', '0', NULL, NULL, '2021-09-07 12:47:49', '2021-09-07 14:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `tutoring_sessions`
--

CREATE TABLE `tutoring_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_id` bigint(20) NOT NULL,
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_joined` tinyint(1) NOT NULL DEFAULT 0,
  `ended_at` timestamp NULL DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `status` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_certificates`
--

CREATE TABLE `tutor_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_experiance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_certificates`
--

INSERT INTO `tutor_certificates` (`id`, `tutor_id`, `date`, `name`, `institution`, `description`, `work_experiance`, `training`, `attachment`, `created_at`, `updated_at`) VALUES
(14, 41, '2018', 'test name', 'test institution', 'test description', 'test experiance', 'test training', 'uploads/tutors/41/1628838985-hq9T-certificate-attachment.pdf', '2021-08-13 14:16:25', '2021-08-13 14:16:25'),
(15, 42, '2018', 'Test', 'test', 'test', 'test', 'test', 'uploads/tutors/42/1628839445-LKLv-certificate-attachment.pdf', '2021-08-13 14:24:05', '2021-08-13 14:24:05'),
(16, 43, '2018', 'Test', 'test institution', 'test', 'test', 'test', 'uploads/tutors/43/1628839949-FJWT-certificate-attachment.pdf', '2021-08-13 14:32:29', '2021-08-13 14:32:29'),
(17, 44, '2017', 'Test', 'test', 'test', 'test', 'test', 'uploads/tutors/44/1628840365-wUcX-certificate-attachment.pdf', '2021-08-13 14:39:25', '2021-08-13 14:39:25'),
(18, 45, '2017', 'Test', 'test', 'test certificate', 'test', 'test', 'uploads/tutors/45/1628840726-qbo8-certificate-attachment.pdf', '2021-08-13 14:45:26', '2021-08-13 14:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_education`
--

CREATE TABLE `tutor_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_education`
--

INSERT INTO `tutor_education` (`id`, `tutor_id`, `from`, `to`, `degree`, `institution`, `attachment`, `created_at`, `updated_at`) VALUES
(2, 42, '2016', '2020', 'Bachular in Computer Science', 'Bahauddin  Zakariya University', NULL, '2021-08-24 03:15:14', '2021-08-24 07:06:58'),
(3, 42, '2017', '2019', 'Phd in Computer Science', 'Punjab University Lahore', 'uploads/tutors/42/1629798424-BA4q-education-attachment.pdf', '2021-08-24 04:47:04', '2021-08-24 04:47:04'),
(4, 42, '2020', NULL, 'Double Phd in CS', 'Howerd University', 'uploads/tutors/42/1629798646-O4eY-education-attachment.pdf', '2021-08-24 04:50:46', '2021-08-24 04:50:46'),
(6, 49, '2016', '2017', 'Computer Course', 'Edutech Center', 'uploads/tutors/49/1630143677-y4Ur-education-attachment.pdf', '2021-08-28 04:32:37', '2021-08-28 04:41:17'),
(7, 50, '2016', '2017', 'Computer course', 'Edutech', 'uploads/tutors/50/1630148477-1vDG-education-attachment.pdf', '2021-08-28 06:01:17', '2021-08-28 06:01:17'),
(8, 50, '2016', NULL, 'Master', 'BZU Multan', 'uploads/tutors/50/1630148982-m9mB-education-attachment.pdf', '2021-08-28 06:09:42', '2021-08-28 06:11:16'),
(9, 52, '2016', NULL, 'Test', 'Test', 'uploads/tutors/52/1630168539-iIQh-education-attachment.pdf', '2021-08-28 11:35:39', '2021-08-28 11:35:39'),
(10, 53, '2018', '2019', 'Test', 'test', 'uploads/tutors/53/1630675291-nHC9-education-attachment.pdf', '2021-09-03 08:21:31', '2021-09-03 08:21:31'),
(11, 41, '2018', '2019', 'Test', 'test', 'uploads/tutors/41/1630997418-PeCb-education-attachment.pdf', '2021-09-07 01:50:18', '2021-09-07 01:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_experiences`
--

CREATE TABLE `tutor_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_experiences`
--

INSERT INTO `tutor_experiences` (`id`, `tutor_id`, `from`, `to`, `designation`, `company`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 42, '2017', '2018', 'Web Developer', 'Comptech4All', NULL, '2021-08-24 04:23:15', '2021-08-24 04:23:15'),
(2, 42, '2018', NULL, 'Laravel Developer', 'Deviotech', NULL, '2021-08-24 04:30:27', '2021-08-24 06:26:27'),
(3, 42, '2019', NULL, 'Web Developer', 'Codex IT Solutions', NULL, '2021-08-24 04:41:02', '2021-08-24 04:41:02'),
(5, 49, '2017', NULL, 'Web Instructor', 'Comtech4All', NULL, '2021-08-28 04:33:21', '2021-08-28 04:45:21'),
(6, 50, '2018', '2019', 'Computer Teacher', 'Comtech4All', NULL, '2021-08-28 06:05:55', '2021-08-28 06:05:55'),
(7, 52, '2016', '2017', 'Test', 'Test', NULL, '2021-08-28 11:35:57', '2021-08-28 11:35:57'),
(8, 53, '2016', '2017', 'Web developer', 'Test Company', NULL, '2021-09-03 08:21:53', '2021-09-03 08:21:53'),
(9, 41, '2017', '2019', 'Web', 'web company', NULL, '2021-09-07 01:50:34', '2021-09-07 01:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_lessons`
--

CREATE TABLE `tutor_lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_lessons`
--

INSERT INTO `tutor_lessons` (`id`, `tutor_id`, `title`, `description`, `language`, `level_from`, `level_to`, `category`, `tag`, `availability`, `created_at`, `updated_at`) VALUES
(33, 41, 'Test teacher a lesson', 'Test teacher lesson slkfdjslkdf jlk', 'French', 'Beginner', 'Intermediate', 'Exam Preparation', 'Tag B', 1, '2021-08-13 14:15:32', '2021-09-07 01:47:17'),
(34, 42, 'Test Teacher b lesson', 'test description', 'French', 'Intermediate', 'Expert', 'Exam Preparation', 'Tag B', 1, '2021-08-13 14:23:42', '2021-08-13 14:23:42'),
(36, 44, 'Test Teacher D lesson', 'test', 'French', 'Beginner', 'Intermediate', 'Business', 'Tag B', 1, '2021-08-13 14:39:01', '2021-08-13 14:39:01'),
(37, 45, 'Test Teacher e Lesson', 'test', 'English', 'Beginner', 'Intermediate', 'Conversation practice', 'Tag B', 1, '2021-08-13 14:44:55', '2021-08-13 14:44:55'),
(38, 48, 'Test Lesson 6', 'Test lesson Test lesson Test lesson Test lesson', 'English', 'Beginner', 'Expert', 'Exam Preparation', 'Tag A', 1, '2021-08-27 13:22:08', '2021-08-27 13:22:08'),
(39, 49, 'Test Lesson Seven', 'Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description', 'English', 'Beginner', 'Expert', 'General', 'Tag C', 1, '2021-08-28 04:13:08', '2021-08-28 04:13:08'),
(40, 50, 'Test Lesson Eight', 'Test lesson eight description', 'English', 'Beginner', 'Intermediate', 'Kids', 'Tag B', 0, '2021-08-28 05:07:29', '2021-08-28 06:54:11'),
(41, 52, 'Test lesson nine', 'Test lesson nine description', 'English', 'Beginner', 'Intermediate', 'Business', 'Tag C', 1, '2021-08-28 11:26:54', '2021-08-28 12:11:41'),
(42, 52, 'Test Nine Lesson Two', 'Test Nine Lesson Two Description', 'English', 'Beginner', 'Intermediate', 'Business', 'Tag A', 1, '2021-08-28 11:51:03', '2021-08-28 11:57:19'),
(43, 53, 'Test', 'test description', 'French', 'Beginner', 'Expert', 'General', 'Test A', 1, '2021-09-03 08:21:02', '2021-09-03 08:21:02'),
(44, 41, 'Test Lesson 2', 'Test Lesson 2 Description', 'French', 'Beginner', 'Expert', 'Exam Preparation', 'Tag C', 1, '2021-09-07 01:52:21', '2021-09-07 01:59:32'),
(45, 42, 'Test Lesson 2', 'TEst', 'Spanish', 'Beginner', 'Expert', 'Exam Preparation', 'Tag C', 1, '2021-09-13 02:39:27', '2021-09-13 02:39:27'),
(47, 43, 'Test', 'Test Description', 'French', 'Intermediate', 'Intermediate', 'Business', 'Test A', 1, '2021-09-13 11:50:43', '2021-09-13 11:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_lesson_packages`
--

CREATE TABLE `tutor_lesson_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_lesson_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `interval` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_per_interval` float DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `package_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_lesson_packages`
--

INSERT INTO `tutor_lesson_packages` (`id`, `tutor_id`, `tutor_lesson_id`, `status`, `interval`, `package`, `amount_per_interval`, `total_amount`, `package_number`, `created_at`, `updated_at`) VALUES
(87, 42, 34, 1, '90 min', '1', 80, 80, '1', '2021-08-13 14:23:42', '2021-08-13 14:23:42'),
(89, 44, 36, 1, '90 min', '1', 65, 65, '1', '2021-08-13 14:39:01', '2021-08-13 14:39:01'),
(90, 45, 37, 1, '90 min', '1', 75, 75, '1', '2021-08-13 14:44:55', '2021-08-13 14:44:55'),
(91, 48, 38, 1, '90 min', '1', 30, 30, '1', '2021-08-27 13:22:08', '2021-08-27 13:22:08'),
(92, 49, 39, 1, '60 min', '5', 23, 115, '2', '2021-08-28 04:13:08', '2021-08-28 05:20:24'),
(154, 50, 40, 1, '90 min', '5', 30, 150, '1', '2021-08-28 06:54:11', '2021-08-28 06:54:11'),
(155, 50, 40, 0, '60 min', '1', 20, 20, '2', '2021-08-28 06:54:11', '2021-08-28 06:54:11'),
(156, 50, 40, 1, '30 min', '20', 30, 600, '3', '2021-08-28 06:54:11', '2021-08-28 06:54:11'),
(168, 52, 41, 0, '90 min', '1', 20, 20, '1', '2021-08-28 11:38:15', '2021-08-28 11:38:15'),
(169, 52, 41, 1, '30 min', '5', 30, 150, '3', '2021-08-28 11:38:15', '2021-08-28 11:38:15'),
(172, 52, 42, 1, '90 min', '5', 10, 50, '1', '2021-08-28 11:57:19', '2021-08-28 11:57:19'),
(173, 53, 43, 1, '90 min', '5', 20, 100, '1', '2021-09-03 08:21:02', '2021-09-03 08:21:02'),
(199, 41, 33, 1, '90 min', '1', 10, 10, '1', '2021-09-07 01:45:48', '2021-09-07 01:47:17'),
(200, 41, 33, 0, '60 min', NULL, NULL, NULL, '2', '2021-09-07 01:45:48', '2021-09-07 01:47:17'),
(201, 41, 33, 1, '30 min', '20', 30, 600, '3', '2021-09-07 01:45:48', '2021-09-07 01:47:17'),
(205, 41, 44, 1, '90 min', '10', 30, 300, '1', '2021-09-07 01:53:25', '2021-09-07 01:54:04'),
(206, 41, 44, 1, '60 min', '10', 40, 400, '2', '2021-09-07 01:53:25', '2021-09-07 01:54:04'),
(207, 41, 44, 0, '30 min', NULL, NULL, 0, '3', '2021-09-07 01:53:25', '2021-09-07 01:54:04'),
(208, 42, 45, 0, '90 min', NULL, NULL, 0, '1', '2021-09-13 02:39:27', '2021-09-13 02:39:27'),
(209, 42, 45, 1, '60 min', '5', 70, 350, '2', '2021-09-13 02:39:27', '2021-09-13 02:39:27'),
(210, 42, 45, 0, '30 min', NULL, NULL, NULL, '3', '2021-09-13 02:39:27', '2021-09-13 02:39:27'),
(214, 43, 47, 1, '90 min', '5', 12, 60, '1', '2021-09-13 11:50:43', '2021-09-13 11:50:43'),
(215, 43, 47, 1, '60 min', '20', 10.5, 210, '2', '2021-09-13 11:50:43', '2021-09-13 11:50:43'),
(216, 43, 47, 1, '30 min', '10', 40.4, 404, '3', '2021-09-13 11:50:43', '2021-09-13 11:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_profiles`
--

CREATE TABLE `tutor_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lives_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native_language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `step` enum('0','1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '1. General 2. Lesson 3. Certificate 4. Submitted',
  `is_approved` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_free_trial` tinyint(1) NOT NULL DEFAULT 0,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embed_video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hourly_rate` double(8,2) DEFAULT 0.00,
  `stripe_account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_boarded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_profiles`
--

INSERT INTO `tutor_profiles` (`id`, `user_id`, `image`, `country`, `lives_in`, `native_language`, `description`, `step`, `is_approved`, `is_free_trial`, `video_url`, `embed_video_url`, `hourly_rate`, `stripe_account`, `is_boarded`, `created_at`, `updated_at`) VALUES
(22, 41, 'uploads/tutors/41/1628838884-IS2t-profile-picture.png', 'Pakistan', 'Lahore', 'English', 'Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description. Test Teacher a description.', '3', '1', 1, NULL, 'https://www.youtube.com/embed/00K_St4e0BM', 10.00, NULL, 0, '2021-08-13 14:13:10', '2021-09-06 08:29:52'),
(23, 42, 'uploads/tutors/42/1628839336-zTct-profile-picture.png', 'Spain', 'Bermingom', 'Spanish', 'Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription Test Teacher b profile descsription', '3', '1', 1, NULL, NULL, 400.00, NULL, 0, '2021-08-13 14:21:17', '2021-08-26 23:03:11'),
(24, 43, 'uploads/tutors/43/1628839886-t81D-profile-picture.png', 'England', 'New York', 'English', 'Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description Test Teacher c Profile Description', '3', '1', 1, NULL, 'https://www.youtube.com/embed/00K_St4e0BM', 45.00, NULL, 0, '2021-08-13 14:30:05', '2021-09-01 00:12:12'),
(25, 44, 'uploads/tutors/44/1628840287-I4XA-profile-picture.png', 'France', 'New town', 'French', 'Test Teacher D profile description Test Teacher D profile description Test Teacher D profile description Test Teacher D profile description Test Teacher D profile description Test Teacher D profile description Test Teacher D profile description', '3', '1', 0, NULL, NULL, 65.00, NULL, 0, '2021-08-13 14:36:13', '2021-08-13 14:41:01'),
(26, 45, 'uploads/tutors/45/1628840657-ASi5-profile-picture.png', 'Australia', 'Johar Town', 'English', 'Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description. Test Teacher e Profile Description.', '3', '1', 0, NULL, NULL, 75.00, NULL, 0, '2021-08-13 14:43:21', '2021-08-13 14:46:19'),
(27, 48, 'uploads/tutors/48/1630086182-0r6P-profile-picture.png', 'Pakistan', 'Lahore', 'English', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test', '2', '0', 0, NULL, NULL, 40.00, NULL, 0, '2021-08-27 12:38:27', '2021-08-27 13:22:08'),
(28, 49, 'uploads/tutors/49/1630141940-vxzh-profile-picture.png', 'England', 'Bermingam', 'French', 'Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description Test description', '3', '0', 0, NULL, NULL, 340.00, NULL, 0, '2021-08-28 04:11:08', '2021-08-28 04:58:37'),
(29, 50, 'uploads/tutors/50/1630145049-5aDK-profile-picture.png', 'Spain', 'Aukland', 'Spanish', 'Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description', '3', '0', 0, NULL, NULL, 30.00, NULL, 0, '2021-08-28 05:01:22', '2021-08-28 06:06:17'),
(30, 52, 'uploads/tutors/52/1630167551-ldnj-profile-picture.png', 'New Zeland', 'Bermingam', 'English', 'Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description Test profile description', '3', '0', 0, NULL, NULL, 50.00, NULL, 0, '2021-08-28 11:17:55', '2021-08-28 11:36:03'),
(31, 53, 'uploads/tutors/53/1630675116-JyPQ-profile-picture.png', 'Pakistan', 'Lahore', 'Spanish', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test', '3', '0', 0, NULL, NULL, 27.00, NULL, 0, '2021-09-03 08:14:10', '2021-09-03 08:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_reviews`
--

CREATE TABLE `tutor_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_request_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trial_class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor_speaks`
--

CREATE TABLE `tutor_speaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tutor_speaks`
--

INSERT INTO `tutor_speaks` (`id`, `tutor_id`, `language`, `level`, `created_at`, `updated_at`) VALUES
(94, 44, 'French', 'B2: Upper Intermediate', '2021-08-13 14:38:07', '2021-08-13 14:38:07'),
(95, 44, 'Spanish', 'C1: Advanced', '2021-08-13 14:38:07', '2021-08-13 14:38:07'),
(96, 45, 'English', 'B2: Upper Intermediate', '2021-08-13 14:44:17', '2021-08-13 14:44:17'),
(97, 45, 'French', 'Native', '2021-08-13 14:44:17', '2021-08-13 14:44:17'),
(98, 48, 'English', 'C1: Advanced', '2021-08-27 12:43:02', '2021-08-27 12:43:02'),
(99, 48, 'French', 'Native', '2021-08-27 12:43:02', '2021-08-27 12:43:02'),
(100, 49, 'English', 'C1: Advanced', '2021-08-28 04:12:20', '2021-08-28 04:12:20'),
(101, 49, 'Spanish', 'Native', '2021-08-28 04:12:20', '2021-08-28 04:12:20'),
(102, 50, 'English', 'A1: Begineer', '2021-08-28 05:04:09', '2021-08-28 05:04:09'),
(103, 50, 'Spanish', 'C1: Advanced', '2021-08-28 05:04:09', '2021-08-28 05:04:09'),
(104, 52, 'English', 'B2: Upper Intermediate', '2021-08-28 11:19:11', '2021-08-28 11:19:11'),
(105, 43, 'English', 'Native', '2021-09-01 00:12:12', '2021-09-01 00:12:12'),
(106, 43, 'Spanish', 'A2: Elementry', '2021-09-01 00:12:12', '2021-09-01 00:12:12'),
(107, 53, 'English', 'B1: Intermediate', '2021-09-03 08:18:36', '2021-09-03 08:18:36'),
(108, 41, 'English', 'Native', '2021-09-06 08:29:52', '2021-09-06 08:29:52'),
(109, 41, 'Spanish', 'C1: Advanced', '2021-09-06 08:29:52', '2021-09-06 08:29:52'),
(110, 41, 'French', 'C2: Proficient', '2021-09-06 08:29:52', '2021-09-06 08:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('student','tutor','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `calendar_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `timezone`, `remember_token`, `role`, `calendar_id`, `created_at`, `updated_at`) VALUES
(39, 'Admin', 'admin', 'admin@languagelad.com', NULL, '$2y$10$iG/umFrLqOFKD.SnNjnp9.cCgY3oGXlRwlCJV8ofJ2EyKNxh.VvqK', NULL, NULL, 'admin', NULL, '2021-08-13 14:07:19', '2021-08-13 14:07:19'),
(40, 'Test Student a', 'test-student-arsl', 'teststudent1@gmail.com', NULL, '$2y$10$ebb9jUdBGdfaNm7j.SiUYOhHdcihQJq0RZrhTsC0uoD2BchD7ntza', 'Asia/Calcutta', NULL, 'student', NULL, '2021-08-13 14:11:14', '2021-08-28 02:29:21'),
(41, 'Test Teacher a', 'test-teacher-a', 'testteacher1@gmail.com', NULL, '$2y$10$eWeEMRqtVWP206vN10veEODtc1tMrzS.QJAzPH1umVuQyxc4j.1Cy', 'Asia/Karachi', NULL, 'tutor', NULL, '2021-08-13 14:13:10', '2021-09-06 08:29:52'),
(42, 'Test Teacher b', 'test-teacher-bIMk', 'testteacher2@gmail.com', NULL, '$2y$10$VuaNHf/FklJeiSAwHLMFlepRqqK2j7sxe7drUhsSnjQ6ZTCKFmZUq', 'Asia/Baghdad', NULL, 'tutor', NULL, '2021-08-13 14:21:17', '2021-08-28 02:29:21'),
(43, 'Test Teacher c', 'test-teacher-c', 'testteacher3@gmail.com', NULL, '$2y$10$WsI.xVALp35duqM8dgZKWOp4E9HRM2EwTLxCyXXEbBR4zltAGAMqq', 'US/Mountain', NULL, 'tutor', NULL, '2021-08-13 14:30:05', '2021-09-01 00:12:12'),
(44, 'Test Teacher d', 'test-teacher-dBYH', 'testteacher4@gmail.com', NULL, '$2y$10$91uMWzVUQdo00ivu0vXV8.DyzH1sUzaIvuieGJ.LzrkqWPUqLjWNu', 'Asia/Calcutta', NULL, 'tutor', NULL, '2021-08-13 14:36:13', '2021-08-28 02:29:21'),
(45, 'Test Teacher e', 'test-teacher-eztq', 'testteacher5@gmail.com', NULL, '$2y$10$Axen0g0kxtmMG.BUh0VB4.dJVKOSOo/PB5ElcJCFMrob/HR0ro.QK', 'America/Chihuahua', NULL, 'tutor', NULL, '2021-08-13 14:43:21', '2021-08-28 02:29:21'),
(46, 'Test Student b', 'test-student-bo46', 'teststudent2@gmail.com', NULL, '$2y$10$gNklg85CYtpq8v6VjB7GuOC6D.luzT/oxBy/VHjF1Z8UaRSn47NdC', 'America/Managua', NULL, 'student', NULL, '2021-08-13 14:49:00', '2021-08-28 02:29:21'),
(47, 'Test Student c', 'test-student-cLmI', 'teststudent3@gmail.com', '2021-08-23 00:26:18', '$2y$10$sLqEUPhnRfsH.tZnRL3Nfe4Nxvr9spmH7UYA.PKhbPBhh/f3mDWra', 'America/Chihuahua', NULL, 'student', NULL, '2021-08-23 00:25:17', '2021-08-28 02:29:21'),
(48, 'Test Teacher Five', 'test-teacher-fiveXaa', 'Testteacher6@gmail.com', NULL, '$2y$10$hyJzPsBpe7ChzZYzA5HtvuZvj/9mzPptoQ414znuKPTz2R3DUyXo2', 'America/Chihuahua', NULL, 'tutor', NULL, '2021-08-27 12:38:27', '2021-08-28 02:29:21'),
(49, 'Test Teacher Seven', 'test-teacher-sevenTs7', 'testteacher7@gmail.com', NULL, '$2y$10$.9W.TfjJcSa02tY6qk.1teGrQC94NKdWybP54F9esjBI7UUUL19rG', 'Australia/Hobart', NULL, 'tutor', NULL, '2021-08-28 04:11:08', '2021-08-28 04:11:08'),
(50, 'Test Teacher Eight', 'test-teacher-eightGow', 'testeacher8@gmail.com', NULL, '$2y$10$2gorYSh.Qg8xBbGpqCQJr.7sU26AY9IbJQNFOpSgCuArH.VsCpY3i', 'Europe/Prague', NULL, 'tutor', NULL, '2021-08-28 05:01:22', '2021-08-28 05:01:22'),
(51, 'Test student five', 'test-student-five1dW', 'teststudent5@gmail.com', NULL, '$2y$10$limbOeyZFohpByVNwRodRuzRgDkIh2oeYWGjglHfboRXPDZyRHK4e', 'US/Arizona', NULL, 'student', NULL, '2021-08-28 11:10:30', '2021-08-28 11:10:30'),
(52, 'Test Teacher Nine', 'test-teacher-nineAv5', 'testteacher9@gmail.com', NULL, '$2y$10$aVIJHBPj5Aq/T9kRdELOne7XU0CUabyUptzZFrzA8sY8iJIH9rPYq', 'America/Chihuahua', NULL, 'tutor', NULL, '2021-08-28 11:17:55', '2021-08-28 11:17:55'),
(53, 'Test Teacher Eleven', 'test-teacher-eleven7Te', 'testteacher11@gmail.com', NULL, '$2y$10$VeNtvz0od0R2hnOzcQsfIe5R0RlHZO969Bjh6AYChTPFfvsZNqd66', 'America/Mazatlan', NULL, 'tutor', NULL, '2021-09-03 08:14:10', '2021-09-03 08:14:10'),
(55, 'Test Student Eleven', 'test-student-eleven0Tt', 'teststudent11@gmail.com', NULL, '$2y$10$23tuJNP56LeyujtnZKWdUu1tSIH6y4TjQ8.qfJ/fxngRj6hVWv7g6', 'Asia/Karachi', NULL, 'student', NULL, '2021-09-16 23:31:14', '2021-09-16 23:31:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_requests`
--
ALTER TABLE `booking_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_requests_student_id_foreign` (`student_id`),
  ADD KEY `booking_requests_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`iso`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `day_slots`
--
ALTER TABLE `day_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `day_slots_time_table_id_foreign` (`time_table_id`),
  ADD KEY `day_slots_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_transfers`
--
ALTER TABLE `stripe_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stripe_transfers_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `student_packages`
--
ALTER TABLE `student_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_packages_tutor_id_foreign` (`tutor_id`),
  ADD KEY `student_packages_student_id_foreign` (`student_id`),
  ADD KEY `student_packages_tutor_lesson_id_foreign` (`tutor_lesson_id`),
  ADD KEY `student_packages_tutor_lesson_package_id_foreign` (`tutor_lesson_package_id`);

--
-- Indexes for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_speaks`
--
ALTER TABLE `student_speaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_speaks_student_id_foreign` (`student_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_tables_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_booking_request_id_foreign` (`booking_request_id`),
  ADD KEY `transactions_tutor_id_foreign` (`tutor_id`),
  ADD KEY `transactions_student_id_foreign` (`student_id`),
  ADD KEY `transactions_trial_class_id_foreign` (`trial_class_id`);

--
-- Indexes for table `trial_classes`
--
ALTER TABLE `trial_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trial_classes_tutor_id_foreign` (`tutor_id`),
  ADD KEY `trial_classes_student_id_foreign` (`student_id`);

--
-- Indexes for table `tutoring_sessions`
--
ALTER TABLE `tutoring_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tutoring_sessions_session_id_unique` (`session_id`),
  ADD UNIQUE KEY `tutoring_sessions_zoom_id_unique` (`zoom_id`),
  ADD KEY `tutoring_sessions_booking_request_id_foreign` (`booking_request_id`),
  ADD KEY `tutoring_sessions_tutor_id_foreign` (`tutor_id`),
  ADD KEY `tutoring_sessions_student_id_foreign` (`student_id`);

--
-- Indexes for table `tutor_certificates`
--
ALTER TABLE `tutor_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_certificates_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `tutor_education`
--
ALTER TABLE `tutor_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_education_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `tutor_experiences`
--
ALTER TABLE `tutor_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_experiences_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `tutor_lessons`
--
ALTER TABLE `tutor_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_lessons_tutor_id_foreign` (`tutor_id`);

--
-- Indexes for table `tutor_lesson_packages`
--
ALTER TABLE `tutor_lesson_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_lesson_packages_tutor_id_foreign` (`tutor_id`),
  ADD KEY `tutor_lesson_packages_tutor_lesson_id_foreign` (`tutor_lesson_id`);

--
-- Indexes for table `tutor_profiles`
--
ALTER TABLE `tutor_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_reviews_booking_request_id_foreign` (`booking_request_id`),
  ADD KEY `tutor_reviews_trial_class_id_foreign` (`trial_class_id`),
  ADD KEY `tutor_reviews_tutor_id_foreign` (`tutor_id`),
  ADD KEY `tutor_reviews_student_id_foreign` (`student_id`);

--
-- Indexes for table `tutor_speaks`
--
ALTER TABLE `tutor_speaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_speaks_tutor_id_foreign` (`tutor_id`);

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
-- AUTO_INCREMENT for table `booking_requests`
--
ALTER TABLE `booking_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `day_slots`
--
ALTER TABLE `day_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_transfers`
--
ALTER TABLE `stripe_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_packages`
--
ALTER TABLE `student_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `student_profiles`
--
ALTER TABLE `student_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_speaks`
--
ALTER TABLE `student_speaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `trial_classes`
--
ALTER TABLE `trial_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tutoring_sessions`
--
ALTER TABLE `tutoring_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor_certificates`
--
ALTER TABLE `tutor_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tutor_education`
--
ALTER TABLE `tutor_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tutor_experiences`
--
ALTER TABLE `tutor_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tutor_lessons`
--
ALTER TABLE `tutor_lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tutor_lesson_packages`
--
ALTER TABLE `tutor_lesson_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `tutor_profiles`
--
ALTER TABLE `tutor_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tutor_speaks`
--
ALTER TABLE `tutor_speaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_requests`
--
ALTER TABLE `booking_requests`
  ADD CONSTRAINT `booking_requests_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_requests_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `day_slots`
--
ALTER TABLE `day_slots`
  ADD CONSTRAINT `day_slots_time_table_id_foreign` FOREIGN KEY (`time_table_id`) REFERENCES `time_tables` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `day_slots_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stripe_transfers`
--
ALTER TABLE `stripe_transfers`
  ADD CONSTRAINT `stripe_transfers_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_packages`
--
ALTER TABLE `student_packages`
  ADD CONSTRAINT `student_packages_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_packages_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_packages_tutor_lesson_id_foreign` FOREIGN KEY (`tutor_lesson_id`) REFERENCES `tutor_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_packages_tutor_lesson_package_id_foreign` FOREIGN KEY (`tutor_lesson_package_id`) REFERENCES `tutor_lesson_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_profiles`
--
ALTER TABLE `student_profiles`
  ADD CONSTRAINT `student_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_speaks`
--
ALTER TABLE `student_speaks`
  ADD CONSTRAINT `student_speaks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_booking_request_id_foreign` FOREIGN KEY (`booking_request_id`) REFERENCES `booking_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_trial_class_id_foreign` FOREIGN KEY (`trial_class_id`) REFERENCES `trial_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trial_classes`
--
ALTER TABLE `trial_classes`
  ADD CONSTRAINT `trial_classes_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `trial_classes_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutoring_sessions`
--
ALTER TABLE `tutoring_sessions`
  ADD CONSTRAINT `tutoring_sessions_booking_request_id_foreign` FOREIGN KEY (`booking_request_id`) REFERENCES `booking_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutoring_sessions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutoring_sessions_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_certificates`
--
ALTER TABLE `tutor_certificates`
  ADD CONSTRAINT `tutor_certificates_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_education`
--
ALTER TABLE `tutor_education`
  ADD CONSTRAINT `tutor_education_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_experiences`
--
ALTER TABLE `tutor_experiences`
  ADD CONSTRAINT `tutor_experiences_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_lessons`
--
ALTER TABLE `tutor_lessons`
  ADD CONSTRAINT `tutor_lessons_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_lesson_packages`
--
ALTER TABLE `tutor_lesson_packages`
  ADD CONSTRAINT `tutor_lesson_packages_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutor_lesson_packages_tutor_lesson_id_foreign` FOREIGN KEY (`tutor_lesson_id`) REFERENCES `tutor_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_profiles`
--
ALTER TABLE `tutor_profiles`
  ADD CONSTRAINT `tutor_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_reviews`
--
ALTER TABLE `tutor_reviews`
  ADD CONSTRAINT `tutor_reviews_booking_request_id_foreign` FOREIGN KEY (`booking_request_id`) REFERENCES `booking_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutor_reviews_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutor_reviews_trial_class_id_foreign` FOREIGN KEY (`trial_class_id`) REFERENCES `trial_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tutor_reviews_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tutor_speaks`
--
ALTER TABLE `tutor_speaks`
  ADD CONSTRAINT `tutor_speaks_tutor_id_foreign` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
