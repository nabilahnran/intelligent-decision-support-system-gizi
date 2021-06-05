-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 06:16 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scpk`
--

-- --------------------------------------------------------

--
-- Table structure for table `balita`
--

CREATE TABLE `balita` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `anak_ke` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balita`
--

INSERT INTO `balita` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `nama_ibu`, `gender`, `anak_ke`) VALUES
(2, 'Balita Cantik', 'Depok', '2020-07-14', 'Wanita', 'P', 4),
(3, 'Habib', 'Purwokerto', '2020-07-06', 'Ratna', 'L', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dss_keanggotaan`
--

CREATE TABLE `dss_keanggotaan` (
  `id` int(10) NOT NULL,
  `batas_bawah` float NOT NULL,
  `batas_tengah` float NOT NULL,
  `batas_atas` float NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `id_variabel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dss_keanggotaan`
--

INSERT INTO `dss_keanggotaan` (`id`, `batas_bawah`, `batas_tengah`, `batas_atas`, `keterangan`, `id_variabel`) VALUES
(1, 7, 13, 13, 'ringan', 1),
(2, 7, 13, 19, 'sedang', 1),
(3, 13, 19, 19, 'berat', 1),
(4, 6, 12, 12, 'fase 1', 3),
(5, 6, 12, 24, 'fase 2', 3),
(6, 12, 24, 36, 'fase 3', 3),
(7, 24, 36, 48, 'fase 4', 3),
(8, 36, 48, 60, 'fase 5', 3),
(9, 49, 75, 75, 'rendah', 2),
(10, 49, 75, 101, 'agak panjang', 2),
(11, 75, 101, 101, 'panjang', 2),
(12, 7, 12, 12, 'ringan', 5),
(13, 7, 12, 18, 'sedang', 5),
(14, 12, 18, 18, 'berat', 5),
(15, 6, 12, 12, 'fase 1', 7),
(16, 6, 12, 24, 'fase 2', 7),
(17, 12, 24, 36, 'fase 3', 7),
(18, 24, 26, 48, 'fase 4', 7),
(19, 36, 48, 60, 'fase 5', 7),
(20, 48, 74, 74, 'rendah', 6),
(21, 48, 74, 100, 'agak panjang', 6),
(22, 74, 100, 100, 'panjang', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dss_variabel`
--

CREATE TABLE `dss_variabel` (
  `id` int(10) NOT NULL,
  `nama_variabel` varchar(255) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dss_variabel`
--

INSERT INTO `dss_variabel` (`id`, `nama_variabel`, `jenis_kelamin`) VALUES
(1, 'berat badan', 'L'),
(2, 'tinggi badan', 'L'),
(3, 'usia', 'L'),
(4, 'status gizi', 'L'),
(5, 'berat badan', 'P'),
(6, 'tinggi badan', 'P'),
(7, 'usia', 'P'),
(8, 'status gizi', 'P');

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
-- Table structure for table `kader`
--

CREATE TABLE `kader` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_04_123808_add_to_pemeriksaan', 2),
(4, '2014_10_12_100000_create_password_resets_table', 3),
(5, '2020_07_06_045842_dropl_to_pemeriksaan', 4);

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
-- Table structure for table `pemeriksaan`
--

CREATE TABLE `pemeriksaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_balita` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `usia` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `nilai_gizi` int(11) NOT NULL,
  `hasil_gizi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id`, `id_balita`, `jenis_kelamin`, `usia`, `berat_badan`, `tinggi_badan`, `nilai_gizi`, `hasil_gizi`, `created_at`, `updated_at`) VALUES
(8, 3, 'L', 15, 5, 70, 47, 'kurang', '2020-07-09 14:36:35', '2020-07-09 14:36:35');

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
(1, 'Avilia', 'w@gmail.com', NULL, '$2y$10$3hw3rRGy4Ff7BBHTQwUC.uU/sztlZK.pr0G073J/i/8U3IZzu0Mji', NULL, '2020-07-05 21:14:57', '2020-07-05 21:14:57'),
(2, 'Avilia Kusumaputeri Nugroho', 'dsalsabiela@gmail.com', NULL, '$2y$10$3nTpfu/hbzYrbw0K9PBybOlDG9eRV8XCg6R8tBIs9qWXMGNQHJ5/C', NULL, '2020-07-05 21:30:29', '2020-07-05 21:30:29'),
(3, 'dila', 'dila@gmail.com', NULL, '$2y$10$uZysXafCCulsOEaQr9AihOL/6YQClwgoTV0oa2PoufeT/c5snGFfy', NULL, '2020-07-08 10:49:40', '2020-07-08 10:49:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balita`
--
ALTER TABLE `balita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dss_keanggotaan`
--
ALTER TABLE `dss_keanggotaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_variabel` (`id_variabel`);

--
-- Indexes for table `dss_variabel`
--
ALTER TABLE `dss_variabel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kader`
--
ALTER TABLE `kader`
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
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_balita` (`id_balita`);

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
-- AUTO_INCREMENT for table `kader`
--
ALTER TABLE `kader`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dss_keanggotaan`
--
ALTER TABLE `dss_keanggotaan`
  ADD CONSTRAINT `dss_keanggotaan_ibfk_1` FOREIGN KEY (`id_variabel`) REFERENCES `dss_variabel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD CONSTRAINT `pemeriksaan_ibfk_1` FOREIGN KEY (`id_balita`) REFERENCES `balita` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
