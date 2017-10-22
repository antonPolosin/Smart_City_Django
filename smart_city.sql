-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: smart_city
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add restaurant',1,'add_restaurant'),(2,'Can change restaurant',1,'change_restaurant'),(3,'Can delete restaurant',1,'delete_restaurant'),(4,'Can add park',2,'add_park'),(5,'Can change park',2,'change_park'),(6,'Can delete park',2,'delete_park'),(7,'Can add log entry',3,'add_logentry'),(8,'Can change log entry',3,'change_logentry'),(9,'Can delete log entry',3,'delete_logentry'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add group',5,'add_group'),(14,'Can change group',5,'change_group'),(15,'Can delete group',5,'delete_group'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can add session',8,'add_session'),(23,'Can change session',8,'change_session'),(24,'Can delete session',8,'delete_session'),(25,'Can add member',12,'add_member'),(26,'Can change member',12,'change_member'),(27,'Can delete member',12,'delete_member'),(28,'Can add category',10,'add_category'),(29,'Can change category',10,'change_category'),(30,'Can delete category',10,'delete_category'),(31,'Can add result',9,'add_result'),(32,'Can change result',9,'change_result'),(33,'Can delete result',9,'delete_result'),(34,'Can add review',13,'add_review'),(35,'Can change review',13,'change_review'),(36,'Can delete review',13,'delete_review'),(37,'Can add industry',14,'add_industry'),(38,'Can change industry',14,'change_industry'),(39,'Can delete industry',14,'delete_industry'),(40,'Can add department',15,'add_department'),(41,'Can change department',15,'change_department'),(42,'Can delete department',15,'delete_department');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$Z2LgSNrZGC9H$EpvbiiL23FNVcvFR8DlqjPxHRiJ0hU6SCts3DX8tdiY=','2017-10-05 01:12:17.414955',1,'admin','','','admin@admin.com.au',1,1,'2017-09-04 07:34:38.936726'),(2,'pbkdf2_sha256$36000$9ix4u6pjcWyt$h6+5PvjZgObpdUsL+AU9vEdJHibbC0QqvTgGL2ottF8=','2017-09-11 08:30:37.611204',1,'aj','','','fake@email.com',1,1,'2017-09-11 06:00:06.874591');
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'College '),(2,'Libraries '),(3,'Industries'),(4,'Hotels'),(5,'Parks'),(6,'Zoos'),(7,'Museums'),(8,'Restaurants'),(9,'Malls');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `departmentID` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Architecture Building and Planning'),(2,'Arts'),(3,'Business and Economics'),(4,'Medicine, Dentistry and Health Sciences'),(5,'Melbourne Graduate School of Education'),(6,'Melbourne School of Engineering'),(7,'Melbourne Law School'),(8,'Science'),(9,'Veterinary and Agricultural Sciences');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-09-18 09:18:29.040128','14','14 Add',1,'[{\"added\": {}}]',10,2),(2,'2017-09-18 09:18:49.661346','14','14 Add',3,'',10,2),(3,'2017-09-19 04:33:11.877985','1','1 University of Queensland None St Lucia Brisbane 4072 QLD 07 33651111                uqUniversity@uq.edu.au Arts College',2,'[{\"changed\": {\"fields\": [\"departmentname\", \"departmentid\"]}}]',9,2),(4,'2017-09-20 08:39:49.790941','23','23 Holiday in 5 Mary Sydney 2000 NSW                 holidayInn@gmail.com None Place',1,'[{\"added\": {}}]',9,2),(5,'2017-09-21 01:45:53.223114','2','2 Queensland University of Technology 2 George street Brisbane 4000 QLD 07 31382111                qutUniversity@qut.edu.au None None 1 College ',2,'[{\"changed\": {\"fields\": [\"street\", \"phonenumber\"]}}]',9,2),(6,'2017-09-21 02:49:42.762636','24','24 Building Co 45 Deggar Brisbane 4100 QLD 04060232321                buildingco@industry.com.au None 6 Building services 3 Industries',1,'[{\"added\": {}}]',9,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(8,'sessions','session'),(10,'sites','category'),(15,'sites','department'),(16,'sites','image'),(14,'sites','industry'),(17,'sites','location'),(12,'sites','member'),(11,'sites','members'),(2,'sites','park'),(1,'sites','restaurant'),(9,'sites','result'),(13,'sites','review');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-09-04 05:46:36.702799'),(2,'auth','0001_initial','2017-09-04 05:46:37.047053'),(3,'admin','0001_initial','2017-09-04 05:46:37.132616'),(4,'admin','0002_logentry_remove_auto_add','2017-09-04 05:46:37.146626'),(5,'contenttypes','0002_remove_content_type_name','2017-09-04 05:46:37.221099'),(6,'auth','0002_alter_permission_name_max_length','2017-09-04 05:46:37.289922'),(7,'auth','0003_alter_user_email_max_length','2017-09-04 05:46:37.332700'),(8,'auth','0004_alter_user_username_opts','2017-09-04 05:46:37.347711'),(9,'auth','0005_alter_user_last_login_null','2017-09-04 05:46:37.384712'),(10,'auth','0006_require_contenttypes_0002','2017-09-04 05:46:37.391713'),(11,'auth','0007_alter_validators_add_error_messages','2017-09-04 05:46:37.405412'),(12,'auth','0008_alter_user_username_max_length','2017-09-04 05:46:37.443324'),(13,'sessions','0001_initial','2017-09-04 05:46:37.478107');
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
INSERT INTO `django_session` VALUES ('12ysu7tz4yde3ddx79qvj7c0lijjpqjv','ZTM1YWM4YmJkNDk0Mzg1MWQzMzM5ODRkNjdiNjM2NmQzNzdlMzFkYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTkwNWQ3YjBlOTIxNGVjYjJlZWRlYTAwY2MwOTM3M2M5OWNhMWE2In0=','2017-09-25 06:06:25.195590'),('f9d2i3sh1wdu2gf91qrzh4q1h1s45bsh','ZTM1YWM4YmJkNDk0Mzg1MWQzMzM5ODRkNjdiNjM2NmQzNzdlMzFkYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTkwNWQ3YjBlOTIxNGVjYjJlZWRlYTAwY2MwOTM3M2M5OWNhMWE2In0=','2017-09-25 08:30:37.615205'),('jvsgswcofvs3va4ti0avo9nf7c4eoef8','OTAyMjJlYWM0MmFhMDU5NGNmMDUzZWQ0Zjc2MDhmNzQ0ODAzYTg1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZGJhODZkNDQwMTUzZmFhN2FmOGM1Zjg1YTgyZjMyNGRjZWM2NTQwIn0=','2017-10-19 01:12:17.421960'),('umov85f5rhbvrsmpxm3kw4lod5ggyv8m','OTAyMjJlYWM0MmFhMDU5NGNmMDUzZWQ0Zjc2MDhmNzQ0ODAzYTg1Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZGJhODZkNDQwMTUzZmFhN2FmOGM1Zjg1YTgyZjMyNGRjZWM2NTQwIn0=','2017-09-18 07:35:10.038352');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `placeID` int(11) NOT NULL AUTO_INCREMENT,
  `imageName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`placeID`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`placeID`) REFERENCES `result` (`placeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `industryID` int(11) NOT NULL AUTO_INCREMENT,
  `industryName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`industryID`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'Agricultural industry'),(2,'Airline operations'),(3,'Airport operations'),(4,'Banking, finance and insurance '),(5,'Broadcasting and recorded entertainment '),(6,'Building services'),(7,'Building, metal and civil construction '),(8,'Business equipment industry'),(9,'Cement and concrete products'),(10,'Cemetery operations'),(11,'Children\'s services'),(12,'Christmas Island'),(13,'Cleaning services'),(14,'Clerical industry'),(15,'Clothing industry'),(16,'Diving services'),(17,'Dredging industry'),(18,'Dry cleaning and laundry services'),(19,'Educational services'),(20,'Electrical contracting industry'),(21,'Electrical power industry'),(22,'Fast food industry'),(23,'Federal police operations'),(24,'Fire fighting services'),(25,'Food, beverages and tobacco '),(26,'Funeral directing services'),(27,'Gardening services'),(28,'Grain handling industry'),(29,'Graphic arts'),(30,'Hair and beauty'),(31,'Health and welfare services'),(32,'Hospitality industry'),(33,'Indigenous organisations and services'),(34,'Journalism'),(35,'Licensed and registered clubs'),(36,'Live performance industry'),(37,'Local government administration'),(38,'Mannequins and modelling'),(39,'Manufacturing and associated industries'),(40,'Marine tourism and charter vessels'),(41,'Market and business consultancy services'),(42,'Meat industry'),(43,'Mining industry'),(44,'Miscellaneous'),(45,'Norfolk Island'),(46,'Northern Territory'),(47,'Nursery industry'),(48,'Passenger vehicle transport (non rail) '),(49,'Pet food manufacturing'),(50,'Pharmaceutical industry'),(51,'Pharmacy operations'),(52,'Plumbing industry'),(53,'Port authorities'),(54,'Postal services'),(55,'Poultry processing'),(56,'Publishing industry'),(57,'Quarrying industry'),(58,'Racing industry'),(59,'Rail industry'),(60,'Real estate industry'),(61,'Restaurants'),(62,'Retail industry'),(63,'Road transport industry'),(64,'Rubber, plastic and cable making industry'),(65,'Salt industry'),(66,'Scientific services'),(67,'Seafood processing'),(68,'Security services'),(69,'Social, community, home care and disability '),(70,'Sporting organisations'),(71,'State and Territory government administration'),(72,'Stevedoring industry'),(73,'Storage services'),(74,'Sugar industry'),(75,'Tasmania'),(76,'Technical services'),(77,'Telecommunications services'),(78,'Textile industry'),(79,'Timber and paper products industry'),(80,'Tourism industry'),(81,'Uranium mining (incl. construction)'),(82,'Vehicle industry'),(83,'Waste management industry'),(84,'Water, sewerage and drainage services'),(85,'Wine industry'),(86,'Wool storage, sampling and testing industry'),(349,'Aged care industry');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `placeID` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`placeID`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`placeID`) REFERENCES `result` (`placeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `userID` int(9) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(64) NOT NULL,
  `userName` varchar(64) NOT NULL,
  `salt` varchar(64) NOT NULL,
  `pwd` varchar(64) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `typeName` enum('student','tourist','businessman') DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'tester','testing','test@tes.com','test1','12312asdawdsad','123456','test','student'),(2,'Danica  ','Kacy  ','Danica_Kacy@gmail.com','DanKacy9','12312asdawdsad','123456',NULL,'businessman'),(3,'Ramona  ','Bryant  ','Ramona_Bryant@gmail.com','RamBrya9','12312asdawdsad','123456',NULL,'businessman'),(4,'Jong  ','Ron  ','Jong_Ron@gmail.com','JonRon6','12312asdawdsad','123456',NULL,'tourist'),(5,'Elana  ','Candra  ','Elana_Candra@gmail.com','ElaCand0','12312asdawdsad','123456',NULL,'businessman'),(6,'Lynetta  ','Cassondra  ','Lynetta_Cassondra@gmail.com','LynCass6','12312asdawdsad','123456',NULL,'student'),(7,'Twyla  ','Katheryn  ','Twyla_Katheryn@gmail.com','TwyKath6','12312asdawdsad','123456',NULL,'tourist'),(8,'Carmelia  ','Malissa  ','Carmelia_Malissa@gmail.com','CarMali9','12312asdawdsad','123456',NULL,'student'),(9,'Mariana  ','Pia  ','Mariana_Pia@gmail.com','MarPia9','12312asdawdsad','123456',NULL,'tourist'),(10,'Jasmin  ','Felton  ','Jasmin_Felton@gmail.com','JasFelt1','12312asdawdsad','123456',NULL,'businessman'),(11,'Delaine  ','Susannah  ','Delaine_Susannah@gmail.com','DelSusa1','12312asdawdsad','123456',NULL,'tourist');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `placeID` int(11) NOT NULL AUTO_INCREMENT,
  `placeName` varchar(45) NOT NULL,
  `streetNo` int(11) DEFAULT NULL,
  `street` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `postcode` int(4) DEFAULT NULL,
  `state` enum('QLD','NSW','NT','SA','TAS','VIC','WA','ACT') DEFAULT NULL,
  `phoneNumber` text,
  `emailAddress` varchar(100) DEFAULT NULL,
  `categoryID` int(11) NOT NULL,
  `industryID` int(11) DEFAULT NULL,
  `departmentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`placeID`),
  KEY `categoryID` (`categoryID`),
  KEY `industryID` (`industryID`),
  KEY `departmentID` (`departmentID`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`),
  CONSTRAINT `result_ibfk_2` FOREIGN KEY (`industryID`) REFERENCES `industry` (`industryID`),
  CONSTRAINT `result_ibfk_3` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,'University of Queensland',NULL,'St Lucia','Brisbane',4072,'QLD','07 33651111','uqUniversity@uq.edu.au',1,NULL,2),(2,'Queensland University of Technology',2,'George street','Brisbane',4000,'QLD','07 31382111','qutUniversity@qut.edu.au',1,NULL,NULL),(3,'Griffith University ',226,'Grey st','Brisbane',4101,'QLD','07 37377111','griffithUniversity@grif.edu.au',1,NULL,NULL),(4,'Australian Catholic University',40,'Edward St','Sydney',2060,'NSW','02 97392368 ','acuUnivesrity@acu.edu.au',1,NULL,NULL),(5,'Macquarie University ',3,'Technology Pl','Sydney',2109,'NSW','0 2 41222706','macUniversity@mac.edu.au',1,NULL,NULL),(6,'University of New South Wales ',2,'High St','Sydney',2052,'NSW','0 2 92892177','unsw@unsw.edu.au',1,NULL,NULL),(7,'University of Melbourne ',103,'Tin Alley','Melbourne ',3082,'VIC','0 3 47789460','uniMel@uniMel.edu.au',1,NULL,NULL),(8,'Monash University ',40,'Exhibition walk','Melbourne ',3800,'VIC','0 3 77836293','monash@monuni.edu.au',1,NULL,NULL),(9,'RMIT University ',124,'Trobe St','Melbourne ',3000,'VIC','0 3 70789217','rmit@rmit.edu.au',1,NULL,NULL),(10,'University of Adelaide ',132,'Grenfell St','Adelaide ',5000,'SA','0 8 40183084','universitAdelaide@uniAde.edu.au',1,NULL,NULL),(11,'Univerity of South Australia ',101,'Currie St','Adelaide ',5001,'SA','0 8 57865769','uniSA@uniSA.edu.au',1,NULL,NULL),(12,'Flinders University ',NULL,'Registry Rd ','Adelaide ',5042,'SA','0 8 96942971','flinUni@flinUni.edu.au',1,NULL,NULL),(13,'Australian National University ',15,'Concessions Lan','Canberra ',2601,'ACT','0 8 96942971','anu@anu.edu.au',1,NULL,NULL),(14,'University of Canberra ',1,'Kirinari St','Canberra ',2617,'ACT','0 2 25116479','uniCan@uniCan.edu.au',1,NULL,NULL),(15,'Australian Defence Force Academy ',33,'Academy cl','Canberra ',2612,'ACT','0 2 27705824','ADFA@ADFA.edu.au',1,NULL,NULL),(16,'tasTafe',10,'Wellignton St','Hobart ',7250,'TAS','0 3 42740596','tasTafe@tafe.edu.au',1,NULL,NULL),(17,'University of Tasmania ',1,'Churchill Ave','Hobart ',7005,'TAS','0 3 60406632','UniTas@uniTas.edu.au',1,NULL,NULL),(18,'Chales Darwin University ',1,'Casuarina ','Darwin ',810,'NT','0 8 84321862','chdarUni@cdu.edu.au',1,NULL,NULL),(19,'Nungalinya College',72,'Dripstone ','Darwin ',811,'NT','0 8 50555533','nunCo@nun.edu.au',1,NULL,NULL),(20,'University of Western Australia ',33,'Stirling hwy','Perth',6009,'WA','0 8 10433831','UWA@UNW.edu.au',1,NULL,NULL),(21,'Curtin University ',1,'Kent St','Perth',6102,'WA','0 8 63727092','CutinUni@curt.edu.au',1,NULL,NULL),(22,'Edith Cowan University ',2,'Bradford St','Perth',6050,'WA','0 8 73663630','EdithCU@ecu.edu.au',1,NULL,NULL),(23,'Holiday in',5,'Mary','Sydney',2000,'NSW','','holidayInn@gmail.com',4,NULL,NULL),(24,'Building Co',45,'Deggar','Brisbane',4100,'QLD','04060232321','buildingco@industry.com.au',3,6,NULL);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `placeID` int(11) NOT NULL,
  `userID` int(9) NOT NULL,
  `rating` decimal(10,2) DEFAULT NULL,
  `review` varchar(250) DEFAULT NULL,
  `timeDate` datetime DEFAULT NULL,
  KEY `placeID` (`placeID`),
  KEY `userID` (`userID`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`placeID`) REFERENCES `result` (`placeID`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `member` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,5.00,'who wants the real world','2017-11-09 00:00:00'),(2,1,4.00,'great learning experince','2017-12-18 00:00:00'),(3,6,4.00,'great learning experince','2017-11-20 00:00:00'),(4,1,1.00,'needs improvement','2017-11-26 00:00:00'),(5,1,2.00,'needs improvement','2017-08-21 00:00:00'),(5,6,2.00,'needs improvement','2017-03-26 00:00:00'),(1,6,5.00,'great learning experince','2017-11-22 00:00:00'),(2,6,4.00,'great learning experince','2017-09-01 00:00:00'),(2,8,2.00,'needs improvement','2017-01-07 00:00:00'),(3,1,4.00,'great learning experince','2017-05-16 00:00:00'),(4,1,4.00,'great learning experince','2017-02-04 00:00:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-08 23:13:36
