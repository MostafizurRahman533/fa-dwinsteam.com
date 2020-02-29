-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 02:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fa_dwinsteam`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-08 05:26:13', '2019-11-08 05:26:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/fa_dwinsteam.com', 'yes'),
(2, 'home', 'http://localhost/fa_dwinsteam.com', 'yes'),
(3, 'blogname', 'G Traders', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mdfahad01618@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:193:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:15:\"slider-items/?$\";s:32:\"index.php?post_type=slider-items\";s:45:\"slider-items/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:40:\"slider-items/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=slider-items&feed=$matches[1]\";s:32:\"slider-items/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=slider-items&paged=$matches[1]\";s:14:\"about-items/?$\";s:31:\"index.php?post_type=about-items\";s:44:\"about-items/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=about-items&feed=$matches[1]\";s:39:\"about-items/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=about-items&feed=$matches[1]\";s:31:\"about-items/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=about-items&paged=$matches[1]\";s:12:\"img-items/?$\";s:29:\"index.php?post_type=img-items\";s:42:\"img-items/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=img-items&feed=$matches[1]\";s:37:\"img-items/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=img-items&feed=$matches[1]\";s:29:\"img-items/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=img-items&paged=$matches[1]\";s:12:\"our-items/?$\";s:29:\"index.php?post_type=our-items\";s:42:\"our-items/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=our-items&feed=$matches[1]\";s:37:\"our-items/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=our-items&feed=$matches[1]\";s:29:\"our-items/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=our-items&paged=$matches[1]\";s:13:\"chef-items/?$\";s:30:\"index.php?post_type=chef-items\";s:43:\"chef-items/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=chef-items&feed=$matches[1]\";s:38:\"chef-items/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=chef-items&feed=$matches[1]\";s:30:\"chef-items/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=chef-items&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"slider-category/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"slider-category/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"slider-category/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"slider-category/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"slider-category/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"slider-category/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"slider-category/([^/]+)/embed/?$\";s:43:\"index.php?chef-items=$matches[1]&embed=true\";s:36:\"slider-category/([^/]+)/trackback/?$\";s:37:\"index.php?chef-items=$matches[1]&tb=1\";s:56:\"slider-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?chef-items=$matches[1]&feed=$matches[2]\";s:51:\"slider-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?chef-items=$matches[1]&feed=$matches[2]\";s:44:\"slider-category/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?chef-items=$matches[1]&paged=$matches[2]\";s:40:\"slider-category/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?chef-items=$matches[1]&page=$matches[2]\";s:32:\"slider-category/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"slider-category/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"slider-category/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider-category/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slider-category/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"slider-category/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"about-items/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"about-items/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"about-items/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"about-items/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"about-items/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"about-items/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"about-items/([^/]+)/embed/?$\";s:44:\"index.php?about-items=$matches[1]&embed=true\";s:32:\"about-items/([^/]+)/trackback/?$\";s:38:\"index.php?about-items=$matches[1]&tb=1\";s:52:\"about-items/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?about-items=$matches[1]&feed=$matches[2]\";s:47:\"about-items/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?about-items=$matches[1]&feed=$matches[2]\";s:40:\"about-items/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?about-items=$matches[1]&paged=$matches[2]\";s:47:\"about-items/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?about-items=$matches[1]&cpage=$matches[2]\";s:36:\"about-items/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?about-items=$matches[1]&page=$matches[2]\";s:28:\"about-items/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"about-items/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"about-items/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"about-items/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"about-items/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"about-items/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"about-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?about-info=$matches[1]&feed=$matches[2]\";s:50:\"about-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?about-info=$matches[1]&feed=$matches[2]\";s:31:\"about-category/([^/]+)/embed/?$\";s:43:\"index.php?about-info=$matches[1]&embed=true\";s:43:\"about-category/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?about-info=$matches[1]&paged=$matches[2]\";s:25:\"about-category/([^/]+)/?$\";s:32:\"index.php?about-info=$matches[1]\";s:37:\"img-items/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"img-items/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"img-items/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"img-items/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"img-items/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"img-items/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"img-items/([^/]+)/embed/?$\";s:42:\"index.php?img-items=$matches[1]&embed=true\";s:30:\"img-items/([^/]+)/trackback/?$\";s:36:\"index.php?img-items=$matches[1]&tb=1\";s:50:\"img-items/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?img-items=$matches[1]&feed=$matches[2]\";s:45:\"img-items/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?img-items=$matches[1]&feed=$matches[2]\";s:38:\"img-items/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?img-items=$matches[1]&paged=$matches[2]\";s:45:\"img-items/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?img-items=$matches[1]&cpage=$matches[2]\";s:34:\"img-items/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?img-items=$matches[1]&page=$matches[2]\";s:26:\"img-items/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"img-items/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"img-items/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"img-items/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"img-items/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"img-items/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"img-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?img-info=$matches[1]&feed=$matches[2]\";s:48:\"img-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?img-info=$matches[1]&feed=$matches[2]\";s:29:\"img-category/([^/]+)/embed/?$\";s:41:\"index.php?img-info=$matches[1]&embed=true\";s:41:\"img-category/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?img-info=$matches[1]&paged=$matches[2]\";s:23:\"img-category/([^/]+)/?$\";s:30:\"index.php?img-info=$matches[1]\";s:44:\"Gallery-category/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"Gallery-category/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"Gallery-category/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"Gallery-category/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"Gallery-category/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"Gallery-category/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"Gallery-category/([^/]+)/embed/?$\";s:42:\"index.php?our-items=$matches[1]&embed=true\";s:37:\"Gallery-category/([^/]+)/trackback/?$\";s:36:\"index.php?our-items=$matches[1]&tb=1\";s:57:\"Gallery-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?our-items=$matches[1]&feed=$matches[2]\";s:52:\"Gallery-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?our-items=$matches[1]&feed=$matches[2]\";s:45:\"Gallery-category/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?our-items=$matches[1]&paged=$matches[2]\";s:41:\"Gallery-category/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?our-items=$matches[1]&page=$matches[2]\";s:33:\"Gallery-category/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"Gallery-category/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"Gallery-category/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"Gallery-category/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"Gallery-category/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"Gallery-category/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:29:\"FA_Shortcode/fa_shortcode.php\";i:1;s:23:\"FA_Slider/fa_slider.php\";i:2;s:41:\"sassy-social-share/sassy-social-share.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'OsteriaX', 'yes'),
(41, 'stylesheet', 'OsteriaX', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:8:{i:1580389686;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1580405176;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580405177;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1580448375;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580448387;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580448388;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580448391;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1574698121;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'DwinsTeam', 'yes'),
(140, 'theme_mods_G_Traders', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"Menu_name1\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573473730;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(143, 'theme_mods_Reveal', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573191032;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"widget-home-top\";a:0:{}}}}', 'yes'),
(145, 'theme_mods_G-Traders', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"Menu_name1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573224176;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:15:\"widget-home-top\";a:0:{}}}}', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(178, 'theme_mods_real-estater', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573473937;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:26:\"real-estater-sidebar-right\";a:0:{}s:25:\"real-estater-sidebar-left\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(180, 'theme_mods_OsteriaX', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:2;s:11:\"center_menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:22;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1574443381;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(203, 'slider-items_children', 'a:0:{}', 'yes'),
(227, 'recovery_mode_email_last_sent', '1573669856', 'yes'),
(289, 'WPLANG', '', 'yes'),
(290, 'new_admin_email', 'mdfahad01618@gmail.com', 'yes'),
(305, 'recently_activated', 'a:0:{}', 'yes'),
(343, 'category_children', 'a:0:{}', 'yes'),
(353, 'heateor_sss', 'a:79:{s:24:\"horizontal_sharing_shape\";s:6:\"square\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:18:\"instagram_username\";s:0:\"\";s:16:\"youtube_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:6:\"reddit\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:4:\"MeWe\";i:6;s:3:\"mix\";i:7;s:8:\"whatsapp\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:3:\"top\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:15:\"horizontal_more\";s:1:\"1\";s:15:\"vertical_enable\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:25:\"vertical_youtube_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:8:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:6:\"reddit\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:4:\"MeWe\";i:6;s:3:\"mix\";i:7;s:8:\"whatsapp\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:13:\"vertical_more\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:6:\"fb_key\";s:0:\"\";s:9:\"fb_secret\";s:0:\"\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:8:\"language\";s:5:\"en_US\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"amp_enable\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(354, 'heateor_sss_version', '3.3.4', 'yes'),
(357, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(359, 'widget_heateor_sss_follow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(361, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(391, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1580386236;s:15:\"version_checked\";s:5:\"5.2.5\";s:12:\"translations\";a:0:{}}', 'no'),
(394, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"mdfahad01618@gmail.com\";s:7:\"version\";s:5:\"5.2.5\";s:9:\"timestamp\";i:1578410955;}', 'no'),
(401, '_site_transient_timeout_browser_05f578eb3fa9f908f5d74ef7bf6207a5', '1580890237', 'no'),
(402, '_site_transient_browser_05f578eb3fa9f908f5d74ef7bf6207a5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(403, '_site_transient_timeout_php_check_a5b4d2808570efd012607394df5c6fa9', '1580890238', 'no'),
(404, '_site_transient_php_check_a5b4d2808570efd012607394df5c6fa9', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(417, '_transient_timeout_plugin_slugs', '1580472643', 'no'),
(418, '_transient_plugin_slugs', 'a:4:{i:0;s:29:\"FA_Shortcode/fa_shortcode.php\";i:1;s:23:\"FA_Slider/fa_slider.php\";i:2;s:41:\"sassy-social-share/sassy-social-share.php\";i:3;s:26:\"FA_TopScroll/topscroll.php\";}', 'no'),
(425, '_site_transient_timeout_theme_roots', '1580388044', 'no'),
(426, '_site_transient_theme_roots', 'a:7:{s:9:\"G_Traders\";s:7:\"/themes\";s:10:\"MagazineDT\";s:7:\"/themes\";s:8:\"OsteriaX\";s:7:\"/themes\";s:6:\"Reveal\";s:7:\"/themes\";s:23:\"construction-realestate\";s:7:\"/themes\";s:12:\"real-estater\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no'),
(427, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1580386245;s:7:\"checked\";a:7:{s:9:\"G_Traders\";s:3:\"1.4\";s:10:\"MagazineDT\";s:8:\"DT-1.0.0\";s:8:\"OsteriaX\";s:3:\"1.4\";s:6:\"Reveal\";s:3:\"1.4\";s:23:\"construction-realestate\";s:3:\"0.4\";s:12:\"real-estater\";s:5:\"1.0.6\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:23:\"construction-realestate\";a:6:{s:5:\"theme\";s:23:\"construction-realestate\";s:11:\"new_version\";s:5:\"0.4.5\";s:3:\"url\";s:53:\"https://wordpress.org/themes/construction-realestate/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/theme/construction-realestate.0.4.5.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:6:\"7.2.14\";}}s:12:\"translations\";a:0:{}}', 'no'),
(428, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1580386247;s:7:\"checked\";a:4:{s:29:\"FA_Shortcode/fa_shortcode.php\";s:9:\"DT_ts 1.0\";s:23:\"FA_Slider/fa_slider.php\";s:9:\"DT_ts 1.0\";s:41:\"sassy-social-share/sassy-social-share.php\";s:5:\"3.3.4\";s:26:\"FA_TopScroll/topscroll.php\";s:9:\"DT_ts 1.0\";}s:8:\"response\";a:1:{s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:5:\"3.3.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/fa_dwinsteam.com/'),
(23, 8, '_wp_attached_file', '2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_.png'),
(24, 8, '_wp_attachment_context', 'custom-logo'),
(25, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:133;s:4:\"file\";s:55:\"2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-150x133.png\";s:5:\"width\";i:150;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 10, '_wp_attached_file', '2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-1.png'),
(28, 10, '_wp_attachment_context', 'custom-logo'),
(29, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:133;s:4:\"file\";s:57:\"2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-1-150x133.png\";s:5:\"width\";i:150;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 12, '_wp_attached_file', '2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-2.png'),
(34, 12, '_wp_attachment_context', 'custom-logo'),
(35, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:133;s:4:\"file\";s:57:\"2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-2-150x133.png\";s:5:\"width\";i:150;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-2-300x133.png\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 14, '_wp_attached_file', '2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-3.png'),
(39, 14, '_wp_attachment_context', 'custom-logo'),
(40, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:133;s:4:\"file\";s:57:\"2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-3-150x133.png\";s:5:\"width\";i:150;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-3-300x133.png\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 16, '_wp_attached_file', '2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-4.png'),
(43, 16, '_wp_attachment_context', 'custom-logo'),
(44, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:133;s:4:\"file\";s:57:\"2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"cropped-bkash-logo-FBB258B90F-seeklogo.com_-4-150x133.png\";s:5:\"width\";i:150;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 19, '_wp_attached_file', '2019/11/cropped-Capture.png'),
(52, 19, '_wp_attachment_context', 'custom-logo'),
(53, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:230;s:6:\"height\";i:115;s:4:\"file\";s:27:\"2019/11/cropped-Capture.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-Capture-150x115.png\";s:5:\"width\";i:150;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 21, '_wp_attached_file', '2019/11/Capture.png'),
(58, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:115;s:4:\"file\";s:19:\"2019/11/Capture.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-150x115.png\";s:5:\"width\";i:150;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Capture-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 22, '_wp_attached_file', '2019/11/cropped-Capture-1.png'),
(60, 22, '_wp_attachment_context', 'custom-logo'),
(61, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:63;s:4:\"file\";s:29:\"2019/11/cropped-Capture-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-Capture-1-150x63.png\";s:5:\"width\";i:150;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 26, '_edit_lock', '1573478302:1'),
(72, 30, '_edit_lock', '1573478314:1'),
(73, 32, '_edit_lock', '1573478333:1'),
(74, 34, '_edit_lock', '1573478361:1'),
(75, 36, '_edit_lock', '1573478389:1'),
(76, 38, '_edit_lock', '1573478410:1'),
(77, 40, '_edit_lock', '1573478433:1'),
(78, 42, '_menu_item_type', 'custom'),
(79, 42, '_menu_item_menu_item_parent', '0'),
(80, 42, '_menu_item_object_id', '42'),
(81, 42, '_menu_item_object', 'custom'),
(82, 42, '_menu_item_target', ''),
(83, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 42, '_menu_item_xfn', ''),
(85, 42, '_menu_item_url', 'http://localhost/fa_dwinsteam.com/'),
(86, 42, '_menu_item_orphaned', '1573480707'),
(150, 50, '_menu_item_type', 'custom'),
(151, 50, '_menu_item_menu_item_parent', '0'),
(152, 50, '_menu_item_object_id', '50'),
(153, 50, '_menu_item_object', 'custom'),
(154, 50, '_menu_item_target', ''),
(155, 50, '_menu_item_classes', 'a:1:{i:0;s:11:\"mu-about-us\";}'),
(156, 50, '_menu_item_xfn', ''),
(157, 50, '_menu_item_url', '#mu-about-us'),
(159, 51, '_menu_item_type', 'custom'),
(160, 51, '_menu_item_menu_item_parent', '0'),
(161, 51, '_menu_item_object_id', '51'),
(162, 51, '_menu_item_object', 'custom'),
(163, 51, '_menu_item_target', ''),
(164, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 51, '_menu_item_xfn', ''),
(166, 51, '_menu_item_url', '#mu-contact'),
(168, 52, '_menu_item_type', 'custom'),
(169, 52, '_menu_item_menu_item_parent', '0'),
(170, 52, '_menu_item_object_id', '52'),
(171, 52, '_menu_item_object', 'custom'),
(172, 52, '_menu_item_target', ''),
(173, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 52, '_menu_item_xfn', ''),
(175, 52, '_menu_item_url', '#mu-restaurant-menu'),
(177, 53, '_menu_item_type', 'custom'),
(178, 53, '_menu_item_menu_item_parent', '0'),
(179, 53, '_menu_item_object_id', '53'),
(180, 53, '_menu_item_object', 'custom'),
(181, 53, '_menu_item_target', ''),
(182, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(183, 53, '_menu_item_xfn', ''),
(184, 53, '_menu_item_url', '#mu-reservation'),
(195, 55, '_menu_item_type', 'custom'),
(196, 55, '_menu_item_menu_item_parent', '0'),
(197, 55, '_menu_item_object_id', '55'),
(198, 55, '_menu_item_object', 'custom'),
(199, 55, '_menu_item_target', ''),
(200, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 55, '_menu_item_xfn', ''),
(202, 55, '_menu_item_url', '#mu-chef'),
(204, 56, '_menu_item_type', 'custom'),
(205, 56, '_menu_item_menu_item_parent', '0'),
(206, 56, '_menu_item_object_id', '56'),
(207, 56, '_menu_item_object', 'custom'),
(208, 56, '_menu_item_target', ''),
(209, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 56, '_menu_item_xfn', ''),
(211, 56, '_menu_item_url', '#mu-gallery'),
(230, 61, '_edit_last', '1'),
(231, 61, '_edit_lock', '1574338012:1'),
(233, 61, 'meta-subtitle-slider', ''),
(234, 61, 'meta-url-name-slider', ''),
(251, 68, '_edit_last', '1'),
(253, 68, 'meta-subtitle-slider', ''),
(254, 68, 'meta-url-name-slider', ''),
(255, 68, '_edit_lock', '1574337846:1'),
(256, 69, '_edit_last', '1'),
(257, 69, '_edit_lock', '1574337827:1'),
(259, 69, 'meta-subtitle-slider', ''),
(260, 69, 'meta-url-name-slider', ''),
(262, 75, '_edit_last', '1'),
(263, 75, '_edit_lock', '1574443228:1'),
(268, 77, '_menu_item_type', 'post_type'),
(269, 77, '_menu_item_menu_item_parent', '0'),
(270, 77, '_menu_item_object_id', '1'),
(271, 77, '_menu_item_object', 'post'),
(272, 77, '_menu_item_target', ''),
(273, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 77, '_menu_item_xfn', ''),
(275, 77, '_menu_item_url', ''),
(277, 78, '_edit_lock', '1573658548:1'),
(280, 80, '_edit_lock', '1574444050:1'),
(283, 82, '_edit_lock', '1574443946:1'),
(286, 84, '_edit_lock', '1574443902:1'),
(289, 86, '_menu_item_type', 'post_type'),
(290, 86, '_menu_item_menu_item_parent', '0'),
(291, 86, '_menu_item_object_id', '84'),
(292, 86, '_menu_item_object', 'post'),
(293, 86, '_menu_item_target', ''),
(294, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 86, '_menu_item_xfn', ''),
(296, 86, '_menu_item_url', ''),
(298, 87, '_menu_item_type', 'post_type'),
(299, 87, '_menu_item_menu_item_parent', '0'),
(300, 87, '_menu_item_object_id', '82'),
(301, 87, '_menu_item_object', 'post'),
(302, 87, '_menu_item_target', ''),
(303, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 87, '_menu_item_xfn', ''),
(305, 87, '_menu_item_url', ''),
(307, 88, '_menu_item_type', 'post_type'),
(308, 88, '_menu_item_menu_item_parent', '0'),
(309, 88, '_menu_item_object_id', '80'),
(310, 88, '_menu_item_object', 'post'),
(311, 88, '_menu_item_target', ''),
(312, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 88, '_menu_item_xfn', ''),
(314, 88, '_menu_item_url', ''),
(316, 89, '_menu_item_type', 'post_type'),
(317, 89, '_menu_item_menu_item_parent', '0'),
(318, 89, '_menu_item_object_id', '78'),
(319, 89, '_menu_item_object', 'post'),
(320, 89, '_menu_item_target', ''),
(321, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 89, '_menu_item_xfn', ''),
(323, 89, '_menu_item_url', ''),
(325, 90, '_edit_last', '1'),
(327, 90, '_edit_lock', '1573670055:1'),
(377, 106, '_wp_attached_file', '2019/11/fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080.jpg'),
(378, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:71:\"2019/11/fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:72:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:72:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:71:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:72:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:72:\"fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 107, '_wp_attached_file', '2019/11/far_cry_3_beach_game_graphics_hdr_95932_1920x1080.jpg'),
(380, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:61:\"2019/11/far_cry_3_beach_game_graphics_hdr_95932_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:62:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:61:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:62:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:62:\"far_cry_3_beach_game_graphics_hdr_95932_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 108, '_wp_attached_file', '2019/11/halo_5_guardians_343_industries_master_chief_105941_1920x1080.jpg'),
(382, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:73:\"2019/11/halo_5_guardians_343_industries_master_chief_105941_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:74:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:74:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:73:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:74:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:74:\"halo_5_guardians_343_industries_master_chief_105941_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(383, 109, '_wp_attached_file', '2019/11/playstation_gamepad_crash_22102_1920x1080.jpg'),
(384, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:53:\"2019/11/playstation_gamepad_crash_22102_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:54:\"playstation_gamepad_crash_22102_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:54:\"playstation_gamepad_crash_22102_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:53:\"playstation_gamepad_crash_22102_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:54:\"playstation_gamepad_crash_22102_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:54:\"playstation_gamepad_crash_22102_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 110, '_wp_attached_file', '2019/11/the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080.jpg'),
(386, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:74:\"2019/11/the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:75:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:75:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:74:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:75:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:75:\"the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 111, '_wp_attached_file', '2019/11/world_of_tanks_t_62a_field_105518_1920x1080.jpg'),
(388, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:55:\"2019/11/world_of_tanks_t_62a_field_105518_1920x1080.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:56:\"world_of_tanks_t_62a_field_105518_1920x1080-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-200x200.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"myFituredImage\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"slider-items\";a:4:{s:4:\"file\";s:56:\"world_of_tanks_t_62a_field_105518_1920x1080-1900x900.jpg\";s:5:\"width\";i:1900;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"about-items\";a:4:{s:4:\"file\";s:55:\"world_of_tanks_t_62a_field_105518_1920x1080-600x443.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"img-items\";a:4:{s:4:\"file\";s:56:\"world_of_tanks_t_62a_field_105518_1920x1080-1920x750.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"our-items\";a:4:{s:4:\"file\";s:56:\"world_of_tanks_t_62a_field_105518_1920x1080-1080x760.jpg\";s:5:\"width\";i:1080;s:6:\"height\";i:760;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(389, 105, '_edit_last', '1'),
(390, 105, '_thumbnail_id', '111'),
(391, 105, '_edit_lock', '1573731336:1'),
(392, 112, '_edit_last', '1'),
(393, 112, '_thumbnail_id', '110'),
(394, 112, '_edit_lock', '1573731837:1'),
(395, 113, '_edit_last', '1'),
(396, 113, '_edit_lock', '1573732515:1'),
(397, 127, '_edit_last', '1'),
(398, 127, '_thumbnail_id', '111'),
(399, 127, '_edit_lock', '1573732840:1'),
(400, 128, '_edit_last', '1'),
(401, 128, '_thumbnail_id', '110'),
(402, 128, '_edit_lock', '1573732849:1'),
(403, 129, '_edit_last', '1'),
(404, 129, '_thumbnail_id', '109'),
(405, 129, '_edit_lock', '1573732858:1'),
(406, 130, '_edit_last', '1'),
(407, 130, '_thumbnail_id', '108'),
(408, 130, '_edit_lock', '1573732868:1'),
(409, 131, '_edit_last', '1'),
(410, 131, '_thumbnail_id', '107'),
(411, 131, '_edit_lock', '1573732877:1'),
(412, 132, '_edit_last', '1'),
(413, 132, '_thumbnail_id', '106'),
(414, 132, '_edit_lock', '1573733028:1'),
(415, 69, '_thumbnail_id', '111'),
(416, 68, '_thumbnail_id', '110'),
(417, 61, '_thumbnail_id', '109'),
(420, 84, '_thumbnail_id', '111'),
(423, 82, '_thumbnail_id', '106'),
(426, 80, '_thumbnail_id', '21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-08 05:26:13', '2019-11-08 05:26:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-08 05:26:13', '2019-11-08 05:26:13', '', 0, 'http://localhost/fa_dwinsteam.com/?p=1', 0, 'post', '', 1),
(5, 1, '2019-11-08 14:04:14', '2019-11-08 14:04:14', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=5', 1, 'nav_menu_item', '', 0),
(8, 1, '2019-11-11 12:56:02', '2019-11-11 12:56:02', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_.png', 'cropped-bkash-logo-FBB258B90F-seeklogo.com_.png', '', 'inherit', 'open', 'closed', '', 'cropped-bkash-logo-fbb258b90f-seeklogo-com_-png', '', '', '2019-11-11 12:56:02', '2019-11-11 12:56:02', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2019-11-11 12:56:43', '2019-11-11 12:56:43', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-1.png', 'cropped-bkash-logo-FBB258B90F-seeklogo.com_-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-bkash-logo-fbb258b90f-seeklogo-com_-1-png', '', '', '2019-11-11 12:56:43', '2019-11-11 12:56:43', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-11-11 12:57:09', '2019-11-11 12:57:09', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-2.png', 'cropped-bkash-logo-FBB258B90F-seeklogo.com_-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-bkash-logo-fbb258b90f-seeklogo-com_-2-png', '', '', '2019-11-11 12:57:09', '2019-11-11 12:57:09', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-2.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2019-11-11 12:57:56', '2019-11-11 12:57:56', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-3.png', 'cropped-bkash-logo-FBB258B90F-seeklogo.com_-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-bkash-logo-fbb258b90f-seeklogo-com_-3-png', '', '', '2019-11-11 12:57:56', '2019-11-11 12:57:56', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-3.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-11-11 12:59:10', '2019-11-11 12:59:10', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-4.png', 'cropped-bkash-logo-FBB258B90F-seeklogo.com_-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-bkash-logo-fbb258b90f-seeklogo-com_-4-png', '', '', '2019-11-11 12:59:10', '2019-11-11 12:59:10', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-bkash-logo-FBB258B90F-seeklogo.com_-4.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-11-11 13:05:21', '2019-11-11 13:05:21', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-Capture.png', 'cropped-Capture.png', '', 'inherit', 'open', 'closed', '', 'cropped-capture-png', '', '', '2019-11-11 13:05:21', '2019-11-11 13:05:21', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-Capture.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2019-11-11 13:07:06', '2019-11-11 13:07:06', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2019-11-11 13:07:06', '2019-11-11 13:07:06', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/Capture.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-11-11 13:07:26', '2019-11-11 13:07:26', 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-Capture-1.png', 'cropped-Capture-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-capture-1-png', '', '', '2019-11-11 13:07:26', '2019-11-11 13:07:26', '', 0, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/cropped-Capture-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-11-11 13:19:55', '2019-11-11 13:19:55', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-11-11 13:20:44', '2019-11-11 13:20:44', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-11-11 13:19:55', '2019-11-11 13:19:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-11 13:19:55', '2019-11-11 13:19:55', '', 26, 'http://localhost/fa_dwinsteam.com/2019/11/11/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-11-11 13:20:44', '2019-11-11 13:20:44', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-11-11 13:20:44', '2019-11-11 13:20:44', '', 26, 'http://localhost/fa_dwinsteam.com/2019/11/11/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-11-11 13:20:56', '2019-11-11 13:20:56', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-11-11 13:20:56', '2019-11-11 13:20:56', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-11-11 13:20:56', '2019-11-11 13:20:56', '', 'ABOUT US', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-11 13:20:56', '2019-11-11 13:20:56', '', 30, 'http://localhost/fa_dwinsteam.com/2019/11/11/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-11-11 13:21:11', '2019-11-11 13:21:11', '', 'MENU', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-11-11 13:21:11', '2019-11-11 13:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=32', 0, 'page', '', 0),
(33, 1, '2019-11-11 13:21:11', '2019-11-11 13:21:11', '', 'MENU', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-11-11 13:21:11', '2019-11-11 13:21:11', '', 32, 'http://localhost/fa_dwinsteam.com/2019/11/11/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-11-11 13:21:43', '2019-11-11 13:21:43', '', 'RESERVATION', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2019-11-11 13:21:43', '2019-11-11 13:21:43', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=34', 0, 'page', '', 0),
(35, 1, '2019-11-11 13:21:43', '2019-11-11 13:21:43', '', 'RESERVATION', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-11-11 13:21:43', '2019-11-11 13:21:43', '', 34, 'http://localhost/fa_dwinsteam.com/2019/11/11/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-11-11 13:22:13', '2019-11-11 13:22:13', '', 'GALLERY', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2019-11-11 13:22:13', '2019-11-11 13:22:13', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=36', 0, 'page', '', 0),
(37, 1, '2019-11-11 13:22:13', '2019-11-11 13:22:13', '', 'GALLERY', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-11-11 13:22:13', '2019-11-11 13:22:13', '', 36, 'http://localhost/fa_dwinsteam.com/2019/11/11/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-11-11 13:22:32', '2019-11-11 13:22:32', '', 'OUR CHAFE', '', 'publish', 'closed', 'closed', '', 'our-chafe', '', '', '2019-11-11 13:22:32', '2019-11-11 13:22:32', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=38', 0, 'page', '', 0),
(39, 1, '2019-11-11 13:22:32', '2019-11-11 13:22:32', '', 'OUR CHAFE', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-11-11 13:22:32', '2019-11-11 13:22:32', '', 38, 'http://localhost/fa_dwinsteam.com/2019/11/11/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2019-11-11 13:22:55', '2019-11-11 13:22:55', '', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-11-11 13:22:55', '2019-11-11 13:22:55', '', 0, 'http://localhost/fa_dwinsteam.com/?page_id=40', 0, 'page', '', 0),
(41, 1, '2019-11-11 13:22:55', '2019-11-11 13:22:55', '', 'CONTACT US', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-11-11 13:22:55', '2019-11-11 13:22:55', '', 40, 'http://localhost/fa_dwinsteam.com/2019/11/11/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2019-11-11 13:58:26', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-11-11 13:58:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/fa_dwinsteam.com/?p=42', 1, 'nav_menu_item', '', 0),
(50, 1, '2019-11-11 15:02:11', '2019-11-11 15:02:11', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'mu-about-us', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=50', 2, 'nav_menu_item', '', 0),
(51, 1, '2019-11-11 15:16:46', '2019-11-11 15:16:46', '', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-11-14 11:22:48', '2019-11-14 11:22:48', '', 0, 'http://localhost/fa_dwinsteam.com/?p=51', 7, 'nav_menu_item', '', 0),
(52, 1, '2019-11-11 15:16:46', '2019-11-11 15:16:46', '', 'MENU', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2019-11-11 15:16:46', '2019-11-11 15:16:46', '', 'RESERVATION', '', 'publish', 'closed', 'closed', '', 'reservation', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=53', 4, 'nav_menu_item', '', 0),
(55, 1, '2019-11-11 15:16:46', '2019-11-11 15:16:46', '', 'CHEF', '', 'publish', 'closed', 'closed', '', 'chef', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=55', 6, 'nav_menu_item', '', 0),
(56, 1, '2019-11-11 15:18:32', '2019-11-11 15:18:32', '', 'GALLERY', '', 'publish', 'closed', 'closed', '', 'dummy', '', '', '2019-11-14 11:22:47', '2019-11-14 11:22:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=56', 5, 'nav_menu_item', '', 0),
(61, 1, '2019-11-13 12:29:13', '2019-11-13 12:29:13', '', 'Welcome', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2019-11-21 12:06:42', '2019-11-21 12:06:42', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=slider-items&#038;p=61', 0, 'slider-items', '', 0),
(68, 1, '2019-11-13 13:00:52', '2019-11-13 13:00:52', '', 'title 2', '', 'publish', 'closed', 'closed', '', '68', '', '', '2019-11-21 12:06:28', '2019-11-21 12:06:28', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=slider-items&#038;p=68', 0, 'slider-items', '', 0),
(69, 1, '2019-11-13 13:30:35', '2019-11-13 13:30:35', 'No content available.', 'Item 3', '', 'publish', 'closed', 'closed', '', 'item-3', '', '', '2019-11-21 12:06:02', '2019-11-21 12:06:02', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=slider-items&#038;p=69', 0, 'slider-items', '', 0),
(75, 1, '2019-11-13 14:52:08', '2019-11-13 14:52:08', '[fa_shortcode href=\"https://www.facebook.com/\" sname=\"Facebook\" class=\"btn btn-sm btn-primary\"] [fa_shortcode href=\"https://www.twitter.com/\" sname=\"Twitter\" class=\"btn btn-sm btn-info\"] [fa_shortcode href=\"https://www.gmail.com/\" sname=\"Google\" class=\"btn btn-sm btn-danger\"]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam minus aliquid, itaque illum assumenda repellendus dolorem, dolore numquam totam saepe, porro delectus, libero enim odio quo. Explicabo ex sapiente sit eligendi, facere voluptatum! Quia vero rerum sunt porro architecto corrupti eaque corporis eum, enim soluta, perferendis dignissimos, repellendus, beatae laboriosam.\r\n<ul>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\r\n</ul>\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Atque similique molestias est quod reprehenderit, quibusdam nam qui, quam magnam.', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2019-11-22 16:19:15', '2019-11-22 16:19:15', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=about-items&#038;p=75', 0, 'about-items', '', 0),
(77, 1, '2019-11-13 15:23:46', '2019-11-13 15:23:46', '', 'Breakfast', '', 'publish', 'closed', 'closed', '', '77', '', '', '2019-11-14 11:21:11', '2019-11-14 11:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2019-11-13 15:24:47', '2019-11-13 15:24:47', '', 'Meals', '', 'publish', 'open', 'open', '', 'meals', '', '', '2019-11-13 15:24:47', '2019-11-13 15:24:47', '', 0, 'http://localhost/fa_dwinsteam.com/?p=78', 0, 'post', '', 0),
(79, 1, '2019-11-13 15:24:47', '2019-11-13 15:24:47', '', 'Meals', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2019-11-13 15:24:47', '2019-11-13 15:24:47', '', 78, 'http://localhost/fa_dwinsteam.com/2019/11/13/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-11-13 15:25:03', '2019-11-13 15:25:03', '<!-- wp:paragraph -->\n<p>Snacks content.  Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.  </p>\n<!-- /wp:paragraph -->', 'Snacks', '', 'publish', 'open', 'open', '', 'snacks', '', '', '2019-11-22 17:35:18', '2019-11-22 17:35:18', '', 0, 'http://localhost/fa_dwinsteam.com/?p=80', 0, 'post', '', 0),
(81, 1, '2019-11-13 15:25:03', '2019-11-13 15:25:03', '', 'Snacks', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-11-13 15:25:03', '2019-11-13 15:25:03', '', 80, 'http://localhost/fa_dwinsteam.com/2019/11/13/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-11-13 15:25:20', '2019-11-13 15:25:20', '<!-- wp:paragraph -->\n<p>Desserts content example.  Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.  </p>\n<!-- /wp:paragraph -->', 'Desserts', '', 'publish', 'open', 'open', '', 'desserts', '', '', '2019-11-22 17:34:45', '2019-11-22 17:34:45', '', 0, 'http://localhost/fa_dwinsteam.com/?p=82', 0, 'post', '', 0),
(83, 1, '2019-11-13 15:25:20', '2019-11-13 15:25:20', '', 'Desserts', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-11-13 15:25:20', '2019-11-13 15:25:20', '', 82, 'http://localhost/fa_dwinsteam.com/2019/11/13/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-11-13 15:25:34', '2019-11-13 15:25:34', '<!-- wp:paragraph -->\n<p>Drinks content.  Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.  </p>\n<!-- /wp:paragraph -->', 'Drinks', '', 'publish', 'open', 'open', '', 'drinks', '', '', '2019-11-22 17:33:57', '2019-11-22 17:33:57', '', 0, 'http://localhost/fa_dwinsteam.com/?p=84', 0, 'post', '', 0),
(85, 1, '2019-11-13 15:25:34', '2019-11-13 15:25:34', '', 'Drinks', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-11-13 15:25:34', '2019-11-13 15:25:34', '', 84, 'http://localhost/fa_dwinsteam.com/2019/11/13/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-11-13 15:26:20', '2019-11-13 15:26:20', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2019-11-14 11:21:11', '2019-11-14 11:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?p=86', 5, 'nav_menu_item', '', 0),
(87, 1, '2019-11-13 15:26:20', '2019-11-13 15:26:20', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-11-14 11:21:11', '2019-11-14 11:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?p=87', 4, 'nav_menu_item', '', 0),
(88, 1, '2019-11-13 15:26:20', '2019-11-13 15:26:20', ' ', '', '', 'publish', 'closed', 'closed', '', '88', '', '', '2019-11-14 11:21:11', '2019-11-14 11:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?p=88', 3, 'nav_menu_item', '', 0),
(89, 1, '2019-11-13 15:26:19', '2019-11-13 15:26:19', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2019-11-14 11:21:11', '2019-11-14 11:21:11', '', 0, 'http://localhost/fa_dwinsteam.com/?p=89', 2, 'nav_menu_item', '', 0),
(90, 1, '2019-11-13 18:34:15', '2019-11-13 18:34:15', '', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2019-11-13 18:34:15', '2019-11-13 18:34:15', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=img-items&#038;p=90', 0, 'img-items', '', 0),
(105, 1, '2019-11-14 11:37:54', '2019-11-14 11:37:54', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2019-11-14 11:37:54', '2019-11-14 11:37:54', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=our-items&#038;p=105', 0, 'our-items', '', 0),
(106, 1, '2019-11-14 11:37:31', '2019-11-14 11:37:31', '', 'fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080', '', 'inherit', 'open', 'closed', '', 'fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080', '', '', '2019-11-14 11:37:31', '2019-11-14 11:37:31', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/fallout_new_vegas_wasteland_loner_road_hero_92839_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2019-11-14 11:37:34', '2019-11-14 11:37:34', '', 'far_cry_3_beach_game_graphics_hdr_95932_1920x1080', '', 'inherit', 'open', 'closed', '', 'far_cry_3_beach_game_graphics_hdr_95932_1920x1080', '', '', '2019-11-14 11:37:34', '2019-11-14 11:37:34', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/far_cry_3_beach_game_graphics_hdr_95932_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-11-14 11:37:36', '2019-11-14 11:37:36', '', 'halo_5_guardians_343_industries_master_chief_105941_1920x1080', '', 'inherit', 'open', 'closed', '', 'halo_5_guardians_343_industries_master_chief_105941_1920x1080', '', '', '2019-11-14 11:37:36', '2019-11-14 11:37:36', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/halo_5_guardians_343_industries_master_chief_105941_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-11-14 11:37:39', '2019-11-14 11:37:39', '', 'playstation_gamepad_crash_22102_1920x1080', '', 'inherit', 'open', 'closed', '', 'playstation_gamepad_crash_22102_1920x1080', '', '', '2019-11-14 11:37:39', '2019-11-14 11:37:39', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/playstation_gamepad_crash_22102_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-11-14 11:37:41', '2019-11-14 11:37:41', '', 'the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080', '', 'inherit', 'open', 'closed', '', 'the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080', '', '', '2019-11-14 11:37:41', '2019-11-14 11:37:41', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/the_witcher_3_wild_hunt_the_witcher_cd_projekt_99850_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2019-11-14 11:37:44', '2019-11-14 11:37:44', '', 'world_of_tanks_t_62a_field_105518_1920x1080', '', 'inherit', 'open', 'closed', '', 'world_of_tanks_t_62a_field_105518_1920x1080', '', '', '2019-11-14 11:37:44', '2019-11-14 11:37:44', '', 105, 'http://localhost/fa_dwinsteam.com/wp-content/uploads/2019/11/world_of_tanks_t_62a_field_105518_1920x1080.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-11-14 11:38:09', '2019-11-14 11:38:09', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2019-11-14 11:38:09', '2019-11-14 11:38:09', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=our-items&#038;p=112', 0, 'our-items', '', 0),
(113, 1, '2019-11-14 11:46:27', '2019-11-14 11:46:27', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2019-11-14 11:46:27', '2019-11-14 11:46:27', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chafe_info&#038;p=113', 0, 'chafe_info', '', 0),
(127, 1, '2019-11-14 12:03:01', '2019-11-14 12:03:01', '', '', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-11-14 12:03:01', '2019-11-14 12:03:01', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=127', 0, 'chef-items', '', 0),
(128, 1, '2019-11-14 12:03:10', '2019-11-14 12:03:10', '', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-11-14 12:03:10', '2019-11-14 12:03:10', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=128', 0, 'chef-items', '', 0),
(129, 1, '2019-11-14 12:03:20', '2019-11-14 12:03:20', '', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-11-14 12:03:20', '2019-11-14 12:03:20', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=129', 0, 'chef-items', '', 0),
(130, 1, '2019-11-14 12:03:29', '2019-11-14 12:03:29', '', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-11-14 12:03:29', '2019-11-14 12:03:29', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=130', 0, 'chef-items', '', 0),
(131, 1, '2019-11-14 12:03:39', '2019-11-14 12:03:39', '', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-11-14 12:03:39', '2019-11-14 12:03:39', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=131', 0, 'chef-items', '', 0),
(132, 1, '2019-11-14 12:03:48', '2019-11-14 12:03:48', '', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-11-14 12:03:48', '2019-11-14 12:03:48', '', 0, 'http://localhost/fa_dwinsteam.com/?post_type=chef-items&#038;p=132', 0, 'chef-items', '', 0),
(134, 1, '2019-11-22 16:02:51', '2019-11-22 16:02:51', '[fa_shortcode href=\"FACEBOOK.COM\" sname=\"FACEBOOK\"]\n\n&nbsp;\n\n&nbsp;\n\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam minus aliquid, itaque illum assumenda repellendus dolorem, dolore numquam totam saepe, porro delectus, libero enim odio quo. Explicabo ex sapiente sit eligendi, facere voluptatum! Quia vero rerum sunt porro architecto corrupti eaque corporis eum, enim soluta, perferendis dignissimos, repellendus, beatae laboriosam.\n<ul>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n 	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</li>\n</ul>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Atque similique molestias est quod reprehenderit, quibusdam nam qui, quam magnam.', '', '', 'inherit', 'closed', 'closed', '', '75-autosave-v1', '', '', '2019-11-22 16:02:51', '2019-11-22 16:02:51', '', 75, 'http://localhost/fa_dwinsteam.com/2019/11/22/75-autosave-v1/', 0, 'revision', '', 0),
(135, 1, '2019-11-22 17:33:57', '2019-11-22 17:33:57', '<!-- wp:paragraph -->\n<p>Drinks content.  Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.   Drinks content.  </p>\n<!-- /wp:paragraph -->', 'Drinks', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-11-22 17:33:57', '2019-11-22 17:33:57', '', 84, 'http://localhost/fa_dwinsteam.com/2019/11/22/84-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-11-22 17:34:45', '2019-11-22 17:34:45', '<!-- wp:paragraph -->\n<p>Desserts content example.  Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.   Desserts content example.  </p>\n<!-- /wp:paragraph -->', 'Desserts', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-11-22 17:34:45', '2019-11-22 17:34:45', '', 82, 'http://localhost/fa_dwinsteam.com/2019/11/22/82-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2019-11-22 17:35:18', '2019-11-22 17:35:18', '<!-- wp:paragraph -->\n<p>Snacks content.  Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.   Snacks content.  </p>\n<!-- /wp:paragraph -->', 'Snacks', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2019-11-22 17:35:18', '2019-11-22 17:35:18', '', 80, 'http://localhost/fa_dwinsteam.com/2019/11/22/80-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-01-29 08:10:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-29 08:10:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/fa_dwinsteam.com/?p=140', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0),
(5, 'Dinar', 'dinar', 0),
(6, 'Lunch', 'lunch', 0),
(7, 'Center Menu', 'center-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0),
(53, 2, 0),
(55, 2, 0),
(56, 2, 0),
(77, 7, 0),
(78, 1, 0),
(80, 1, 0),
(82, 1, 0),
(84, 1, 0),
(86, 7, 0),
(87, 7, 0),
(88, 7, 0),
(89, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 7),
(5, 5, 'slider-items', '', 0, 0),
(6, 6, 'slider-items', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1574338418'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '140'),
(20, 1, 'managenav-menuscolumnshidden', 'a:1:{i:0;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:26:\"add-post-type-slider-items\";}'),
(22, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_slider-items', 'a:1:{i:0;s:11:\"slider_meta\";}'),
(25, 1, 'metaboxhidden_slider-items', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'facebook', 'https://www.facebook.com/'),
(27, 1, 'linkedln', 'https://www.linkedin.com'),
(28, 1, 'twitter', 'https://www.twitter.com'),
(29, 1, 'google+', 'https://www.google.com'),
(30, 1, 'youtube', 'https://www.youtube.com'),
(31, 1, 'session_tokens', 'a:1:{s:64:\"7955d1516f379039675bab3c44b5fa150726f8e1245bed289944cbe4e7f44b91\";a:4:{s:10:\"expiration\";i:1580458234;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580285434;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSvDxJbaNwwnXy5lDsqNzsc64AC/3F.', 'admin', 'mdfahad01618@gmail.com', '', '2019-11-08 05:26:12', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
