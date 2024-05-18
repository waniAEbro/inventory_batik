-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for inventory_batik_pso
CREATE DATABASE IF NOT EXISTS `inventory_batik_pso` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory_batik_pso`;

-- Dumping structure for table inventory_batik_pso.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_group: ~0 rows (approximately)

-- Dumping structure for table inventory_batik_pso.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table inventory_batik_pso.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_permission: ~52 rows (approximately)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add item', 7, 'add_item'),
	(26, 'Can change item', 7, 'change_item'),
	(27, 'Can delete item', 7, 'delete_item'),
	(28, 'Can view item', 7, 'view_item'),
	(29, 'Can add outlet', 8, 'add_outlet'),
	(30, 'Can change outlet', 8, 'change_outlet'),
	(31, 'Can delete outlet', 8, 'delete_outlet'),
	(32, 'Can view outlet', 8, 'view_outlet'),
	(33, 'Can add purchase', 9, 'add_purchase'),
	(34, 'Can change purchase', 9, 'change_purchase'),
	(35, 'Can delete purchase', 9, 'delete_purchase'),
	(36, 'Can view purchase', 9, 'view_purchase'),
	(37, 'Can add sales', 10, 'add_sales'),
	(38, 'Can change sales', 10, 'change_sales'),
	(39, 'Can delete sales', 10, 'delete_sales'),
	(40, 'Can view sales', 10, 'view_sales'),
	(41, 'Can add transaction', 11, 'add_transaction'),
	(42, 'Can change transaction', 11, 'change_transaction'),
	(43, 'Can delete transaction', 11, 'delete_transaction'),
	(44, 'Can view transaction', 11, 'view_transaction'),
	(45, 'Can add production', 12, 'add_production'),
	(46, 'Can change production', 12, 'change_production'),
	(47, 'Can delete production', 12, 'delete_production'),
	(48, 'Can view production', 12, 'view_production'),
	(49, 'Can add stock', 13, 'add_stock'),
	(50, 'Can change stock', 13, 'change_stock'),
	(51, 'Can delete stock', 13, 'delete_stock'),
	(52, 'Can view stock', 13, 'view_stock');

-- Dumping structure for table inventory_batik_pso.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_user: ~0 rows (approximately)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, '12345678', NULL, 1, 'afif23', 'Afif', 'udin', 'muhafifudin2306@gmail.com', 0, 1, '2024-05-17 14:16:38.000000'),
	(2, 'pbkdf2_sha256$720000$rZjnbIfauv6YWWr52gp08f$VmwGplUX06iGN8JPkc9T3U3wH1X2JVWryd+vZ4kBLf4=', '2024-05-17 22:24:37.144188', 0, 'afif2306', '', '', '', 0, 1, '2024-05-17 07:44:59.473253'),
	(4, 'pbkdf2_sha256$720000$W9Mn39l6BqBvNYg2gei1ss$uNKBi5yFLbBIyMWqLh3oaXLNQoryMAP5NS/kl1la71Q=', '2024-05-17 07:53:08.811635', 0, 'afif123', '', '', '', 0, 1, '2024-05-17 07:53:05.809871'),
	(6, 'pbkdf2_sha256$720000$lXP6FX89kVZF94zetY4Gox$iOKx6HtGXHATgm43zo4/Rz2xOHLr3NbHbibNqfGBT6o=', '2024-05-17 09:23:30.288703', 0, '', '', '', '', 0, 1, '2024-05-17 09:23:27.282935'),
	(7, 'pbkdf2_sha256$720000$7GQM0seUOTBfYG5ocvbzUo$LBj59ayxD54jpTA3JLNjw+4WZEl5WLtCmk3TP72ldOs=', '2024-05-17 09:24:20.761511', 0, 'dfd', '', '', '', 0, 1, '2024-05-17 09:24:14.836004');

-- Dumping structure for table inventory_batik_pso.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table inventory_batik_pso.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.auth_user_user_permissions: ~0 rows (approximately)
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
	(1, 1, 9);

-- Dumping structure for table inventory_batik_pso.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.django_admin_log: ~0 rows (approximately)

-- Dumping structure for table inventory_batik_pso.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.django_content_type: ~13 rows (approximately)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(7, 'inventory', 'item'),
	(8, 'inventory', 'outlet'),
	(12, 'inventory', 'production'),
	(9, 'inventory', 'purchase'),
	(10, 'inventory', 'sales'),
	(13, 'inventory', 'stock'),
	(11, 'inventory', 'transaction'),
	(6, 'sessions', 'session');

-- Dumping structure for table inventory_batik_pso.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.django_migrations: ~26 rows (approximately)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-08-24 12:34:00.575247'),
	(2, 'auth', '0001_initial', '2023-08-24 12:34:01.984574'),
	(3, 'admin', '0001_initial', '2023-08-24 12:34:02.321640'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-08-24 12:34:02.334653'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-24 12:34:02.347656'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-08-24 12:34:02.549718'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-08-24 12:34:02.687749'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-08-24 12:34:02.719756'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-08-24 12:34:02.732768'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-08-24 12:34:02.838792'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-08-24 12:34:02.845784'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-24 12:34:02.858797'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-08-24 12:34:02.888794'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-24 12:34:02.917801'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-08-24 12:34:02.951808'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-08-24 12:34:02.964811'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-24 12:34:02.994827'),
	(18, 'inventory', '0001_initial', '2023-08-24 12:34:03.437938'),
	(19, 'sessions', '0001_initial', '2023-08-24 12:34:03.589963'),
	(20, 'inventory', '0002_auto_20230824_2211', '2023-08-24 15:11:11.043978'),
	(21, 'inventory', '0003_auto_20230825_1339', '2023-08-25 06:39:15.177803'),
	(22, 'inventory', '0004_auto_20230825_1344', '2023-08-25 06:44:51.024978'),
	(23, 'inventory', '0005_alter_outlet_id', '2023-08-25 12:24:20.166742'),
	(24, 'inventory', '0006_alter_outlet_id', '2023-08-25 12:27:39.720596'),
	(25, 'inventory', '0002_stock_production', '2023-08-29 16:25:57.893402'),
	(26, 'inventory', '0003_auto_20230901_1948', '2023-09-01 12:48:32.312408');

-- Dumping structure for table inventory_batik_pso.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.django_session: ~3 rows (approximately)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('33eu1bgxjd0n8e7zwos9b7o5kmsgj6g6', '.eJxVjEEOwiAQRe_C2hBggEGX7nsGMgNUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxyuIijDj9bkzpUdoO8p3abZZpbusysdwVedAuhzmX5_Vw_w4q9fqtNSZ0-qwSKh0wJ8_BOrZULCOYYkenVUadPSiP6FmFMoIhzWDAmQDi_QG-sjan:1s82fs:jsqtK1YiXM_KcIYUr9J3tCsTWA9bkZ2yzDewaCZU7sc', '2024-05-31 18:51:24.221053'),
	('ksf1d9bt2br2qu4iszdmr361umncnauq', 'eyJvdXRsZXRfaWQiOiJhbGwiLCJvdXRsZXRfbmFtZSI6IlNlbXVhIENhYmFuZyJ9:1qbMRp:MyehZ72mACvMNUK0oJZCQ1cRBRsRxqYNgFYzA4NZhyU', '2023-09-13 14:45:33.940274'),
	('leo5arm8m1chq86m70hplcw06coqqu02', '.eJxVjEEOwiAQRe_C2hBggEGX7nsGMgNUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxyuIijDj9bkzpUdoO8p3abZZpbusysdwVedAuhzmX5_Vw_w4q9fqtNSZ0-qwSKh0wJ8_BOrZULCOYYkenVUadPSiP6FmFMoIhzWDAmQDi_QG-sjan:1s860D:7lztZslrz6yIJot3wQzuA32EnrJiauZdlC_uqDjCPWw', '2024-05-31 22:24:37.188202'),
	('llqzaohkha9sel5ti5ln4g2ehl0unyh2', '.eJxVjEEOwiAQRe_C2hBggEGX7nsGMgNUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxyuIijDj9bkzpUdoO8p3abZZpbusysdwVedAuhzmX5_Vw_w4q9fqtNSZ0-qwSKh0wJ8_BOrZULCOYYkenVUadPSiP6FmFMoIhzWDAmQDi_QG-sjan:1s7xxH:o62p_OPvHdslFUfLGRJC7DC1Nn2Oj9VEQvrBoYzEdu8', '2024-05-31 13:49:03.894100'),
	('lz4vpri9aiva9qp4yozch1ajamvuykuz', '.eJxVjEEOwiAQRe_C2hBggEGX7nsGMgNUqoYmpV0Z765NutDtf-_9l4i0rTVuvSxxyuIijDj9bkzpUdoO8p3abZZpbusysdwVedAuhzmX5_Vw_w4q9fqtNSZ0-qwSKh0wJ8_BOrZULCOYYkenVUadPSiP6FmFMoIhzWDAmQDi_QG-sjan:1s7xwf:BbBPHMo0AUgF5TXaH5lg_dojoLkj3VotvIh1rdi0omQ', '2024-05-31 13:48:25.963467'),
	('su6ewndpf4ldhdb57mllrgpvrn1d5ooz', 'eyJvdXRsZXRfaWQiOiJhbGwiLCJvdXRsZXRfbmFtZSI6IlNlbXVhIENhYmFuZyJ9:1rgc4g:HTdJgBrMCkJwlnffCrZOdARSLewh32DJidwy78Qp25o', '2024-03-17 02:59:38.461033');

-- Dumping structure for table inventory_batik_pso.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `biaya_pesan` int DEFAULT NULL,
  `lead_time` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.items: ~14 rows (approximately)
INSERT INTO `items` (`id`, `code`, `name`, `image`, `description`, `price`, `type`, `created_at`, `updated_at`, `biaya_pesan`, `lead_time`) VALUES
	(9, 'DBY-001', 'Kain Dobby A', '', 'Kain Dobby grade A harga Rp 110.000', 110000, 'mentah', '2023-09-01 11:24:32.388189', '2024-05-17 20:51:28.395776', 30000, 3),
	(10, 'DBY-002', 'Kain Dobby B', '', 'Kain Dobby grade B harga Rp 105.000', 105000, 'jadi', '2023-09-01 11:25:03.975690', '2023-09-01 11:27:42.368713', 30000, 3),
	(11, 'DBY-003', 'Kain Dobby C', '', 'Kain Dobby grade C harga Rp 100.000', 100000, 'jadi', '2023-09-01 11:26:59.800026', '2023-09-01 11:27:09.782686', 30000, 3),
	(12, 'DBY-004', 'Kain Dobby D', '', 'Kain Dobby grade D harga Rp 95.000', 95000, 'jadi', '2023-09-01 11:28:08.997948', '2023-09-01 11:28:42.596692', 30000, 3),
	(13, 'DBY-005', 'Kain Dobby E', '', 'Kain Dobby grade E harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:28:35.600676', '2023-09-01 11:28:35.600676', 30000, 3),
	(14, 'KTN-001', 'Kain Katun A', '', 'Kain Katun grade A harga Rp 110.000', 110000, 'jadi', '2023-09-01 11:29:52.462701', '2023-09-01 11:29:52.462701', 30000, 3),
	(15, 'KTN-002', 'Kain Katun B', '', 'Kain Katun grade B harga Rp 105.000', 105000, 'jadi', '2023-09-01 11:30:13.914687', '2023-09-01 11:30:13.914687', 30000, 3),
	(16, 'KTN-003', 'Kain Katun C', '', 'Kain Katun grade C harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:30:39.430796', '2023-09-01 11:30:39.430796', 30000, 3),
	(17, 'KTN-004', 'Kain Katun D', '', 'Kain Katun grade D harga Rp 85.000', 85000, 'jadi', '2023-09-01 11:31:07.221687', '2023-09-01 11:31:07.222688', 30000, 3),
	(18, 'KTN-005', 'Kain Katun E', '', 'Kain Katun grade E harga Rp 80.000', 80000, 'jadi', '2023-09-01 11:31:30.602686', '2023-09-01 11:31:30.602686', 30000, 3),
	(19, 'PRS-001', 'Kain Paris A', '', 'Kain Paris grade A harga Rp 100.000', 100000, 'jadi', '2023-09-01 11:32:05.007679', '2023-09-01 11:32:05.007679', 30000, 3),
	(20, 'PRS-002', 'Kain Paris B', '', 'Kain Paris grade B harga Rp 90.000', 90000, 'jadi', '2023-09-01 11:32:30.232689', '2023-09-01 11:32:30.232689', 30000, 3),
	(21, 'KPD-001', 'Kemeja Pendek', '', 'Kemeja Batik Pendek', 120000, 'jadi', '2023-09-01 11:40:52.504690', '2023-09-01 11:40:52.504690', 30000, 5),
	(22, 'KPJ-001', 'Kemeja Panjang', '', 'Kemeja Batik Panjang', 125000, 'jadi', '2023-09-01 11:41:12.931284', '2023-09-01 11:41:12.931284', 30000, 5);

-- Dumping structure for table inventory_batik_pso.materials
CREATE TABLE IF NOT EXISTS `materials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `biaya_pesan` int DEFAULT NULL,
  `lead_time` int DEFAULT NULL,
  `unit` char(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table inventory_batik_pso.materials: ~0 rows (approximately)
INSERT INTO `materials` (`id`, `name`, `code`, `image`, `description`, `price`, `biaya_pesan`, `lead_time`, `unit`, `created_at`, `updated_at`) VALUES
	(3, 'Kain Batik Kawung', '002', 'img/items/download_3.png', 'Batik Kawung adalah motif batik yang bentuknya berupa bulatan mirip buah kawung yang ditata rapi secara geometris. Kadang, motif ini juga ditafsirkan sebagai gambar bunga lotus dengan empat lembar mahkota bunga yang merekah', 200000, 10000, 7, 'kg', '2024-05-17 19:34:42.772128', '2024-05-17 19:34:42.773129'),
	(4, 'Gula Hijau', '0021', '', 'gula hijau', 25000, 20000, 14, 'kg', '2024-05-17 21:32:46.457292', '2024-05-17 21:32:46.457292');

-- Dumping structure for table inventory_batik_pso.outlets
CREATE TABLE IF NOT EXISTS `outlets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.outlets: ~2 rows (approximately)
INSERT INTO `outlets` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
	(3, 'Gudang Pusat', 'Sragen', '2023-08-29 16:55:45.201393', '2023-08-29 16:55:45.201393'),
	(4, 'Outlet 1', 'Semarang', '2023-08-29 16:55:53.101563', '2023-08-29 16:55:53.101563'),
	(5, 'Gudang Afif', 'Semarang', '2024-03-02 14:06:14.235835', '2024-03-02 14:06:14.236836');

-- Dumping structure for table inventory_batik_pso.productions
CREATE TABLE IF NOT EXISTS `productions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productions_item_id_4156545d_fk_items_id` (`item_id`),
  KEY `productions_outlet_id_35aad789_fk_outlets_id` (`outlet_id`),
  CONSTRAINT `productions_item_id_4156545d_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `productions_outlet_id_35aad789_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.productions: ~0 rows (approximately)
INSERT INTO `productions` (`id`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
	(8, 15, '2024-05-17 19:31:07.686187', '2024-05-17 19:31:07.686187', 14, 3);

-- Dumping structure for table inventory_batik_pso.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_item_id_674e01f1_fk_items_id` (`item_id`),
  KEY `purchases_outlet_id_c7300c4f_fk` (`outlet_id`),
  CONSTRAINT `purchases_item_id_674e01f1_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `purchases_outlet_id_c7300c4f_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.purchases: ~2 rows (approximately)
INSERT INTO `purchases` (`id`, `price`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`, `unit`) VALUES
	(37, '40000', 3, '2024-03-03 04:57:43.000000', '2024-03-03 04:57:44.000000', 21, 5, '100'),
	(38, '2000', 15, '2024-03-03 04:58:14.000000', '2024-03-03 04:58:14.000000', 10, 3, '200');

-- Dumping structure for table inventory_batik_pso.recipes
CREATE TABLE IF NOT EXISTS `recipes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `outlet_id` bigint DEFAULT NULL,
  `material_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `unit` char(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_recipes_materials` (`material_id`),
  KEY `FK_recipes_items` (`item_id`) USING BTREE,
  KEY `FK_recipes_outlets` (`outlet_id`) USING BTREE,
  CONSTRAINT `FK_recipes_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_recipes_materials` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_recipes_outlets` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table inventory_batik_pso.recipes: ~1 rows (approximately)
INSERT INTO `recipes` (`id`, `outlet_id`, `material_id`, `item_id`, `amount`, `unit`, `created_at`, `updated_at`) VALUES
	(1, 3, 3, 13, 12, 'UnitTypes.KG', '2024-05-17 21:25:17.889096', '2024-05-17 21:25:17.889096'),
	(2, 3, 3, 10, 12, 'UnitTypes.KG', '2024-05-17 21:31:59.849530', '2024-05-17 21:31:59.849530'),
	(4, 5, 4, 11, 10, 'UnitTypes.KG', '2024-05-17 21:33:25.786172', '2024-05-17 21:33:25.786172');

-- Dumping structure for table inventory_batik_pso.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_item_id_e1e0f548_fk_items_id` (`item_id`),
  KEY `sales_outlet_id_fba613ae_fk` (`outlet_id`),
  CONSTRAINT `sales_item_id_e1e0f548_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `sales_outlet_id_fba613ae_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.sales: ~114 rows (approximately)
INSERT INTO `sales` (`id`, `price`, `amount`, `unit`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
	(21, '100000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(22, '100000', 45, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(23, '150000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(24, '150000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(25, '85000', 5, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(26, '85000', 5, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(27, '105000', 5, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(28, '90000', 60, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(29, '110000', 40, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 9, 3),
	(30, '110000', 428, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 9, 3),
	(31, '90000', 60, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(32, '90000', 80, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(33, '90000', 1000, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 13, 3),
	(34, '85000', 2, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(35, '90000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(36, '90000', 7, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(37, '110000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(38, '85000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(39, '85000', 126, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(40, '85000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(41, '90000', 65, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(42, '105000', 40, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 15, 3),
	(43, '105000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(44, '85000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(45, '125000', 14, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(46, '140000', 12, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(47, '90000', 18, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(48, '85000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(49, '85000', 40, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(50, '85000', 158, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(51, '225000', 8, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(52, '200000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(53, '225000', 6, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(54, '175000', 7, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(55, '225000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(56, '175000', 11, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(57, '225000', 16, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(58, '130000', 80, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(59, '85000', 18, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(60, '110000', 15, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(61, '120000', 6, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(62, '105000', 50, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(63, '105000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(64, '85000', 4, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(65, '90000', 360, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 13, 3),
	(66, '100000', 100, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(67, '120000', 2, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(68, '105000', 14, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(69, '105000', 30, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(70, '85000', 21, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(71, '85000', 21, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(72, '110000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 9, 3),
	(73, '85000', 33, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(74, '110000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 9, 3),
	(75, '100000', 300, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(76, '80000', 200, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 18, 3),
	(77, '100000', 100, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 19, 3),
	(78, '225000', 18, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(79, '160000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(80, '145000', 2, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 21, 3),
	(81, '200000', 1, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 22, 3),
	(82, '110000', 42, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 14, 3),
	(83, '105000', 68, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(84, '90000', 70, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(85, '100000', 170, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(86, '90000', 38, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(87, '90000', 180, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(88, '80000', 123, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(89, '105000', 12, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(90, '85000', 33, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(91, '80000', 200, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 18, 3),
	(92, '100000', 68, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(93, '100000', 130, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(94, '100000', 6, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(95, '85000', 3, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(96, '105000', 29, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(97, '90000', 479, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 13, 3),
	(98, '105000', 14, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(99, '100000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 19, 3),
	(100, '85000', 30, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(101, '105000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(102, '90000', 22, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(103, '110000', 66, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 9, 3),
	(104, '90000', 21, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(105, '85000', 7, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(106, '80000', 2, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 18, 3),
	(107, '100000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(108, '85000', 9, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(109, '90000', 360, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 13, 3),
	(110, '105000', 52, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(111, '90000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(112, '85000', 85, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(113, '95000', 25, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 12, 3),
	(114, '100000', 25, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(115, '110000', 240, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(116, '85000', 82, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(117, '105000', 35, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(118, '105000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(119, '90000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(120, '90000', 31, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 13, 3),
	(121, '100000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(122, '80000', 220, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 18, 3),
	(123, '100000', 60, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 11, 3),
	(124, '85000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(125, '105000', 41, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(126, '90000', 93, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 16, 3),
	(127, '85000', 20, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 17, 3),
	(128, '105000', 11, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(129, '105000', 10, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 10, 3),
	(131, '90000', 100, 'pcs', '2024-03-07 17:09:45.131960', '2024-03-07 17:09:45.131960', 20, 3),
	(132, '1500', 2, 'kg', '2024-05-17 19:31:37.260619', '2024-05-17 19:31:37.260619', 15, 4);

-- Dumping structure for table inventory_batik_pso.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_item_id_31ab3a71_fk_items_id` (`item_id`),
  KEY `stocks_outlet_id_a3ac7af5_fk_outlets_id` (`outlet_id`),
  CONSTRAINT `stocks_item_id_31ab3a71_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `stocks_outlet_id_a3ac7af5_fk_outlets_id` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.stocks: ~0 rows (approximately)
INSERT INTO `stocks` (`id`, `amount`, `created_at`, `updated_at`, `item_id`, `outlet_id`) VALUES
	(8, 12, '2024-03-03 10:37:12.000000', '2024-03-03 10:37:12.000000', 13, 5),
	(9, 15, '2024-05-17 19:31:07.765205', '2024-05-17 19:31:07.765205', 14, 3),
	(10, 2, '2024-05-17 19:31:37.460668', '2024-05-17 19:31:37.460668', 15, 4);

-- Dumping structure for table inventory_batik_pso.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  `outlet_id` bigint NOT NULL,
  `purchase_id` bigint DEFAULT NULL,
  `sales_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_item_id_6817dd0b_fk_items_id` (`item_id`),
  KEY `transactions_purchase_id_96a24f1f_fk_purchases_id` (`purchase_id`),
  KEY `transactions_sales_id_c965e09f_fk_sales_id` (`sales_id`),
  KEY `transactions_outlet_id_7d089f78_fk` (`outlet_id`),
  CONSTRAINT `transactions_item_id_6817dd0b_fk_items_id` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  CONSTRAINT `transactions_outlet_id_7d089f78_fk` FOREIGN KEY (`outlet_id`) REFERENCES `outlets` (`id`),
  CONSTRAINT `transactions_purchase_id_96a24f1f_fk_purchases_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  CONSTRAINT `transactions_sales_id_c965e09f_fk_sales_id` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table inventory_batik_pso.transactions: ~0 rows (approximately)
INSERT INTO `transactions` (`id`, `type`, `created_at`, `updated_at`, `item_id`, `outlet_id`, `purchase_id`, `sales_id`) VALUES
	(12, 'sales', '2024-05-17 19:31:37.414658', '2024-05-17 19:31:37.414658', 15, 4, NULL, 132);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
