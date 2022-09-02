-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 سبتمبر 2022 الساعة 20:33
-- إصدار الخادم: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- بنية الجدول `adesess`
--

CREATE TABLE `adesess` (
  `id` bigint(20) NOT NULL,
  `street` varchar(255) NOT NULL,
  `flowr` varchar(255) NOT NULL,
  `building` varchar(255) NOT NULL,
  `flatt` varchar(255) NOT NULL,
  `nots` text NOT NULL,
  `creted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updted_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) NOT NULL,
  `name` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `gender` varchar(12) DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `name_en` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `brands`
--

INSERT INTO `brands` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`, `image`, `status`) VALUES
(1, 'apple', 'apple', '2022-08-27 10:42:54', '2022-09-02 12:20:04', 'apple.png', 1),
(3, 'asus', 'asus', '2022-09-02 12:26:04', NULL, 'asus.png', 1),
(4, 'dell', 'dell', '2022-09-02 12:42:43', '2022-09-02 12:43:07', 'dell.png', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `carts`
--

CREATE TABLE `carts` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `quintty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `catgories`
--

CREATE TABLE `catgories` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `catgories`
--

INSERT INTO `catgories` (`id`, `image`, `name_en`, `name_ar`, `created_at`, `updated_at`, `status`) VALUES
(2, 'image.jpg', 'elctronic', 'elctronic', '2022-08-27 11:30:18', '2022-09-02 12:00:46', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `cites`
--

CREATE TABLE `cites` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `discount` int(11) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `max_discount_value` int(11) NOT NULL,
  `max_usage,max_usage_per_user` int(11) NOT NULL,
  `mini_order` int(11) NOT NULL,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `discount` int(11) NOT NULL,
  `discount_type,` int(11) NOT NULL,
  `start_at` varchar(255) NOT NULL,
  `end_at` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `offers`
--

INSERT INTO `offers` (`id`, `title`, `Image`, `discount`, `discount_type,`, `start_at`, `end_at`, `created_at`, `updated_at`) VALUES
(1, '30%off', 'image.jpg', 30, 30, '1/9/2022', '10/9/2022', '2022-09-02 15:09:53', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `offers_prodacts`
--

CREATE TABLE `offers_prodacts` (
  `offer_id` bigint(20) NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `orice_after_descount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `delivered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `offer_id` bigint(20) NOT NULL,
  `prodact_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `status`, `delivered_at`, `created_at`, `updated_at`, `offer_id`, `prodact_id`) VALUES
(2, 24000, 1, '2022-09-02 15:10:38', '2022-09-02 15:10:38', NULL, 1, 1),
(3, 8000, 1, '2022-09-02 15:11:50', '2022-09-02 15:11:50', NULL, 1, 2);

-- --------------------------------------------------------

--
-- بنية الجدول `prodacts`
--

CREATE TABLE `prodacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `price` decimal(7,0) NOT NULL,
  `quintty` smallint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL,
  `details_en` text NOT NULL,
  `details_ar` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` mediumint(9) NOT NULL,
  `subcat_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `prodacts`
--

INSERT INTO `prodacts` (`id`, `name_en`, `name_ar`, `price`, `quintty`, `status`, `details_en`, `details_ar`, `image`, `code`, `subcat_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'iphone', 'iphone', '24000', 1, 1, 'Cellular technology	LTE\r\nScreen size	6.1 Inches\r\nWireless network technology	LTE\r\nMemory storage capacity	128 GB', 'Cellular technology	LTE\r\nScreen size	6.1 Inches\r\nWireless network technology	LTE\r\nMemory storage capacity	128 GB', 'iphone13.jpg', 1, 4, 1, '2022-09-02 12:39:30', NULL),
(2, 'dell laptop', 'dell laptop', '8000', 1, 1, 'DELL Vostro 3500 laptop - 11th Gen Intel core i3-1115G4, 4GB RAM, 1TB HDD, 15.6 Inch HD, Intel UHD Graphics, Ubuntu - Black, 2725619451514\r\n', 'DELL Vostro 3500 laptop - 11th Gen Intel core i3-1115G4, 4GB RAM, 1TB HDD, 15.6 Inch HD, Intel UHD Graphics, Ubuntu - Black, 2725619451514\r\n', 'dell.jpg', 2, 4, 4, '2022-09-02 12:48:16', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `prodacts_specs`
--

CREATE TABLE `prodacts_specs` (
  `prodact_id` bigint(20) UNSIGNED NOT NULL,
  `spec_id` bigint(20) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `regons`
--

CREATE TABLE `regons` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `adress_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `specs`
--

CREATE TABLE `specs` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- بنية الجدول `subcatogres`
--

CREATE TABLE `subcatogres` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `name_en` varchar(512) NOT NULL,
  `name_ar` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `catogery_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `subcatogres`
--

INSERT INTO `subcatogres` (`id`, `image`, `name_en`, `name_ar`, `created_at`, `updated_at`, `catogery_id`, `status`) VALUES
(4, 'image.jpg', 'labtop and mobile', 'labtop and mobile\n', '2022-08-27 11:31:23', '2022-09-02 12:01:32', 2, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(12) NOT NULL,
  `last_name` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'image.jpg',
  `verfaction_code` mediumint(5) DEFAULT NULL,
  `code_expired_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `email_verfied_at` timestamp NULL DEFAULT NULL,
  `creted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `image`, `verfaction_code`, `code_expired_at`, `status`, `email_verfied_at`, `creted_at`, `updated_at`, `gender`) VALUES
(1, 'gamal', 'mohamed', 'gamal5497@gmail.coom', '01287218674', '$2y$10$8Eqkka6TV5Igyt1ulSn/VOuSHdIm3WAhLxyhiL.1IfVrowvOFAx3S', 'image.jpg', 49413, NULL, 0, '2022-09-02 11:50:10', '2022-08-26 13:19:06', '2022-08-26 13:19:06', 'm'),
(2, 'gamal', 'mohamed', 'gimymail801@gmail.com', '01287218672', '$2y$10$BcRW72NVoZhAszI1qyYjnOXCZD2MBGgRmrtsM3FXWNMBNFXRnJF5O', 'image.jpg', 40860, NULL, 0, '2022-09-02 16:20:06', '2022-08-26 13:22:42', '2022-08-26 13:22:42', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adesess`
--
ALTER TABLE `adesess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `catgories`
--
ALTER TABLE `catgories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cites`
--
ALTER TABLE `cites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_prodacts`
--
ALTER TABLE `offers_prodacts`
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `prodact_id` (`prodact_id`);

--
-- Indexes for table `prodacts`
--
ALTER TABLE `prodacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`code`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `prodacts_specs`
--
ALTER TABLE `prodacts_specs`
  ADD KEY `prodact_id` (`prodact_id`),
  ADD KEY `spec_id` (`spec_id`);

--
-- Indexes for table `regons`
--
ALTER TABLE `regons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adress_id` (`adress_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcatogres`
--
ALTER TABLE `subcatogres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catogery_id` (`catogery_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adesess`
--
ALTER TABLE `adesess`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catgories`
--
ALTER TABLE `catgories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cites`
--
ALTER TABLE `cites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prodacts`
--
ALTER TABLE `prodacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `regons`
--
ALTER TABLE `regons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcatogres`
--
ALTER TABLE `subcatogres`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `adesess`
--
ALTER TABLE `adesess`
  ADD CONSTRAINT `adesess_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- القيود للجدول `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- القيود للجدول `offers_prodacts`
--
ALTER TABLE `offers_prodacts`
  ADD CONSTRAINT `offers_prodacts_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `offers_prodacts_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- القيود للجدول `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`);

--
-- القيود للجدول `prodacts`
--
ALTER TABLE `prodacts`
  ADD CONSTRAINT `prodacts_ibfk_1` FOREIGN KEY (`subcat_id`) REFERENCES `subcatogres` (`id`),
  ADD CONSTRAINT `prodacts_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- القيود للجدول `prodacts_specs`
--
ALTER TABLE `prodacts_specs`
  ADD CONSTRAINT `prodacts_specs_ibfk_1` FOREIGN KEY (`prodact_id`) REFERENCES `prodacts` (`id`),
  ADD CONSTRAINT `prodacts_specs_ibfk_2` FOREIGN KEY (`spec_id`) REFERENCES `specs` (`id`);

--
-- القيود للجدول `regons`
--
ALTER TABLE `regons`
  ADD CONSTRAINT `regons_ibfk_1` FOREIGN KEY (`adress_id`) REFERENCES `adesess` (`id`);

--
-- القيود للجدول `subcatogres`
--
ALTER TABLE `subcatogres`
  ADD CONSTRAINT `subcatogres_ibfk_1` FOREIGN KEY (`catogery_id`) REFERENCES `catgories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
