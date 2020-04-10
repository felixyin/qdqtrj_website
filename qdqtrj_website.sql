/*
 Navicat Premium Data Transfer

 Source Server         : 我的电脑
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : qdqtrj_website

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 10/04/2020 10:25:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about_about
-- ----------------------------
DROP TABLE IF EXISTS `about_about`;
CREATE TABLE `about_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `introduce` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qq` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wechat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_home` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `git_oschina` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of about_about
-- ----------------------------
BEGIN;
INSERT INTO `about_about` VALUES (1, '青岛前途软件技术有限公司', '森动', '17554153785', 'yinbin@qdqtrj.com', '1052921694', 'felixyin', 'http://www.qdqtrj.com', 'http://www.qdqtrj.com', 'http://www.qdqtrj.com');
COMMIT;

-- ----------------------------
-- Table structure for about_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `about_evaluation`;
CREATE TABLE `about_evaluation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `about_testimonials_about_id_225d54a6_fk_about_about_id` (`about_id`),
  CONSTRAINT `about_testimonials_about_id_225d54a6_fk_about_about_id` FOREIGN KEY (`about_id`) REFERENCES `about_about` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for about_ourclient
-- ----------------------------
DROP TABLE IF EXISTS `about_ourclient`;
CREATE TABLE `about_ourclient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `about_ourclient_about_id_859f6036_fk_about_about_id` (`about_id`),
  CONSTRAINT `about_ourclient_about_id_859f6036_fk_about_about_id` FOREIGN KEY (`about_id`) REFERENCES `about_about` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of about_ourclient
-- ----------------------------
BEGIN;
INSERT INTO `about_ourclient` VALUES (1, '2020-03-31 06:58:18.783375', '2020-03-31 06:58:18.783382', 1, NULL, 'upload/our_clients/verify.png', 'http://www.qdqtrj.com', 1);
INSERT INTO `about_ourclient` VALUES (2, '2020-03-31 06:58:18.783879', '2020-03-31 06:58:18.783884', 1, NULL, 'upload/our_clients/verify_SEmbHHZ.png', 'http://www.qdqtrj.com', 1);
INSERT INTO `about_ourclient` VALUES (3, '2020-03-31 06:58:18.784362', '2020-03-31 06:58:18.784367', 1, NULL, 'upload/our_clients/verify_EomJ4tL.png', 'http://www.qdqtrj.com', 1);
COMMIT;

-- ----------------------------
-- Table structure for about_teammember
-- ----------------------------
DROP TABLE IF EXISTS `about_teammember`;
CREATE TABLE `about_teammember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `about_teammember_about_id_4e066922_fk_about_about_id` (`about_id`),
  CONSTRAINT `about_teammember_about_id_4e066922_fk_about_about_id` FOREIGN KEY (`about_id`) REFERENCES `about_about` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of about_teammember
-- ----------------------------
BEGIN;
INSERT INTO `about_teammember` VALUES (1, '2020-03-31 06:58:18.788840', '2020-03-31 06:58:18.788846', 1, NULL, 'upload/team/2020/03/31/verify.png', 'jklsdf', 'jklsfd', 'jlksdf', 1);
INSERT INTO `about_teammember` VALUES (2, '2020-03-31 06:58:18.789411', '2020-03-31 06:58:18.789417', 1, NULL, 'upload/team/2020/03/31/verify_q7lfZnn.png', 'asfd', 'asdf', 'fdsg', 1);
INSERT INTO `about_teammember` VALUES (3, '2020-03-31 06:58:18.789961', '2020-03-31 06:58:18.789966', 1, NULL, 'upload/team/2020/03/31/verify_yc2Gz2b.png', 'dsfgsdfg', 'dsfgdf', 'dsfgdsfg', 1);
COMMIT;

-- ----------------------------
-- Table structure for accounts_bloguser
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser`;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of accounts_bloguser
-- ----------------------------
BEGIN;
INSERT INTO `accounts_bloguser` VALUES (1, 'test!q@w#eTYU', NULL, 0, '测试用户', '', '', 'test@test.com', 0, 1, '2020-03-30 11:58:11.769049', '', '2020-03-30 11:58:11.769055', '2020-03-30 11:58:11.769057', '');
INSERT INTO `accounts_bloguser` VALUES (2, 'pbkdf2_sha256$180000$PJuY0JSinBUS$W5UoAHkT9IMOhVuQ3j3G8A+hpnbDay4BRiH716dyYAM=', '2020-04-08 07:47:45.926685', 1, 'admin', '', '', '1052921694@qq.com', 1, 1, '2020-03-30 12:02:22.314053', '', '2020-03-30 12:02:22.314060', '2020-03-30 12:02:22.314063', '');
COMMIT;

-- ----------------------------
-- Table structure for accounts_bloguser_groups
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_groups`;
CREATE TABLE `accounts_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_bloguser_groups_bloguser_id_group_id_fc37e89b_uniq` (`bloguser_id`,`group_id`),
  KEY `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_bloguser_gr_bloguser_id_a16ccbb7_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_groups_group_id_98d76804_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for accounts_bloguser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `accounts_bloguser_user_permissions`;
CREATE TABLE `accounts_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_bloguser_user_p_bloguser_id_permission_i_14808777_uniq` (`bloguser_id`,`permission_id`),
  KEY `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_bloguser_us_bloguser_id_7e1b5742_fk_accounts_` FOREIGN KEY (`bloguser_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `accounts_bloguser_us_permission_id_ae5159b9_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add site', 6, 'add_site');
INSERT INTO `auth_permission` VALUES (22, 'Can change site', 6, 'change_site');
INSERT INTO `auth_permission` VALUES (23, 'Can delete site', 6, 'delete_site');
INSERT INTO `auth_permission` VALUES (24, 'Can view site', 6, 'view_site');
INSERT INTO `auth_permission` VALUES (25, 'Can add 网站配置', 7, 'add_blogsettings');
INSERT INTO `auth_permission` VALUES (26, 'Can change 网站配置', 7, 'change_blogsettings');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 网站配置', 7, 'delete_blogsettings');
INSERT INTO `auth_permission` VALUES (28, 'Can view 网站配置', 7, 'view_blogsettings');
INSERT INTO `auth_permission` VALUES (29, 'Can add 友情链接', 8, 'add_links');
INSERT INTO `auth_permission` VALUES (30, 'Can change 友情链接', 8, 'change_links');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 友情链接', 8, 'delete_links');
INSERT INTO `auth_permission` VALUES (32, 'Can view 友情链接', 8, 'view_links');
INSERT INTO `auth_permission` VALUES (33, 'Can add 侧边栏', 9, 'add_sidebar');
INSERT INTO `auth_permission` VALUES (34, 'Can change 侧边栏', 9, 'change_sidebar');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 侧边栏', 9, 'delete_sidebar');
INSERT INTO `auth_permission` VALUES (36, 'Can view 侧边栏', 9, 'view_sidebar');
INSERT INTO `auth_permission` VALUES (37, 'Can add 标签', 10, 'add_tag');
INSERT INTO `auth_permission` VALUES (38, 'Can change 标签', 10, 'change_tag');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 标签', 10, 'delete_tag');
INSERT INTO `auth_permission` VALUES (40, 'Can view 标签', 10, 'view_tag');
INSERT INTO `auth_permission` VALUES (41, 'Can add 分类', 11, 'add_category');
INSERT INTO `auth_permission` VALUES (42, 'Can change 分类', 11, 'change_category');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 分类', 11, 'delete_category');
INSERT INTO `auth_permission` VALUES (44, 'Can view 分类', 11, 'view_category');
INSERT INTO `auth_permission` VALUES (45, 'Can add 文章', 12, 'add_article');
INSERT INTO `auth_permission` VALUES (46, 'Can change 文章', 12, 'change_article');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 文章', 12, 'delete_article');
INSERT INTO `auth_permission` VALUES (48, 'Can view 文章', 12, 'view_article');
INSERT INTO `auth_permission` VALUES (49, 'Can add 用户', 13, 'add_bloguser');
INSERT INTO `auth_permission` VALUES (50, 'Can change 用户', 13, 'change_bloguser');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 用户', 13, 'delete_bloguser');
INSERT INTO `auth_permission` VALUES (52, 'Can view 用户', 13, 'view_bloguser');
INSERT INTO `auth_permission` VALUES (53, 'Can add 评论', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change 评论', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 评论', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view 评论', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add oauth配置', 15, 'add_oauthconfig');
INSERT INTO `auth_permission` VALUES (58, 'Can change oauth配置', 15, 'change_oauthconfig');
INSERT INTO `auth_permission` VALUES (59, 'Can delete oauth配置', 15, 'delete_oauthconfig');
INSERT INTO `auth_permission` VALUES (60, 'Can view oauth配置', 15, 'view_oauthconfig');
INSERT INTO `auth_permission` VALUES (61, 'Can add oauth用户', 16, 'add_oauthuser');
INSERT INTO `auth_permission` VALUES (62, 'Can change oauth用户', 16, 'change_oauthuser');
INSERT INTO `auth_permission` VALUES (63, 'Can delete oauth用户', 16, 'delete_oauthuser');
INSERT INTO `auth_permission` VALUES (64, 'Can view oauth用户', 16, 'view_oauthuser');
INSERT INTO `auth_permission` VALUES (65, 'Can add 命令', 17, 'add_commands');
INSERT INTO `auth_permission` VALUES (66, 'Can change 命令', 17, 'change_commands');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 命令', 17, 'delete_commands');
INSERT INTO `auth_permission` VALUES (68, 'Can view 命令', 17, 'view_commands');
INSERT INTO `auth_permission` VALUES (69, 'Can add 邮件发送log', 18, 'add_emailsendlog');
INSERT INTO `auth_permission` VALUES (70, 'Can change 邮件发送log', 18, 'change_emailsendlog');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 邮件发送log', 18, 'delete_emailsendlog');
INSERT INTO `auth_permission` VALUES (72, 'Can view 邮件发送log', 18, 'view_emailsendlog');
INSERT INTO `auth_permission` VALUES (73, 'Can add OwnTrackLogs', 19, 'add_owntracklog');
INSERT INTO `auth_permission` VALUES (74, 'Can change OwnTrackLogs', 19, 'change_owntracklog');
INSERT INTO `auth_permission` VALUES (75, 'Can delete OwnTrackLogs', 19, 'delete_owntracklog');
INSERT INTO `auth_permission` VALUES (76, 'Can view OwnTrackLogs', 19, 'view_owntracklog');
INSERT INTO `auth_permission` VALUES (77, 'Can add 关于信息', 20, 'add_about');
INSERT INTO `auth_permission` VALUES (78, 'Can change 关于信息', 20, 'change_about');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 关于信息', 20, 'delete_about');
INSERT INTO `auth_permission` VALUES (80, 'Can view 关于信息', 20, 'view_about');
INSERT INTO `auth_permission` VALUES (81, 'Can add 客户评价', 21, 'add_testimonials');
INSERT INTO `auth_permission` VALUES (82, 'Can change 客户评价', 21, 'change_testimonials');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 客户评价', 21, 'delete_testimonials');
INSERT INTO `auth_permission` VALUES (84, 'Can view 客户评价', 21, 'view_testimonials');
INSERT INTO `auth_permission` VALUES (85, 'Can add 我们的团队', 22, 'add_teammember');
INSERT INTO `auth_permission` VALUES (86, 'Can change 我们的团队', 22, 'change_teammember');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 我们的团队', 22, 'delete_teammember');
INSERT INTO `auth_permission` VALUES (88, 'Can view 我们的团队', 22, 'view_teammember');
INSERT INTO `auth_permission` VALUES (89, 'Can add 我们的客户', 23, 'add_ourclient');
INSERT INTO `auth_permission` VALUES (90, 'Can change 我们的客户', 23, 'change_ourclient');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 我们的客户', 23, 'delete_ourclient');
INSERT INTO `auth_permission` VALUES (92, 'Can view 我们的客户', 23, 'view_ourclient');
INSERT INTO `auth_permission` VALUES (93, 'Can add 服务', 24, 'add_service');
INSERT INTO `auth_permission` VALUES (94, 'Can change 服务', 24, 'change_service');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 服务', 24, 'delete_service');
INSERT INTO `auth_permission` VALUES (96, 'Can view 服务', 24, 'view_service');
INSERT INTO `auth_permission` VALUES (97, 'Can add 服务内容', 25, 'add_serviceitem');
INSERT INTO `auth_permission` VALUES (98, 'Can change 服务内容', 25, 'change_serviceitem');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 服务内容', 25, 'delete_serviceitem');
INSERT INTO `auth_permission` VALUES (100, 'Can view 服务内容', 25, 'view_serviceitem');
INSERT INTO `auth_permission` VALUES (101, 'Can add 服务流程和特点', 26, 'add_serverprocess');
INSERT INTO `auth_permission` VALUES (102, 'Can change 服务流程和特点', 26, 'change_serverprocess');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 服务流程和特点', 26, 'delete_serverprocess');
INSERT INTO `auth_permission` VALUES (104, 'Can view 服务流程和特点', 26, 'view_serverprocess');
INSERT INTO `auth_permission` VALUES (105, 'Can add 项目', 27, 'add_project');
INSERT INTO `auth_permission` VALUES (106, 'Can change 项目', 27, 'change_project');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 项目', 27, 'delete_project');
INSERT INTO `auth_permission` VALUES (108, 'Can view 项目', 27, 'view_project');
INSERT INTO `auth_permission` VALUES (109, 'Can add 项目技术标签', 28, 'add_projecttag');
INSERT INTO `auth_permission` VALUES (110, 'Can change 项目技术标签', 28, 'change_projecttag');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 项目技术标签', 28, 'delete_projecttag');
INSERT INTO `auth_permission` VALUES (112, 'Can view 项目技术标签', 28, 'view_projecttag');
INSERT INTO `auth_permission` VALUES (113, 'Can add 项目附件', 29, 'add_projectattach');
INSERT INTO `auth_permission` VALUES (114, 'Can change 项目附件', 29, 'change_projectattach');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 项目附件', 29, 'delete_projectattach');
INSERT INTO `auth_permission` VALUES (116, 'Can view 项目附件', 29, 'view_projectattach');
INSERT INTO `auth_permission` VALUES (117, 'Can add 主页', 30, 'add_home');
INSERT INTO `auth_permission` VALUES (118, 'Can change 主页', 30, 'change_home');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 主页', 30, 'delete_home');
INSERT INTO `auth_permission` VALUES (120, 'Can view 主页', 30, 'view_home');
INSERT INTO `auth_permission` VALUES (121, 'Can add 主页我们的优势', 31, 'add_homesuperiority');
INSERT INTO `auth_permission` VALUES (122, 'Can change 主页我们的优势', 31, 'change_homesuperiority');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 主页我们的优势', 31, 'delete_homesuperiority');
INSERT INTO `auth_permission` VALUES (124, 'Can view 主页我们的优势', 31, 'view_homesuperiority');
INSERT INTO `auth_permission` VALUES (125, 'Can add 主页跑马灯', 32, 'add_homecarousel');
INSERT INTO `auth_permission` VALUES (126, 'Can change 主页跑马灯', 32, 'change_homecarousel');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 主页跑马灯', 32, 'delete_homecarousel');
INSERT INTO `auth_permission` VALUES (128, 'Can view 主页跑马灯', 32, 'view_homecarousel');
INSERT INTO `auth_permission` VALUES (129, 'Can add 附件', 33, 'add_baseattach');
INSERT INTO `auth_permission` VALUES (130, 'Can change 附件', 33, 'change_baseattach');
INSERT INTO `auth_permission` VALUES (131, 'Can delete 附件', 33, 'delete_baseattach');
INSERT INTO `auth_permission` VALUES (132, 'Can view 附件', 33, 'view_baseattach');
INSERT INTO `auth_permission` VALUES (133, 'Can add 标签', 34, 'add_basetag');
INSERT INTO `auth_permission` VALUES (134, 'Can change 标签', 34, 'change_basetag');
INSERT INTO `auth_permission` VALUES (135, 'Can delete 标签', 34, 'delete_basetag');
INSERT INTO `auth_permission` VALUES (136, 'Can view 标签', 34, 'view_basetag');
INSERT INTO `auth_permission` VALUES (137, 'Can add 客户评价', 21, 'add_evaluation');
INSERT INTO `auth_permission` VALUES (138, 'Can change 客户评价', 21, 'change_evaluation');
INSERT INTO `auth_permission` VALUES (139, 'Can delete 客户评价', 21, 'delete_evaluation');
INSERT INTO `auth_permission` VALUES (140, 'Can view 客户评价', 21, 'view_evaluation');
INSERT INTO `auth_permission` VALUES (141, 'Can add 项目', 35, 'add_case');
INSERT INTO `auth_permission` VALUES (142, 'Can change 项目', 35, 'change_case');
INSERT INTO `auth_permission` VALUES (143, 'Can delete 项目', 35, 'delete_case');
INSERT INTO `auth_permission` VALUES (144, 'Can view 项目', 35, 'view_case');
INSERT INTO `auth_permission` VALUES (145, 'Can add 项目', 36, 'add_product');
INSERT INTO `auth_permission` VALUES (146, 'Can change 项目', 36, 'change_product');
INSERT INTO `auth_permission` VALUES (147, 'Can delete 项目', 36, 'delete_product');
INSERT INTO `auth_permission` VALUES (148, 'Can view 项目', 36, 'view_product');
INSERT INTO `auth_permission` VALUES (149, 'Can add category', 37, 'add_category');
INSERT INTO `auth_permission` VALUES (150, 'Can change category', 37, 'change_category');
INSERT INTO `auth_permission` VALUES (151, 'Can delete category', 37, 'delete_category');
INSERT INTO `auth_permission` VALUES (152, 'Can view category', 37, 'view_category');
INSERT INTO `auth_permission` VALUES (153, 'Can add 在线留言', 38, 'add_message');
INSERT INTO `auth_permission` VALUES (154, 'Can change 在线留言', 38, 'change_message');
INSERT INTO `auth_permission` VALUES (155, 'Can delete 在线留言', 38, 'delete_message');
INSERT INTO `auth_permission` VALUES (156, 'Can view 在线留言', 38, 'view_message');
INSERT INTO `auth_permission` VALUES (157, 'Can add 网站配置', 39, 'add_blogsettings');
INSERT INTO `auth_permission` VALUES (158, 'Can change 网站配置', 39, 'change_blogsettings');
INSERT INTO `auth_permission` VALUES (159, 'Can delete 网站配置', 39, 'delete_blogsettings');
INSERT INTO `auth_permission` VALUES (160, 'Can view 网站配置', 39, 'view_blogsettings');
INSERT INTO `auth_permission` VALUES (161, 'Can add 网站配置', 39, 'add_websettings');
INSERT INTO `auth_permission` VALUES (162, 'Can change 网站配置', 39, 'change_websettings');
INSERT INTO `auth_permission` VALUES (163, 'Can delete 网站配置', 39, 'delete_websettings');
INSERT INTO `auth_permission` VALUES (164, 'Can view 网站配置', 39, 'view_websettings');
INSERT INTO `auth_permission` VALUES (165, 'Can add 在线留言', 40, 'add_message');
INSERT INTO `auth_permission` VALUES (166, 'Can change 在线留言', 40, 'change_message');
INSERT INTO `auth_permission` VALUES (167, 'Can delete 在线留言', 40, 'delete_message');
INSERT INTO `auth_permission` VALUES (168, 'Can view 在线留言', 40, 'view_message');
COMMIT;

-- ----------------------------
-- Table structure for base_baseattach
-- ----------------------------
DROP TABLE IF EXISTS `base_baseattach`;
CREATE TABLE `base_baseattach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for base_basetag
-- ----------------------------
DROP TABLE IF EXISTS `base_basetag`;
CREATE TABLE `base_basetag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of base_basetag
-- ----------------------------
BEGIN;
INSERT INTO `base_basetag` VALUES (1, '2020-04-08 02:21:58.461706', '2020-04-08 02:21:58.461714', 1, 1, 'sdf', 'sadf');
COMMIT;

-- ----------------------------
-- Table structure for base_message
-- ----------------------------
DROP TABLE IF EXISTS `base_message`;
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
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of base_message
-- ----------------------------
BEGIN;
INSERT INTO `base_message` VALUES (1, '2020-04-08 09:45:01.144758', '2020-04-08 09:45:01.144768', 1, NULL, '', '17554153785', '', NULL, NULL, '');
INSERT INTO `base_message` VALUES (2, '2020-04-08 09:45:47.581394', '2020-04-08 09:45:47.581403', 1, NULL, '', '17554153785', 'dsfg', NULL, NULL, '');
INSERT INTO `base_message` VALUES (3, '2020-04-08 09:48:05.914224', '2020-04-08 09:48:05.914236', 1, NULL, '', '17554153785', 'dsfg', NULL, NULL, 'dfsgsdf');
COMMIT;

-- ----------------------------
-- Table structure for base_websettings
-- ----------------------------
DROP TABLE IF EXISTS `base_websettings`;
CREATE TABLE `base_websettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_sub_length` int(11) NOT NULL,
  `sidebar_article_count` int(11) NOT NULL,
  `sidebar_comment_count` int(11) NOT NULL,
  `show_google_adsense` tinyint(1) NOT NULL,
  `google_adsense_codes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_site_comment` tinyint(1) NOT NULL,
  `beiancode` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `analyticscode` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_gongan_code` tinyint(1) NOT NULL,
  `gongan_beiancode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_path` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_seo_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blogname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of base_websettings
-- ----------------------------
BEGIN;
INSERT INTO `base_websettings` VALUES (1, '青岛前途软件技术有限公司', '青岛前途软件技术有限公司', '青岛前途软件技术有限公司', '青岛前途软件技术有限公司,尹彬博客', 300, 10, 5, 0, '', 1, NULL, 'var a=1;', 0, '', '/var/www/resource/', '尹彬的博客', '尹彬的博客', '尹彬的博客', '尹彬的博客');
COMMIT;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
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
  `views` int(10) unsigned NOT NULL CHECK (`views` >= 0),
  `article_order` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `blog_article_author_id_905add38_fk_accounts_bloguser_id` (`author_id`),
  KEY `blog_article_category_id_7e38f15e_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_article_author_id_905add38_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `blog_article_category_id_7e38f15e_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
BEGIN;
INSERT INTO `blog_article` VALUES (1, '2020-03-30 11:58:12.001883', '2020-03-30 11:58:12.001890', 'nice title 1', 'nice content 1', '2020-03-30 11:58:12.001896', 'p', 'o', 'a', 12, 0, 1, 2);
INSERT INTO `blog_article` VALUES (2, '2020-03-30 11:58:12.645011', '2020-03-30 11:58:12.645018', 'nice title 2', 'nice content 2', '2020-03-30 11:58:12.645023', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (3, '2020-03-30 11:58:12.953059', '2020-03-30 11:58:12.953066', 'nice title 3', 'nice content 3', '2020-03-30 11:58:12.953070', 'p', 'o', 'a', 3, 0, 1, 2);
INSERT INTO `blog_article` VALUES (4, '2020-03-30 11:58:13.088934', '2020-03-30 11:58:13.088941', 'nice title 4', 'nice content 4', '2020-03-30 11:58:13.088946', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (5, '2020-03-30 11:58:13.252477', '2020-03-30 11:58:13.252484', 'nice title 5', 'nice content 5', '2020-03-30 11:58:13.252489', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (6, '2020-03-30 11:58:13.409669', '2020-03-30 11:58:13.409676', 'nice title 6', 'nice content 6', '2020-03-30 11:58:13.409681', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (7, '2020-03-30 11:58:13.555133', '2020-03-30 11:58:13.555140', 'nice title 7', 'nice content 7', '2020-03-30 11:58:13.555145', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (8, '2020-03-30 11:58:13.901197', '2020-03-30 11:58:13.901204', 'nice title 8', 'nice content 8', '2020-03-30 11:58:13.901208', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (9, '2020-03-30 11:58:14.040513', '2020-03-30 11:58:14.040520', 'nice title 9', 'nice content 9', '2020-03-30 11:58:14.040525', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (10, '2020-03-30 11:58:14.204110', '2020-03-30 11:58:14.204117', 'nice title 10', 'nice content 10', '2020-03-30 11:58:14.204121', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (11, '2020-03-30 11:58:14.346991', '2020-03-30 11:58:14.346998', 'nice title 11', 'nice content 11', '2020-03-30 11:58:14.347003', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (12, '2020-03-30 11:58:14.481217', '2020-03-30 11:58:14.481224', 'nice title 12', 'nice content 12', '2020-03-30 11:58:14.481228', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (13, '2020-03-30 11:58:14.646464', '2020-03-30 11:58:14.646471', 'nice title 13', 'nice content 13', '2020-03-30 11:58:14.646475', 'p', 'o', 'a', 2, 0, 1, 2);
INSERT INTO `blog_article` VALUES (14, '2020-03-30 11:58:14.786066', '2020-03-30 11:58:14.786073', 'nice title 14', 'nice content 14', '2020-03-30 11:58:14.786077', 'p', 'o', 'a', 0, 0, 1, 2);
INSERT INTO `blog_article` VALUES (15, '2020-03-30 11:58:14.968291', '2020-03-30 11:58:14.968298', 'nice title 15', 'nice content 15', '2020-03-30 11:58:14.968303', 'p', 'o', 'a', 8, 0, 1, 2);
INSERT INTO `blog_article` VALUES (16, '2020-03-30 11:58:15.111802', '2020-03-30 11:58:15.111808', 'nice title 16', 'nice content 16', '2020-03-30 11:58:15.111813', 'p', 'o', 'a', 24, 0, 1, 2);
INSERT INTO `blog_article` VALUES (17, '2020-03-30 11:58:15.260152', '2020-03-30 11:58:15.260160', 'nice title 17', 'nice content 17', '2020-03-30 11:58:15.260165', 'p', 'o', 'a', 22, 0, 1, 2);
INSERT INTO `blog_article` VALUES (18, '2020-03-30 11:58:15.468638', '2020-03-30 11:58:15.468645', 'nice title 18', 'nice content 18', '2020-03-30 11:58:15.468650', 'p', 'o', 'a', 56, 0, 1, 2);
INSERT INTO `blog_article` VALUES (19, '2020-03-30 11:58:15.618490', '2020-03-30 11:58:15.618497', 'nice title 19', 'nice content 19![](/media/editor/verify_20200408185704706516.png)', '2020-03-30 11:58:15.000000', 'p', 'o', 'a', 18, 0, 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for blog_article_tags
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_tags`;
CREATE TABLE `blog_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_article_tags_article_id_tag_id_b78a22e9_uniq` (`article_id`,`tag_id`),
  KEY `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_article_tags_article_id_82c02dd6_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `blog_article_tags_tag_id_88eb3ed9_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_article_tags
-- ----------------------------
BEGIN;
INSERT INTO `blog_article_tags` VALUES (2, 1, 1);
INSERT INTO `blog_article_tags` VALUES (1, 1, 2);
INSERT INTO `blog_article_tags` VALUES (4, 2, 1);
INSERT INTO `blog_article_tags` VALUES (3, 2, 3);
INSERT INTO `blog_article_tags` VALUES (6, 3, 1);
INSERT INTO `blog_article_tags` VALUES (5, 3, 4);
INSERT INTO `blog_article_tags` VALUES (8, 4, 1);
INSERT INTO `blog_article_tags` VALUES (7, 4, 5);
INSERT INTO `blog_article_tags` VALUES (10, 5, 1);
INSERT INTO `blog_article_tags` VALUES (9, 5, 6);
INSERT INTO `blog_article_tags` VALUES (12, 6, 1);
INSERT INTO `blog_article_tags` VALUES (11, 6, 7);
INSERT INTO `blog_article_tags` VALUES (14, 7, 1);
INSERT INTO `blog_article_tags` VALUES (13, 7, 8);
INSERT INTO `blog_article_tags` VALUES (16, 8, 1);
INSERT INTO `blog_article_tags` VALUES (15, 8, 9);
INSERT INTO `blog_article_tags` VALUES (18, 9, 1);
INSERT INTO `blog_article_tags` VALUES (17, 9, 10);
INSERT INTO `blog_article_tags` VALUES (20, 10, 1);
INSERT INTO `blog_article_tags` VALUES (19, 10, 11);
INSERT INTO `blog_article_tags` VALUES (22, 11, 1);
INSERT INTO `blog_article_tags` VALUES (21, 11, 12);
INSERT INTO `blog_article_tags` VALUES (24, 12, 1);
INSERT INTO `blog_article_tags` VALUES (23, 12, 13);
INSERT INTO `blog_article_tags` VALUES (26, 13, 1);
INSERT INTO `blog_article_tags` VALUES (25, 13, 14);
INSERT INTO `blog_article_tags` VALUES (28, 14, 1);
INSERT INTO `blog_article_tags` VALUES (27, 14, 15);
INSERT INTO `blog_article_tags` VALUES (30, 15, 1);
INSERT INTO `blog_article_tags` VALUES (29, 15, 16);
INSERT INTO `blog_article_tags` VALUES (32, 16, 1);
INSERT INTO `blog_article_tags` VALUES (31, 16, 17);
INSERT INTO `blog_article_tags` VALUES (34, 17, 1);
INSERT INTO `blog_article_tags` VALUES (33, 17, 18);
INSERT INTO `blog_article_tags` VALUES (36, 18, 1);
INSERT INTO `blog_article_tags` VALUES (35, 18, 19);
INSERT INTO `blog_article_tags` VALUES (38, 19, 1);
INSERT INTO `blog_article_tags` VALUES (37, 19, 20);
COMMIT;

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` (`parent_category_id`),
  KEY `blog_category_slug_92643dc5` (`slug`),
  CONSTRAINT `blog_category_parent_category_id_f50c3c0c_fk_blog_category_id` FOREIGN KEY (`parent_category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_category
-- ----------------------------
BEGIN;
INSERT INTO `blog_category` VALUES (1, '2020-03-30 11:58:11.840017', '2020-03-30 11:58:11.840025', '我是父类目', 'wo-shi-fu-lei-mu', NULL);
INSERT INTO `blog_category` VALUES (2, '2020-03-30 11:58:11.884001', '2020-03-30 11:58:11.884008', '子类目', 'zi-lei-mu', 1);
COMMIT;

-- ----------------------------
-- Table structure for blog_links
-- ----------------------------
DROP TABLE IF EXISTS `blog_links`;
CREATE TABLE `blog_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `show_type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for blog_sidebar
-- ----------------------------
DROP TABLE IF EXISTS `blog_sidebar`;
CREATE TABLE `blog_sidebar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `blog_tag_slug_01068d0e` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
BEGIN;
INSERT INTO `blog_tag` VALUES (1, '2020-03-30 11:58:11.958367', '2020-03-30 11:58:11.958376', '标签', 'biao-qian');
INSERT INTO `blog_tag` VALUES (2, '2020-03-30 11:58:12.544456', '2020-03-30 11:58:12.544463', '标签1', 'biao-qian-1');
INSERT INTO `blog_tag` VALUES (3, '2020-03-30 11:58:12.713422', '2020-03-30 11:58:12.713429', '标签2', 'biao-qian-2');
INSERT INTO `blog_tag` VALUES (4, '2020-03-30 11:58:13.000870', '2020-03-30 11:58:13.000877', '标签3', 'biao-qian-3');
INSERT INTO `blog_tag` VALUES (5, '2020-03-30 11:58:13.142677', '2020-03-30 11:58:13.142683', '标签4', 'biao-qian-4');
INSERT INTO `blog_tag` VALUES (6, '2020-03-30 11:58:13.307480', '2020-03-30 11:58:13.307487', '标签5', 'biao-qian-5');
INSERT INTO `blog_tag` VALUES (7, '2020-03-30 11:58:13.457634', '2020-03-30 11:58:13.457640', '标签6', 'biao-qian-6');
INSERT INTO `blog_tag` VALUES (8, '2020-03-30 11:58:13.801430', '2020-03-30 11:58:13.801438', '标签7', 'biao-qian-7');
INSERT INTO `blog_tag` VALUES (9, '2020-03-30 11:58:13.953399', '2020-03-30 11:58:13.953405', '标签8', 'biao-qian-8');
INSERT INTO `blog_tag` VALUES (10, '2020-03-30 11:58:14.097037', '2020-03-30 11:58:14.097044', '标签9', 'biao-qian-9');
INSERT INTO `blog_tag` VALUES (11, '2020-03-30 11:58:14.255214', '2020-03-30 11:58:14.255221', '标签10', 'biao-qian-10');
INSERT INTO `blog_tag` VALUES (12, '2020-03-30 11:58:14.394433', '2020-03-30 11:58:14.394442', '标签11', 'biao-qian-11');
INSERT INTO `blog_tag` VALUES (13, '2020-03-30 11:58:14.546304', '2020-03-30 11:58:14.546311', '标签12', 'biao-qian-12');
INSERT INTO `blog_tag` VALUES (14, '2020-03-30 11:58:14.699034', '2020-03-30 11:58:14.699041', '标签13', 'biao-qian-13');
INSERT INTO `blog_tag` VALUES (15, '2020-03-30 11:58:14.839388', '2020-03-30 11:58:14.839395', '标签14', 'biao-qian-14');
INSERT INTO `blog_tag` VALUES (16, '2020-03-30 11:58:15.019751', '2020-03-30 11:58:15.019758', '标签15', 'biao-qian-15');
INSERT INTO `blog_tag` VALUES (17, '2020-03-30 11:58:15.167924', '2020-03-30 11:58:15.167932', '标签16', 'biao-qian-16');
INSERT INTO `blog_tag` VALUES (18, '2020-03-30 11:58:15.354407', '2020-03-30 11:58:15.354414', '标签17', 'biao-qian-17');
INSERT INTO `blog_tag` VALUES (19, '2020-03-30 11:58:15.530277', '2020-03-30 11:58:15.530285', '标签18', 'biao-qian-18');
INSERT INTO `blog_tag` VALUES (20, '2020-03-30 11:58:15.671770', '2020-03-30 11:58:15.671777', '标签19', 'biao-qian-19');
COMMIT;

-- ----------------------------
-- Table structure for case_case
-- ----------------------------
DROP TABLE IF EXISTS `case_case`;
CREATE TABLE `case_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `case_case_service_id_f17d4031_fk_service_service_id` (`service_id`),
  KEY `case_case_category_id_d6e2f859_fk_case_category_id` (`category_id`),
  CONSTRAINT `case_case_category_id_d6e2f859_fk_case_category_id` FOREIGN KEY (`category_id`) REFERENCES `case_category` (`id`),
  CONSTRAINT `case_case_service_id_f17d4031_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of case_case
-- ----------------------------
BEGIN;
INSERT INTO `case_case` VALUES (1, '2020-04-08 03:07:43.869433', '2020-04-08 03:07:43.869440', 1, 'sad分', '东风', 'upload/case/thumb/2020/04/08/verify.png', '赛风赛风', NULL, 1, NULL, 2);
INSERT INTO `case_case` VALUES (2, '2020-04-08 03:08:02.464916', '2020-04-08 03:08:02.464925', 1, 'sdfg', 'dsfgdsfg', 'upload/case/thumb/2020/04/08/verify_brruUIz.png', 'dfsgdsfgdfg', NULL, 2, NULL, 3);
INSERT INTO `case_case` VALUES (3, '2020-04-08 03:08:20.987784', '2020-04-08 03:08:20.987791', 1, 'ghfj', 'dsfgdsfg', 'upload/case/thumb/2020/04/08/verify_HvTusl7.png', 'fghjghj', NULL, 3, NULL, 1);
INSERT INTO `case_case` VALUES (4, '2020-04-08 03:08:38.429963', '2020-04-08 03:08:38.429971', 1, 'fghj', 'gfhjhjkl', 'upload/case/thumb/2020/04/08/verify_bl1SKnT.png', 'jkhluy', NULL, 5, NULL, 2);
COMMIT;

-- ----------------------------
-- Table structure for case_case_related_cases
-- ----------------------------
DROP TABLE IF EXISTS `case_case_related_cases`;
CREATE TABLE `case_case_related_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_case_id` int(11) NOT NULL,
  `to_case_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `case_case_related_cases_from_case_id_to_case_id_6ad1f5bc_uniq` (`from_case_id`,`to_case_id`),
  KEY `case_case_related_cases_to_case_id_128d9010_fk_case_case_id` (`to_case_id`),
  CONSTRAINT `case_case_related_cases_from_case_id_441f79e5_fk_case_case_id` FOREIGN KEY (`from_case_id`) REFERENCES `case_case` (`id`),
  CONSTRAINT `case_case_related_cases_to_case_id_128d9010_fk_case_case_id` FOREIGN KEY (`to_case_id`) REFERENCES `case_case` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for case_category
-- ----------------------------
DROP TABLE IF EXISTS `case_category`;
CREATE TABLE `case_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of case_category
-- ----------------------------
BEGIN;
INSERT INTO `case_category` VALUES (1, '2020-04-08 03:06:45.441469', '2020-04-08 03:06:45.441476', 1, '撒扥', 1);
INSERT INTO `case_category` VALUES (2, '2020-04-08 03:06:48.562478', '2020-04-08 03:06:48.562485', 1, '付东风', 2);
INSERT INTO `case_category` VALUES (3, '2020-04-08 03:06:52.673552', '2020-04-08 03:06:52.673560', 1, '东风', 3);
INSERT INTO `case_category` VALUES (4, '2020-04-08 03:07:00.546931', '2020-04-08 03:07:00.546938', 1, '43东风', 5);
INSERT INTO `case_category` VALUES (5, '2020-04-08 03:07:08.187467', '2020-04-08 03:07:08.187474', 1, '僧发的', 6);
COMMIT;

-- ----------------------------
-- Table structure for comments_comment
-- ----------------------------
DROP TABLE IF EXISTS `comments_comment`;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_article_id_94fe60a2_fk_blog_article_id` (`article_id`),
  KEY `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` (`author_id`),
  KEY `comments_comment_parent_comment_id_71289d4a_fk_comments_` (`parent_comment_id`),
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`),
  CONSTRAINT `comments_comment_author_id_334ce9e2_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`),
  CONSTRAINT `comments_comment_parent_comment_id_71289d4a_fk_comments_` FOREIGN KEY (`parent_comment_id`) REFERENCES `comments_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments_comment
-- ----------------------------
BEGIN;
INSERT INTO `comments_comment` VALUES (1, 'dfaf', '2020-04-08 05:50:40.733128', '2020-04-08 05:50:40.733137', 1, 18, 2, NULL);
INSERT INTO `comments_comment` VALUES (2, 'fdssf', '2020-04-08 05:50:49.979249', '2020-04-08 05:50:49.979258', 1, 18, 2, 1);
INSERT INTO `comments_comment` VALUES (3, 'gddh', '2020-04-08 05:50:55.263682', '2020-04-08 05:50:55.263691', 1, 18, 2, 2);
INSERT INTO `comments_comment` VALUES (4, 'jghgg', '2020-04-08 05:50:59.966073', '2020-04-08 05:50:59.966082', 1, 18, 2, 3);
INSERT INTO `comments_comment` VALUES (5, 'gjggj', '2020-04-08 05:51:04.612204', '2020-04-08 05:51:04.612213', 1, 18, 2, 4);
INSERT INTO `comments_comment` VALUES (6, 'fhfh', '2020-04-08 05:51:10.461773', '2020-04-08 05:51:10.461782', 1, 18, 2, 5);
INSERT INTO `comments_comment` VALUES (7, 'hjhg', '2020-04-08 05:51:15.086010', '2020-04-08 05:51:15.086018', 1, 18, 2, 6);
INSERT INTO `comments_comment` VALUES (8, 'jhgghjgjghj', '2020-04-08 05:51:24.760799', '2020-04-08 05:51:24.760807', 1, 18, 2, 1);
INSERT INTO `comments_comment` VALUES (9, 'gkhkgghkghk', '2020-04-08 05:51:31.419494', '2020-04-08 05:51:31.419503', 1, 18, 2, 3);
INSERT INTO `comments_comment` VALUES (10, 'ghkkkgghjk', '2020-04-08 05:51:39.857556', '2020-04-08 05:51:39.857564', 1, 18, 2, 4);
INSERT INTO `comments_comment` VALUES (11, 'hjhjhjk', '2020-04-08 05:51:45.268515', '2020-04-08 05:51:45.268524', 1, 18, 2, 2);
INSERT INTO `comments_comment` VALUES (12, 'gfghjghgh', '2020-04-08 05:51:59.012483', '2020-04-08 05:51:59.012492', 1, 18, 2, 8);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2020-03-30 12:37:16.317833', '2', '主页', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (2)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (3)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u8dd1\\u9a6c\\u706f\", \"object\": \"HomeCarousel object (4)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (1)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (2)\"}}, {\"added\": {\"name\": \"\\u4e3b\\u9875\\u6211\\u4eec\\u7684\\u4f18\\u52bf\", \"object\": \"HomeSuperiority object (3)\"}}]', 30, 2);
INSERT INTO `django_admin_log` VALUES (2, '2020-03-31 06:58:18.914634', '1', 'http://www.qdqtrj.com', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (1)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (2)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u5ba2\\u6237\", \"object\": \"OurClient object (3)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (1)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (2)\"}}, {\"added\": {\"name\": \"\\u6211\\u4eec\\u7684\\u56e2\\u961f\", \"object\": \"TeamMember object (3)\"}}]', 20, 2);
INSERT INTO `django_admin_log` VALUES (3, '2020-04-07 04:33:38.885191', '2', '主页', 2, '[]', 30, 2);
INSERT INTO `django_admin_log` VALUES (4, '2020-04-07 09:43:56.757263', '1', '萨芬的', 1, '[{\"added\": {}}]', 24, 2);
INSERT INTO `django_admin_log` VALUES (5, '2020-04-07 10:30:26.402554', '2', '撒扥', 1, '[{\"added\": {}}]', 24, 2);
INSERT INTO `django_admin_log` VALUES (6, '2020-04-08 02:21:58.512697', '1', 'sdf', 1, '[{\"added\": {}}]', 34, 2);
INSERT INTO `django_admin_log` VALUES (7, '2020-04-08 02:23:28.573182', '1', '撒扥安赛飞', 1, '[{\"added\": {}}]', 36, 2);
INSERT INTO `django_admin_log` VALUES (8, '2020-04-08 02:27:56.342578', '2', 'fghdjdfgj', 1, '[{\"added\": {}}]', 36, 2);
INSERT INTO `django_admin_log` VALUES (9, '2020-04-08 03:06:45.456928', '1', '撒扥', 1, '[{\"added\": {}}]', 37, 2);
INSERT INTO `django_admin_log` VALUES (10, '2020-04-08 03:06:48.566985', '2', '付东风', 1, '[{\"added\": {}}]', 37, 2);
INSERT INTO `django_admin_log` VALUES (11, '2020-04-08 03:06:52.677934', '3', '东风', 1, '[{\"added\": {}}]', 37, 2);
INSERT INTO `django_admin_log` VALUES (12, '2020-04-08 03:07:00.551215', '4', '43东风', 1, '[{\"added\": {}}]', 37, 2);
INSERT INTO `django_admin_log` VALUES (13, '2020-04-08 03:07:08.191931', '5', '僧发的', 1, '[{\"added\": {}}]', 37, 2);
INSERT INTO `django_admin_log` VALUES (14, '2020-04-08 03:07:43.949683', '1', 'sad分', 1, '[{\"added\": {}}]', 35, 2);
INSERT INTO `django_admin_log` VALUES (15, '2020-04-08 03:08:02.482632', '2', 'sdfg', 1, '[{\"added\": {}}]', 35, 2);
INSERT INTO `django_admin_log` VALUES (16, '2020-04-08 03:08:20.997811', '3', 'ghfj', 1, '[{\"added\": {}}]', 35, 2);
INSERT INTO `django_admin_log` VALUES (17, '2020-04-08 03:08:38.440318', '4', 'fghj', 1, '[{\"added\": {}}]', 35, 2);
INSERT INTO `django_admin_log` VALUES (18, '2020-04-08 07:27:59.992547', '1', '青岛前途软件技术有限公司', 2, '[{\"changed\": {\"fields\": [\"\\u535a\\u5ba2\\u540d\\u79f0\", \"\\u535a\\u5ba2\\u63cf\\u8ff0\", \"\\u535a\\u5ba2SEO\\u63cf\\u8ff0\", \"\\u535a\\u5ba2\\u5173\\u952e\\u5b57\", \"\\u7f51\\u7ad9\\u7edf\\u8ba1\\u4ee3\\u7801\"]}}]', 39, 2);
INSERT INTO `django_admin_log` VALUES (19, '2020-04-08 07:46:10.959040', '1', '清空缓存', 1, '[{\"added\": {}}]', 17, 2);
INSERT INTO `django_admin_log` VALUES (20, '2020-04-08 07:46:58.138086', '23', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (21, '2020-04-08 07:46:58.138912', '22', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (22, '2020-04-08 07:46:58.139633', '21', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (23, '2020-04-08 07:46:58.140333', '20', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (24, '2020-04-08 07:46:58.141057', '19', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (25, '2020-04-08 07:46:58.141749', '18', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (26, '2020-04-08 07:46:58.142700', '17', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (27, '2020-04-08 07:46:58.143586', '16', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (28, '2020-04-08 07:46:58.144332', '15', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (29, '2020-04-08 07:46:58.145053', '14', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (30, '2020-04-08 07:46:58.145754', '13', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (31, '2020-04-08 07:46:58.146459', '12', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (32, '2020-04-08 07:46:58.147138', '11', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (33, '2020-04-08 07:46:58.147855', '10', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (34, '2020-04-08 07:46:58.148572', '9', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (35, '2020-04-08 07:46:58.149279', '8', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (36, '2020-04-08 07:46:58.149985', '7', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (37, '2020-04-08 07:46:58.150660', '6', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (38, '2020-04-08 07:46:58.151331', '5', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (39, '2020-04-08 07:46:58.152004', '4', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (40, '2020-04-08 07:46:58.152680', '3', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (41, '2020-04-08 07:46:58.153349', '2', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (42, '2020-04-08 07:46:58.154012', '1', '感谢您发表的评论', 3, '', 18, 2);
INSERT INTO `django_admin_log` VALUES (43, '2020-04-08 07:55:00.823480', '10', 'Message object (10)', 3, '', 38, 2);
INSERT INTO `django_admin_log` VALUES (44, '2020-04-08 07:55:00.833830', '9', 'Message object (9)', 3, '', 38, 2);
INSERT INTO `django_admin_log` VALUES (45, '2020-04-08 07:55:00.834747', '8', 'Message object (8)', 3, '', 38, 2);
INSERT INTO `django_admin_log` VALUES (46, '2020-04-08 08:38:25.333160', '3', '赛风东风', 1, '[{\"added\": {}}]', 24, 2);
INSERT INTO `django_admin_log` VALUES (47, '2020-04-08 10:57:21.705874', '19', 'nice title 19', 2, '[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\", \"\\u4f5c\\u8005\"]}}]', 12, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (20, 'about', 'about');
INSERT INTO `django_content_type` VALUES (21, 'about', 'evaluation');
INSERT INTO `django_content_type` VALUES (38, 'about', 'message');
INSERT INTO `django_content_type` VALUES (23, 'about', 'ourclient');
INSERT INTO `django_content_type` VALUES (22, 'about', 'teammember');
INSERT INTO `django_content_type` VALUES (13, 'accounts', 'bloguser');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (33, 'base', 'baseattach');
INSERT INTO `django_content_type` VALUES (34, 'base', 'basetag');
INSERT INTO `django_content_type` VALUES (40, 'base', 'message');
INSERT INTO `django_content_type` VALUES (39, 'base', 'websettings');
INSERT INTO `django_content_type` VALUES (12, 'blog', 'article');
INSERT INTO `django_content_type` VALUES (7, 'blog', 'blogsettings');
INSERT INTO `django_content_type` VALUES (11, 'blog', 'category');
INSERT INTO `django_content_type` VALUES (8, 'blog', 'links');
INSERT INTO `django_content_type` VALUES (9, 'blog', 'sidebar');
INSERT INTO `django_content_type` VALUES (10, 'blog', 'tag');
INSERT INTO `django_content_type` VALUES (35, 'case', 'case');
INSERT INTO `django_content_type` VALUES (37, 'case', 'category');
INSERT INTO `django_content_type` VALUES (14, 'comments', 'comment');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (30, 'home', 'home');
INSERT INTO `django_content_type` VALUES (32, 'home', 'homecarousel');
INSERT INTO `django_content_type` VALUES (31, 'home', 'homesuperiority');
INSERT INTO `django_content_type` VALUES (15, 'oauth', 'oauthconfig');
INSERT INTO `django_content_type` VALUES (16, 'oauth', 'oauthuser');
INSERT INTO `django_content_type` VALUES (19, 'owntracks', 'owntracklog');
INSERT INTO `django_content_type` VALUES (36, 'product', 'product');
INSERT INTO `django_content_type` VALUES (27, 'project', 'project');
INSERT INTO `django_content_type` VALUES (29, 'project', 'projectattach');
INSERT INTO `django_content_type` VALUES (28, 'project', 'projecttag');
INSERT INTO `django_content_type` VALUES (17, 'servermanager', 'commands');
INSERT INTO `django_content_type` VALUES (18, 'servermanager', 'emailsendlog');
INSERT INTO `django_content_type` VALUES (26, 'service', 'serverprocess');
INSERT INTO `django_content_type` VALUES (24, 'service', 'service');
INSERT INTO `django_content_type` VALUES (25, 'service', 'serviceitem');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'sites', 'site');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'about', '0001_initial', '2020-03-30 10:19:44.848979');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2020-03-30 10:19:44.980910');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0002_remove_content_type_name', '2020-03-30 10:19:45.001759');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0001_initial', '2020-03-30 10:19:45.030948');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0002_alter_permission_name_max_length', '2020-03-30 10:19:45.114154');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0003_alter_user_email_max_length', '2020-03-30 10:19:45.117474');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0004_alter_user_username_opts', '2020-03-30 10:19:45.120627');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0005_alter_user_last_login_null', '2020-03-30 10:19:45.123689');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0006_require_contenttypes_0002', '2020-03-30 10:19:45.124374');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0007_alter_validators_add_error_messages', '2020-03-30 10:19:45.127433');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0008_alter_user_username_max_length', '2020-03-30 10:19:45.130578');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0009_alter_user_last_name_max_length', '2020-03-30 10:19:45.133778');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0010_alter_group_name_max_length', '2020-03-30 10:19:45.144058');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0011_update_proxy_permissions', '2020-03-30 10:19:45.149258');
INSERT INTO `django_migrations` VALUES (15, 'accounts', '0001_initial', '2020-03-30 10:19:45.180017');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2020-03-30 10:19:45.289525');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2020-03-30 10:19:45.326620');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-30 10:19:45.331290');
INSERT INTO `django_migrations` VALUES (19, 'blog', '0001_initial', '2020-03-30 10:19:45.410618');
INSERT INTO `django_migrations` VALUES (20, 'comments', '0001_initial', '2020-03-30 10:19:45.558346');
INSERT INTO `django_migrations` VALUES (21, 'home', '0001_initial', '2020-03-30 10:19:45.623940');
INSERT INTO `django_migrations` VALUES (22, 'oauth', '0001_initial', '2020-03-30 10:19:45.658065');
INSERT INTO `django_migrations` VALUES (23, 'owntracks', '0001_initial', '2020-03-30 10:19:45.684840');
INSERT INTO `django_migrations` VALUES (24, 'service', '0001_initial', '2020-03-30 10:19:45.726886');
INSERT INTO `django_migrations` VALUES (26, 'servermanager', '0001_initial', '2020-03-30 10:19:46.006152');
INSERT INTO `django_migrations` VALUES (27, 'sessions', '0001_initial', '2020-03-30 10:19:46.014527');
INSERT INTO `django_migrations` VALUES (28, 'sites', '0001_initial', '2020-03-30 10:19:46.031542');
INSERT INTO `django_migrations` VALUES (29, 'sites', '0002_alter_domain_unique', '2020-03-30 10:19:46.040303');
INSERT INTO `django_migrations` VALUES (30, 'home', '0002_homecarousel_homesuperiority', '2020-03-30 12:20:48.947355');
INSERT INTO `django_migrations` VALUES (31, 'about', '0002_auto_20200331_1334', '2020-03-31 05:35:04.771203');
INSERT INTO `django_migrations` VALUES (32, 'base', '0001_initial', '2020-03-31 05:35:04.828969');
INSERT INTO `django_migrations` VALUES (33, 'case', '0001_initial', '2020-03-31 05:35:04.864227');
INSERT INTO `django_migrations` VALUES (34, 'service', '0002_auto_20200407_1743', '2020-04-07 09:43:39.556408');
INSERT INTO `django_migrations` VALUES (35, 'product', '0001_initial', '2020-04-08 02:06:36.564203');
INSERT INTO `django_migrations` VALUES (36, 'product', '0002_auto_20200408_1020', '2020-04-08 02:20:51.032670');
INSERT INTO `django_migrations` VALUES (37, 'product', '0003_remove_product_files', '2020-04-08 02:22:23.214824');
INSERT INTO `django_migrations` VALUES (38, 'case', '0002_auto_20200408_1105', '2020-04-08 03:05:13.420131');
INSERT INTO `django_migrations` VALUES (39, 'product', '0004_auto_20200408_1105', '2020-04-08 03:05:13.485043');
INSERT INTO `django_migrations` VALUES (40, 'about', '0003_message', '2020-04-08 04:18:26.464903');
INSERT INTO `django_migrations` VALUES (41, 'case', '0003_auto_20200408_1218', '2020-04-08 04:18:26.485074');
INSERT INTO `django_migrations` VALUES (42, 'about', '0004_auto_20200408_1221', '2020-04-08 04:21:29.245486');
INSERT INTO `django_migrations` VALUES (43, 'about', '0005_auto_20200408_1311', '2020-04-08 05:12:02.355549');
INSERT INTO `django_migrations` VALUES (44, 'base', '0002_blogsettings', '2020-04-08 07:09:44.635086');
INSERT INTO `django_migrations` VALUES (45, 'blog', '0002_delete_blogsettings', '2020-04-08 07:09:44.664688');
INSERT INTO `django_migrations` VALUES (46, 'base', '0003_auto_20200408_1515', '2020-04-08 07:15:39.544836');
INSERT INTO `django_migrations` VALUES (47, 'base', '0004_auto_20200408_1524', '2020-04-08 07:24:30.882169');
INSERT INTO `django_migrations` VALUES (48, 'about', '0006_delete_message', '2020-04-08 09:44:58.429635');
INSERT INTO `django_migrations` VALUES (49, 'base', '0005_message', '2020-04-08 09:44:58.519951');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO `django_session` VALUES ('7z39uurnthytmydy27fa2wngxnywbilc', 'MWVjMWQ1OWJlZDVjZmY0MjQyYjNlODI0YTQyODA3ZDhkM2VmMTVlOTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDcifQ==', '2020-04-13 12:02:25.049052');
INSERT INTO `django_session` VALUES ('t7en89o12f57antibxfj9gwmxcj9b9ns', 'OGU4NWNiOTAyZDNkYzBiN2RkNTljZTNhMzU1MjdkNTlmMTE0NjVkNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQwOCI6dHJ1ZSwic2ltcGxldWlfMjAyMDA0MDkiOnRydWV9', '2020-04-23 03:03:58.231278');
INSERT INTO `django_session` VALUES ('wxdc38xpau9loxxleyopubnf7d3woc28', 'ZDc4N2M0YWMxMzkwMTU1OWIyZWM3YmY2Y2Y3NjhiMTVhMjM5MjdmMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYWNjb3VudHMudXNlcl9sb2dpbl9iYWNrZW5kLkVtYWlsT3JVc2VybmFtZU1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjMwOWJjZTlmN2I3MTdmMjg3ZTkzYjk5M2Q4MzAzYTQzZjM3ODNiZDciLCJzaW1wbGV1aV8yMDIwMDQwNyI6dHJ1ZSwic2ltcGxldWlfMjAyMDA0MDgiOnRydWV9', '2020-04-22 01:54:20.609301');
COMMIT;

-- ----------------------------
-- Table structure for django_site
-- ----------------------------
DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of django_site
-- ----------------------------
BEGIN;
INSERT INTO `django_site` VALUES (1, 'example.com', 'example.com');
COMMIT;

-- ----------------------------
-- Table structure for home_home
-- ----------------------------
DROP TABLE IF EXISTS `home_home`;
CREATE TABLE `home_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slogan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_delay` int(11) NOT NULL,
  `testimonials_delay` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of home_home
-- ----------------------------
BEGIN;
INSERT INTO `home_home` VALUES (2, 'hfgjghj', 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for home_homecarousel
-- ----------------------------
DROP TABLE IF EXISTS `home_homecarousel`;
CREATE TABLE `home_homecarousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `home_homecarousel_home_id_6a958dfe_fk_home_home_id` (`home_id`),
  CONSTRAINT `home_homecarousel_home_id_6a958dfe_fk_home_home_id` FOREIGN KEY (`home_id`) REFERENCES `home_home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of home_homecarousel
-- ----------------------------
BEGIN;
INSERT INTO `home_homecarousel` VALUES (2, '2020-03-30 12:37:16.151672', '2020-03-30 12:37:16.151683', 1, NULL, 'asdf', 'fdg', 'upload/home/carousel/image/banner1_NUrexTo.jpg', '', 2);
INSERT INTO `home_homecarousel` VALUES (3, '2020-03-30 12:37:16.152439', '2020-03-30 12:37:16.152447', 1, NULL, 'dfsg', 'dsfg', 'upload/home/carousel/image/banner2.jpg', '', 2);
INSERT INTO `home_homecarousel` VALUES (4, '2020-03-30 12:37:16.153051', '2020-03-30 12:37:16.153058', 1, NULL, 'sdfg', 'dfsgh', 'upload/home/carousel/image/banner3.jpg', '', 2);
COMMIT;

-- ----------------------------
-- Table structure for home_homesuperiority
-- ----------------------------
DROP TABLE IF EXISTS `home_homesuperiority`;
CREATE TABLE `home_homesuperiority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `home_homesuperiority_home_id_ad4407b3_fk_home_home_id` (`home_id`),
  CONSTRAINT `home_homesuperiority_home_id_ad4407b3_fk_home_home_id` FOREIGN KEY (`home_id`) REFERENCES `home_home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of home_homesuperiority
-- ----------------------------
BEGIN;
INSERT INTO `home_homesuperiority` VALUES (1, '2020-03-30 12:37:16.202823', '2020-03-30 12:37:16.202831', 1, NULL, 'dfgh', 'dfgh', 2);
INSERT INTO `home_homesuperiority` VALUES (2, '2020-03-30 12:37:16.203374', '2020-03-30 12:37:16.203380', 1, NULL, 'dfgh', 'dfgh', 2);
INSERT INTO `home_homesuperiority` VALUES (3, '2020-03-30 12:37:16.203870', '2020-03-30 12:37:16.203876', 1, NULL, 'dfgh', 'dfgh', 2);
COMMIT;

-- ----------------------------
-- Table structure for oauth_oauthconfig
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthconfig`;
CREATE TABLE `oauth_oauthconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appkey` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appsecret` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `callback_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for oauth_oauthuser
-- ----------------------------
DROP TABLE IF EXISTS `oauth_oauthuser`;
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
  PRIMARY KEY (`id`),
  KEY `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` (`author_id`),
  CONSTRAINT `oauth_oauthuser_author_id_a975bef0_fk_accounts_bloguser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_bloguser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for owntracks_owntracklog
-- ----------------------------
DROP TABLE IF EXISTS `owntracks_owntracklog`;
CREATE TABLE `owntracks_owntracklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for product_product
-- ----------------------------
DROP TABLE IF EXISTS `product_product`;
CREATE TABLE `product_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`),
  KEY `product_product_service_id_6a40bc0e_fk_service_service_id` (`service_id`),
  CONSTRAINT `product_product_service_id_6a40bc0e_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_product
-- ----------------------------
BEGIN;
INSERT INTO `product_product` VALUES (1, '2020-04-08 02:23:28.503134', '2020-04-08 02:23:28.503141', 1, '撒扥安赛飞', '风腮风\r\ndsfg\r\ndsfg\r\n\r\ndgfs \r\n\r\n## 撒旦啃老\r\n\r\n\r\n> jskdfjk \r\n\r\n- jksdf\r\n- sfdjkl', 'upload/project/thumb/2020/04/08/verify.png', 'dgfs \r\n\r\n## 撒旦啃老\r\n\r\n\r\n> jskdfjk \r\n\r\n- jksdf', 'http://www.qdqtrj.com', 1, 2);
INSERT INTO `product_product` VALUES (2, '2020-04-08 02:27:56.271494', '2020-04-08 02:27:56.271502', 1, 'fghdjdfgj', '东风\r\ns扥啊', 'upload/project/thumb/2020/04/08/verify_mpY5ynn.png', '安赛飞\r\ngdfhfgh扥感到fdf的\r\n\r\n扥恒扥个\r\n\r\n封掉ghdf \r\n\r\n否戴风华\r\n\r\n很该df \r\n扥个h', 'http://www.qdqtrj.com', 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for product_product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_product_tags`;
CREATE TABLE `product_product_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `basetag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_product_tags_product_id_basetag_id_e77f0d36_uniq` (`product_id`,`basetag_id`),
  KEY `product_product_tags_basetag_id_0583095b_fk_base_basetag_id` (`basetag_id`),
  CONSTRAINT `product_product_tags_basetag_id_0583095b_fk_base_basetag_id` FOREIGN KEY (`basetag_id`) REFERENCES `base_basetag` (`id`),
  CONSTRAINT `product_product_tags_product_id_a72c644e_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_product_tags
-- ----------------------------
BEGIN;
INSERT INTO `product_product_tags` VALUES (1, 1, 1);
INSERT INTO `product_product_tags` VALUES (2, 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for servermanager_commands
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_commands`;
CREATE TABLE `servermanager_commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `command` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_mod_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of servermanager_commands
-- ----------------------------
BEGIN;
INSERT INTO `servermanager_commands` VALUES (1, '清空缓存', 'clear_cache', '清空缓存', '2020-04-08 07:46:10.949632', '2020-04-08 07:46:10.949662');
COMMIT;

-- ----------------------------
-- Table structure for servermanager_emailsendlog
-- ----------------------------
DROP TABLE IF EXISTS `servermanager_emailsendlog`;
CREATE TABLE `servermanager_emailsendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_result` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for service_service
-- ----------------------------
DROP TABLE IF EXISTS `service_service`;
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
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of service_service
-- ----------------------------
BEGIN;
INSERT INTO `service_service` VALUES (1, '2020-04-07 09:43:56.692816', '2020-04-07 09:43:56.692824', 1, NULL, '萨芬的', '安赛飞', 'verify.png', '撒扥', '东风赛风风');
INSERT INTO `service_service` VALUES (2, '2020-04-07 10:30:26.324548', '2020-04-07 10:30:26.324555', 1, 23, '撒扥', '赛风', 'verify_4ktmVeV.png', '东风', '扥僧扥共扥风挡扥刚扥就扥\r\n\r\nsdfg dsfg\r\nds\r\n\r\n\r\n赛风\r\n\r\n\r\n赛风');
INSERT INTO `service_service` VALUES (3, '2020-04-08 08:38:25.179905', '2020-04-08 08:38:25.179912', 1, NULL, '赛风东风', '赛风风挡', 'verify_NxL6Y2l.png', '费等痕等很等会', '扥刚扥刚扥刚');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
