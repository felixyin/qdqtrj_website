-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: qdqtrj_website
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_aboutitem`
--

DROP TABLE IF EXISTS `about_aboutitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about_aboutitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_aboutitem`
--

/*!40000 ALTER TABLE `about_aboutitem` DISABLE KEYS */;
INSERT INTO `about_aboutitem` (`id`, `title`, `content`, `created_time`, `is_enable`, `last_mod_time`, `sequence`) VALUES (1,'公司简介','<p>爱赛风赛风</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>东风东风</p>','2020-04-13 15:18:57.104966',1,'2020-04-13 15:18:57.269432',NULL);
INSERT INTO `about_aboutitem` (`id`, `title`, `content`, `created_time`, `is_enable`, `last_mod_time`, `sequence`) VALUES (2,'团队介绍','<p>sd风腮风</p>\r\n\r\n<p>fdg海风海风</p>','2020-04-13 15:18:57.104966',1,'2020-04-13 15:18:57.269432',NULL);
INSERT INTO `about_aboutitem` (`id`, `title`, `content`, `created_time`, `is_enable`, `last_mod_time`, `sequence`) VALUES (3,'合作客户','<p>ds冯东风扥个赛风扥个</p>','2020-04-13 15:18:57.104966',1,'2020-04-13 15:18:57.269432',NULL);
INSERT INTO `about_aboutitem` (`id`, `title`, `content`, `created_time`, `is_enable`, `last_mod_time`, `sequence`) VALUES (4,'精英招聘','<p>扥改凤</p>','2020-04-13 15:18:57.104966',1,'2020-04-13 15:18:57.269432',NULL);
INSERT INTO `about_aboutitem` (`id`, `title`, `content`, `created_time`, `is_enable`, `last_mod_time`, `sequence`) VALUES (5,'联系我们','<p>东风扥个</p>','2020-04-13 15:18:57.104966',1,'2020-04-13 15:18:57.269432',NULL);
/*!40000 ALTER TABLE `about_aboutitem` ENABLE KEYS */;

--
-- Table structure for table `accounts_bloguser`
--

DROP TABLE IF EXISTS `accounts_bloguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `source` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser`
--

/*!40000 ALTER TABLE `accounts_bloguser` DISABLE KEYS */;
INSERT INTO `accounts_bloguser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nickname`, `created_time`, `last_mod_time`, `source`) VALUES (1,'test!q@w#eTYU',NULL,0,'测试用户','','','test@test.com',0,1,'2020-03-30 11:58:11.769049','','2020-03-30 11:58:11.769055','2020-03-30 11:58:11.769057','');
INSERT INTO `accounts_bloguser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nickname`, `created_time`, `last_mod_time`, `source`) VALUES (2,'pbkdf2_sha256$180000$PJuY0JSinBUS$W5UoAHkT9IMOhVuQ3j3G8A+hpnbDay4BRiH716dyYAM=','2020-04-15 12:05:17.879223',1,'admin','','','1052921694@qq.com',1,1,'2020-03-30 12:02:22.314053','','2020-03-30 12:02:22.314060','2020-03-30 12:02:22.314063','');
/*!40000 ALTER TABLE `accounts_bloguser` ENABLE KEYS */;

--
-- Table structure for table `accounts_bloguser_groups`
--

DROP TABLE IF EXISTS `accounts_bloguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `accounts_bloguser_groups_bloguser_id_group_id_fc37e89b_uniq` (`bloguser_id`,`group_id`) USING BTREE,
  KEY `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_gr_bloguser_id_a16ccbb7_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser_groups`
--

/*!40000 ALTER TABLE `accounts_bloguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bloguser_groups` ENABLE KEYS */;

--
-- Table structure for table `accounts_bloguser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_bloguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `accounts_bloguser_user_p_bloguser_id_permission_i_14808777_uniq` (`bloguser_id`,`permission_id`) USING BTREE,
  KEY `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `accounts_bloguser_us_bloguser_id_7e1b5742_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bloguser_user_permissions`
--

/*!40000 ALTER TABLE `accounts_bloguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bloguser_user_permissions` ENABLE KEYS */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add log entry',1,'add_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (2,'Can change log entry',1,'change_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (3,'Can delete log entry',1,'delete_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (4,'Can view log entry',1,'view_logentry');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (5,'Can add permission',2,'add_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (6,'Can change permission',2,'change_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (7,'Can delete permission',2,'delete_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (8,'Can view permission',2,'view_permission');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (9,'Can add group',3,'add_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (10,'Can change group',3,'change_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (11,'Can delete group',3,'delete_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (12,'Can view group',3,'view_group');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (13,'Can add content type',4,'add_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (14,'Can change content type',4,'change_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (15,'Can delete content type',4,'delete_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (16,'Can view content type',4,'view_contenttype');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (17,'Can add session',5,'add_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (18,'Can change session',5,'change_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (19,'Can delete session',5,'delete_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (20,'Can view session',5,'view_session');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (21,'Can add site',6,'add_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (22,'Can change site',6,'change_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (23,'Can delete site',6,'delete_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (24,'Can view site',6,'view_site');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (25,'Can add 网站配置',7,'add_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (26,'Can change 网站配置',7,'change_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (27,'Can delete 网站配置',7,'delete_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (28,'Can view 网站配置',7,'view_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (29,'Can add 友情链接',8,'add_links');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (30,'Can change 友情链接',8,'change_links');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (31,'Can delete 友情链接',8,'delete_links');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (32,'Can view 友情链接',8,'view_links');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (33,'Can add 侧边栏',9,'add_sidebar');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (34,'Can change 侧边栏',9,'change_sidebar');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (35,'Can delete 侧边栏',9,'delete_sidebar');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (36,'Can view 侧边栏',9,'view_sidebar');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (37,'Can add 标签',10,'add_tag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (38,'Can change 标签',10,'change_tag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (39,'Can delete 标签',10,'delete_tag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (40,'Can view 标签',10,'view_tag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (41,'Can add 分类',11,'add_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (42,'Can change 分类',11,'change_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (43,'Can delete 分类',11,'delete_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (44,'Can view 分类',11,'view_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (45,'Can add 文章',12,'add_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (46,'Can change 文章',12,'change_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (47,'Can delete 文章',12,'delete_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (48,'Can view 文章',12,'view_article');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (49,'Can add 用户',13,'add_bloguser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (50,'Can change 用户',13,'change_bloguser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (51,'Can delete 用户',13,'delete_bloguser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (52,'Can view 用户',13,'view_bloguser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (53,'Can add 评论',14,'add_comment');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (54,'Can change 评论',14,'change_comment');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (55,'Can delete 评论',14,'delete_comment');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (56,'Can view 评论',14,'view_comment');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (57,'Can add oauth配置',15,'add_oauthconfig');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (58,'Can change oauth配置',15,'change_oauthconfig');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (59,'Can delete oauth配置',15,'delete_oauthconfig');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (60,'Can view oauth配置',15,'view_oauthconfig');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (61,'Can add oauth用户',16,'add_oauthuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (62,'Can change oauth用户',16,'change_oauthuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (63,'Can delete oauth用户',16,'delete_oauthuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (64,'Can view oauth用户',16,'view_oauthuser');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (65,'Can add 命令',17,'add_commands');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (66,'Can change 命令',17,'change_commands');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (67,'Can delete 命令',17,'delete_commands');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (68,'Can view 命令',17,'view_commands');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (69,'Can add 邮件发送log',18,'add_emailsendlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (70,'Can change 邮件发送log',18,'change_emailsendlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (71,'Can delete 邮件发送log',18,'delete_emailsendlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (72,'Can view 邮件发送log',18,'view_emailsendlog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (73,'Can add OwnTrackLogs',19,'add_owntracklog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (74,'Can change OwnTrackLogs',19,'change_owntracklog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (75,'Can delete OwnTrackLogs',19,'delete_owntracklog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (76,'Can view OwnTrackLogs',19,'view_owntracklog');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (77,'Can add 关于信息',20,'add_about');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (78,'Can change 关于信息',20,'change_about');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (79,'Can delete 关于信息',20,'delete_about');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (80,'Can view 关于信息',20,'view_about');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (81,'Can add 客户评价',21,'add_testimonials');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (82,'Can change 客户评价',21,'change_testimonials');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (83,'Can delete 客户评价',21,'delete_testimonials');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (84,'Can view 客户评价',21,'view_testimonials');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (85,'Can add 我们的团队',22,'add_teammember');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (86,'Can change 我们的团队',22,'change_teammember');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (87,'Can delete 我们的团队',22,'delete_teammember');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (88,'Can view 我们的团队',22,'view_teammember');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (89,'Can add 我们的客户',23,'add_ourclient');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (90,'Can change 我们的客户',23,'change_ourclient');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (91,'Can delete 我们的客户',23,'delete_ourclient');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (92,'Can view 我们的客户',23,'view_ourclient');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (93,'Can add 服务',24,'add_service');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (94,'Can change 服务',24,'change_service');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (95,'Can delete 服务',24,'delete_service');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (96,'Can view 服务',24,'view_service');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (97,'Can add 服务内容',25,'add_serviceitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (98,'Can change 服务内容',25,'change_serviceitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (99,'Can delete 服务内容',25,'delete_serviceitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (100,'Can view 服务内容',25,'view_serviceitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (101,'Can add 服务流程和特点',26,'add_serverprocess');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (102,'Can change 服务流程和特点',26,'change_serverprocess');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (103,'Can delete 服务流程和特点',26,'delete_serverprocess');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (104,'Can view 服务流程和特点',26,'view_serverprocess');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (105,'Can add 项目',27,'add_project');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (106,'Can change 项目',27,'change_project');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (107,'Can delete 项目',27,'delete_project');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (108,'Can view 项目',27,'view_project');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (109,'Can add 项目技术标签',28,'add_projecttag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (110,'Can change 项目技术标签',28,'change_projecttag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (111,'Can delete 项目技术标签',28,'delete_projecttag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (112,'Can view 项目技术标签',28,'view_projecttag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (113,'Can add 项目附件',29,'add_projectattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (114,'Can change 项目附件',29,'change_projectattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (115,'Can delete 项目附件',29,'delete_projectattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (116,'Can view 项目附件',29,'view_projectattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (117,'Can add 主页',30,'add_home');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (118,'Can change 主页',30,'change_home');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (119,'Can delete 主页',30,'delete_home');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (120,'Can view 主页',30,'view_home');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (121,'Can add 主页我们的优势',31,'add_homesuperiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (122,'Can change 主页我们的优势',31,'change_homesuperiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (123,'Can delete 主页我们的优势',31,'delete_homesuperiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (124,'Can view 主页我们的优势',31,'view_homesuperiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (125,'Can add 主页跑马灯',32,'add_homecarousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (126,'Can change 主页跑马灯',32,'change_homecarousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (127,'Can delete 主页跑马灯',32,'delete_homecarousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (128,'Can view 主页跑马灯',32,'view_homecarousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (129,'Can add 附件',33,'add_baseattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (130,'Can change 附件',33,'change_baseattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (131,'Can delete 附件',33,'delete_baseattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (132,'Can view 附件',33,'view_baseattach');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (133,'Can add 标签',34,'add_basetag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (134,'Can change 标签',34,'change_basetag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (135,'Can delete 标签',34,'delete_basetag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (136,'Can view 标签',34,'view_basetag');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (137,'Can add 客户评价',21,'add_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (138,'Can change 客户评价',21,'change_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (139,'Can delete 客户评价',21,'delete_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (140,'Can view 客户评价',21,'view_evaluation');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (141,'Can add 项目',35,'add_case');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (142,'Can change 项目',35,'change_case');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (143,'Can delete 项目',35,'delete_case');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (144,'Can view 项目',35,'view_case');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (145,'Can add 项目',36,'add_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (146,'Can change 项目',36,'change_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (147,'Can delete 项目',36,'delete_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (148,'Can view 项目',36,'view_product');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (149,'Can add category',37,'add_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (150,'Can change category',37,'change_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (151,'Can delete category',37,'delete_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (152,'Can view category',37,'view_category');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (153,'Can add 在线留言',38,'add_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (154,'Can change 在线留言',38,'change_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (155,'Can delete 在线留言',38,'delete_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (156,'Can view 在线留言',38,'view_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (157,'Can add 网站配置',39,'add_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (158,'Can change 网站配置',39,'change_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (159,'Can delete 网站配置',39,'delete_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (160,'Can view 网站配置',39,'view_blogsettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (161,'Can add 网站配置',39,'add_websettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (162,'Can change 网站配置',39,'change_websettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (163,'Can delete 网站配置',39,'delete_websettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (164,'Can view 网站配置',39,'view_websettings');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (165,'Can add 在线留言',40,'add_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (166,'Can change 在线留言',40,'change_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (167,'Can delete 在线留言',40,'delete_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (168,'Can view 在线留言',40,'view_message');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (169,'Can add 关于我们',41,'add_aboutus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (170,'Can change 关于我们',41,'change_aboutus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (171,'Can delete 关于我们',41,'delete_aboutus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (172,'Can view 关于我们',41,'view_aboutus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (173,'Can add 联系我们',42,'add_contactus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (174,'Can change 联系我们',42,'change_contactus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (175,'Can delete 联系我们',42,'delete_contactus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (176,'Can view 联系我们',42,'view_contactus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (177,'Can add 精英招聘',43,'add_joinus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (178,'Can change 精英招聘',43,'change_joinus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (179,'Can delete 精英招聘',43,'delete_joinus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (180,'Can view 精英招聘',43,'view_joinus');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (181,'Can add 关于我们',44,'add_aboutitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (182,'Can change 关于我们',44,'change_aboutitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (183,'Can delete 关于我们',44,'delete_aboutitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (184,'Can view 关于我们',44,'view_aboutitem');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (185,'Can add 联系我们',45,'add_contactinfo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (186,'Can change 联系我们',45,'change_contactinfo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (187,'Can delete 联系我们',45,'delete_contactinfo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (188,'Can view 联系我们',45,'view_contactinfo');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (189,'Can add 我们的优势',46,'add_superiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (190,'Can change 我们的优势',46,'change_superiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (191,'Can delete 我们的优势',46,'delete_superiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (192,'Can view 我们的优势',46,'view_superiority');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (193,'Can add 图片跑马灯',47,'add_carousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (194,'Can change 图片跑马灯',47,'change_carousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (195,'Can delete 图片跑马灯',47,'delete_carousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (196,'Can view 图片跑马灯',47,'view_carousel');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (197,'Can add 广告图片',48,'add_adware');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (198,'Can change 广告图片',48,'change_adware');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (199,'Can delete 广告图片',48,'delete_adware');
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (200,'Can view 广告图片',48,'view_adware');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

--
-- Table structure for table `base_baseattach`
--

DROP TABLE IF EXISTS `base_baseattach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_baseattach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_baseattach`
--

/*!40000 ALTER TABLE `base_baseattach` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_baseattach` ENABLE KEYS */;

--
-- Table structure for table `base_basetag`
--

DROP TABLE IF EXISTS `base_basetag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_basetag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_basetag`
--

/*!40000 ALTER TABLE `base_basetag` DISABLE KEYS */;
INSERT INTO `base_basetag` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `description`) VALUES (1,'2020-04-08 02:21:58.461706','2020-04-08 02:21:58.461714',1,1,'sdf','sadf');
/*!40000 ALTER TABLE `base_basetag` ENABLE KEYS */;

--
-- Table structure for table `base_contactinfo`
--

DROP TABLE IF EXISTS `base_contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_user` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wechart` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_after_sale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_after_sale_user` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_hr` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_contactinfo`
--

/*!40000 ALTER TABLE `base_contactinfo` DISABLE KEYS */;
INSERT INTO `base_contactinfo` (`id`, `company`, `phone`, `phone_user`, `wechart`, `qq`, `phone_after_sale`, `phone_after_sale_user`, `email`, `email_hr`, `address`) VALUES (1,'青岛前途软件技术有限公司','17554153785','尹经理','felixyin','1052921694','1052921694','尹经理','yinbin@qdqtrj.com','yinbin@qdqtrj.com','青岛市城阳区招商LAVIE公社62号楼5层');
/*!40000 ALTER TABLE `base_contactinfo` ENABLE KEYS */;

--
-- Table structure for table `base_message`
--

DROP TABLE IF EXISTS `base_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_message`
--

/*!40000 ALTER TABLE `base_message` DISABLE KEYS */;
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (6,'2020-04-14 00:59:52.914938','2020-04-14 00:59:52.914946',1,NULL,'','17554153785','',NULL,NULL,'aaaaaaaaaaaaaaa\r\n','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (7,'2020-04-14 01:00:52.289596','2020-04-14 01:00:52.289606',1,NULL,NULL,'17554153785',NULL,NULL,NULL,'aaaaaaaaaaaaaaa','Y');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (8,'2020-04-14 17:31:40.707178','2020-04-14 17:31:40.707189',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (9,'2020-04-14 17:36:07.785897','2020-04-14 17:36:07.785908',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (10,'2020-04-14 17:36:13.166296','2020-04-14 17:36:13.166304',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (11,'2020-04-14 17:36:18.083875','2020-04-14 17:36:18.083882',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (12,'2020-04-14 17:36:39.168857','2020-04-14 17:36:39.168864',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (13,'2020-04-14 17:43:46.195476','2020-04-14 17:43:46.195486',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (14,'2020-04-14 17:44:21.779794','2020-04-14 17:44:21.779805',1,NULL,'bbbbbbbbbbbb','17554153785',NULL,NULL,NULL,'bbbbbbbbbbbbbbbbbbb','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (15,'2020-04-14 17:46:14.141649','2020-04-14 17:46:14.141657',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (16,'2020-04-14 17:46:14.353237','2020-04-14 17:46:14.353244',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (17,'2020-04-14 17:47:14.697350','2020-04-14 17:47:14.697357',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (18,'2020-04-14 17:48:12.801488','2020-04-14 17:48:12.801503',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (19,'2020-04-14 17:48:15.345512','2020-04-14 17:48:15.345519',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (20,'2020-04-14 17:49:00.759069','2020-04-14 17:49:00.759076',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (21,'2020-04-14 17:49:26.960130','2020-04-14 17:49:26.960137',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (22,'2020-04-14 17:49:34.429599','2020-04-14 17:49:34.429606',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (23,'2020-04-14 17:49:44.986669','2020-04-14 17:49:44.986676',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (24,'2020-04-14 17:50:38.855253','2020-04-14 17:50:38.855261',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (25,'2020-04-14 17:50:41.722743','2020-04-14 17:50:41.722751',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (26,'2020-04-14 17:50:46.370120','2020-04-14 17:50:46.370128',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (27,'2020-04-14 17:50:50.870158','2020-04-14 17:50:50.870165',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','N');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (28,'2020-04-14 17:50:52.860491','2020-04-14 17:50:52.860498',1,NULL,'ffffffffffffff','17554153785',NULL,NULL,NULL,'fffffffffff','Y');
INSERT INTO `base_message` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `phone`, `wechart`, `qq`, `email`, `content`, `is_read`) VALUES (39,'2020-04-15 12:04:39.104081','2020-04-15 12:04:39.104094',1,NULL,'asdf ','15965585803','',NULL,NULL,'asdfasdfasdfasdfasdf','N');
/*!40000 ALTER TABLE `base_message` ENABLE KEYS */;

--
-- Table structure for table `base_websettings`
--

DROP TABLE IF EXISTS `base_websettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_websettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_sub_length` int(11) NOT NULL,
  `sidebar_article_count` int(11) NOT NULL,
  `sidebar_comment_count` int(11) NOT NULL,
  `show_google_adsense` tinyint(1) NOT NULL,
  `google_adsense_codes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_site_comment` tinyint(1) NOT NULL,
  `beiancode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analyticscode` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_gongan_code` tinyint(1) NOT NULL,
  `gongan_beiancode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_path` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_footer_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wechart_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_websettings`
--

/*!40000 ALTER TABLE `base_websettings` DISABLE KEYS */;
INSERT INTO `base_websettings` (`id`, `sitename`, `site_description`, `site_seo_description`, `site_keywords`, `article_sub_length`, `sidebar_article_count`, `sidebar_comment_count`, `show_google_adsense`, `google_adsense_codes`, `open_site_comment`, `beiancode`, `analyticscode`, `show_gongan_code`, `gongan_beiancode`, `resource_path`, `blog_description`, `blog_keywords`, `blog_seo_description`, `blogname`, `logo_footer_img`, `logo_img`, `phone_img`, `wechart_img`, `site_address`, `copyright`) VALUES (1,'青岛前途软件技术有限公司','青岛前途软件技术有限公司','青岛前途软件技术有限公司','青岛前途软件技术有限公司,尹彬博客',300,10,5,0,'',1,'鲁ICP备19016982号-1','var a=1;',0,'','/var/www/resource/','尹彬的博客','尹彬的博客','尹彬的博客','尹彬的博客','upload/websetting/foot_logo.png','upload/websetting/logo.png','upload/websetting/rexian.png','upload/websetting/erweima.jpg','http://www.qdqtrj.com','Copyright 2019-2020 青岛前途软件技术有限公司');
/*!40000 ALTER TABLE `base_websettings` ENABLE KEYS */;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `article_order` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `title` (`title`) USING BTREE,
  KEY `blog_article_author_id_905add38_fk_accounts_bloguser_id` (`author_id`) USING BTREE,
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `blog_article_author_id_905add38_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (1,'2020-03-30 11:58:12.001883','2020-03-30 11:58:12.001890','nice title 1','nice content 1','2020-03-30 11:58:12.001896','p','o','a',12,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (2,'2020-03-30 11:58:12.645011','2020-03-30 11:58:12.645018','nice title 2','nice content 2','2020-03-30 11:58:12.645023','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (3,'2020-03-30 11:58:12.953059','2020-03-30 11:58:12.953066','nice title 3','nice content 3','2020-03-30 11:58:12.953070','p','o','a',3,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (4,'2020-03-30 11:58:13.088934','2020-03-30 11:58:13.088941','nice title 4','nice content 4','2020-03-30 11:58:13.088946','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (5,'2020-03-30 11:58:13.252477','2020-03-30 11:58:13.252484','nice title 5','nice content 5','2020-03-30 11:58:13.252489','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (6,'2020-03-30 11:58:13.409669','2020-03-30 11:58:13.409676','nice title 6','nice content 6','2020-03-30 11:58:13.409681','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (7,'2020-03-30 11:58:13.555133','2020-03-30 11:58:13.555140','nice title 7','nice content 7','2020-03-30 11:58:13.555145','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (8,'2020-03-30 11:58:13.901197','2020-03-30 11:58:13.901204','nice title 8','nice content 8','2020-03-30 11:58:13.901208','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (9,'2020-03-30 11:58:14.040513','2020-03-30 11:58:14.040520','nice title 9','nice content 9','2020-03-30 11:58:14.040525','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (10,'2020-03-30 11:58:14.204110','2020-03-30 11:58:14.204117','nice title 10','nice content 10','2020-03-30 11:58:14.204121','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (11,'2020-03-30 11:58:14.346991','2020-03-30 11:58:14.346998','nice title 11','nice content 11','2020-03-30 11:58:14.347003','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (12,'2020-03-30 11:58:14.481217','2020-03-30 11:58:14.481224','nice title 12','nice content 12','2020-03-30 11:58:14.481228','p','o','a',1,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (13,'2020-03-30 11:58:14.646464','2020-03-30 11:58:14.646471','nice title 13','nice content 13','2020-03-30 11:58:14.646475','p','o','a',2,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (14,'2020-03-30 11:58:14.786066','2020-03-30 11:58:14.786073','nice title 14','nice content 14','2020-03-30 11:58:14.786077','p','o','a',0,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (15,'2020-03-30 11:58:14.968291','2020-03-30 11:58:14.968298','nice title 15','nice content 15','2020-03-30 11:58:14.968303','p','o','a',8,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (16,'2020-03-30 11:58:15.111802','2020-03-30 11:58:15.111808','nice title 16','nice content 16','2020-03-30 11:58:15.111813','p','o','a',25,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (17,'2020-03-30 11:58:15.260152','2020-03-30 11:58:15.260160','nice title 17','nice content 17','2020-03-30 11:58:15.260165','p','o','a',22,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (18,'2020-03-30 11:58:15.468638','2020-03-30 11:58:15.468645','nice title 18','nice content 18','2020-03-30 11:58:15.468650','p','o','a',60,0,1,2);
INSERT INTO `blog_article` (`id`, `created_time`, `last_mod_time`, `title`, `body`, `pub_time`, `status`, `comment_status`, `type`, `views`, `article_order`, `author_id`, `category_id`) VALUES (19,'2020-03-30 11:58:15.618490','2020-03-30 11:58:15.618497','nice title 19','nice content 19![](/media/editor/verify_20200408185704706516.png)','2020-03-30 11:58:15.000000','p','o','a',18,0,2,2);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;

--
-- Table structure for table `blog_article_tags`
--

DROP TABLE IF EXISTS `blog_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `blog_article_tags_article_id_tag_id_b78a22e9_uniq` (`article_id`,`tag_id`) USING BTREE,
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` (`tag_id`) USING BTREE,
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article_tags`
--

/*!40000 ALTER TABLE `blog_article_tags` DISABLE KEYS */;
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (2,1,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (1,1,2);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (4,2,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (3,2,3);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (6,3,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (5,3,4);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (8,4,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (7,4,5);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (10,5,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (9,5,6);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (12,6,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (11,6,7);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (14,7,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (13,7,8);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (16,8,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (15,8,9);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (18,9,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (17,9,10);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (20,10,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (19,10,11);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (22,11,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (21,11,12);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (24,12,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (23,12,13);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (26,13,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (25,13,14);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (28,14,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (27,14,15);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (30,15,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (29,15,16);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (32,16,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (31,16,17);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (34,17,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (33,17,18);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (36,18,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (35,18,19);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (38,19,1);
INSERT INTO `blog_article_tags` (`id`, `article_id`, `tag_id`) VALUES (37,19,20);
/*!40000 ALTER TABLE `blog_article_tags` ENABLE KEYS */;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` (`parent_category_id`) USING BTREE,
  KEY `blog_category_slug_92643dc5` (`slug`) USING BTREE,
  CONSTRAINT `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` (`id`, `created_time`, `last_mod_time`, `name`, `slug`, `parent_category_id`) VALUES (1,'2020-03-30 11:58:11.840017','2020-03-30 11:58:11.840025','我是父类目','wo-shi-fu-lei-mu',NULL);
INSERT INTO `blog_category` (`id`, `created_time`, `last_mod_time`, `name`, `slug`, `parent_category_id`) VALUES (2,'2020-03-30 11:58:11.884001','2020-03-30 11:58:11.884008','子类目','zi-lei-mu',1);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;

--
-- Table structure for table `blog_links`
--

DROP TABLE IF EXISTS `blog_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `show_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_links`
--

/*!40000 ALTER TABLE `blog_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_links` ENABLE KEYS */;

--
-- Table structure for table `blog_sidebar`
--

DROP TABLE IF EXISTS `blog_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_sidebar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_sidebar`
--

/*!40000 ALTER TABLE `blog_sidebar` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_sidebar` ENABLE KEYS */;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `blog_tag_slug_01068d0e` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (1,'2020-03-30 11:58:11.958367','2020-03-30 11:58:11.958376','标签','biao-qian');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (2,'2020-03-30 11:58:12.544456','2020-03-30 11:58:12.544463','标签1','biao-qian-1');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (3,'2020-03-30 11:58:12.713422','2020-03-30 11:58:12.713429','标签2','biao-qian-2');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (4,'2020-03-30 11:58:13.000870','2020-03-30 11:58:13.000877','标签3','biao-qian-3');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (5,'2020-03-30 11:58:13.142677','2020-03-30 11:58:13.142683','标签4','biao-qian-4');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (6,'2020-03-30 11:58:13.307480','2020-03-30 11:58:13.307487','标签5','biao-qian-5');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (7,'2020-03-30 11:58:13.457634','2020-03-30 11:58:13.457640','标签6','biao-qian-6');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (8,'2020-03-30 11:58:13.801430','2020-03-30 11:58:13.801438','标签7','biao-qian-7');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (9,'2020-03-30 11:58:13.953399','2020-03-30 11:58:13.953405','标签8','biao-qian-8');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (10,'2020-03-30 11:58:14.097037','2020-03-30 11:58:14.097044','标签9','biao-qian-9');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (11,'2020-03-30 11:58:14.255214','2020-03-30 11:58:14.255221','标签10','biao-qian-10');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (12,'2020-03-30 11:58:14.394433','2020-03-30 11:58:14.394442','标签11','biao-qian-11');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (13,'2020-03-30 11:58:14.546304','2020-03-30 11:58:14.546311','标签12','biao-qian-12');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (14,'2020-03-30 11:58:14.699034','2020-03-30 11:58:14.699041','标签13','biao-qian-13');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (15,'2020-03-30 11:58:14.839388','2020-03-30 11:58:14.839395','标签14','biao-qian-14');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (16,'2020-03-30 11:58:15.019751','2020-03-30 11:58:15.019758','标签15','biao-qian-15');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (17,'2020-03-30 11:58:15.167924','2020-03-30 11:58:15.167932','标签16','biao-qian-16');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (18,'2020-03-30 11:58:15.354407','2020-03-30 11:58:15.354414','标签17','biao-qian-17');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (19,'2020-03-30 11:58:15.530277','2020-03-30 11:58:15.530285','标签18','biao-qian-18');
INSERT INTO `blog_tag` (`id`, `created_time`, `last_mod_time`, `name`, `slug`) VALUES (20,'2020-03-30 11:58:15.671770','2020-03-30 11:58:15.671777','标签19','biao-qian-19');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;

--
-- Table structure for table `case_case`
--

DROP TABLE IF EXISTS `case_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE,
  KEY `case_case_service_id_f17d4031_fk_service_service_id` (`service_id`) USING BTREE,
  KEY `case_case_category_id_d6e2f859_fk_case_category_id` (`category_id`) USING BTREE,
  CONSTRAINT `case_case_category_id_d6e2f859_fk_case_category_id` FOREIGN KEY (`category_id`) REFERENCES `case_category` (`id`),
  CONSTRAINT `case_case_service_id_f17d4031_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_case`
--

/*!40000 ALTER TABLE `case_case` DISABLE KEYS */;
INSERT INTO `case_case` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`, `category_id`) VALUES (1,'2020-04-08 03:07:43.869433','2020-04-08 03:07:43.869440',1,'sad分','upload/case/thumb/2020/04/08/verify.png','赛风赛风',NULL,1,NULL,2);
INSERT INTO `case_case` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`, `category_id`) VALUES (2,'2020-04-08 03:08:02.464916','2020-04-08 03:08:02.464925',1,'sdfg','upload/case/thumb/2020/04/08/verify_brruUIz.png','dfsgdsfgdfg',NULL,2,NULL,3);
INSERT INTO `case_case` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`, `category_id`) VALUES (3,'2020-04-08 03:08:20.987784','2020-04-08 03:08:20.987791',1,'ghfj','upload/case/thumb/2020/04/08/verify_HvTusl7.png','fghjghj',NULL,3,NULL,1);
INSERT INTO `case_case` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`, `category_id`) VALUES (4,'2020-04-08 03:08:38.429963','2020-04-08 03:08:38.429971',1,'fghj','upload/case/thumb/2020/04/08/verify_bl1SKnT.png','jkhluy',NULL,5,NULL,2);
/*!40000 ALTER TABLE `case_case` ENABLE KEYS */;

--
-- Table structure for table `case_case_related_cases`
--

DROP TABLE IF EXISTS `case_case_related_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_case_related_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_case_id` int(11) NOT NULL,
  `to_case_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `case_case_related_cases_from_case_id_to_case_id_6ad1f5bc_uniq` (`from_case_id`,`to_case_id`) USING BTREE,
  KEY `case_case_related_cases_to_case_id_128d9010_fk_case_case_id` (`to_case_id`) USING BTREE,
  CONSTRAINT `case_case_related_cases_from_case_id_441f79e5_fk_case_case_id` FOREIGN KEY (`from_case_id`) REFERENCES `case_case` (`id`),
  CONSTRAINT `case_case_related_cases_to_case_id_128d9010_fk_case_case_id` FOREIGN KEY (`to_case_id`) REFERENCES `case_case` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_case_related_cases`
--

/*!40000 ALTER TABLE `case_case_related_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `case_case_related_cases` ENABLE KEYS */;

--
-- Table structure for table `case_category`
--

DROP TABLE IF EXISTS `case_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_category`
--

/*!40000 ALTER TABLE `case_category` DISABLE KEYS */;
INSERT INTO `case_category` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `sequence`) VALUES (1,'2020-04-08 03:06:45.441469','2020-04-08 03:06:45.441476',1,'撒扥',1);
INSERT INTO `case_category` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `sequence`) VALUES (2,'2020-04-08 03:06:48.562478','2020-04-08 03:06:48.562485',1,'付东风',2);
INSERT INTO `case_category` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `sequence`) VALUES (3,'2020-04-08 03:06:52.673552','2020-04-08 03:06:52.673560',1,'东风',3);
INSERT INTO `case_category` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `sequence`) VALUES (4,'2020-04-08 03:07:00.546931','2020-04-08 03:07:00.546938',1,'43东风',5);
INSERT INTO `case_category` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `sequence`) VALUES (5,'2020-04-08 03:07:08.187467','2020-04-08 03:07:08.187474',1,'僧发的',6);
/*!40000 ALTER TABLE `case_category` ENABLE KEYS */;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comments_comment_article_id_94fe60a2_fk_blog_article_id` (`article_id`) USING BTREE,
  KEY `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` (`author_id`) USING BTREE,
  KEY `comments_comment_parent_comment_id_71289d4a_fk_comments_` (`parent_comment_id`) USING BTREE,
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `comments_comment_parent_comment_id_71289d4a_fk_comments_` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (1,'dfaf','2020-04-08 05:50:40.733128','2020-04-08 05:50:40.733137',1,18,2,NULL);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (2,'fdssf','2020-04-08 05:50:49.979249','2020-04-08 05:50:49.979258',1,18,2,1);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (3,'gddh','2020-04-08 05:50:55.263682','2020-04-08 05:50:55.263691',1,18,2,2);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (4,'jghgg','2020-04-08 05:50:59.966073','2020-04-08 05:50:59.966082',1,18,2,3);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (5,'gjggj','2020-04-08 05:51:04.612204','2020-04-08 05:51:04.612213',1,18,2,4);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (6,'fhfh','2020-04-08 05:51:10.461773','2020-04-08 05:51:10.461782',1,18,2,5);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (7,'hjhg','2020-04-08 05:51:15.086010','2020-04-08 05:51:15.086018',1,18,2,6);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (8,'jhgghjgjghj','2020-04-08 05:51:24.760799','2020-04-08 05:51:24.760807',1,18,2,1);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (9,'gkhkgghkghk','2020-04-08 05:51:31.419494','2020-04-08 05:51:31.419503',1,18,2,3);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (10,'ghkkkgghjk','2020-04-08 05:51:39.857556','2020-04-08 05:51:39.857564',1,18,2,4);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (11,'hjhjhjk','2020-04-08 05:51:45.268515','2020-04-08 05:51:45.268524',1,18,2,2);
INSERT INTO `comments_comment` (`id`, `body`, `created_time`, `last_mod_time`, `is_enable`, `article_id`, `author_id`, `parent_comment_id`) VALUES (12,'gfghjghgh','2020-04-08 05:51:59.012483','2020-04-08 05:51:59.012492',1,18,2,8);
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (1,'2020-03-30 12:37:16.317833','2','主页',1,'[{\"added\": {}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (2)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (3)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (4)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (1)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (2)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (3)\"}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (2,'2020-03-31 06:58:18.914634','1','http://www.qdqtrj.com',1,'[{\"added\": {}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (1)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (2)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (3)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (1)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (2)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (3)\"}}]',20,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (3,'2020-04-07 04:33:38.885191','2','主页',2,'[]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (4,'2020-04-07 09:43:56.757263','1','萨芬的',1,'[{\"added\": {}}]',24,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (5,'2020-04-07 10:30:26.402554','2','撒扥',1,'[{\"added\": {}}]',24,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (6,'2020-04-08 02:21:58.512697','1','sdf',1,'[{\"added\": {}}]',34,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (7,'2020-04-08 02:23:28.573182','1','撒扥安赛飞',1,'[{\"added\": {}}]',36,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (8,'2020-04-08 02:27:56.342578','2','fghdjdfgj',1,'[{\"added\": {}}]',36,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (9,'2020-04-08 03:06:45.456928','1','撒扥',1,'[{\"added\": {}}]',37,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (10,'2020-04-08 03:06:48.566985','2','付东风',1,'[{\"added\": {}}]',37,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (11,'2020-04-08 03:06:52.677934','3','东风',1,'[{\"added\": {}}]',37,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (12,'2020-04-08 03:07:00.551215','4','43东风',1,'[{\"added\": {}}]',37,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (13,'2020-04-08 03:07:08.191931','5','僧发的',1,'[{\"added\": {}}]',37,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (14,'2020-04-08 03:07:43.949683','1','sad分',1,'[{\"added\": {}}]',35,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (15,'2020-04-08 03:08:02.482632','2','sdfg',1,'[{\"added\": {}}]',35,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (16,'2020-04-08 03:08:20.997811','3','ghfj',1,'[{\"added\": {}}]',35,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (17,'2020-04-08 03:08:38.440318','4','fghj',1,'[{\"added\": {}}]',35,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (18,'2020-04-08 07:27:59.992547','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"\\u535a\\u5ba2\\u540d\\u79f0\", \"\\u535a\\u5ba2\\u63cf\\u8ff0\", \"\\u535a\\u5ba2SEO\\u63cf\\u8ff0\", \"\\u535a\\u5ba2\\u5173\\u952e\\u5b57\", \"\\u7f51\\u7ad9\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (19,'2020-04-08 07:46:10.959040','1','清空缓存',1,'[{\"added\": {}}]',17,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (20,'2020-04-08 07:46:58.138086','23','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (21,'2020-04-08 07:46:58.138912','22','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (22,'2020-04-08 07:46:58.139633','21','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (23,'2020-04-08 07:46:58.140333','20','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (24,'2020-04-08 07:46:58.141057','19','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (25,'2020-04-08 07:46:58.141749','18','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (26,'2020-04-08 07:46:58.142700','17','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (27,'2020-04-08 07:46:58.143586','16','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (28,'2020-04-08 07:46:58.144332','15','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (29,'2020-04-08 07:46:58.145053','14','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (30,'2020-04-08 07:46:58.145754','13','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (31,'2020-04-08 07:46:58.146459','12','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (32,'2020-04-08 07:46:58.147138','11','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (33,'2020-04-08 07:46:58.147855','10','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (34,'2020-04-08 07:46:58.148572','9','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (35,'2020-04-08 07:46:58.149279','8','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (36,'2020-04-08 07:46:58.149985','7','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (37,'2020-04-08 07:46:58.150660','6','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (38,'2020-04-08 07:46:58.151331','5','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (39,'2020-04-08 07:46:58.152004','4','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (40,'2020-04-08 07:46:58.152680','3','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (41,'2020-04-08 07:46:58.153349','2','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (42,'2020-04-08 07:46:58.154012','1','感谢您发表的评论',3,'',18,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (43,'2020-04-08 07:55:00.823480','10','Message object (10)',3,'',38,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (44,'2020-04-08 07:55:00.833830','9','Message object (9)',3,'',38,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (45,'2020-04-08 07:55:00.834747','8','Message object (8)',3,'',38,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (46,'2020-04-08 08:38:25.333160','3','赛风东风',1,'[{\"added\": {}}]',24,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (47,'2020-04-08 10:57:21.705874','19','nice title 19',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\", \"\\u4f5c\\u8005\"]}}]',12,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (48,'2020-04-12 11:36:07.186150','1','关于我们',1,'[{\"added\": {}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (49,'2020-04-12 11:37:21.683957','1','关于我们',2,'[]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (50,'2020-04-12 11:53:47.558103','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (51,'2020-04-12 11:54:55.163936','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (52,'2020-04-12 11:55:38.760453','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (53,'2020-04-12 11:56:39.268694','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (54,'2020-04-12 12:03:53.241066','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (55,'2020-04-12 12:05:53.260922','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (56,'2020-04-12 12:06:20.540323','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (57,'2020-04-12 12:14:03.329765','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (58,'2020-04-12 12:14:27.880803','1','关于我们',2,'[{\"changed\": {\"fields\": [\"\\u63cf\\u8ff0\"]}}]',41,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (59,'2020-04-12 12:32:28.599932','1','撒扥安赛飞',2,'[{\"changed\": {\"fields\": [\"\\u4ea7\\u54c1\\u8be6\\u60c5\"]}}]',36,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (60,'2020-04-13 15:03:39.540557','1','关于我们',1,'[{\"added\": {}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (61,'2020-04-13 15:04:51.189338','1','公司简介',2,'[{\"changed\": {\"fields\": [\"\\u83dc\\u5355\"]}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (62,'2020-04-13 15:05:04.878731','2','团队介绍',1,'[{\"added\": {}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (63,'2020-04-13 15:05:19.996102','3','合作客户',1,'[{\"added\": {}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (64,'2020-04-13 15:05:32.518014','4','精英招聘',1,'[{\"added\": {}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (65,'2020-04-13 15:05:53.701241','5','联系我们',1,'[{\"added\": {}}]',44,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (66,'2020-04-13 16:04:59.087117','1','青岛前途软件技术有限公司',1,'[{\"added\": {}}]',45,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (67,'2020-04-13 16:05:21.917553','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9\\u5730\\u5740\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (68,'2020-04-13 16:53:37.534498','1','主页',1,'[{\"added\": {}}, {\"added\": {\"name\": \"\\u56fe\\u7247\\u8dd1\\u9a6c\\u706f\", \"object\": \"Carousel object (1)\"}}, {\"added\": {\"name\": \"\\u56fe\\u7247\\u8dd1\\u9a6c\\u706f\", \"object\": \"Carousel object (2)\"}}, {\"added\": {\"name\": \"\\u56fe\\u7247\\u8dd1\\u9a6c\\u706f\", \"object\": \"Carousel object (3)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (1)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (2)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (3)\"}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (69,'2020-04-13 17:05:02.646793','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u8dd1\\u9a6c\\u706f\\u5927\\u56fe\\u5207\\u6362\\u65f6\\u95f4\", \"\\u4ea7\\u54c1\\u6807\\u9898\", \"\\u4ea7\\u54c1\\u53e3\\u53f7\", \"\\u670d\\u52a1\\u6807\\u9898\", \"\\u670d\\u52a1\\u53e3\\u53f7\", \"\\u670d\\u52a1\\u63cf\\u8ff0\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (70,'2020-04-13 17:05:55.714335','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u6807\\u9898\", \"\\u5173\\u4e8e\\u53e3\\u53f7\", \"\\u5173\\u4e8e\\u63cf\\u8ff0\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (71,'2020-04-13 17:08:27.894696','1','主页',2,'[{\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (4)\"}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (1)\", \"fields\": [\"\\u6807\\u9898\", \"\\u63cf\\u8ff0\"]}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (2)\", \"fields\": [\"\\u6807\\u9898\", \"\\u63cf\\u8ff0\"]}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (3)\", \"fields\": [\"\\u6807\\u9898\", \"\\u63cf\\u8ff0\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (72,'2020-04-13 17:31:03.003323','1','主页',2,'[{\"added\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (1)\"}}, {\"added\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (2)\"}}, {\"added\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (3)\"}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (73,'2020-04-13 17:58:32.933622','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u670d\\u52a1\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (74,'2020-04-13 18:00:12.656101','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u670d\\u52a1\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (75,'2020-04-13 18:01:23.924456','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u670d\\u52a1\\u5927\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (76,'2020-04-13 18:40:45.298285','1','主页',2,'[{\"added\": {\"name\": \"\\u56fe\\u7247\\u8dd1\\u9a6c\\u706f\", \"object\": \"Carousel object (4)\"}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (77,'2020-04-13 18:42:57.393398','1','主页',2,'[{\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (1)\", \"fields\": [\"\\u56fe\\u6807\"]}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (2)\", \"fields\": [\"\\u56fe\\u6807\"]}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (3)\", \"fields\": [\"\\u56fe\\u6807\"]}}, {\"changed\": {\"name\": \"\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"Superiority object (4)\", \"fields\": [\"\\u56fe\\u6807\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (78,'2020-04-13 18:50:40.661695','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"\\u7f51\\u7ad9LOGO\", \"\\u7f51\\u7ad9\\u9875\\u811aLOGO\", \"\\u7535\\u8bdd\", \"\\u5fae\\u4fe1\\u4e8c\\u7ef4\\u7801\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (79,'2020-04-13 19:41:46.184983','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"\\u5730\\u5740\"]}}]',45,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (80,'2020-04-13 19:43:43.504211','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (81,'2020-04-13 19:45:46.619123','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5927\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (82,'2020-04-13 21:38:54.949286','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5927\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (83,'2020-04-13 22:02:05.274494','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (84,'2020-04-13 22:05:15.258948','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u670d\\u52a1\\u5927\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (85,'2020-04-13 22:07:01.523233','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u670d\\u52a1\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (86,'2020-04-13 22:19:03.853204','1','主页',2,'[{\"changed\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (1)\", \"fields\": [\"\\u5e7f\\u544a\\u56fe\\u7247\"]}}, {\"changed\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (2)\", \"fields\": [\"\\u5e7f\\u544a\\u56fe\\u7247\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (87,'2020-04-13 23:21:15.720244','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (88,'2020-04-13 23:22:56.844768','1','主页',2,'[{\"changed\": {\"fields\": [\"\\u5173\\u4e8e\\u5c0f\\u56fe\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (89,'2020-04-13 23:28:17.327174','1','主页',2,'[{\"changed\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (1)\", \"fields\": [\"\\u6392\\u5217\\u987a\\u5e8f\"]}}, {\"changed\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (2)\", \"fields\": [\"\\u6392\\u5217\\u987a\\u5e8f\"]}}, {\"changed\": {\"name\": \"\\u5e7f\\u544a\\u56fe\\u7247\", \"object\": \"Adware object (3)\", \"fields\": [\"\\u6392\\u5217\\u987a\\u5e8f\"]}}]',30,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (90,'2020-04-14 00:59:41.250793','5','Message object (5)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (91,'2020-04-14 00:59:41.274167','4','Message object (4)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (92,'2020-04-14 00:59:41.293906','3','Message object (3)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (93,'2020-04-14 00:59:41.312942','2','Message object (2)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (94,'2020-04-14 00:59:41.331853','1','Message object (1)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (95,'2020-04-14 09:56:17.311318','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"\\u5907\\u6848\\u53f7\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (96,'2020-04-14 09:59:26.219823','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"Copyright\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (97,'2020-04-15 12:39:43.018057','1','青岛前途软件技术有限公司',2,'[{\"changed\": {\"fields\": [\"Copyright\"]}}]',39,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (98,'2020-04-15 06:18:16.929921','38','Message object (38)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (99,'2020-04-15 06:18:16.958908','37','Message object (37)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (100,'2020-04-15 06:18:16.979884','36','Message object (36)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (101,'2020-04-15 06:18:17.000686','35','Message object (35)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (102,'2020-04-15 06:18:17.021789','34','Message object (34)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (103,'2020-04-15 06:18:17.042043','33','Message object (33)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (104,'2020-04-15 06:18:17.062326','32','Message object (32)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (105,'2020-04-15 06:18:17.082009','31','Message object (31)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (106,'2020-04-15 06:18:17.102026','30','Message object (30)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (107,'2020-04-15 06:18:17.121872','29','Message object (29)',3,'',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (108,'2020-04-15 06:47:27.587041','28','Message object (28)',2,'[{\"changed\": {\"fields\": [\"\\u5df2\\u8bfb\\u5426\\uff1f\"]}}]',40,2);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES (109,'2020-04-15 06:47:45.184030','7','Message object (7)',2,'[{\"changed\": {\"fields\": [\"\\u7559\\u8a00\\u4fe1\\u606f\", \"\\u5df2\\u8bfb\\u5426\\uff1f\"]}}]',40,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (20,'about','about');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (44,'about','aboutitem');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (41,'about','aboutus');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (42,'about','contactus');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (21,'about','evaluation');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (43,'about','joinus');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (38,'about','message');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (23,'about','ourclient');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (22,'about','teammember');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (13,'accounts','bloguser');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (3,'auth','group');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (2,'auth','permission');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (33,'base','baseattach');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (34,'base','basetag');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (45,'base','contactinfo');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (40,'base','message');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (39,'base','websettings');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (12,'blog','article');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (7,'blog','blogsettings');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (11,'blog','category');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (8,'blog','links');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (9,'blog','sidebar');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (10,'blog','tag');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (35,'case','case');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (37,'case','category');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (14,'comments','comment');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (4,'contenttypes','contenttype');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (48,'home','adware');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (47,'home','carousel');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (30,'home','home');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (32,'home','homecarousel');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (31,'home','homesuperiority');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (46,'home','superiority');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (15,'oauth','oauthconfig');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (16,'oauth','oauthuser');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (19,'owntracks','owntracklog');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (36,'product','product');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (27,'project','project');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (29,'project','projectattach');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (28,'project','projecttag');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (17,'servermanager','commands');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (18,'servermanager','emailsendlog');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (26,'service','serverprocess');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (24,'service','service');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (25,'service','serviceitem');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (5,'sessions','session');
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES (6,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (1,'about','0001_initial','2020-03-30 10:19:44.848979');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (2,'contenttypes','0001_initial','2020-03-30 10:19:44.980910');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (3,'contenttypes','0002_remove_content_type_name','2020-03-30 10:19:45.001759');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (4,'auth','0001_initial','2020-03-30 10:19:45.030948');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (5,'auth','0002_alter_permission_name_max_length','2020-03-30 10:19:45.114154');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (6,'auth','0003_alter_user_email_max_length','2020-03-30 10:19:45.117474');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (7,'auth','0004_alter_user_username_opts','2020-03-30 10:19:45.120627');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (8,'auth','0005_alter_user_last_login_null','2020-03-30 10:19:45.123689');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (9,'auth','0006_require_contenttypes_0002','2020-03-30 10:19:45.124374');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (10,'auth','0007_alter_validators_add_error_messages','2020-03-30 10:19:45.127433');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (11,'auth','0008_alter_user_username_max_length','2020-03-30 10:19:45.130578');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (12,'auth','0009_alter_user_last_name_max_length','2020-03-30 10:19:45.133778');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (13,'auth','0010_alter_group_name_max_length','2020-03-30 10:19:45.144058');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (14,'auth','0011_update_proxy_permissions','2020-03-30 10:19:45.149258');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (15,'accounts','0001_initial','2020-03-30 10:19:45.180017');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (16,'admin','0001_initial','2020-03-30 10:19:45.289525');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (17,'admin','0002_logentry_remove_auto_add','2020-03-30 10:19:45.326620');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (18,'admin','0003_logentry_add_action_flag_choices','2020-03-30 10:19:45.331290');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (19,'blog','0001_initial','2020-03-30 10:19:45.410618');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (20,'comments','0001_initial','2020-03-30 10:19:45.558346');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (22,'oauth','0001_initial','2020-03-30 10:19:45.658065');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (23,'owntracks','0001_initial','2020-03-30 10:19:45.684840');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (24,'service','0001_initial','2020-03-30 10:19:45.726886');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (26,'servermanager','0001_initial','2020-03-30 10:19:46.006152');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (27,'sessions','0001_initial','2020-03-30 10:19:46.014527');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (28,'sites','0001_initial','2020-03-30 10:19:46.031542');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (29,'sites','0002_alter_domain_unique','2020-03-30 10:19:46.040303');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (31,'about','0002_auto_20200331_1334','2020-03-31 05:35:04.771203');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (32,'base','0001_initial','2020-03-31 05:35:04.828969');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (33,'case','0001_initial','2020-03-31 05:35:04.864227');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (34,'service','0002_auto_20200407_1743','2020-04-07 09:43:39.556408');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (35,'product','0001_initial','2020-04-08 02:06:36.564203');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (36,'product','0002_auto_20200408_1020','2020-04-08 02:20:51.032670');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (37,'product','0003_remove_product_files','2020-04-08 02:22:23.214824');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (38,'case','0002_auto_20200408_1105','2020-04-08 03:05:13.420131');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (39,'product','0004_auto_20200408_1105','2020-04-08 03:05:13.485043');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (40,'about','0003_message','2020-04-08 04:18:26.464903');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (41,'case','0003_auto_20200408_1218','2020-04-08 04:18:26.485074');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (42,'about','0004_auto_20200408_1221','2020-04-08 04:21:29.245486');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (43,'about','0005_auto_20200408_1311','2020-04-08 05:12:02.355549');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (44,'base','0002_blogsettings','2020-04-08 07:09:44.635086');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (45,'blog','0002_delete_blogsettings','2020-04-08 07:09:44.664688');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (46,'base','0003_auto_20200408_1515','2020-04-08 07:15:39.544836');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (47,'base','0004_auto_20200408_1524','2020-04-08 07:24:30.882169');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (48,'about','0006_delete_message','2020-04-08 09:44:58.429635');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (49,'base','0005_message','2020-04-08 09:44:58.519951');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (50,'about','0007_auto_20200412_1134','2020-04-12 11:35:00.746882');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (51,'about','0008_auto_20200412_1152','2020-04-12 11:52:06.630964');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (52,'case','0004_auto_20200412_1218','2020-04-12 12:18:29.629134');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (53,'product','0005_auto_20200412_1218','2020-04-12 12:18:29.674320');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (54,'service','0003_auto_20200412_1218','2020-04-12 12:18:29.873406');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (55,'case','0005_remove_case_description','2020-04-12 12:25:13.606014');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (56,'product','0006_remove_product_description','2020-04-12 12:25:13.674238');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (57,'about','0009_auto_20200412_1231','2020-04-12 12:31:48.593094');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (58,'base','0006_auto_20200412_1231','2020-04-12 12:31:48.642124');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (60,'about','0010_auto_20200413_1459','2020-04-13 14:59:57.138862');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (61,'about','0011_auto_20200413_1518','2020-04-13 15:18:57.462438');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (62,'base','0007_contactinfo','2020-04-13 15:18:57.738675');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (63,'base','0008_auto_20200413_1538','2020-04-13 15:38:34.746023');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (64,'base','0009_auto_20200413_1543','2020-04-13 15:43:40.140812');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (65,'base','0010_auto_20200413_1603','2020-04-13 16:03:51.091416');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (66,'base','0011_auto_20200413_1610','2020-04-13 16:11:01.986913');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (67,'home','0001_initial','2020-04-13 16:46:49.888116');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (68,'home','0002_auto_20200413_1649','2020-04-13 16:50:00.633694');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (69,'home','0003_adware','2020-04-13 17:00:35.173324');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (70,'base','0012_auto_20200414_0100','2020-04-14 01:00:43.517517');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (71,'home','0004_auto_20200414_0100','2020-04-14 01:00:43.981472');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (72,'base','0013_auto_20200414_0959','2020-04-14 09:59:16.392341');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (73,'base','0014_auto_20200415_1357','2020-04-15 05:57:13.519899');
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES (74,'base','0015_message_is_read','2020-04-15 06:47:10.158467');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('27efojzqrs1lanac06vufuke1fjaebmb','NWVjNjNmZTdkNGZiMzIwZWZmNzAzMjAyN2ZmNTA1ODc5MmY2ZmFhYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQxNSI6dHJ1ZX0=','2020-04-29 06:10:03.463223');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('7z39uurnthytmydy27fa2wngxnywbilc','MWVjMWQ1OWJlZDVjZmY0MjQyYjNlODI0YTQyODA3ZDhkM2VmMTVlOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDcifQ==','2020-04-13 12:02:25.049052');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('r6etj8cu3xmlfsxug30b83b8gjwqsefu','NWVjNjNmZTdkNGZiMzIwZWZmNzAzMjAyN2ZmNTA1ODc5MmY2ZmFhYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQxNSI6dHJ1ZX0=','2020-04-29 06:14:48.922899');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('sr6m817cb4utdvb44rocf85li7tcd0xb','NWVjNjNmZTdkNGZiMzIwZWZmNzAzMjAyN2ZmNTA1ODc5MmY2ZmFhYTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQxNSI6dHJ1ZX0=','2020-04-29 12:06:12.086125');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('wxdc38xpau9loxxleyopubnf7d3woc28','ZDc4N2M0YWMxMzkwMTU1OWIyZWM3YmY2Y2Y3NjhiMTVhMjM5MjdmMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQwNyI6dHJ1ZSwic2ltcGxldWlfMjAyMDA0MDgiOnRydWV9','2020-04-22 01:54:20.609301');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;

--
-- Table structure for table `home_adware`
--

DROP TABLE IF EXISTS `home_adware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_adware` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE,
  KEY `home_adware_home_id_466b93ca_fk_home_home_id` (`home_id`) USING BTREE,
  CONSTRAINT `home_adware_home_id_466b93ca_fk_home_home_id` FOREIGN KEY (`home_id`) REFERENCES `home_home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_adware`
--

/*!40000 ALTER TABLE `home_adware` DISABLE KEYS */;
INSERT INTO `home_adware` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `home_id`) VALUES (1,'2020-04-13 17:31:02.603131','2020-04-13 17:31:02.603138',1,22,'upload/home/adware/image/g1.jpg',1);
INSERT INTO `home_adware` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `home_id`) VALUES (2,'2020-04-13 17:31:02.603647','2020-04-13 17:31:02.603651',1,11,'upload/home/adware/image/g2.jpg',1);
INSERT INTO `home_adware` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `home_id`) VALUES (3,'2020-04-13 17:31:02.604098','2020-04-13 17:31:02.604102',1,33,'upload/home/adware/image/di_bg.png',1);
/*!40000 ALTER TABLE `home_adware` ENABLE KEYS */;

--
-- Table structure for table `home_carousel`
--

DROP TABLE IF EXISTS `home_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE,
  KEY `home_carousel_home_id_e9a349b7_fk_home_home_id` (`home_id`) USING BTREE,
  CONSTRAINT `home_carousel_home_id_e9a349b7_fk_home_home_id` FOREIGN KEY (`home_id`) REFERENCES `home_home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_carousel`
--

/*!40000 ALTER TABLE `home_carousel` DISABLE KEYS */;
INSERT INTO `home_carousel` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `title`, `image`, `home_id`) VALUES (1,'2020-04-13 16:53:37.000909','2020-04-13 16:53:37.000914',1,1,'dfgh','upload/home/carousel/image/banner1_y2DW0hS.jpg',1);
INSERT INTO `home_carousel` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `title`, `image`, `home_id`) VALUES (2,'2020-04-13 16:53:37.001391','2020-04-13 16:53:37.001395',1,2,'dfsgdf','upload/home/carousel/image/banner2_IW66UWR.jpg',1);
INSERT INTO `home_carousel` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `title`, `image`, `home_id`) VALUES (3,'2020-04-13 16:53:37.001932','2020-04-13 16:53:37.001935',1,3,'dsfgdfg','upload/home/carousel/image/banner3_Fx37KO6.jpg',1);
INSERT INTO `home_carousel` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `title`, `image`, `home_id`) VALUES (4,'2020-04-13 18:40:44.687975','2020-04-13 18:40:44.687981',1,4,'ssdfs','upload/home/carousel/image/banner4.jpg',1);
/*!40000 ALTER TABLE `home_carousel` ENABLE KEYS */;

--
-- Table structure for table `home_home`
--

DROP TABLE IF EXISTS `home_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carousel_delay` int(11) NOT NULL,
  `product_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slogan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_slogan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_img_max` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_img_min` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_slogan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_img_max` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_img_min` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_home`
--

/*!40000 ALTER TABLE `home_home` DISABLE KEYS */;
INSERT INTO `home_home` (`id`, `carousel_delay`, `product_title`, `product_slogan`, `service_title`, `service_slogan`, `service_description`, `service_img_max`, `service_img_min`, `about_title`, `about_slogan`, `about_description`, `about_img_max`, `about_img_min`) VALUES (1,10,'公司产品','主营软件定制开发，软件外包，APP设计和开发、系统集成，数据处理','服务优势','软件即服务','服务优势\r\n\r\n由需求分析师一对一梳理需求，免费设计《解决方案文档》， 并在短时间内提供初步报价、预估工期， 开发中对质量、进度进行严格监控，开发结束提供所有源码、数据库、文档、各种账号等资料，提供最长1年免费维护...','upload/home/service/image/about.jpg','upload/home/service/image/bg_about.jpg','关于','主营软件开发，设计，系统集成，数据处理','青岛前途软件技术有限公司位于山东青岛，公司主营软件开发，设计，系统集成，数据处理，是一家专注于app开发和软件开发的现代互联网公司，公司秉承责任，诚信，创新，共赢的...','upload/home/about/image/xinwen.jpg','upload/home/about/image/l1_CAWpYH3.jpg');
/*!40000 ALTER TABLE `home_home` ENABLE KEYS */;

--
-- Table structure for table `home_superiority`
--

DROP TABLE IF EXISTS `home_superiority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_superiority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE,
  KEY `home_superiority_home_id_aaff5a7c_fk_home_home_id` (`home_id`) USING BTREE,
  CONSTRAINT `home_superiority_home_id_aaff5a7c_fk_home_home_id` FOREIGN KEY (`home_id`) REFERENCES `home_home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_superiority`
--

/*!40000 ALTER TABLE `home_superiority` DISABLE KEYS */;
INSERT INTO `home_superiority` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `title`, `description`, `home_id`) VALUES (1,'2020-04-13 16:53:37.051755','2020-04-13 16:53:37.051761',1,1,'upload/home/service/image/h1.png','技术保障','<p>技术保障</p>',1);
INSERT INTO `home_superiority` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `title`, `description`, `home_id`) VALUES (2,'2020-04-13 16:53:37.052279','2020-04-13 16:53:37.052283',1,2,'upload/home/service/image/h2.png','产品保障','<p>为客户提供全生命周期的产品</p>',1);
INSERT INTO `home_superiority` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `title`, `description`, `home_id`) VALUES (3,'2020-04-13 16:53:37.052766','2020-04-13 16:53:37.052770',1,3,'upload/home/service/image/h3.png','服务保障','<p>为客户提供全面的服务保</p>',1);
INSERT INTO `home_superiority` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `image`, `title`, `description`, `home_id`) VALUES (4,'2020-04-13 17:08:27.311144','2020-04-13 17:08:27.311150',1,4,'upload/home/service/image/h4.png','质量保障','<p>为客户提供满意的服务</p>',1);
/*!40000 ALTER TABLE `home_superiority` ENABLE KEYS */;

--
-- Table structure for table `oauth_oauthconfig`
--

DROP TABLE IF EXISTS `oauth_oauthconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appkey` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appsecret` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthconfig`
--

/*!40000 ALTER TABLE `oauth_oauthconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthconfig` ENABLE KEYS */;

--
-- Table structure for table `oauth_oauthuser`
--

DROP TABLE IF EXISTS `oauth_oauthuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nikename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matedata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` (`author_id`) USING BTREE,
  CONSTRAINT `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthuser`
--

/*!40000 ALTER TABLE `oauth_oauthuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthuser` ENABLE KEYS */;

--
-- Table structure for table `owntracks_owntracklog`
--

DROP TABLE IF EXISTS `owntracks_owntracklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owntracks_owntracklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owntracks_owntracklog`
--

/*!40000 ALTER TABLE `owntracks_owntracklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `owntracks_owntracklog` ENABLE KEYS */;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE,
  KEY `product_product_service_id_6a40bc0e_fk_service_service_id` (`service_id`) USING BTREE,
  CONSTRAINT `product_product_service_id_6a40bc0e_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`) VALUES (1,'2020-04-08 02:23:28.503134','2020-04-08 02:23:28.503141',1,'撒扥安赛飞','upload/project/thumb/2020/04/08/verify.png','<blockquote>\r\n<p>dgfs ## 撒<span style=\"color:#2ecc71\">旦</span><strong><span style=\"color:#2ecc71\">啃老 &gt; jsk</span>dfjk - jksdf</strong></p>\r\n</blockquote>','http://www.qdqtrj.com',1,2);
INSERT INTO `product_product` (`id`, `created_time`, `last_mod_time`, `is_enable`, `name`, `thumb`, `content`, `source_url`, `sequence`, `service_id`) VALUES (2,'2020-04-08 02:27:56.271494','2020-04-08 02:27:56.271502',1,'fghdjdfgj','upload/project/thumb/2020/04/08/verify_mpY5ynn.png','安赛飞\r\ngdfhfgh扥感到fdf的\r\n\r\n扥恒扥个\r\n\r\n封掉ghdf \r\n\r\n否戴风华\r\n\r\n很该df \r\n扥个h','http://www.qdqtrj.com',2,2);
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;

--
-- Table structure for table `product_product_tags`
--

DROP TABLE IF EXISTS `product_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_product_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `basetag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `product_product_tags_product_id_basetag_id_e77f0d36_uniq` (`product_id`,`basetag_id`) USING BTREE,
  KEY `product_product_tags_basetag_id_0583095b_fk_base_basetag_id` (`basetag_id`) USING BTREE,
  CONSTRAINT `product_product_tags_basetag_id_0583095b_fk_base_basetag_id` FOREIGN KEY (`basetag_id`) REFERENCES `base_basetag` (`id`),
  CONSTRAINT `product_product_tags_product_id_a72c644e_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product_tags`
--

/*!40000 ALTER TABLE `product_product_tags` DISABLE KEYS */;
INSERT INTO `product_product_tags` (`id`, `product_id`, `basetag_id`) VALUES (1,1,1);
INSERT INTO `product_product_tags` (`id`, `product_id`, `basetag_id`) VALUES (2,2,1);
/*!40000 ALTER TABLE `product_product_tags` ENABLE KEYS */;

--
-- Table structure for table `servermanager_commands`
--

DROP TABLE IF EXISTS `servermanager_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servermanager_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servermanager_commands`
--

/*!40000 ALTER TABLE `servermanager_commands` DISABLE KEYS */;
INSERT INTO `servermanager_commands` (`id`, `title`, `command`, `describe`, `created_time`, `last_mod_time`) VALUES (1,'清空缓存','clear_cache','清空缓存','2020-04-08 07:46:10.949632','2020-04-08 07:46:10.949662');
/*!40000 ALTER TABLE `servermanager_commands` ENABLE KEYS */;

--
-- Table structure for table `servermanager_emailsendlog`
--

DROP TABLE IF EXISTS `servermanager_emailsendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servermanager_emailsendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_result` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servermanager_emailsendlog`
--

/*!40000 ALTER TABLE `servermanager_emailsendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `servermanager_emailsendlog` ENABLE KEYS */;

--
-- Table structure for table `service_service`
--

DROP TABLE IF EXISTS `service_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slogan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sequence` (`sequence`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_service`
--

/*!40000 ALTER TABLE `service_service` DISABLE KEYS */;
INSERT INTO `service_service` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `description`, `thumb`, `slogan`, `content`) VALUES (1,'2020-04-07 09:43:56.692816','2020-04-07 09:43:56.692824',1,NULL,'萨芬的','安赛飞','verify.png','撒扥','东风赛风风');
INSERT INTO `service_service` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `description`, `thumb`, `slogan`, `content`) VALUES (2,'2020-04-07 10:30:26.324548','2020-04-07 10:30:26.324555',1,23,'撒扥','赛风','verify_4ktmVeV.png','东风','扥僧扥共扥风挡扥刚扥就扥\r\n\r\nsdfg dsfg\r\nds\r\n\r\n\r\n赛风\r\n\r\n\r\n赛风');
INSERT INTO `service_service` (`id`, `created_time`, `last_mod_time`, `is_enable`, `sequence`, `name`, `description`, `thumb`, `slogan`, `content`) VALUES (3,'2020-04-08 08:38:25.179905','2020-04-08 08:38:25.179912',1,NULL,'赛风东风','赛风风挡','verify_NxL6Y2l.png','费等痕等很等会','扥刚扥刚扥刚');
/*!40000 ALTER TABLE `service_service` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-15 21:23:14
