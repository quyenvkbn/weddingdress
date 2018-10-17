-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2018 lúc 01:47 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `weddingdress_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `facebook` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `image`, `is_deleted`, `facebook`, `instagram`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(28, 'team-1.jpg', 0, '', '', '2018-02-10 04:28:14', 'administrator', '2018-02-10 04:28:14', 'administrator'),
(29, 'team-2.jpg', 0, '', '', '2018-02-10 04:29:37', 'administrator', '2018-02-10 04:29:37', 'administrator'),
(30, 'team-3.jpg', 0, '', '', '2018-02-10 04:30:54', 'administrator', '2018-02-10 04:30:54', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about_lang`
--

CREATE TABLE `about_lang` (
  `id` int(11) NOT NULL,
  `about_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `about_lang`
--

INSERT INTO `about_lang` (`id`, `about_id`, `name`, `slug`, `position`, `description`, `language`) VALUES
(33, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(34, 28, 'THOMAS ANDERSON', 'thomas-anderson', 'Executif Chef', '\"1111111Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'hu'),
(35, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(36, 29, 'ROBERTO CONTADOR', 'roberto-contador', 'Séf', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu'),
(37, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Pastry Chef', '\"Every day brings more pleasure and sense of marvel. When New York city waking up and going to sleep is simply magical.\"', 'en'),
(38, 30, 'ANTUAN BUCHON', 'antuan-buchon', 'Cukrász', '\"Minden nap nagyobb örömöt és csodálkozást hoznak, amikor New York-i város ébred és alszik, egyszerűen varázslatos.\"', 'hu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` text,
  `is_actived` tinyint(1) DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `is_actived`, `text`, `url`, `created_at`, `created_by`, `modified_at`, `modified_by`, `is_deleted`) VALUES
(22, 'cover_1.jpg', 1, 'Tiêu đề slide_1', 'http://thienlocxuan.com.vn/physic', '2017-11-10 15:18:34', 'administrator', '2017-11-10 15:18:34', 'administrator', 0),
(23, 'slide_3.jpg', 1, 'Tiêu đề slide_2', '', '2017-11-10 15:19:51', 'administrator', '2017-11-10 15:19:51', 'administrator', 0),
(24, 'slide_31.jpg', 0, 'Tiêu đề slide_3', '', '2017-11-10 15:39:34', 'administrator', '2017-11-10 15:39:34', 'administrator', 0),
(27, '2017-Porsche-Panamera-Turbo-front-three-quarter-03.jpg', 0, '', '123123', '2017-12-05 09:44:53', 'administrator', '2017-12-05 09:44:53', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1d6d2ef5cbe48491b53b5c2ae95d1d4f14c98f82', '::1', 1516590779, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363539303735363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353134333939313533223b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_left` text COLLATE utf8mb4_unicode_ci,
  `image_right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `collection`
--

INSERT INTO `collection` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `image_left`, `image_right`, `is_activated`) VALUES
(27, 'bo-suu-tap-2018', 0, 0, '2018-10-17 15:46:50', 'administrator', '2018-10-17 15:46:50', 'administrator', '59f14f31be4c8.jpg', '59f1590d0ba8b.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `collection_lang`
--

CREATE TABLE `collection_lang` (
  `id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `collection_lang`
--

INSERT INTO `collection_lang` (`id`, `collection_id`, `title`, `description`, `content`, `metadescription`, `metakeywords`, `language`) VALUES
(97, 27, '     Bộ sưu tập 2018', '     Bộ sưu tập 2018', '', '     Bộ sưu tập 2018', '     Bộ sưu tập 2018', 'vi'),
(98, 27, 'Collection 2018     ', 'Collection 2018     ', '', 'Collection 2018     ', 'Collection 2018     ', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_activated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `product_id`, `user_id`, `content`, `ip_address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(1, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0),
(2, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 0),
(3, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0),
(4, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 0),
(5, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 0),
(6, 56, 1, 'ANH THẾ GIỚI VÀ EM - HƯƠNG TRÀM SINGER ( OFFICIAL Lyric Video )', '::1', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_contact`
--

CREATE TABLE `config_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_send_mail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'members_client', 'General User Client');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(4) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `check_menu_children` int(11) NOT NULL DEFAULT '0' COMMENT '0 : nochildrenmenu; 1 : childrenmenue',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_post` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_lang`
--

CREATE TABLE `menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `post_category_id`, `templates_id`, `slug`, `avatar`, `image`, `data`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(1, 1, 24, 'post-new1', '', '2c937ab6cfe6cd5ef3ad77196e96e05c_thumb.jpg', '[]', '2018-10-16 12:21:31', 'administrator', '2018-10-16 12:21:31', 'administrator', 0, 0),
(2, 1, 24, 'dich-vu', '', '59f14f31be4c8.jpg', '[]', '2018-10-17 13:51:09', 'administrator', '2018-10-17 13:51:09', 'administrator', 0, 0),
(3, 1, 24, 'dich-vu-1', '', '59f151088f5561.jpg', '[]', '2018-10-17 13:55:42', 'administrator', '2018-10-17 13:55:42', 'administrator', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0' COMMENT '0 : list; 1 : detail',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0 : active; 1 : deactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `parent_id`, `project`, `image`, `sort`, `type`, `is_activated`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'dich-vu', 0, '', '8edca6dc4095c11ae677a5b4aab4b5bc_thumb.jpg', NULL, NULL, 0, 0, '2018-10-16 12:03:01', 'administrator', '2018-10-16 12:03:01', 'administrator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category_lang`
--

CREATE TABLE `post_category_lang` (
  `id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category_lang`
--

INSERT INTO `post_category_lang` (`id`, `post_category_id`, `title`, `description`, `content`, `language`, `metakeywords`, `metadescription`) VALUES
(1, 1, ' Dịch vụ', '  Dịch vụ', '<p>Dịch vụ</p>', 'vi', ' Dịch vụ', ' Dịch vụ'),
(2, 1, ' Service ', '  Service ', '<p>Service</p>', 'en', ' Service ', ' Service ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_lang`
--

CREATE TABLE `post_lang` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_lang`
--

INSERT INTO `post_lang` (`id`, `post_id`, `title`, `description`, `content`, `data_lang`, `language`, `metakeywords`, `metadescription`) VALUES
(1, 1, 'Bài viết mới1', 'Bài viết mới2', '<p>B&agrave;i viết mới3</p>', '{\"tu_khoa_meta\":\"B\\u00e0i vi\\u1ebft m\\u1edbi4\",\"mo_ta_meta\":\"B\\u00e0i vi\\u1ebft m\\u1edbi5\"}', 'vi', '', ''),
(2, 1, 'Post new1', 'Post new2', '<p>Post new3</p>', '{\"tu_khoa_meta\":\"Post new4\",\"mo_ta_meta\":\"Post new5\"}', 'en', '', ''),
(3, 2, 'Dịch vụ', '', '', '{\"tu_khoa_meta\":\"\",\"mo_ta_meta\":\"\"}', 'vi', '', ''),
(4, 2, 'Dịch vụ', '', '', '{\"tu_khoa_meta\":\"\",\"mo_ta_meta\":\"\"}', 'en', '', ''),
(5, 3, 'Dịch vụ', 'Dịch vụ', '<p>1</p>', '{\"tu_khoa_meta\":\"1\",\"mo_ta_meta\":\"1\"}', 'vi', '', ''),
(6, 3, 'Dịch vụ', 'Dịch vụ', '<p>2</p>', '{\"tu_khoa_meta\":\"2\",\"mo_ta_meta\":\"2\"}', 'en', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricepromotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_rent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricepromotion_rent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `common` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1:deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_category_id`, `templates_id`, `data`, `slug`, `avatar`, `image`, `collection`, `collection_id`, `price`, `pricepromotion`, `price_rent`, `pricepromotion_rent`, `date`, `type`, `common`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`, `is_activated`) VALUES
(6, 22, 23, '[]', 'vay-cuoi-40', '', '59f14f31be4c8.jpg', '[\"59f14f31be4c81.jpg\",\"59f14f31be4c82.jpg\",\"59f14f31be4c83.jpg\",\"59f14f31be4c84.jpg\",\"59f14f31be4c85.jpg\"]', 27, '7000000', '6700000', '1000000', '700000', '16/10/2018,18/10/2018,20/10/2018', 0, '{\"sale\":\"true\",\"rent\":\"true\",\"rent_sale\":\"true\",\"showpromotion\":\"true\",\"showpromotion_rent\":\"false\"}', '2018-10-17 17:16:11', 'administrator', '2018-10-17 17:16:11', 'administrator', 0, 0),
(7, 22, 23, '{}', 'que', '', '', '[]', 27, '', '', '', '', '', 0, '{\"sale\":\"false\",\"rent\":\"false\",\"rent_sale\":\"false\",\"showpromotion\":\"false\",\"showpromotion_rent\":\"false\"}', '2018-10-17 17:12:47', 'administrator', '2018-10-17 17:12:47', 'administrator', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `sort` tinyint(4) DEFAULT NULL,
  `is_activated` tinyint(4) DEFAULT '0' COMMENT '0: active; 1: deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(22, 'vay-cuoi', 0, 0, '2018-10-15 16:51:50', 'administrator', '2018-10-15 16:51:50', 'administrator', '', '42fcad2f1e83e7b1dcc05018b485cb5b_thumb.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category_lang`
--

CREATE TABLE `product_category_lang` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakeywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category_lang`
--

INSERT INTO `product_category_lang` (`id`, `product_category_id`, `title`, `description`, `content`, `metadescription`, `metakeywords`, `language`) VALUES
(87, 22, ' Váy Cưới', '  Váy Cưới', '<p>V&aacute;y Cưới</p>', '  Váy Cưới', ' Váy Cưới', 'vi'),
(88, 22, ' Wedding dress ', '  Wedding dress ', '<p>Wedding dress</p>', '  Wedding dress ', ' Wedding dress  ', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_lang`
--

CREATE TABLE `product_lang` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_lang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_lang`
--

INSERT INTO `product_lang` (`id`, `product_id`, `title`, `description`, `content`, `data_lang`, `language`) VALUES
(11, 6, 'Váy cưới 4.0', 'Người ta thường nói rằng phụ nữ trông đẹp nhất khi họ khoác lên mình chiếc váy cưới cô dâu? Ngày các nàng bước lên xe hoa như một kỷ niệm mà bất cứ ai cũng sẽ không bao giờ quên được. Và kể từ đây, cuộc đời mỗi người - Tất cả sẽ được định đoạt từ cột mốc các nàng \"đắm mình\" trong chiếc váy cưới đẹp - \"chiếc váy\" cuộc đời.', '<p>Nổi tiếng với những đường cắt may tinh tế tr&ecirc;n nền chất liệu cao cấp, những mẫu v&aacute;y cưới hiện đại kh&ocirc;ng chỉ t&ocirc;n l&ecirc;n n&eacute;t đẹp nữ t&iacute;nh m&agrave; c&ograve;n mang đến sự thoải m&aacute;i m&agrave; kh&ocirc;ng k&eacute;m phần lộng lẫy, sang trọng cho t&acirc;n nương. Sở hữu nhiều tầng v&aacute;y bay bổng mang lại vẻ sang trọng nhưng vẫn kh&ocirc;ng k&eacute;m phần mỏng nhẹ, những chất liệu như voan, satin thường được sử dụng khi may v&aacute;y cưới, được điểm xuyết bằng phần lưng v&aacute;y lạ mắt &ocirc;m d&aacute;ng gi&uacute;p chiếc v&aacute;y trở n&ecirc;n v&ocirc; c&ugrave;ng ấn tượng. Phần h&ocirc;ng v&aacute;y cũng được chăm ch&uacute;t từng chi tiết, thắt eo nhiều hơn&nbsp;tạo điểm nhấn&nbsp;khiến chiếc v&aacute;y cưới&nbsp;th&ecirc;m phần quyến rũ kh&oacute; cưỡng.</p>', '{\"tu_khoa_meta\":\"V\\u00e1y c\\u01b0\\u1edbi 4.0\",\"mo_ta_meta\":\"V\\u00e1y c\\u01b0\\u1edbi 4.0\"}', 'vi'),
(12, 6, 'Wedding dresses 4.0', 'It is often said that women look the best when they wear a bridal gown. On the ladies step on the flower car as a memory that anyone will never forget. And from here on, the life of each person - All will be determined from the milestone of her \"immersed\" in the beautiful wedding dress - \"dress\" life.', '<p>Famous for its fine cut lines on high quality materials, modern wedding dresses not only show off the feminine beauty, but also bring the comfort that is no less glamorous and luxurious for the bride. Owning a lot of layers of flying skirts brings elegance but still no less thin, materials such as chiffon, satin are often used in wedding dresses, are highlighted by the back of fancy skirts to help shape the skirt. became very impressed. The hips are also carefully dressed in detail, tightening waist more emphasis to make the wedding dress more attractive charm.</p>', '{\"tu_khoa_meta\":\"Wedding dresses 4.0\",\"mo_ta_meta\":\"Wedding dresses 4.0\"}', 'en'),
(13, 7, 'qưe', '', '', '{\"tu_khoa_meta\":\"\",\"mo_ta_meta\":\"\"}', 'vi'),
(14, 7, 'qew', '', '', '{\"tu_khoa_meta\":\"\",\"mo_ta_meta\":\"\"}', 'en');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_sessions`
--

CREATE TABLE `site_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `site_sessions`
--

INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('034tlqn1b1mfa6684e7ck1fd34qnan1h', '::1', 1539597155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539373135353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0496n7shohqlso5sgfprh031lrv25fat', '::1', 1538634549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633343534393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('08d64llt8eup10q92hfr80o31at4r10m', '::1', 1539600702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630303730323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0amek5684ik4c49qfdgf57fms7k3oo93', '::1', 1538987656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938373635363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('0ef4ai51uvtffg1srnb3qrj2o4tmne55', '::1', 1539686143, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638353835323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('0ejhrn55akst288t7dkjt7oj28me2853', '::1', 1538985103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938353130333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('0j5jc9time12fr4jisqa26utbt6v4b9q', '::1', 1539595690, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539353639303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0jofac137etgjoc5q81g90jcnk1a6qjp', '::1', 1539597569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539373536393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0mqrjk9fsmr062lhp0krkvsqp0vgfmh3', '::1', 1538987959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938373935393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('1181hs94d30ikheocr0vmvrc2gklos0v', '::1', 1539759768, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735393736383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('12cs5oq7ibbmcahpufvnhqi5o9lsdakv', '::1', 1539744442, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734343434323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('13u083ramaccmct0erckpvsq9lrg8ndb', '::1', 1538972873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383937323837333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('170f1mqamucjlegg5168cnq2ur2bh5q8', '::1', 1538965637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936353633373b),
('1aanssm84nmoamqb5nrtd6tsv6gehjld', '::1', 1539757215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735373231353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('1nm83dtobardo9q38bme94kcvria240u', '::1', 1539683310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638333331303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('1opul7jb22bfer6t4nibembkd3dorstu', '::1', 1538636096, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633363039363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('1qg93n09qcbm5psjb0hq19cfdp68d85f', '::1', 1539763166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736333136363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('1u7tfqf8252ohsp1l2k4oj7a5p5ugin0', '::1', 1539772252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737323235323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('1vqpfhlo13gt3ds5ps29iug4o6f21npc', '::1', 1539667433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636373337363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('22n7k9froi2vqa9ijb6a331capgcvvif', '::1', 1539662001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636323030313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('29vbtrgph71bf4q1meqo0fvtsovd84rl', '::1', 1539684853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638343835333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('2h67sgi95e7637nd7akogjq8m8mmsikt', '::1', 1539598246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539383234363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2iq7a4g3bejh8c5q1n7veo9l18qsauer', '::1', 1538643717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383634333731373b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('36l6vhne6nptofu26qc1ahnrk6c4o4i5', '::1', 1539761668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736313636383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('3g9fp191riitfg0vd2t4hindnca4ircp', '::1', 1539593859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539333835393b),
('3gs169mu5e6kv9juvdj4epu484g6bced', '::1', 1539053580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035333538303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('3k38dc72j412gf3q5fppqamhj2i40hcd', '::1', 1539665777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636353737373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('3ls524ur5ehb7k5e4o8e8hmed0dn5ecr', '::1', 1539660215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636303231353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('3o07chutc65u9earinfqkdj89785eu78', '::1', 1539657456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635373435363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('3ptlov7am72l5uh95j453paliek4d1at', '::1', 1539752162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735323136323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('3te3gghspombl4bvq1ckbpa9bopjqhur', '::1', 1539747430, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734373433303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('4acg26hvtvgja49md5farhg1lbrqddgd', '::1', 1539764761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736343736313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('4appdoa5bpims5migskpfpfkdhtmtbii', '::1', 1539665428, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636353432383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('4imblv56qabitf580j6h9ghom6lv642u', '::1', 1538986906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938363930363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('4kg0o4srqbtv5el9ii8o2etivrutihkh', '::1', 1538988660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938383636303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('4mstn27ar2snfe0orsoi5gkrq15d99vb', '::1', 1538635275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633353237353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('4pvb0vrnh005fm6tiitcoppp2gi34nmj', '::1', 1539238314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393233383331343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339303532393134223b6c6173745f636865636b7c693a313533393233383038383b),
('4q7b5s43uf3dauokb3ucrf01jej0q5ha', '::1', 1539758229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735383232393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('4tn36qctk833gfh2pls6vmroos1cf1da', '::1', 1539681049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638313034393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('53ng5toies81q4jjg57die8uujgbm9r3', '::1', 1539599099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539393039393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('55a0p31t6befu645u2j2ibv8i1o3d5ov', '::1', 1539661662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636313636323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('59lrnufmmspdvjuduad0pgl8h07bgsoe', '::1', 1539664783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636343738333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('5a1v7ub562b1gng67eba6d4tts4tmgsg', '::1', 1539753084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735333038343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('5escmspfmjva31dv8uoiipn1sohd6dc0', '::1', 1538968567, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936383536373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('5nd0rnivhe8hda0ktf4157a1ov4u0oo1', '::1', 1538648978, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383634383730383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363336313331223b6c6173745f636865636b7c693a313533383634383836383b),
('5rgvtepllkvl3nu651na4k2g34t5pcf7', '::1', 1539747832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734373833323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('5vkmrat8m6pog6ot9mnfnaav8r3bh43h', '::1', 1539741983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734313938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('62h2d7mc35p18hrr3f8ouc8nbktdnqf2', '::1', 1538989899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938393839393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('69a7e77n6oiborvkbs8l1tfc8q4fqgtb', '::1', 1539744083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734343038333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('6kjig40revdbfuvclhsgtsr0iqfb98gt', '::1', 1539663325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636333332353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('6qpgqdo7bs75q25m2jhrvo83r7fqt2u6', '::1', 1539682259, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638323235393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('6r1pqo0trgn2fksllive35ipaj73k87d', '::1', 1538791399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383739313338393b6c616e67416262726576696174696f6e7c733a323a227669223b),
('75mm7lt13vbqbpk7kfeb280t1g0ohcir', '::1', 1539676985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393637363938353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('7h92339scupmu6vadqutsmseiqgao8dc', '::1', 1539660936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636303933363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('7j2k6ce0pjtgbjanrqaphbc2flccvcr9', '::1', 1538967481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936373438313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('7qha2ts01d431i5bacv17r65us49iu19', '::1', 1538987276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938373237363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('7r7b5omo00q85h3qjb1t43iuig4pfu58', '::1', 1538627735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383632373733353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('8eeom37e02ki34g6bcj7ng26ulb1k4u8', '::1', 1538635755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633353735353b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('8hnqlc12131aki7q331ads6mustliniq', '::1', 1538628043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383632383034333b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('8uro5vmmo0nefbi3904jficm75kl3vgs', '::1', 1538634187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633343138373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('8vphgveen54nh72hr61eqf8qmtsi1qls', '::1', 1539055595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035353537383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('92hposupsisq113g1iqmu1ms6r28p235', '::1', 1539750903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735303930333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('92ml6u3is65sp3m90sbhe1vl291apd6a', '::1', 1539054114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035343131343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('94rhdng8s8lu8fn5c4ugbp9tlg3p1ccv', '::1', 1539756566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735363536363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('9enuhn9dnh54un3071f392sam6gb9ev2', '::1', 1539659902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635393930323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('9ffqtb1kauimnnu4huepgjvf33dak1m7', '::1', 1539681371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638313337313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('9ler4gbqolapchqo7q68nf3npnfvvd9s', '::1', 1539660600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636303630303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('9q6jrds2h66ncpb5i7plagpsdrkk5vhb', '::1', 1539745211, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734353231313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('a0p7559vb343h9uoq0e8e7b8f5cqfo7f', '::1', 1539766925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736363932353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('acqrest0055u7h2p37dhk0ea0569g0gi', '::1', 1539744759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734343735393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('ahqmlklpkankkcgrmk1b45hei9tcim9l', '::1', 1539764092, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736343039323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('aikk0jboqs6tdjndakscob2vp427j370', '::1', 1539755823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735353832333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('ak32jepcn0opqm3oo84r8or3esks4ait', '::1', 1539743657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734333635373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('b19m0oeimbbfos21e00nerip63uiqap0', '::1', 1539053116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035333131363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('b872l4pbomjkd5mtgabh249m4vu6lt0i', '::1', 1539760835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736303833353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('bf2dmfi4am7aeom45t213a45chvmqgjh', '::1', 1539751846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735313834363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('bf984fk7abhi5ogodst2lj0ng97g40es', '::1', 1538989967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938393839393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('bi8797s46ijpk945cncp7a4ejc4726ic', '::1', 1539657759, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635373735393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('buj7334mc8navd9f1b4nhid3p0j9gntb', '::1', 1539656715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635363731353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('c131mvt7scbahk238s22s2etd95ntmd5', '::1', 1539599971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539393937313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c4a3a4qmamg6g3binj2157ca8e99qd7i', '::1', 1539743304, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734333330343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('c6ajvomtik0snb4nbu0aursgbnf8vu9g', '::1', 1538972958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383937323837333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('c6g4b7031eq4n6lp9o2ceo55o6nm0lpp', '::1', 1539667073, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636373037333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('c8udbmumqtjg4t42bv7u1epsmrebolbf', '::1', 1539742603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734323630333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('d0s1b99ltanufh319epcpaf43qk9cmap', '::1', 1538985984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938353938343b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('d6dv2a9d9okl2t24p4hk5kifskfee7lb', '::1', 1539666405, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636363430353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('d7mj9034hvejn3kbbpbiq905a8med0ki', '::1', 1539685224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638353232343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('dcm0kt9kblqttq88an0jih731atsna3o', '::1', 1539748149, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734383134393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('ddloaloqjtv5v6lnhksh92vujlebtm3c', '::1', 1538969222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936393232323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('djf0ukooqm9lmdod9htvoose0c5pu054', '::1', 1539681794, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638313739343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('e6uvl01m7cuotdejherr40qe438eovki', '::1', 1539759218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735393231383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('eis3m8p19v8ajg73bps6j8bpfhkfhgvl', '::1', 1539594676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539343637363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b),
('ev91b2n5odcrdglni0b8lrd01e6eq9o3', '::1', 1538967168, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936373136383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('f0k0m7600mevhtgsr2cka91tarikik39', '::1', 1539237972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393233373937303b),
('f5imlson49rjh5mvsad26dq18r783l01', '::1', 1539746054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734363035343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('fhkvnp7a5p6c9m3fsou9t5vepe5e5506', '::1', 1539679939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393637393933393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('ftnu2f9fp9et5dkomc2k49v932fjegsb', '::1', 1539600347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630303334373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('g65jtogo7kigqgfqinjis3o4snarcju9', '::1', 1539771513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737313531333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('gjieqa1ovqjd5vielgfmutkekpbsla7q', '::1', 1539768467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736383436373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('gl4tidq6g8vnvvh44fpg17koglan77db', '::1', 1539658551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635383535313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('gpfeivp9dmcc865c431ld8t48sodt815', '::1', 1539745622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734353632323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('h40qf8iupdum3k8e1cd9bacjpmsnk0c7', '::1', 1539657142, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635373134323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('h6rl86u5iph1vbhah8a8aq1dajshnumg', '::1', 1539682974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638323937343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('h8tpmi3m8n58hjed9puamtcr5phjda64', '::1', 1539662373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636323337333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('hi9r5isomgmeo85n22gvevq06a076cnk', '::1', 1539661350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636313335303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('hjus1ov3jnm0bmntr39j9tkpu1qhabik', '::1', 1539685852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638353835323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('hm56lejs1edrgs9qana5fmktg5jrulsn', '::1', 1539599552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539393535323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hml8202fasqbpqhj0nms0ohlhe9rp1jf', '::1', 1539055578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035353537383b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('hpan4e2ht0akd5s8pkqc18tf5q9v7fgk', '::1', 1538704896, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383730343838303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('hqfdq1t6e0n21j4he0ae97ccvj7f44te', '::1', 1539659219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635393231393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('i4bhvj77svqoage75lhat26mej7sd2eb', '::1', 1539685551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638353535313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('i7icrqm87u5vko57n7s8gvdbg52cd1v2', '::1', 1538648348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383634383334373b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ibg9dgsp3adtq5fbgv50q2e5c4vdm6cq', '::1', 1539754373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735343337333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('iir5upkcsjj6e5mmj2p0iqcpnk45cdu5', '::1', 1539770848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737303834383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('ilqi3m4n28ebvg25j5momevhhmnc3e8t', '::1', 1539770098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737303039383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('iqjj9ett3098o7j4uaoem20cqgc18r99', '::1', 1539658090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635383039303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('isk3b51arvg4190psms0ij36vtf3410t', '::1', 1539748577, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734383537373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('j15kh90fck79rq4e5bpvhgl7ei6cuc41', '::1', 1539664440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636343434303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('j87fgq8g8s7ri3n18rcgiqralpuhvlts', '::1', 1539663723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636333732333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('jb4qmcuaupk1618b29k4vjgmo2blkstk', '::1', 1539752724, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735323732343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('je0on141b1gi90g8k1mnvtm4l9j3d851', '::1', 1539758848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735383834383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('jjole2a0con849kt7rcd5889n9ep5fpl', '::1', 1539678497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393637383439373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('jklbduo0poc1lfq0epmm4rpdblqm48cs', '::1', 1539595218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539353231383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('jpureip5sggr1rnmqo522nr2bedvmeil', '::1', 1539662823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636323832333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('k9bf2s38oqnciojhvntgrufrjdifdbs2', '::1', 1539682565, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638323536353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b);
INSERT INTO `site_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('ke8uunva33etdk0dh2ic1mqoribne4ad', '::1', 1539237973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393233373937303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('kkis38lk4q5m1gh9tqhpuptabq1pvtca', '::1', 1539659543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635393534333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('kt70524ljhpodc6r6i3e2d1qb6rlle8o', '::1', 1539666765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636363736353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('l36m8m128u5a0hi3qgtsfu3654tomdql', '::1', 1539419451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393431393435313b),
('l4bbquld7qj9rdemc11ovp21npvr634g', '::1', 1539679546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393637393534363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('l4vocbnab07865c55t1dkjqbsiq4cctq', '::1', 1539238319, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393233383331343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339303532393134223b6c6173745f636865636b7c693a313533393233383038383b),
('lru60r9rc2lagsr9a87hgfkqc10m1ggp', '::1', 1539754054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735343035343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('luae62n3ocrqc7ck0jtp3f1qu741eul7', '::1', 1539762337, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736323333373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('luc1mja7j1u9hv306k4ai98gm711cgu5', '::1', 1538628811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383632383831313b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('m2n68e04ehs3sal843psrs30tgne9vpd', '::1', 1539683764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638333736343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('m396c6fb6b8chiraj52ngllgdg49jsrd', '::1', 1539055217, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393035353231373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338393635363337223b6c6173745f636865636b7c693a313533393035323931343b),
('m46tr032du0er950sa29uhjpome4jhs9', '::1', 1539771936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737313933363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('m4qh221ffkvj9jcfmnll4q26ug5kpbm6', '::1', 1539763785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736333738353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('m51mj7jub4epnquo8irk0cl1biofl79h', '::1', 1539667376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636373337363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('m93g42b8j3aokk3feigohggkvsnnvov2', '::1', 1538636478, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633363437383b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('md3gj79ndma552g11mca2iaroffnu7t9', '::1', 1538988967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938383936373b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('mnabnb01dvgbrrhhu9oaif55b78h8j33', '::1', 1538637889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633373838393b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('mou7res1hjvdmvftodooke20i6h7hcjh', '::1', 1539762645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736323634353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('mp6qqplg77un3cto2n8kge3b5teo4uhk', '::1', 1539677316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393637373331363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('nlnm4co207vhi29192bjj3mkr4l2gtcb', '::1', 1539764425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736343432353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('nn57vou23h5f0uj3bkp68cpikmc8c5i3', '::1', 1539763470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736333437303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b6d6573736167655f737563636573737c733a32353a225468c3aa6d206de1bb9b69207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('ns0f0npggerj9i8328vhuddl2uoq78p3', '::1', 1539761992, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736313939323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('nv1gg4lckmumhgarl9e65qp03fahriq3', '::1', 1539680557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393638303535373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363536323933223b6c6173745f636865636b7c693a313533393637363631303b),
('og1og0rm7uc57hmh8hbdva64upcv4esf', '::1', 1538989489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938393438393b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('p1dkjq9i5cmtqbkr7h32jt8doi6ms9t2', '::1', 1539746522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734363532323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('p56j85ejv13lbmqib757ic6358n73ud8', '::1', 1539757519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735373531393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('p5e7cbrusou4i0avtgdf2elj1prd6doi', '::1', 1539596537, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539363533373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p7rokebeiqcvjald63ap2fadrbgpade7', '::1', 1539595997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539353939373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('p91v32i0ov5f9h8tsp6ogbli0irvdn8v', '::1', 1539771170, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737313137303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('pbe54q0hd3t91k06l2ive61695c5a59e', '::1', 1539748885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734383838353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('ph88pc5kerct5sfufclalgssnk2f6loo', '::1', 1538966326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936363332363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('pmvftu2gs5enbaum32dlpd1ap883m6qt', '::1', 1539757832, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735373833323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('qsh2afqk4t7hoth2sj3o4nq3qbl3sn5n', '::1', 1538971503, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383937313530303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('qu2armio868vv8g8fcfutsa6kdrs7jqm', '::1', 1538648708, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383634383730383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r1q3ampkamlakt3i265dovc5pj05nqq2', '::1', 1538637253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633373235333b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('r2glevptrqdlnp7h03mu15d5l23i7gsa', '::1', 1539596838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539363833383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('rb5l8dtu1gur0gsuqkqc63k5fdgb7a76', '::1', 1539753513, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735333531333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('rjhp57pvich3l2oe1c8b6d6v9fogk3qj', '::1', 1539742983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734323938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('s4cpcemlau9f8egtf5g5nn0f138cpjfu', '::1', 1539765934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736353933313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('se75to92dch3gl4h4dt4tki3vo81abqd', '::1', 1538968253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936383235333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('sj0ajgl4p5393dkena6a950a9cno1tei', '::1', 1539766497, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736363439373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('soj68ffeqdqb5i70bjc92l9sv4prbi7n', '::1', 1538637554, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633373535343b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('spqerro6fu1r7rpupqvj3a5s0gd2p7nc', '::1', 1539756894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735363839343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('sqagnefl9cdfvnvj9khug2eugkd9a3ls', '::1', 1538966000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936363030303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('sv74kpqcb0u2f2l87tru9i4papjjot0j', '::1', 1538968872, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936383837323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('t1f6i4s48n0122uj4v9nac2sutphf4da', '::1', 1538636912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383633363931323b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338353333353830223b6c6173745f636865636b7c693a313533383633363133313b6c616e67416262726576696174696f6e7c733a323a227669223b),
('t2ctrdcp9em1a2rmt6ngoeha9bqe5pls', '::1', 1539755059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735353035393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('t4l286dm373irdmgpcmkqf7v31enn0fd', '::1', 1539598775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539383737353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('t625mt37tmvgebrlnbgdrmd239r18nqf', '::1', 1539750277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735303237373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('tb3s4sjigj0m1fo85kopbt6lcs28o8r1', '::1', 1539749894, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734393839343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('tl77o4uj0afg8jl7rnsknbqjnid5bgar', '::1', 1538967783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936373738333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('tovta23hvj6cc0qhgg1ftmq2194h41eu', '::1', 1539665085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636353038353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('tqsuoilkrls2eflfqbd218he5a0mia1t', '::1', 1539666084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393636363038343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('u1clhr0d3ua6vpabt57t2cbtkooipkle', '::1', 1538969526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383936393532363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363237363437223b6c6173745f636865636b7c693a313533383936353633373b),
('u2rnga7nm54migjijc10ts6o2isojj75', '::1', 1539761205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393736313230353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('ucgf55kiq38l4mcqrum0onc6avimsj5j', '::1', 1538628460, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383632383436303b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363230343234223b6c6173745f636865636b7c693a313533383632373634373b),
('ue6l9u5qi9q264rdtbqmffotu088v21l', '::1', 1539597945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393539373934353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('urok3idmflv788nn1c18g08qtc27vboo', '::1', 1538985606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533383938353630363b6c616e67416262726576696174696f6e7c733a323a227669223b6964656e746974797c733a31393a223132717579656e313240676d61696c2e636f6d223b656d61696c7c733a31393a223132717579656e313240676d61696c2e636f6d223b757365725f69647c733a313a2232223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353338363438383638223b6c6173745f636865636b7c693a313533383938323935313b),
('v16pkbeos83kbob5le5m7gdc1p5ocd9l', '::1', 1539600702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393630303730323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339323338303838223b6c6173745f636865636b7c693a313533393539333836363b6c616e67416262726576696174696f6e7c733a323a227669223b),
('v6ncltc4ph30tie8adk8676mdk9vc5m0', '::1', 1539238742, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393233383639383b6c616e67416262726576696174696f6e7c733a323a227669223b),
('veug9sehgtqi8jovrh5grp4deikbk3hk', '::1', 1539772262, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393737323235323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373431353939223b6c6173745f636865636b7c693a313533393736343435333b),
('vodgg5blda4hq8fcna6qbo8eqmtpn909', '::1', 1539756185, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393735363138353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b),
('vtlqf022s4ov23c0s8hhuaa8886q4esu', '::1', 1539658890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393635383839303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339353933383636223b6c6173745f636865636b7c693a313533393635363239333b),
('vusbpf64qre5nohqubv59jaca5p3jov1', '::1', 1539747110, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393734373131303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339363736363130223b6c6173745f636865636b7c693a313533393734313539393b);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `templates`
--

INSERT INTO `templates` (`id`, `type`, `title`, `data`, `is_activated`, `is_deleted`) VALUES
(23, 2, 'Cấu hình sản phẩm', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"Vui l\\u00f2ng nh\\u1eadp ti\\u00eau \\u0111\\u1ec1 cho s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec3 c\\u00f3 Slug\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"Vui l\\u00f2ng ch\\u1ecdn danh m\\u1ee5c\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"Vui l\\u00f2ng nh\\u1eadp ti\\u00eau \\u0111\\u1ec1 cho s\\u1ea3n ph\\u1ea9m\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"tu_khoa_meta\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"T\\u1eeb kh\\u00f3a meta\",\"en\":\"Metakeywords\"}},\"mo_ta_meta\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3 meta\",\"en\":\"Metadescription\"}}}', 0, 0),
(24, 1, 'Cấu hình bài viết', '{\"image_shared\":{\"description\":\"\",\"type\":\"file\",\"check_language\":\"true\",\"title\":{\"vi\":\"H\\u00ecnh \\u1ea3nh\",\"en\":\"Image\"}},\"slug_shared\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"true\",\"title\":{\"vi\":\"Slug\",\"en\":\"Slug\"},\"required\":\"Vui l\\u00f2ng nh\\u1eadp ti\\u00eau \\u0111\\u1ec1 b\\u00e0i vi\\u1ebft \\u0111\\u1ec3 c\\u00f3 Slug\"},\"parent_id_shared\":{\"description\":\"\",\"type\":\"select\",\"check_language\":\"true\",\"title\":{\"vi\":\"Danh m\\u1ee5c\",\"en\":\"Category\"},\"choice\":{\"vi\":[\"\"],\"en\":[\"\"]},\"required\":\"Vui l\\u00f2ng ch\\u1ecdn danh m\\u1ee5c cho b\\u00e0i vi\\u1ebft\"},\"title\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"Ti\\u00eau \\u0111\\u1ec1\",\"en\":\"Title\"},\"required\":\"Vui l\\u00f2ng nh\\u1eadp ti\\u00eau \\u0111\\u1ec1 cho b\\u00e0i vi\\u1ebft\"},\"description\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3\",\"en\":\"Description\"}},\"content\":{\"description\":\"\",\"type\":\"textarea\",\"check_language\":\"false\",\"title\":{\"vi\":\"N\\u1ed9i dung\",\"en\":\"Content\"},\"check_multiple\":\"true\"},\"tu_khoa_meta\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"T\\u1eeb kh\\u00f3a meta\",\"en\":\"Metakeywords\"}},\"mo_ta_meta\":{\"description\":\"\",\"type\":\"text\",\"check_language\":\"false\",\"title\":{\"vi\":\"M\\u00f4 t\\u1ea3 meta\",\"en\":\"Metadescription\"}}}', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1539764453, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '::1', 'Nguyễn', '$2y$08$8zsmQuzmUTBopCDSkcpq5u8zHNASZaQStA9bCXvnPCA/NHZzwMtSy', NULL, '12quyen12@gmail.com', NULL, NULL, 1538390589, NULL, 1538361383, 1538982951, 1, 'Nguyễn', 'Quyền', NULL, NULL),
(3, '::1', 'Trần', '$2y$08$GrUvnK18yHj7FAt8Xn59EugD9FvW6uAKEhCAsm5DrgdP9niSQ5xJ6', NULL, '12hung12@gmail.com', NULL, NULL, NULL, NULL, 1538362269, 1538367158, 1, 'Trần22', 'Hùng22', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 2, 3),
(5, 3, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `collection_lang`
--
ALTER TABLE `collection_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`post_category_id`);

--
-- Chỉ mục cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_id` (`product_category_id`);

--
-- Chỉ mục cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`product_id`);

--
-- Chỉ mục cho bảng `site_sessions`
--
ALTER TABLE `site_sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ci_sessions_timestamp` (`timestamp`) USING BTREE;

--
-- Chỉ mục cho bảng `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  ADD KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `about_lang`
--
ALTER TABLE `about_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `collection_lang`
--
ALTER TABLE `collection_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `config_contact`
--
ALTER TABLE `config_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `menu_lang`
--
ALTER TABLE `menu_lang`
  ADD CONSTRAINT `menu_lang_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_category_lang`
--
ALTER TABLE `post_category_lang`
  ADD CONSTRAINT `post_category_lang_ibfk_1` FOREIGN KEY (`post_category_id`) REFERENCES `post_category` (`id`);

--
-- Các ràng buộc cho bảng `post_lang`
--
ALTER TABLE `post_lang`
  ADD CONSTRAINT `post_lang_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  ADD CONSTRAINT `product_category_lang_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`);

--
-- Các ràng buộc cho bảng `product_lang`
--
ALTER TABLE `product_lang`
  ADD CONSTRAINT `product_lang_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
