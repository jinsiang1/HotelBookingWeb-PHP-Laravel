-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 02:57 PM
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
-- Database: `hoteltest`
--
CREATE DATABASE IF NOT EXISTS `hoteltest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hoteltest`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'staff',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `username`, `name`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'staff1', 'ali', 'staff', '$2y$10$P29d/tKwyS7l3d5AYeD.teMjwNEuSZ4BvPKm9wy3/O0h0UxoDsXoa', NULL, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_11_081633_create_employees_table', 2),
(6, '2024_04_29_175553_add_gender_field_to_users', 3),
(8, '2024_04_21_181136_create_reviews_table', 4),
(9, '2024_04_21_115812_create_rooms_table', 5),
(10, '2024_04_21_174840_create_reservations_table', 6),
(11, '2024_04_29_203652_create_payments_table', 7),
(12, '2024_04_30_043551_add_room_i_d_field_to_reviews', 8),
(13, '2024_05_08_182334_create_notifications_table', 9),
(14, '2024_05_08_204514_add_reservation_i_d_to_reviews_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationID` bigint(20) UNSIGNED NOT NULL,
  `reviewID` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notificationID`, `reviewID`, `type`, `message`, `created_at`, `updated_at`) VALUES
(16, 18, 'review', 'New review created for room type: deluxe', '2024-05-11 22:42:07', '2024-05-11 22:42:07'),
(17, 19, 'review', 'New review created for room type: single', '2024-05-12 02:37:28', '2024-05-12 02:37:28'),
(18, 20, 'review', 'New review created for room type: single', '2024-05-12 04:51:16', '2024-05-12 04:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('johnlee@hotmail.com', '$2y$10$.nqT98.DU3m7fnr1TheIm.Df8Cmuafl1u.h06yuwgeIfQOpY9RABW', '2024-05-08 08:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` bigint(20) UNSIGNED NOT NULL,
  `reservationID` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `cardholderName` varchar(255) NOT NULL,
  `cardNumber` varchar(255) NOT NULL,
  `cardExp` varchar(255) NOT NULL,
  `cvv` varchar(255) NOT NULL,
  `billingAddress` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `reservationID`, `date`, `paymentMethod`, `cardholderName`, `cardNumber`, `cardExp`, `cvv`, `billingAddress`, `created_at`, `updated_at`) VALUES
(22, 28, '2024-05-11', 'credit_card', 'awdawd', 'xHqWWzNV2oo3Rt3n5D/O5jdwA9lPtLVUPjRda+DTCs+Udz1MwAG62Otuewe1EnPj', '02/29', 'eGV7HRAt+JVlOIAFQbwY5aJ+Xf6PxQGq5ydQlfMtFg4=', 'awdawd', '2024-05-11 04:24:35', '2024-05-11 04:24:35'),
(24, 30, '2024-05-12', 'credit_card', 'awdawd', '9UrJbOFTybiPRKIzeN1IfNsPjrMv7/IUNEjnzXuUnhunnHxgSjTwAsrA6AaEOTwx', '06/29', 'CLXln2qm7ThiTHS93tSmIrlFN/hyUVHVWP0JFE7lRRA=', 'awdawdawd', '2024-05-11 17:40:02', '2024-05-11 17:40:02'),
(25, 31, '2024-05-12', 'credit_card', 'awdawd', 'ovQHvyOqOTiQXjr6v8XN5IfIFC58TZFlGI7EKavuop1M6erATyl7a3T4d0WeuBkf', '06/29', 'EEFQ/T3mzy7LJEuRMHAnFuRHSUKRZ3XUhQgYCgHeb1Y=', 'awdadawd', '2024-05-11 23:22:22', '2024-05-11 23:22:22'),
(26, 32, '2024-05-12', 'credit_card', 'Yong wei xuan', 'iiD9soYLwGENkyOx8wHP9DjitlTZCsxAMW5dKf8wasZLAOy+s/vatdTHn9SMxN/G', '06/29', 'g8yTnn2NxJcJ5wfyIu1BDEX4eOYcFX5bnALUsTn9k08=', 'awdada', '2024-05-12 02:37:08', '2024-05-12 02:37:08'),
(27, 33, '2024-05-12', 'credit_card', 'Lee Kong Hang', 'mXErCU/eKmu78doQCsRzGowYN9Zgmc2Hei2vilrf+DKKO0Lep/aHdUJRaqT3BGk6', '04/29', '5BZq7qjkfK+MTQbyB6HWsKnLQ3llD3vTqGBPH7eA4m8=', 'awdawd', '2024-05-12 04:51:03', '2024-05-12 04:51:03');

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
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservationID` bigint(20) UNSIGNED NOT NULL,
  `roomID` bigint(20) UNSIGNED NOT NULL,
  `customerID` bigint(20) UNSIGNED NOT NULL,
  `checkInDate` date NOT NULL,
  `checkOutDate` date NOT NULL,
  `reservedRoomNumber` bigint(20) UNSIGNED NOT NULL,
  `totalPrice` decimal(8,2) NOT NULL,
  `service` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservationID`, `roomID`, `customerID`, `checkInDate`, `checkOutDate`, `reservedRoomNumber`, `totalPrice`, `service`, `created_at`, `updated_at`) VALUES
(28, 1, 1, '2024-05-22', '2024-05-25', 52, 330.00, 'Cleaning service', '2024-05-11 04:24:35', '2024-05-11 04:24:35'),
(30, 2, 1, '2024-05-11', '2024-05-14', 74, 450.00, 'Don\'t Disturb', '2024-05-11 17:40:01', '2024-05-11 17:40:01'),
(31, 1, 1, '2024-05-17', '2024-05-21', 7, 440.00, 'Cleaning service', '2024-05-11 23:22:22', '2024-05-11 23:22:22'),
(32, 1, 4, '2024-05-19', '2024-05-22', 42, 330.00, 'Cleaning service', '2024-05-12 02:37:08', '2024-05-12 02:37:08'),
(33, 1, 5, '2024-05-12', '2024-05-15', 45, 330.00, 'Cleaning service', '2024-05-12 04:51:02', '2024-05-12 04:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewID` bigint(20) UNSIGNED NOT NULL,
  `reservationID` bigint(20) UNSIGNED NOT NULL,
  `roomID` bigint(20) UNSIGNED NOT NULL,
  `rate` int(20) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewID`, `reservationID`, `roomID`, `rate`, `comment`, `created_at`, `updated_at`) VALUES
(18, 30, 2, 5, 'awdadawd', '2024-05-11 22:42:07', '2024-05-11 22:42:07'),
(19, 32, 1, 4, 'good hotel service with nice environment', '2024-05-12 02:37:28', '2024-05-12 02:37:28'),
(20, 33, 1, 5, 'DAMN M3', '2024-05-12 04:51:16', '2024-05-12 04:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `roomID` bigint(20) UNSIGNED NOT NULL,
  `pricePerNight` decimal(8,2) NOT NULL,
  `roomType` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`roomID`, `pricePerNight`, `roomType`, `created_at`, `updated_at`) VALUES
(1, 130.00, 'single', NULL, '2024-05-12 04:54:21'),
(2, 150.00, 'deluxe', NULL, NULL),
(3, 200.00, 'family', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abcabc', 'male', '0123456789', 'johnlee@hotmail.com', NULL, '$2y$10$P29d/tKwyS7l3d5AYeD.teMjwNEuSZ4BvPKm9wy3/O0h0UxoDsXoa', NULL, '2024-04-11 01:35:26', '2024-04-11 01:35:26'),
(2, 'customer1', 'female', '01234567443', 'abc@gmail.com', NULL, '$2y$10$mCzLahZxTZ4w6Lj3n0uYmO2PQW0TDAaT8YVMKBugna/EaHQ5xWLm2', NULL, '2024-05-07 14:47:57', '2024-05-07 14:47:57'),
(4, 'Yong wei xuan', 'female', '0123456789', 'yongww@gmail.com', NULL, '$2y$10$dsRvN.PkQNvHpqYi.84eueP49x2lTrMUXwpqStdNcHSLIvxxaweMS', NULL, '2024-05-12 02:36:32', '2024-05-12 02:36:32'),
(5, 'Lee Kong Kong', 'male', '0123456789', 'kongk@gmail.com', NULL, '$2y$10$SDHY4Kd7kjumEhF3ouZJHO2qXlPhwHvnVCjrzZIvY9qle3Vw/DAAe', NULL, '2024-05-12 04:47:30', '2024-05-12 04:51:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `notifications_reviewid_foreign` (`reviewID`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `payments_reservationid_foreign` (`reservationID`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationID`),
  ADD KEY `reservations_roomid_foreign` (`roomID`),
  ADD KEY `reservations_customerid_foreign` (`customerID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `reviews_roomid_foreign` (`roomID`),
  ADD KEY `reviews_reservationid_foreign` (`reservationID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`roomID`);

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
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `roomID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_reviewid_foreign` FOREIGN KEY (`reviewID`) REFERENCES `reviews` (`reviewID`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_reservationid_foreign` FOREIGN KEY (`reservationID`) REFERENCES `reservations` (`reservationID`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_customerid_foreign` FOREIGN KEY (`customerID`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_roomid_foreign` FOREIGN KEY (`roomID`) REFERENCES `rooms` (`roomID`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_reservationid_foreign` FOREIGN KEY (`reservationID`) REFERENCES `reservations` (`reservationID`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_roomid_foreign` FOREIGN KEY (`roomID`) REFERENCES `rooms` (`roomID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
