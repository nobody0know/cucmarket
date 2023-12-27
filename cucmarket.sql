-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: cucmarket
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add permission',3,'add_permission'),(8,'Can change permission',3,'change_permission'),(9,'Can delete permission',3,'delete_permission'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user info',7,'add_userinfo'),(20,'Can change user info',7,'change_userinfo'),(21,'Can delete user info',7,'delete_userinfo'),(22,'Can add goods info',8,'add_goodsinfo'),(23,'Can change goods info',8,'change_goodsinfo'),(24,'Can delete goods info',8,'delete_goodsinfo'),(25,'Can add cart info',9,'add_cartinfo'),(26,'Can change cart info',9,'change_cartinfo'),(27,'Can delete cart info',9,'delete_cartinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$14dozOowH3vS$xsZrUcSqqsxhCxJiI/JO/OuBQn2AVXunbpgjh7i80sc=','2023-12-25 14:52:53',1,'admin','','','',1,1,'2020-06-23 01:18:45');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartinfo`
--

DROP TABLE IF EXISTS `cart_cartinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cartinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `buyer_id` int NOT NULL,
  `good_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cartinfo_buyer_id_b65eceb6_fk_user_userinfo_id` (`buyer_id`),
  KEY `cart_cartinfo_589eff59` (`good_id`),
  CONSTRAINT `cart_cartinfo_buyer_id_b65eceb6_fk_user_userinfo_id` FOREIGN KEY (`buyer_id`) REFERENCES `user_userinfo` (`id`),
  CONSTRAINT `cart_cartinfo_good_id_87c55252_fk_goods_goodsinfo_id` FOREIGN KEY (`good_id`) REFERENCES `goods_goodsinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartinfo`
--

LOCK TABLES `cart_cartinfo` WRITE;
/*!40000 ALTER TABLE `cart_cartinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-23 01:28:42','1','test',1,'[{\"added\": {}}]',8,1),(2,'2020-06-23 01:34:40','2','test',1,'[{\"added\": {}}]',8,1),(3,'2020-06-23 01:37:10','3','test2',1,'[{\"added\": {}}]',8,1),(4,'2020-06-23 01:39:11','3','test2',3,'',8,1),(5,'2020-06-23 01:39:56','4','test2',1,'[{\"added\": {}}]',8,1),(6,'2020-06-23 01:48:32','5','活着，为了什么',1,'[{\"added\": {}}]',8,1),(7,'2020-06-23 01:51:25','6','追风筝的人',1,'[{\"added\": {}}]',8,1),(8,'2020-06-23 02:09:08','7','索尼FDR-AX60',1,'[{\"added\": {}}]',8,1),(9,'2020-06-23 02:11:53','8','JVC GZ-RY980',1,'[{\"added\": {}}]',8,1),(10,'2020-06-23 04:27:54','9','GZ-RY775',1,'[{\"added\": {}}]',8,1),(11,'2020-06-23 04:38:02','10','hefanxi',1,'[{\"added\": {}}]',8,1),(12,'2020-06-23 04:39:06','11','NEWFOUNDN',1,'[{\"added\": {}}]',8,1),(13,'2020-06-23 04:40:02','12','ONE ONLY',1,'[{\"added\": {}}]',8,1),(14,'2020-06-23 07:00:34','13','木梳',1,'[{\"added\": {}}]',8,1),(15,'2020-06-23 07:01:24','14','陶碗',1,'[{\"added\": {}}]',8,1),(16,'2020-06-23 07:02:09','15','迷你灯',1,'[{\"added\": {}}]',8,1),(17,'2020-06-23 07:07:00','16','永久山地车',1,'[{\"added\": {}}]',8,1),(18,'2020-06-23 07:07:39','17','桑浦山地车',1,'[{\"added\": {}}]',8,1),(19,'2020-06-23 07:08:52','18','猛犸王山地车',1,'[{\"added\": {}}]',8,1),(20,'2020-06-23 07:17:23','19','纸板材料',1,'[{\"added\": {}}]',8,1),(21,'2020-06-23 07:17:55','20','布料',1,'[{\"added\": {}}]',8,1),(22,'2020-06-23 07:18:21','21','手工纸',1,'[{\"added\": {}}]',8,1),(23,'2020-06-23 07:29:30','22','小王子',1,'[{\"added\": {}}]',8,1),(24,'2020-06-23 07:39:22','23','撒哈拉的故事',1,'[{\"added\": {}}]',8,1),(25,'2020-06-23 07:41:36','24','挪威的森林',1,'[{\"added\": {}}]',8,1),(26,'2020-06-23 07:42:47','25','月亮和六便士',1,'[{\"added\": {}}]',8,1),(27,'2023-12-25 12:11:10','28','1212',3,'',8,1),(28,'2023-12-25 12:11:23','1','特别的猫',3,'',8,1),(29,'2023-12-25 12:11:35','5','活着，为了什么',3,'',8,1),(30,'2023-12-25 12:11:40','6','追风筝的人',3,'',8,1),(31,'2023-12-25 12:11:45','7','索尼FDR-AX60',3,'',8,1),(32,'2023-12-25 12:11:50','8','JVC GZ-RY980',3,'',8,1),(33,'2023-12-25 12:13:22','9','GZ-RY775',3,'',8,1),(34,'2023-12-25 12:13:31','10','hefanxi',3,'',8,1),(35,'2023-12-25 12:13:35','11','NEWFOUNDN',3,'',8,1),(36,'2023-12-25 12:13:39','12','ONE ONLY',3,'',8,1),(37,'2023-12-25 12:13:42','13','木梳',3,'',8,1),(38,'2023-12-25 12:13:46','14','陶碗',3,'',8,1),(39,'2023-12-25 12:13:49','15','迷你灯',3,'',8,1),(40,'2023-12-25 12:13:53','16','永久山地车',3,'',8,1),(41,'2023-12-25 12:13:56','17','桑浦山地车',3,'',8,1),(42,'2023-12-25 12:13:59','18','猛犸王山地车',3,'',8,1),(43,'2023-12-25 12:14:02','19','纸板材料',3,'',8,1),(44,'2023-12-25 12:14:05','20','布料',3,'',8,1),(45,'2023-12-25 12:14:08','21','手工纸',3,'',8,1),(46,'2023-12-25 12:14:11','22','小王子',3,'',8,1),(47,'2023-12-25 12:14:14','23','撒哈拉的故事',3,'',8,1),(48,'2023-12-25 12:14:35','24','挪威的森林',3,'',8,1),(49,'2023-12-25 12:14:38','25','月亮和六便士',3,'',8,1),(50,'2023-12-25 12:14:41','26','索尼α77',3,'',8,1),(51,'2023-12-25 12:16:51','29','test',1,'[{\"added\": {}}]',8,1),(52,'2023-12-25 12:18:20','29','test',2,'[{\"changed\": {\"fields\": [\"type\"]}}]',8,1),(53,'2023-12-25 14:52:56','30','测试',3,'',8,1),(54,'2023-12-25 14:56:11','2','UserInfo object',3,'',7,1),(55,'2023-12-25 15:08:09','29','test',3,'',8,1),(56,'2023-12-25 15:12:57','31','test',3,'',8,1),(57,'2023-12-25 15:21:55','32','test',3,'',8,1),(58,'2023-12-25 15:31:28','33','test',3,'',8,1),(59,'2023-12-25 15:36:02','34','test',3,'',8,1),(60,'2023-12-25 15:38:39','35','test',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(9,'cart','cartinfo'),(5,'contenttypes','contenttype'),(8,'goods','goodsinfo'),(6,'sessions','session'),(7,'user','userinfo');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-06-20 13:59:20'),(2,'auth','0001_initial','2020-06-20 13:59:20'),(3,'admin','0001_initial','2020-06-20 13:59:20'),(4,'admin','0002_logentry_remove_auto_add','2020-06-20 13:59:20'),(5,'contenttypes','0002_remove_content_type_name','2020-06-20 13:59:21'),(6,'auth','0002_alter_permission_name_max_length','2020-06-20 13:59:21'),(7,'auth','0003_alter_user_email_max_length','2020-06-20 13:59:21'),(8,'auth','0004_alter_user_username_opts','2020-06-20 13:59:21'),(9,'auth','0005_alter_user_last_login_null','2020-06-20 13:59:21'),(10,'auth','0006_require_contenttypes_0002','2020-06-20 13:59:21'),(11,'auth','0007_alter_validators_add_error_messages','2020-06-20 13:59:21'),(12,'auth','0008_alter_user_username_max_length','2020-06-20 13:59:21'),(13,'sessions','0001_initial','2020-06-20 13:59:21'),(14,'user','0001_initial','2020-06-21 12:54:09'),(15,'goods','0001_initial','2020-06-23 01:19:42'),(16,'goods','0002_auto_20200623_1005','2020-06-23 02:05:55'),(17,'goods','0003_auto_20200623_1512','2020-06-23 07:13:02'),(18,'goods','0004_auto_20200623_1516','2020-06-23 07:16:41'),(19,'goods','0005_goodsinfo_userid','2020-06-30 01:16:41'),(20,'goods','0006_auto_20200630_0917','2020-06-30 01:18:04'),(21,'cart','0001_initial','2020-06-30 06:44:01'),(22,'cart','0002_auto_20200630_1443','2020-06-30 06:44:01');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ihfsn5pqlbyackz9mzwbgopqhjqpskn6','MzY2ZDNlYjkzZjQzM2UwYjY3N2VjYjcyNWEwOTNmNjZjNGRjMDAyNjp7InVzZXJfaWQiOjMsIm51bWJlciI6IjEyMzQ1Njc4IiwidXNlcm5hbWUiOiJcdThkNTZcdTk5OTlcdTUwNjUifQ==','2024-01-08 15:45:21'),('js4phzgmon0qi24qcm8k6o7x4rfrf7nq','OThjYjdkNTBjYzVjNTI3ODk4Y2FlODAyZWRlM2E4OTQwZDc4ZDhiMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjM2U3MmY2OTdkNGEzMWQ3NWY2ZTM4ZGUzYzJiM2U0ODFjZTNjZjgyIn0=','2024-01-08 14:52:53'),('t8cp893c5coqauzam6kygrd7k49z86nz','ZmM4NThkMzIyNzVkOTI5N2FiZmI4OGNjNzI1YTQxMTQ0ZWY5MTVhYjp7InVzZXJfaWQiOjEsIm51bWJlciI6IjIwMTcxMTExMTExIiwidXNlcm5hbWUiOiJcdTY3NGVcdTU2ZGIifQ==','2020-07-06 10:25:21'),('t9r67iqunz98nemg2p5r89wlff7qu7xr','ZmM4NThkMzIyNzVkOTI5N2FiZmI4OGNjNzI1YTQxMTQ0ZWY5MTVhYjp7InVzZXJfaWQiOjEsIm51bWJlciI6IjIwMTcxMTExMTExIiwidXNlcm5hbWUiOiJcdTY3NGVcdTU2ZGIifQ==','2020-07-14 06:54:54');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsinfo`
--

DROP TABLE IF EXISTS `goods_goodsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_goodsinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsinfo_3491001b` (`user_id`),
  CONSTRAINT `goods_goodsinfo_user_id_84b4d3d0_fk_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsinfo`
--

LOCK TABLES `goods_goodsinfo` WRITE;
/*!40000 ALTER TABLE `goods_goodsinfo` DISABLE KEYS */;
INSERT INTO `goods_goodsinfo` VALUES (36,'锋利IV','books','goods/Enchanted_Book.webp',1000.00,0,'附魔台','',3),(37,'水晶风暴','books','goods/Crystal_Storm.webp',1000.00,0,'大恶魔','泰拉瑞亚中肉后相当好用的法师武器',3),(38,'詛咒焰','books','goods/Cursed_Flames.webp',1000.00,0,'腐化之地','詛咒焰是一種困難模式製作材料，其猩紅對應物是靈液。它掉落自吞世怪、腐惡食屍鬼和爬藤怪，以上這些在腐化之地中都能找到。 它也可以在污損匣中找到。',3),(39,'黄金雨','books','goods/Golden_Shower.webp',1000.00,0,'猩红之地','黄金雨是一个困难模式的魔法武器，它能射出弧线状、穿透性的金色灵液流射弹，类似于海蓝权杖。射弹最多可穿透 4 个目标，总共击中 5 个目标。黄金雨每次使用发射三个射弹，玩家可在射弹发射的间隔更改瞄准方向。被击中的敌怪会被施加灵液减益，这会增加 15 盔甲穿透 / 使其防御降低 20，并使得它们以金色高亮显示，即使在完全黑暗中也如此，持续 10 秒。不过，这一属性不能用来探索地图，因为附带灵液的敌怪并不会真正发光。\r\n',3),(40,'指南针','digital','goods/Compass_JE3_BE3.webp',1000.00,0,'村庄制图师小屋','Minecraft的指南针相当容易制作——你只需要在红石粉四周放上四个铁锭。你偶尔也可以在村庄、要塞和沉船的箱子里找到指南针。甚至图书管理员村民也经常会有一个拿来出售。在主世界里，不管你是手拿着指南针，还是放在物品栏里、扔在地上或者在物品展示框里，指南针的指针——那根红色的线——总是指向世界出生点。不过要当心——在其他维度里Minecraft的物理规律并不相同，在那里跟随指南针可能会将你引入危险的歧路……',3),(41,'时钟','digital','goods/Clock_JE3_BE3.webp',1000.00,0,'图书管理员','密切留意恐怖的时刻！一个可以合成的钟表，让你知道何时可以安全地钻出洞穴。',3),(42,'R.E.K.3000','digital','goods/R.webp',1000.00,0,'工匠作坊','R.E.K.3000 是个骷髅王后的信息配饰，能提供关于附近敌怪数量、玩家的敌怪击杀数、以及附近稀有生物的信息。它组合了其组件雷达、杀怪计数器、和生命体分析机的功能。',3),(43,'红色骑术盔甲','cloth','goods/Red_Riding_armor_female.webp',1000.00,0,'酒馆老板','红色骑术盔甲是一个针对远程的盔甲套装，可在击败石巨人后从酒馆老板处以总计 150 护卫奖章 的价格购买。它由红色骑术兜帽、红色骑术服、和红色骑术护腿。\r\n\r\n',3),(44,'星旋盔甲','cloth','goods/Vortex_armor_female.webp',1000.00,0,'月亮领主','星旋盔甲是一套月亮领主后的盔甲，会提供远程武器加成。它目前在电脑版 电脑版、主机版 主机版、和移动版 移动版中是最终的远程套装。制作全套套装总共需要 36 个夜明锭（144 个夜明矿）和 45 个星旋碎片。\r\n\r\n',3),(45,'钻石胸甲','cloth','goods/Diamond_Chestplate.webp',1000.00,0,'铁匠铺','胸甲（Chestplate）是一种可装备于玩家上身的盔甲',3),(46,'床','daily','goods/150px-Light_Blue_Bed_JE3_BE2.webp',1000.00,0,'工作台','床在2011年2月的beta1.3更新时即与红石中继器、砂岩台阶一同被加入游戏。原本改变玩家出生点的任务是由“哭泣的黑曜石”承担的——这个方块由黑曜石和青金石合成而来并拥有令人毛骨悚然的音效，但后来床出现并取代了它。多年来，床的某些特性发生了一些改变：最初，在怪物可能接触到你的地方睡觉有时会导致你在夜间遭受僵尸或骷髅的攻击时醒来；而在正式版1.0时，这个特性被移除了。现在，你则根本不可能在有怪物接近的情况下睡着。',3),(47,'泰拉刃','daily','goods/Terra_Blade.webp',1000.00,0,'','泰拉刃是一个困难模式中的射弹剑，通过将真断钢剑、断裂英雄剑和真永夜刃合成获得。取决于游戏版本，泰拉刃在击败  世纪之花 /  一个机械 Boss 后可用。\r\n',3),(48,'魔眼法杖','daily','goods/Optic_Staff.webp',1000.00,0,'','魔眼法杖是困难模式的召唤武器，使用后生成处在第二形态的双子魔眼的迷你版本。它们会跟随玩家并攻击 敌怪。生成的小魔焰眼和小激光眼分别使用近战和远程激光攻击，在攻击行为上与与其对应的魔焰眼和激光眼相似（然而，小魔焰眼不会像魔焰眼一样喷射诅咒焰）。和其它仆从一样，所召唤的双子魔眼是无敌的且可以无限时间地跟随玩家，除非玩家死亡、召唤另一个仆从、取消增益、或离开世界。',3),(49,'可爱猪龙鱼','traffic','goods/Cute_Fishron_Mount.webp',1000.00,0,'','虾松露是个坐骑召唤物品，可以召唤出一只与猪龙鱼公爵风格类似的可爱猪龙鱼坐骑。此坐骑可以无限飞行和悬停。它可以从猪龙鱼公爵专家模式的宝藏袋中获得。\r\n\r\n可爱猪龙鱼的基础飞行速度为 40 mph。\r\n\r\n在液体中移动时，可爱猪龙鱼速度可急剧提升 105% （可达82 mph，这是所有坐骑的最高速度），且可为其骑乘者提升 15% 伤害。离开液体后，这些提升尚可持续 6 秒，但速度只提升 100%（达到 80 mph）。\r\n\r\n上面提及的在液体中的加成亦可在变湿，即下雨时、飞过填满液体的泡泡时、接触到水桶倒出的水时、亦或被水枪击中时激活。',3),(50,'船','traffic','goods/150px-Oak_Boat_JE4_BE2.webp',1000.00,0,'','船（Boat）是一种物品，也是一种交通工具实体。',3),(51,'向导','other','goods/Guide.webp',1000.00,0,'','向导通常是玩家见到的第一个 NPC。他会在世界创建时在玩家附近生成。他提供主要针对新玩家的提示，并可以显示所有用到给他看的物品的制作配方（包括所需的制作站）。\r\n\r\n不同于绝大多数其他 NPC，向导于世界创建时即生成，在有可用的房屋之前。不过他还是会搬进第一座建好的房屋。如果他被杀掉，就需要先建好合适的房屋之后他才会重生，但无需其他条件。',3);
/*!40000 ALTER TABLE `goods_goodsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_userinfo`
--

DROP TABLE IF EXISTS `user_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `number` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_userinfo`
--

LOCK TABLES `user_userinfo` WRITE;
/*!40000 ALTER TABLE `user_userinfo` DISABLE KEYS */;
INSERT INTO `user_userinfo` VALUES (1,'李四','3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d','20171111111'),(3,'赖香健','7c222fb2927d828af22f592134e8932480637c0d','12345678');
/*!40000 ALTER TABLE `user_userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26  8:20:23
