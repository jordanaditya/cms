-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 03:43 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis_satu`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Preview Snapdragon 662: Smartphone Murah Jadi Makin Seru!', 'Pengguna smartphone, pastinya mengenal salah satu brand chipset mobile yang satu ini. Ya, Qualcomm sudah terkenal akan chipset Snapdragon untuk perangkat mobile miliknya, mulai dari kelas entry hingga flagship.', 'preview-snapdragon-662-smartphone-murah-jadi-makin-seru', 'images/Lyg40RQIakdiezQ0t793ybF1WC7JPd1vzKDcmPHM.jpeg', '2020-10-04 00:26:43', '2020-11-13 03:26:22'),
(2, 'Hands-On Samsung Galaxy Watch3: Premium, Kaya Fitur', 'Pada hari Rabu (16/9), Samsung Indonesia baru saja memperkenalkan secara resmi terkait produk smartwatch terbarunya, yakni Samsung Galaxy Watch3 yang sekaligus menjadi suksesor dari Galaxy Watch terdahulu.', 'hands-on-samsung-galaxy-watch3-premium-kaya-fitur', 'images/MccvwzqcaUoBKRDfTdHOic2bNi4M9Ias2wvCIVqv.jpeg', '2020-10-04 00:26:43', '2020-11-13 03:30:59'),
(3, 'Review Sennheiser CX 400BT TWS: Harga Tak Bohong!', 'Kali ini kita kedatangan earphone TWS untuk pengujian review yaitu Sennheiser CX 400BT. Ini adalah earphone terbaru dari Sennheiser, yang siap bersaing di kelas earphone true wireless kelas premium.', 'review-sennheiser-cx-400bt-tws', 'images/WMIDb39ll8Ozi7eOCmafN05L6TvScdaVElimi0Di.jpeg', '2020-10-04 00:26:43', '2020-11-13 03:34:17');

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
-- Table structure for table `komentars`
--

CREATE TABLE `komentars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentars`
--

INSERT INTO `komentars` (`id`, `nama`, `komen`, `created_at`, `updated_at`) VALUES
(1, 'Undertaker', 'I will Buy it', '2020-10-24 05:26:53', '2020-10-24 05:26:53'),
(2, 'qwe', 'qe', '2020-10-24 02:12:45', '2020-10-24 02:12:45'),
(3, 'qwe', 'qe', '2020-10-24 02:13:04', '2020-10-24 02:13:04'),
(4, 'Jordan', 'Wow', '2020-10-24 02:14:49', '2020-10-24 02:14:49'),
(5, 'Jordy', 'wah Mahal', '2020-10-24 04:34:37', '2020-10-24 04:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `komentar_satus`
--

CREATE TABLE `komentar_satus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar_satus`
--

INSERT INTO `komentar_satus` (`id`, `nama`, `komen`, `created_at`, `updated_at`) VALUES
(1, 'Jacob', 'I like Snapdragon', '2020-10-24 04:04:02', '2020-10-24 04:04:02'),
(2, 'Jordan', 'Mantap', '2020-10-24 05:21:31', '2020-10-24 05:21:31'),
(3, 'cena', 'sip', '2020-10-24 05:25:27', '2020-10-24 05:25:27'),
(4, 'Anto', 'Mantul', '2020-10-24 05:30:05', '2020-10-24 05:30:05'),
(5, 'Anton', 'Mantul', '2020-10-24 05:35:32', '2020-10-24 05:35:32'),
(6, 'rq', 'qew', '2020-10-24 06:26:51', '2020-10-24 06:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `komentar_tigas`
--

CREATE TABLE `komentar_tigas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `komen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar_tigas`
--

INSERT INTO `komentar_tigas` (`id`, `nama`, `komen`, `created_at`, `updated_at`) VALUES
(1, 'Endi', 'Mantap Bass nya', '2020-10-24 04:19:41', '2020-10-24 04:19:41'),
(2, 'Andi', 'SIp', '2020-10-24 05:35:08', '2020-10-24 05:35:08');

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
(4, '2020_10_04_002432_create_articles_table', 1),
(5, '2020_10_16_030714_create_nyoba_table', 2),
(6, '2020_10_24_051826_create_komentars_table', 3),
(7, '2020_10_24_105713_create_komentarsatus_tabel', 4),
(8, '2020_10_24_105859_create_komentarsatus_table', 5),
(9, '2020_10_24_110519_create_komentar_tigas_table', 6),
(10, '2020_11_06_071854_modif_table_users', 7);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, 'jordan', 'jordan@gmail.com', NULL, '$2y$10$ExLbAHlTcfj5F2PrTupuRe3B1LkJ6nvIToyJJ6QSjZFJoQ1nCiGZy', NULL, '2020-10-15 19:56:27', '2020-10-15 19:56:27', 'User'),
(2, 'administrator', 'admin@gmail.com', NULL, '$2y$10$0o36cwXgXDU2Ev/ahq07xua6.4mRX2JhnVlvZBy.LIRsHV.lypdvm', NULL, '2020-11-06 01:12:47', '2020-11-06 01:12:47', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentars`
--
ALTER TABLE `komentars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar_satus`
--
ALTER TABLE `komentar_satus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar_tigas`
--
ALTER TABLE `komentar_tigas`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentars`
--
ALTER TABLE `komentars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar_satus`
--
ALTER TABLE `komentar_satus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `komentar_tigas`
--
ALTER TABLE `komentar_tigas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
