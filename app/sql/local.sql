-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-03-30 17:24:47','2020-03-30 17:24:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10000','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10000','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Amazing University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','The best university in the world.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','jimin.stella@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:111:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','46','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1601141087','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:5:{i:1586319889;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1586323489;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586366689;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586367257;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','_GqlAA_Ome&W7TAo.42Rr*;l3+}Agf?zJa1}(gE 2g70y,T8=nJwY{>~6z;GmNpb','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','_5MK4h uQ/_MK^IYu[gup:Z[.mtoG]K_}Oben?&BL`=9-DA[(E,~VwDD_O}/K;=r','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1586317334;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (117,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585593271;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (118,'recovery_keys','a:1:{s:22:\"TQNPcu4DoCZ7DcuO1Q0IWz\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B5QKn359ioX2P3CwFURIumtv1XPlun.\";s:10:\"created_at\";i:1586230910;}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1586317335;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (146,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (150,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (151,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationOne\";i:4;s:17:\"footerLocationTwo\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (152,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (155,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (156,'new_admin_email','jimin.stella@gmail.com','yes');
INSERT INTO `wp_options` VALUES (224,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (250,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (297,'_site_transient_timeout_browser_16c70872199c554dad8b417b7ce8f355','1586832687','no');
INSERT INTO `wp_options` VALUES (298,'_site_transient_browser_16c70872199c554dad8b417b7ce8f355','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (299,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1586832687','no');
INSERT INTO `wp_options` VALUES (300,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (314,'recovery_mode_email_last_sent','1586230910','yes');
INSERT INTO `wp_options` VALUES (334,'_transient_timeout_plugin_slugs','1586403802','no');
INSERT INTO `wp_options` VALUES (335,'_transient_plugin_slugs','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}','no');
INSERT INTO `wp_options` VALUES (336,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1586328102','no');
INSERT INTO `wp_options` VALUES (337,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4675;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4009;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2663;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2547;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1958;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1802;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1783;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1482;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1472;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1466;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1446;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1418;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1400;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1301;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1181;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1179;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1120;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1102;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1087;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:985;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:873;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:869;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:865;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:851;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:785;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:765;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:765;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:755;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:745;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:743;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:715;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:705;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:705;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:697;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:680;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:649;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:643;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:639;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:633;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:625;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:622;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:583;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:579;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:570;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:570;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:560;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:549;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:545;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:543;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:534;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:532;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:532;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:528;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:520;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:510;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:503;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:496;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:495;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:488;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:487;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:485;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:475;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:466;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:465;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:464;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:433;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:429;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:427;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:425;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:422;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:421;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:421;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:420;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:409;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:404;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:396;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:394;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:393;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:390;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:380;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:372;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:370;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:367;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:357;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:354;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:353;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:341;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:339;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:338;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:337;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:334;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:333;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:332;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:329;}}','no');
INSERT INTO `wp_options` VALUES (339,'_site_transient_timeout_theme_roots','1586319134','no');
INSERT INTO `wp_options` VALUES (340,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (341,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1586317401;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.9\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (342,'acf_version','5.8.9','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (4,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_lock','1586289558:1');
INSERT INTO `wp_postmeta` VALUES (8,8,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (9,8,'_edit_lock','1585790548:1');
INSERT INTO `wp_postmeta` VALUES (10,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (11,10,'_edit_lock','1585859123:1');
INSERT INTO `wp_postmeta` VALUES (12,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (13,12,'_edit_lock','1585790587:1');
INSERT INTO `wp_postmeta` VALUES (14,3,'_edit_lock','1585782090:1');
INSERT INTO `wp_postmeta` VALUES (15,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (16,14,'_edit_lock','1585791732:1');
INSERT INTO `wp_postmeta` VALUES (17,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (18,16,'_edit_lock','1585853507:1');
INSERT INTO `wp_postmeta` VALUES (19,21,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (20,21,'_edit_lock','1585786577:1');
INSERT INTO `wp_postmeta` VALUES (21,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (22,3,'_wp_trash_meta_time','1585786717');
INSERT INTO `wp_postmeta` VALUES (23,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (24,24,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_url','http://localhost:10000/');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (33,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (42,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,26,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,27,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (69,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (78,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (87,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,31,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (90,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_orphaned','1585853653');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,33,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (186,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (187,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (188,42,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (189,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (190,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (191,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (192,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (193,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (195,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (196,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (197,43,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (198,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (199,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (200,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (201,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (202,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (204,44,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (205,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (206,44,'_menu_item_object_id','44');
INSERT INTO `wp_postmeta` VALUES (207,44,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (208,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (209,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (210,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (211,44,'_menu_item_url','https://google.ca');
INSERT INTO `wp_postmeta` VALUES (213,2,'_edit_lock','1585955201:1');
INSERT INTO `wp_postmeta` VALUES (214,2,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (215,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (216,46,'_edit_lock','1585859174:1');
INSERT INTO `wp_postmeta` VALUES (217,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,48,'_edit_lock','1586287765:1');
INSERT INTO `wp_postmeta` VALUES (229,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (230,53,'_edit_lock','1586229633:1');
INSERT INTO `wp_postmeta` VALUES (231,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (232,54,'_edit_lock','1586317806:1');
INSERT INTO `wp_postmeta` VALUES (233,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (234,55,'_edit_lock','1586317649:1');
INSERT INTO `wp_postmeta` VALUES (245,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (246,62,'_edit_lock','1586317610:1');
INSERT INTO `wp_postmeta` VALUES (247,55,'event_date','20200501');
INSERT INTO `wp_postmeta` VALUES (248,55,'_event_date','field_5e8d49482036b');
INSERT INTO `wp_postmeta` VALUES (249,54,'event_date','20201118');
INSERT INTO `wp_postmeta` VALUES (250,54,'_event_date','field_5e8d49482036b');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-03-30 17:24:47','2020-03-30 17:24:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-03-30 17:24:47','2020-03-30 17:24:47','',0,'http://localhost:10000/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-03-30 17:24:47','2020-03-30 17:24:47','','Testing 123','','publish','closed','open','','sample-page','','','2020-04-03 22:17:07','2020-04-03 22:17:07','',0,'http://localhost:10000/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-03-30 17:24:47','2020-03-30 17:24:47','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10000.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-04-02 00:18:37','2020-04-02 00:18:37','',0,'http://localhost:10000/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-03-30 23:04:00','2020-03-30 23:04:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut etiam sit amet nisl purus in. Tellus molestie nunc non blandit massa. Sit amet risus nullam eget. Arcu ac tortor dignissim convallis aenean et tortor. Vestibulum sed arcu non odio euismod. Facilisis gravida neque convallis a. Ac felis donec et odio pellentesque. Platea dictumst vestibulum rhoncus est. Est sit amet facilisis magna etiam tempor. Arcu odio ut sem nulla. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Orci nulla pellentesque dignissim enim sit amet.\r\n\r\nEgestas erat imperdiet sed euismod nisi porta lorem. Ultricies integer quis auctor elit sed. Euismod lacinia at quis risus sed. Viverra vitae congue eu consequat ac felis donec et. Molestie ac feugiat sed lectus vestibulum. Consequat interdum varius sit amet mattis vulputate. Volutpat sed cras ornare arcu dui. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Odio facilisis mauris sit amet massa vitae. Dui ut ornare lectus sit amet est placerat. Non sodales neque sodales ut etiam sit amet nisl. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. Et ultrices neque ornare aenean euismod elementum nisi. At quis risus sed vulputate odio ut enim blandit volutpat. Et tortor at risus viverra. Nisl vel pretium lectus quam id leo in. Pellentesque nec nam aliquam sem et tortor consequat. Senectus et netus et malesuada fames ac.\r\n\r\nId semper risus in hendrerit gravida rutrum. Lobortis feugiat vivamus at augue eget arcu dictum varius. Eget felis eget nunc lobortis mattis. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Id neque aliquam vestibulum morbi blandit cursus risus at ultrices. Porta nibh venenatis cras sed felis eget velit aliquet. Tellus mauris a diam maecenas sed enim ut sem viverra. Vulputate sapien nec sagittis aliquam malesuada bibendum. Facilisis sed odio morbi quis commodo odio aenean. Velit egestas dui id ornare arcu odio ut sem. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Tempus urna et pharetra pharetra massa massa ultricies. Sit amet consectetur adipiscing elit.\r\n\r\nLigula ullamcorper malesuada proin libero nunc consequat interdum. Mattis molestie a iaculis at erat pellentesque adipiscing. Cras sed felis eget velit. Augue ut lectus arcu bibendum at varius vel pharetra vel. Et netus et malesuada fames ac. Nisl purus in mollis nunc. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Nulla posuere sollicitudin aliquam ultrices. Tellus in hac habitasse platea. Vitae congue eu consequat ac. Cras sed felis eget velit aliquet. Elit duis tristique sollicitudin nibh sit amet.\r\n\r\nAmet nisl purus in mollis nunc sed. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit. Commodo ullamcorper a lacus vestibulum sed arcu non. Nisl rhoncus mattis rhoncus urna. Ultrices tincidunt arcu non sodales neque sodales ut etiam. Sit amet venenatis urna cursus eget nunc. Erat nam at lectus urna. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Ac auctor augue mauris augue neque gravida in fermentum. Et tortor consequat id porta nibh venenatis cras sed felis. Facilisi morbi tempus iaculis urna id volutpat. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Ornare quam viverra orci sagittis eu.\r\n\r\nEt netus et malesuada fames ac turpis egestas maecenas pharetra. Bibendum neque egestas congue quisque. Nunc mattis enim ut tellus. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Nibh tellus molestie nunc non blandit massa enim. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Feugiat in fermentum posuere urna nec tincidunt praesent semper feugiat. Elementum pulvinar etiam non quam. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Tortor at risus viverra adipiscing. Facilisi cras fermentum odio eu feugiat pretium. At quis risus sed vulputate odio ut. Ipsum nunc aliquet bibendum enim. Nullam ac tortor vitae purus. Lorem donec massa sapien faucibus et. Aenean et tortor at risus viverra adipiscing. Urna porttitor rhoncus dolor purus non enim praesent. Platea dictumst quisque sagittis purus sit amet. Amet purus gravida quis blandit turpis cursus.\r\n\r\nSit amet est placerat in. Enim eu turpis egestas pretium aenean pharetra. A cras semper auctor neque vitae tempus quam pellentesque. Erat nam at lectus urna duis convallis convallis tellus id. Orci eu lobortis elementum nibh tellus. Tellus elementum sagittis vitae et leo duis ut diam. Sed felis eget velit aliquet sagittis id consectetur purus ut. Orci eu lobortis elementum nibh tellus molestie nunc. In tellus integer feugiat scelerisque. Ac turpis egestas integer eget aliquet nibh. Nibh mauris cursus mattis molestie a iaculis at erat.\r\n\r\nId aliquet risus feugiat in ante metus dictum at. Fusce ut placerat orci nulla pellentesque dignissim enim. Quis varius quam quisque id diam vel quam elementum. Amet facilisis magna etiam tempor orci eu lobortis. Fermentum dui faucibus in ornare quam viverra orci sagittis. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta. Integer quis auctor elit sed vulputate mi sit amet. Amet consectetur adipiscing elit ut aliquam purus. Urna id volutpat lacus laoreet non curabitur gravida. Justo laoreet sit amet cursus sit amet dictum sit amet. Vitae et leo duis ut diam quam nulla porttitor massa. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Eget duis at tellus at urna condimentum mattis. Velit dignissim sodales ut eu sem integer vitae justo. Mi in nulla posuere sollicitudin aliquam. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Diam sollicitudin tempor id eu.\r\n\r\nVolutpat commodo sed egestas egestas. Velit ut tortor pretium viverra. Duis at consectetur lorem donec massa sapien faucibus. Cursus mattis molestie a iaculis at erat pellentesque. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Ac auctor augue mauris augue neque gravida in fermentum. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Ut placerat orci nulla pellentesque dignissim enim. Nulla aliquet enim tortor at auctor urna. Lacus viverra vitae congue eu consequat. Facilisi cras fermentum odio eu feugiat. Aliquam sem fringilla ut morbi tincidunt. Feugiat nibh sed pulvinar proin gravida. Risus sed vulputate odio ut enim blandit volutpat maecenas. Ipsum dolor sit amet consectetur. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Vestibulum morbi blandit cursus risus at. Ultrices eros in cursus turpis massa tincidunt dui ut. Aliquam nulla facilisi cras fermentum.\r\n\r\nSenectus et netus et malesuada. Turpis in eu mi bibendum neque egestas congue quisque egestas. Sodales ut etiam sit amet nisl purus in mollis nunc. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Consectetur adipiscing elit ut aliquam. Id diam maecenas ultricies mi. Nibh tellus molestie nunc non blandit. Aliquam vestibulum morbi blandit cursus risus. Felis eget nunc lobortis mattis. Sit amet consectetur adipiscing elit pellentesque habitant morbi.','second test post','','publish','open','open','','second-test-post','','','2020-04-07 19:58:53','2020-04-07 19:58:53','',0,'http://localhost:10000/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-03-30 23:03:55','2020-03-30 23:03:55','Ipsum l','second test post','','inherit','closed','closed','','6-revision-v1','','','2020-03-30 23:03:55','2020-03-30 23:03:55','',6,'http://localhost:10000/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-03-30 23:11:06','2020-03-30 23:11:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Test Page 123','','publish','closed','closed','','test-page-123','','','2020-03-30 23:11:06','2020-03-30 23:11:06','',0,'http://localhost:10000/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-03-30 23:11:06','2020-03-30 23:11:06','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Test Page 123','','inherit','closed','closed','','8-revision-v1','','','2020-03-30 23:11:06','2020-03-30 23:11:06','',8,'http://localhost:10000/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-04-01 19:31:33','2020-04-01 19:31:33','This is the about page content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','About Us','','publish','closed','closed','','about-us','','','2020-04-01 19:31:33','2020-04-01 19:31:33','',0,'http://localhost:10000/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-04-01 19:31:33','2020-04-01 19:31:33','This is the about page content Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','About Us','','inherit','closed','closed','','10-revision-v1','','','2020-04-01 19:31:33','2020-04-01 19:31:33','',10,'http://localhost:10000/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-04-01 19:32:05','2020-04-01 19:32:05','This is the privacy policy content. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>','Privacy Policy','','publish','closed','closed','','privacy-policy-2','','','2020-04-01 19:32:05','2020-04-01 19:32:05','',0,'http://localhost:10000/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-04-01 19:32:05','2020-04-01 19:32:05','This is the privacy policy content. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>','Privacy Policy','','inherit','closed','closed','','12-revision-v1','','','2020-04-01 19:32:05','2020-04-01 19:32:05','',12,'http://localhost:10000/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-04-01 23:02:15','2020-04-01 23:02:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Our History','','publish','closed','closed','','our-history','','','2020-04-02 01:44:31','2020-04-02 01:44:31','',10,'http://localhost:10000/?page_id=14',1,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-04-01 23:02:15','2020-04-01 23:02:15','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Our History','','inherit','closed','closed','','14-revision-v1','','','2020-04-01 23:02:15','2020-04-01 23:02:15','',14,'http://localhost:10000/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-04-01 23:02:28','2020-04-01 23:02:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Our Goals','','publish','closed','closed','','our-goals','','','2020-04-02 01:44:44','2020-04-02 01:44:44','',10,'http://localhost:10000/?page_id=16',2,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-04-01 23:02:28','2020-04-01 23:02:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Our Goals','','inherit','closed','closed','','16-revision-v1','','','2020-04-01 23:02:28','2020-04-01 23:02:28','',16,'http://localhost:10000/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-04-01 23:04:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-01 23:04:06','0000-00-00 00:00:00','',0,'http://localhost:10000/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-04-01 23:08:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-01 23:08:28','0000-00-00 00:00:00','',0,'http://localhost:10000/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-04-01 23:08:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-01 23:08:28','0000-00-00 00:00:00','',0,'http://localhost:10000/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-04-02 00:10:27','2020-04-02 00:10:27','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-04-02 00:10:27','2020-04-02 00:10:27','',12,'http://localhost:10000/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-04-02 00:10:27','2020-04-02 00:10:27','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Cookie Policy','','inherit','closed','closed','','21-revision-v1','','','2020-04-02 00:10:27','2020-04-02 00:10:27','',21,'http://localhost:10000/21-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-04-02 00:18:37','2020-04-02 00:18:37','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10000.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-04-02 00:18:37','2020-04-02 00:18:37','',3,'http://localhost:10000/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-04-02 18:54:13','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',10,'http://localhost:10000/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',10,'http://localhost:10000/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',12,'http://localhost:10000/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-04-02 18:54:13','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-04-02 18:54:13','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-04-02 18:54:58','2020-04-02 18:54:58',' ','','','publish','closed','closed','','33','','','2020-04-02 19:15:52','2020-04-02 19:15:52','',0,'http://localhost:10000/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-04-02 18:56:50','2020-04-02 18:56:50',' ','','','publish','closed','closed','','42','','','2020-04-02 19:05:18','2020-04-02 19:05:18','',0,'http://localhost:10000/?p=42',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-04-02 18:56:50','2020-04-02 18:56:50',' ','','','publish','closed','closed','','43','','','2020-04-02 19:05:18','2020-04-02 19:05:18','',0,'http://localhost:10000/?p=43',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-04-02 19:15:47','2020-04-02 19:15:47','','Google','','publish','closed','closed','','google','','','2020-04-02 19:15:52','2020-04-02 19:15:52','',0,'http://localhost:10000/?p=44',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-04-02 20:28:16','2020-04-02 20:28:16','','Home','','inherit','closed','closed','','2-revision-v1','','','2020-04-02 20:28:16','2020-04-02 20:28:16','',2,'http://localhost:10000/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-04-02 20:28:25','2020-04-02 20:28:25','','Blog','','publish','closed','closed','','blog','','','2020-04-02 20:28:25','2020-04-02 20:28:25','',0,'http://localhost:10000/?page_id=46',0,'page','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-04-02 20:28:25','2020-04-02 20:28:25','','Blog','','inherit','closed','closed','','46-revision-v1','','','2020-04-02 20:28:25','2020-04-02 20:28:25','',46,'http://localhost:10000/46-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-04-03 00:53:40','2020-04-03 00:53:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','We won a award!','Our school has won another award this year.','publish','open','open','','we-won-a-award','','','2020-04-07 19:31:44','2020-04-07 19:31:44','',0,'http://localhost:10000/?p=48',0,'post','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-04-03 00:53:40','2020-04-03 00:53:40','','We won a award!','','inherit','closed','closed','','48-revision-v1','','','2020-04-03 00:53:40','2020-04-03 00:53:40','',48,'http://localhost:10000/48-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-04-03 22:17:07','2020-04-03 22:17:07','','Testing 123','','inherit','closed','closed','','2-revision-v1','','','2020-04-03 22:17:07','2020-04-03 22:17:07','',2,'http://localhost:10000/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-04-03 23:09:17','2020-04-03 23:09:17','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','We won a award!','','inherit','closed','closed','','48-revision-v1','','','2020-04-03 23:09:17','2020-04-03 23:09:17','',48,'http://localhost:10000/48-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-04-07 02:51:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-04-07 02:51:27','0000-00-00 00:00:00','',0,'http://localhost:10000/?p=52',0,'post','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-04-07 03:22:52','2020-04-07 03:22:52','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Math Meetup','','publish','closed','closed','','math-meetup','','','2020-04-07 03:22:52','2020-04-07 03:22:52','',0,'http://localhost:10000/?post_type=event&#038;p=53',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-04-07 03:23:09','2020-04-07 03:23:09','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','The science of cats','','publish','closed','closed','','the-science-of-cats','','','2020-04-08 03:50:06','2020-04-08 03:50:06','',0,'http://localhost:10000/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-04-07 03:23:19','2020-04-07 03:23:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Poetry Day','Poetry day is amazing day.','publish','closed','closed','','poetry-day','','','2020-04-08 03:49:47','2020-04-08 03:49:47','',0,'http://localhost:10000/?post_type=event&#038;p=55',0,'event','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-04-07 03:44:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-07 03:44:27','0000-00-00 00:00:00','',0,'http://localhost:10000/?post_type=event&p=56',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-04-07 03:45:02','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-07 03:45:02','0000-00-00 00:00:00','',0,'http://localhost:10000/?post_type=event&p=57',0,'event','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-04-07 19:24:28','2020-04-07 19:24:28','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','We won a award!','Our school has won another award this year.','inherit','closed','closed','','48-revision-v1','','','2020-04-07 19:24:28','2020-04-07 19:24:28','',48,'http://localhost:10000/48-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-04-07 19:32:34','2020-04-07 19:32:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut etiam sit amet nisl purus in. Tellus molestie nunc non blandit massa. Sit amet risus nullam eget. Arcu ac tortor dignissim convallis aenean et tortor. Vestibulum sed arcu non odio euismod. Facilisis gravida neque convallis a. Ac felis donec et odio pellentesque. Platea dictumst vestibulum rhoncus est. Est sit amet facilisis magna etiam tempor. Arcu odio ut sem nulla. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Orci nulla pellentesque dignissim enim sit amet.\r\n\r\nEgestas erat imperdiet sed euismod nisi porta lorem. Ultricies integer quis auctor elit sed. Euismod lacinia at quis risus sed. Viverra vitae congue eu consequat ac felis donec et. Molestie ac feugiat sed lectus vestibulum. Consequat interdum varius sit amet mattis vulputate. Volutpat sed cras ornare arcu dui. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Odio facilisis mauris sit amet massa vitae. Dui ut ornare lectus sit amet est placerat. Non sodales neque sodales ut etiam sit amet nisl. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. Et ultrices neque ornare aenean euismod elementum nisi. At quis risus sed vulputate odio ut enim blandit volutpat. Et tortor at risus viverra. Nisl vel pretium lectus quam id leo in. Pellentesque nec nam aliquam sem et tortor consequat. Senectus et netus et malesuada fames ac.\r\n\r\nId semper risus in hendrerit gravida rutrum. Lobortis feugiat vivamus at augue eget arcu dictum varius. Eget felis eget nunc lobortis mattis. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Id neque aliquam vestibulum morbi blandit cursus risus at ultrices. Porta nibh venenatis cras sed felis eget velit aliquet. Tellus mauris a diam maecenas sed enim ut sem viverra. Vulputate sapien nec sagittis aliquam malesuada bibendum. Facilisis sed odio morbi quis commodo odio aenean. Velit egestas dui id ornare arcu odio ut sem. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Tempus urna et pharetra pharetra massa massa ultricies. Sit amet consectetur adipiscing elit.\r\n\r\nLigula ullamcorper malesuada proin libero nunc consequat interdum. Mattis molestie a iaculis at erat pellentesque adipiscing. Cras sed felis eget velit. Augue ut lectus arcu bibendum at varius vel pharetra vel. Et netus et malesuada fames ac. Nisl purus in mollis nunc. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Nulla posuere sollicitudin aliquam ultrices. Tellus in hac habitasse platea. Vitae congue eu consequat ac. Cras sed felis eget velit aliquet. Elit duis tristique sollicitudin nibh sit amet.\r\n\r\nAmet nisl purus in mollis nunc sed. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit. Commodo ullamcorper a lacus vestibulum sed arcu non. Nisl rhoncus mattis rhoncus urna. Ultrices tincidunt arcu non sodales neque sodales ut etiam. Sit amet venenatis urna cursus eget nunc. Erat nam at lectus urna. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Ac auctor augue mauris augue neque gravida in fermentum. Et tortor consequat id porta nibh venenatis cras sed felis. Facilisi morbi tempus iaculis urna id volutpat. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Ornare quam viverra orci sagittis eu.\r\n\r\nEt netus et malesuada fames ac turpis egestas maecenas pharetra. Bibendum neque egestas congue quisque. Nunc mattis enim ut tellus. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Nibh tellus molestie nunc non blandit massa enim. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Feugiat in fermentum posuere urna nec tincidunt praesent semper feugiat. Elementum pulvinar etiam non quam. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Tortor at risus viverra adipiscing. Facilisi cras fermentum odio eu feugiat pretium. At quis risus sed vulputate odio ut. Ipsum nunc aliquet bibendum enim. Nullam ac tortor vitae purus. Lorem donec massa sapien faucibus et. Aenean et tortor at risus viverra adipiscing. Urna porttitor rhoncus dolor purus non enim praesent. Platea dictumst quisque sagittis purus sit amet. Amet purus gravida quis blandit turpis cursus.\r\n\r\nSit amet est placerat in. Enim eu turpis egestas pretium aenean pharetra. A cras semper auctor neque vitae tempus quam pellentesque. Erat nam at lectus urna duis convallis convallis tellus id. Orci eu lobortis elementum nibh tellus. Tellus elementum sagittis vitae et leo duis ut diam. Sed felis eget velit aliquet sagittis id consectetur purus ut. Orci eu lobortis elementum nibh tellus molestie nunc. In tellus integer feugiat scelerisque. Ac turpis egestas integer eget aliquet nibh. Nibh mauris cursus mattis molestie a iaculis at erat.\r\n\r\nId aliquet risus feugiat in ante metus dictum at. Fusce ut placerat orci nulla pellentesque dignissim enim. Quis varius quam quisque id diam vel quam elementum. Amet facilisis magna etiam tempor orci eu lobortis. Fermentum dui faucibus in ornare quam viverra orci sagittis. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta. Integer quis auctor elit sed vulputate mi sit amet. Amet consectetur adipiscing elit ut aliquam purus. Urna id volutpat lacus laoreet non curabitur gravida. Justo laoreet sit amet cursus sit amet dictum sit amet. Vitae et leo duis ut diam quam nulla porttitor massa. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Eget duis at tellus at urna condimentum mattis. Velit dignissim sodales ut eu sem integer vitae justo. Mi in nulla posuere sollicitudin aliquam. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Diam sollicitudin tempor id eu.\r\n\r\nVolutpat commodo sed egestas egestas. Velit ut tortor pretium viverra. Duis at consectetur lorem donec massa sapien faucibus. Cursus mattis molestie a iaculis at erat pellentesque. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Ac auctor augue mauris augue neque gravida in fermentum. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Ut placerat orci nulla pellentesque dignissim enim. Nulla aliquet enim tortor at auctor urna. Lacus viverra vitae congue eu consequat. Facilisi cras fermentum odio eu feugiat. Aliquam sem fringilla ut morbi tincidunt. Feugiat nibh sed pulvinar proin gravida. Risus sed vulputate odio ut enim blandit volutpat maecenas. Ipsum dolor sit amet consectetur. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Vestibulum morbi blandit cursus risus at. Ultrices eros in cursus turpis massa tincidunt dui ut. Aliquam nulla facilisi cras fermentum.\r\n\r\nSenectus et netus et malesuada. Turpis in eu mi bibendum neque egestas congue quisque egestas. Sodales ut etiam sit amet nisl purus in mollis nunc. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Consectetur adipiscing elit ut aliquam. Id diam maecenas ultricies mi. Nibh tellus molestie nunc non blandit. Aliquam vestibulum morbi blandit cursus risus. Felis eget nunc lobortis mattis. Sit amet consectetur adipiscing elit pellentesque habitant morbi.','second test post','This is from excerpt! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut lectus arcu bibendum at varius vel pharetra. Ultricies integer quis auctor elit sed vulputate. Id neque aliquam vestibulum morbi blandit cursus risus. Non nisi est sit amet facilisis magna. Purus gravida quis blandit turpis cursus in hac. Est velit egestas dui id ornare arcu odio. Faucibus a pellentesque sit amet porttitor. Eget est lorem ipsum dolor sit amet consectetur adipiscing elit. Ac placerat vestibulum lectus mauris ultrices eros. Tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Eget est lorem ipsum dolor sit amet consectetur adipiscing. Pellentesque elit eget gravida cum. Faucibus scelerisque eleifend donec pretium vulputate sapien. Velit euismod in pellentesque massa placerat duis ultricies lacus sed.\r\n\r\nArcu ac tortor dignissim convallis aenean et tortor at risus. Cras ornare arcu dui vivamus arcu felis bibendum. Penatibus et magnis dis parturient montes nascetur. Nisl vel pretium lectus quam. Eget magna fermentum iaculis eu non diam. At volutpat diam ut venenatis tellus in. Sit amet nisl suscipit adipiscing. Justo donec enim diam vulputate ut pharetra sit amet. Adipiscing commodo elit at imperdiet dui accumsan. Lectus urna duis convallis convallis tellus id interdum. Amet tellus cras adipiscing enim eu turpis. Odio eu feugiat pretium nibh ipsum. Enim ut sem viverra aliquet. Vulputate odio ut enim blandit volutpat maecenas. Risus feugiat in ante metus dictum at. Cursus turpis massa tincidunt dui. At urna condimentum mattis pellentesque id. Senectus et netus et malesuada fames. Nibh ipsum consequat nisl vel pretium lectus.','inherit','closed','closed','','6-revision-v1','','','2020-04-07 19:32:34','2020-04-07 19:32:34','',6,'http://localhost:10000/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-04-07 19:58:53','2020-04-07 19:58:53','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut etiam sit amet nisl purus in. Tellus molestie nunc non blandit massa. Sit amet risus nullam eget. Arcu ac tortor dignissim convallis aenean et tortor. Vestibulum sed arcu non odio euismod. Facilisis gravida neque convallis a. Ac felis donec et odio pellentesque. Platea dictumst vestibulum rhoncus est. Est sit amet facilisis magna etiam tempor. Arcu odio ut sem nulla. Sit amet luctus venenatis lectus magna fringilla urna porttitor. Orci nulla pellentesque dignissim enim sit amet.\r\n\r\nEgestas erat imperdiet sed euismod nisi porta lorem. Ultricies integer quis auctor elit sed. Euismod lacinia at quis risus sed. Viverra vitae congue eu consequat ac felis donec et. Molestie ac feugiat sed lectus vestibulum. Consequat interdum varius sit amet mattis vulputate. Volutpat sed cras ornare arcu dui. Et ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Odio facilisis mauris sit amet massa vitae. Dui ut ornare lectus sit amet est placerat. Non sodales neque sodales ut etiam sit amet nisl. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. Et ultrices neque ornare aenean euismod elementum nisi. At quis risus sed vulputate odio ut enim blandit volutpat. Et tortor at risus viverra. Nisl vel pretium lectus quam id leo in. Pellentesque nec nam aliquam sem et tortor consequat. Senectus et netus et malesuada fames ac.\r\n\r\nId semper risus in hendrerit gravida rutrum. Lobortis feugiat vivamus at augue eget arcu dictum varius. Eget felis eget nunc lobortis mattis. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit. Id neque aliquam vestibulum morbi blandit cursus risus at ultrices. Porta nibh venenatis cras sed felis eget velit aliquet. Tellus mauris a diam maecenas sed enim ut sem viverra. Vulputate sapien nec sagittis aliquam malesuada bibendum. Facilisis sed odio morbi quis commodo odio aenean. Velit egestas dui id ornare arcu odio ut sem. Ligula ullamcorper malesuada proin libero nunc consequat interdum varius. Tempus urna et pharetra pharetra massa massa ultricies. Sit amet consectetur adipiscing elit.\r\n\r\nLigula ullamcorper malesuada proin libero nunc consequat interdum. Mattis molestie a iaculis at erat pellentesque adipiscing. Cras sed felis eget velit. Augue ut lectus arcu bibendum at varius vel pharetra vel. Et netus et malesuada fames ac. Nisl purus in mollis nunc. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Nulla posuere sollicitudin aliquam ultrices. Tellus in hac habitasse platea. Vitae congue eu consequat ac. Cras sed felis eget velit aliquet. Elit duis tristique sollicitudin nibh sit amet.\r\n\r\nAmet nisl purus in mollis nunc sed. Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit. Commodo ullamcorper a lacus vestibulum sed arcu non. Nisl rhoncus mattis rhoncus urna. Ultrices tincidunt arcu non sodales neque sodales ut etiam. Sit amet venenatis urna cursus eget nunc. Erat nam at lectus urna. Risus nec feugiat in fermentum posuere urna nec tincidunt praesent. Hac habitasse platea dictumst vestibulum rhoncus est pellentesque. Ac auctor augue mauris augue neque gravida in fermentum. Et tortor consequat id porta nibh venenatis cras sed felis. Facilisi morbi tempus iaculis urna id volutpat. Volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Ornare quam viverra orci sagittis eu.\r\n\r\nEt netus et malesuada fames ac turpis egestas maecenas pharetra. Bibendum neque egestas congue quisque. Nunc mattis enim ut tellus. Nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida. Nibh tellus molestie nunc non blandit massa enim. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Feugiat in fermentum posuere urna nec tincidunt praesent semper feugiat. Elementum pulvinar etiam non quam. Facilisis mauris sit amet massa vitae tortor condimentum lacinia quis. Tortor at risus viverra adipiscing. Facilisi cras fermentum odio eu feugiat pretium. At quis risus sed vulputate odio ut. Ipsum nunc aliquet bibendum enim. Nullam ac tortor vitae purus. Lorem donec massa sapien faucibus et. Aenean et tortor at risus viverra adipiscing. Urna porttitor rhoncus dolor purus non enim praesent. Platea dictumst quisque sagittis purus sit amet. Amet purus gravida quis blandit turpis cursus.\r\n\r\nSit amet est placerat in. Enim eu turpis egestas pretium aenean pharetra. A cras semper auctor neque vitae tempus quam pellentesque. Erat nam at lectus urna duis convallis convallis tellus id. Orci eu lobortis elementum nibh tellus. Tellus elementum sagittis vitae et leo duis ut diam. Sed felis eget velit aliquet sagittis id consectetur purus ut. Orci eu lobortis elementum nibh tellus molestie nunc. In tellus integer feugiat scelerisque. Ac turpis egestas integer eget aliquet nibh. Nibh mauris cursus mattis molestie a iaculis at erat.\r\n\r\nId aliquet risus feugiat in ante metus dictum at. Fusce ut placerat orci nulla pellentesque dignissim enim. Quis varius quam quisque id diam vel quam elementum. Amet facilisis magna etiam tempor orci eu lobortis. Fermentum dui faucibus in ornare quam viverra orci sagittis. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta. Integer quis auctor elit sed vulputate mi sit amet. Amet consectetur adipiscing elit ut aliquam purus. Urna id volutpat lacus laoreet non curabitur gravida. Justo laoreet sit amet cursus sit amet dictum sit amet. Vitae et leo duis ut diam quam nulla porttitor massa. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Eget duis at tellus at urna condimentum mattis. Velit dignissim sodales ut eu sem integer vitae justo. Mi in nulla posuere sollicitudin aliquam. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Diam sollicitudin tempor id eu.\r\n\r\nVolutpat commodo sed egestas egestas. Velit ut tortor pretium viverra. Duis at consectetur lorem donec massa sapien faucibus. Cursus mattis molestie a iaculis at erat pellentesque. Tortor pretium viverra suspendisse potenti nullam ac tortor vitae. Ac auctor augue mauris augue neque gravida in fermentum. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Ut placerat orci nulla pellentesque dignissim enim. Nulla aliquet enim tortor at auctor urna. Lacus viverra vitae congue eu consequat. Facilisi cras fermentum odio eu feugiat. Aliquam sem fringilla ut morbi tincidunt. Feugiat nibh sed pulvinar proin gravida. Risus sed vulputate odio ut enim blandit volutpat maecenas. Ipsum dolor sit amet consectetur. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Iaculis urna id volutpat lacus laoreet non curabitur gravida. Vestibulum morbi blandit cursus risus at. Ultrices eros in cursus turpis massa tincidunt dui ut. Aliquam nulla facilisi cras fermentum.\r\n\r\nSenectus et netus et malesuada. Turpis in eu mi bibendum neque egestas congue quisque egestas. Sodales ut etiam sit amet nisl purus in mollis nunc. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Consectetur adipiscing elit ut aliquam. Id diam maecenas ultricies mi. Nibh tellus molestie nunc non blandit. Aliquam vestibulum morbi blandit cursus risus. Felis eget nunc lobortis mattis. Sit amet consectetur adipiscing elit pellentesque habitant morbi.','second test post','','inherit','closed','closed','','6-revision-v1','','','2020-04-07 19:58:53','2020-04-07 19:58:53','',6,'http://localhost:10000/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-04-08 03:43:46','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-08 03:43:46','0000-00-00 00:00:00','',0,'http://localhost:10000/?post_type=acf-field-group&p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-04-08 03:49:09','2020-04-08 03:49:09','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5e8d492d5dd2f','','','2020-04-08 03:49:09','2020-04-08 03:49:09','',0,'http://localhost:10000/?post_type=acf-field-group&#038;p=62',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-04-08 03:49:09','2020-04-08 03:49:09','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5e8d49482036b','','','2020-04-08 03:49:09','2020-04-08 03:49:09','',62,'http://localhost:10000/?post_type=acf-field&p=63',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (33,2,0);
INSERT INTO `wp_term_relationships` VALUES (42,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,3,0);
INSERT INTO `wp_term_relationships` VALUES (44,2,0);
INSERT INTO `wp_term_relationships` VALUES (48,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','this is for category description',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Jimin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Testing Hello world 123');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"80310cc069ea6995d655198df9e62e957eeb7fac626a5f666194bc65b6d813cc\";a:4:{s:10:\"expiration\";i:1586400686;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1586227886;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','52');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_post','a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_event','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Jimin','$P$BLRuOJCNL1CyeZ4MksX0E6ohDkYF8X0','jimin','jimin.stella@gmail.com','','2020-03-30 17:24:47','',0,'Jimin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-07 20:52:09
