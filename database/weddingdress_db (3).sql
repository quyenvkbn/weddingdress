-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2018 lúc 12:11 PM
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
  `category_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_activated` tinyint(1) DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` text,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `category_id`, `type`, `is_activated`, `text`, `url`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(10, '59f14f5083ce2.jpg', 27, 1, 0, NULL, NULL, '2018-10-18 17:10:18', 'administrator', '2018-10-18 17:10:18', 'administrator', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_lang`
--

CREATE TABLE `banner_lang` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner_lang`
--

INSERT INTO `banner_lang` (`id`, `banner_id`, `title`, `description`, `content`, `language`) VALUES
(1, 1, 'It was popularised in the 1960s with the release', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'vi'),
(2, 1, 'It was popularised in the 1960s with the release', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'en'),
(3, 2, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'vi'),
(4, 2, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'en'),
(5, 3, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'vi'),
(6, 3, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'en'),
(7, 4, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'vi'),
(8, 4, 'Contrary to popular belief, Lorem Ipsum is not simply random text', 'Contrary to popular belief, Lorem Ipsum is not simply random text', '', 'en'),
(9, 5, 'test 11', '', '', 'vi'),
(10, 5, 'test2222222', '', '', 'en'),
(11, 6, 'Du xuaan', '', '', 'vi'),
(12, 6, 'Du xuaan EN', '', '', 'en'),
(13, 7, 'aaaaaaaaaaaa', '', '', 'vi'),
(14, 7, 'aaaaaaaaaaaa', '', '', 'en'),
(15, 8, 'sssssssssssss', '', '', 'vi'),
(16, 8, 'dddddddddd', '', '', 'en'),
(17, 9, 'dddddd', '', '', 'vi'),
(18, 9, 'ssssssssssssssss', '', '', 'en'),
(19, 10, '', '', '', 'vi'),
(20, 10, '', '', '', 'en');

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
(1, 1, 24, 'post-new1', '', '2c937ab6cfe6cd5ef3ad77196e96e05c_thumb.jpg', '[]', '2018-10-16 12:21:31', 'administrator', '2018-10-16 12:21:31', 'administrator', 0, 1),
(2, 1, 24, 'dich-vu', '', '59f14f31be4c8.jpg', '[]', '2018-10-17 13:51:09', 'administrator', '2018-10-17 13:51:09', 'administrator', 0, 1),
(3, 1, 24, 'dich-vu-1', '', '59f151088f5561.jpg', '[]', '2018-10-17 13:55:42', 'administrator', '2018-10-17 13:55:42', 'administrator', 0, 1);

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
(1, 'dich-vu', 0, '', '8edca6dc4095c11ae677a5b4aab4b5bc_thumb.jpg', NULL, NULL, 1, 0, '2018-10-16 12:03:01', 'administrator', '2018-10-16 12:03:01', 'administrator');

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
(6, 22, 23, '[]', 'vay-cuoi-40', '', '59f14f31be4c8.jpg', '[\"59f14f31be4c81.jpg\",\"59f14f31be4c82.jpg\",\"59f14f31be4c83.jpg\",\"59f14f31be4c84.jpg\",\"59f14f31be4c85.jpg\"]', 27, '7000000', '6700000', '1000000', '700000', '16/10/2018,18/10/2018,20/10/2018', 0, '{\"sale\":\"true\",\"rent\":\"true\",\"rent_sale\":\"true\",\"showpromotion\":\"true\",\"showpromotion_rent\":\"false\"}', '2018-10-18 17:10:14', 'administrator', '2018-10-18 17:10:14', 'administrator', 0, 0),
(7, 22, 23, '{}', 'que', '', '', '[]', 27, '', '', '', '', '', 0, '{\"sale\":\"false\",\"rent\":\"false\",\"rent_sale\":\"false\",\"showpromotion\":\"false\",\"showpromotion_rent\":\"false\"}', '2018-10-17 17:12:47', 'administrator', '2018-10-17 17:12:47', 'administrator', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
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

INSERT INTO `product_category` (`id`, `slug`, `parent_id`, `type`, `is_deleted`, `created_at`, `created_by`, `updated_at`, `updated_by`, `project`, `image`, `sort`, `is_activated`) VALUES
(22, 'vay-cuoi', 0, 0, 0, '2018-10-18 17:08:58', 'administrator', '2018-10-18 17:08:58', 'administrator', '', '42fcad2f1e83e7b1dcc05018b485cb5b_thumb.jpg', NULL, 0),
(23, 'phu-kien', 0, 1, 0, '2018-10-18 17:09:13', 'administrator', '2018-10-18 17:09:13', 'administrator', '', '59f14f31be4c8.jpg', NULL, 0);

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
(87, 22, 'Váy Cưới', 'Váy Cưới', '<p>V&aacute;y Cưới</p>', 'Váy Cưới', 'Váy Cưới', 'vi'),
(88, 22, ' Wedding dress      ', '  Wedding dress      ', '<p>Wedding dress</p>', '  Wedding dress      ', ' Wedding dress       ', 'en'),
(89, 23, 'Phụ kiện', 'Phụ kiện', '<p>Phụ kiện</p>', '  ', '  ', 'vi'),
(90, 23, 'Phụ kiện  ', 'Phụ kiện  ', '<p>Phụ kiện</p>', '  ', '  ', 'en');

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
('07gcbi69n13evvd7a7ledjklit7njspk', '::1', 1539850483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835303438333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('0q23e5chl382uifai31r7mf82krqk6ks', '::1', 1539837375, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833373337353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('1285h59s4j569ajmo9ksik9a2r0vkmfi', '::1', 1539847668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834373636383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('1njcao7clcl7nk4fa8hhihbqel67mt20', '::1', 1539848298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834383239383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('2dnjed18q0kpfds24f930snm1gis170v', '::1', 1539835587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833353538373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('3jhlodf81eud4f24k1egbctho5gvfupu', '::1', 1539853474, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835333437343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('4i9ka144otvo8prip32cdihpsv7dl4uv', '::1', 1539857419, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835373236383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('4sv47su5k56r80r7j1heoju3rr7sg10s', '::1', 1539852392, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835323339323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('66kn47oepr3ctc32cl52o9flkej9tfiq', '::1', 1539834657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833343635373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('6v15d8jp6qg7l236keqhbi4cd0ujovqn', '::1', 1539841152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834313135323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('7799e0256if5rnn7eisdp23dlhif51ca', '::1', 1539835944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833353934343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6d6573736167655f737563636573737c733a31393a2253e1bbad61207468c3a06e682063c3b46e6721223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167655f73756363657373223b733a333a226f6c64223b7d),
('7di76ebvmctuof445b6rvk4hoeiicogc', '::1', 1539853866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835333836363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('7kbci2dj7gg4u14a1bd3l1dgke0pqd72', '::1', 1539856519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835363531393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('82kcegr7luqem3aiol3me24gehgtv88e', '::1', 1539840815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834303831353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('85uihtfrae8ddem50o2dq017adv9stv7', '::1', 1539839516, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833393531363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('9amev3q0tflrq9c4uogl1lssctpgh1q5', '::1', 1539838850, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833383835303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('9c1rik24itanenvqr37aik9smlr5jhhb', '::1', 1539853129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835333132393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('9gls6ek3h7uckl22c4khft3ggb1328bc', '::1', 1539842951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834323935313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('b36f9bipt2p4ss4nmj9mpdo4vvb6dftf', '::1', 1539851046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835313034363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('b70havjj6r4ibnbtiab4quc7s9pp8466', '::1', 1539834963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833343936333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('bh5d9e97jtflh30aatnboig4c6k0prgt', '::1', 1539841473, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834313437333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('bjuv9vreeed9hqe206t01s003i2bik48', '::1', 1539836621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833363632313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('cjqgilg3aqpmkcngcnhhcbguni7ohae5', '::1', 1539847983, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834373938333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('d1p5u3perr54nsnfj6bpqsjcmpib02h0', '::1', 1539841988, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834313938383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('dt5kuttaojjhoi4uapef891tte2ufraa', '::1', 1539836930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833363933303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('g46tvqocno1a0uohv7rganhpguuj80q2', '::1', 1539833666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833333636363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('h3ptb8dro5bojcldijq4rcr1jdfoohu7', '::1', 1539840154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834303135343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('huqo9rog35paqc1dbn2ufs3qg6itplgp', '::1', 1539842305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834323330353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('i2v6i4qejcfq0rh7g0p10urli8h91c8o', '::1', 1539855529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835353532393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('ik16639t5s7rn9240cvcueeqv6mo9for', '::1', 1539856055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835363035353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('j7nvs7ccvt8amd3ts3di897rc0767b4n', '::1', 1539856965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835363936353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('lq4ev2il6snb2h6ujn932bb0llc56c5q', '::1', 1539840461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834303436313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('luo89v6daha3k485k22rgnjpq6tliosd', '::1', 1539842643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834323634333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('m2g93cv5samqkftvag1nabd51hvtr8mq', '::1', 1539849334, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834393333343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('oj4uv8ecm7ufhb0fpv80tmoqba6hdsj6', '::1', 1539848668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834383636383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('pijaqr8u23790jucbvfgq2ugja0neqbu', '::1', 1539832795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833323739353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('qmuum4cr84k76vtma2f93mqtoqjcg21e', '::1', 1539854524, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835343532343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('rlucar3rq38nra5283j8c1bbtr1ueo1h', '::1', 1539834155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833343135353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('sltiu9nepjkkb52n3cfb9h3413og6pt1', '::1', 1539857268, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835373236383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('srcb9p69t5319e28ugql05svchv5a8kb', '::1', 1539839829, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833393832393b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('t5g1cq0i1ioofbg9rpsa6oralam2egaq', '::1', 1539843252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834333235323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('t8bdsbi183gq9dgf96a55j1tv4momv2u', '::1', 1539833180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393833333138303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b),
('tplnq26jgs6d2dm4bvhdfv17t70jms1a', '::1', 1539851445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835313434353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('tqpg6d2l6ocb7jluh2p6gic6ofgr1h9l', '::1', 1539849006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393834393030363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b),
('ud0anntoe0vb0h25uk4t0hgl0fmpti87', '::1', 1539854965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835343936353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339383238373630223b6c6173745f636865636b7c693a313533393835333134343b),
('vbl0b1342jrhluevm8rodm9ksjs0a6aj', '::1', 1539852824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533393835323832343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231353339373634343533223b6c6173745f636865636b7c693a313533393832383736303b6c616e67416262726576696174696f6e7c733a323a227669223b);

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
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1539853144, 1, 'Admin', 'istrator', 'ADMIN', '0'),
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
-- Chỉ mục cho bảng `banner_lang`
--
ALTER TABLE `banner_lang`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `banner_lang`
--
ALTER TABLE `banner_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `product_category_lang`
--
ALTER TABLE `product_category_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

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
