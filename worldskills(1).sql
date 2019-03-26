-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 08:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldskills`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-12 07:28:04', '2019-03-12 07:28:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
(1, 'siteurl', 'http://localhost/WorldSkills', 'yes'),
(2, 'home', 'http://localhost/WorldSkills', 'yes'),
(3, 'blogname', 'Philippines WorldSkills', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nocejapatrick@gmail.com', 'yes'),
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
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:82:\"C:\\xampp\\htdocs\\WorldSkills/wp-content/plugins/adaptive-images/adaptive-images.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'blankslate', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1553239686;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1553239694;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1553322120;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552375763;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-4.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-4.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1553233445;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(123, 'current_theme', 'BlankSlate', 'yes'),
(124, 'theme_mods_blankslate', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:51;}', 'yes'),
(125, 'theme_switched', '', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(175, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1553233445;s:7:\"checked\";a:4:{s:10:\"blankslate\";s:5:\"4.0.4\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:4:{s:10:\"blankslate\";a:4:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";i:2019;s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/blankslate.2019.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.4.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.1.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.9.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(176, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1553233445;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(180, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(197, '_site_transient_timeout_browser_5ac71600cc9c7fa82bbc370cd02eb16b', '1553495553', 'no'),
(198, '_site_transient_browser_5ac71600cc9c7fa82bbc370cd02eb16b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"67.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(238, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1553181060', 'no'),
(239, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:30:\"Manila East WP Meetup Sessions\";s:3:\"url\";s:64:\"https://www.meetup.com/Manila-WordPress-Meetup/events/259552595/\";s:6:\"meetup\";s:23:\"Manila WordPress Meetup\";s:10:\"meetup_url\";s:47:\"https://www.meetup.com/Manila-WordPress-Meetup/\";s:4:\"date\";s:19:\"2019-03-27 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Taytay, Philippines\";s:7:\"country\";s:2:\"ph\";s:8:\"latitude\";d:14.578738;s:9:\"longitude\";d:121.142;}}}}', 'no'),
(240, '_transient_timeout_plugin_slugs', '1553224262', 'no'),
(241, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(250, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1553276378', 'no'),
(251, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(252, '_site_transient_timeout_theme_roots', '1553235022', 'no'),
(253, '_site_transient_theme_roots', 'a:4:{s:10:\"blankslate\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2019/03/Login.png'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1915;s:6:\"height\";i:973;s:4:\"file\";s:17:\"2019/03/Login.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Login-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Login-300x152.png\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Login-768x390.png\";s:5:\"width\";i:768;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"Login-1024x520.png\";s:5:\"width\";i:1024;s:6:\"height\";i:520;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 5, '_wp_attached_file', '2019/03/Request-Form-Component.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1915;s:6:\"height\";i:992;s:4:\"file\";s:34:\"2019/03/Request-Form-Component.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Request-Form-Component-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Request-Form-Component-300x155.png\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Request-Form-Component-768x398.png\";s:5:\"width\";i:768;s:6:\"height\";i:398;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Request-Form-Component-1024x530.png\";s:5:\"width\";i:1024;s:6:\"height\";i:530;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 1, '_edit_lock', '1552458147:1'),
(7, 1, '_edit_last', '1'),
(10, 7, '_wp_attached_file', '2019/03/Screenshot_2019-03-12-Skills-have-no-gender.jpg'),
(11, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1903;s:6:\"height\";i:4675;s:4:\"file\";s:55:\"2019/03/Screenshot_2019-03-12-Skills-have-no-gender.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:55:\"Screenshot_2019-03-12-Skills-have-no-gender-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:55:\"Screenshot_2019-03-12-Skills-have-no-gender-122x300.jpg\";s:5:\"width\";i:122;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"Screenshot_2019-03-12-Skills-have-no-gender-768x1887.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1887;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:56:\"Screenshot_2019-03-12-Skills-have-no-gender-417x1024.jpg\";s:5:\"width\";i:417;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 8, '_menu_item_type', 'custom'),
(13, 8, '_menu_item_menu_item_parent', '0'),
(14, 8, '_menu_item_object_id', '8'),
(15, 8, '_menu_item_object', 'custom'),
(16, 8, '_menu_item_target', ''),
(17, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 8, '_menu_item_xfn', ''),
(19, 8, '_menu_item_url', 'http://localhost/WorldSkills/'),
(20, 8, '_menu_item_orphaned', '1552544510'),
(21, 9, '_menu_item_type', 'post_type'),
(22, 9, '_menu_item_menu_item_parent', '0'),
(23, 9, '_menu_item_object_id', '2'),
(24, 9, '_menu_item_object', 'page'),
(25, 9, '_menu_item_target', ''),
(26, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 9, '_menu_item_xfn', ''),
(28, 9, '_menu_item_url', ''),
(29, 9, '_menu_item_orphaned', '1552544511'),
(30, 10, '_menu_item_type', 'custom'),
(31, 10, '_menu_item_menu_item_parent', '0'),
(32, 10, '_menu_item_object_id', '10'),
(33, 10, '_menu_item_object', 'custom'),
(34, 10, '_menu_item_target', ''),
(35, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 10, '_menu_item_xfn', ''),
(37, 10, '_menu_item_url', 'http://localhost/WorldSkills/'),
(38, 10, '_menu_item_orphaned', '1552544512'),
(39, 11, '_menu_item_type', 'post_type'),
(40, 11, '_menu_item_menu_item_parent', '0'),
(41, 11, '_menu_item_object_id', '2'),
(42, 11, '_menu_item_object', 'page'),
(43, 11, '_menu_item_target', ''),
(44, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 11, '_menu_item_xfn', ''),
(46, 11, '_menu_item_url', ''),
(47, 11, '_menu_item_orphaned', '1552544513'),
(48, 12, '_edit_last', '1'),
(49, 12, '_edit_lock', '1552544476:1'),
(50, 14, '_edit_last', '1'),
(51, 14, '_edit_lock', '1552544488:1'),
(52, 16, '_edit_last', '1'),
(53, 16, '_edit_lock', '1552544482:1'),
(54, 18, '_menu_item_type', 'custom'),
(55, 18, '_menu_item_menu_item_parent', '0'),
(56, 18, '_menu_item_object_id', '18'),
(57, 18, '_menu_item_object', 'custom'),
(58, 18, '_menu_item_target', ''),
(59, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 18, '_menu_item_xfn', ''),
(61, 18, '_menu_item_url', 'http://localhost/WorldSkills/'),
(62, 18, '_menu_item_orphaned', '1552544604'),
(63, 19, '_menu_item_type', 'post_type'),
(64, 19, '_menu_item_menu_item_parent', '0'),
(65, 19, '_menu_item_object_id', '2'),
(66, 19, '_menu_item_object', 'page'),
(67, 19, '_menu_item_target', ''),
(68, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 19, '_menu_item_xfn', ''),
(70, 19, '_menu_item_url', ''),
(71, 19, '_menu_item_orphaned', '1552544604'),
(72, 20, '_menu_item_type', 'custom'),
(73, 20, '_menu_item_menu_item_parent', '0'),
(74, 20, '_menu_item_object_id', '20'),
(75, 20, '_menu_item_object', 'custom'),
(76, 20, '_menu_item_target', ''),
(77, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 20, '_menu_item_xfn', ''),
(79, 20, '_menu_item_url', 'http://localhost/WorldSkills/'),
(80, 20, '_menu_item_orphaned', '1552544610'),
(81, 21, '_menu_item_type', 'post_type'),
(82, 21, '_menu_item_menu_item_parent', '0'),
(83, 21, '_menu_item_object_id', '2'),
(84, 21, '_menu_item_object', 'page'),
(85, 21, '_menu_item_target', ''),
(86, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 21, '_menu_item_xfn', ''),
(88, 21, '_menu_item_url', ''),
(89, 21, '_menu_item_orphaned', '1552544611'),
(90, 22, '_menu_item_type', 'custom'),
(91, 22, '_menu_item_menu_item_parent', '0'),
(92, 22, '_menu_item_object_id', '22'),
(93, 22, '_menu_item_object', 'custom'),
(94, 22, '_menu_item_target', ''),
(95, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 22, '_menu_item_xfn', ''),
(97, 22, '_menu_item_url', 'http://localhost/WorldSkills/'),
(99, 23, '_menu_item_type', 'post_type'),
(100, 23, '_menu_item_menu_item_parent', '0'),
(101, 23, '_menu_item_object_id', '12'),
(102, 23, '_menu_item_object', 'page'),
(103, 23, '_menu_item_target', ''),
(104, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 23, '_menu_item_xfn', ''),
(106, 23, '_menu_item_url', ''),
(108, 24, '_menu_item_type', 'post_type'),
(109, 24, '_menu_item_menu_item_parent', '0'),
(110, 24, '_menu_item_object_id', '16'),
(111, 24, '_menu_item_object', 'page'),
(112, 24, '_menu_item_target', ''),
(113, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 24, '_menu_item_xfn', ''),
(115, 24, '_menu_item_url', ''),
(117, 25, '_menu_item_type', 'post_type'),
(118, 25, '_menu_item_menu_item_parent', '0'),
(119, 25, '_menu_item_object_id', '14'),
(120, 25, '_menu_item_object', 'page'),
(121, 25, '_menu_item_target', ''),
(122, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 25, '_menu_item_xfn', ''),
(124, 25, '_menu_item_url', ''),
(126, 26, '_menu_item_type', 'post_type'),
(127, 26, '_menu_item_menu_item_parent', '0'),
(128, 26, '_menu_item_object_id', '2'),
(129, 26, '_menu_item_object', 'page'),
(130, 26, '_menu_item_target', ''),
(131, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 26, '_menu_item_xfn', ''),
(133, 26, '_menu_item_url', ''),
(134, 26, '_menu_item_orphaned', '1552544636'),
(142, 32, '_wp_attached_file', '2019/03/Portfolio3.jpg'),
(143, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2480;s:6:\"height\";i:3508;s:4:\"file\";s:22:\"2019/03/Portfolio3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Portfolio3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Portfolio3-212x300.jpg\";s:5:\"width\";i:212;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Portfolio3-768x1086.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Portfolio3-724x1024.jpg\";s:5:\"width\";i:724;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(146, 35, '_wp_attached_file', '2019/03/44964599021_640ab7ebe6_o.jpg'),
(147, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:36:\"2019/03/44964599021_640ab7ebe6_o.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"44964599021_640ab7ebe6_o-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"44964599021_640ab7ebe6_o-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"44964599021_640ab7ebe6_o-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"44964599021_640ab7ebe6_o-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:6:\"OAT750\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1535710226\";s:9:\"copyright\";s:14:\"BODINT YOUKERD\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 38, '_wp_attached_file', '2019/03/BG_HEADER.jpg'),
(153, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:21:\"2019/03/BG_HEADER.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"BG_HEADER-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"BG_HEADER-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"BG_HEADER-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"BG_HEADER-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:6:\"OAT750\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1535710226\";s:9:\"copyright\";s:14:\"BODINT YOUKERD\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(154, 39, '_wp_attached_file', '2019/03/BG_HEADER-1.jpg'),
(155, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:23:\"2019/03/BG_HEADER-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"BG_HEADER-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"BG_HEADER-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"BG_HEADER-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"BG_HEADER-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:6:\"OAT750\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1535710226\";s:9:\"copyright\";s:14:\"BODINT YOUKERD\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(156, 40, '_wp_attached_file', '2019/03/gb_blur.jpg'),
(157, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6016;s:6:\"height\";i:4016;s:4:\"file\";s:19:\"2019/03/gb_blur.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"gb_blur-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"gb_blur-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"gb_blur-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"gb_blur-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:6:\"OAT750\";s:6:\"camera\";s:10:\"NIKON D750\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1535710226\";s:9:\"copyright\";s:14:\"BODINT YOUKERD\";s:12:\"focal_length\";s:3:\"140\";s:3:\"iso\";s:4:\"1250\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(158, 41, '_wp_attached_file', '2019/03/449034_00_01_WX30_Welcome.mp4'),
(159, 41, '_wp_attachment_metadata', 'a:12:{s:8:\"lossless\";b:0;s:8:\"filesize\";i:2869569;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:54;s:16:\"length_formatted\";s:4:\"0:54\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"codec\";s:16:\"Apple ProRes 422\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:32;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1462553679;}'),
(160, 42, '_wp_attached_file', '2019/03/449034_00_02_XR15_WhatYou.mp4'),
(161, 42, '_wp_attachment_metadata', 'a:12:{s:8:\"lossless\";b:0;s:8:\"filesize\";i:2729506;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:102;s:16:\"length_formatted\";s:4:\"1:42\";s:5:\"width\";i:960;s:6:\"height\";i:540;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"codec\";s:16:\"Apple ProRes 422\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:32;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1459161246;}'),
(162, 1, '_wp_trash_meta_status', 'publish'),
(163, 1, '_wp_trash_meta_time', '1552890292'),
(164, 1, '_wp_desired_post_slug', 'hello-world'),
(165, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(166, 45, '_wp_attached_file', '2019/03/rovina.jpg'),
(167, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:18:\"2019/03/rovina.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"rovina-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"rovina-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"rovina-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(168, 44, '_edit_last', '1'),
(169, 44, '_edit_lock', '1552890502:1'),
(170, 44, '_thumbnail_id', '45'),
(173, 47, '_edit_last', '1'),
(174, 47, '_edit_lock', '1552890642:1'),
(175, 48, '_wp_attached_file', '2019/03/charles.jpg'),
(176, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:19:\"2019/03/charles.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"charles-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"charles-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"charles-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(177, 47, '_thumbnail_id', '48'),
(180, 50, '_edit_lock', '1552891701:1'),
(181, 50, '_wp_trash_meta_status', 'publish'),
(182, 50, '_wp_trash_meta_time', '1552891708'),
(183, 53, '_edit_lock', '1552892256:1'),
(184, 53, '_wp_trash_meta_status', 'publish'),
(185, 53, '_wp_trash_meta_time', '1552892292'),
(186, 56, '_edit_lock', '1552892905:1'),
(187, 56, '_customize_restore_dismissed', '1'),
(188, 57, '_wp_trash_meta_status', 'publish'),
(189, 57, '_wp_trash_meta_time', '1552892968'),
(190, 59, '_edit_lock', '1552893001:1'),
(191, 59, '_wp_trash_meta_status', 'publish'),
(192, 59, '_wp_trash_meta_time', '1552893020'),
(193, 61, '_wp_trash_meta_status', 'publish'),
(194, 61, '_wp_trash_meta_time', '1552893120'),
(195, 63, '_edit_lock', '1552893941:1'),
(196, 63, '_wp_trash_meta_status', 'publish'),
(197, 63, '_wp_trash_meta_time', '1552893944'),
(198, 65, '_edit_lock', '1552894580:1'),
(199, 65, '_wp_trash_meta_status', 'publish'),
(200, 65, '_wp_trash_meta_time', '1552894633'),
(201, 67, '_edit_lock', '1552894994:1'),
(202, 67, '_wp_trash_meta_status', 'publish'),
(203, 67, '_wp_trash_meta_time', '1552895006'),
(204, 69, '_edit_lock', '1552895320:1'),
(205, 69, '_wp_trash_meta_status', 'publish'),
(206, 69, '_wp_trash_meta_time', '1552895351'),
(207, 71, '_edit_lock', '1552899405:1'),
(208, 71, '_wp_trash_meta_status', 'publish'),
(209, 71, '_wp_trash_meta_time', '1552899404'),
(210, 73, '_edit_lock', '1552899813:1'),
(211, 73, '_wp_trash_meta_status', 'publish'),
(212, 73, '_wp_trash_meta_time', '1552899851'),
(213, 76, '_wp_attached_file', '2019/03/JL.jpg'),
(214, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:14:\"2019/03/JL.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"JL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"JL-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"JL-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(215, 75, '_edit_last', '1'),
(216, 75, '_edit_lock', '1552900604:1'),
(217, 75, '_thumbnail_id', '76'),
(224, 83, '_wp_attached_file', '2019/03/CharlesI.jpg'),
(225, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:20:\"2019/03/CharlesI.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"CharlesI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"CharlesI-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"CharlesI-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(226, 82, '_edit_last', '1'),
(227, 82, '_edit_lock', '1552900738:1'),
(228, 82, '_thumbnail_id', '83'),
(231, 85, '_wp_trash_meta_status', 'publish'),
(232, 85, '_wp_trash_meta_time', '1552975655'),
(233, 89, '_wp_attached_file', '2019/03/Post-4.jpg'),
(234, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:18:\"2019/03/Post-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Post-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Post-4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Post-4-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(235, 88, '_edit_last', '1'),
(236, 88, '_edit_lock', '1553133127:1'),
(237, 88, '_thumbnail_id', '89'),
(240, 91, '_edit_last', '1'),
(241, 91, '_edit_lock', '1553134285:1'),
(242, 92, '_wp_attached_file', '2019/03/Patrick.jpg'),
(243, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:534;s:4:\"file\";s:19:\"2019/03/Patrick.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Patrick-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Patrick-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Patrick-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(244, 91, '_thumbnail_id', '92');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-12 07:28:04', '2019-03-12 07:28:04', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\n<img class=\"alignnone size-medium wp-image-4\" src=\"http://localhost/WorldSkills/wp-content/uploads/2019/03/Login-300x152.png\" alt=\"\" width=\"300\" height=\"152\" />\r\n\r\n&nbsp;', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-03-18 06:24:52', '2019-03-18 06:24:52', '', 0, 'http://localhost/WorldSkills/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-12 07:28:04', '2019-03-12 07:28:04', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/WorldSkills/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-03-12 07:28:04', '2019-03-12 07:28:04', '', 0, 'http://localhost/WorldSkills/?page_id=2', 0, 'page', '', 0),
(4, 1, '2019-03-13 06:22:37', '2019-03-13 06:22:37', '', 'Login', '', 'inherit', 'open', 'closed', '', 'login', '', '', '2019-03-13 06:24:44', '2019-03-13 06:24:44', '', 1, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Login.png', 0, 'attachment', 'image/png', 0),
(5, 1, '2019-03-13 06:22:47', '2019-03-13 06:22:47', '', 'Request Form Component', '', 'inherit', 'open', 'closed', '', 'request-form-component', '', '', '2019-03-13 06:22:47', '2019-03-13 06:22:47', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Request-Form-Component.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-03-13 06:24:47', '2019-03-13 06:24:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!\r\n\r\n<img class=\"alignnone size-medium wp-image-4\" src=\"http://localhost/WorldSkills/wp-content/uploads/2019/03/Login-300x152.png\" alt=\"\" width=\"300\" height=\"152\" />\r\n\r\n&nbsp;', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-13 06:24:47', '2019-03-13 06:24:47', '', 1, 'http://localhost/WorldSkills/2019/03/13/1-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-03-13 06:25:06', '2019-03-13 06:25:06', '', 'Screenshot_2019-03-12 Skills have no gender', '', 'inherit', 'open', 'closed', '', 'screenshot_2019-03-12-skills-have-no-gender', '', '', '2019-03-13 06:25:06', '2019-03-13 06:25:06', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Screenshot_2019-03-12-Skills-have-no-gender.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2019-03-14 06:21:49', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:21:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-03-14 06:21:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:21:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-03-14 06:21:52', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:21:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2019-03-14 06:21:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:21:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2019-03-14 06:23:38', '2019-03-14 06:23:38', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-03-14 06:23:38', '2019-03-14 06:23:38', '', 0, 'http://localhost/WorldSkills/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-03-14 06:22:08', '2019-03-14 06:22:08', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-03-14 06:22:08', '2019-03-14 06:22:08', '', 12, 'http://localhost/WorldSkills/2019/03/14/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-03-14 06:23:49', '2019-03-14 06:23:49', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2019-03-14 06:23:49', '2019-03-14 06:23:49', '', 0, 'http://localhost/WorldSkills/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-03-14 06:22:16', '2019-03-14 06:22:16', '', 'News', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-03-14 06:22:16', '2019-03-14 06:22:16', '', 14, 'http://localhost/WorldSkills/2019/03/14/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-03-14 06:23:45', '2019-03-14 06:23:45', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2019-03-14 06:23:45', '2019-03-14 06:23:45', '', 0, 'http://localhost/WorldSkills/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-03-14 06:22:20', '2019-03-14 06:22:20', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-03-14 06:22:20', '2019-03-14 06:22:20', '', 16, 'http://localhost/WorldSkills/2019/03/14/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-03-14 06:23:23', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:23:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2019-03-14 06:23:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:23:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2019-03-14 06:23:30', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:23:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-03-14 06:23:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:23:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2019-03-14 06:24:12', '2019-03-14 06:24:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-03-14 06:24:12', '2019-03-14 06:24:12', '', 0, 'http://localhost/WorldSkills/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2019-03-14 06:24:13', '2019-03-14 06:24:13', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-03-14 06:24:13', '2019-03-14 06:24:13', '', 0, 'http://localhost/WorldSkills/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2019-03-14 06:24:13', '2019-03-14 06:24:13', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2019-03-14 06:24:13', '2019-03-14 06:24:13', '', 0, 'http://localhost/WorldSkills/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2019-03-14 06:24:13', '2019-03-14 06:24:13', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2019-03-14 06:24:13', '2019-03-14 06:24:13', '', 0, 'http://localhost/WorldSkills/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2019-03-14 06:23:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-03-14 06:23:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=26', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-03-14 06:29:25', '2019-03-14 06:29:25', '', 'Portfolio3', '', 'inherit', 'open', 'closed', '', 'portfolio3', '', '', '2019-03-14 06:29:25', '2019-03-14 06:29:25', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Portfolio3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-03-14 06:44:22', '2019-03-14 06:44:22', '', '44964599021_640ab7ebe6_o', '', 'inherit', 'open', 'closed', '', '44964599021_640ab7ebe6_o', '', '', '2019-03-14 06:44:22', '2019-03-14 06:44:22', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/44964599021_640ab7ebe6_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-03-14 07:14:29', '2019-03-14 07:14:29', '', 'BG_HEADER', '', 'inherit', 'open', 'closed', '', 'bg_header', '', '', '2019-03-14 07:14:29', '2019-03-14 07:14:29', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/BG_HEADER.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-03-14 07:15:11', '2019-03-14 07:15:11', '', 'BG_HEADER', '', 'inherit', 'open', 'closed', '', 'bg_header-2', '', '', '2019-03-14 07:15:11', '2019-03-14 07:15:11', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/BG_HEADER-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-03-14 07:49:44', '2019-03-14 07:49:44', '', 'gb_blur', '', 'inherit', 'open', 'closed', '', 'gb_blur', '', '', '2019-03-14 07:49:44', '2019-03-14 07:49:44', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/gb_blur.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-03-14 08:24:58', '2019-03-14 08:24:58', '', '449034_00_01_WX30_Welcome', '', 'inherit', 'open', 'closed', '', '449034_00_01_wx30_welcome', '', '', '2019-03-14 08:24:58', '2019-03-14 08:24:58', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/449034_00_01_WX30_Welcome.mp4', 0, 'attachment', 'video/mp4', 0),
(42, 1, '2019-03-14 08:50:18', '2019-03-14 08:50:18', '', '449034_00_02_XR15_WhatYou', '', 'inherit', 'open', 'closed', '', '449034_00_02_xr15_whatyou', '', '', '2019-03-14 08:50:18', '2019-03-14 08:50:18', '', 0, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/449034_00_02_XR15_WhatYou.mp4', 0, 'attachment', 'video/mp4', 0),
(43, 1, '2019-03-18 06:25:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-18 06:25:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=43', 0, 'post', '', 0),
(44, 1, '2019-03-18 06:30:43', '2019-03-18 06:30:43', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nulla voluptatem cum, blanditiis sed nemo ratione cupiditate natus harum repellendus nam quod sunt, sint suscipit totam corrupti tempora fugit nisi!', 'PH ELECTRONICS GOES TO THAILAND ASEAN WORLD SKILLS', '', 'publish', 'open', 'open', '', 'ph-electronics-goes-to-thailand-asean-world-skills', '', '', '2019-03-18 06:30:43', '2019-03-18 06:30:43', '', 0, 'http://localhost/WorldSkills/?p=44', 0, 'post', '', 0),
(45, 1, '2019-03-18 06:30:11', '2019-03-18 06:30:11', '', 'rovina', '', 'inherit', 'open', 'closed', '', 'rovina', '', '', '2019-03-18 06:30:11', '2019-03-18 06:30:11', '', 44, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/rovina.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-03-18 06:30:43', '2019-03-18 06:30:43', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nulla voluptatem cum, blanditiis sed nemo ratione cupiditate natus harum repellendus nam quod sunt, sint suscipit totam corrupti tempora fugit nisi!', 'PH ELECTRONICS GOES TO THAILAND ASEAN WORLD SKILLS', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-03-18 06:30:43', '2019-03-18 06:30:43', '', 44, 'http://localhost/WorldSkills/2019/03/18/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-03-18 06:33:03', '2019-03-18 06:33:03', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nulla voluptatem cum, blanditiis sed nemo ratione cupiditate natus harum repellendus nam quod sunt, sint suscipit totam corrupti tempora fugit nisi!', 'CHARLES THE REPRESENTATIVE OF PHILIPPINES IN COOKING', '', 'publish', 'open', 'open', '', 'charles-the-representative-of-philippines-in-cooking', '', '', '2019-03-18 06:33:03', '2019-03-18 06:33:03', '', 0, 'http://localhost/WorldSkills/?p=47', 0, 'post', '', 0),
(48, 1, '2019-03-18 06:32:59', '2019-03-18 06:32:59', '', 'charles', '', 'inherit', 'open', 'closed', '', 'charles', '', '', '2019-03-18 06:32:59', '2019-03-18 06:32:59', '', 47, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/charles.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-03-18 06:33:03', '2019-03-18 06:33:03', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure nulla voluptatem cum, blanditiis sed nemo ratione cupiditate natus harum repellendus nam quod sunt, sint suscipit totam corrupti tempora fugit nisi!', 'CHARLES THE REPRESENTATIVE OF PHILIPPINES IN COOKING', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2019-03-18 06:33:03', '2019-03-18 06:33:03', '', 47, 'http://localhost/WorldSkills/2019/03/18/47-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-03-18 06:48:28', '2019-03-18 06:48:28', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container article{\\n\\twidth:50%;\\n\\ttext-align:center;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:48:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fddf8020-ce55-487f-a88b-ed3dee25a340', '', '', '2019-03-18 06:48:28', '2019-03-18 06:48:28', '', 0, 'http://localhost/WorldSkills/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2019-03-18 06:48:28', '2019-03-18 06:48:28', '', 'blankslate', '', 'publish', 'closed', 'closed', '', 'blankslate', '', '', '2019-03-19 06:07:35', '2019-03-19 06:07:35', '', 0, 'http://localhost/WorldSkills/2019/03/18/blankslate/', 0, 'custom_css', '', 0),
(52, 1, '2019-03-18 06:48:28', '2019-03-18 06:48:28', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container article{\n	width:50%;\n	text-align:center;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 06:48:28', '2019-03-18 06:48:28', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-03-18 06:58:12', '2019-03-18 06:58:12', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container article{\\n\\tflex:1 1 0px;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 06:55:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '75cd63fb-5421-4c3d-b908-9b7271bfeb19', '', '', '2019-03-18 06:58:12', '2019-03-18 06:58:12', '', 0, 'http://localhost/WorldSkills/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2019-03-18 06:58:12', '2019-03-18 06:58:12', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container article{\n	flex:1 1 0px;\n	text-align:center;\n	margin:27px;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 06:58:12', '2019-03-18 06:58:12', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-03-18 06:59:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-18 06:59:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=55', 0, 'post', '', 0),
(56, 1, '2019-03-18 07:08:07', '0000-00-00 00:00:00', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container article{\\n\\tflex:1 1 700px;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:08:07\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6c34ca24-b91c-4e39-b2eb-83fd8c84b79e', '', '', '2019-03-18 07:08:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2019-03-18 07:09:28', '2019-03-18 07:09:28', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container article{\\n\\twidth:700px;\\n\\theight: 469px;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:09:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '58412745-4084-4ba8-ad73-2d2484e257af', '', '', '2019-03-18 07:09:28', '2019-03-18 07:09:28', '', 0, 'http://localhost/WorldSkills/2019/03/18/58412745-4084-4ba8-ad73-2d2484e257af/', 0, 'customize_changeset', '', 0),
(58, 1, '2019-03-18 07:09:28', '2019-03-18 07:09:28', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container article{\n	width:700px;\n	height: 469px;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:09:28', '2019-03-18 07:09:28', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-03-18 07:10:20', '2019-03-18 07:10:20', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container article{\\n\\twidth:700px;\\n\\theight:469px;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:10:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3be372d8-bbbe-48c9-9db8-7f6cc97cce05', '', '', '2019-03-18 07:10:20', '2019-03-18 07:10:20', '', 0, 'http://localhost/WorldSkills/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2019-03-18 07:10:20', '2019-03-18 07:10:20', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container article{\n	width:700px;\n	height:469px;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:10:20', '2019-03-18 07:10:20', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-03-18 07:12:00', '2019-03-18 07:12:00', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\twidth:700px;\\n\\theight:469px;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:12:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5741c10-dbb9-4493-8929-6a3ea850f3db', '', '', '2019-03-18 07:12:00', '2019-03-18 07:12:00', '', 0, 'http://localhost/WorldSkills/2019/03/18/e5741c10-dbb9-4493-8929-6a3ea850f3db/', 0, 'customize_changeset', '', 0),
(62, 1, '2019-03-18 07:12:00', '2019-03-18 07:12:00', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	width:700px;\n	height:469px;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:12:00', '2019-03-18 07:12:00', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-03-18 07:25:44', '2019-03-18 07:25:44', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:50%;\\n\\theight:50%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:25:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f78e0644-fa32-4a99-a21f-dcdff5519cbf', '', '', '2019-03-18 07:25:44', '2019-03-18 07:25:44', '', 0, 'http://localhost/WorldSkills/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2019-03-18 07:25:44', '2019-03-18 07:25:44', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:50%;\n	height:50%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:25:44', '2019-03-18 07:25:44', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2019-03-18 07:37:13', '2019-03-18 07:37:13', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:40%;\\n\\theight:60%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n\\ttransition:.4s all linear;\\n}\\n\\n.p-container .article .black-overlay:hover{\\n\\t\\ttop:-20%;\\n\\theight:120%;\\n}\\n\\n.p-container .article .black-overlay:hover .title{\\n\\ttop:190px;\\n}\\n\\n.p-container .article .black-overlay .title{\\n\\t\\tfont-family:\'Montserrat\';\\n\\tfont-size:2.1em;\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tline-height:38px;\\n\\tposition:relative;\\n\\ttop:140px;\\n\\tpadding:0 40px;\\n\\ttransition: .2s all linear;\\n}\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:37:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c766433-4fd5-470d-b4d3-e4336f0ade4e', '', '', '2019-03-18 07:37:13', '2019-03-18 07:37:13', '', 0, 'http://localhost/WorldSkills/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2019-03-18 07:37:13', '2019-03-18 07:37:13', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:40%;\n	height:60%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n	transition:.4s all linear;\n}\n\n.p-container .article .black-overlay:hover{\n		top:-20%;\n	height:120%;\n}\n\n.p-container .article .black-overlay:hover .title{\n	top:190px;\n}\n\n.p-container .article .black-overlay .title{\n		font-family:\'Montserrat\';\n	font-size:2.1em;\n	font-weight:bold;\n	color:white;\n	line-height:38px;\n	position:relative;\n	top:140px;\n	padding:0 40px;\n	transition: .2s all linear;\n}\n\n', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:37:13', '2019-03-18 07:37:13', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2019-03-18 07:43:26', '2019-03-18 07:43:26', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:40%;\\n\\theight:60%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n/* \\ttransition:.4s all linear; */\\n\\tanimation: blackoverlay .5s linear; \\n}\\n\\n.p-container .article .black-overlay:hover{\\n\\t\\ttop:-20%;\\n\\theight:120%;\\n}\\n\\n.p-container .article .black-overlay:hover .title{\\n\\ttop:190px;\\n}\\n\\n.p-container .article .black-overlay .title{\\n\\t\\tfont-family:\'Montserrat\';\\n\\tfont-size:2.1em;\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tline-height:38px;\\n\\tposition:relative;\\n\\ttop:140px;\\n\\tpadding:0 40px;\\n\\ttransition: .2s all linear;\\n}\\n\\n@keyframes blackoverlay{\\n\\tfrom{\\n\\t\\ttop:50%;\\n\\t}\\n\\tto{\\n\\t\\ttop:-20%;\\n\\t}\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:43:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ad1cd351-756c-4ea9-9bea-6384d2dd1f69', '', '', '2019-03-18 07:43:26', '2019-03-18 07:43:26', '', 0, 'http://localhost/WorldSkills/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2019-03-18 07:43:26', '2019-03-18 07:43:26', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:40%;\n	height:60%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n/* 	transition:.4s all linear; */\n	animation: blackoverlay .5s linear; \n}\n\n.p-container .article .black-overlay:hover{\n		top:-20%;\n	height:120%;\n}\n\n.p-container .article .black-overlay:hover .title{\n	top:190px;\n}\n\n.p-container .article .black-overlay .title{\n		font-family:\'Montserrat\';\n	font-size:2.1em;\n	font-weight:bold;\n	color:white;\n	line-height:38px;\n	position:relative;\n	top:140px;\n	padding:0 40px;\n	transition: .2s all linear;\n}\n\n@keyframes blackoverlay{\n	from{\n		top:50%;\n	}\n	to{\n		top:-20%;\n	}\n}\n', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:43:26', '2019-03-18 07:43:26', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-03-18 07:49:11', '2019-03-18 07:49:11', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:40%;\\n\\theight:60%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n\\ttransition:.4s all linear;\\n\\t\\n}\\n\\n.p-container .article .black-overlay:hover{\\n\\t\\ttop:-20%;\\n\\theight:120%;\\n}\\n\\n.p-container .article .black-overlay:hover .title{\\n\\ttop:190px;\\n}\\n\\n.p-container .article .black-overlay .title{\\n\\t\\tfont-family:\'Montserrat\';\\n\\tfont-size:2.1em;\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tline-height:38px;\\n\\tposition:relative;\\n\\ttop:140px;\\n\\tpadding:0 40px;\\n\\ttransition: .2s all linear;\\n}\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 07:49:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f203f9b-8379-4d57-9d97-1aaee3996079', '', '', '2019-03-18 07:49:11', '2019-03-18 07:49:11', '', 0, 'http://localhost/WorldSkills/?p=69', 0, 'customize_changeset', '', 0),
(70, 1, '2019-03-18 07:49:11', '2019-03-18 07:49:11', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:40%;\n	height:60%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n	transition:.4s all linear;\n	\n}\n\n.p-container .article .black-overlay:hover{\n		top:-20%;\n	height:120%;\n}\n\n.p-container .article .black-overlay:hover .title{\n	top:190px;\n}\n\n.p-container .article .black-overlay .title{\n		font-family:\'Montserrat\';\n	font-size:2.1em;\n	font-weight:bold;\n	color:white;\n	line-height:38px;\n	position:relative;\n	top:140px;\n	padding:0 40px;\n	transition: .2s all linear;\n}\n\n', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 07:49:11', '2019-03-18 07:49:11', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-03-18 08:56:44', '2019-03-18 08:56:44', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:40%;\\n\\theight:60%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n\\ttransition:.4s all linear;\\n\\t\\n}\\n\\n.p-container .article:hover .black-overlay{\\n\\t\\ttop:-20%;\\n\\theight:120%;\\n}\\n\\n.p-container .article .black-overlay:hover .title{\\n\\ttop:230px;\\n}\\n\\n.p-container .article .black-overlay .title{\\n\\t\\tfont-family:\'Montserrat\';\\n\\tfont-size:2.3em;\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tline-height:40px;\\n\\tposition:relative;\\n\\ttop:140px;\\n\\tpadding:0 40px;\\n\\ttransition: .2s all linear;\\n}\\n\\n.p-container .article .black-overlay .description{\\n\\tfont-family:\'Montserrat\';\\n\\tfont-size:1.1em;\\n\\tfont-weight:300;\\n\\tcolor:white;\\n\\tpadding:0px 52px;\\n\\tposition:relative;\\n\\ttop:240px;\\n\\tline-height:24px;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 08:56:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f1d9cd18-44eb-436f-bccb-5b74df40ccd4', '', '', '2019-03-18 08:56:44', '2019-03-18 08:56:44', '', 0, 'http://localhost/WorldSkills/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2019-03-18 08:56:44', '2019-03-18 08:56:44', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:40%;\n	height:60%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n	transition:.4s all linear;\n	\n}\n\n.p-container .article:hover .black-overlay{\n		top:-20%;\n	height:120%;\n}\n\n.p-container .article .black-overlay:hover .title{\n	top:230px;\n}\n\n.p-container .article .black-overlay .title{\n		font-family:\'Montserrat\';\n	font-size:2.3em;\n	font-weight:bold;\n	color:white;\n	line-height:40px;\n	position:relative;\n	top:140px;\n	padding:0 40px;\n	transition: .2s all linear;\n}\n\n.p-container .article .black-overlay .description{\n	font-family:\'Montserrat\';\n	font-size:1.1em;\n	font-weight:300;\n	color:white;\n	padding:0px 52px;\n	position:relative;\n	top:240px;\n	line-height:24px;\n}\n', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 08:56:44', '2019-03-18 08:56:44', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-03-18 09:04:11', '2019-03-18 09:04:11', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \".p-container{\\n\\twidth:83%;\\n\\tmargin:auto;\\n}\\n.p-container .p-row{\\n\\twidth:100%;\\n\\tdisplay:flex;\\n\\tflex-wrap:wrap;\\n}\\n\\n.p-container article img{\\n\\t\\twidth:100%;\\n}\\n\\n.p-container .article{\\n\\tposition:relative;\\n\\twidth:700px;\\n\\theight:469px;\\n\\toverflow:hidden;\\n\\tflex:1 1 0;\\n\\ttext-align:center;\\n\\tmargin:27px;\\n}\\n\\n.p-container .article .black-overlay{\\n\\tposition:absolute;\\n\\ttop:40%;\\n\\theight:60%;\\n\\twidth:100%;\\n\\tbackground:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\\n\\ttransition:.4s all linear;\\n\\t\\n}\\n\\n.p-container .article:hover .black-overlay{\\n\\t\\ttop:-20%;\\n\\theight:120%;\\n}\\n\\n.p-container .article:hover .black-overlay .title{\\n\\ttop:230px;\\n}\\n\\n.p-container .article .black-overlay .title{\\n\\t\\tfont-family:\'Montserrat\';\\n\\tfont-size:2.3em;\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tline-height:40px;\\n\\tposition:relative;\\n\\ttop:140px;\\n\\tpadding:0 40px;\\n\\ttransition: .2s all linear;\\n\\theight:120px;\\n\\toverflow:hidden;\\n}\\n\\n.p-container .article .black-overlay .description{\\n\\tfont-family:\'Montserrat\';\\n\\tfont-size:1.1em;\\n\\tfont-weight:300;\\n\\tcolor:white;\\n\\tpadding:0px 52px;\\n\\tposition:relative;\\n\\ttop:240px;\\n\\tline-height:24px;\\n\\theight:96px;\\n\\toverflow:hidden;\\n}\\n\\n.p-container .article .black-overlay .text-right{\\n\\tfont-family:\'Montserrat\';\\n\\tfont-size:1.1em;\\n\\tfont-weight:300;\\n}\\n\\n.p-container .article .black-overlay .text-right a{\\n\\tfont-weight:bold;\\n\\tcolor:white;\\n\\tposition:relative;\\n\\ttop:300px;\\n\\tleft:180px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-18 09:04:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '504492ed-83b9-492e-b372-4dd5411e4126', '', '', '2019-03-18 09:04:11', '2019-03-18 09:04:11', '', 0, 'http://localhost/WorldSkills/?p=73', 0, 'customize_changeset', '', 0),
(74, 1, '2019-03-18 09:04:11', '2019-03-18 09:04:11', '.p-container{\n	width:83%;\n	margin:auto;\n}\n.p-container .p-row{\n	width:100%;\n	display:flex;\n	flex-wrap:wrap;\n}\n\n.p-container article img{\n		width:100%;\n}\n\n.p-container .article{\n	position:relative;\n	width:700px;\n	height:469px;\n	overflow:hidden;\n	flex:1 1 0;\n	text-align:center;\n	margin:27px;\n}\n\n.p-container .article .black-overlay{\n	position:absolute;\n	top:40%;\n	height:60%;\n	width:100%;\n	background:linear-gradient(to bottom,rgba(0,0,0,0),rgba(0,0,0,.9));\n	transition:.4s all linear;\n	\n}\n\n.p-container .article:hover .black-overlay{\n		top:-20%;\n	height:120%;\n}\n\n.p-container .article:hover .black-overlay .title{\n	top:230px;\n}\n\n.p-container .article .black-overlay .title{\n		font-family:\'Montserrat\';\n	font-size:2.3em;\n	font-weight:bold;\n	color:white;\n	line-height:40px;\n	position:relative;\n	top:140px;\n	padding:0 40px;\n	transition: .2s all linear;\n	height:120px;\n	overflow:hidden;\n}\n\n.p-container .article .black-overlay .description{\n	font-family:\'Montserrat\';\n	font-size:1.1em;\n	font-weight:300;\n	color:white;\n	padding:0px 52px;\n	position:relative;\n	top:240px;\n	line-height:24px;\n	height:96px;\n	overflow:hidden;\n}\n\n.p-container .article .black-overlay .text-right{\n	font-family:\'Montserrat\';\n	font-size:1.1em;\n	font-weight:300;\n}\n\n.p-container .article .black-overlay .text-right a{\n	font-weight:bold;\n	color:white;\n	position:relative;\n	top:300px;\n	left:180px;\n}', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-18 09:04:11', '2019-03-18 09:04:11', '', 51, 'http://localhost/WorldSkills/2019/03/18/51-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2019-03-18 09:16:23', '2019-03-18 09:16:23', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'CUTE BOY FROM ANTIPOLO CITY JOIN THE HAIRDRESSING', '', 'publish', 'open', 'open', '', 'cute-boy-from-antipolo-join-the-hairdressing-in-worldskill', '', '', '2019-03-18 09:18:56', '2019-03-18 09:18:56', '', 0, 'http://localhost/WorldSkills/?p=75', 0, 'post', '', 0),
(76, 1, '2019-03-18 09:15:34', '2019-03-18 09:15:34', '', 'JL', '', 'inherit', 'open', 'closed', '', 'jl', '', '', '2019-03-18 09:15:34', '2019-03-18 09:15:34', '', 75, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/JL.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-03-18 09:16:23', '2019-03-18 09:16:23', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'Cute boy from Antipolo join the Hairdressing in WorldSkill', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-03-18 09:16:23', '2019-03-18 09:16:23', '', 75, 'http://localhost/WorldSkills/2019/03/18/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2019-03-18 09:17:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-18 09:17:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=78', 0, 'post', '', 0),
(79, 1, '2019-03-18 09:17:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-18 09:17:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=79', 0, 'post', '', 0),
(80, 1, '2019-03-18 09:18:11', '2019-03-18 09:18:11', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'CUTE BOY FROM Antipolo CITY JOIN THE HAIRDRESSING', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-03-18 09:18:11', '2019-03-18 09:18:11', '', 75, 'http://localhost/WorldSkills/2019/03/18/75-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-03-18 09:18:56', '2019-03-18 09:18:56', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'CUTE BOY FROM ANTIPOLO CITY JOIN THE HAIRDRESSING', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-03-18 09:18:56', '2019-03-18 09:18:56', '', 75, 'http://localhost/WorldSkills/2019/03/18/75-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-03-18 09:21:20', '2019-03-18 09:21:20', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'COOKING FROM DAVAO CITY JOIN THAILAND', '', 'publish', 'open', 'open', '', 'cooking-from-davao-city-join-thailand', '', '', '2019-03-18 09:21:20', '2019-03-18 09:21:20', '', 0, 'http://localhost/WorldSkills/?p=82', 0, 'post', '', 0),
(83, 1, '2019-03-18 09:20:47', '2019-03-18 09:20:47', '', 'CharlesI', '', 'inherit', 'open', 'closed', '', 'charlesi', '', '', '2019-03-18 09:20:47', '2019-03-18 09:20:47', '', 82, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/CharlesI.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2019-03-18 09:21:20', '2019-03-18 09:21:20', '<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Officiis, enim? Modi incidunt obcaecati nemo optio? Quis quae numquam possimus, harum, voluptate quod optio nisi illum doloribus, facere sit commodi facilis!</div>\r\n</div>', 'COOKING FROM DAVAO CITY JOIN THAILAND', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-03-18 09:21:20', '2019-03-18 09:21:20', '', 82, 'http://localhost/WorldSkills/2019/03/18/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-03-19 06:07:35', '2019-03-19 06:07:35', '{\n    \"custom_css[blankslate]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-03-19 06:07:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '12552733-0059-43f2-abcd-5f611b4fe6bc', '', '', '2019-03-19 06:07:35', '2019-03-19 06:07:35', '', 0, 'http://localhost/WorldSkills/2019/03/19/12552733-0059-43f2-abcd-5f611b4fe6bc/', 0, 'customize_changeset', '', 0),
(86, 1, '2019-03-19 06:07:35', '2019-03-19 06:07:35', '', 'blankslate', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-03-19 06:07:35', '2019-03-19 06:07:35', '', 51, 'http://localhost/WorldSkills/2019/03/19/51-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-03-21 01:48:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-21 01:48:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/WorldSkills/?p=87', 0, 'post', '', 0),
(88, 1, '2019-03-21 01:54:00', '2019-03-21 01:54:00', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis expedita minus suscipit nisi delectus, cupiditate eius culpa, consequuntur ea odio quia esse sint explicabo, magnam numquam saepe ad corrupti quaerat.</div>\r\n</div>', 'THAILAND EXCURSION WITH INDONESIA', '', 'publish', 'open', 'open', '', 'thailand-excursion-with-indonesia', '', '', '2019-03-21 01:54:00', '2019-03-21 01:54:00', '', 0, 'http://localhost/WorldSkills/?p=88', 0, 'post', '', 0),
(89, 1, '2019-03-21 01:52:30', '2019-03-21 01:52:30', '', 'Post 4', '', 'inherit', 'open', 'closed', '', 'post-4', '', '', '2019-03-21 01:52:30', '2019-03-21 01:52:30', '', 88, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Post-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-03-21 01:54:00', '2019-03-21 01:54:00', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis expedita minus suscipit nisi delectus, cupiditate eius culpa, consequuntur ea odio quia esse sint explicabo, magnam numquam saepe ad corrupti quaerat.</div>\r\n</div>', 'THAILAND EXCURSION WITH INDONESIA', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2019-03-21 01:54:00', '2019-03-21 01:54:00', '', 88, 'http://localhost/WorldSkills/2019/03/21/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-03-21 01:58:18', '2019-03-21 01:58:18', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis expedita minus suscipit nisi delectus, cupiditate eius culpa, consequuntur ea odio quia esse sint explicabo, magnam numquam saepe ad corrupti quaerat.</div>\r\n</div>', 'PATRICK NEIL NOCEJA GOT MEDALLION OF EXCELLENCE', '', 'publish', 'open', 'open', '', 'patrick-neil-e-noceja-got-medallion-of-excellence', '', '', '2019-03-21 01:58:35', '2019-03-21 01:58:35', '', 0, 'http://localhost/WorldSkills/?p=91', 0, 'post', '', 0),
(92, 1, '2019-03-21 01:58:14', '2019-03-21 01:58:14', '', 'Patrick', '', 'inherit', 'open', 'closed', '', 'patrick', '', '', '2019-03-21 01:58:14', '2019-03-21 01:58:14', '', 91, 'http://localhost/WorldSkills/wp-content/uploads/2019/03/Patrick.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2019-03-21 01:58:18', '2019-03-21 01:58:18', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis expedita minus suscipit nisi delectus, cupiditate eius culpa, consequuntur ea odio quia esse sint explicabo, magnam numquam saepe ad corrupti quaerat.</div>\r\n</div>', 'PATRICK NEIL E NOCEJA GOT MEDALLION OF EXCELLENCE', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-03-21 01:58:18', '2019-03-21 01:58:18', '', 91, 'http://localhost/WorldSkills/2019/03/21/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-03-21 01:58:35', '2019-03-21 01:58:35', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis expedita minus suscipit nisi delectus, cupiditate eius culpa, consequuntur ea odio quia esse sint explicabo, magnam numquam saepe ad corrupti quaerat.</div>\r\n</div>', 'PATRICK NEIL NOCEJA GOT MEDALLION OF EXCELLENCE', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-03-21 01:58:35', '2019-03-21 01:58:35', '', 91, 'http://localhost/WorldSkills/2019/03/21/91-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(44, 1, 0),
(47, 1, 0),
(75, 1, 0),
(82, 1, 0),
(88, 1, 0),
(91, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
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
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '87'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1552890639'),
(21, 1, 'session_tokens', 'a:47:{s:64:\"522cda5ad9c82ee75af44283b537f71263756c713d292dd8b9f7ce7c42654949\";a:4:{s:10:\"expiration\";i:1553242562;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069762;}s:64:\"29b7b9af6921f810677c8b4526e6473e2ae1bdad12fa6899b0cb204ec92db6c5\";a:4:{s:10:\"expiration\";i:1553242564;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069764;}s:64:\"55bac6cc5077613260e71e0243160c86e9858e467cfbff4edee0d064807d4eee\";a:4:{s:10:\"expiration\";i:1553242569;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069769;}s:64:\"9b26e01f1917d5a18c6359f1b498d4cf5b2b9786160be8f6b1227598a96e04d9\";a:4:{s:10:\"expiration\";i:1553242576;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069776;}s:64:\"3e68dca4b2e3b1149439bcf070b76d2faadfb024aefe72e0256ba8b1aea4f40c\";a:4:{s:10:\"expiration\";i:1553242579;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069779;}s:64:\"3ef97cb648c4b7f1f3c0d7b0a9599755da1204c88ceac95b3a5653c3fea75bd1\";a:4:{s:10:\"expiration\";i:1553242591;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069791;}s:64:\"814106db226e8b2bcce63dff78ee5252c9c3cbe061f853b7b896d9c09063f4e1\";a:4:{s:10:\"expiration\";i:1553242601;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069801;}s:64:\"82601dfc463c4a690c336dc2518233e96695deebf98a00509a74a0a1d84189c8\";a:4:{s:10:\"expiration\";i:1553242607;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069807;}s:64:\"57e56a8005423d6221bda1846f52e5cdce37198e94fa138c0ffc84c067b79267\";a:4:{s:10:\"expiration\";i:1553242634;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069834;}s:64:\"20fab2fe978b3cb7d7e08eac694c8fe875d9eedb8d6d447621c66fef3fe0b42c\";a:4:{s:10:\"expiration\";i:1553242642;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069842;}s:64:\"afafb0c5cd4660e5f8eeaee639af290b583fa5de0399011e28949595bd30994c\";a:4:{s:10:\"expiration\";i:1553242646;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069846;}s:64:\"8c05eecf60948df99a9ee9449b279eef64a877a0d8ececd3176ae250eaab2a27\";a:4:{s:10:\"expiration\";i:1553242648;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069848;}s:64:\"d1ef6d5c7e56844e8966048f967a54744f90558b03dd6b731c8f9a4a87bf4a35\";a:4:{s:10:\"expiration\";i:1553242653;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069853;}s:64:\"ffe8a8836acafdbb1b1731dde9a62ddab70051b980c847fb170a40f531a57b74\";a:4:{s:10:\"expiration\";i:1553242655;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069855;}s:64:\"3705e49e77b65c4e5fadc2129f4afd5e83a92fbf4d6137e5540cb994d2b0fce8\";a:4:{s:10:\"expiration\";i:1553242709;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069909;}s:64:\"383c9aa5b46c346644995052269107dcbc0919ab2fb9e54a5fa764205bd89015\";a:4:{s:10:\"expiration\";i:1553242771;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069971;}s:64:\"3bef6e305c2a304db79e7701b71c4ad2a690b3cf3b655da3895f921ff279cef9\";a:4:{s:10:\"expiration\";i:1553242775;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553069975;}s:64:\"4c64e16002936c9b852f0bcacca0ca2d9fc69b17b50b850588372306863fa450\";a:4:{s:10:\"expiration\";i:1553242825;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070025;}s:64:\"7b8880b598df04192a556c71d8c2a08db234dc1677d326f8473ae022e7a84849\";a:4:{s:10:\"expiration\";i:1553242885;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070085;}s:64:\"52098657bc029e41fc563198a3e3521847664c55d372db0f5c55ea945cb7b0db\";a:4:{s:10:\"expiration\";i:1553242996;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070196;}s:64:\"36e73f16a8b5c0361b086a3d017308e907a36622b035e0a962e621b50ea323f0\";a:4:{s:10:\"expiration\";i:1553243022;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070222;}s:64:\"c978f0a21034ab152b71a92d0819044948c0e35c3ead3b7056bec473f6cd38a8\";a:4:{s:10:\"expiration\";i:1554279829;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070229;}s:64:\"744015bffc27c65448c701e9c217061267160c7635f034aa9c9f7c6540589659\";a:4:{s:10:\"expiration\";i:1553243032;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070232;}s:64:\"5fea0e36ddf42f3d60f6fbce56b0008647a0e29aa3afa3c9643c6ec324438c06\";a:4:{s:10:\"expiration\";i:1553243035;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070235;}s:64:\"3ea672a9c908b07e5210a0b9da9009bef0220b80eceb9cf26d99dfe9223ab3bc\";a:4:{s:10:\"expiration\";i:1553243359;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070559;}s:64:\"08ee31f508fad72e8a4c4ffa367f23e1067ffbdae9e787cc47c6cad3dbe20741\";a:4:{s:10:\"expiration\";i:1553243380;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070580;}s:64:\"96252124b01064fa6f59e1fb157b985a46e7a06c30481c4a1f9e4eee03fc6dfe\";a:4:{s:10:\"expiration\";i:1553243399;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070599;}s:64:\"bd09399da73e5b4a5fe5f7a612e8f279769897d4773a174dcfb0b9284904ff96\";a:4:{s:10:\"expiration\";i:1553243402;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070602;}s:64:\"c50f8c3f08e9e7a3f96c4a787b699d92df4ec59348fa5bd6b6b3952742cc91a5\";a:4:{s:10:\"expiration\";i:1553243506;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553070706;}s:64:\"c85bd2ae82612486846d4835180509b3a5ce21074935f92274f025796ab72679\";a:4:{s:10:\"expiration\";i:1553305500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553132700;}s:64:\"99fe47746cd5ea13e44b1845c913324a784cb9729aeadcba5ba35e7d6171d44f\";a:4:{s:10:\"expiration\";i:1553305627;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553132827;}s:64:\"edcd2c1e53ee70e2a2a9211e251000affab7387d48d9f07b91577fd42fcebee3\";a:4:{s:10:\"expiration\";i:1553392135;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219335;}s:64:\"f165cee9e3a08d4b9a238be88ff169c30a7afec1a48540339cbaeaa57f536540\";a:4:{s:10:\"expiration\";i:1553392137;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219337;}s:64:\"abe9c48d7b29c775d70a387782fe0ab0e64da49ac5412486e72392a7c2dcfbde\";a:4:{s:10:\"expiration\";i:1553392144;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219344;}s:64:\"1bb11f57fed1fb26fa06fd60b8de811895a8700d585134e91071f2922727f643\";a:4:{s:10:\"expiration\";i:1553392146;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219346;}s:64:\"f846849007228f3a6657eff3c492e78b2c84c4b66d836e21b8418040d9315295\";a:4:{s:10:\"expiration\";i:1553392147;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219347;}s:64:\"7be44cdbd80e6682a90ba392992c27b229931e1bece170ca09edc41af2577fb1\";a:4:{s:10:\"expiration\";i:1553392149;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219349;}s:64:\"616f323bd82d7c30b30c2e0e27fc57e8bcf48f473e1fae7c5c3766e716da1c2a\";a:4:{s:10:\"expiration\";i:1553392151;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219351;}s:64:\"ed391015190004f6b4a8b283d99c138db300e7711b7358ce547f9103c131ec9c\";a:4:{s:10:\"expiration\";i:1553392160;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553219360;}s:64:\"4da74a33007a52b32eeb9ac9ced0cae2a3ec0a3d0774ee06c6f053b558cffd15\";a:4:{s:10:\"expiration\";i:1553394902;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553222102;}s:64:\"decbf4f6c598ff06457a28267d9653575caf1f34e8dd7629ed3db0f23223f184\";a:4:{s:10:\"expiration\";i:1553394913;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553222113;}s:64:\"a890b2b9afcb7ec772fa93cbf27acda75dc87188b106446f4b19579787fc103b\";a:4:{s:10:\"expiration\";i:1553397979;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553225179;}s:64:\"d83edf31382d6b32e1c50e619379ae3d4571c2190840685131f302a07310989f\";a:4:{s:10:\"expiration\";i:1553400378;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553227578;}s:64:\"de5b8aa689843d8262e7f14ee37bea74a591ad5e2ee47affcced2e890ca9002c\";a:4:{s:10:\"expiration\";i:1553405751;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553232951;}s:64:\"305343fda8c59bedc554c27b0fb4b6c1b2f8817452b94a49776e4d6a9a1f18a7\";a:4:{s:10:\"expiration\";i:1553405762;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553232962;}s:64:\"63c207e77230dc093a70d3baf264e2ef71ee28680b0ff9fd08a59651478467b3\";a:4:{s:10:\"expiration\";i:1553405878;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553233078;}s:64:\"e9118d72ef066c2998d2764af7b6b8b292bcc831809871465966e56a355e02ac\";a:4:{s:10:\"expiration\";i:1553406000;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:67.0) Gecko/20100101 Firefox/67.0\";s:5:\"login\";i:1553233200;}}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNsnXrI4WZdHLU17QjLbh2vOSJldJz1', 'admin', 'nocejapatrick@gmail.com', '', '2019-03-12 07:28:03', '', 0, 'admin');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
