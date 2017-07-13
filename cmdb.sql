-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cmdb
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add cabinet',7,'add_cabinet'),(20,'Can change cabinet',7,'change_cabinet'),(21,'Can delete cabinet',7,'delete_cabinet'),(22,'Can add security device',8,'add_securitydevice'),(23,'Can change security device',8,'change_securitydevice'),(24,'Can delete security device',8,'delete_securitydevice'),(25,'Can add 软件/系统',9,'add_software'),(26,'Can change 软件/系统',9,'change_software'),(27,'Can delete 软件/系统',9,'delete_software'),(28,'Can add 合同',10,'add_contract'),(29,'Can change 合同',10,'change_contract'),(30,'Can delete 合同',10,'delete_contract'),(31,'Can add 资产总表',11,'add_asset'),(32,'Can change 资产总表',11,'change_asset'),(33,'Can delete 资产总表',11,'delete_asset'),(34,'Can add 业务线',12,'add_businessunit'),(35,'Can change 业务线',12,'change_businessunit'),(36,'Can delete 业务线',12,'delete_businessunit'),(37,'Can add tag',13,'add_tag'),(38,'Can change tag',13,'change_tag'),(39,'Can delete tag',13,'delete_tag'),(40,'Can add 服务器',14,'add_server'),(41,'Can change 服务器',14,'change_server'),(42,'Can delete 服务器',14,'delete_server'),(43,'Can add 硬盘',15,'add_disk'),(44,'Can change 硬盘',15,'change_disk'),(45,'Can delete 硬盘',15,'delete_disk'),(46,'Can add 事件纪录',16,'add_eventlog'),(47,'Can change 事件纪录',16,'change_eventlog'),(48,'Can delete 事件纪录',16,'delete_eventlog'),(49,'Can add 厂商',17,'add_manufactory'),(50,'Can change 厂商',17,'change_manufactory'),(51,'Can delete 厂商',17,'delete_manufactory'),(52,'Can add raid adaptor',18,'add_raidadaptor'),(53,'Can change raid adaptor',18,'change_raidadaptor'),(54,'Can delete raid adaptor',18,'delete_raidadaptor'),(55,'Can add 机房',19,'add_idc'),(56,'Can change 机房',19,'change_idc'),(57,'Can delete 机房',19,'delete_idc'),(58,'Can add RAM',20,'add_ram'),(59,'Can change RAM',20,'change_ram'),(60,'Can delete RAM',20,'delete_ram'),(61,'Can add 网络设备',21,'add_networkdevice'),(62,'Can change 网络设备',21,'change_networkdevice'),(63,'Can delete 网络设备',21,'delete_networkdevice'),(64,'Can add user profile',22,'add_userprofile'),(65,'Can change user profile',22,'change_userprofile'),(66,'Can delete user profile',22,'delete_userprofile'),(67,'Can add 网卡',23,'add_nic'),(68,'Can change 网卡',23,'change_nic'),(69,'Can delete 网卡',23,'delete_nic'),(70,'Can add CPU部件',24,'add_cpu'),(71,'Can change CPU部件',24,'change_cpu'),(72,'Can delete CPU部件',24,'delete_cpu'),(73,'Can add 新上线待批准资产',25,'add_newassetapprovalzone'),(74,'Can change 新上线待批准资产',25,'change_newassetapprovalzone'),(75,'Can delete 新上线待批准资产',25,'delete_newassetapprovalzone');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$THB38HmODv6z$geHuyEhYGhyV4QUTBaeV9i8JfkYRkvidaMDmMH3KEU0=','2017-06-27 03:32:17.700100',1,'wangyufu','','','',1,1,'2017-06-24 07:39:14.585824');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-07-05 07:02:09.895481','2','Intel(R) Xeon(R) CPU           E5620  @ 2.40GHz',3,'',24,1),(2,'2017-07-05 07:02:25.307042','2','1234567890 sn:1234567890',3,'',14,1),(3,'2017-07-05 07:02:38.164707','11','1234567890',3,'',25,1),(4,'2017-07-05 07:08:37.414640','4','1234567890 sn:1234567890',3,'',14,1),(5,'2017-07-05 07:09:49.230987','4','Intel(R) Xeon(R) CPU           E5620  @ 2.40GHz',3,'',24,1),(6,'2017-07-05 08:25:53.357339','2','<id:2 name:1234567890>',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',11,1),(7,'2017-07-05 08:31:32.481927','2','<id:2 name:1234567890>',2,'[{\"changed\": {\"fields\": [\"status\"]}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(11,'web','asset'),(12,'web','businessunit'),(7,'web','cabinet'),(10,'web','contract'),(24,'web','cpu'),(15,'web','disk'),(16,'web','eventlog'),(19,'web','idc'),(17,'web','manufactory'),(21,'web','networkdevice'),(25,'web','newassetapprovalzone'),(23,'web','nic'),(18,'web','raidadaptor'),(20,'web','ram'),(8,'web','securitydevice'),(14,'web','server'),(9,'web','software'),(13,'web','tag'),(22,'web','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-06-24 07:38:31.033316'),(2,'auth','0001_initial','2017-06-24 07:38:31.577903'),(3,'admin','0001_initial','2017-06-24 07:38:31.700379'),(4,'admin','0002_logentry_remove_auto_add','2017-06-24 07:38:31.711910'),(5,'contenttypes','0002_remove_content_type_name','2017-06-24 07:38:31.795633'),(6,'auth','0002_alter_permission_name_max_length','2017-06-24 07:38:31.847269'),(7,'auth','0003_alter_user_email_max_length','2017-06-24 07:38:31.905425'),(8,'auth','0004_alter_user_username_opts','2017-06-24 07:38:31.917959'),(9,'auth','0005_alter_user_last_login_null','2017-06-24 07:38:31.963078'),(10,'auth','0006_require_contenttypes_0002','2017-06-24 07:38:31.968091'),(11,'auth','0007_alter_validators_add_error_messages','2017-06-24 07:38:31.980624'),(12,'auth','0008_alter_user_username_max_length','2017-06-24 07:38:32.034769'),(13,'sessions','0001_initial','2017-06-24 07:38:32.070865'),(14,'web','0001_initial','2017-06-24 07:38:34.354943'),(15,'web','0002_newassetapprovalzone','2017-06-26 08:46:46.128954');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3hbnj58r2k32cs4xm2dl5jvnchmh4c9o','MDg0ZTYzYjQyMjc2YmFhZDM0NWYwMWY0MTE3NzliYTNmNDc4M2QyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTAwNmE2OWJjZjYzOTU0ZTJjNTQ0YjhiZDEyNGQ0YjUxZDZkYmMxIn0=','2017-07-08 07:39:30.922989'),('x9nw2gmody5ck5kovu3vxv6q31bg2a1b','MDg0ZTYzYjQyMjc2YmFhZDM0NWYwMWY0MTE3NzliYTNmNDc4M2QyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMTAwNmE2OWJjZjYzOTU0ZTJjNTQ0YjhiZDEyNGQ0YjUxZDZkYmMxIn0=','2017-07-11 03:32:17.704109');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_asset`
--

DROP TABLE IF EXISTS `web_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_asset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `sn` varchar(128) NOT NULL,
  `management_ip` char(39) DEFAULT NULL,
  `trade_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `memo` longtext,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `business_unit_id` int(11) DEFAULT NULL,
  `cabinet_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `manufactory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `sn` (`sn`),
  KEY `web_asset_admin_id_9018753e_fk_web_userprofile_id` (`admin_id`),
  KEY `web_asset_business_unit_id_1f6e0986_fk_web_businessunit_id` (`business_unit_id`),
  KEY `web_asset_cabinet_id_89ca82f1_fk_web_cabinet_id` (`cabinet_id`),
  KEY `web_asset_contract_id_ffbb2d31_fk_web_contract_id` (`contract_id`),
  KEY `web_asset_manufactory_id_f992ee2a_fk_web_manufactory_id` (`manufactory_id`),
  CONSTRAINT `web_asset_admin_id_9018753e_fk_web_userprofile_id` FOREIGN KEY (`admin_id`) REFERENCES `web_userprofile` (`id`),
  CONSTRAINT `web_asset_business_unit_id_1f6e0986_fk_web_businessunit_id` FOREIGN KEY (`business_unit_id`) REFERENCES `web_businessunit` (`id`),
  CONSTRAINT `web_asset_cabinet_id_89ca82f1_fk_web_cabinet_id` FOREIGN KEY (`cabinet_id`) REFERENCES `web_cabinet` (`id`),
  CONSTRAINT `web_asset_contract_id_ffbb2d31_fk_web_contract_id` FOREIGN KEY (`contract_id`) REFERENCES `web_contract` (`id`),
  CONSTRAINT `web_asset_manufactory_id_f992ee2a_fk_web_manufactory_id` FOREIGN KEY (`manufactory_id`) REFERENCES `web_manufactory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_asset`
--

LOCK TABLES `web_asset` WRITE;
/*!40000 ALTER TABLE `web_asset` DISABLE KEYS */;
INSERT INTO `web_asset` VALUES (1,'server','00329-00000-00003-AA066','00329-00000-00003-AA066',NULL,NULL,NULL,NULL,0,NULL,'2017-06-27 07:17:40.727023','2017-06-27 07:17:40.750586',NULL,NULL,NULL,NULL,1),(2,'server','1234567890','1234567890',NULL,NULL,NULL,NULL,1,'','2017-06-27 07:20:39.928113','2017-07-05 09:49:51.745356',NULL,NULL,NULL,NULL,2),(3,'server','1XRG5Z1','1XRG5Z1',NULL,NULL,NULL,NULL,0,NULL,'2017-06-29 06:11:57.934318','2017-06-29 06:11:57.953869',NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `web_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_asset_tags`
--

DROP TABLE IF EXISTS `web_asset_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_asset_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_asset_tags_asset_id_tag_id_4ed87ecb_uniq` (`asset_id`,`tag_id`),
  KEY `web_asset_tags_tag_id_ca1fc672_fk_web_tag_id` (`tag_id`),
  CONSTRAINT `web_asset_tags_asset_id_85542ab1_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`),
  CONSTRAINT `web_asset_tags_tag_id_ca1fc672_fk_web_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `web_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_asset_tags`
--

LOCK TABLES `web_asset_tags` WRITE;
/*!40000 ALTER TABLE `web_asset_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_asset_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_businessunit`
--

DROP TABLE IF EXISTS `web_businessunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_businessunit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `memo` varchar(64) NOT NULL,
  `parent_unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `web_businessunit_parent_unit_id_a5719470_fk_web_businessunit_id` (`parent_unit_id`),
  CONSTRAINT `web_businessunit_parent_unit_id_a5719470_fk_web_businessunit_id` FOREIGN KEY (`parent_unit_id`) REFERENCES `web_businessunit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_businessunit`
--

LOCK TABLES `web_businessunit` WRITE;
/*!40000 ALTER TABLE `web_businessunit` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_businessunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_cabinet`
--

DROP TABLE IF EXISTS `web_cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_cabinet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(32) NOT NULL,
  `idc_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_cabinet_idc_id_number_563d0c29_uniq` (`idc_id`,`number`),
  CONSTRAINT `web_cabinet_idc_id_56984061_fk_web_idc_id` FOREIGN KEY (`idc_id`) REFERENCES `web_idc` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_cabinet`
--

LOCK TABLES `web_cabinet` WRITE;
/*!40000 ALTER TABLE `web_cabinet` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_contract`
--

DROP TABLE IF EXISTS `web_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(128) NOT NULL,
  `name` varchar(64) NOT NULL,
  `memo` longtext,
  `price` int(11) NOT NULL,
  `detail` longtext,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `license_num` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_contract`
--

LOCK TABLES `web_contract` WRITE;
/*!40000 ALTER TABLE `web_contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_cpu`
--

DROP TABLE IF EXISTS `web_cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_cpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu_model` varchar(128) NOT NULL,
  `cpu_count` smallint(6) NOT NULL,
  `cpu_core_count` smallint(6) NOT NULL,
  `memo` longtext,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  CONSTRAINT `web_cpu_asset_id_a0f4f405_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_cpu`
--

LOCK TABLES `web_cpu` WRITE;
/*!40000 ALTER TABLE `web_cpu` DISABLE KEYS */;
INSERT INTO `web_cpu` VALUES (1,'Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz',1,4,NULL,'2017-06-27 07:17:40.755598','2017-06-27 07:17:40.755598',1),(3,'Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz',32,256,NULL,'2017-06-29 06:11:57.957880','2017-06-29 06:11:57.958381',3),(6,'Intel(R) Xeon(R) CPU           E5620  @ 2.40GHz',16,64,NULL,'2017-07-05 07:10:09.020026','2017-07-05 09:49:51.740345',2);
/*!40000 ALTER TABLE `web_cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_disk`
--

DROP TABLE IF EXISTS `web_disk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_disk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(128) DEFAULT NULL,
  `slot` varchar(64) NOT NULL,
  `model` varchar(128) DEFAULT NULL,
  `capacity` double NOT NULL,
  `iface_type` varchar(64) NOT NULL,
  `memo` longtext,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_disk_asset_id_slot_1dbd4c87_uniq` (`asset_id`,`slot`),
  CONSTRAINT `web_disk_asset_id_733c75f9_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_disk`
--

LOCK TABLES `web_disk` WRITE;
/*!40000 ALTER TABLE `web_disk` DISABLE KEYS */;
INSERT INTO `web_disk` VALUES (1,'        16NS111YTUQW','0','TOSHIBA THNSNJ128G8NY',119,'unknown',NULL,'2017-06-27 07:17:40.765625',NULL,1),(2,'      JR100X4M0MS3GE','1','HGST HTS721010A9E630',931,'unknown',NULL,'2017-06-27 07:17:40.772644',NULL,1),(3,NULL,'0','S33RNWAHA04534V     Samsung SSD 750 EVO 250GB               MAT01B6Q',232.885,'SATA',NULL,'2017-06-29 06:11:57.965400',NULL,3),(4,NULL,'1','S33RNWAHA04525Y     Samsung SSD 750 EVO 250GB               MAT01B6Q',232.885,'SATA',NULL,'2017-06-29 06:11:57.969411',NULL,3);
/*!40000 ALTER TABLE `web_disk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_eventlog`
--

DROP TABLE IF EXISTS `web_eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_eventlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `event_type` smallint(6) NOT NULL,
  `component` varchar(255) DEFAULT NULL,
  `detail` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `memo` longtext,
  `asset_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `web_eventlog_asset_id_5240d5b7_fk_web_asset_id` (`asset_id`),
  KEY `web_eventlog_user_id_f7396c8d_fk_web_userprofile_id` (`user_id`),
  CONSTRAINT `web_eventlog_asset_id_5240d5b7_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`),
  CONSTRAINT `web_eventlog_user_id_f7396c8d_fk_web_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `web_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_eventlog`
--

LOCK TABLES `web_eventlog` WRITE;
/*!40000 ALTER TABLE `web_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_eventlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_idc`
--

DROP TABLE IF EXISTS `web_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_idc`
--

LOCK TABLES `web_idc` WRITE;
/*!40000 ALTER TABLE `web_idc` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_manufactory`
--

DROP TABLE IF EXISTS `web_manufactory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_manufactory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufactory` varchar(64) NOT NULL,
  `support_num` varchar(30) NOT NULL,
  `memo` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `manufactory` (`manufactory`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_manufactory`
--

LOCK TABLES `web_manufactory` WRITE;
/*!40000 ALTER TABLE `web_manufactory` DISABLE KEYS */;
INSERT INTO `web_manufactory` VALUES (1,'Micro-Star International Co., Ltd.','',''),(2,'Supermicro','',''),(3,'Dell Inc.','','');
/*!40000 ALTER TABLE `web_manufactory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_networkdevice`
--

DROP TABLE IF EXISTS `web_networkdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_networkdevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_asset_type` smallint(6) NOT NULL,
  `vlan_ip` char(39) DEFAULT NULL,
  `intranet_ip` char(39) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `port_num` smallint(6) DEFAULT NULL,
  `device_detail` longtext,
  `asset_id` int(11) NOT NULL,
  `firmware_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  KEY `web_networkdevice_firmware_id_00180fe5_fk_web_software_id` (`firmware_id`),
  CONSTRAINT `web_networkdevice_asset_id_cbd509bb_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`),
  CONSTRAINT `web_networkdevice_firmware_id_00180fe5_fk_web_software_id` FOREIGN KEY (`firmware_id`) REFERENCES `web_software` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_networkdevice`
--

LOCK TABLES `web_networkdevice` WRITE;
/*!40000 ALTER TABLE `web_networkdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_networkdevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_newassetapprovalzone`
--

DROP TABLE IF EXISTS `web_newassetapprovalzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_newassetapprovalzone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(128) NOT NULL,
  `asset_type` varchar(64) DEFAULT NULL,
  `manufactory` varchar(64) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `ram_size` int(11) DEFAULT NULL,
  `cpu_model` varchar(128) DEFAULT NULL,
  `cpu_count` int(11) DEFAULT NULL,
  `cpu_core_count` int(11) DEFAULT NULL,
  `os_distribution` varchar(64) DEFAULT NULL,
  `os_type` varchar(64) DEFAULT NULL,
  `os_release` varchar(64) DEFAULT NULL,
  `data` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `approved_date` datetime(6) DEFAULT NULL,
  `approved_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `web_newassetapproval_approved_by_id_dbb623e7_fk_web_userp` (`approved_by_id`),
  CONSTRAINT `web_newassetapproval_approved_by_id_dbb623e7_fk_web_userp` FOREIGN KEY (`approved_by_id`) REFERENCES `web_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_newassetapprovalzone`
--

LOCK TABLES `web_newassetapprovalzone` WRITE;
/*!40000 ALTER TABLE `web_newassetapprovalzone` DISABLE KEYS */;
INSERT INTO `web_newassetapprovalzone` VALUES (6,'00329-00000-00003-AA066','server','Micro-Star International Co., Ltd.','GE62 6QC',NULL,'Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz',1,4,'Microsoft','Windows','10 64bit  10.0.10240 ','{\"asset_id\": null, \"ram\": [{\"manufactory\": \"SK Hynix\", \"capacity\": 8192, \"model\": \"\\u7269\\u7406\\u5185\\u5b58\", \"slot\": \"ChannelA-DIMM0\", \"sn\": \"37181125\"}], \"physical_disk_driver\": [{\"capacity\": 119, \"slot\": 0, \"sn\": \"        16NS111YTUQW\", \"manufactory\": \"(\\u6807\\u51c6\\u78c1\\u76d8\\u9a71\\u52a8\\u5668)\", \"iface_type\": \"unknown\", \"model\": \"TOSHIBA THNSNJ128G8NY\"}, {\"capacity\": 931, \"slot\": 1, \"sn\": \"      JR100X4M0MS3GE\", \"manufactory\": \"(\\u6807\\u51c6\\u78c1\\u76d8\\u9a71\\u52a8\\u5668)\", \"iface_type\": \"unknown\", \"model\": \"HGST HTS721010A9E630\"}], \"os_distribution\": \"Microsoft\", \"cpu_model\": \"Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz\", \"asset_type\": \"server\", \"cpu_count\": 1, \"wake_up_type\": 6, \"os_type\": \"Windows\", \"sn\": \"00329-00000-00003-AA066\", \"manufactory\": \"Micro-Star International Co., Ltd.\", \"cpu_core_count\": 4, \"nic\": [{\"netmask\": \"\", \"name\": 1, \"macaddress\": \"08:D4:0C:F0:C4:A4\", \"model\": \"[00000001] Intel(R) Dual Band Wireless-AC 3165\", \"ipaddress\": \"\"}, {\"netmask\": \"\", \"name\": 2, \"macaddress\": \"08:D4:0C:F0:C4:A5\", \"model\": \"[00000002] Microsoft Wi-Fi Direct Virtual Adapter\", \"ipaddress\": \"\"}, {\"netmask\": \"\", \"name\": 6, \"macaddress\": \"08:D4:0C:F0:C4:A8\", \"model\": \"[00000006] Bluetooth Device (Personal Area Network)\", \"ipaddress\": \"\"}, {\"netmask\": [\"255.255.255.0\", \"64\"], \"name\": 7, \"macaddress\": \"D8:CB:8A:F2:D4:04\", \"model\": \"[00000007] Killer E2400 Gigabit Ethernet Controller\", \"ipaddress\": \"192.168.1.167\"}, {\"netmask\": [\"255.255.255.0\", \"64\"], \"name\": 8, \"macaddress\": \"00:50:56:C0:00:01\", \"model\": \"[00000008] VMware Virtual Ethernet Adapter for VMnet1\", \"ipaddress\": \"192.168.74.1\"}, {\"netmask\": [\"255.255.255.0\", \"64\"], \"name\": 9, \"macaddress\": \"00:50:56:C0:00:08\", \"model\": \"[00000009] VMware Virtual Ethernet Adapter for VMnet8\", \"ipaddress\": \"192.168.56.1\"}, {\"netmask\": \"\", \"name\": 15, \"macaddress\": \"00:FF:AD:E1:66:A5\", \"model\": \"[00000015] TAP-Windows Adapter V9\", \"ipaddress\": \"\"}], \"os_release\": \"10 64bit  10.0.10240 \", \"model\": \"GE62 6QC\"}','2017-06-26 09:40:40.984130',1,NULL,NULL),(12,'1XRG5Z1','server','Dell Inc.','PowerEdge R720',193404,'Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz',32,256,'Ubuntu','linux','Ubuntu 14.04.4 LTS','{\"ram\": [{\"sn\": \"8598F217\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A1\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F08E\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A2\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F09D\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A3\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F21F\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A4\", \"asset_tag\": \"02113763\"}, {\"sn\": \"83959AC9\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A5\", \"asset_tag\": \"02113663\"}, {\"sn\": \"8598F086\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A6\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F1B4\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A7\", \"asset_tag\": \"02113763\"}, {\"sn\": \"51716BA4\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A8\", \"asset_tag\": \"01113161\"}, {\"sn\": \"5D204EF4\", \"manufactory\": \"00AD04B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A9\", \"asset_tag\": \"01110311\"}, {\"sn\": \"5E303E23\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A10\", \"asset_tag\": \"01110161\"}, {\"sn\": \"5C283BAE\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A11\", \"asset_tag\": \"01113161\"}, {\"sn\": \"1A8C2488\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_A12\", \"asset_tag\": \"01111361\"}, {\"sn\": \"8598F182\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B1\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8799AD62\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B2\", \"asset_tag\": \"02113663\"}, {\"sn\": \"8598F014\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B3\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F21C\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B4\", \"asset_tag\": \"02113763\"}, {\"sn\": \"8598F145\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B5\", \"asset_tag\": \"02113763\"}, {\"sn\": \"839FD1CE\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B6\", \"asset_tag\": \"02114363\"}, {\"sn\": \"8598F175\", \"manufactory\": \"00CE00B300CE\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B7\", \"asset_tag\": \"02113763\"}, {\"sn\": \"5C383BD0\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B8\", \"asset_tag\": \"01113161\"}, {\"sn\": \"1A97429E\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B9\", \"asset_tag\": \"01102761\"}, {\"sn\": \"5C783BC3\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B10\", \"asset_tag\": \"01113161\"}, {\"sn\": \"51116B9D\", \"manufactory\": \"00AD00B300AD\", \"capacity\": \"8192\", \"model\": \"DDR3\", \"slot\": \"DIMM_B11\", \"asset_tag\": \"01113161\"}], \"cpu_core_count\": \"256\", \"ram_size\": 193404, \"uuid\": \"4C4C4544-0058-5210-8047-B1C04F355A31\", \"cpu_count\": \"32\", \"asset_type\": \"server\", \"nic\": [{\"network\": \"192.168.1.255\", \"bonding\": 0, \"name\": \"em1\", \"ipaddress\": \"192.168.1.90\", \"model\": \"unknown\", \"netmask\": \"255.255.255.0\", \"macaddress\": \"b8:ca:3a:fa:87:25\"}, {\"network\": null, \"bonding\": 0, \"name\": \"em2\", \"ipaddress\": null, \"model\": \"unknown\", \"netmask\": null, \"macaddress\": \"b8:ca:3a:fa:87:26\"}], \"model\": \"PowerEdge R720\", \"os_type\": \"linux\", \"cpu_model\": \"Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz\", \"physical_disk_driver\": [{\"model\": \"S33RNWAHA04534V     Samsung SSD 750 EVO 250GB               MAT01B6Q\", \"iface_type\": \"SATA\", \"slot\": \"0\", \"capacity\": \"232.885\"}, {\"model\": \"S33RNWAHA04525Y     Samsung SSD 750 EVO 250GB               MAT01B6Q\", \"iface_type\": \"SATA\", \"slot\": \"1\", \"capacity\": \"232.885\"}], \"os_release\": \"Ubuntu 14.04.4 LTS\", \"manufactory\": \"Dell Inc.\", \"asset_id\": null, \"wake_up_type\": \"Power Switch\", \"os_distribution\": \"Ubuntu\", \"sn\": \"1XRG5Z1\"}','2017-06-29 06:11:11.686063',1,NULL,NULL);
/*!40000 ALTER TABLE `web_newassetapprovalzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_nic`
--

DROP TABLE IF EXISTS `web_nic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_nic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `sn` varchar(128) DEFAULT NULL,
  `model` varchar(128) DEFAULT NULL,
  `macaddress` varchar(64) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `netmask` varchar(64) DEFAULT NULL,
  `bonding` varchar(64) DEFAULT NULL,
  `memo` varchar(128) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `macaddress` (`macaddress`),
  KEY `web_nic_asset_id_a430e539_fk_web_asset_id` (`asset_id`),
  CONSTRAINT `web_nic_asset_id_a430e539_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_nic`
--

LOCK TABLES `web_nic` WRITE;
/*!40000 ALTER TABLE `web_nic` DISABLE KEYS */;
INSERT INTO `web_nic` VALUES (1,'1',NULL,'[00000001] Intel(R) Dual Band Wireless-AC 3165','08:D4:0C:F0:C4:A4',NULL,'',NULL,NULL,'2017-06-27 07:17:40.776153','2017-06-27 07:17:40.776153',1),(2,'2',NULL,'[00000002] Microsoft Wi-Fi Direct Virtual Adapter','08:D4:0C:F0:C4:A5',NULL,'',NULL,NULL,'2017-06-27 07:17:40.784676','2017-06-27 07:17:40.784676',1),(3,'6',NULL,'[00000006] Bluetooth Device (Personal Area Network)','08:D4:0C:F0:C4:A8',NULL,'',NULL,NULL,'2017-06-27 07:17:40.787183','2017-06-27 07:17:40.787183',1),(4,'7',NULL,'[00000007] Killer E2400 Gigabit Ethernet Controller','D8:CB:8A:F2:D4:04','192.168.1.167','[\'255.255.255.0\', \'64\']',NULL,NULL,'2017-06-27 07:17:40.792196','2017-06-27 07:17:40.792196',1),(5,'8',NULL,'[00000008] VMware Virtual Ethernet Adapter for VMnet1','00:50:56:C0:00:01','192.168.74.1','[\'255.255.255.0\', \'64\']',NULL,NULL,'2017-06-27 07:17:40.795204','2017-06-27 07:17:40.795204',1),(6,'9',NULL,'[00000009] VMware Virtual Ethernet Adapter for VMnet8','00:50:56:C0:00:08','192.168.56.1','[\'255.255.255.0\', \'64\']',NULL,NULL,'2017-06-27 07:17:40.798212','2017-06-27 07:17:40.798212',1),(7,'15',NULL,'[00000015] TAP-Windows Adapter V9','00:FF:AD:E1:66:A5',NULL,'',NULL,NULL,'2017-06-27 07:17:40.800718','2017-06-27 07:17:40.800718',1),(8,'em1',NULL,'unknown','b8:ca:3a:fa:87:25','192.168.1.90','255.255.255.0','0',NULL,'2017-06-29 06:11:57.972419','2017-06-29 06:11:57.972419',3),(9,'em2',NULL,'unknown','b8:ca:3a:fa:87:26',NULL,NULL,'0',NULL,'2017-06-29 06:11:57.978435','2017-06-29 06:11:57.978435',3),(10,'vetha9cc86b',NULL,'unknown','8a:27:bf:9e:72:42',NULL,NULL,'0',NULL,'2017-07-05 07:05:57.763701','2017-07-05 09:49:51.688204',2),(11,'veth6b00158',NULL,'unknown','5a:7d:a3:23:4b:1f',NULL,NULL,'0',NULL,'2017-07-05 07:10:08.999972','2017-07-05 09:49:51.693217',2),(12,'veth511948d',NULL,'unknown','8e:f2:21:10:3f:75',NULL,NULL,'0',NULL,'2017-07-05 07:16:59.508121','2017-07-05 09:49:51.696225',2),(13,'vethdeced5c',NULL,'unknown','52:17:8f:c2:ab:f9',NULL,NULL,'0',NULL,'2017-07-05 07:19:49.328767','2017-07-05 09:49:51.698731',2),(14,'veth3026eb0',NULL,'unknown','2e:4d:57:af:c3:eb',NULL,NULL,'0',NULL,'2017-07-05 09:49:51.708257','2017-07-05 09:49:51.708257',2);
/*!40000 ALTER TABLE `web_nic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_raidadaptor`
--

DROP TABLE IF EXISTS `web_raidadaptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_raidadaptor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(128) DEFAULT NULL,
  `slot` varchar(64) NOT NULL,
  `model` varchar(64) DEFAULT NULL,
  `memo` longtext,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_raidadaptor_asset_id_slot_d56d88ba_uniq` (`asset_id`,`slot`),
  CONSTRAINT `web_raidadaptor_asset_id_50c1ff1b_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_raidadaptor`
--

LOCK TABLES `web_raidadaptor` WRITE;
/*!40000 ALTER TABLE `web_raidadaptor` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_raidadaptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_ram`
--

DROP TABLE IF EXISTS `web_ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_ram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(128) DEFAULT NULL,
  `model` varchar(128) NOT NULL,
  `slot` varchar(64) NOT NULL,
  `capacity` int(11) NOT NULL,
  `memo` varchar(128) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_ram_asset_id_slot_c4e9c0c3_uniq` (`asset_id`,`slot`),
  CONSTRAINT `web_ram_asset_id_e5e0b7a8_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_ram`
--

LOCK TABLES `web_ram` WRITE;
/*!40000 ALTER TABLE `web_ram` DISABLE KEYS */;
INSERT INTO `web_ram` VALUES (1,'37181125','物理内存','ChannelA-DIMM0',8192,NULL,'2017-06-27 07:17:40.804228','2017-06-27 07:17:40.804228',1),(2,'8598F217','DDR3','DIMM_A1',8192,NULL,'2017-06-29 06:11:57.981442','2017-06-29 06:11:57.981442',3),(3,'8598F08E','DDR3','DIMM_A2',8192,NULL,'2017-06-29 06:11:57.987960','2017-06-29 06:11:57.987960',3),(4,'8598F09D','DDR3','DIMM_A3',8192,NULL,'2017-06-29 06:11:57.990469','2017-06-29 06:11:57.990469',3),(5,'8598F21F','DDR3','DIMM_A4',8192,NULL,'2017-06-29 06:11:57.994979','2017-06-29 06:11:57.994979',3),(6,'83959AC9','DDR3','DIMM_A5',8192,NULL,'2017-06-29 06:11:57.997485','2017-06-29 06:11:57.997485',3),(7,'8598F086','DDR3','DIMM_A6',8192,NULL,'2017-06-29 06:11:57.999491','2017-06-29 06:11:57.999491',3),(8,'8598F1B4','DDR3','DIMM_A7',8192,NULL,'2017-06-29 06:11:58.001496','2017-06-29 06:11:58.001496',3),(9,'51716BA4','DDR3','DIMM_A8',8192,NULL,'2017-06-29 06:11:58.004003','2017-06-29 06:11:58.004003',3),(10,'5D204EF4','DDR3','DIMM_A9',8192,NULL,'2017-06-29 06:11:58.006008','2017-06-29 06:11:58.006008',3),(11,'5E303E23','DDR3','DIMM_A10',8192,NULL,'2017-06-29 06:11:58.008013','2017-06-29 06:11:58.008013',3),(12,'5C283BAE','DDR3','DIMM_A11',8192,NULL,'2017-06-29 06:11:58.010521','2017-06-29 06:11:58.010521',3),(13,'1A8C2488','DDR3','DIMM_A12',8192,NULL,'2017-06-29 06:11:58.012525','2017-06-29 06:11:58.012525',3),(14,'8598F182','DDR3','DIMM_B1',8192,NULL,'2017-06-29 06:11:58.015534','2017-06-29 06:11:58.015534',3),(15,'8799AD62','DDR3','DIMM_B2',8192,NULL,'2017-06-29 06:11:58.018541','2017-06-29 06:11:58.018541',3),(16,'8598F014','DDR3','DIMM_B3',8192,NULL,'2017-06-29 06:11:58.020547','2017-06-29 06:11:58.021049',3),(17,'8598F21C','DDR3','DIMM_B4',8192,NULL,'2017-06-29 06:11:58.023555','2017-06-29 06:11:58.023555',3),(18,'8598F145','DDR3','DIMM_B5',8192,NULL,'2017-06-29 06:11:58.026062','2017-06-29 06:11:58.026062',3),(19,'839FD1CE','DDR3','DIMM_B6',8192,NULL,'2017-06-29 06:11:58.029070','2017-06-29 06:11:58.029070',3),(20,'8598F175','DDR3','DIMM_B7',8192,NULL,'2017-06-29 06:11:58.032078','2017-06-29 06:11:58.032078',3),(21,'5C383BD0','DDR3','DIMM_B8',8192,NULL,'2017-06-29 06:11:58.034089','2017-06-29 06:11:58.034089',3),(22,'1A97429E','DDR3','DIMM_B9',8192,NULL,'2017-06-29 06:11:58.037091','2017-06-29 06:11:58.037091',3),(23,'5C783BC3','DDR3','DIMM_B10',8192,NULL,'2017-06-29 06:11:58.039601','2017-06-29 06:11:58.039601',3),(24,'51116B9D','DDR3','DIMM_B11',8192,NULL,'2017-06-29 06:11:58.041608','2017-06-29 06:11:58.041608',3),(25,'44EE5113','DDR3','P1-DIMM1A',16384,NULL,'2017-07-05 07:05:57.774732','2017-07-05 09:49:51.719287',2),(26,'35EE5113','DDR3','P1-DIMM1B',16384,NULL,'2017-07-05 07:10:09.015015','2017-07-05 09:49:51.722797',2),(27,'61CE7787','DDR3','P1-DIMM2A',8192,NULL,'2017-07-05 07:16:59.529678','2017-07-05 09:49:51.726306',2),(28,'A7CC7787','DDR3','P1-DIMM2B',8192,NULL,'2017-07-05 07:19:49.350825','2017-07-05 09:49:51.730316',2),(29,'5ECE7787','DDR3','P1-DIMM3A',8192,NULL,'2017-07-05 09:49:51.733826','2017-07-05 09:49:51.734327',2);
/*!40000 ALTER TABLE `web_ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_securitydevice`
--

DROP TABLE IF EXISTS `web_securitydevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_securitydevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_asset_type` smallint(6) NOT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  CONSTRAINT `web_securitydevice_asset_id_1438835d_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_securitydevice`
--

LOCK TABLES `web_securitydevice` WRITE;
/*!40000 ALTER TABLE `web_securitydevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_securitydevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_server`
--

DROP TABLE IF EXISTS `web_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_asset_type` smallint(6) NOT NULL,
  `created_by` varchar(32) NOT NULL,
  `model` varchar(128) DEFAULT NULL,
  `raid_type` varchar(512) DEFAULT NULL,
  `os_type` varchar(64) DEFAULT NULL,
  `os_distribution` varchar(64) DEFAULT NULL,
  `os_release` varchar(64) DEFAULT NULL,
  `asset_id` int(11) NOT NULL,
  `hosted_on_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_id` (`asset_id`),
  KEY `web_server_hosted_on_id_ca037dcd_fk_web_server_id` (`hosted_on_id`),
  CONSTRAINT `web_server_asset_id_78979794_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`),
  CONSTRAINT `web_server_hosted_on_id_ca037dcd_fk_web_server_id` FOREIGN KEY (`hosted_on_id`) REFERENCES `web_server` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_server`
--

LOCK TABLES `web_server` WRITE;
/*!40000 ALTER TABLE `web_server` DISABLE KEYS */;
INSERT INTO `web_server` VALUES (1,0,'auto','GE62 6QC',NULL,'Windows','Microsoft','10 64bit  10.0.10240 ',1,NULL),(3,0,'auto','PowerEdge R720',NULL,'linux','Ubuntu','Ubuntu 14.04.4 LTS',3,NULL),(5,0,'auto','X8DTT',NULL,'linux','Ubuntu','Ubuntu 14.04.4 LTS',2,NULL);
/*!40000 ALTER TABLE `web_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_software`
--

DROP TABLE IF EXISTS `web_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_asset_type` smallint(6) NOT NULL,
  `license_num` int(11) NOT NULL,
  `version` varchar(64) NOT NULL,
  `asset_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  UNIQUE KEY `asset_id` (`asset_id`),
  CONSTRAINT `web_software_asset_id_e97c3277_fk_web_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `web_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_software`
--

LOCK TABLES `web_software` WRITE;
/*!40000 ALTER TABLE `web_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_tag`
--

DROP TABLE IF EXISTS `web_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `create_date` date NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `web_tag_creator_id_c5c1b0e5_fk_web_userprofile_id` (`creator_id`),
  CONSTRAINT `web_tag_creator_id_c5c1b0e5_fk_web_userprofile_id` FOREIGN KEY (`creator_id`) REFERENCES `web_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_tag`
--

LOCK TABLES `web_tag` WRITE;
/*!40000 ALTER TABLE `web_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_userprofile`
--

DROP TABLE IF EXISTS `web_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `web_userprofile_user_id_3dea3d05_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_userprofile`
--

LOCK TABLES `web_userprofile` WRITE;
/*!40000 ALTER TABLE `web_userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-07 17:38:42
