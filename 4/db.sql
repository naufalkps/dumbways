-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2021 at 12:40 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_products`
--

CREATE TABLE `history_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtyChange` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_products`
--

INSERT INTO `history_products` (`id`, `product_id`, `user_id`, `qty`, `qtyChange`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10', '0', 'created product', '2021-02-06 04:17:30', '2021-02-06 04:17:30'),
(2, 2, 1, '10', '0', 'created product', '2021-02-06 04:18:45', '2021-02-06 04:18:45'),
(3, 3, 1, '10', '0', 'created product', '2021-02-06 04:21:52', '2021-02-06 04:21:52'),
(4, 4, 1, '10', '0', 'created product', '2021-02-06 04:28:57', '2021-02-06 04:28:57'),
(5, 5, 1, '5', '0', 'created product', '2021-02-06 04:36:02', '2021-02-06 04:36:02'),
(6, 4, 1, '10', '-1', 'decrease from transaction', '2021-02-06 04:37:49', '2021-02-06 04:37:49'),
(7, 6, 1, '2', '0', 'created product', '2021-02-06 04:38:44', '2021-02-06 04:38:44');

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
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_05_16_070107_create_products_table', 1),
(19, '2020_05_16_072227_create_transcations_table', 1),
(20, '2020_05_16_072533_create_product_transation_table', 1),
(21, '2020_05_16_120622_create_history_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `merk`, `price`, `image`, `qty`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Montain', 'Turbo', 20000000, 'uploads/images/16126102501.jpeg', 10, 'wertyuiowertybsdabsdkbas', 1, '2021-02-06 04:17:30', '2021-02-06 04:18:04'),
(2, 'Montain', 'Turbo', 20000000, 'uploads/images/16126103252.jpeg', 10, 'bsakdasbdoasbdboasdaob', 1, '2021-02-06 04:18:45', '2021-02-06 04:21:10'),
(3, 'Montain', 'Turbo', 20000000, 'uploads/images/16126105123.jpeg', 10, 'bjsdasjdbajsb', 1, '2021-02-06 04:21:52', '2021-02-06 04:25:13'),
(4, 'Montain', 'Turbo', 20000000, 'uploads/images/16126109374.jpeg', 9, 'jabsdjabsdjasbj', 1, '2021-02-06 04:28:57', '2021-02-06 04:37:49'),
(5, 'Montain', 'Montain', 20000000, 'uploads/images/16126113625.jpeg', 5, 'ksbdkabskdbaskdak', 1, '2021-02-06 04:36:02', '2021-02-06 04:36:02'),
(6, 'Montain', 'Montain', 20000000, 'uploads/images/16126115246.jpeg', 2, 'bsadkbaskdbak', 1, '2021-02-06 04:38:44', '2021-02-06 04:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_transation`
--

CREATE TABLE `product_transation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transation`
--

INSERT INTO `product_transation` (`id`, `product_id`, `invoices_number`, `qty`, `created_at`, `updated_at`) VALUES
(1, 4, 'INV-000001', 1, '2021-02-06 04:37:49', '2021-02-06 04:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `transcations`
--

CREATE TABLE `transcations` (
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pay` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transcations`
--

INSERT INTO `transcations` (`invoices_number`, `user_id`, `pay`, `total`, `created_at`, `updated_at`) VALUES
('INV-000001', 1, 20000000, 20000000, '2021-02-06 04:37:49', '2021-02-06 04:37:49');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jono', 'jono@gmail.com', NULL, '$2y$10$Xu7hRXhju7LGKkmVOb3H0OYNW21DpCIRlmsI69uQ/lPkDL4ZClhIW', NULL, '2021-02-06 04:16:38', '2021-02-06 04:16:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_products`
--
ALTER TABLE `history_products`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transation`
--
ALTER TABLE `product_transation`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `history_products`
--
ALTER TABLE `history_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_transation`
--
ALTER TABLE `product_transation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
