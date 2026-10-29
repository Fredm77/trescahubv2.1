-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2026 at 07:05 PM
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
-- Database: `tresaca_rw_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `auditable_type` varchar(255) DEFAULT NULL,
  `auditable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`changes`)),
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `auditable_type`, `auditable_id`, `changes`, `meta`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'product.approved', 'App\\Models\\ShopProduct', 1, '{\"note\":null}', '[]', '127.0.0.1', '2026-10-22 12:32:52', '2026-10-22 12:32:52'),
(2, 2, 'product.published', 'App\\Models\\ShopProduct', 1, '[]', '[]', '127.0.0.1', '2026-10-22 12:33:05', '2026-10-22 12:33:05'),
(3, 2, 'product.created', 'App\\Models\\ShopProduct', 2, '{\"name\":\"Dell laptop\"}', '[]', '127.0.0.1', '2026-10-22 12:39:53', '2026-10-22 12:39:53'),
(4, 2, 'product.updated', 'App\\Models\\ShopProduct', 2, '{\"fields\":[\"product_name\",\"description\",\"price\",\"working_days\",\"status\",\"is_popular\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"acquisition_cost\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-23 05:58:29', '2026-10-23 05:58:29'),
(5, 2, 'product.approved', 'App\\Models\\ShopProduct', 2, '{\"note\":null}', '[]', '127.0.0.1', '2026-10-23 05:58:39', '2026-10-23 05:58:39'),
(6, 2, 'product.published', 'App\\Models\\ShopProduct', 2, '[]', '[]', '127.0.0.1', '2026-10-23 05:58:44', '2026-10-23 05:58:44'),
(7, 2, 'order.created', 'App\\Models\\Order', 1, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-23 06:07:20', '2026-10-23 06:07:20'),
(8, 2, 'order.created', 'App\\Models\\Order', 2, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-23 06:35:51', '2026-10-23 06:35:51'),
(9, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 2, '{\"from_vendor\":null,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 06:36:12', '2026-10-23 06:36:12'),
(10, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 2, '{\"from_vendor\":1,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 06:36:16', '2026-10-23 06:36:16'),
(11, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 2, '{\"from_vendor\":1,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 06:36:29', '2026-10-23 06:36:29'),
(12, 2, 'product.updated', 'App\\Models\\ShopProduct', 2, '{\"fields\":[\"product_name\",\"description\",\"price\",\"working_days\",\"status\",\"is_finished\",\"is_popular\",\"discount_enabled\",\"original_price\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"acquisition_cost\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-23 10:43:41', '2026-10-23 10:43:41'),
(13, 2, 'product.updated', 'App\\Models\\ShopProduct', 2, '{\"fields\":[\"product_name\",\"description\",\"price\",\"stock_unit\",\"working_days\",\"status\",\"is_finished\",\"is_popular\",\"discount_enabled\",\"original_price\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"acquisition_cost\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-23 12:20:23', '2026-10-23 12:20:23'),
(14, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 2, '{\"delta\":20,\"stock_after\":20,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-23 12:37:49', '2026-10-23 12:37:49'),
(15, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 1, '{\"delta\":40,\"stock_after\":40,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-23 12:42:26', '2026-10-23 12:42:26'),
(16, 2, 'order.payment_updated', 'App\\Models\\Order', 2, '{\"from\":\"pending\",\"to\":\"pending\"}', '[]', '127.0.0.1', '2026-10-23 12:53:32', '2026-10-23 12:53:32'),
(17, 2, 'order.payment_updated', 'App\\Models\\Order', 2, '{\"from\":\"pending\",\"to\":\"paid\"}', '[]', '127.0.0.1', '2026-10-23 12:53:35', '2026-10-23 12:53:35'),
(18, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 2, '{\"from_vendor\":1,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 12:53:46', '2026-10-23 12:53:46'),
(19, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 2, '{\"from_vendor\":1,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 12:53:54', '2026-10-23 12:53:54'),
(20, 2, 'request.allocated', 'App\\Models\\ProductRequest', 2, '{\"from_vendor\":null,\"to_vendor\":1}', '[]', '127.0.0.1', '2026-10-23 15:21:38', '2026-10-23 15:21:38'),
(21, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 1, '{\"delta\":20,\"stock_after\":60,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-23 15:34:34', '2026-10-23 15:34:34'),
(22, 2, 'inventory.request_approved', 'App\\Models\\InventoryAdjustmentRequest', 1, '{\"quantity_delta\":20}', '[]', '127.0.0.1', '2026-10-23 15:34:34', '2026-10-23 15:34:34'),
(23, 8, 'order.created', 'App\\Models\\Order', 3, '{\"total\":2000000}', '[]', '127.0.0.1', '2026-10-24 11:11:35', '2026-10-24 11:11:35'),
(24, 2, 'product.created', 'App\\Models\\ShopProduct', 3, '{\"name\":\"Bluetooth earphone\"}', '[]', '127.0.0.1', '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(25, 2, 'product.approved', 'App\\Models\\ShopProduct', 3, '{\"note\":\"Approved during creation.\"}', '[]', '127.0.0.1', '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(26, 2, 'product.published', 'App\\Models\\ShopProduct', 3, '[]', '[]', '127.0.0.1', '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(27, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 3, '{\"delta\":40,\"stock_after\":40,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-24 11:23:34', '2026-10-24 11:23:34'),
(28, 2, 'vendor.created', 'App\\Models\\Vendor', 2, '{\"business_name\":\"Edi sport\",\"user_id\":10}', '[]', '127.0.0.1', '2026-10-24 12:19:15', '2026-10-24 12:19:15'),
(29, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:19:15', '2026-10-24 12:19:15'),
(30, 2, 'vendor.status_changed', 'App\\Models\\Vendor', 2, '{\"from\":\"active\",\"to\":\"active\"}', '[]', '127.0.0.1', '2026-10-24 12:19:23', '2026-10-24 12:19:23'),
(31, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:19:24', '2026-10-24 12:19:24'),
(32, 2, 'vendor.status_changed', 'App\\Models\\Vendor', 2, '{\"from\":\"active\",\"to\":\"active\"}', '[]', '127.0.0.1', '2026-10-24 12:19:27', '2026-10-24 12:19:27'),
(33, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:19:27', '2026-10-24 12:19:27'),
(34, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:19:40', '2026-10-24 12:19:40'),
(35, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:19:44', '2026-10-24 12:19:44'),
(36, 2, 'user.created', 'App\\Models\\User', 11, '{\"roles\":[\"product-manager\",\"inventory-officer\"]}', '[]', '127.0.0.1', '2026-10-24 12:31:10', '2026-10-24 12:31:10'),
(37, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 12:37:35', '2026-10-24 12:37:35'),
(38, 2, 'order.payment_updated', 'App\\Models\\Order', 3, '{\"from\":\"pending\",\"to\":\"pending\"}', '[]', '127.0.0.1', '2026-10-24 12:53:01', '2026-10-24 12:53:01'),
(39, 2, 'order.payment_updated', 'App\\Models\\Order', 3, '{\"from\":\"pending\",\"to\":\"paid\"}', '[]', '127.0.0.1', '2026-10-24 12:53:11', '2026-10-24 12:53:11'),
(40, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 3, '{\"from_vendor\":null,\"to_vendor\":2}', '[]', '127.0.0.1', '2026-10-24 12:53:36', '2026-10-24 12:53:36'),
(41, 10, 'order.item_progress', 'App\\Models\\OrderItem', 3, '{\"to\":\"processing\"}', '[]', '127.0.0.1', '2026-10-24 12:54:44', '2026-10-24 12:54:44'),
(42, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 4, '{\"delta\":40,\"stock_after\":40,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-24 13:04:54', '2026-10-24 13:04:54'),
(43, 2, 'product.approved', 'App\\Models\\ShopProduct', 4, '{\"note\":null}', '[]', '127.0.0.1', '2026-10-24 13:04:54', '2026-10-24 13:04:54'),
(44, 2, 'product.published', 'App\\Models\\ShopProduct', 4, '[]', '[]', '127.0.0.1', '2026-10-24 13:05:20', '2026-10-24 13:05:20'),
(45, 2, 'product.published', 'App\\Models\\ShopProduct', 4, '[]', '[]', '127.0.0.1', '2026-10-24 13:06:01', '2026-10-24 13:06:01'),
(46, 2, 'product.updated', 'App\\Models\\ShopProduct', 4, '{\"fields\":[\"product_name\",\"description\",\"price\",\"stock_unit\",\"working_days\",\"status\",\"is_finished\",\"is_popular\",\"discount_enabled\",\"original_price\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-24 13:07:46', '2026-10-24 13:07:46'),
(47, 2, 'product.published', 'App\\Models\\ShopProduct', 4, '[]', '[]', '127.0.0.1', '2026-10-24 13:07:46', '2026-10-24 13:07:46'),
(48, 2, 'product.updated', 'App\\Models\\ShopProduct', 4, '{\"fields\":[\"product_name\",\"description\",\"price\",\"stock_unit\",\"working_days\",\"status\",\"is_finished\",\"is_popular\",\"discount_enabled\",\"original_price\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-24 13:09:30', '2026-10-24 13:09:30'),
(49, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:09:59', '2026-10-24 13:09:59'),
(50, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-24 13:13:25', '2026-10-24 13:13:25'),
(51, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:13:32', '2026-10-24 13:13:32'),
(52, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:25:12', '2026-10-24 13:25:12'),
(53, 10, 'vendor.profile_updated', 'App\\Models\\Vendor', 2, '{\"fields\":[\"business_name\",\"legal_name\",\"email\",\"phone\",\"district\",\"operating_location\",\"website_url\",\"address_notes\",\"partner_description\"],\"logo_updated\":true}', '[]', '127.0.0.1', '2026-10-24 13:33:42', '2026-10-24 13:33:42'),
(54, 10, 'vendor.profile_updated', 'App\\Models\\Vendor', 2, '{\"fields\":[\"business_name\",\"legal_name\",\"email\",\"phone\",\"district\",\"operating_location\",\"website_url\",\"address_notes\",\"partner_description\"],\"logo_updated\":true}', '[]', '127.0.0.1', '2026-10-24 13:34:01', '2026-10-24 13:34:01'),
(55, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:44:21', '2026-10-24 13:44:21'),
(56, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\"}', '[]', '127.0.0.1', '2026-10-24 13:44:46', '2026-10-24 13:44:46'),
(57, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:44:47', '2026-10-24 13:44:47'),
(58, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:44:52', '2026-10-24 13:44:52'),
(59, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:49:04', '2026-10-24 13:49:04'),
(60, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:58:50', '2026-10-24 13:58:50'),
(61, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\"}', '[]', '127.0.0.1', '2026-10-24 13:59:23', '2026-10-24 13:59:23'),
(62, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-24 13:59:23', '2026-10-24 13:59:23'),
(63, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 06:08:22', '2026-10-26 06:08:22'),
(64, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 06:08:56', '2026-10-26 06:08:56'),
(65, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 06:42:55', '2026-10-26 06:42:55'),
(66, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\"}', '[]', '127.0.0.1', '2026-10-26 06:43:16', '2026-10-26 06:43:16'),
(67, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 06:43:16', '2026-10-26 06:43:16'),
(68, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 06:43:38', '2026-10-26 06:43:38'),
(69, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 06:43:49', '2026-10-26 06:43:49'),
(70, 2, 'vendor.updated', 'App\\Models\\Vendor', 1, '{\"status_before\":\"active\",\"status_after\":\"active\"}', '[]', '127.0.0.1', '2026-10-26 06:44:02', '2026-10-26 06:44:02'),
(71, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 06:44:03', '2026-10-26 06:44:03'),
(72, 2, 'vendor.updated', 'App\\Models\\Vendor', 1, '{\"status_before\":\"active\",\"status_after\":\"active\"}', '[]', '127.0.0.1', '2026-10-26 06:44:37', '2026-10-26 06:44:37'),
(73, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 06:44:37', '2026-10-26 06:44:37'),
(74, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 06:45:00', '2026-10-26 06:45:00'),
(75, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 07:04:51', '2026-10-26 07:04:51'),
(76, 2, 'vendor.unpublished', 'App\\Models\\Vendor', 2, '{\"partner_display_status\":{\"from\":\"published\",\"to\":\"draft\"}}', '[]', '127.0.0.1', '2026-10-26 07:05:03', '2026-10-26 07:05:03'),
(77, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 07:05:03', '2026-10-26 07:05:03'),
(78, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 07:05:08', '2026-10-26 07:05:08'),
(79, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":false,\"public_branding_approved_after\":true}', '[]', '127.0.0.1', '2026-10-26 07:05:37', '2026-10-26 07:05:37'),
(80, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 07:05:37', '2026-10-26 07:05:37'),
(81, 2, 'vendor.published', 'App\\Models\\Vendor', 2, '{\"partner_display_status\":{\"from\":\"draft\",\"to\":\"published\"}}', '[]', '127.0.0.1', '2026-10-26 07:05:55', '2026-10-26 07:05:55'),
(82, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 07:05:55', '2026-10-26 07:05:55'),
(83, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 07:11:25', '2026-10-26 07:11:25'),
(84, 2, 'vendor.updated', 'App\\Models\\Vendor', 1, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":false,\"public_branding_approved_after\":true}', '[]', '127.0.0.1', '2026-10-26 07:11:41', '2026-10-26 07:11:41'),
(85, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 07:11:42', '2026-10-26 07:11:42'),
(86, 2, 'user.roles_updated', 'App\\Models\\User', 10, '{\"roles\":[\"delivery-officer\",\"vendor\"]}', '[]', '127.0.0.1', '2026-10-26 07:23:24', '2026-10-26 07:23:24'),
(87, 2, 'user.roles_updated', 'App\\Models\\User', 10, '{\"roles\":[\"vendor\"]}', '[]', '127.0.0.1', '2026-10-26 07:24:04', '2026-10-26 07:24:04'),
(88, 10, 'order.item_progress', 'App\\Models\\OrderItem', 3, '{\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-26 08:20:12', '2026-10-26 08:20:12'),
(89, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 3, '[]', '[]', '127.0.0.1', '2026-10-26 08:20:30', '2026-10-26 08:20:30'),
(90, 2, 'order.status_changed', 'App\\Models\\Order', 2, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-26 09:01:57', '2026-10-26 09:01:57'),
(91, 2, 'order.status_changed', 'App\\Models\\Order', 1, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-26 09:07:33', '2026-10-26 09:07:33'),
(92, 2, 'order.created', 'App\\Models\\Order', 4, '{\"total\":5000000}', '[]', '127.0.0.1', '2026-10-26 09:27:22', '2026-10-26 09:27:22'),
(93, 2, 'order.status_changed', 'App\\Models\\Order', 4, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-26 09:32:04', '2026-10-26 09:32:04'),
(94, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 09:39:36', '2026-10-26 09:39:36'),
(95, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 09:39:45', '2026-10-26 09:39:45'),
(96, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":true,\"public_branding_approved_after\":false}', '[]', '127.0.0.1', '2026-10-26 09:40:15', '2026-10-26 09:40:15'),
(97, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 09:40:15', '2026-10-26 09:40:15'),
(98, 2, 'vendor.updated', 'App\\Models\\Vendor', 2, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":false,\"public_branding_approved_after\":true}', '[]', '127.0.0.1', '2026-10-26 09:41:25', '2026-10-26 09:41:25'),
(99, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 09:41:26', '2026-10-26 09:41:26'),
(100, 2, 'order.created', 'App\\Models\\Order', 5, '{\"total\":2500000}', '[]', '127.0.0.1', '2026-10-26 09:48:30', '2026-10-26 09:48:30'),
(101, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 5, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-26 09:51:53', '2026-10-26 09:51:53'),
(102, 2, 'order.payment_recorded', 'App\\Models\\Order', 5, '{\"amount\":\"2500000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
(103, 2, 'order.status_changed', 'App\\Models\\Order', 5, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
(104, 10, 'order.item_progress', 'App\\Models\\OrderItem', 3, '{\"from\":\"ready_for_dispatch\",\"to\":\"completed\"}', '[]', '127.0.0.1', '2026-10-26 11:15:46', '2026-10-26 11:15:46'),
(105, NULL, 'order.created', 'App\\Models\\Order', 6, '{\"total\":420000}', '[]', '127.0.0.1', '2026-10-26 14:50:16', '2026-10-26 14:50:16'),
(106, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-26 15:05:31', '2026-10-26 15:05:31'),
(107, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-26 15:19:14', '2026-10-26 15:19:14'),
(108, NULL, 'order.created', 'App\\Models\\Order', 7, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-27 07:23:02', '2026-10-27 07:23:02'),
(111, NULL, 'order.created', 'App\\Models\\Order', 10, '{\"total\":2500000}', '[]', '127.0.0.1', '2026-10-27 07:49:58', '2026-10-27 07:49:58'),
(112, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 11, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
(113, 2, 'order.payment_recorded', 'App\\Models\\Order', 10, '{\"amount\":\"2500000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
(114, 2, 'order.status_changed', 'App\\Models\\Order', 10, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
(115, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 5, '[]', '[]', '127.0.0.1', '2026-10-27 12:36:22', '2026-10-27 12:36:22'),
(116, 10, 'order.item_progress', 'App\\Models\\OrderItem', 5, '{\"to\":\"processing\"}', '[]', '127.0.0.1', '2026-10-27 12:36:28', '2026-10-27 12:36:28'),
(117, 10, 'order.item_progress', 'App\\Models\\OrderItem', 5, '{\"from\":\"processing\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-27 12:36:37', '2026-10-27 12:36:37'),
(118, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 6, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(119, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 7, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(120, 2, 'order.payment_recorded', 'App\\Models\\Order', 6, '{\"amount\":\"420000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(121, 2, 'order.status_changed', 'App\\Models\\Order', 6, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(122, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 6, '{\"from_vendor\":2,\"to_vendor\":null,\"from_assignment_status\":\"assigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 12:38:07', '2026-10-27 12:38:07'),
(123, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 7, '{\"from_vendor\":2,\"to_vendor\":null,\"from_assignment_status\":\"assigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 12:38:07', '2026-10-27 12:38:07'),
(124, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-27 13:32:45', '2026-10-27 13:32:45'),
(125, 2, 'order.item_progress', 'App\\Models\\OrderItem', 11, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-27 14:02:12', '2026-10-27 14:02:12'),
(126, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 2, '{\"order_reference\":\"TH-261027-NXN3FE\",\"order_item_id\":11}', '[]', '127.0.0.1', '2026-10-27 14:02:12', '2026-10-27 14:02:12'),
(127, 2, 'order.item_progress', 'App\\Models\\OrderItem', 6, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-27 14:03:24', '2026-10-27 14:03:24'),
(128, 2, 'order.item_progress', 'App\\Models\\OrderItem', 7, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-27 14:03:24', '2026-10-27 14:03:24'),
(129, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 3, '{\"order_reference\":\"TH-261026-R5PZAY\",\"order_item_id\":6}', '[]', '127.0.0.1', '2026-10-27 14:03:24', '2026-10-27 14:03:24'),
(130, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 4, '{\"order_reference\":\"TH-261026-R5PZAY\",\"order_item_id\":7}', '[]', '127.0.0.1', '2026-10-27 14:03:24', '2026-10-27 14:03:24'),
(131, 2, 'delivery.preparation_updated', 'App\\Models\\DeliveryTask', 3, '[]', '[]', '127.0.0.1', '2026-10-27 14:05:01', '2026-10-27 14:05:01'),
(132, 2, 'delivery.dispatched', 'App\\Models\\DeliveryTask', 3, '{\"from\":\"assigned\",\"to\":\"in_transit\"}', '[]', '127.0.0.1', '2026-10-27 14:05:01', '2026-10-27 14:05:01'),
(133, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 4, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 14:05:34', '2026-10-27 14:05:34'),
(134, 2, 'order.payment_recorded', 'App\\Models\\Order', 4, '{\"amount\":\"5000000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-27 14:05:34', '2026-10-27 14:05:34'),
(135, NULL, 'order.created', 'App\\Models\\Order', 11, '{\"total\":800000}', '[]', '127.0.0.1', '2026-10-27 15:05:16', '2026-10-27 15:05:16'),
(136, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 12, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
(137, 2, 'order.payment_recorded', 'App\\Models\\Order', 11, '{\"amount\":\"800000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
(138, 2, 'order.status_changed', 'App\\Models\\Order', 11, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
(139, NULL, 'order.created', 'App\\Models\\Order', 12, '{\"total\":20000}', '[]', '127.0.0.1', '2026-10-27 15:15:57', '2026-10-27 15:15:57'),
(140, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-27 15:43:11', '2026-10-27 15:43:11'),
(141, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-27 15:43:17', '2026-10-27 15:43:17'),
(142, NULL, 'order.created', 'App\\Models\\Order', 13, '{\"total\":2520000}', '[]', '127.0.0.1', '2026-10-27 15:45:22', '2026-10-27 15:45:22'),
(143, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 14, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 15:48:28', '2026-10-27 15:48:28'),
(144, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 15, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 15:48:28', '2026-10-27 15:48:28'),
(145, 2, 'order.status_changed', 'App\\Models\\Order', 13, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 15:48:28', '2026-10-27 15:48:28'),
(146, 2, 'order.payment_recorded', 'App\\Models\\Order', 13, '{\"amount\":\"2520000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-27 15:48:57', '2026-10-27 15:48:57'),
(147, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 13, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-27 15:49:30', '2026-10-27 15:49:30'),
(148, 2, 'order.status_changed', 'App\\Models\\Order', 12, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 15:49:30', '2026-10-27 15:49:30'),
(149, NULL, 'order.created', 'App\\Models\\Order', 14, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-27 16:11:05', '2026-10-27 16:11:05'),
(150, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 16, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-27 16:11:40', '2026-10-27 16:11:40'),
(151, 2, 'order.status_changed', 'App\\Models\\Order', 14, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 16:11:56', '2026-10-27 16:11:56'),
(152, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 8, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-27 16:13:00', '2026-10-27 16:13:00'),
(153, 2, 'order.status_changed', 'App\\Models\\Order', 7, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-27 16:13:00', '2026-10-27 16:13:00'),
(154, 2, 'order.item_progress', 'App\\Models\\OrderItem', 14, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 08:17:09', '2026-10-28 08:17:09'),
(155, 2, 'order.item_progress', 'App\\Models\\OrderItem', 15, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 08:17:09', '2026-10-28 08:17:09'),
(156, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 5, '{\"order_reference\":\"TH-261027-H9648X\",\"order_item_id\":14}', '[]', '127.0.0.1', '2026-10-28 08:17:09', '2026-10-28 08:17:09'),
(157, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 6, '{\"order_reference\":\"TH-261027-H9648X\",\"order_item_id\":15}', '[]', '127.0.0.1', '2026-10-28 08:17:09', '2026-10-28 08:17:09'),
(158, 2, 'order.item_progress', 'App\\Models\\OrderItem', 4, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 08:18:12', '2026-10-28 08:18:12'),
(159, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 7, '{\"order_reference\":\"TH-261026-569GX6\",\"order_item_id\":4}', '[]', '127.0.0.1', '2026-10-28 08:18:12', '2026-10-28 08:18:12'),
(160, 2, 'delivery.preparation_updated', 'App\\Models\\DeliveryTask', 7, '[]', '[]', '127.0.0.1', '2026-10-28 08:18:33', '2026-10-28 08:18:33'),
(161, 2, 'delivery.dispatched', 'App\\Models\\DeliveryTask', 7, '{\"from\":\"assigned\",\"to\":\"in_transit\"}', '[]', '127.0.0.1', '2026-10-28 08:18:33', '2026-10-28 08:18:33'),
(162, 2, 'order.payment_recorded', 'App\\Models\\Order', 14, '{\"amount\":\"400000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 08:22:06', '2026-10-28 08:22:06'),
(163, 2, 'order.item_progress', 'App\\Models\\OrderItem', 16, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 08:22:39', '2026-10-28 08:22:39'),
(164, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 8, '{\"order_reference\":\"TH-261027-NVRNCE\",\"order_item_id\":16}', '[]', '127.0.0.1', '2026-10-28 08:22:39', '2026-10-28 08:22:39'),
(165, 10, 'delivery.prepared', 'App\\Models\\DeliveryTask', 9, '{\"order_reference\":\"TH-261026-H243FT\",\"order_item_id\":5}', '[]', '127.0.0.1', '2026-10-28 08:25:03', '2026-10-28 08:25:03'),
(166, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-28 09:57:03', '2026-10-28 09:57:03'),
(167, NULL, 'order.created', 'App\\Models\\Order', 15, '{\"total\":20000}', '[]', '127.0.0.1', '2026-10-28 10:07:24', '2026-10-28 10:07:24'),
(168, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 17, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 10:08:10', '2026-10-28 10:08:10'),
(169, 2, 'order.payment_recorded', 'App\\Models\\Order', 15, '{\"amount\":\"20000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 10:09:20', '2026-10-28 10:09:20'),
(170, 2, 'order.status_changed', 'App\\Models\\Order', 15, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 10:09:21', '2026-10-28 10:09:21'),
(171, 2, 'order.item_progress', 'App\\Models\\OrderItem', 17, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 10:09:38', '2026-10-28 10:09:38'),
(172, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 10, '{\"order_reference\":\"TH-261028-QCGLMT\",\"order_item_id\":17}', '[]', '127.0.0.1', '2026-10-28 10:09:38', '2026-10-28 10:09:38'),
(173, 2, 'delivery.preparation_updated', 'App\\Models\\DeliveryTask', 1, '[]', '[]', '127.0.0.1', '2026-10-28 10:10:03', '2026-10-28 10:10:03'),
(174, 2, 'delivery.dispatched', 'App\\Models\\DeliveryTask', 1, '{\"from\":\"assigned\",\"to\":\"in_transit\"}', '[]', '127.0.0.1', '2026-10-28 10:10:03', '2026-10-28 10:10:03'),
(175, 2, 'delivery.preparation_updated', 'App\\Models\\DeliveryTask', 10, '[]', '[]', '127.0.0.1', '2026-10-28 10:10:33', '2026-10-28 10:10:33'),
(176, 2, 'delivery.dispatched', 'App\\Models\\DeliveryTask', 10, '{\"from\":\"assigned\",\"to\":\"in_transit\"}', '[]', '127.0.0.1', '2026-10-28 10:10:33', '2026-10-28 10:10:33'),
(177, NULL, 'order.created', 'App\\Models\\Order', 16, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-28 10:12:11', '2026-10-28 10:12:11'),
(178, NULL, 'order.created', 'App\\Models\\Order', 17, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-28 10:12:30', '2026-10-28 10:12:30'),
(179, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 13, '[]', '[]', '127.0.0.1', '2026-10-28 10:37:03', '2026-10-28 10:37:03'),
(180, NULL, 'order.created', 'App\\Models\\Order', 18, '{\"total\":20000}', '[]', '127.0.0.1', '2026-10-28 10:48:04', '2026-10-28 10:48:04'),
(181, NULL, 'order.created', 'App\\Models\\Order', 19, '{\"total\":2500000}', '[]', '127.0.0.1', '2026-10-28 10:48:23', '2026-10-28 10:48:23'),
(182, NULL, 'order.created', 'App\\Models\\Order', 20, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-28 10:48:36', '2026-10-28 10:48:36'),
(183, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 22, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-28 10:51:18', '2026-10-28 10:51:18'),
(184, 2, 'order.status_changed', 'App\\Models\\Order', 20, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 10:51:18', '2026-10-28 10:51:18'),
(185, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 22, '[]', '[]', '127.0.0.1', '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
(186, 10, 'order.vendor_payment_recorded', 'App\\Models\\Order', 20, '{\"amount\":\"400000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
(187, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 21, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-28 11:00:39', '2026-10-28 11:00:39'),
(188, 2, 'order.status_changed', 'App\\Models\\Order', 19, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 11:00:39', '2026-10-28 11:00:39'),
(189, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 20, '{\"from_vendor\":null,\"to_vendor\":2,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"assigned\"}', '[]', '127.0.0.1', '2026-10-28 11:00:51', '2026-10-28 11:00:51'),
(190, 2, 'order.status_changed', 'App\\Models\\Order', 18, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 11:00:51', '2026-10-28 11:00:51'),
(191, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 19, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 11:15:38', '2026-10-28 11:15:38'),
(192, 2, 'order.payment_recorded', 'App\\Models\\Order', 17, '{\"amount\":\"400000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 11:15:52', '2026-10-28 11:15:52'),
(193, 2, 'order.status_changed', 'App\\Models\\Order', 17, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 11:15:52', '2026-10-28 11:15:52'),
(194, 2, 'order.item_progress', 'App\\Models\\OrderItem', 19, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 11:16:12', '2026-10-28 11:16:12'),
(195, 2, 'delivery.prepared', 'App\\Models\\DeliveryTask', 11, '{\"order_reference\":\"TH-261028-HRUGHD\",\"order_item_id\":19}', '[]', '127.0.0.1', '2026-10-28 11:16:12', '2026-10-28 11:16:12'),
(196, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 18, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 11:16:27', '2026-10-28 11:16:27'),
(197, 2, 'order.payment_recorded', 'App\\Models\\Order', 16, '{\"amount\":\"400000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 11:16:32', '2026-10-28 11:16:32'),
(198, 2, 'order.status_changed', 'App\\Models\\Order', 16, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 11:16:33', '2026-10-28 11:16:33'),
(199, NULL, 'order.created', 'App\\Models\\Order', 21, '{\"total\":20000}', '[]', '127.0.0.1', '2026-10-28 11:21:16', '2026-10-28 11:21:16'),
(200, NULL, 'order.created', 'App\\Models\\Order', 22, '{\"total\":400000}', '[]', '127.0.0.1', '2026-10-28 11:21:42', '2026-10-28 11:21:42'),
(201, NULL, 'order.created', 'App\\Models\\Order', 23, '{\"total\":2500000}', '[]', '127.0.0.1', '2026-10-28 11:21:53', '2026-10-28 11:21:53'),
(202, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 25, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 11:22:06', '2026-10-28 11:22:06'),
(203, 2, 'order.payment_recorded', 'App\\Models\\Order', 23, '{\"amount\":\"2500000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 11:22:57', '2026-10-28 11:22:57'),
(204, 2, 'order.status_changed', 'App\\Models\\Order', 23, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 11:22:58', '2026-10-28 11:22:58'),
(205, NULL, 'order.created', 'App\\Models\\Order', 24, '{\"total\":200000}', '[]', '127.0.0.1', '2026-10-28 11:23:41', '2026-10-28 11:23:41'),
(206, NULL, 'order.created', 'App\\Models\\Order', 25, '{\"total\":2500000}', '[]', '127.0.0.1', '2026-10-28 11:24:02', '2026-10-28 11:24:02'),
(207, 10, 'order.item_progress', 'App\\Models\\OrderItem', 22, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 11:46:52', '2026-10-28 11:46:52'),
(208, 10, 'delivery.prepared', 'App\\Models\\DeliveryTask', 12, '{\"order_reference\":\"TH-261028-34PS2F\",\"order_item_id\":22}', '[]', '127.0.0.1', '2026-10-28 11:46:52', '2026-10-28 11:46:52'),
(209, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 21, '[]', '[]', '127.0.0.1', '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
(210, 10, 'order.vendor_payment_recorded', 'App\\Models\\Order', 19, '{\"amount\":\"2500000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
(211, 10, 'order.item_accepted', 'App\\Models\\OrderItem', 12, '[]', '[]', '127.0.0.1', '2026-10-28 12:01:35', '2026-10-28 12:01:35'),
(212, 10, 'order.item_progress', 'App\\Models\\OrderItem', 12, '{\"from\":\"confirmed\",\"to\":\"ready_for_dispatch\"}', '[]', '127.0.0.1', '2026-10-28 12:01:35', '2026-10-28 12:01:35'),
(213, 10, 'delivery.prepared', 'App\\Models\\DeliveryTask', 13, '{\"order_reference\":\"TH-261027-L5WBR7\",\"order_item_id\":12}', '[]', '127.0.0.1', '2026-10-28 12:01:35', '2026-10-28 12:01:35'),
(214, 2, 'delivery.completed', 'App\\Models\\DeliveryTask', 10, '[]', '[]', '127.0.0.1', '2026-10-28 12:15:31', '2026-10-28 12:15:31'),
(215, 2, 'delivery.completed', 'App\\Models\\DeliveryTask', 7, '[]', '[]', '127.0.0.1', '2026-10-28 12:15:34', '2026-10-28 12:15:34'),
(216, 2, 'product.updated', 'App\\Models\\ShopProduct', 6, '{\"fields\":[\"product_name\",\"description\",\"price\",\"stock_unit\",\"working_days\",\"status\",\"is_finished\",\"is_popular\",\"discount_enabled\",\"original_price\",\"features\",\"specifications\",\"thumbnail\",\"images\",\"shop_category_id\",\"subcategory_id\",\"vendor_id\",\"internal_notes\",\"sku\",\"product_type\",\"condition\",\"tracks_inventory\",\"low_stock_threshold\"]}', '[]', '127.0.0.1', '2026-10-28 12:23:21', '2026-10-28 12:23:21'),
(217, NULL, 'order.created', 'App\\Models\\Order', 26, '{\"total\":440000}', '[]', '127.0.0.1', '2026-10-28 13:00:29', '2026-10-28 13:00:29'),
(218, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 28, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 13:42:30', '2026-10-28 13:42:30'),
(219, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 29, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 13:42:30', '2026-10-28 13:42:30'),
(220, 2, 'order.payment_recorded', 'App\\Models\\Order', 26, '{\"amount\":\"440000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 13:42:43', '2026-10-28 13:42:43'),
(221, 2, 'order.status_changed', 'App\\Models\\Order', 26, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 13:42:43', '2026-10-28 13:42:43'),
(222, 2, 'vendor.created', 'App\\Models\\Vendor', 3, '{\"business_name\":\"TRESCA SHOP+\",\"user_id\":13}', '[]', '127.0.0.1', '2026-10-28 14:00:16', '2026-10-28 14:00:16'),
(223, 2, 'vendor.viewed', 'App\\Models\\Vendor', 3, '[]', '[]', '127.0.0.1', '2026-10-28 14:00:16', '2026-10-28 14:00:16'),
(224, 2, 'vendor.updated', 'App\\Models\\Vendor', 3, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":false,\"public_branding_approved_after\":true}', '[]', '127.0.0.1', '2026-10-28 14:00:51', '2026-10-28 14:00:51'),
(225, 2, 'vendor.viewed', 'App\\Models\\Vendor', 3, '[]', '[]', '127.0.0.1', '2026-10-28 14:00:52', '2026-10-28 14:00:52'),
(226, 2, 'vendor.published', 'App\\Models\\Vendor', 3, '{\"partner_display_status\":{\"from\":\"draft\",\"to\":\"published\"}}', '[]', '127.0.0.1', '2026-10-28 14:01:18', '2026-10-28 14:01:18'),
(227, 2, 'vendor.viewed', 'App\\Models\\Vendor', 3, '[]', '[]', '127.0.0.1', '2026-10-28 14:01:18', '2026-10-28 14:01:18'),
(228, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-28 14:03:00', '2026-10-28 14:03:00'),
(229, 2, 'vendor.updated', 'App\\Models\\Vendor', 1, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":true,\"public_branding_approved_after\":false}', '[]', '127.0.0.1', '2026-10-28 14:03:11', '2026-10-28 14:03:11'),
(230, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-28 14:03:11', '2026-10-28 14:03:11'),
(231, 2, 'vendor.updated', 'App\\Models\\Vendor', 1, '{\"status_before\":\"active\",\"status_after\":\"active\",\"public_branding_approved_before\":false,\"public_branding_approved_after\":true}', '[]', '127.0.0.1', '2026-10-28 14:03:23', '2026-10-28 14:03:23'),
(232, 2, 'vendor.viewed', 'App\\Models\\Vendor', 1, '[]', '[]', '127.0.0.1', '2026-10-28 14:03:23', '2026-10-28 14:03:23'),
(233, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 27, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-28 14:20:30', '2026-10-28 14:20:30'),
(234, 2, 'order.payment_recorded', 'App\\Models\\Order', 25, '{\"amount\":\"2500000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-28 14:20:55', '2026-10-28 14:20:55'),
(235, 2, 'order.status_changed', 'App\\Models\\Order', 25, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-28 14:20:55', '2026-10-28 14:20:55'),
(236, 2, 'vendor.viewed', 'App\\Models\\Vendor', 3, '[]', '[]', '127.0.0.1', '2026-10-28 14:33:12', '2026-10-28 14:33:12'),
(237, 2, 'product.created', 'App\\Models\\ShopProduct', 7, '{\"name\":\"Dell laptop\"}', '[]', '127.0.0.1', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(238, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 7, '{\"delta\":5,\"stock_after\":5,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(239, 2, 'product.approved', 'App\\Models\\ShopProduct', 7, '{\"note\":\"Approved during creation.\"}', '[]', '127.0.0.1', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(240, 2, 'product.published', 'App\\Models\\ShopProduct', 7, '[]', '[]', '127.0.0.1', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(241, 2, 'product.created', 'App\\Models\\ShopProduct', 8, '{\"name\":\"Computer\"}', '[]', '127.0.0.1', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(242, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 8, '{\"delta\":10,\"stock_after\":10,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(243, 2, 'product.approved', 'App\\Models\\ShopProduct', 8, '{\"note\":\"Approved during creation.\"}', '[]', '127.0.0.1', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(244, 2, 'product.published', 'App\\Models\\ShopProduct', 8, '[]', '[]', '127.0.0.1', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(245, 2, 'product.approved', 'App\\Models\\ShopProduct', 8, '{\"note\":null}', '[]', '127.0.0.1', '2026-10-29 10:54:34', '2026-10-29 10:54:34'),
(246, NULL, 'order.created', 'App\\Models\\Order', 27, '{\"total\":12900000}', '[]', '127.0.0.1', '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
(247, 2, 'product.created', 'App\\Models\\ShopProduct', 9, '{\"name\":\"Headset\"}', '[]', '127.0.0.1', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(248, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 9, '{\"delta\":10,\"stock_after\":10,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(249, 2, 'product.approved', 'App\\Models\\ShopProduct', 9, '{\"note\":\"Approved during creation.\"}', '[]', '127.0.0.1', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(250, 2, 'product.published', 'App\\Models\\ShopProduct', 9, '[]', '[]', '127.0.0.1', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(251, NULL, 'order.created', 'App\\Models\\Order', 28, '{\"total\":20000}', '[]', '127.0.0.1', '2026-10-29 12:45:44', '2026-10-29 12:45:44'),
(252, 2, 'vendor.viewed', 'App\\Models\\Vendor', 2, '[]', '[]', '127.0.0.1', '2026-10-29 14:14:09', '2026-10-29 14:14:09'),
(253, 2, 'inventory.adjusted', 'App\\Models\\ShopProduct', 6, '{\"delta\":2,\"stock_after\":2,\"location_id\":null}', '[]', '127.0.0.1', '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
(254, NULL, 'order.created', 'App\\Models\\Order', 29, '{\"total\":25000}', '[]', '127.0.0.1', '2026-10-29 14:28:22', '2026-10-29 14:28:22'),
(255, NULL, 'order.created', 'App\\Models\\Order', 30, '{\"total\":25000}', '[]', '127.0.0.1', '2026-10-29 16:49:44', '2026-10-29 16:49:44'),
(256, 2, 'order.item_allocated', 'App\\Models\\OrderItem', 34, '{\"from_vendor\":null,\"to_vendor\":null,\"from_assignment_status\":\"unassigned\",\"to_assignment_status\":\"admin_handled\"}', '[]', '127.0.0.1', '2026-10-29 16:52:21', '2026-10-29 16:52:21'),
(257, 2, 'order.payment_recorded', 'App\\Models\\Order', 30, '{\"amount\":\"25000.00\",\"type\":\"full\",\"method\":\"cash_on_delivery\",\"from_status\":\"pending\",\"to_status\":\"paid\"}', '[]', '127.0.0.1', '2026-10-29 16:52:31', '2026-10-29 16:52:31'),
(258, 2, 'order.status_changed', 'App\\Models\\Order', 30, '{\"from\":\"pending_confirmation\",\"to\":\"confirmed\"}', '[]', '127.0.0.1', '2026-10-29 16:52:31', '2026-10-29 16:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `backgrounds`
--

CREATE TABLE `backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`title`)),
  `slug` varchar(255) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`description`)),
  `thumbnail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`thumbnail`)),
  `go_to` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`go_to`)),
  `button_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`button_text`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backgrounds`
--

INSERT INTO `backgrounds` (`id`, `title`, `slug`, `description`, `thumbnail`, `go_to`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '\"Explore Services\"', 'explore-services', '\"Access affordable, quality services designed for students, entrepreneurs, and growing businesses.\"', '\"assets\\/backgrounds\\/6adb5551e5f23_1792759121.jpg\"', NULL, '\"Explore Services\"', '2026-10-23 10:38:41', '2026-10-24 13:42:25'),
(2, '\"Your Link to Professional Services\"', 'your-link-to-professional-services', '\"Browse, order, and track professional services \\u2014 from engineering to events \\u2014 all in one place.\"', '\"assets\\/backgrounds\\/6adb668d8232d_1792763533.jpg\"', NULL, '\"Order Now\"', '2026-10-23 11:52:13', '2026-10-23 11:55:53'),
(3, '\"Shop Products & Digital Services\"', 'shop-products-digital-services', '\"Laptops, gadgets, airtime, software \\u2014 delivered to your door or activated instantly.\"', '\"assets\\/backgrounds\\/6adb674f9514c_1792763727.jpg\"', NULL, '\"Visit Shop\"', '2026-10-23 11:55:13', '2026-10-23 11:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-37b534276f7e3fd338d1825674231cbb', 'i:2;', 1793292644),
('laravel-cache-37b534276f7e3fd338d1825674231cbb:timer', 'i:1793292644;', 1793292644),
('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1793292538),
('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1793292538;', 1793292538),
('laravel-cache-8faa573104296f64f7bc1cfd2f6e81c3', 'i:1;', 1793278184),
('laravel-cache-8faa573104296f64f7bc1cfd2f6e81c3:timer', 'i:1793278184;', 1793278184),
('laravel-cache-dc44958e29ffba8b810d21377ae366b5', 'i:1;', 1793292738),
('laravel-cache-dc44958e29ffba8b810d21377ae366b5:timer', 'i:1793292738;', 1793292738);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classification_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`classification_name`)),
  `subcategory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`subcategory`)),
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `classification_name`, `subcategory`, `title`, `slug`, `description`, `created_at`, `updated_at`, `sort_order`) VALUES
(7, '[\"TRESCA GRAPHIC Ltd\"]', '[\"Branding\",\"Social\",\"Media\",\"Print\"]', 'Graphic Design & Media', 'graphic-design-media', 'Creative design, branding, and media production services for businesses and events.', '2026-03-11 11:53:29', '2026-03-11 12:11:37', 2),
(8, '[\"TRESCA ENGINEERING Ltd\"]', '[\"Design\",\"Supervision\",\"Consulting\",\"surverying\"]', 'Engineering & Technical Services', 'engineering-technical-services', 'Professional engineering, surveying, and technical consulting services for your projects.', '2026-03-11 12:13:18', '2026-03-11 16:27:02', 1),
(9, '[\"TRESCA CONSTRUCTION Ltd\"]', '[\"Inspection\",\"Electrical\",\"Plumbing\",\"Finishing\"]', 'Construction & Works', 'construction-works', 'Building construction, renovation, installation, and finishing works.', '2026-03-11 12:14:53', '2026-03-11 12:14:53', 3),
(10, '[\"TRESCA SHOP+ Ltd\"]', '[\"Computers\",\"Gadgets\",\"Digital\"]', 'Online Shopping & Supplies', 'online-shopping-supplies', 'Electronics, gadgets, accessories, and assisted online purchasing services.', '2026-03-11 12:16:26', '2026-03-11 12:16:26', 4),
(11, '[\"TRESCA REFRESHMENT Ltd\"]', '[\"Events\",\"Bulk\",\"Orders\",\"Meeting\",\"Express\"]', 'Refreshments & Event Support', 'refreshments-event-support', 'Beverages, catering support, and refreshment packages for events and meetings.', '2026-03-11 12:17:53', '2026-03-11 13:34:02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ctas`
--

CREATE TABLE `ctas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cta_category_title` varchar(255) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`items`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ctas`
--

INSERT INTO `ctas` (`id`, `cta_category_title`, `items`, `created_at`, `updated_at`) VALUES
(2, 'For Youth', '[{\"title\":\"For Youth\",\"description\":\"Discover opportunities, build skills, and access services designed for young professionals and students.\"}]', '2026-03-11 17:58:20', '2026-03-11 17:58:20'),
(3, 'For Partners & Clientss', '[{\"title\":\"For Partners & Clients\",\"description\":\"Partner with TRESCA GROUP or manage your client services through our streamlined platform.\"}]', '2026-03-11 17:58:53', '2026-03-11 17:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `cta_categories`
--

CREATE TABLE `cta_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cta_categories`
--

INSERT INTO `cta_categories` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(3, 'For Youth', 'for-youth', 'Discover opportunities, build skills, and access services designed for young professionals and students.', '2026-03-07 10:57:28', '2026-03-07 10:57:28'),
(4, 'For Partners & Clientss', 'for-partners-clientss', 'Partner with TRESCA GROUP or manage your client services through our streamlined platform.', '2026-03-07 10:57:48', '2026-03-07 12:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`, `name`, `email`, `password`, `phone`, `email_verified_at`, `remember_token`) VALUES
(1, 10, '2026-10-26 12:01:07', '2026-10-26 12:01:07', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, '2026-10-26 12:27:55', '2026-10-26 14:20:07', 'MUKIZA FRED', 'fred@gmail', '$2y$12$nxeK4wSsRjbqkcxnxpxB5.g6UAPtJqBd03oIeDFny2L7S6UUgnZ0W', '0788001002', NULL, NULL),
(3, 9, '2026-10-26 14:20:06', '2026-10-26 14:20:06', 'Customer', 'customer@example.com', '$2y$12$Vfg/oZMoybXQd3WyXwvv8e7Zb0YasVMpQTsI8DNuME0iX.pkGnbKS', '0788001008', '2026-10-22 09:28:16', NULL),
(5, NULL, '2026-10-26 14:22:54', '2026-10-26 14:22:54', 'MUKIZA FRED', 'fred@gmail.com', '$2y$12$2IqMu4oL.gWKyX2dy3WpXOYxoWDqYklt/lT6hgTkvNEU0TG6zT5jW', '0788888888', NULL, NULL),
(7, NULL, '2026-10-29 16:47:58', '2026-10-29 16:47:58', 'David', 'testone@example.com', '$2y$12$GK9qxdeo6jUttHnWyJOXhu8P.QZXueHyBPx.SlsFcIRMNSoVcozOu', '0788888888', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT 'Home',
  `recipient_name` varchar(255) NOT NULL,
  `recipient_phone` varchar(50) NOT NULL,
  `recipient_email` varchar(255) DEFAULT NULL,
  `address_line` text NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `delivery_instructions` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_addresses`
--

INSERT INTO `customer_addresses` (`id`, `customer_id`, `label`, `recipient_name`, `recipient_phone`, `recipient_email`, `address_line`, `city`, `district`, `delivery_instructions`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 2, 'Home', 'MUKIZA FRED', '0788001002', 'fred@gmail', 'Kigali, Rwanda', 'Kigali', 'Nyarugenge', NULL, 1, '2026-10-26 12:51:13', '2026-10-26 12:51:13'),
(2, 5, 'Home', 'MUKIZA FRED', '0788888888', 'fred@gmail.com', 'Kigali, Rwanda', 'Kigali', 'Nyarugenge', NULL, 1, '2026-10-28 13:35:50', '2026-10-28 13:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_reset_tokens`
--

CREATE TABLE `customer_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_attempts`
--

CREATE TABLE `delivery_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `result` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_tasks`
--

CREATE TABLE `delivery_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'assigned',
  `fulfillment_instructions` text DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `customer_message` varchar(255) DEFAULT NULL,
  `dispatched_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `proof_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_method` varchar(80) DEFAULT NULL,
  `courier_name` varchar(150) DEFAULT NULL,
  `delivery_phone` varchar(40) DEFAULT NULL,
  `vehicle_registration` varchar(40) DEFAULT NULL,
  `expected_delivery_at` date DEFAULT NULL,
  `tracking_reference` varchar(100) DEFAULT NULL,
  `delivery_notes` text DEFAULT NULL,
  `dispatch_proof_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_tasks`
--

INSERT INTO `delivery_tasks` (`id`, `reference`, `order_id`, `order_item_id`, `vendor_id`, `product_location_id`, `assigned_officer_id`, `delivery_officer_id`, `status`, `fulfillment_instructions`, `internal_notes`, `customer_message`, `dispatched_at`, `delivered_at`, `proof_path`, `created_at`, `updated_at`, `delivery_method`, `courier_name`, `delivery_phone`, `vehicle_registration`, `expected_delivery_at`, `tracking_reference`, `delivery_notes`, `dispatch_proof_path`) VALUES
(1, 'DL-261026-JHJQHA', 3, 3, 2, NULL, NULL, NULL, 'in_transit', NULL, NULL, NULL, '2026-10-28 10:10:03', NULL, NULL, '2026-10-26 11:15:46', '2026-10-28 10:10:03', NULL, 'Ritco', '0788838234', 'rac234b', '2026-10-28', NULL, NULL, NULL),
(2, 'DL-261027-ZVY39D', 10, 11, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-27 14:02:12', '2026-10-27 14:02:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'DL-261027-29DKHR', 6, 6, NULL, NULL, NULL, 2, 'in_transit', NULL, NULL, NULL, '2026-10-27 14:05:01', NULL, NULL, '2026-10-27 14:03:24', '2026-10-27 14:05:01', NULL, 'Ritco', '0788838234', 'rac234b', '2026-10-27', NULL, NULL, NULL),
(4, 'DL-261027-AABZ8K', 6, 7, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-27 14:03:24', '2026-10-27 14:03:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'DL-261028-A2D7GE', 13, 14, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 08:17:09', '2026-10-28 08:17:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'DL-261028-LUN4U5', 13, 15, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 08:17:09', '2026-10-28 08:17:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'DL-261028-J9AGBR', 4, 4, NULL, NULL, NULL, 2, 'delivered', NULL, NULL, NULL, '2026-10-28 08:18:33', '2026-10-28 12:15:34', NULL, '2026-10-28 08:18:12', '2026-10-28 12:15:34', NULL, 'Ritco', '0788838234', 'rac234b', '2026-10-28', NULL, NULL, NULL),
(8, 'DL-261028-4MYLUN', 14, 16, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 08:22:39', '2026-10-28 08:22:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'DL-261028-CG5FN2', 5, 5, 2, NULL, NULL, NULL, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 08:25:03', '2026-10-28 08:25:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'DL-261028-RMVDDU', 15, 17, NULL, NULL, NULL, 2, 'delivered', NULL, NULL, NULL, '2026-10-28 10:10:33', '2026-10-28 12:15:31', NULL, '2026-10-28 10:09:38', '2026-10-28 12:15:31', NULL, 'Ritco', '0788838234', 'rac234b', '2026-10-28', NULL, NULL, NULL),
(11, 'DL-261028-C87GUJ', 17, 19, NULL, NULL, NULL, 2, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 11:16:12', '2026-10-28 11:16:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'DL-261028-HC668D', 20, 22, 2, NULL, NULL, NULL, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 11:46:52', '2026-10-28 11:46:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'DL-261028-5YK4B7', 11, 12, 2, NULL, NULL, NULL, 'assigned', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 12:01:35', '2026-10-28 12:01:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `inventory_adjustment_requests`
--

CREATE TABLE `inventory_adjustment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `requested_by` bigint(20) UNSIGNED DEFAULT NULL,
  `reviewed_by` bigint(20) UNSIGNED DEFAULT NULL,
  `change_type` varchar(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `stock_before` int(10) UNSIGNED NOT NULL,
  `quantity_delta` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `reason` text NOT NULL,
  `review_note` text DEFAULT NULL,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_adjustment_requests`
--

INSERT INTO `inventory_adjustment_requests` (`id`, `shop_product_id`, `vendor_id`, `requested_by`, `reviewed_by`, `change_type`, `quantity`, `stock_before`, `quantity_delta`, `status`, `reason`, `review_note`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, 2, 'addition', 20, 40, 20, 'approved', 'purchase', NULL, '2026-10-23 15:34:34', '2026-10-23 15:30:39', '2026-10-23 15:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_adjustment_submissions`
--

CREATE TABLE `inventory_adjustment_submissions` (
  `token` char(36) NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_adjustment_submissions`
--

INSERT INTO `inventory_adjustment_submissions` (`token`, `shop_product_id`, `user_id`, `created_at`, `updated_at`) VALUES
('24fe8bee-b8ed-442f-aa7e-8cdd57dcb107', 1, 2, '2026-10-23 12:42:26', '2026-10-23 12:42:26'),
('43c2d06c-4833-451e-a096-08f3e151e46f', 2, 2, '2026-10-23 12:37:49', '2026-10-23 12:37:49'),
('de2d3bb7-5243-4004-875b-782f6c1488e8', 3, 2, '2026-10-24 11:23:34', '2026-10-24 11:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `product_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `quantity_delta` int(11) NOT NULL,
  `stock_before` int(10) UNSIGNED NOT NULL,
  `stock_after` int(10) UNSIGNED NOT NULL,
  `reserved_before` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reserved_after` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_movements`
--

INSERT INTO `inventory_movements` (`id`, `shop_product_id`, `product_location_id`, `user_id`, `type`, `quantity_delta`, `stock_before`, `stock_after`, `reserved_before`, `reserved_after`, `reference_type`, `reference_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, 2, 'addition', 20, 0, 20, 0, 0, NULL, NULL, 'Purchase of more computer', '2026-10-23 12:37:49', '2026-10-23 12:37:49'),
(2, 1, NULL, 2, 'addition', 40, 0, 40, 0, 0, NULL, NULL, 'Purchase of more computer', '2026-10-23 12:42:26', '2026-10-23 12:42:26'),
(3, 1, NULL, 2, 'adjustment', 20, 40, 60, 0, 0, 'App\\Models\\InventoryAdjustmentRequest', 1, 'Approved vendor request: purchase', '2026-10-23 15:34:34', '2026-10-23 15:34:34'),
(4, 2, NULL, 8, 'reservation', -5, 20, 20, 0, 5, 'App\\Models\\Order', 3, 'Reserved for App\\Models\\Order #3', '2026-10-24 11:11:35', '2026-10-24 11:11:35'),
(5, 3, NULL, 2, 'addition', 40, 0, 40, 0, 0, NULL, NULL, 'Purchase of more units', '2026-10-24 11:23:34', '2026-10-24 11:23:34'),
(6, 4, NULL, 2, 'initial_stock', 40, 0, 40, 0, 0, NULL, NULL, 'Initial stock approved with product submission.', '2026-10-24 13:04:54', '2026-10-24 13:04:54'),
(7, 4, NULL, 2, 'reservation', -2, 40, 40, 0, 2, 'App\\Models\\Order', 4, 'Reserved for App\\Models\\Order #4', '2026-10-26 09:27:22', '2026-10-26 09:27:22'),
(8, 4, NULL, 2, 'reservation', -1, 40, 40, 2, 3, 'App\\Models\\Order', 5, 'Reserved for App\\Models\\Order #5', '2026-10-26 09:48:30', '2026-10-26 09:48:30'),
(9, 3, NULL, NULL, 'reservation', -1, 40, 40, 0, 1, 'App\\Models\\Order', 6, 'Reserved for App\\Models\\Order #6', '2026-10-26 14:50:16', '2026-10-26 14:50:16'),
(10, 2, NULL, NULL, 'reservation', -1, 20, 20, 5, 6, 'App\\Models\\Order', 6, 'Reserved for App\\Models\\Order #6', '2026-10-26 14:50:16', '2026-10-26 14:50:16'),
(11, 2, NULL, NULL, 'reservation', -1, 20, 20, 6, 7, 'App\\Models\\Order', 7, 'Reserved for App\\Models\\Order #7', '2026-10-27 07:23:01', '2026-10-27 07:23:01'),
(12, 4, NULL, NULL, 'reservation', -1, 40, 40, 3, 4, 'App\\Models\\Order', 10, 'Reserved for App\\Models\\Order #10', '2026-10-27 07:49:58', '2026-10-27 07:49:58'),
(13, 2, NULL, NULL, 'reservation', -2, 20, 20, 7, 9, 'App\\Models\\Order', 11, 'Reserved for App\\Models\\Order #11', '2026-10-27 15:05:16', '2026-10-27 15:05:16'),
(14, 3, NULL, NULL, 'reservation', -1, 40, 40, 1, 2, 'App\\Models\\Order', 12, 'Reserved for App\\Models\\Order #12', '2026-10-27 15:15:57', '2026-10-27 15:15:57'),
(15, 3, NULL, NULL, 'reservation', -1, 40, 40, 2, 3, 'App\\Models\\Order', 13, 'Reserved for App\\Models\\Order #13', '2026-10-27 15:45:22', '2026-10-27 15:45:22'),
(16, 4, NULL, NULL, 'reservation', -1, 40, 40, 4, 5, 'App\\Models\\Order', 13, 'Reserved for App\\Models\\Order #13', '2026-10-27 15:45:22', '2026-10-27 15:45:22'),
(17, 2, NULL, NULL, 'reservation', -1, 20, 20, 9, 10, 'App\\Models\\Order', 14, 'Reserved for App\\Models\\Order #14', '2026-10-27 16:11:05', '2026-10-27 16:11:05'),
(18, 3, NULL, NULL, 'reservation', -1, 40, 40, 3, 4, 'App\\Models\\Order', 15, 'Reserved for App\\Models\\Order #15', '2026-10-28 10:07:24', '2026-10-28 10:07:24'),
(19, 2, NULL, NULL, 'reservation', -1, 20, 20, 10, 11, 'App\\Models\\Order', 16, 'Reserved for App\\Models\\Order #16', '2026-10-28 10:12:11', '2026-10-28 10:12:11'),
(20, 2, NULL, NULL, 'reservation', -1, 20, 20, 11, 12, 'App\\Models\\Order', 17, 'Reserved for App\\Models\\Order #17', '2026-10-28 10:12:30', '2026-10-28 10:12:30'),
(21, 3, NULL, NULL, 'reservation', -1, 40, 40, 4, 5, 'App\\Models\\Order', 18, 'Reserved for App\\Models\\Order #18', '2026-10-28 10:48:04', '2026-10-28 10:48:04'),
(22, 4, NULL, NULL, 'reservation', -1, 40, 40, 5, 6, 'App\\Models\\Order', 19, 'Reserved for App\\Models\\Order #19', '2026-10-28 10:48:23', '2026-10-28 10:48:23'),
(23, 2, NULL, NULL, 'reservation', -1, 20, 20, 12, 13, 'App\\Models\\Order', 20, 'Reserved for App\\Models\\Order #20', '2026-10-28 10:48:36', '2026-10-28 10:48:36'),
(24, 3, NULL, NULL, 'reservation', -1, 40, 40, 5, 6, 'App\\Models\\Order', 21, 'Reserved for App\\Models\\Order #21', '2026-10-28 11:21:16', '2026-10-28 11:21:16'),
(25, 2, NULL, NULL, 'reservation', -1, 20, 20, 13, 14, 'App\\Models\\Order', 22, 'Reserved for App\\Models\\Order #22', '2026-10-28 11:21:42', '2026-10-28 11:21:42'),
(26, 4, NULL, NULL, 'reservation', -1, 40, 40, 6, 7, 'App\\Models\\Order', 23, 'Reserved for App\\Models\\Order #23', '2026-10-28 11:21:53', '2026-10-28 11:21:53'),
(27, 1, NULL, NULL, 'reservation', -1, 60, 60, 0, 1, 'App\\Models\\Order', 24, 'Reserved for App\\Models\\Order #24', '2026-10-28 11:23:41', '2026-10-28 11:23:41'),
(28, 4, NULL, NULL, 'reservation', -1, 40, 40, 7, 8, 'App\\Models\\Order', 25, 'Reserved for App\\Models\\Order #25', '2026-10-28 11:24:02', '2026-10-28 11:24:02'),
(29, 3, NULL, NULL, 'reservation', -2, 40, 40, 6, 8, 'App\\Models\\Order', 26, 'Reserved for App\\Models\\Order #26', '2026-10-28 13:00:29', '2026-10-28 13:00:29'),
(30, 2, NULL, NULL, 'reservation', -1, 20, 20, 14, 15, 'App\\Models\\Order', 26, 'Reserved for App\\Models\\Order #26', '2026-10-28 13:00:29', '2026-10-28 13:00:29'),
(31, 7, NULL, 2, 'initial_stock', 5, 0, 5, 0, 0, NULL, NULL, 'Initial stock approved with product submission.', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(32, 8, NULL, 2, 'initial_stock', 10, 0, 10, 0, 0, NULL, NULL, 'Initial stock approved with product submission.', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(33, 8, NULL, NULL, 'reservation', -1, 10, 10, 0, 1, 'App\\Models\\Order', 27, 'Reserved for App\\Models\\Order #27', '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
(34, 4, NULL, NULL, 'reservation', -5, 40, 40, 8, 13, 'App\\Models\\Order', 27, 'Reserved for App\\Models\\Order #27', '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
(35, 9, NULL, 2, 'initial_stock', 10, 0, 10, 0, 0, NULL, NULL, 'Initial stock approved with product submission.', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(36, 9, NULL, NULL, 'reservation', -1, 10, 10, 0, 1, 'App\\Models\\Order', 28, 'Reserved for App\\Models\\Order #28', '2026-10-29 12:45:44', '2026-10-29 12:45:44'),
(37, 6, NULL, 2, 'adjustment', 2, 0, 2, 0, 0, NULL, NULL, NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
(38, 9, NULL, NULL, 'reservation', -1, 10, 10, 1, 2, 'App\\Models\\Order', 29, 'Reserved for App\\Models\\Order #29', '2026-10-29 14:28:21', '2026-10-29 14:28:21'),
(39, 9, NULL, NULL, 'reservation', -1, 10, 10, 2, 3, 'App\\Models\\Order', 30, 'Reserved for App\\Models\\Order #30', '2026-10-29 16:49:44', '2026-10-29 16:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(6, '2026_03_06_085116_create_services_table', 2),
(7, '2026_03_06_085224_create_categories_table', 3),
(9, '2026_03_06_110342_create_shopcategories_table', 5),
(10, '2026_03_06_112440_create_shopcategories_table', 6),
(12, '2026_03_06_121303_create_shop_products_table', 8),
(13, '2026_03_06_130012_create_shop_products_table', 9),
(20, '2026_03_07_112627_create_ctacategories_table', 16),
(21, '2026_03_07_113127_create_ctas_table', 17),
(22, '2026_03_07_113912_create_ctacategories_table', 18),
(23, '2026_03_07_115202_create_cta_table', 19),
(26, '0001_01_01_000000_create_users_table', 20),
(27, '0001_01_01_000001_create_cache_table', 20),
(28, '0001_01_01_000002_create_jobs_table', 20),
(29, '2026_03_05_160903_add_two_factor_columns_to_users_table', 20),
(30, '2026_03_05_160939_create_personal_access_tokens_table', 20),
(31, '2026_03_06_091128_create_categories_table', 20),
(32, '2026_03_06_114222_create_shopcategories_table', 20),
(33, '2026_03_06_131825_create_partners_table', 20),
(34, '2026_03_06_140210_create_shop_products_table', 20),
(35, '2026_03_06_144300_create_services_table', 20),
(36, '2026_03_06_205951_create_testimonials_table', 20),
(37, '2026_03_06_223203_create_works_table', 20),
(38, '2026_03_06_230650_create_backgrounds_table', 20),
(39, '2026_03_07_115630_create_ctacategories_table', 20),
(40, '2026_03_07_145404_create_servicerequests_table', 20),
(41, '2026_10_22_120000_add_marketplace_module', 20),
(42, '2026_10_23_090000_add_description_to_shop_categories_table', 21),
(43, '2026_10_23_120000_add_product_promotion_discount_and_finished_fields', 22),
(44, '2026_10_23_153700_add_stock_units_and_inventory_adjustment_requests', 23),
(45, '2026_10_23_160500_add_inventory_notes_and_submission_tokens', 24),
(46, '2026_10_23_170000_add_vendor_partner_profile_and_logo', 25),
(47, '2026_10_26_111700_create_order_payments_table', 26),
(48, '2026_10_26_160000_create_customer_profiles_and_addresses', 27),
(49, '2026_10_26_174500_add_customer_authentication', 28),
(50, '2026_10_27_110000_add_source_and_submission_key_to_orders', 29),
(51, '2026_10_27_150000_add_delivery_preparation_details_to_delivery_tasks', 30),
(52, '2026_10_29_130000_add_public_profile_fields_to_partners_table', 31),
(53, '2026_10_29_140000_create_product_variations_table', 32);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('006197c4-c2cf-44f2-bc9c-798439a3ec2f', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Request assigned to you\",\"body\":\"Request PR-261023-Q5QXJU needs your response.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-assigned-2-1\",\"internal\":true}', NULL, '2026-10-23 15:21:38', '2026-10-23 15:21:38'),
('006d1c78-0ade-4a16-8d42-4528e0be81dd', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261029-G2RK2G.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261029-G2RK2G\",\"dedupe_key\":\"order-30-pending_confirmation\",\"internal\":false}', NULL, '2026-10-29 16:49:44', '2026-10-29 16:49:44'),
('011f927e-3efc-48ec-9fe8-5ad6ea4828b0', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Product approved\",\"body\":\"Samsung Galaxy S26 is now approved.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/products\",\"dedupe_key\":\"product-approved-4-1792854294\",\"internal\":true}', NULL, '2026-10-24 13:04:54', '2026-10-24 13:04:54'),
('01292119-4f7c-4e38-8b1b-6dc7ccd50095', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted a request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-quotation_prepared\",\"internal\":true}', NULL, '2026-10-23 15:29:44', '2026-10-23 15:29:44'),
('01aeff63-d033-4521-90da-8d1d442ec898', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261027-L5WBR7\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-L5WBR7\",\"dedupe_key\":\"order-11-confirmed\",\"internal\":false}', NULL, '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
('020d53d5-15dd-4a51-b640-559b1e6c11c5', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order TH-261023-6C45XR\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261023-6C45XR\",\"dedupe_key\":\"order-2-confirmed\",\"internal\":false}', NULL, '2026-10-26 09:01:57', '2026-10-26 09:01:57'),
('0332000a-52f2-46e3-b31b-515bc5606327', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-42NJKF needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-42NJKF\",\"dedupe_key\":\"request-staff-3-submitted\",\"internal\":true}', NULL, '2026-10-27 07:22:15', '2026-10-27 07:22:15'),
('0380ab95-59cb-48c9-9c27-0a242ea7cbe3', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-42NJKF needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-42NJKF\",\"dedupe_key\":\"request-staff-3-submitted\",\"internal\":true}', NULL, '2026-10-27 07:22:15', '2026-10-27 07:22:15'),
('03f7fb0d-9cec-404c-af6c-d076889ecd20', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Delivery requested\",\"body\":\"Please review delivery details for order TH-261026-H243FT and create a delivery for your assigned products when they are ready. 1 product assigned.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"vendor-delivery-request-5-2\",\"internal\":true}', '2026-10-27 13:25:35', '2026-10-27 13:25:06', '2026-10-27 13:25:35'),
('03ff3f15-d1d7-409e-92b3-36c61b096128', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order TH-261026-569GX6\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-569GX6\",\"dedupe_key\":\"order-4-confirmed\",\"internal\":false}', NULL, '2026-10-26 09:32:04', '2026-10-26 09:32:04'),
('049165fb-f2ef-4dd3-9313-c89484691cb1', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-submitted\",\"internal\":true}', NULL, '2026-10-23 14:45:53', '2026-10-23 14:45:53'),
('04f5816e-c920-4726-b8ab-b4fc31b1efa2', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order TH-261026-H243FT\",\"body\":\"Preparation in progress\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-5-processing\",\"internal\":false}', NULL, '2026-10-27 12:36:28', '2026-10-27 12:36:28'),
('052c5e58-7b2b-46ee-8f14-76e92c7b740a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-AK4NRS\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-AK4NRS\",\"dedupe_key\":\"order-18-confirmed\",\"internal\":false}', NULL, '2026-10-28 11:00:51', '2026-10-28 11:00:51'),
('09b7b5d3-51a2-42e8-80be-919a724690d6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Computer is now approved. Approved during creation.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/computer\\/edit\",\"dedupe_key\":\"product-approved-8-1793278315\",\"internal\":true}', NULL, '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
('0c7fc73a-0078-4aab-bb31-006ae222ffdc', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 6, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('0c85ffc4-87c0-4ce9-bfc8-784181c53a05', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-XKE45G needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-XKE45G\",\"dedupe_key\":\"request-staff-1-submitted\",\"internal\":true}', NULL, '2026-10-23 06:21:19', '2026-10-23 06:21:19'),
('0eba51a4-e854-4321-a872-cf6953ada9b6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261023-6C45XR includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261023-6C45XR\",\"dedupe_key\":\"order-item-2-vendor-1\",\"internal\":true}', NULL, '2026-10-23 06:36:12', '2026-10-23 06:36:12'),
('0f39b576-f690-471a-a829-2ba73c1b3856', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261024-M4LHPD was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-accepted-3\",\"internal\":true}', NULL, '2026-10-26 08:20:30', '2026-10-26 08:20:30'),
('0fbd56af-7281-4b1c-851e-9ebbc456e6a6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261029-7ATWME.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261029-7ATWME\",\"dedupe_key\":\"order-29-pending_confirmation\",\"internal\":false}', NULL, '2026-10-29 14:28:22', '2026-10-29 14:28:22'),
('11cf677c-63ea-4a5a-aef0-5f1fcc5c2b7c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Dell laptop is now approved. Approved during creation.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/dell-laptop-1\\/edit\",\"dedupe_key\":\"product-approved-7-1793276920\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('12bdd48f-ad1e-4db5-9dbc-e6e45a0558d8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Headset is now approved. Approved during creation.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/headset\\/edit\",\"dedupe_key\":\"product-approved-9-1793285017\",\"internal\":true}', NULL, '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
('15095247-8170-4ec9-a2bc-5254cf31b4ff', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('152119e6-efaf-4563-bad0-a09d5bb9a2ec', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-CBWG2E needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-CBWG2E\",\"dedupe_key\":\"request-staff-4-submitted\",\"internal\":true}', NULL, '2026-10-27 07:52:17', '2026-10-27 07:52:17'),
('1925c45f-5d7f-4455-b5c8-ef21e5eae1e4', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-JQFJBQ.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-JQFJBQ\",\"dedupe_key\":\"order-26-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 13:00:29', '2026-10-28 13:00:29'),
('19aab0f8-58dd-4d0f-80b6-d0efe236f6d8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261027-HHSMXP includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-item-13-vendor-2\",\"internal\":true}', NULL, '2026-10-27 15:49:30', '2026-10-27 15:49:30'),
('1b1a50bd-e175-436f-be82-459acad3b289', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-ABMT95 was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-accepted-21\",\"internal\":true}', NULL, '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
('1c6864a5-f3df-4742-9f26-097d2ff26db4', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 4, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('1c836fbf-e6ad-41ab-b7c2-0b908410ea68', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261027-NVRNCE\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-NVRNCE\",\"dedupe_key\":\"order-14-confirmed\",\"internal\":false}', NULL, '2026-10-27 16:11:57', '2026-10-27 16:11:57'),
('22fab801-fb9a-4890-a32f-b5a54b4b4eb0', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261026-H243FT was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-accepted-5\",\"internal\":true}', NULL, '2026-10-27 12:36:22', '2026-10-27 12:36:22'),
('23dc4523-f62f-4755-a71d-172dc7f91d02', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261026-R5PZAY includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261026-R5PZAY\",\"dedupe_key\":\"order-item-6-vendor-2\",\"internal\":true}', NULL, '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
('24ef218b-c059-4ec3-9e69-ac0b7d05cae8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Product approved\",\"body\":\"HP computer is now approved.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/products\",\"dedupe_key\":\"product-approved-1-1792679572\",\"internal\":true}', NULL, '2026-10-22 12:32:52', '2026-10-22 12:32:52'),
('25d4b5c0-1960-4884-a9df-fc9bfd8621ae', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Inventory change awaiting approval\",\"body\":\"HP computer has a pending vendor stock change request.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory?request_status=pending\",\"dedupe_key\":\"inventory-request-1-pending\",\"internal\":true}', NULL, '2026-10-23 15:30:39', '2026-10-23 15:30:39'),
('29396c83-dc6e-4825-88c0-d40bface5914', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-QKRK2B.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-QKRK2B\",\"dedupe_key\":\"order-24-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 11:23:41', '2026-10-28 11:23:41'),
('297d081c-29ea-4e14-b30a-c53fd4979c31', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261028-AK4NRS includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261028-AK4NRS\",\"dedupe_key\":\"order-item-20-vendor-2\",\"internal\":true}', NULL, '2026-10-28 11:00:51', '2026-10-28 11:00:51'),
('2cb5eb6b-bf3b-46c1-8bfa-14b1d4239d68', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261027-HHSMXP\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-12-confirmed\",\"internal\":false}', NULL, '2026-10-27 15:49:30', '2026-10-27 15:49:30'),
('2d878005-175f-4aae-aaae-1c157e9f1f12', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('2ea63272-2a34-4130-a1e4-28a39cdd62a0', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Inventory request approved\",\"body\":\"The request for HP computer was approved.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/inventory\",\"dedupe_key\":\"inventory-request-1-approved\",\"internal\":false}', NULL, '2026-10-23 15:34:34', '2026-10-23 15:34:34'),
('32021b10-dd02-4204-b9b4-d52297ca1bff', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-Q28SCN.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-Q28SCN\",\"dedupe_key\":\"order-21-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 11:21:16', '2026-10-28 11:21:16'),
('328c6fb2-6942-489b-a106-9ded0d889c41', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261027-NXN3FE\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-NXN3FE\",\"dedupe_key\":\"order-10-confirmed\",\"internal\":false}', NULL, '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
('33f2d8b1-e679-42a2-b246-e345ea43b65b', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('35ff9101-7038-430e-8058-ebdcf938d736', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261027-HHSMXP was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-accepted-13\",\"internal\":true}', NULL, '2026-10-28 10:37:03', '2026-10-28 10:37:03'),
('3b3dd4e2-8872-463c-829a-d7749481fb80', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261026-R5PZAY includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261026-R5PZAY\",\"dedupe_key\":\"order-item-7-vendor-2\",\"internal\":true}', NULL, '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
('458f3479-2378-4c4a-9b93-56097f046273', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product waiting for review\",\"body\":\"Computer was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-8\",\"internal\":true}', NULL, '2026-10-29 10:53:21', '2026-10-29 10:53:21'),
('46d4453e-371a-4a30-91b1-b9f8f7fe1da8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261024-M4LHPD includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-item-3-vendor-2\",\"internal\":true}', NULL, '2026-10-24 12:53:36', '2026-10-24 12:53:36'),
('4ac3e5c7-fea2-4062-89eb-b16a76e8894e', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-YS3HLT.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-YS3HLT\",\"dedupe_key\":\"order-16-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:12:11', '2026-10-28 10:12:11'),
('4b9d5196-60d4-45ac-ba8b-f40e7692f392', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-submitted\",\"internal\":true}', NULL, '2026-10-23 14:45:53', '2026-10-23 14:45:53'),
('4f0fe0e1-9ba0-4a3d-bc6b-ff3955f0d131', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261026-R5PZAY\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-R5PZAY\",\"dedupe_key\":\"order-6-confirmed\",\"internal\":false}', NULL, '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
('5352650a-2de6-48fb-bc5f-226c56e3ebab', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 13, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('53d5e413-e273-4556-bfeb-2ea387ff3730', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 6, '{\"title\":\"Inventory change awaiting approval\",\"body\":\"HP computer has a pending vendor stock change request.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory?request_status=pending\",\"dedupe_key\":\"inventory-request-1-pending\",\"internal\":true}', NULL, '2026-10-23 15:30:39', '2026-10-23 15:30:39'),
('59fbf6ff-827f-48fe-b94a-5fd751f99c8c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 13, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:53', '2026-10-29 14:15:53'),
('5a0b7ff8-6f80-4605-80f1-c613bef47fb9', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-ABMT95 was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-accepted-21\",\"internal\":true}', NULL, '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
('5ab4b9ae-b70f-4bc3-a1a1-bf0b358f9a27', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Bluetooth earphone is now approved. Approved during creation.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/bluetooth-earphone\\/edit\",\"dedupe_key\":\"product-approved-3-1792848085\",\"internal\":true}', NULL, '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
('5dafbf31-3467-4868-a757-917d2bbb6dbe', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261026-H243FT includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-item-5-vendor-2\",\"internal\":true}', NULL, '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
('63841f3f-72f7-4168-bda4-5fb77dcd3b8c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-XKE45G needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-XKE45G\",\"dedupe_key\":\"request-staff-1-submitted\",\"internal\":true}', NULL, '2026-10-23 06:21:19', '2026-10-23 06:21:19'),
('6511f419-3729-49e5-b4db-c3574f8e9035', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-34PS2F was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-accepted-22\",\"internal\":true}', NULL, '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
('6582a7e6-bdfd-4c91-9507-9ed2843a2839', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-QCGLMT\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-QCGLMT\",\"dedupe_key\":\"order-15-confirmed\",\"internal\":false}', NULL, '2026-10-28 10:09:21', '2026-10-28 10:09:21'),
('6600d042-b03d-4da0-b899-edb75e4539c6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261027-HHSMXP was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-accepted-13\",\"internal\":true}', NULL, '2026-10-28 10:37:03', '2026-10-28 10:37:03'),
('66f408c2-875b-4848-a125-518117d2e01c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:53', '2026-10-29 14:15:53'),
('6ba1d590-6c5e-4e41-87fd-68db7f09452b', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product waiting for review\",\"body\":\"Phone covers was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-6\",\"internal\":true}', NULL, '2026-10-28 08:30:20', '2026-10-28 08:30:20'),
('70d50440-c25e-413c-8e27-9c8c399ce9c2', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261026-H243FT was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-accepted-5\",\"internal\":true}', NULL, '2026-10-27 12:36:22', '2026-10-27 12:36:22'),
('737dd7ab-9809-4057-975f-9eda36bd46ac', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261027-NXN3FE.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-NXN3FE\",\"dedupe_key\":\"order-10-pending_confirmation\",\"internal\":false}', NULL, '2026-10-27 07:49:58', '2026-10-27 07:49:58'),
('767fc173-4096-4d8c-b7cc-5260ca6b7e20', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('76ef3e8b-ea77-4d79-af55-2efe075582b8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-GMMH6W.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-GMMH6W\",\"dedupe_key\":\"order-25-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 11:24:02', '2026-10-28 11:24:02'),
('7bbcc718-ae26-4158-aad0-fc52212883f5', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Dell laptop is now approved.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/dell-laptop\\/edit\",\"dedupe_key\":\"product-approved-2-1792742319\",\"internal\":true}', NULL, '2026-10-23 05:58:40', '2026-10-23 05:58:40'),
('7e407624-d95a-4e98-8c24-d5868c47d020', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261023-NZGT7H.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261023-NZGT7H\",\"dedupe_key\":\"order-1-pending_confirmation\",\"internal\":false}', NULL, '2026-10-23 06:07:21', '2026-10-23 06:07:21'),
('7eadc7d7-e3b0-4810-8eaf-9a75db1788ea', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product waiting for review\",\"body\":\"Samsung Galaxy S26 was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-4\",\"internal\":true}', NULL, '2026-10-24 12:58:14', '2026-10-24 12:58:14'),
('7fe68e6b-e028-4884-9d0b-7613b7b60294', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-XKE45G needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-XKE45G\",\"dedupe_key\":\"request-staff-1-submitted\",\"internal\":true}', NULL, '2026-10-23 06:21:20', '2026-10-23 06:21:20'),
('82d5688f-03b8-4ebb-960f-5423e5b23f91', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261027-L5WBR7 includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261027-L5WBR7\",\"dedupe_key\":\"order-item-12-vendor-2\",\"internal\":true}', NULL, '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
('85211c85-b223-45a0-ae9d-798ad5544d69', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-ABMT95.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-19-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:48:23', '2026-10-28 10:48:23'),
('8a11fdc3-6504-4a38-96a8-934fba1063fc', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-submitted\",\"internal\":true}', NULL, '2026-10-23 14:45:53', '2026-10-23 14:45:53'),
('8a8a9ef5-f166-4106-b0a2-af2148d4ee67', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261027-L5WBR7.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-L5WBR7\",\"dedupe_key\":\"order-11-pending_confirmation\",\"internal\":false}', NULL, '2026-10-27 15:05:16', '2026-10-27 15:05:16'),
('8b12d233-9f09-4c48-ba42-29db99510c55', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261029-G2RK2G\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261029-G2RK2G\",\"dedupe_key\":\"order-30-confirmed\",\"internal\":false}', NULL, '2026-10-29 16:52:31', '2026-10-29 16:52:31'),
('8b342ddb-fd69-43ef-a7d3-59b4c9481b00', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261024-M4LHPD was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-accepted-3\",\"internal\":true}', NULL, '2026-10-26 08:20:30', '2026-10-26 08:20:30'),
('8c4f3d85-ebd5-46e7-afad-69e576cdd25d', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-HRUGHD.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-HRUGHD\",\"dedupe_key\":\"order-17-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:12:30', '2026-10-28 10:12:30'),
('8cd05464-869d-464a-acd9-e85fcdb53114', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Product waiting for review\",\"body\":\"Samsung Galaxy S26 was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-4\",\"internal\":true}', NULL, '2026-10-24 12:58:14', '2026-10-24 12:58:14'),
('8d81b93a-d4de-429c-bfc8-a1296cd0a23d', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-submitted\",\"internal\":true}', NULL, '2026-10-23 14:45:53', '2026-10-23 14:45:53'),
('8e9e2073-289b-4353-a1df-0cfb2a66273f', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-YS3HLT\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-YS3HLT\",\"dedupe_key\":\"order-16-confirmed\",\"internal\":false}', NULL, '2026-10-28 11:16:33', '2026-10-28 11:16:33'),
('9194f7d2-69a0-4462-a02b-22da70b19f8a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-ABMT95 was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-accepted-21\",\"internal\":true}', NULL, '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
('92aecd21-31e0-49ef-991b-e229794292ad', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261027-HHSMXP was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-accepted-13\",\"internal\":true}', NULL, '2026-10-28 10:37:03', '2026-10-28 10:37:03'),
('93035fbe-3134-42f0-a0d9-ddd67b71f16a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-42NJKF needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-42NJKF\",\"dedupe_key\":\"request-staff-3-submitted\",\"internal\":true}', NULL, '2026-10-27 07:22:15', '2026-10-27 07:22:15'),
('9318f6f2-1f07-47d0-a36d-adc3fa650610', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-SG9D5S\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-SG9D5S\",\"dedupe_key\":\"order-23-confirmed\",\"internal\":false}', NULL, '2026-10-28 11:22:58', '2026-10-28 11:22:58'),
('9390c86a-1db0-4325-abde-1be995033f7e', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Order TH-261024-M4LHPD\",\"body\":\"Ready for dispatch\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-3-ready_for_dispatch\",\"internal\":false}', NULL, '2026-10-26 08:20:12', '2026-10-26 08:20:12'),
('93b759ac-cc9b-4760-baa5-9f942f1d3ecb', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('93bdcdd5-f4ba-4943-8d4a-402d110811a6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261028-34PS2F includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-item-22-vendor-2\",\"internal\":true}', NULL, '2026-10-28 10:51:18', '2026-10-28 10:51:18'),
('947c91da-d89a-4967-a525-5945dc74c8e3', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261024-M4LHPD was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-accepted-3\",\"internal\":true}', NULL, '2026-10-26 08:20:30', '2026-10-26 08:20:30'),
('95f2b77b-894f-408f-b5af-6cfb85eab185', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Inventory change awaiting approval\",\"body\":\"HP computer has a pending vendor stock change request.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory?request_status=pending\",\"dedupe_key\":\"inventory-request-1-pending\",\"internal\":true}', NULL, '2026-10-23 15:30:39', '2026-10-23 15:30:39'),
('9776269c-109a-425f-a3e1-78e02ed3a6cc', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261024-M4LHPD.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-3-pending_confirmation\",\"internal\":false}', NULL, '2026-10-24 11:11:36', '2026-10-24 11:11:36'),
('98a5eb33-8cf2-4583-a57d-2b42f6e99d93', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261028-ABMT95 includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-item-21-vendor-2\",\"internal\":true}', NULL, '2026-10-28 11:00:39', '2026-10-28 11:00:39'),
('9bcf4e64-0116-4eea-ae38-6c64acff6aef', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-CBWG2E needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-CBWG2E\",\"dedupe_key\":\"request-staff-4-submitted\",\"internal\":true}', NULL, '2026-10-27 07:52:17', '2026-10-27 07:52:17'),
('9cbae764-328c-4e4b-b3da-c4ef0818499f', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted a request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-quotation_prepared\",\"internal\":true}', NULL, '2026-10-23 15:29:44', '2026-10-23 15:29:44'),
('9dbd15bf-a8ff-4744-a09f-97407888fbc2', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 11, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:53', '2026-10-29 14:15:53'),
('a1dd2a85-de85-4173-952f-9ac9fd602c4a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-ABMT95\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-19-confirmed\",\"internal\":false}', NULL, '2026-10-28 11:00:39', '2026-10-28 11:00:39'),
('a2c8a2ed-823c-4221-bfa6-c6150b753cad', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 6, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('a38a7fa6-ee72-4ab9-9221-f0019355617f', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261029-S5WARP.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261029-S5WARP\",\"dedupe_key\":\"order-27-pending_confirmation\",\"internal\":false}', NULL, '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
('a48a887b-8503-4d1a-b59a-672d71c00fd5', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order TH-261023-NZGT7H\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261023-NZGT7H\",\"dedupe_key\":\"order-1-confirmed\",\"internal\":false}', NULL, '2026-10-26 09:07:33', '2026-10-26 09:07:33'),
('a634c7f7-0ee7-4cd8-aea4-97b56902449d', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261027-H9648X\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-H9648X\",\"dedupe_key\":\"order-13-confirmed\",\"internal\":false}', NULL, '2026-10-27 15:48:28', '2026-10-27 15:48:28'),
('ac49bd4c-51d8-4101-bab9-d9def98aeade', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-AK4NRS.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-AK4NRS\",\"dedupe_key\":\"order-18-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:48:04', '2026-10-28 10:48:04'),
('ad648cc7-8e76-46ab-9ebd-a918312486bd', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-ABMT95 was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-ABMT95\",\"dedupe_key\":\"order-accepted-21\",\"internal\":true}', NULL, '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
('ad8706c8-959c-48f4-9fbd-b03cf84b6b30', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261027-HHSMXP was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-accepted-13\",\"internal\":true}', NULL, '2026-10-28 10:37:03', '2026-10-28 10:37:03'),
('b0d388ce-4aeb-4265-bd54-befdeb6667c7', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261026-H243FT was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-accepted-5\",\"internal\":true}', NULL, '2026-10-27 12:36:22', '2026-10-27 12:36:22'),
('b31d6cd8-6073-4a17-b35d-475ff6073de8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product approved\",\"body\":\"Computers is now approved.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/shop-products\\/computers\\/edit\",\"dedupe_key\":\"product-approved-8-1793278474\",\"internal\":true}', NULL, '2026-10-29 10:54:34', '2026-10-29 10:54:34'),
('b50ec099-53df-4411-84a9-7fe17367e9a6', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-HXKFTW.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-HXKFTW\",\"dedupe_key\":\"order-22-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 11:21:42', '2026-10-28 11:21:42'),
('b7bde44e-3fea-4851-b9fa-8d36a42f9166', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261026-H243FT was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-accepted-5\",\"internal\":true}', NULL, '2026-10-27 12:36:22', '2026-10-27 12:36:22'),
('b924185d-b2fb-4a68-a7fe-4b5cd6aba479', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"New product request\",\"body\":\"Request PR-261023-XKE45G needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-XKE45G\",\"dedupe_key\":\"request-staff-1-submitted\",\"internal\":true}', NULL, '2026-10-23 06:21:20', '2026-10-23 06:21:20'),
('b9333e5a-d21f-4b4c-a7c3-d1fbbe76f487', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Product waiting for review\",\"body\":\"HP computer was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-1\",\"internal\":true}', NULL, '2026-10-22 11:20:50', '2026-10-22 11:20:50'),
('b96cc8c3-142d-42c5-83de-b752c3c9e899', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261026-569GX6.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-569GX6\",\"dedupe_key\":\"order-4-pending_confirmation\",\"internal\":false}', NULL, '2026-10-26 09:27:22', '2026-10-26 09:27:22'),
('bfe33b77-174f-40a4-b0e9-042039380a06', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-34PS2F was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-accepted-22\",\"internal\":true}', NULL, '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
('c0c460f8-e525-4ec7-8dff-de5d509cdafe', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 11, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('c2c74282-2831-4b51-a81b-3b1b41e337d1', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('c2f529d4-d1e9-4ab2-99bb-b5b2ed03cd4b', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261027-HHSMXP.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-HHSMXP\",\"dedupe_key\":\"order-12-pending_confirmation\",\"internal\":false}', NULL, '2026-10-27 15:15:57', '2026-10-27 15:15:57'),
('c492dac1-3b90-4e5c-9703-0fe82e94f93c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Product waiting for review\",\"body\":\"Computer was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-8\",\"internal\":true}', NULL, '2026-10-29 10:53:21', '2026-10-29 10:53:21'),
('c5bf978b-fd3b-4cb5-b6be-5e9b1223d49b', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-34PS2F.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-20-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:48:36', '2026-10-28 10:48:36'),
('c9118b79-62f7-40e2-907b-c7ed18addba0', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('cb6c8635-fd24-441d-b01d-c4048d7ec49a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-34PS2F\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-20-confirmed\",\"internal\":false}', NULL, '2026-10-28 10:51:18', '2026-10-28 10:51:18'),
('cc91b859-d845-4501-b197-805baa79423f', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-JQFJBQ\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-JQFJBQ\",\"dedupe_key\":\"order-26-confirmed\",\"internal\":false}', NULL, '2026-10-28 13:42:43', '2026-10-28 13:42:43'),
('cdb09e4d-939d-44c6-94f7-86aaab8b5745', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-CBWG2E needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-CBWG2E\",\"dedupe_key\":\"request-staff-4-submitted\",\"internal\":true}', NULL, '2026-10-27 07:52:17', '2026-10-27 07:52:17'),
('ce4fd78d-a4b6-48b0-96b5-4182acaf895c', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-GMMH6W\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-GMMH6W\",\"dedupe_key\":\"order-25-confirmed\",\"internal\":false}', NULL, '2026-10-28 14:20:56', '2026-10-28 14:20:56'),
('ce7da26d-787d-4425-8ece-17cafd1186fd', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-QCGLMT.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-QCGLMT\",\"dedupe_key\":\"order-15-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 10:07:24', '2026-10-28 10:07:24'),
('cee67694-1c2f-4ed5-8774-e3f6094bf342', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-34PS2F was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-accepted-22\",\"internal\":true}', NULL, '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
('cef14c90-bafd-485e-9d3b-da57697f65e8', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-CBWG2E needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-CBWG2E\",\"dedupe_key\":\"request-staff-4-submitted\",\"internal\":true}', NULL, '2026-10-27 07:52:17', '2026-10-27 07:52:17'),
('d0ca45f4-433f-4824-a67c-ae308e3adddb', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 8, '{\"title\":\"Order TH-261024-M4LHPD\",\"body\":\"Preparation in progress\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-3-processing\",\"internal\":false}', NULL, '2026-10-24 12:54:44', '2026-10-24 12:54:44'),
('d214ab6a-f837-4cfc-a9f5-890e784b2987', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261029-DJE3TT.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261029-DJE3TT\",\"dedupe_key\":\"order-28-pending_confirmation\",\"internal\":false}', NULL, '2026-10-29 12:45:44', '2026-10-29 12:45:44'),
('d65682e8-036a-4f00-b20b-120667392aa9', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261026-R5PZAY.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-R5PZAY\",\"dedupe_key\":\"order-6-pending_confirmation\",\"internal\":false}', NULL, '2026-10-26 14:50:16', '2026-10-26 14:50:16'),
('d9fca014-0032-4502-860d-6a4ccee928f1', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 4, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('e506d3c7-176c-4628-b57f-00e66508b9ff', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261024-M4LHPD was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261024-M4LHPD\",\"dedupe_key\":\"order-accepted-3\",\"internal\":true}', NULL, '2026-10-26 08:20:30', '2026-10-26 08:20:30');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('e661c854-e9fe-4705-82e0-2485456fc586', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261027-H9648X.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-H9648X\",\"dedupe_key\":\"order-13-pending_confirmation\",\"internal\":false}', NULL, '2026-10-27 15:45:22', '2026-10-27 15:45:22'),
('ec4eaffc-be15-462a-b3a6-519cd46c3826', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Product waiting for review\",\"body\":\"HP computer was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-1\",\"internal\":true}', NULL, '2026-10-22 11:20:50', '2026-10-22 11:20:50'),
('ec715cfb-89b4-48f4-90cc-f801be39f8b4', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Vendor accepted a request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-quotation_prepared\",\"internal\":true}', NULL, '2026-10-23 15:29:44', '2026-10-23 15:29:44'),
('ee7791f3-96ed-4cdf-b926-22b2e45a1e94', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261026-H243FT.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-5-pending_confirmation\",\"internal\":false}', NULL, '2026-10-26 09:48:30', '2026-10-26 09:48:30'),
('ef163512-1f40-4eb1-9b58-92e41e3063fa', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"New product request\",\"body\":\"Request PR-261027-42NJKF needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261027-42NJKF\",\"dedupe_key\":\"request-staff-3-submitted\",\"internal\":true}', NULL, '2026-10-27 07:22:15', '2026-10-27 07:22:15'),
('ef2b7ef6-e79e-442f-b373-d31175bf57c7', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order TH-261026-H243FT\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261026-H243FT\",\"dedupe_key\":\"order-5-confirmed\",\"internal\":false}', NULL, '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
('f0222722-d595-4e90-a6ff-f3e3c09187a9', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order TH-261028-HRUGHD\",\"body\":\"Order confirmed\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-HRUGHD\",\"dedupe_key\":\"order-17-confirmed\",\"internal\":false}', NULL, '2026-10-28 11:15:52', '2026-10-28 11:15:52'),
('f2da9f77-f1bb-45ba-a68d-7e6aac33e689', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261023-6C45XR.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261023-6C45XR\",\"dedupe_key\":\"order-2-pending_confirmation\",\"internal\":false}', NULL, '2026-10-23 06:35:51', '2026-10-23 06:35:51'),
('f4492e27-9d10-436f-ad2b-c32e7a4062da', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 3, '{\"title\":\"Vendor accepted a request\",\"body\":\"Request PR-261023-Q5QXJU needs attention.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/requests\\/PR-261023-Q5QXJU\",\"dedupe_key\":\"request-staff-2-quotation_prepared\",\"internal\":true}', NULL, '2026-10-23 15:29:44', '2026-10-23 15:29:44'),
('f4ea76ba-5677-492b-99bc-1e8c19e1f068', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Order allocated\",\"body\":\"Order TH-261027-7JEDC8 includes an item assigned to you.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/vendor\\/orders\\/TH-261027-7JEDC8\",\"dedupe_key\":\"order-item-8-vendor-2\",\"internal\":true}', NULL, '2026-10-27 16:13:00', '2026-10-27 16:13:00'),
('f77864b1-c059-448f-a2c6-986b5e4ccde7', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 2, '{\"title\":\"Low stock\",\"body\":\"Phone covers is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-6-2\",\"internal\":true}', NULL, '2026-10-29 14:15:52', '2026-10-29 14:15:52'),
('f7a28c55-3c22-421b-ae29-5e014dbe380a', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 5, '{\"title\":\"Vendor accepted an order\",\"body\":\"An item on order TH-261028-34PS2F was accepted.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/orders\\/TH-261028-34PS2F\",\"dedupe_key\":\"order-accepted-22\",\"internal\":true}', NULL, '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
('f9e81873-6f7c-409e-b0ab-966000366f1b', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 1, '{\"title\":\"Product waiting for review\",\"body\":\"Phone covers was submitted and needs a decision.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/approvals\",\"dedupe_key\":\"product-submitted-6\",\"internal\":true}', NULL, '2026-10-28 08:30:20', '2026-10-28 08:30:20'),
('faa4c257-e714-4a34-be0b-bffa8b4f7050', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261027-NVRNCE.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261027-NVRNCE\",\"dedupe_key\":\"order-14-pending_confirmation\",\"internal\":false}', NULL, '2026-10-27 16:11:06', '2026-10-27 16:11:06'),
('fd79e9a5-d47c-422c-9ddf-873950304b76', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\User', 10, '{\"title\":\"Low stock\",\"body\":\"Dell laptop is at or below its stock threshold.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/marketplace\\/inventory\",\"dedupe_key\":\"low-stock-7-5\",\"internal\":true}', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
('ff82f887-ec8d-4c9c-9a10-2ebca46484b9', 'App\\Notifications\\MarketplaceNotification', 'App\\Models\\Customer', 5, '{\"title\":\"Order received\",\"body\":\"We have received order TH-261028-SG9D5S.\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/account\\/orders\\/TH-261028-SG9D5S\",\"dedupe_key\":\"order-23-pending_confirmation\",\"internal\":false}', NULL, '2026-10-28 11:21:53', '2026-10-28 11:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `submission_key` char(36) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `delivery_address` text NOT NULL,
  `delivery_notes` text DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_method` varchar(255) DEFAULT NULL,
  `fulfillment_status` varchar(255) NOT NULL DEFAULT 'pending_confirmation',
  `customer_status_message` varchar(255) DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `assigned_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_estimate_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `reference`, `source`, `submission_key`, `user_id`, `customer_id`, `customer_name`, `email`, `phone`, `delivery_address`, `delivery_notes`, `subtotal`, `total`, `payment_status`, `payment_method`, `fulfillment_status`, `customer_status_message`, `internal_notes`, `cancellation_reason`, `assigned_officer_id`, `delivery_officer_id`, `delivery_estimate_at`, `created_at`, `updated_at`) VALUES
(1, 'TH-261023-NZGT7H', NULL, NULL, 2, NULL, 'Administrator', 'admin@example.com', '0788001002', 'kigali', NULL, 400000.00, 400000.00, 'pending', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-24 06:07:20', '2026-10-23 06:07:20', '2026-10-26 09:07:33'),
(2, 'TH-261023-6C45XR', NULL, NULL, 2, NULL, 'Administrator', 'admin@example.com', '0788001002', 'kigali', NULL, 400000.00, 400000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-24 06:35:51', '2026-10-23 06:35:51', '2026-10-26 09:01:57'),
(3, 'TH-261024-M4LHPD', NULL, NULL, 8, NULL, 'Vendor User', 'vendor@example.com', '0788001001', 'kigali', NULL, 2000000.00, 2000000.00, 'paid', 'cash_on_delivery', 'ready_for_dispatch', 'Ready for dispatch', NULL, NULL, NULL, NULL, '2026-10-25 11:11:35', '2026-10-24 11:11:35', '2026-10-26 08:20:12'),
(4, 'TH-261026-569GX6', NULL, NULL, 2, NULL, 'Administrator', 'fred@example.com', '0788001002', 'kigali, Rwanda', NULL, 5000000.00, 5000000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-27 09:27:22', '2026-10-26 09:27:22', '2026-10-27 14:05:34'),
(5, 'TH-261026-H243FT', NULL, NULL, 2, NULL, 'Administrator', 'admin@example.com', '0788001002', 'kigali, Rwanda', NULL, 2500000.00, 2500000.00, 'paid', 'cash_on_delivery', 'processing', 'Preparation in progress', NULL, NULL, NULL, NULL, '2026-10-27 09:48:30', '2026-10-26 09:48:30', '2026-10-27 12:36:28'),
(6, 'TH-261026-R5PZAY', NULL, NULL, NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 420000.00, 420000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-27 14:50:16', '2026-10-26 14:50:16', '2026-10-27 12:37:44'),
(7, 'TH-261027-7JEDC8', NULL, NULL, NULL, NULL, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 400000.00, 400000.00, 'pending', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 07:23:01', '2026-10-27 07:23:01', '2026-10-27 16:13:00'),
(10, 'TH-261027-NXN3FE', 'request_product', 'cd7fc043-64dd-493c-add7-2baedaf67a27', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 2500000.00, 2500000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 07:49:58', '2026-10-27 07:49:58', '2026-10-27 07:51:32'),
(11, 'TH-261027-L5WBR7', 'cart_checkout', 'e1b923d9-596c-4438-8508-083501d9e1ed', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 800000.00, 800000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 15:05:16', '2026-10-27 15:05:16', '2026-10-27 15:09:39'),
(12, 'TH-261027-HHSMXP', 'request_product', '27a48d21-e4e4-4b3e-a713-995325e2a2d5', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 20000.00, 20000.00, 'pending', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 15:15:57', '2026-10-27 15:15:57', '2026-10-27 15:49:30'),
(13, 'TH-261027-H9648X', 'cart_checkout', '1f2b1d2e-1bac-4c47-b764-78dc02eaa966', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 2520000.00, 2520000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 15:45:22', '2026-10-27 15:45:22', '2026-10-27 15:48:57'),
(14, 'TH-261027-NVRNCE', 'cart_checkout', '5f46c4af-f3a2-45fb-8ae0-26c34cb7b248', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 400000.00, 400000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-28 16:11:05', '2026-10-27 16:11:05', '2026-10-28 08:22:06'),
(15, 'TH-261028-QCGLMT', 'cart_checkout', '1af9ca38-c046-425b-819b-f5de87206525', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 20000.00, 20000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:07:24', '2026-10-28 10:07:24', '2026-10-28 10:09:21'),
(16, 'TH-261028-YS3HLT', 'cart_checkout', 'af7b1b63-ccaf-456d-8587-9852b912210d', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 400000.00, 400000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:12:11', '2026-10-28 10:12:11', '2026-10-28 11:16:33'),
(17, 'TH-261028-HRUGHD', 'request_product', 'dbb46f0e-a43d-413e-84d6-692094aa76bb', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 400000.00, 400000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:12:30', '2026-10-28 10:12:30', '2026-10-28 11:15:52'),
(18, 'TH-261028-AK4NRS', 'request_product', '9f947a90-dedc-495c-b154-f72c8ab87dd2', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 20000.00, 20000.00, 'pending', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:48:04', '2026-10-28 10:48:04', '2026-10-28 11:00:51'),
(19, 'TH-261028-ABMT95', 'request_product', '93d570e6-8f99-422e-bde7-4764b49126e6', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 2500000.00, 2500000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:48:23', '2026-10-28 10:48:23', '2026-10-28 11:47:19'),
(20, 'TH-261028-34PS2F', 'request_product', '4f0520ea-29cd-4b02-9395-e68884d8d66b', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'kigali, rwanda', NULL, 400000.00, 400000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 10:48:36', '2026-10-28 10:48:36', '2026-10-28 10:53:34'),
(21, 'TH-261028-Q28SCN', 'request_product', '3ad51274-df77-4352-900d-8c17a1510166', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 20000.00, 20000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-29 11:21:16', '2026-10-28 11:21:16', '2026-10-28 11:21:16'),
(22, 'TH-261028-HXKFTW', 'request_product', 'ded4d754-f902-41c9-99ab-af73bcacb7f5', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 400000.00, 400000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-29 11:21:42', '2026-10-28 11:21:42', '2026-10-28 11:21:42'),
(23, 'TH-261028-SG9D5S', 'request_product', '2a5794c7-85a6-41b7-90f6-d148f46a140b', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 2500000.00, 2500000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 11:21:53', '2026-10-28 11:21:53', '2026-10-28 11:22:57'),
(24, 'TH-261028-QKRK2B', 'request_product', '6fbab222-3ea3-4959-8b4d-19114b06b695', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 200000.00, 200000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-29 11:23:41', '2026-10-28 11:23:41', '2026-10-28 11:23:41'),
(25, 'TH-261028-GMMH6W', 'request_product', 'b8ffd64a-a386-4383-abc1-be1471ecd280', NULL, 5, 'Administrator', 'admin@example.com', '0788001002', 'To be confirmed', NULL, 2500000.00, 2500000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 11:24:02', '2026-10-28 11:24:02', '2026-10-28 14:20:55'),
(26, 'TH-261028-JQFJBQ', 'cart_checkout', 'b1feae48-8617-488b-a158-1faf4ee1a50f', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'kigali, rwanda', NULL, 440000.00, 440000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-29 13:00:29', '2026-10-28 13:00:29', '2026-10-28 13:42:43'),
(27, 'TH-261029-S5WARP', 'cart_checkout', '176dca20-2ef3-4e44-b342-eceb99bab0c3', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'Kigali, Rwanda, Nyarugenge, Kigali', NULL, 12900000.00, 12900000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-30 11:41:32', '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
(28, 'TH-261029-DJE3TT', 'request_product', '92356350-52d5-4c2d-bb3c-fd48e9f2fa14', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'Kigali, Rwanda, Nyarugenge, Kigali', NULL, 20000.00, 20000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-30 12:45:43', '2026-10-29 12:45:43', '2026-10-29 12:45:44'),
(29, 'TH-261029-7ATWME', 'cart_checkout', '83a65def-a1d0-4674-9a6f-d9a10a7be206', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'Kigali, Rwanda, Nyarugenge, Kigali', NULL, 25000.00, 25000.00, 'pending', 'cash_on_delivery', 'pending_confirmation', 'We have received your order.', NULL, NULL, NULL, NULL, '2026-10-30 14:28:21', '2026-10-29 14:28:21', '2026-10-29 14:28:22'),
(30, 'TH-261029-G2RK2G', 'request_product', '4f3b6c4f-a9de-4e40-9ff2-5855d68ee521', NULL, 5, 'MUKIZA FRED', 'fred@gmail.com', '0788888888', 'Kigali, Rwanda, Nyarugenge, Kigali', NULL, 25000.00, 25000.00, 'paid', 'cash_on_delivery', 'confirmed', 'Order confirmed', NULL, NULL, NULL, NULL, '2026-10-30 16:49:44', '2026-10-29 16:49:44', '2026-10-29 16:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `unit_price` decimal(12,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `line_total` decimal(12,2) NOT NULL,
  `fulfillment_status` varchar(255) NOT NULL DEFAULT 'pending_confirmation',
  `assignment_status` varchar(255) NOT NULL DEFAULT 'unassigned',
  `inventory_state` varchar(255) NOT NULL DEFAULT 'none',
  `fulfillment_instructions` text DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `variation_label` varchar(255) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `shop_product_id`, `vendor_id`, `product_location_id`, `product_name`, `sku`, `unit_price`, `quantity`, `line_total`, `fulfillment_status`, `assignment_status`, `inventory_state`, `fulfillment_instructions`, `internal_notes`, `created_at`, `updated_at`, `product_variation_id`, `variation_label`, `variation_value`) VALUES
(1, 1, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'confirmed', 'unassigned', 'none', NULL, NULL, '2026-10-23 06:07:20', '2026-10-26 09:07:33', NULL, NULL, NULL),
(2, 2, 2, 1, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'confirmed', 'assigned', 'none', NULL, NULL, '2026-10-23 06:35:51', '2026-10-26 09:01:57', NULL, NULL, NULL),
(3, 3, 2, 2, NULL, 'Dell laptop', NULL, 400000.00, 5, 2000000.00, 'completed', 'accepted', 'reserved', NULL, NULL, '2026-10-24 11:11:35', '2026-10-26 11:15:46', NULL, NULL, NULL),
(4, 4, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 2, 5000000.00, 'delivered', 'admin_handled', 'reserved', NULL, NULL, '2026-10-26 09:27:22', '2026-10-28 12:15:34', NULL, NULL, NULL),
(5, 5, 4, 2, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'ready_for_dispatch', 'accepted', 'reserved', NULL, NULL, '2026-10-26 09:48:30', '2026-10-27 12:36:37', NULL, NULL, NULL),
(6, 6, 3, NULL, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-26 14:50:16', '2026-10-27 14:03:24', NULL, NULL, NULL),
(7, 6, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-26 14:50:16', '2026-10-27 14:03:24', NULL, NULL, NULL),
(8, 7, 2, 2, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'confirmed', 'assigned', 'reserved', NULL, NULL, '2026-10-27 07:23:02', '2026-10-27 16:13:00', NULL, NULL, NULL),
(11, 10, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-27 07:49:58', '2026-10-27 14:02:12', NULL, NULL, NULL),
(12, 11, 2, 2, NULL, 'Dell laptop', NULL, 400000.00, 2, 800000.00, 'ready_for_dispatch', 'accepted', 'reserved', NULL, NULL, '2026-10-27 15:05:16', '2026-10-28 12:01:35', NULL, NULL, NULL),
(13, 12, 3, 2, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'confirmed', 'accepted', 'reserved', NULL, NULL, '2026-10-27 15:15:57', '2026-10-28 10:37:03', NULL, NULL, NULL),
(14, 13, 3, NULL, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-27 15:45:22', '2026-10-28 08:17:09', NULL, NULL, NULL),
(15, 13, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-27 15:45:22', '2026-10-28 08:17:09', NULL, NULL, NULL),
(16, 14, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-27 16:11:05', '2026-10-28 08:22:39', NULL, NULL, NULL),
(17, 15, 3, NULL, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'delivered', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 10:07:24', '2026-10-28 12:15:31', NULL, NULL, NULL),
(18, 16, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 10:12:11', '2026-10-28 11:16:33', NULL, NULL, NULL),
(19, 17, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'ready_for_dispatch', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 10:12:30', '2026-10-28 11:16:12', NULL, NULL, NULL),
(20, 18, 3, 2, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'confirmed', 'assigned', 'reserved', NULL, NULL, '2026-10-28 10:48:04', '2026-10-28 11:00:51', NULL, NULL, NULL),
(21, 19, 4, 2, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'confirmed', 'accepted', 'reserved', NULL, NULL, '2026-10-28 10:48:23', '2026-10-28 11:47:19', NULL, NULL, NULL),
(22, 20, 2, 2, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'ready_for_dispatch', 'accepted', 'reserved', NULL, NULL, '2026-10-28 10:48:36', '2026-10-28 11:46:52', NULL, NULL, NULL),
(23, 21, 3, NULL, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 1, 20000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-28 11:21:16', '2026-10-28 11:21:16', NULL, NULL, NULL),
(24, 22, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-28 11:21:42', '2026-10-28 11:21:42', NULL, NULL, NULL),
(25, 23, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 11:21:53', '2026-10-28 11:22:57', NULL, NULL, NULL),
(26, 24, 1, NULL, NULL, 'HP computer', NULL, 200000.00, 1, 200000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-28 11:23:41', '2026-10-28 11:23:41', NULL, NULL, NULL),
(27, 25, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 1, 2500000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 11:24:02', '2026-10-28 14:20:55', NULL, NULL, NULL),
(28, 26, 3, NULL, NULL, 'Bluetooth earphone', 'TH-PROD-0003', 20000.00, 2, 40000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 13:00:29', '2026-10-28 13:42:43', NULL, NULL, NULL),
(29, 26, 2, NULL, NULL, 'Dell laptop', NULL, 400000.00, 1, 400000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-28 13:00:29', '2026-10-28 13:42:43', NULL, NULL, NULL),
(30, 27, 8, NULL, NULL, 'Computers', 'TH-PROD-0008', 400000.00, 1, 400000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-29 11:41:32', '2026-10-29 11:41:32', 4, 'Storage', '1TB'),
(31, 27, 4, NULL, NULL, 'Samsung Galaxy S26', 'TH-PROD-0004', 2500000.00, 5, 12500000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-29 11:41:32', '2026-10-29 11:41:32', NULL, NULL, NULL),
(32, 28, 9, NULL, NULL, 'Headset', 'TH-PROD-0009', 20000.00, 1, 20000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-29 12:45:44', '2026-10-29 12:45:44', 5, 'White', 'Color'),
(33, 29, 9, NULL, NULL, 'Headset', 'TH-PROD-0009', 25000.00, 1, 25000.00, 'pending_confirmation', 'unassigned', 'reserved', NULL, NULL, '2026-10-29 14:28:21', '2026-10-29 14:28:21', 6, 'Black', 'Color'),
(34, 30, 9, NULL, NULL, 'Headset', 'TH-PROD-0009', 25000.00, 1, 25000.00, 'confirmed', 'admin_handled', 'reserved', NULL, NULL, '2026-10-29 16:49:44', '2026-10-29 16:52:31', 6, 'Black', 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `recorded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `type` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `submission_key` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `recorded_by`, `amount`, `type`, `method`, `submission_key`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 2500000.00, 'full', 'cash_on_delivery', '71c76b6a-d4de-4a43-9ed3-f538a0416550', '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
(2, 10, 2, 2500000.00, 'full', 'cash_on_delivery', '2f21ea97-a7be-410b-a344-d1ca661f021b', '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
(3, 6, 2, 420000.00, 'full', 'cash_on_delivery', '6aedb2c2-5465-4cf3-b99f-837cfd2212f6', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(4, 4, 2, 5000000.00, 'full', 'cash_on_delivery', '3744e853-b338-406e-8f4e-d9e1d4cca184', '2026-10-27 14:05:34', '2026-10-27 14:05:34'),
(5, 11, 2, 800000.00, 'full', 'cash_on_delivery', '288e7e09-f635-4016-951b-965e71cbd07e', '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
(6, 13, 2, 2520000.00, 'full', 'cash_on_delivery', '39bbd2a6-c3d2-44ba-a467-abf8fe331e03', '2026-10-27 15:48:57', '2026-10-27 15:48:57'),
(7, 14, 2, 400000.00, 'full', 'cash_on_delivery', 'a6deebe5-ecf6-48b7-9a2f-771dd9b871e0', '2026-10-28 08:22:06', '2026-10-28 08:22:06'),
(8, 15, 2, 20000.00, 'full', 'cash_on_delivery', 'c948378d-0658-4abe-ac8a-05135816b3fc', '2026-10-28 10:09:20', '2026-10-28 10:09:20'),
(9, 20, 10, 400000.00, 'full', 'cash_on_delivery', 'd68d3741-1924-444f-b7f2-8ddbeb1fdc22', '2026-10-28 10:53:34', '2026-10-28 10:53:34'),
(10, 17, 2, 400000.00, 'full', 'cash_on_delivery', '3279251f-ab0f-459e-8b27-413e740fd005', '2026-10-28 11:15:52', '2026-10-28 11:15:52'),
(11, 16, 2, 400000.00, 'full', 'cash_on_delivery', '4d230c9d-cc32-4e35-b402-aa60468c0753', '2026-10-28 11:16:32', '2026-10-28 11:16:32'),
(12, 23, 2, 2500000.00, 'full', 'cash_on_delivery', 'f13dae6f-9914-4967-9d52-4c80bbf01703', '2026-10-28 11:22:57', '2026-10-28 11:22:57'),
(13, 19, 10, 2500000.00, 'full', 'cash_on_delivery', '93fc865c-f7c8-40ac-8e86-7840a176d86e', '2026-10-28 11:47:19', '2026-10-28 11:47:19'),
(14, 26, 2, 440000.00, 'full', 'cash_on_delivery', '152a576a-d454-48fe-8dd0-729dbad16326', '2026-10-28 13:42:43', '2026-10-28 13:42:43'),
(15, 25, 2, 2500000.00, 'full', 'cash_on_delivery', '0acac4d1-6751-4924-8dea-c2ba134530d7', '2026-10-28 14:20:55', '2026-10-28 14:20:55'),
(16, 30, 2, 25000.00, 'full', 'cash_on_delivery', 'f4d675e4-7607-4198-9865-32050fe5643a', '2026-10-29 16:52:31', '2026-10-29 16:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_status_histories`
--

CREATE TABLE `order_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_status` varchar(255) DEFAULT NULL,
  `to_status` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `customer_message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status_histories`
--

INSERT INTO `order_status_histories` (`id`, `order_id`, `user_id`, `from_status`, `to_status`, `note`, `customer_message`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-23 06:07:20', '2026-10-23 06:07:20'),
(2, 2, 2, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-23 06:35:51', '2026-10-23 06:35:51'),
(3, 3, 8, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-24 11:11:35', '2026-10-24 11:11:35'),
(4, 3, 10, 'pending_confirmation', 'processing', 'Updated from item progress.', 'Preparation in progress', '2026-10-24 12:54:44', '2026-10-24 12:54:44'),
(5, 3, 10, 'processing', 'ready_for_dispatch', 'Updated from item progress.', 'Ready for dispatch', '2026-10-26 08:20:12', '2026-10-26 08:20:12'),
(6, 2, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-26 09:01:57', '2026-10-26 09:01:57'),
(7, 1, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-26 09:07:33', '2026-10-26 09:07:33'),
(8, 4, 2, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-26 09:27:22', '2026-10-26 09:27:22'),
(9, 4, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-26 09:32:04', '2026-10-26 09:32:04'),
(10, 5, 2, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-26 09:48:30', '2026-10-26 09:48:30'),
(11, 5, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-26 09:51:54', '2026-10-26 09:51:54'),
(12, 6, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-26 14:50:16', '2026-10-26 14:50:16'),
(13, 7, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 07:23:02', '2026-10-27 07:23:02'),
(16, 10, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 07:49:58', '2026-10-27 07:49:58'),
(17, 10, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 07:51:32', '2026-10-27 07:51:32'),
(18, 5, 10, 'confirmed', 'processing', 'Updated from item progress.', 'Preparation in progress', '2026-10-27 12:36:28', '2026-10-27 12:36:28'),
(19, 6, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 12:37:44', '2026-10-27 12:37:44'),
(20, 11, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 15:05:16', '2026-10-27 15:05:16'),
(21, 11, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 15:09:39', '2026-10-27 15:09:39'),
(22, 12, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 15:15:57', '2026-10-27 15:15:57'),
(23, 13, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 15:45:22', '2026-10-27 15:45:22'),
(24, 13, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 15:48:28', '2026-10-27 15:48:28'),
(25, 12, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 15:49:30', '2026-10-27 15:49:30'),
(26, 14, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-27 16:11:05', '2026-10-27 16:11:05'),
(27, 14, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 16:11:56', '2026-10-27 16:11:56'),
(28, 7, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-27 16:13:00', '2026-10-27 16:13:00'),
(29, 15, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:07:24', '2026-10-28 10:07:24'),
(30, 15, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 10:09:21', '2026-10-28 10:09:21'),
(31, 16, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:12:11', '2026-10-28 10:12:11'),
(32, 17, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:12:30', '2026-10-28 10:12:30'),
(33, 18, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:48:04', '2026-10-28 10:48:04'),
(34, 19, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:48:23', '2026-10-28 10:48:23'),
(35, 20, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 10:48:36', '2026-10-28 10:48:36'),
(36, 20, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 10:51:18', '2026-10-28 10:51:18'),
(37, 19, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 11:00:39', '2026-10-28 11:00:39'),
(38, 18, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 11:00:51', '2026-10-28 11:00:51'),
(39, 17, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 11:15:52', '2026-10-28 11:15:52'),
(40, 16, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 11:16:33', '2026-10-28 11:16:33'),
(41, 21, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 11:21:16', '2026-10-28 11:21:16'),
(42, 22, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 11:21:42', '2026-10-28 11:21:42'),
(43, 23, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 11:21:53', '2026-10-28 11:21:53'),
(44, 23, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 11:22:58', '2026-10-28 11:22:58'),
(45, 24, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 11:23:41', '2026-10-28 11:23:41'),
(46, 25, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 11:24:02', '2026-10-28 11:24:02'),
(47, 26, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-28 13:00:29', '2026-10-28 13:00:29'),
(48, 26, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 13:42:43', '2026-10-28 13:42:43'),
(49, 25, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-28 14:20:55', '2026-10-28 14:20:55'),
(50, 27, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-29 11:41:32', '2026-10-29 11:41:32'),
(51, 28, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-29 12:45:44', '2026-10-29 12:45:44'),
(52, 29, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-29 14:28:22', '2026-10-29 14:28:22'),
(53, 30, NULL, NULL, 'pending_confirmation', NULL, 'We have received your order.', '2026-10-29 16:49:44', '2026-10-29 16:49:44'),
(54, 30, 2, 'pending_confirmation', 'confirmed', NULL, 'Order confirmed', '2026-10-29 16:52:31', '2026-10-29 16:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `website_url` varchar(2048) DEFAULT NULL,
  `show_on_website` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title`, `slug`, `description`, `created_at`, `updated_at`, `logo_path`, `website_url`, `show_on_website`, `status`) VALUES
(1, 'TRESCA GRAPHIC', 'tresca-graphic', 'TRESCA GRAPHIC is graphic design company', '2026-10-29 09:34:02', '2026-10-29 09:34:02', 'partners/6ae32f2a762945.94098422.jpg', NULL, 1, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `group` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `group`, `created_at`, `updated_at`) VALUES
(1, 'Open the internal administration area', 'admin.access', 'admin', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(2, 'Manage services, pages, partners, and other existing content', 'cms.manage', 'cms', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(3, 'View products', 'products.view', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(4, 'Create products', 'products.create', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(5, 'Edit products', 'products.edit', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(6, 'Delete products', 'products.delete', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(7, 'Submit products for review', 'products.submit', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(8, 'Approve or reject products', 'products.approve', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(9, 'Publish or unpublish products', 'products.publish', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(10, 'Assign a vendor to a product', 'products.assign_vendor', 'products', '2026-10-22 09:28:02', '2026-10-22 09:28:02'),
(11, 'View inventory quantities', 'inventory.view', 'inventory', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(12, 'Adjust inventory', 'inventory.manage', 'inventory', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(13, 'View internal stock locations', 'locations.view', 'locations', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(14, 'Manage internal stock locations', 'locations.manage', 'locations', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(15, 'View vendors', 'vendors.view', 'vendors', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(16, 'Register vendors', 'vendors.create', 'vendors', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(17, 'Edit, activate, or suspend vendors', 'vendors.manage', 'vendors', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(18, 'View vendor phone numbers and email addresses', 'vendors.view_contacts', 'vendors', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(19, 'View every product request', 'requests.view_all', 'requests', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(20, 'View assigned product requests', 'requests.view_assigned', 'requests', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(21, 'Allocate a product request', 'requests.allocate', 'requests', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(22, 'Reassign a product request', 'requests.reassign', 'requests', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(23, 'View every order', 'orders.view_all', 'orders', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(24, 'View assigned orders', 'orders.view_assigned', 'orders', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(25, 'Update orders and fulfillment', 'orders.manage', 'orders', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(26, 'Manage deliveries', 'deliveries.manage', 'deliveries', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(27, 'View operational reports', 'reports.view', 'reports', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(28, 'View acquisition costs, margins, and revenue', 'finance.view', 'finance', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(29, 'Manage internal users', 'users.manage', 'users', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(30, 'Manage roles', 'roles.manage', 'roles', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(31, 'Change which permissions a role grants', 'permissions.manage', 'permissions', '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(32, 'View the audit log', 'audit_logs.view', 'audit_logs', '2026-10-22 09:28:03', '2026-10-22 09:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(1, 2, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(1, 3, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(1, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(1, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(1, 6, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(1, 7, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(2, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(2, 2, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(3, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(3, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(3, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(3, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(3, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(3, 6, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(3, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(4, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(4, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(4, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(4, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(5, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(5, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(5, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(5, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(6, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(6, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(7, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(7, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(7, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(7, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(8, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(8, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(9, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(9, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(10, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(10, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(11, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(11, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(11, 3, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(11, 4, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(11, 6, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(11, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(12, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(12, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(12, 6, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(12, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(13, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(13, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(13, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(13, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(13, 6, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(13, 7, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(14, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(14, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(14, 6, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(15, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(15, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(15, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(15, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(16, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(16, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(17, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(17, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(18, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(18, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(19, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(19, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(19, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(19, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(20, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(20, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(20, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(20, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(20, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(21, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(21, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(21, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(21, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(22, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(22, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(22, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(22, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(23, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(23, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(23, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(23, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(24, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(24, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(24, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(24, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(24, 7, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(24, 8, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(25, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(25, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(25, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(25, 5, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(26, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(26, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(26, 3, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(26, 7, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(27, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(27, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(27, 3, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(28, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(28, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(29, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(29, 2, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(30, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(31, 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(32, 1, '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(32, 2, '2026-10-22 09:28:04', '2026-10-22 09:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_approval_histories`
--

CREATE TABLE `product_approval_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `from_status` varchar(255) DEFAULT NULL,
  `to_status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_approval_histories`
--

INSERT INTO `product_approval_histories` (`id`, `shop_product_id`, `user_id`, `action`, `from_status`, `to_status`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'submitted', NULL, 'pending_approval', NULL, '2026-10-22 11:20:50', '2026-10-22 11:20:50'),
(2, 1, 8, 'submitted', 'pending_approval', 'pending_approval', NULL, '2026-10-22 12:19:41', '2026-10-22 12:19:41'),
(3, 1, 2, 'approved', 'pending_approval', 'approved', NULL, '2026-10-22 12:32:52', '2026-10-22 12:32:52'),
(4, 1, 2, 'published', 'approved', 'published', NULL, '2026-10-22 12:33:05', '2026-10-22 12:33:05'),
(5, 2, 2, 'created', NULL, 'pending_approval', NULL, '2026-10-22 12:39:53', '2026-10-22 12:39:53'),
(6, 2, 2, 'approved', 'pending_approval', 'approved', NULL, '2026-10-23 05:58:39', '2026-10-23 05:58:39'),
(7, 2, 2, 'published', 'approved', 'published', NULL, '2026-10-23 05:58:44', '2026-10-23 05:58:44'),
(8, 3, 2, 'created', NULL, 'pending_approval', NULL, '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(9, 3, 2, 'approved', 'pending_approval', 'approved', 'Approved during creation.', '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(10, 3, 2, 'published', 'approved', 'published', NULL, '2026-10-24 11:21:25', '2026-10-24 11:21:25'),
(11, 4, 10, 'submitted', NULL, 'pending_approval', NULL, '2026-10-24 12:58:14', '2026-10-24 12:58:14'),
(12, 4, 2, 'approved', 'pending_approval', 'approved', NULL, '2026-10-24 13:04:54', '2026-10-24 13:04:54'),
(13, 4, 2, 'published', 'approved', 'published', NULL, '2026-10-24 13:05:20', '2026-10-24 13:05:20'),
(14, 4, 2, 'published', 'approved', 'published', NULL, '2026-10-24 13:06:01', '2026-10-24 13:06:01'),
(15, 4, 2, 'published', 'approved', 'published', NULL, '2026-10-24 13:07:46', '2026-10-24 13:07:46'),
(16, 6, 10, 'submitted', NULL, 'pending_approval', NULL, '2026-10-28 08:30:20', '2026-10-28 08:30:20'),
(17, 7, 2, 'created', NULL, 'pending_approval', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(18, 7, 2, 'approved', 'pending_approval', 'approved', 'Approved during creation.', '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(19, 7, 2, 'published', 'approved', 'published', NULL, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(20, 8, 2, 'created', NULL, 'pending_approval', NULL, '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(21, 8, 2, 'approved', 'pending_approval', 'approved', 'Approved during creation.', '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(22, 8, 2, 'published', 'approved', 'published', NULL, '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(23, 8, 10, 'revision_submitted', 'approved', 'pending_approval', NULL, '2026-10-29 10:53:21', '2026-10-29 10:53:21'),
(24, 8, 2, 'approved', 'approved', 'approved', NULL, '2026-10-29 10:54:34', '2026-10-29 10:54:34'),
(25, 9, 2, 'created', NULL, 'pending_approval', NULL, '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(26, 9, 2, 'approved', 'pending_approval', 'approved', 'Approved during creation.', '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(27, 9, 2, 'published', 'approved', 'published', NULL, '2026-10-29 12:43:37', '2026-10-29 12:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_locations`
--

CREATE TABLE `product_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `shelf_reference` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reserved_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_requests`
--

CREATE TABLE `product_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shop_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_officer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `instructions` text DEFAULT NULL,
  `delivery_location` varchar(255) DEFAULT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'normal',
  `status` varchar(255) NOT NULL DEFAULT 'submitted',
  `customer_message` varchar(255) DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_variation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `variation_label` varchar(255) DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `variation_price` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_requests`
--

INSERT INTO `product_requests` (`id`, `reference`, `user_id`, `customer_id`, `shop_product_id`, `vendor_id`, `assigned_officer_id`, `product_location_id`, `order_id`, `customer_name`, `email`, `phone`, `product_name`, `quantity`, `instructions`, `delivery_location`, `priority`, `status`, `customer_message`, `internal_notes`, `created_at`, `updated_at`, `product_variation_id`, `variation_label`, `variation_value`, `variation_price`) VALUES
(1, 'PR-261023-XKE45G', 2, NULL, 2, NULL, NULL, NULL, 2, 'Administrator', 'admin@example.com', '0788001002', 'Dell laptop', 1, NULL, 'kigali', 'normal', 'converted_to_order', 'Your request is now order TH-261023-6C45XR.', NULL, '2026-10-23 06:21:19', '2026-10-23 06:35:51', NULL, NULL, NULL, NULL),
(2, 'PR-261023-Q5QXJU', 2, NULL, 1, 1, 2, NULL, NULL, 'Administrator', 'admin@example.com', '0788001002', 'HP computer', 2, NULL, 'kigali', 'normal', 'quotation_prepared', 'We are preparing the next step for your request.', NULL, '2026-10-23 14:45:52', '2026-10-23 15:29:44', NULL, NULL, NULL, NULL),
(3, 'PR-261027-42NJKF', NULL, NULL, 2, NULL, NULL, NULL, 7, 'Administrator', 'admin@example.com', '0788001002', 'Dell laptop', 1, NULL, 'kigali, rwanda', 'normal', 'converted_to_order', 'Your request is now order TH-261027-7JEDC8.', NULL, '2026-10-27 07:22:13', '2026-10-27 07:23:02', NULL, NULL, NULL, NULL),
(4, 'PR-261027-CBWG2E', NULL, 5, 3, NULL, NULL, NULL, NULL, 'Administrator', 'admin@example.com', '0788001002', 'Bluetooth earphone', 1, NULL, 'kigali, rwanda', 'normal', 'submitted', 'We have received your request.', NULL, '2026-10-27 07:52:16', '2026-10-27 07:52:16', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_product_id` bigint(20) UNSIGNED NOT NULL,
  `feature_label` varchar(255) NOT NULL,
  `variation_value` varchar(255) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `shop_product_id`, `feature_label`, `variation_value`, `price`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 7, 'RAM', '4GB', 300000.00, 1, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(2, 7, 'storage', '1tb', 500000.00, 0, '2026-10-29 10:28:40', '2026-10-29 10:28:40'),
(3, 8, 'RAM', '4GB', 200000.00, 1, '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(4, 8, 'Storage', '1TB', 400000.00, 0, '2026-10-29 10:51:55', '2026-10-29 10:51:55'),
(5, 9, 'White', 'Color', 20000.00, 1, '2026-10-29 12:43:37', '2026-10-29 12:43:37'),
(6, 9, 'Black', 'Color', 25000.00, 0, '2026-10-29 12:43:37', '2026-10-29 12:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `request_status_histories`
--

CREATE TABLE `request_status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_request_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_status` varchar(255) DEFAULT NULL,
  `to_status` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `customer_message` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_status_histories`
--

INSERT INTO `request_status_histories` (`id`, `product_request_id`, `user_id`, `from_status`, `to_status`, `note`, `customer_message`, `meta`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, 'submitted', NULL, 'We have received your request.', '[]', '2026-10-23 06:21:19', '2026-10-23 06:21:19'),
(2, 1, 2, 'submitted', 'converted_to_order', NULL, 'Your request is now order TH-261023-6C45XR.', '{\"order_id\":2}', '2026-10-23 06:35:51', '2026-10-23 06:35:51'),
(3, 2, 2, NULL, 'submitted', NULL, 'We have received your request.', '[]', '2026-10-23 14:45:52', '2026-10-23 14:45:52'),
(4, 2, 2, 'submitted', 'awaiting_vendor_response', NULL, 'We are arranging your request.', '{\"from_vendor\":null,\"to_vendor\":1,\"location_id\":null}', '2026-10-23 15:21:38', '2026-10-23 15:21:38'),
(5, 2, 8, 'awaiting_vendor_response', 'quotation_prepared', NULL, 'We are preparing the next step for your request.', '[]', '2026-10-23 15:29:44', '2026-10-23 15:29:44'),
(6, 3, NULL, NULL, 'submitted', NULL, 'We have received your request.', '[]', '2026-10-27 07:22:13', '2026-10-27 07:22:13'),
(7, 3, 2, 'submitted', 'converted_to_order', NULL, 'Your request is now order TH-261027-7JEDC8.', '{\"order_id\":7}', '2026-10-27 07:23:02', '2026-10-27 07:23:02'),
(8, 4, NULL, NULL, 'submitted', NULL, 'We have received your request.', '[]', '2026-10-27 07:52:17', '2026-10-27 07:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `is_system`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'super-administrator', 'Full system control.', 1, '2026-10-22 09:28:03', '2026-10-22 09:28:03'),
(2, 'Administrator', 'administrator', 'Operates the marketplace. Role and permission catalogs stay with the super administrator.', 1, '2026-10-22 09:28:04', '2026-10-22 09:28:04'),
(3, 'Operations Manager', 'operations-manager', 'Allocates requests and monitors fulfillment. Contacts and costs are separate grants.', 1, '2026-10-22 09:28:05', '2026-10-22 09:28:05'),
(4, 'Product Manager', 'product-manager', 'Maintains the catalog and submits listings. Approval is a separate grant.', 1, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(5, 'Request and Order Officer', 'request-officer', 'Reviews requests, allocates vendors, and updates operational order status.', 1, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(6, 'Inventory Officer', 'inventory-officer', 'Manages stock quantities and storage locations.', 1, '2026-10-22 09:28:06', '2026-10-22 09:28:06'),
(7, 'Delivery Officer', 'delivery-officer', 'Updates assigned deliveries and customer-facing milestones.', 1, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(8, 'Vendor', 'vendor', 'Works only on products, requests, and orders assigned to their account.', 1, '2026-10-22 09:28:07', '2026-10-22 09:28:07'),
(9, 'Customer', 'customer', 'Buys and tracks their own orders.', 1, '2026-10-22 09:28:07', '2026-10-22 09:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-10-22 09:28:14', '2026-10-22 09:28:14'),
(2, 2, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(3, 3, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(4, 4, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(4, 11, '2026-10-24 12:31:10', '2026-10-24 12:31:10'),
(5, 5, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(6, 6, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(6, 11, '2026-10-24 12:31:10', '2026-10-24 12:31:10'),
(7, 7, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(8, 8, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(8, 10, '2026-10-24 12:19:15', '2026-10-24 12:19:15'),
(8, 13, '2026-10-28 14:00:15', '2026-10-28 14:00:15'),
(9, 9, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(9, 12, '2026-10-26 12:27:55', '2026-10-26 12:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `what_included` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`what_included`)),
  `how_service_works` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`how_service_works`)),
  `other_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`other_images`)),
  `thumbnail` varchar(255) DEFAULT NULL,
  `working_day` varchar(255) DEFAULT NULL,
  `classification_name` bigint(20) UNSIGNED DEFAULT NULL,
  `subcategory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`subcategory`)),
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `is_in_stock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `description`, `price`, `what_included`, `how_service_works`, `other_images`, `thumbnail`, `working_day`, `classification_name`, `subcategory`, `is_popular`, `is_in_stock`, `created_at`, `updated_at`, `category_id`) VALUES
(21, 'Land Survey – Residential Plot', 'land-survey-residential-plot', 'Complete land survey for residential plots including boundary marking and topographic mapping.', 150000.00, '[\"Boundary survey\",\"Topographic map\",\"Survey report\",\"Digital copy\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773238936_service-engineering.jpg\"]', 'assets/services/thumbnails/1793036667_service.jpg', '3-5 working days', 8, '[\"Surveying\"]', 1, 1, '2026-03-11 12:22:16', '2026-10-26 15:44:27', NULL),
(22, 'Logo Design – Basic', 'logo-design-basic', 'Professional logo design with multiple concepts and revisions.', 100000.00, '[\"3 initial concepts\",\"2 revision rounds\",\"Final files (PNG, SVG, PDF)\",\"Brand color codes\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773239204_service-graphic.jpg\"]', 'assets/services/thumbnails/1793037167_service.jpg', '3-5 working days', 7, '[\"Branding\"]', 0, 1, '2026-03-11 12:26:44', '2026-10-26 15:52:47', NULL),
(23, 'Construction & Works', 'construction-works', 'Building construction, renovation, installation, and finishing works.', 50000.00, '[\"Site visit\",\"Condition assessment\",\"Photo documentation\",\"Written report\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773239445_service-construction (1).jpg\"]', 'assets/services/thumbnails/1793037473_service.jpg', 'Within 3 days of booking', 9, '[\"Inspection\"]', 0, 1, '2026-03-11 12:30:45', '2026-10-26 15:57:53', NULL),
(24, 'Online Shopping & Supplies', 'online-shopping-supplies', 'Electronics, gadgets, accessories, and assisted online purchasing services.', 0.00, '[\"Device\",\"Warranty card\",\"Setup assistance\",\"Delivery\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773242625_service-shop.jpg\"]', 'assets/services/thumbnails/1793037490_s26.jpg', NULL, 10, '[\"Digital\"]', 0, 1, '2026-03-11 13:23:45', '2026-10-26 15:58:10', NULL),
(25, 'Refreshments & Event Support', 'refreshments-event-support', 'Beverages, catering support, and refreshment packages for events and meetings.', 250000.00, '[\"Water bottles\",\"Soft drinks\",\"Juice selection\",\"Setup & serving\",\"Cleanup\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773242925_service-refreshment.jpg\"]', 'assets/services/thumbnails/1793037600_refreshment.jpg', 'Book 3+ days ahead', 11, '[\"Events\"]', 0, 1, '2026-03-11 13:28:45', '2026-10-26 16:00:00', NULL),
(26, 'Architectural Design – Small House', 'architectural-design-small-house', 'Full architectural design package for residential houses up to 150 sqm.', 500000.00, '[\"Floor plans\",\"Elevations\",\"3D renders\",\"Material schedule\",\"2 revision rounds\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773243521_service-engineering (1).jpg\",\"assets\\/services\\/images\\/1773243521_service-engineering (2).jpg\"]', 'assets/services/thumbnails/1793036649_service.jpg', '10-14 working days', 8, '[\"Design\"]', 1, 0, '2026-03-11 13:38:41', '2026-10-26 15:44:09', NULL),
(27, 'Structural Design Package', 'structural-design-package', 'Structural analysis and design for residential and small commercial buildings.', 400000.00, '[\"Structural drawings\",\"Calculation report\",\"Foundation design\",\"Beam\\/column schedules\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773243703_service-engineering (2).jpg\",\"assets\\/services\\/images\\/1773243703_service-engineering.jpg\"]', 'assets/services/thumbnails/1793037651_service.jpg', '7-10 working days', 8, '[\"Design\"]', 0, 0, '2026-03-11 13:41:43', '2026-10-26 16:00:51', NULL),
(28, 'Construction Supervision – Monthly', 'construction-supervision-monthly', 'On-site construction supervision to ensure quality and compliance with designs.', 300000.00, '[\"Weekly site visits\",\"Progress reports\",\"Quality checks\",\"Monthly summary report\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773243869_service-engineering (1).jpg\",\"assets\\/services\\/images\\/1773243869_service-engineering (2).jpg\"]', 'assets/services/thumbnails/1793036625_service.jpg', 'Per month', 8, '[\"Supervision\"]', 1, 0, '2026-03-11 13:44:29', '2026-10-26 15:43:45', NULL),
(29, 'Social Media Pack – 10 Posts', 'social-media-pack-10-posts', 'Custom-designed social media graphics optimized for engagement.', 150000.00, '[\"10 designed posts\",\"Instagram & Facebook sizes\",\"Content calendar template\",\"Source files\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773244238_service-graphic.jpg\"]', 'assets/services/thumbnails/1793037638_s262.jpg', '5-7 working days', 7, '[\"Media\"]', 0, 0, '2026-03-11 13:50:38', '2026-10-26 16:00:38', NULL),
(30, 'Poster / Banner Design', 'poster-banner-design', 'Eye-catching poster or banner design for events, promotions, or branding.', 50000.00, '[\"1 poster\\/banner design\",\"Print-ready filePrint-ready file\",\"Digital version\",\"1 revision round\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773244439_service-graphic.jpg\"]', 'assets/services/thumbnails/1793036987_service.jpg', '2-3 working days', 7, NULL, 0, 0, '2026-03-11 13:53:59', '2026-10-26 15:49:47', NULL),
(31, 'Event Photography – Half Day', 'event-photography-half-day', 'Professional event photography coverage for your special occasions.', 200000.00, '[\"4 hours coverage\",\"100+ edited photos\",\"Online gallery\",\"Digital delivery\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773244787_service-graphic.jpg\"]', 'assets/services/thumbnails/1793037187_service.jpg', 'Book in advance', 7, '[\"Print\"]', 0, 0, '2026-03-11 13:59:47', '2026-10-26 15:53:07', NULL),
(32, 'Electrical Installation – Small Building', 'electrical-installation-small-building', 'Complete electrical wiring and installation for small residential buildings.', 200000.00, '[\"Wiring plan\",\"Material supply\",\"Installation\",\"Testing & certification\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773245086_1773239445_service-construction (1).jpg\",\"assets\\/services\\/images\\/1773245086_service-construction (1).jpg\"]', 'assets/services/thumbnails/1793037442_service.jpg', NULL, 9, '[\"Electrical\"]', 0, 0, '2026-03-11 14:04:46', '2026-10-26 15:57:22', NULL),
(33, 'Plumbing Installation Package', 'plumbing-installation-package', 'Complete electrical wiring and installation for small residential buildings.', 300000.00, '[\"System design\",\"Material supply\",\"Installation\",\"Pressure testing\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773245384_1773239445_service-construction (1).jpg\",\"assets\\/services\\/images\\/1773245384_service-construction (1).jpg\"]', 'assets/services/thumbnails/1793030131_service.jpg', 'Depends on scope', 9, '[\"Electrical\"]', 0, 0, '2026-03-11 14:09:44', '2026-10-26 13:55:31', NULL),
(34, 'Finishing Works Supervision', 'finishing-works-supervision', 'Expert supervision of finishing works to ensure quality standards.', 250000.00, '[\"Daily supervision\",\"Quality control\",\"Progress tracking\",\"Completion report\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773245727_1773239445_service-construction (1).jpg\",\"assets\\/services\\/images\\/1773245727_service-construction (1).jpg\"]', 'assets/services/thumbnails/1793037430_service.jpg', 'Depends on scope', 9, '[\"Finishing\"]', 0, 0, '2026-03-11 14:15:27', '2026-10-26 15:57:10', NULL),
(35, 'Laptop / Computer', 'laptop-computer', 'Quality laptops and desktop computers for work, school, and personal use.', 500000.00, '[\"Device\",\"Warranty card\",\"Setup assistance\",\"Delivery\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773246171_service-shop.jpg\"]', 'assets/services/thumbnails/1793037409_laptop.webp', '2-5 working days', 10, '[\"Computers\"]', 0, 0, '2026-03-11 14:22:51', '2026-10-26 15:56:49', NULL),
(36, 'Airtime & Digital Services', 'airtime-digital-services', 'Mobile airtime, data bundles, and digital subscription services.', 1000.00, '[\"Instant delivery\",\"Confirmation receipt\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773246317_service-shop.jpg\"]', 'assets/services/thumbnails/1793037320_service.jpg', NULL, 10, '[\"Digital\"]', 0, 0, '2026-03-11 14:25:17', '2026-10-26 15:55:20', NULL),
(37, 'Assisted Online Purchase Service', 'assisted-online-purchase-service', 'We help you find, order, and receive products from any online store worldwide.', 20000.00, '[\"Product sourcing\",\"Order placement\",\"Tracking updates\",\"Local delivery\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773246498_service-shop.jpg\"]', 'assets/services/thumbnails/1793037310_service.jpg', 'Varies by product', 10, '[\"Digital\"]', 0, 0, '2026-03-11 14:28:18', '2026-10-26 15:55:10', NULL),
(38, 'Event Refreshment Package – 50 People', 'event-refreshment-package-50-people', 'Complete refreshment setup for events with up to 50 attendees.', 250000.00, '[\"Water bottles\",\"Soft drinks\",\"Juice selection\",\"Setup & serving\",\"Cleanup\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773246688_service-refreshment.jpg\"]', 'assets/services/thumbnails/1793030101_service.jpg', 'Book 3+ days ahead', 11, '[\"Events\"]', 0, 0, '2026-03-11 14:31:28', '2026-10-26 13:55:01', NULL),
(39, 'Meeting Support Pack', 'meeting-support-pack', 'Professional refreshment setup for business meetings and workshops.', 80000.00, '[\"Water\",\"Tea\\/Coffee setup\",\"Snacks\",\"Serving supplies\"]', '[\"Add this package to your cart and proceed to checkout.\",\"Fill in your details and any special instructions.\",\"Choose your preferred payment method and confirm.\",\"Our team will contact you to start the service delivery.\"]', '[\"assets\\/services\\/images\\/1773247479_service-refreshment.jpg\"]', 'assets/services/thumbnails/1793030090_service.jpg', 'Book 1+ day ahead', 11, '[\"Meeting\"]', 1, 0, '2026-03-11 14:44:39', '2026-10-26 15:42:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `service_category` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `timeline` varchar(255) DEFAULT NULL,
  `files` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`files`)),
  `status` enum('pending','reviewed','completed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `user_id`, `customer_id`, `name`, `phone`, `email`, `service_category`, `description`, `budget`, `timeline`, `files`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Administrator', '0788001002', 'admin@example.com', 'Construction & Works', 'house construction', '100000', '1 week', NULL, 'reviewed', '2026-10-23 06:19:28', '2026-10-23 06:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('aDBu3ZNgHDfSKViITtsxdEfawYvC2u20GwemZASR', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQjVrbFo2OTZoeldtMHZycE8zSDRIZXJ6VllRWGZpaXNDSmhDT28xOSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdmVuZG9yL2RlbGl2ZXJpZXMiO3M6NToicm91dGUiO3M6MjM6InZlbmRvci5kZWxpdmVyaWVzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTA7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjY0OiJlYWQ5YjNlMTg3ZTIyOWJjNmZmOWJjNmY5MjhlMTBlNzA5OTE3YjkyZDMyNDdjMmM2YTM2YWQ0ZGNlMjEwMjk0Ijt9', 1793294498),
('mSTyP8OrJkjZ2y4P0dP6R02RauwHZlkUZWlwLIVX', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiNDRJS1ZadEI1VVFMbVo2aGpvODlveDlLR2FScVB0TTRja24wUEkzSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo4OiJjdXN0b21lciI7YTowOnt9czozOiJ1cmwiO2E6MDp7fXM6NTY6ImxvZ2luX2N1c3RvbWVyc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxMToibWFya2V0cGxhY2UiO2E6MTp7czoxMzoidHJhY2tlZF9vcmRlciI7aTozMDt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjQ6IjA2MzQyZjRkY2MwZDk4Yjk5NzQxZjgzNTcwOTIyYmJlZjFhZTM2YTc5YjJkMTdhZjhjNzI3ZTA3ZTQ2ZjM2YTkiO30=', 1793295505);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `name`, `slug`, `parent_id`, `active`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Electronics Equipment', 'electronics-equipment', NULL, 1, '2026-10-22 11:20:15', '2026-10-22 11:20:15', NULL),
(2, 'Computers', 'computers', 1, 1, '2026-10-22 11:20:15', '2026-10-24 11:48:50', NULL),
(3, 'Phone products', 'phone-products', 1, 1, '2026-10-24 11:17:40', '2026-10-24 11:48:50', NULL),
(4, 'Phones', 'phones', 1, 1, '2026-10-24 11:48:50', '2026-10-24 11:48:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('in_stock','out_of_stock') NOT NULL DEFAULT 'in_stock',
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `price` decimal(12,2) NOT NULL,
  `working_days` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `specifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`specifications`)),
  `thumbnail` varchar(255) DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `shop_category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `approval_status` varchar(255) DEFAULT NULL,
  `publication_status` varchar(255) DEFAULT NULL,
  `revision_status` varchar(255) DEFAULT NULL,
  `pending_payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pending_payload`)),
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `acquisition_cost` decimal(12,2) DEFAULT NULL,
  `stock_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stock_unit` varchar(32) DEFAULT NULL,
  `reserved_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tracks_inventory` tinyint(1) NOT NULL DEFAULT 0,
  `low_stock_threshold` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `product_type` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `submitted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT NULL,
  `discount_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `original_price` decimal(12,2) DEFAULT NULL,
  `is_finished` tinyint(1) NOT NULL DEFAULT 0,
  `inventory_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_products`
--

INSERT INTO `shop_products` (`id`, `product_name`, `slug`, `status`, `is_popular`, `description`, `price`, `working_days`, `features`, `specifications`, `thumbnail`, `images`, `shop_category_id`, `subcategory_id`, `created_at`, `updated_at`, `sku`, `approval_status`, `publication_status`, `revision_status`, `pending_payload`, `vendor_id`, `acquisition_cost`, `stock_quantity`, `stock_unit`, `reserved_quantity`, `tracks_inventory`, `low_stock_threshold`, `product_type`, `condition`, `internal_notes`, `created_by`, `submitted_by`, `approved_by`, `approved_at`, `submitted_at`, `discount_enabled`, `original_price`, `is_finished`, `inventory_notes`) VALUES
(1, 'HP computer', 'hp-computer', 'in_stock', 0, 'This is hp computer', 200000.00, 1, '[]', '[]', 'shop-products/thumbnails/6ada1b7dcb13b0.82872649.webp', '[]', 1, NULL, '2026-10-22 11:20:50', '2026-10-28 11:23:41', NULL, 'approved', 'published', NULL, NULL, 1, NULL, 60, NULL, 1, 1, 5, NULL, NULL, NULL, 8, 8, 2, '2026-10-22 12:32:52', '2026-10-22 12:19:41', 0, NULL, 0, NULL),
(2, 'Dell laptop', 'dell-laptop', 'in_stock', 1, 'the dell computer', 400000.00, 1, '[\"best\"]', '[{\"label\":\"RAM\",\"value\":\"16GB\"}]', 'shop-products/thumbnails/6ada2039742265.04086298.webp', '[\"shop-products\\/images\\/6adb567d0b0e54.15664571.jpg\",\"shop-products\\/images\\/6adb567d0b61f7.01805475.jpg\"]', 1, 2, '2026-10-22 12:39:53', '2026-10-28 13:00:29', NULL, 'approved', 'published', NULL, NULL, NULL, NULL, 20, 'computer', 15, 1, 5, NULL, NULL, NULL, 2, NULL, 2, '2026-10-23 05:58:39', NULL, 0, NULL, 0, NULL),
(3, 'Bluetooth earphone', 'bluetooth-earphone', 'in_stock', 1, NULL, 20000.00, 1, '[\"White\",\"Light\",\"Higher Bass\"]', '[{\"label\":\"Bluetooth\",\"value\":\"5.1\"},{\"label\":\"Speed\",\"value\":\"100 Mb\\/s\"}]', 'shop-products/thumbnails/6adcb0d56dfca4.16010565.jpg', '[\"shop-products\\/images\\/6adcb0d56ce526.56949798.jpg\",\"shop-products\\/images\\/6adcb0d56d53e2.82485469.jpg\",\"shop-products\\/images\\/6adcb0d56da598.31541386.jpg\"]', 1, 3, '2026-10-24 11:21:25', '2026-10-28 13:00:29', 'TH-PROD-0003', 'approved', 'published', NULL, NULL, NULL, 10000.00, 40, 'unit', 8, 1, 5, NULL, NULL, NULL, 2, NULL, 2, '2026-10-24 11:21:25', NULL, 0, NULL, 0, NULL),
(4, 'Samsung Galaxy S26', 'samsung-galaxy-s26', 'in_stock', 1, 'The latest version of samsung phones', 2500000.00, 1, '[\"Latest Samsung Phones\"]', '[{\"label\":\"RAM\",\"value\":\"16\"},{\"label\":\"Storage\",\"value\":\"512 GB\"}]', 'shop-products/thumbnails/6adcca2a50e284.04510562.jpg', '[\"shop-products\\/images\\/6adcc786ce6889.89827615.jpg\",\"shop-products\\/images\\/6adcc786cf66a8.57127330.jpg\",\"shop-products\\/images\\/6adcc786d026a9.31711204.jpg\",\"shop-products\\/images\\/6adcc786d0b310.91769689.jpg\"]', 1, 4, '2026-10-24 12:58:14', '2026-10-29 11:41:32', 'TH-PROD-0004', 'approved', 'published', NULL, NULL, 2, NULL, 40, 'phone', 13, 1, 5, NULL, NULL, NULL, 10, 10, 2, '2026-10-24 13:04:54', '2026-10-24 12:58:14', 0, NULL, 0, NULL),
(6, 'Phone covers', 'phone-covers', 'in_stock', 0, NULL, 10000.00, 1, '[]', '[]', 'shop-products/thumbnails/6ae20559cdb3c4.81666172.webp', '[\"shop-products\\/images\\/6ae1cebc2726c2.36031062.webp\",\"shop-products\\/images\\/6ae1cebc289393.63626792.webp\",\"shop-products\\/images\\/6ae1cebc298a87.48395775.jpg\"]', 1, 3, '2026-10-28 08:30:20', '2026-10-29 14:15:52', 'TH-PROD-0006', 'pending_approval', 'unpublished', NULL, '{\"initial_stock_quantity\":50}', 2, NULL, 2, 'unit', 0, 1, 5, NULL, NULL, NULL, 10, 10, NULL, NULL, '2026-10-28 08:30:20', 0, NULL, 0, NULL),
(7, 'Dell laptop', 'dell-laptop-1', 'in_stock', 1, NULL, 300000.00, 1, '[]', '[]', 'shop-products/thumbnails/6ae33bf80711e2.40125154.jpg', '[]', 1, 2, '2026-10-29 10:28:40', '2026-10-29 10:28:40', 'TH-PROD-0007', 'approved', 'published', NULL, NULL, NULL, NULL, 5, 'unit', 0, 1, 5, NULL, NULL, NULL, 2, NULL, 2, '2026-10-29 10:28:40', NULL, 0, NULL, 0, NULL),
(8, 'Computers', 'computers', 'in_stock', 1, NULL, 200000.00, 1, '[]', '[]', 'shop-products/thumbnails/6ae3416b4674b8.29894469.jpg', '[]', 1, 2, '2026-10-29 10:51:55', '2026-10-29 11:41:32', 'TH-PROD-0008', 'approved', 'published', NULL, NULL, 2, NULL, 10, 'unit', 1, 1, 5, NULL, NULL, NULL, 2, NULL, 2, '2026-10-29 10:54:34', NULL, 0, NULL, 0, NULL),
(9, 'Headset', 'headset', 'in_stock', 1, NULL, 20000.00, 1, '[]', '[]', 'shop-products/thumbnails/6ae35b99226f59.54711713.jpg', '[]', 1, 3, '2026-10-29 12:43:37', '2026-10-29 16:49:44', 'TH-PROD-0009', 'approved', 'published', NULL, NULL, NULL, NULL, 10, 'unit', 3, 1, 5, NULL, NULL, NULL, 2, NULL, 2, '2026-10-29 12:43:37', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `email`, `phone_number`, `position`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jean-Pierre K.', 'jean@gmail.com', '07888888888', 'Property Developer', '\"TRESCA Hub made ordering construction supervision so easy. Professional and reliable!\"', 'approved', '2026-03-06 19:38:48', '2026-03-06 19:42:25'),
(2, 'Alice M.', 'alice@gmail.com', '07888888', 'Small Business Owner', 'The graphic design packages are excellent value. Quick turnaround and great quality', 'approved', '2026-03-06 19:39:43', '2026-03-06 19:42:22'),
(3, 'David N.', 'david@gmail.com', '0788888888888', 'Architect', '\"Finally, a platform where I can order engineering services like shopping online. Brilliant!\"', 'approved', '2026-03-06 19:40:42', '2026-03-06 19:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `vendor_id`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 'super@example.com', '0788001000', NULL, '2026-10-22 09:28:14', '$2y$12$.tJyfTVuPyt3TCX4NS2fP.obZeiHK/27ZtWHCGEx7Zs0dwup//TSC', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:14', '2026-10-22 09:28:14'),
(2, 'Administrator', 'admin@example.com', '0788001002', NULL, '2026-10-22 09:28:14', '$2y$12$lMYp5D60L.6rYOdFY0cD7OlIRMr4ZFDifzfyvFp7ZepsxLBUbz.FO', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:14', '2026-10-22 09:28:14'),
(3, 'Operations Manager', 'operations@example.com', '0788001003', NULL, '2026-10-22 09:28:15', '$2y$12$Gs3wuVvKPgfjnvgLdblYWO1RPK82I7FmIZNc3a5df28lY/eJOHNq6', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(4, 'Product Manager', 'catalog@example.com', '0788001004', NULL, '2026-10-22 09:28:15', '$2y$12$KLNGD8XhEsiCnCR5i9Bg7uQCthVnoJhR1dkdjzFw9dc8dgQwopUuu', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(5, 'Request Officer', 'requests@example.com', '0788001005', NULL, '2026-10-22 09:28:15', '$2y$12$EC1AG6egMURf7otf4OW5Wu7aYddZFe6ZoVYp9jQuz9tOTJEmFCZHe', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:15', '2026-10-22 09:28:15'),
(6, 'Inventory Officer', 'inventory@example.com', '0788001006', NULL, '2026-10-22 09:28:15', '$2y$12$cwA6h6Jnqac80GziuPFNPO4v97WzVd7omg761arRl3tWSYBX2jdM.', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(7, 'Delivery Officer', 'delivery@example.com', '0788001007', NULL, '2026-10-22 09:28:16', '$2y$12$TI/mCytU2Nd5BVO5lYWjku5ViV1DEqss6zF/f43j3/mAO2s5Uq.na', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:16', '2026-10-22 09:28:16'),
(8, 'Kigali Supplies', 'vendor@example.com', '0788001001', 1, '2026-10-22 09:28:16', '$2y$12$NiodJHzIP6jUAywbCdko3.TXqgGtednqHm7nqzh7TATtUnQKpewoi', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:16', '2026-10-26 06:44:02'),
(9, 'Customer', 'customer@example.com', '0788001008', NULL, '2026-10-22 09:28:16', '$2y$12$QQb10KbCeSQmnbuspb2lzOEQDtCOj1Lc8oZVzkqVAH3x9N5VZoNFa', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-22 09:28:16', '2026-10-26 14:20:07'),
(10, 'Edi Shop', 'edisport@example.com', '0788888888', 2, '2026-10-24 12:19:15', '$2y$12$CI/L4.ZaT/pKYzAqX/LtleisbnbW6gUuC52aCgAgz0bq27qclgpuG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-24 12:19:15', '2026-10-26 09:40:15'),
(11, 'manager', 'inventorymanager@example.com', '0788001002', NULL, '2026-10-24 12:31:10', '$2y$12$MmDgAA1OdwvtMEkbxj6.neWIeBeKrS9Uq89AMC1D9dqNIlEA.Xuhi', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-24 12:31:10', '2026-10-24 12:31:10'),
(12, 'MUKIZA FRED', 'fred@gmail', '0788001002', NULL, NULL, '$2y$12$M6ZoQ31t.vqdRyuvJ61cLu/oWtKwJGbGzZxV99KU5/2m1WJFdraGW', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-26 12:27:55', '2026-10-26 14:20:07'),
(13, 'TRESCA SHOP+', 'trescashop@gmail.com', '0788888888', 3, '2026-10-28 14:00:15', '$2y$12$MUBE21PQh5MihH0/fz8IguqQs3VJo8iN41pu9zMlRRdOwh1spTnCm', NULL, NULL, NULL, NULL, NULL, NULL, '2026-10-28 14:00:15', '2026-10-28 14:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `legal_name` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `district` varchar(255) DEFAULT NULL,
  `operating_location` varchar(255) DEFAULT NULL,
  `address_notes` text DEFAULT NULL,
  `internal_notes` text DEFAULT NULL,
  `public_branding_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_logo_path` varchar(255) DEFAULT NULL,
  `website_url` varchar(2048) DEFAULT NULL,
  `show_as_partner` tinyint(1) NOT NULL DEFAULT 0,
  `partner_description` text DEFAULT NULL,
  `display_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `partner_display_status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `business_name`, `legal_name`, `reference_number`, `email`, `phone`, `status`, `district`, `operating_location`, `address_notes`, `internal_notes`, `public_branding_approved`, `created_at`, `updated_at`, `business_logo_path`, `website_url`, `show_as_partner`, `partner_description`, `display_order`, `partner_display_status`) VALUES
(1, 'Kigali Supplies', 'Kigali Supplies Ltd', 'VND-SEED-001', 'vendor@example.com', '0788001001', 'active', 'Gasabo', 'Internal warehouse', NULL, 'Seeded vendor account for local development.', 1, '2026-10-22 09:28:14', '2026-10-28 14:03:23', 'vendors/logos/6ae21cbef30b82.53283174.jpg', NULL, 1, NULL, 0, 'published'),
(2, 'Edi Shop', 'Edison Shop', '122334', 'edisport@example.com', '0788888888', 'active', 'Kicukiro', 'Gasabo', NULL, NULL, 1, '2026-10-24 12:19:15', '2026-10-26 09:41:25', 'vendors/logos/6adccfe9964678.63062203.png', NULL, 1, NULL, 1, 'published'),
(3, 'TRESCA SHOP+', 'TRESCA SHOP', NULL, 'trescashop@gmail.com', '0788888888', 'active', 'Nyarugenge', 'Kiyovu', NULL, NULL, 1, '2026-10-28 14:00:15', '2026-10-28 14:01:18', 'vendors/logos/6ae21c0fa4e2b5.09727251.png', NULL, 1, NULL, 0, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Browse', 'Explore our 5 service stores and find what you need.', '2026-03-06 20:43:49', '2026-03-06 20:43:49'),
(2, 'Add to Cart', 'Select packages, customize quantities, and add to cart.', '2026-03-06 20:44:15', '2026-03-06 20:44:15'),
(3, 'Checkout', 'Fill in your details, choose payment, and confirm.', '2026-03-06 20:45:40', '2026-03-06 20:45:40'),
(4, 'Track & Receive', 'Track your order status and get support anytime.', '2026-03-06 20:46:12', '2026-03-06 20:46:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_logs_user_id_foreign` (`user_id`),
  ADD KEY `audit_logs_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audit_logs_action_index` (`action`);

--
-- Indexes for table `backgrounds`
--
ALTER TABLE `backgrounds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backgrounds_slug_unique` (`slug`),
  ADD KEY `backgrounds_slug_index` (`slug`),
  ADD KEY `backgrounds_created_at_index` (`created_at`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `ctas`
--
ALTER TABLE `ctas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctas_cta_category_title_foreign` (`cta_category_title`);

--
-- Indexes for table `cta_categories`
--
ALTER TABLE `cta_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cta_categories_title_unique` (`title`),
  ADD UNIQUE KEY `cta_categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_user_id_unique` (`user_id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_customer_id_is_default_index` (`customer_id`,`is_default`);

--
-- Indexes for table `customer_password_reset_tokens`
--
ALTER TABLE `customer_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_attempts_delivery_task_id_foreign` (`delivery_task_id`),
  ADD KEY `delivery_attempts_user_id_foreign` (`user_id`);

--
-- Indexes for table `delivery_tasks`
--
ALTER TABLE `delivery_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_tasks_reference_unique` (`reference`),
  ADD KEY `delivery_tasks_order_id_foreign` (`order_id`),
  ADD KEY `delivery_tasks_order_item_id_foreign` (`order_item_id`),
  ADD KEY `delivery_tasks_vendor_id_foreign` (`vendor_id`),
  ADD KEY `delivery_tasks_product_location_id_foreign` (`product_location_id`),
  ADD KEY `delivery_tasks_assigned_officer_id_foreign` (`assigned_officer_id`),
  ADD KEY `delivery_tasks_delivery_officer_id_foreign` (`delivery_officer_id`),
  ADD KEY `delivery_tasks_status_index` (`status`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventory_adjustment_requests`
--
ALTER TABLE `inventory_adjustment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_adjustment_requests_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `inventory_adjustment_requests_requested_by_foreign` (`requested_by`),
  ADD KEY `inventory_adjustment_requests_reviewed_by_foreign` (`reviewed_by`),
  ADD KEY `inventory_adjustment_requests_status_created_at_index` (`status`,`created_at`),
  ADD KEY `inventory_adjustment_requests_vendor_id_status_index` (`vendor_id`,`status`);

--
-- Indexes for table `inventory_adjustment_submissions`
--
ALTER TABLE `inventory_adjustment_submissions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `inventory_adjustment_submissions_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `inventory_adjustment_submissions_user_id_foreign` (`user_id`);

--
-- Indexes for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_movements_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `inventory_movements_product_location_id_foreign` (`product_location_id`),
  ADD KEY `inventory_movements_user_id_foreign` (`user_id`),
  ADD KEY `inventory_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_reference_unique` (`reference`),
  ADD UNIQUE KEY `orders_submission_key_unique` (`submission_key`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_assigned_officer_id_foreign` (`assigned_officer_id`),
  ADD KEY `orders_delivery_officer_id_foreign` (`delivery_officer_id`),
  ADD KEY `orders_fulfillment_status_index` (`fulfillment_status`),
  ADD KEY `orders_payment_status_index` (`payment_status`),
  ADD KEY `orders_phone_index` (`phone`),
  ADD KEY `orders_customer_id_index` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `order_items_product_location_id_foreign` (`product_location_id`),
  ADD KEY `order_items_vendor_id_index` (`vendor_id`),
  ADD KEY `order_items_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_payments_submission_key_unique` (`submission_key`),
  ADD KEY `order_payments_recorded_by_foreign` (`recorded_by`),
  ADD KEY `order_payments_order_id_created_at_index` (`order_id`,`created_at`);

--
-- Indexes for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_histories_order_id_foreign` (`order_id`),
  ADD KEY `order_status_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `partners_slug_unique` (`slug`),
  ADD KEY `partners_slug_index` (`slug`),
  ADD KEY `partners_created_at_index` (`created_at`),
  ADD KEY `partners_public_visibility_index` (`status`,`show_on_website`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`permission_id`,`user_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `product_approval_histories`
--
ALTER TABLE `product_approval_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_approval_histories_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `product_approval_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_locations_shop_product_id_foreign` (`shop_product_id`);

--
-- Indexes for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_requests_reference_unique` (`reference`),
  ADD KEY `product_requests_user_id_foreign` (`user_id`),
  ADD KEY `product_requests_shop_product_id_foreign` (`shop_product_id`),
  ADD KEY `product_requests_vendor_id_foreign` (`vendor_id`),
  ADD KEY `product_requests_assigned_officer_id_foreign` (`assigned_officer_id`),
  ADD KEY `product_requests_product_location_id_foreign` (`product_location_id`),
  ADD KEY `product_requests_order_id_foreign` (`order_id`),
  ADD KEY `product_requests_status_index` (`status`),
  ADD KEY `product_requests_customer_id_index` (`customer_id`),
  ADD KEY `product_requests_product_variation_id_foreign` (`product_variation_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_product_default_index` (`shop_product_id`,`is_default`);

--
-- Indexes for table `request_status_histories`
--
ALTER TABLE `request_status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_status_histories_product_request_id_foreign` (`product_request_id`),
  ADD KEY `request_status_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_requests_user_id_index` (`user_id`),
  ADD KEY `service_requests_customer_id_index` (`customer_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_categories_slug_unique` (`slug`),
  ADD KEY `shop_categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_products_slug_unique` (`slug`),
  ADD UNIQUE KEY `shop_products_sku_unique` (`sku`),
  ADD KEY `shop_products_slug_index` (`slug`),
  ADD KEY `shop_products_status_index` (`status`),
  ADD KEY `shop_products_is_popular_index` (`is_popular`),
  ADD KEY `shop_products_shop_category_id_index` (`shop_category_id`),
  ADD KEY `shop_products_subcategory_id_index` (`subcategory_id`),
  ADD KEY `shop_products_created_at_index` (`created_at`),
  ADD KEY `shop_products_vendor_id_foreign` (`vendor_id`),
  ADD KEY `shop_products_created_by_foreign` (`created_by`),
  ADD KEY `shop_products_submitted_by_foreign` (`submitted_by`),
  ADD KEY `shop_products_approved_by_foreign` (`approved_by`),
  ADD KEY `shop_products_approval_status_index` (`approval_status`),
  ADD KEY `shop_products_publication_status_index` (`publication_status`);
ALTER TABLE `shop_products` ADD FULLTEXT KEY `shop_products_product_name_description_fulltext` (`product_name`,`description`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_reference_number_unique` (`reference_number`),
  ADD KEY `vendors_status_index` (`status`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `backgrounds`
--
ALTER TABLE `backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ctas`
--
ALTER TABLE `ctas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cta_categories`
--
ALTER TABLE `cta_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_tasks`
--
ALTER TABLE `delivery_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_adjustment_requests`
--
ALTER TABLE `inventory_adjustment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_approval_histories`
--
ALTER TABLE `product_approval_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_locations`
--
ALTER TABLE `product_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_requests`
--
ALTER TABLE `product_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `request_status_histories`
--
ALTER TABLE `request_status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `audit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ctas`
--
ALTER TABLE `ctas`
  ADD CONSTRAINT `ctas_cta_category_title_foreign` FOREIGN KEY (`cta_category_title`) REFERENCES `cta_categories` (`title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_attempts`
--
ALTER TABLE `delivery_attempts`
  ADD CONSTRAINT `delivery_attempts_delivery_task_id_foreign` FOREIGN KEY (`delivery_task_id`) REFERENCES `delivery_tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_attempts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `delivery_tasks`
--
ALTER TABLE `delivery_tasks`
  ADD CONSTRAINT `delivery_tasks_assigned_officer_id_foreign` FOREIGN KEY (`assigned_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `delivery_tasks_delivery_officer_id_foreign` FOREIGN KEY (`delivery_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `delivery_tasks_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_tasks_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `delivery_tasks_product_location_id_foreign` FOREIGN KEY (`product_location_id`) REFERENCES `product_locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `delivery_tasks_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory_adjustment_requests`
--
ALTER TABLE `inventory_adjustment_requests`
  ADD CONSTRAINT `inventory_adjustment_requests_requested_by_foreign` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inventory_adjustment_requests_reviewed_by_foreign` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inventory_adjustment_requests_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_adjustment_requests_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory_adjustment_submissions`
--
ALTER TABLE `inventory_adjustment_submissions`
  ADD CONSTRAINT `inventory_adjustment_submissions_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_adjustment_submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD CONSTRAINT `inventory_movements_product_location_id_foreign` FOREIGN KEY (`product_location_id`) REFERENCES `product_locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `inventory_movements_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_movements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_assigned_officer_id_foreign` FOREIGN KEY (`assigned_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_delivery_officer_id_foreign` FOREIGN KEY (`delivery_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_location_id_foreign` FOREIGN KEY (`product_location_id`) REFERENCES `product_locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_items_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_items_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_items_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_payments_recorded_by_foreign` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_status_histories`
--
ALTER TABLE `order_status_histories`
  ADD CONSTRAINT `order_status_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_status_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_approval_histories`
--
ALTER TABLE `product_approval_histories`
  ADD CONSTRAINT `product_approval_histories_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_approval_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD CONSTRAINT `product_locations_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_requests`
--
ALTER TABLE `product_requests`
  ADD CONSTRAINT `product_requests_assigned_officer_id_foreign` FOREIGN KEY (`assigned_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_product_location_id_foreign` FOREIGN KEY (`product_location_id`) REFERENCES `product_locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_requests_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_shop_product_id_foreign` FOREIGN KEY (`shop_product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_status_histories`
--
ALTER TABLE `request_status_histories`
  ADD CONSTRAINT `request_status_histories_product_request_id_foreign` FOREIGN KEY (`product_request_id`) REFERENCES `product_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_status_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `service_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD CONSTRAINT `shop_categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `shop_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shop_products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shop_products_shop_category_id_foreign` FOREIGN KEY (`shop_category_id`) REFERENCES `shop_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `shop_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shop_products_submitted_by_foreign` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shop_products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
