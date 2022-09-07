-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 10:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokolara`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL,
  `kelola_akun` tinyint(1) NOT NULL,
  `kelola_barang` tinyint(1) NOT NULL,
  `transaksi` tinyint(1) NOT NULL,
  `kelola_laporan` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `user`, `kelola_akun`, `kelola_barang`, `transaksi`, `kelola_laporan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, '2022-02-16 02:09:30', '2022-02-16 02:09:30'),
(2, 2, 0, 0, 1, 0, '2022-02-16 02:13:49', '2022-02-18 16:02:57'),
(3, 3, 0, 0, 1, 0, '2022-02-18 17:03:52', '2022-02-18 17:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `id_user`, `user`, `nama_kegiatan`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 'damara', 'transaksi', 1, '2022-02-16 02:12:36', '2022-02-16 02:12:36'),
(2, 2, 'kasir', 'transaksi', 1, '2022-02-16 02:15:28', '2022-02-16 02:15:28'),
(3, 1, 'damara', 'transaksi', 2, '2022-02-16 03:23:11', '2022-02-16 03:23:11'),
(4, 1, 'damara', 'pasok', 1, '2022-02-16 03:29:17', '2022-02-16 03:29:17'),
(5, 1, 'damara', 'transaksi', 1, '2022-02-18 15:18:13', '2022-02-18 15:18:13'),
(6, 1, 'damara', 'transaksi', 1, '2022-02-18 15:29:54', '2022-02-18 15:29:54'),
(7, 1, 'damara', 'transaksi', 1, '2022-02-18 15:46:17', '2022-02-18 15:46:17'),
(8, 1, 'damara', 'transaksi', 1, '2022-02-18 15:49:51', '2022-02-18 15:49:51'),
(9, 1, 'damara', 'transaksi', 1, '2022-02-18 16:17:55', '2022-02-18 16:17:55'),
(10, 1, 'damara', 'pasok', 1, '2022-02-18 16:20:23', '2022-02-18 16:20:23'),
(11, 3, 'Iksan', 'transaksi', 3, '2022-02-18 17:04:55', '2022-02-18 17:04:55'),
(12, 3, 'Iksan', 'transaksi', 1, '2022-02-18 17:07:48', '2022-02-18 17:07:48'),
(13, 1, 'damara', 'transaksi', 2, '2022-02-19 02:47:34', '2022-02-19 02:47:34');

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
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_toko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `nama_toko`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Toko Damara Toys', '081284818323', 'Jl. Raya Mustika Jaya Perumahan Griya Persada Elok Blok B 27. RT. 005/ RW.\r\n016.', NULL, '2022-02-18 15:19:01');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_22_230351_create_product_table', 1),
(5, '2020_05_26_114219_create_supply_table', 1),
(6, '2020_05_26_123200_create_trigger_supply', 1),
(7, '2020_06_03_202123_create_supply_system', 1),
(8, '2020_06_03_202129_create_transaction_table', 1),
(9, '2020_06_10_225325_create_access_table', 1),
(10, '2020_06_12_133440_create_activity_table', 1),
(11, '2020_06_15_205927_create_market_table', 1);

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
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berat_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` int(11) NOT NULL DEFAULT 15,
  `harga` bigint(20) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tersedia',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `kode_barang`, `jenis_barang`, `nama_barang`, `berat_barang`, `merek`, `stok`, `harga`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '123', 'Mainan', 'test', '20 kg', 'apa aja', 201, 2000, 'Tersedia', '2022-02-16 02:11:13', '2022-02-18 16:07:37'),
(2, '3423234', 'Alat Tulis', 'asgasdasd', '24 kg', 'fgssdf', 199, 4000, 'Tersedia', '2022-02-16 02:11:48', '2022-02-18 16:07:42'),
(3, '1342412341', 'Parabotan', 'gadasdas', ' kg', 'gasdafgasd', 51, 10000, 'Tersedia', '2022-02-18 16:14:46', '2022-02-18 16:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` bigint(20) NOT NULL,
  `id_pemasok` int(11) NOT NULL,
  `pemasok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `kode_barang`, `nama_barang`, `jumlah`, `harga_beli`, `id_pemasok`, `pemasok`, `created_at`, `updated_at`) VALUES
(1, '123', 'test', 2, 4000, 1, 'damara', '2022-02-16 03:29:17', '2022-02-18 16:07:37'),
(2, '1342412341', 'gadasdas', 50, 15000, 1, 'damara', '2022-02-18 16:20:23', '2022-02-18 16:21:49');

--
-- Triggers `supplies`
--
DELIMITER $$
CREATE TRIGGER `tg_pasok_barang` AFTER INSERT ON `supplies` FOR EACH ROW BEGIN
                UPDATE products SET stok = stok + NEW.jumlah WHERE kode_barang = NEW.kode_barang;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supply_systems`
--

CREATE TABLE `supply_systems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supply_systems`
--

INSERT INTO `supply_systems` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, '2022-02-18 16:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` bigint(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_barang` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `kembali` bigint(20) NOT NULL,
  `id_kasir` int(11) NOT NULL,
  `kasir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `kode_transaksi`, `kode_barang`, `nama_barang`, `harga`, `jumlah`, `total_barang`, `subtotal`, `diskon`, `total`, `bayar`, `kembali`, `id_kasir`, `kasir`, `created_at`, `updated_at`) VALUES
(1, 'T16022022091156', '123', 'test', 2000, 1, 2000, 2000, 0, 2000, 5000, 3000, 1, 'damara', '2022-02-16 02:12:36', '2022-02-18 16:07:37'),
(2, 'T16022022091409', '3423234', 'asgasdasd', 4000, 1, 4000, 4000, 10, 3600, 5000, 1400, 2, 'kasir', '2022-02-16 02:15:28', '2022-02-18 16:07:42'),
(3, 'T16022022102203', '3423234', 'asgasdasd', 4000, 5, 20000, 28000, 0, 28000, 50000, 22000, 1, 'damara', '2022-02-16 03:23:11', '2022-02-18 16:07:42'),
(4, 'T16022022102203', '123', 'test', 2000, 4, 8000, 28000, 0, 28000, 50000, 22000, 1, 'damara', '2022-02-16 03:23:11', '2022-02-18 16:07:37'),
(5, 'T18022022221802', '123', 'test', 2000, 1, 2000, 2000, 0, 2000, 5000, 3000, 1, 'damara', '2022-02-18 15:18:13', '2022-02-18 16:07:37'),
(6, 'T18022022221903', '3423234', 'asgasdasd', 4000, 1, 4000, 4000, 0, 4000, 5000, 1000, 1, 'damara', '2022-02-18 15:29:54', '2022-02-18 16:07:42'),
(7, 'T18022022224558', '123', 'test', 2000, 1, 2000, 2000, 1000, 1000, 5000, 4000, 1, 'damara', '2022-02-18 15:46:17', '2022-02-18 16:07:37'),
(8, 'T18022022224936', '3423234', 'asgasdasd', 4000, 1, 4000, 4000, 1000, 3000, 5000, 2000, 1, 'damara', '2022-02-18 15:49:51', '2022-02-18 16:07:42'),
(9, 'T18022022231718', '3423234', 'asgasdasd', 4000, 1, 4000, 4000, 1000, 3000, 3000, 0, 1, 'damara', '2022-02-18 16:17:55', '2022-02-18 16:17:55'),
(10, 'T19022022000411', '123', 'test', 2000, 1, 2000, 16000, 1000, 15000, 20000, 5000, 3, 'Iksan', '2022-02-18 17:04:55', '2022-02-18 17:04:55'),
(11, 'T19022022000411', '3423234', 'asgasdasd', 4000, 1, 4000, 16000, 1000, 15000, 20000, 5000, 3, 'Iksan', '2022-02-18 17:04:55', '2022-02-18 17:04:55'),
(12, 'T19022022000411', '1342412341', 'gadasdas', 10000, 1, 10000, 16000, 1000, 15000, 20000, 5000, 3, 'Iksan', '2022-02-18 17:04:55', '2022-02-18 17:04:55'),
(13, 'D19022022000728', '1342412341', 'gadasdas', 10000, 1, 10000, 10000, 2000, 8000, 10000, 2000, 3, 'Iksan', '2022-02-18 17:07:48', '2022-02-18 17:07:48'),
(14, 'D19022022094556', '3423234', 'asgasdasd', 4000, 2, 8000, 10000, 2000, 8000, 10000, 2000, 1, 'damara', '2022-02-19 02:47:34', '2022-02-19 02:47:34'),
(15, 'D19022022094556', '123', 'test', 2000, 1, 2000, 10000, 2000, 8000, 10000, 2000, 1, 'damara', '2022-02-19 02:47:34', '2022-02-19 02:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `role`, `foto`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'damara', 'admin', 'default.jpg', 'admin@gmail.com', NULL, 'admin', '$2y$10$ygPcGNIQkAcnDfMvuYst4OYQUGC9pO7xnYfnlZU.OnyMmGKHJGtKS', 'VAI6HvYk9Qw9nkA3D3zglpsGOfexXLqo1IPZKGmj2O14IHo5ZRB8K9DWwgCo', '2022-02-16 02:09:30', '2022-02-16 02:09:30'),
(2, 'kasir', 'kasir', 'default.jpg', 'kasir@gmail.com', NULL, 'kasir', '$2y$10$ywKHSmlIyiy0vkC33Mv9q.NaRLroSQSr27ODYMUO.6CUECYj4ev8G', 'ZuNO798N90Jk97CeIEVYn7hUdjU8cYMx3vWOuIOS1WXCxTQoDTEmGuHdUf2N', '2022-02-16 02:13:49', '2022-02-16 02:13:49'),
(3, 'Iksan', 'kasir', 'default.jpg', 'iksan@gmail.com', NULL, 'iksan', '$2y$10$rd2AUE2HpueWjInN6n3Az.mP6QPMAb6rJlOqu1kjHcGQZHLydgyDW', '3Z36kUaY5qPq9aTO9TD2Tgihba2Oe0KZyTa9nCEmEboFjleR8MotYbAyQYef', '2022-02-18 17:03:52', '2022-02-18 17:03:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
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
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supply_systems`
--
ALTER TABLE `supply_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supply_systems`
--
ALTER TABLE `supply_systems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
