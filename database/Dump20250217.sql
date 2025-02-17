-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: alyalayis
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `action_queues`
--

DROP TABLE IF EXISTS `action_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_queues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` int NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `requested_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action_queues`
--

LOCK TABLES `action_queues` WRITE;
/*!40000 ALTER TABLE `action_queues` DISABLE KEYS */;
INSERT INTO `action_queues` VALUES (1,3,'update-content','2025-02-17 08:31:55',NULL,NULL,'2025-02-17 08:31:55','2025-02-17 08:31:55',1);
/*!40000 ALTER TABLE `action_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `user_id` int NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,1,1,'zones','created','A New Zone Added with name United Arab Emirates','2024-06-10 10:47:13','2024-06-10 10:47:13'),(2,1,1,'branches','created','A New Branch Added with name Dubai','2024-06-10 10:47:29','2024-06-10 10:47:29'),(3,1,1,'device-groups','created','A New Device Group Added with name EK Facilities','2024-06-10 10:47:37','2024-06-10 10:47:37'),(4,1,1,'device-template-data','created','A New Template Added with name Emirates Facilities Template','2024-06-10 10:56:09','2024-06-10 10:56:09'),(5,1,1,'device-template-data','updated','N/A','2024-06-10 11:37:46','2024-06-10 11:37:46'),(6,1,1,'device-template-data','updated','N/A','2024-06-10 12:03:36','2024-06-10 12:03:36'),(7,1,1,'device-template-data','created','A New Template Added with name Al Yalayis Template','2024-06-24 08:15:26','2024-06-24 08:15:26'),(8,1,1,'device-template-data','updated','N/A','2024-06-24 08:17:35','2024-06-24 08:17:35'),(9,1,1,'device-template-data','deleted','Template named Al Yalayis Template is deleted','2025-01-30 11:28:48','2025-01-30 11:28:48'),(10,1,1,'device-template-data','created','A New Template Added with name Red Cresent Template','2025-01-30 11:29:23','2025-01-30 11:29:23'),(11,1,1,'device-template-data','updated','N/A','2025-01-30 12:25:57','2025-01-30 12:25:57'),(12,1,1,'device-template-data','updated','N/A','2025-02-03 07:58:58','2025-02-03 07:58:58'),(13,1,1,'device-template-data','updated','N/A','2025-02-17 08:30:33','2025-02-17 08:30:33'),(14,1,1,'device-template-data','updated','N/A','2025-02-17 08:31:47','2025-02-17 08:31:47'),(15,1,1,'device-template-data','updated','N/A','2025-02-17 08:58:51','2025-02-17 08:58:51');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supper_admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Super Admin','admin@admin.com','$2y$10$ifjGPlivw7IIexXActOxx.RMTc8fRwrdEAuSYPS9k95JnMyMvuJGW',NULL,NULL);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `city_id` int DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_manager_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_contact_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_it_support_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_it_support_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,1,1,'Dubai',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-10 10:47:29','2024-06-10 10:47:29');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd_settings`
--

DROP TABLE IF EXISTS `cd_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `counter_number_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_blinking_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_font_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `counter_number_font_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `service_name_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `service_font_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd_settings`
--

LOCK TABLES `cd_settings` WRITE;
/*!40000 ALTER TABLE `cd_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `zone_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,1,'Dubai','dubai',NULL,'2024-05-20 11:48:32','2024-05-20 11:48:32');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counters`
--

DROP TABLE IF EXISTS `counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_in_qms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` tinyint DEFAULT '0',
  `content_download_completed_at` timestamp NULL DEFAULT NULL,
  `device_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counters`
--

LOCK TABLES `counters` WRITE;
/*!40000 ALTER TABLE `counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan'),(2,'AL','Albania'),(3,'DZ','Algeria'),(4,'AS','American Samoa'),(5,'AD','Andorra'),(6,'AO','Angola'),(7,'AI','Anguilla'),(8,'AQ','Antarctica'),(9,'AG','Antigua And Barbuda'),(10,'AR','Argentina'),(11,'AM','Armenia'),(12,'AW','Aruba'),(13,'AU','Australia'),(14,'AT','Austria'),(15,'AZ','Azerbaijan'),(16,'BS','Bahamas The'),(17,'BH','Bahrain'),(18,'BD','Bangladesh'),(19,'BB','Barbados'),(20,'BY','Belarus'),(21,'BE','Belgium'),(22,'BZ','Belize'),(23,'BJ','Benin'),(24,'BM','Bermuda'),(25,'BT','Bhutan'),(26,'BO','Bolivia'),(27,'BA','Bosnia and Herzegovina'),(28,'BW','Botswana'),(29,'BV','Bouvet Island'),(30,'BR','Brazil'),(31,'IO','British Indian Ocean Territory'),(32,'BN','Brunei'),(33,'BG','Bulgaria'),(34,'BF','Burkina Faso'),(35,'BI','Burundi'),(36,'KH','Cambodia'),(37,'CM','Cameroon'),(38,'CA','Canada'),(39,'CV','Cape Verde'),(40,'KY','Cayman Islands'),(41,'CF','Central African Republic'),(42,'TD','Chad'),(43,'CL','Chile'),(44,'CN','China'),(45,'CX','Christmas Island'),(46,'CC','Cocos (Keeling) Islands'),(47,'CO','Colombia'),(48,'KM','Comoros'),(49,'CG','Republic Of The Congo'),(50,'CD','Democratic Republic Of The Congo'),(51,'CK','Cook Islands'),(52,'CR','Costa Rica'),(53,'CI','Cote D\'Ivoire (Ivory Coast)'),(54,'HR','Croatia (Hrvatska)'),(55,'CU','Cuba'),(56,'CY','Cyprus'),(57,'CZ','Czech Republic'),(58,'DK','Denmark'),(59,'DJ','Djibouti'),(60,'DM','Dominica'),(61,'DO','Dominican Republic'),(62,'TP','East Timor'),(63,'EC','Ecuador'),(64,'EG','Egypt'),(65,'SV','El Salvador'),(66,'GQ','Equatorial Guinea'),(67,'ER','Eritrea'),(68,'EE','Estonia'),(69,'ET','Ethiopia'),(70,'XA','External Territories of Australia'),(71,'FK','Falkland Islands'),(72,'FO','Faroe Islands'),(73,'FJ','Fiji Islands'),(74,'FI','Finland'),(75,'FR','France'),(76,'GF','French Guiana'),(77,'PF','French Polynesia'),(78,'TF','French Southern Territories'),(79,'GA','Gabon'),(80,'GM','Gambia The'),(81,'GE','Georgia'),(82,'DE','Germany'),(83,'GH','Ghana'),(84,'GI','Gibraltar'),(85,'GR','Greece'),(86,'GL','Greenland'),(87,'GD','Grenada'),(88,'GP','Guadeloupe'),(89,'GU','Guam'),(90,'GT','Guatemala'),(91,'XU','Guernsey and Alderney'),(92,'GN','Guinea'),(93,'GW','Guinea-Bissau'),(94,'GY','Guyana'),(95,'HT','Haiti'),(96,'HM','Heard and McDonald Islands'),(97,'HN','Honduras'),(98,'HK','Hong Kong S.A.R.'),(99,'HU','Hungary'),(100,'IS','Iceland'),(101,'IN','India'),(102,'ID','Indonesia'),(103,'IR','Iran'),(104,'IQ','Iraq'),(105,'IE','Ireland'),(106,'IL','Israel'),(107,'IT','Italy'),(108,'JM','Jamaica'),(109,'JP','Japan'),(110,'XJ','Jersey'),(111,'JO','Jordan'),(112,'KZ','Kazakhstan'),(113,'KE','Kenya'),(114,'KI','Kiribati'),(115,'KP','Korea North'),(116,'KR','Korea South'),(117,'KW','Kuwait'),(118,'KG','Kyrgyzstan'),(119,'LA','Laos'),(120,'LV','Latvia'),(121,'LB','Lebanon'),(122,'LS','Lesotho'),(123,'LR','Liberia'),(124,'LY','Libya'),(125,'LI','Liechtenstein'),(126,'LT','Lithuania'),(127,'LU','Luxembourg'),(128,'MO','Macau S.A.R.'),(129,'MK','Macedonia'),(130,'MG','Madagascar'),(131,'MW','Malawi'),(132,'MY','Malaysia'),(133,'MV','Maldives'),(134,'ML','Mali'),(135,'MT','Malta'),(136,'XM','Man (Isle of)'),(137,'MH','Marshall Islands'),(138,'MQ','Martinique'),(139,'MR','Mauritania'),(140,'MU','Mauritius'),(141,'YT','Mayotte'),(142,'MX','Mexico'),(143,'FM','Micronesia'),(144,'MD','Moldova'),(145,'MC','Monaco'),(146,'MN','Mongolia'),(147,'MS','Montserrat'),(148,'MA','Morocco'),(149,'MZ','Mozambique'),(150,'MM','Myanmar'),(151,'NA','Namibia'),(152,'NR','Nauru'),(153,'NP','Nepal'),(154,'AN','Netherlands Antilles'),(155,'NL','Netherlands The'),(156,'NC','New Caledonia'),(157,'NZ','New Zealand'),(158,'NI','Nicaragua'),(159,'NE','Niger'),(160,'NG','Nigeria'),(161,'NU','Niue'),(162,'NF','Norfolk Island'),(163,'MP','Northern Mariana Islands'),(164,'NO','Norway'),(165,'OM','Oman'),(166,'PK','Pakistan'),(167,'PW','Palau'),(168,'PS','Palestinian Territory Occupied'),(169,'PA','Panama'),(170,'PG','Papua new Guinea'),(171,'PY','Paraguay'),(172,'PE','Peru'),(173,'PH','Philippines'),(174,'PN','Pitcairn Island'),(175,'PL','Poland'),(176,'PT','Portugal'),(177,'PR','Puerto Rico'),(178,'QA','Qatar'),(179,'RE','Reunion'),(180,'RO','Romania'),(181,'RU','Russia'),(182,'RW','Rwanda'),(183,'SH','Saint Helena'),(184,'KN','Saint Kitts And Nevis'),(185,'LC','Saint Lucia'),(186,'PM','Saint Pierre and Miquelon'),(187,'VC','Saint Vincent And The Grenadines'),(188,'WS','Samoa'),(189,'SM','San Marino'),(190,'ST','Sao Tome and Principe'),(191,'SA','Saudi Arabia'),(192,'SN','Senegal'),(193,'RS','Serbia'),(194,'SC','Seychelles'),(195,'SL','Sierra Leone'),(196,'SG','Singapore'),(197,'SK','Slovakia'),(198,'SI','Slovenia'),(199,'XG','Smaller Territories of the UK'),(200,'SB','Solomon Islands'),(201,'SO','Somalia'),(202,'ZA','South Africa'),(203,'GS','South Georgia'),(204,'SS','South Sudan'),(205,'ES','Spain'),(206,'LK','Sri Lanka'),(207,'SD','Sudan'),(208,'SR','Suriname'),(209,'SJ','Svalbard And Jan Mayen Islands'),(210,'SZ','Swaziland'),(211,'SE','Sweden'),(212,'CH','Switzerland'),(213,'SY','Syria'),(214,'TW','Taiwan'),(215,'TJ','Tajikistan'),(216,'TZ','Tanzania'),(217,'TH','Thailand'),(218,'TG','Togo'),(219,'TK','Tokelau'),(220,'TO','Tonga'),(221,'TT','Trinidad And Tobago'),(222,'TN','Tunisia'),(223,'TR','Turkey'),(224,'TM','Turkmenistan'),(225,'TC','Turks And Caicos Islands'),(226,'TV','Tuvalu'),(227,'UG','Uganda'),(228,'UA','Ukraine'),(229,'AE','United Arab Emirates'),(230,'GB','United Kingdom'),(231,'US','United States'),(232,'UM','United States Minor Outlying Islands'),(233,'UY','Uruguay'),(234,'UZ','Uzbekistan'),(235,'VU','Vanuatu'),(236,'VA','Vatican City State (Holy See)'),(237,'VE','Venezuela'),(238,'VN','Vietnam'),(239,'VG','Virgin Islands (British)'),(240,'VI','Virgin Islands (US)'),(241,'WF','Wallis And Futuna Islands'),(242,'EH','Western Sahara'),(243,'YE','Yemen'),(244,'YU','Yugoslavia'),(245,'ZM','Zambia'),(246,'ZW','Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_groups`
--

DROP TABLE IF EXISTS `device_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_groups`
--

LOCK TABLES `device_groups` WRITE;
/*!40000 ALTER TABLE `device_groups` DISABLE KEYS */;
INSERT INTO `device_groups` VALUES (1,1,1,'EK Facilities','ek-facilities',NULL,'2024-06-10 10:47:37','2024-06-10 10:47:37');
/*!40000 ALTER TABLE `device_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_play_list`
--

DROP TABLE IF EXISTS `device_play_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_play_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` int NOT NULL,
  `play_list_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_play_list`
--

LOCK TABLES `device_play_list` WRITE;
/*!40000 ALTER TABLE `device_play_list` DISABLE KEYS */;
INSERT INTO `device_play_list` VALUES (1,3,1);
/*!40000 ALTER TABLE `device_play_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_template_asssets`
--

DROP TABLE IF EXISTS `device_template_asssets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_template_asssets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template_data_id` int DEFAULT NULL,
  `box_no` int DEFAULT NULL,
  `asset_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_box_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_template_asssets`
--

LOCK TABLES `device_template_asssets` WRITE;
/*!40000 ALTER TABLE `device_template_asssets` DISABLE KEYS */;
INSERT INTO `device_template_asssets` VALUES (7,1,1,'/uploads/videos/72097_1719216871.mp4','video','1','2024-06-24 08:17:36','2024-06-24 08:17:36'),(27,2,1,'/uploads/images/96230_1719216849.png','image','1','2025-02-17 08:58:51','2025-02-17 08:58:51'),(28,2,1,'/uploads/images/15180_1719216848.png','image','1','2025-02-17 08:58:51','2025-02-17 08:58:51'),(29,2,1,'/uploads/images/50042_1719216830.jpg','image','1','2025-02-17 08:58:51','2025-02-17 08:58:51'),(30,2,1,'/uploads/images/83665_1719216824.png','image','1','2025-02-17 08:58:51','2025-02-17 08:58:51');
/*!40000 ALTER TABLE `device_template_asssets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_template_data`
--

DROP TABLE IF EXISTS `device_template_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_template_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticker_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_id` int DEFAULT NULL,
  `template_id` int NOT NULL,
  `rss_feed` blob,
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0 = no, 1 = yes',
  `asset_cur_version` bigint NOT NULL DEFAULT '1',
  `asset_prev_vesrion` bigint NOT NULL DEFAULT '0',
  `content_type` enum('image','video','both') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_template_data`
--

LOCK TABLES `device_template_data` WRITE;
/*!40000 ALTER TABLE `device_template_data` DISABLE KEYS */;
INSERT INTO `device_template_data` VALUES (1,'Al Yalayis Template','/uploads/images/83665_1719216824.png','Welcome to Al Yalayis Government Transaction Center',1,49,NULL,1,2,1,'video','2024-06-24 08:15:26','2025-01-30 11:28:48'),(2,'Red Cresent Template','/uploads/images/50042_1719216830.jpg','Welcome to Red Cresent',1,44,NULL,0,6,5,'image','2025-01-30 11:29:23','2025-02-17 08:58:51');
/*!40000 ALTER TABLE `device_template_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_templates`
--

DROP TABLE IF EXISTS `device_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quebox_required` int DEFAULT NULL,
  `logo_required` int DEFAULT NULL,
  `ticker_text_required` int DEFAULT NULL,
  `images_required` int DEFAULT NULL,
  `videos_required` int DEFAULT NULL,
  `ppt_required` int DEFAULT NULL,
  `template_images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rss_feed_required` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view_order` int DEFAULT NULL,
  `is_special` tinyint NOT NULL DEFAULT '0',
  `content_option` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_templates`
--

LOCK TABLES `device_templates` WRITE;
/*!40000 ALTER TABLE `device_templates` DISABLE KEYS */;
INSERT INTO `device_templates` VALUES (1,'template_1',1,1,1,0,1,0,'template_images/1.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',1,0,0),(2,'template_2',0,1,1,0,1,0,'template_images/2.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',2,0,0),(3,'template_3',1,1,0,0,1,0,'template_images/3.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(4,'template_4',1,0,1,0,1,0,'template_images/4.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(5,'template_5',1,1,1,1,0,0,'template_images/5.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',3,0,0),(6,'template_6',0,1,1,1,0,0,'template_images/6.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',4,0,0),(7,'template_7',1,1,0,1,0,0,'template_images/7.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(8,'template_8',1,0,1,1,0,0,'template_images/8.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(9,'template_9',1,1,1,0,2,0,'template_images/9.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(10,'template_10',0,1,1,0,2,0,'template_images/10.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(11,'template_11',1,1,0,0,2,0,'template_images/11.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(12,'template_12',1,0,1,0,2,0,'template_images/12.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(13,'template_13',1,1,1,2,0,0,'template_images/13.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(14,'template_14',0,1,1,2,0,0,'template_images/14.jpg',NULL,'2020-12-27 04:27:55','2020-12-27 04:27:55',12,0,0),(15,'template_15',1,1,0,2,0,0,'template_images/15.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(16,'template_16',1,0,1,2,0,0,'template_images/16.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(17,'template_17',1,1,1,0,4,0,'template_images/17.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(18,'template_18',0,1,1,0,4,0,'template_images/18.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(19,'template_19',1,1,0,0,4,0,'template_images/19.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(20,'template_20',1,0,1,0,4,0,'template_images/20.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(21,'template_21',1,1,1,4,0,0,'template_images/21.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(22,'template_22',0,1,1,4,0,0,'template_images/22.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(23,'template_23',1,1,0,4,0,0,'template_images/23.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(24,'template_24',1,0,1,4,0,0,'template_images/24.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(25,'template_25',1,1,1,1,2,0,'template_images/25.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(26,'template_26',0,1,1,1,2,0,'template_images/26.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(27,'template_27',1,1,0,1,2,0,'template_images/27.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(28,'template_28',1,0,1,1,2,0,'template_images/28.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(29,'template_29',1,1,1,2,1,0,'template_images/29.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(30,'template_30',0,1,1,2,1,0,'template_images/30.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(31,'template_31',1,1,0,2,1,0,'template_images/31.jpg',NULL,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(32,'template_32',1,0,1,2,1,0,'template_images/32.jpg',1,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(37,'template_37',0,0,0,0,0,0,'template_images/37.jpg',0,'2020-12-27 04:27:56','2020-12-27 04:27:56',12,0,0),(38,'template_38',0,0,0,0,1,0,'template_images/38.jpg',0,'2020-12-27 04:27:56','2020-12-27 04:27:56',5,0,0),(39,'template_39',0,0,1,0,1,0,'template_images/39.jpg',0,NULL,NULL,6,0,0),(40,'template_40',0,0,0,1,0,0,'template_images/40.jpg',0,NULL,NULL,7,0,0),(41,'template_41',0,0,1,1,0,0,'template_images/41.jpg',0,NULL,NULL,8,0,0),(42,'template_42',1,1,1,1,1,0,'template_images/42.jpg',0,NULL,NULL,36,1,0),(43,'template_43',1,1,1,1,1,0,'template_images/43.png',0,NULL,NULL,36,1,0),(44,'template_44',1,1,1,1,1,0,'template_images/44.png',0,NULL,NULL,36,1,1),(45,'template_45',1,0,0,1,1,0,'template_images/45.jpeg',1,NULL,NULL,36,1,0),(46,'template_46',1,0,1,1,1,0,'template_images/46.jpg',0,NULL,NULL,36,1,1),(47,'template_47',1,1,1,1,1,0,'template_images/47.jpg',0,NULL,NULL,36,1,1),(48,'template_48',1,1,1,1,1,0,'template_images/48.jpeg',0,NULL,NULL,36,1,1),(49,'template_49',1,1,1,1,1,0,'template_images/49.jpeg',0,NULL,NULL,36,1,1);
/*!40000 ALTER TABLE `device_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `zone_id` bigint DEFAULT NULL,
  `city_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `device_group_id` bigint DEFAULT NULL,
  `device_orientation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_mac_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_screen_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_screen_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_storage_memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_resolution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` tinyint DEFAULT '0',
  `current_running_asset` int DEFAULT NULL,
  `memory_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_content_update_sent` timestamp NULL DEFAULT NULL,
  `content_download_completed_at` timestamp NULL DEFAULT NULL,
  `content_download_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_installed` tinyint DEFAULT '0',
  `socket_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qms_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_no_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_no_blinking_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_no_font_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_no_font_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qms_port_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'image',
  `is_staff_logged_in` tinyint DEFAULT '0',
  `loggedin_staff_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting_id` int DEFAULT NULL,
  `content_download_page` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_pings` int NOT NULL DEFAULT '0',
  `md_counters` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,1,1,1,1,1,'landscape','Counter Display 1','cd','192.168.0.111',NULL,'f9fbf04e81fdc879','d9c9d3c1962d112497bf15a8a8b57d9799f9637c','TX3 DSS',NULL,NULL,NULL,NULL,NULL,NULL,1,'2024-06-10 10:53:16','2025-02-17 09:56:10',0,NULL,NULL,NULL,NULL,NULL,0,NULL,'#ffffff','1','#ffffff','#ff0000','255','250','1051','/uploads/images/96230_1719216849.png','image',0,NULL,NULL,'0',697,NULL),(2,1,1,1,1,1,'landscape','Counter Display 2','cd','192.168.0.103',NULL,'47dcb8a33de9b12d','636581815c291aa58be002c6b0ccc8eae317d82c','TX3 DSS',NULL,NULL,NULL,NULL,NULL,NULL,1,'2024-06-10 10:54:05','2025-02-17 09:56:10',0,NULL,NULL,NULL,NULL,NULL,0,NULL,'#ffffff','2','#ffffff','#ff0000','350','250','1051','/uploads/images/96230_1719216849.png','image',0,NULL,NULL,'0',697,NULL),(3,1,1,1,1,1,'landscape','Main Display 1','md','10.255.254.16',NULL,'56480098304812be','6c321a346b4e5e1b8c01edad6643910729666d41','TX3 DSS',NULL,NULL,NULL,NULL,NULL,NULL,1,'2024-06-10 10:55:20','2025-02-17 09:56:10',1,NULL,NULL,NULL,NULL,NULL,0,NULL,'#000000',NULL,'#000000','#000000',NULL,NULL,'1050',NULL,'image',0,NULL,2,'0',570,NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thamnail_url` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `dimessions` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'/uploads/images/thumbs/thumb_17192168249324.png','/uploads/images/83665_1719216824.png','header.png','image','33.94 KB','1080 x 183',NULL,'2024-06-24 08:13:44','2024-06-24 08:13:44'),(2,'/uploads/images/thumbs/thumb_17192168294817.jpg','/uploads/images/50042_1719216830.jpg','om.jpg','image','238.48 KB','768 x 768',NULL,'2024-06-24 08:13:50','2024-06-24 08:13:50'),(3,'/uploads/images/thumbs/thumb_17192168489690.png','/uploads/images/15180_1719216848.png','CD_1920x1080 - Amer.png','image','1.22 MB','1920 x 1080',NULL,'2024-06-24 08:14:08','2024-06-24 08:14:08'),(4,'/uploads/images/thumbs/thumb_17192168494342.png','/uploads/images/96230_1719216849.png','CD_1920x1080 - DED_01.png','image','1.16 MB','1920 x 1080',NULL,'2024-06-24 08:14:09','2024-06-24 08:14:09'),(5,'uploads/videos/thumbs/thumb_25873_1719216871.png','/uploads/videos/72097_1719216871.mp4','Alyalayis video.mp4','video','27.95 MB','N/A',92,'2024-06-24 08:14:37','2024-06-24 08:14:37'),(6,'/uploads/images/thumbs/thumb_17397810701919.jpg','/uploads/images/66817_1739781071.jpg','image-source-wam-the-emirates-red-crescent-volunteers-help-fighting-coronavirus-in-uae.jpg','image','106.01 KB','1280 x 720',NULL,'2025-02-17 08:31:11','2025-02-17 08:31:11'),(7,'/uploads/images/thumbs/thumb_17397810727319.png','/uploads/images/70755_1739781072.png','logo.png','image','101.51 KB','1330 x 1800',NULL,'2025-02-17 08:31:12','2025-02-17 08:31:12'),(8,'/uploads/images/thumbs/thumb_17397810724183.png','/uploads/images/17574_1739781072.png','red-crescent-880x425px.png','image','446.07 KB','880 x 425',NULL,'2025-02-17 08:31:13','2025-02-17 08:31:13');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imeis`
--

DROP TABLE IF EXISTS `imeis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imeis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `imei` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imeis`
--

LOCK TABLES `imeis` WRITE;
/*!40000 ALTER TABLE `imeis` DISABLE KEYS */;
INSERT INTO `imeis` VALUES (1,'f9fbf04e81fdc879','d9c9d3c1962d112497bf15a8a8b57d9799f9637c','1735156800','Online','2024-06-10 10:48:09','2024-06-27 07:32:55'),(2,'47dcb8a33de9b12d','636581815c291aa58be002c6b0ccc8eae317d82c','1732737600','Online','2024-06-10 10:48:53','2024-06-10 10:48:53'),(3,'56480098304812be','6c321a346b4e5e1b8c01edad6643910729666d41','1747857600','Online','2024-06-10 10:49:25','2025-02-03 05:58:18'),(4,'f800754e6677aeb9','77d55fe59e2ef21ef4bc5d550bf0d92f2efecf3e','1727294400','Online','2024-06-27 07:24:17','2024-06-27 07:24:17');
/*!40000 ALTER TABLE `imeis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `json_templates`
--

DROP TABLE IF EXISTS `json_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `json_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `json_templates`
--

LOCK TABLES `json_templates` WRITE;
/*!40000 ALTER TABLE `json_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `json_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int NOT NULL,
  `api_call_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_display_counter`
--

DROP TABLE IF EXISTS `main_display_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_display_counter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_display` int NOT NULL,
  `counter_display` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_display_counter`
--

LOCK TABLES `main_display_counter` WRITE;
/*!40000 ALTER TABLE `main_display_counter` DISABLE KEYS */;
INSERT INTO `main_display_counter` VALUES (17,3,1,'2025-02-17 07:51:39',NULL),(18,3,2,'2025-02-17 07:51:39',NULL);
/*!40000 ALTER TABLE `main_display_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `md_settings`
--

DROP TABLE IF EXISTS `md_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `main_area_heading_bg_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `main_area_heading_text_color` text COLLATE utf8mb4_general_ci,
  `main_area_heading_text_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `main_area_content_bg_color` text COLLATE utf8mb4_general_ci,
  `main_content_area_text_color` text COLLATE utf8mb4_general_ci,
  `main_content_area_text_size` text COLLATE utf8mb4_general_ci,
  `main_content_area_blinking_color` text COLLATE utf8mb4_general_ci,
  `history_heading_area_bg_color` text COLLATE utf8mb4_general_ci,
  `history_heading_area_bg_text_color` text COLLATE utf8mb4_general_ci,
  `history_heading_area_text_size` text COLLATE utf8mb4_general_ci,
  `history_content_area_odd_bg_color` text COLLATE utf8mb4_general_ci,
  `history_content_area_odd_text_color` text COLLATE utf8mb4_general_ci,
  `history_content_area_odd_text_size` text COLLATE utf8mb4_general_ci,
  `history_content_area_even_bg_color` text COLLATE utf8mb4_general_ci,
  `history_content_area_even_text_color` text COLLATE utf8mb4_general_ci,
  `history_content_area_even_text_size` text COLLATE utf8mb4_general_ci,
  `no_of_rows` int NOT NULL,
  `text_alignment` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `audio` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `logo_alignment` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `header_background_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `date_time_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `logo_image_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_background_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_text_color` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_text_size` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_font_family` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_text_direction` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `ticket_text_speed` varchar(191) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_settings`
--

LOCK TABLES `md_settings` WRITE;
/*!40000 ALTER TABLE `md_settings` DISABLE KEYS */;
INSERT INTO `md_settings` VALUES (1,'Setting 1','#FF3C3C','#000000','125','#DC7373','#060606','50','#517DC2','#FF3C3C','#000000','25','#DC7373','#000000','30','#FF3C3C','#040404','30',6,'center','male','en_ar','left','#FFFDFD','#000000','30','show','#FF3C3C','#000000','30','Sans Serif','right',NULL,'2024-08-28 12:28:11','2024-08-27 05:40:38'),(2,'Red Cresent Setting','#B8ADFD','#E9E5E5','30','#4A3BA4','#000000','100','#00BC36','#0E9000','#FFF9F9','15','#FF003D','#000000','100','#FFDB00','#6010CA','100',6,'center','female','en','center','#E50404','#000000','50','show','#00FF3D','#000000','50','Sans-Serif','right','60','2025-02-17 07:53:03','2025-01-30 12:43:44');
/*!40000 ALTER TABLE `md_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(9,'App\\User',1),(5,'App\\User',5),(4,'App\\User',7),(8,'App\\User',8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'EK','ek','/uploads/organizations/logos/664b3472b2b10_logo.jpeg',229,'2024-05-20 11:30:58','2024-05-20 11:30:58');
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,0,'zones','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(2,1,'create_zones','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(3,1,'update_zones','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(4,1,'delete_zones','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(5,1,'assign_zones','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(6,0,'cities','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(7,6,'create_cities','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(8,6,'update_cities','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(9,6,'delete_cities','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(10,6,'assign_cities','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(11,0,'branches','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(12,11,'create_branches','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(13,11,'update_branches','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(14,11,'delete_branches','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(15,11,'assign_branches','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(16,0,'device_groups','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(17,16,'create_device_groups','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(18,16,'update_device_groups','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(19,16,'delete_device_groups','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(20,16,'assign_device_groups','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(21,0,'devices','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(22,21,'create_devices','web','2022-07-18 05:18:54','2022-07-18 05:18:54'),(23,21,'update_devices','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(24,0,'users','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(25,24,'create_users','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(26,24,'update_users','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(27,24,'delete_users','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(28,0,'device_templates','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(29,28,'create_device_templates','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(30,28,'update_device_templates','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(31,28,'delete_device_templates','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(32,0,'playlists','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(33,32,'','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(34,32,'update_playlists','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(35,32,'delete_playlists','web','2022-07-18 05:18:55','2022-07-18 05:18:55'),(36,0,'use_apis','web',NULL,NULL),(37,0,'api_logs','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(38,0,'gallery','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(39,38,'upload_gallery','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(40,38,'delete_gallery','web','2022-07-18 05:18:53','2022-07-18 05:18:53'),(41,0,'add_lisence','web','2022-07-18 05:18:54','2022-07-18 05:18:54');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_list_templates`
--

DROP TABLE IF EXISTS `play_list_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_list_templates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `play_list_id` int NOT NULL,
  `template_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_list_templates`
--

LOCK TABLES `play_list_templates` WRITE;
/*!40000 ALTER TABLE `play_list_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_list_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_lists`
--

DROP TABLE IF EXISTS `play_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_lists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `device_template_data_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_lists`
--

LOCK TABLES `play_lists` WRITE;
/*!40000 ALTER TABLE `play_lists` DISABLE KEYS */;
INSERT INTO `play_lists` VALUES (1,'Al Yalayis 1',1,2,'2024-06-24 08:17:56','2025-01-30 11:29:34');
/*!40000 ALTER TABLE `play_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_assets`
--

DROP TABLE IF EXISTS `playlist_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_assets` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `play_list_id` int NOT NULL,
  `asset_id` int NOT NULL,
  `duration` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_assets`
--

LOCK TABLES `playlist_assets` WRITE;
/*!40000 ALTER TABLE `playlist_assets` DISABLE KEYS */;
INSERT INTO `playlist_assets` VALUES (2,1,8,NULL,'2025-01-30 11:29:34',NULL);
/*!40000 ALTER TABLE `playlist_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qms_webhooks`
--

DROP TABLE IF EXISTS `qms_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qms_webhooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qms_webhooks`
--

LOCK TABLES `qms_webhooks` WRITE;
/*!40000 ALTER TABLE `qms_webhooks` DISABLE KEYS */;
INSERT INTO `qms_webhooks` VALUES (1,'\"downloadStatus,2,100\"','2024-06-24 08:40:11','2024-06-24 08:40:11'),(2,'\"updateContent,1\"','2025-01-30 11:54:42','2025-01-30 11:54:42'),(3,'\"updateContent,1\"','2025-01-30 12:01:26','2025-01-30 12:01:26'),(4,'\"updateContent,1\"','2025-01-30 12:09:33','2025-01-30 12:09:33'),(5,'\"updateContent,1\"','2025-01-30 12:14:34','2025-01-30 12:14:34'),(6,'\"downloadStatus,3,100\"','2025-01-30 12:20:16','2025-01-30 12:20:16'),(7,'\"downloadStatus,3,100\"','2025-01-30 12:20:47','2025-01-30 12:20:47'),(8,'\"downloadStatus,1,100\"','2025-01-30 12:22:09','2025-01-30 12:22:09'),(9,'\"downloadStatus,1,50,\"','2025-01-30 12:25:24','2025-01-30 12:25:24'),(10,'\"downloadStatus,1,100,\"','2025-01-30 12:25:31','2025-01-30 12:25:31'),(11,'\"downloadStatus,1,33,\"','2025-01-30 12:26:05','2025-01-30 12:26:05'),(12,'\"downloadStatus,1,66,\"','2025-01-30 12:26:06','2025-01-30 12:26:06'),(13,'\"downloadStatus,1,100,\"','2025-01-30 12:26:07','2025-01-30 12:26:07'),(14,'\"downloadStatus,1,33,\"','2025-01-30 12:45:14','2025-01-30 12:45:14'),(15,'\"downloadStatus,1,66,\"','2025-01-30 12:45:16','2025-01-30 12:45:16'),(16,'\"downloadStatus,1,100,\"','2025-01-30 12:45:17','2025-01-30 12:45:17');
/*!40000 ALTER TABLE `qms_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `category_id` bigint NOT NULL,
  `subcategory_id` bigint NOT NULL,
  `question_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(8,9),(9,9),(10,9),(11,9),(12,9),(13,9),(14,9),(15,9),(16,9),(17,9),(18,9),(19,9),(20,9),(21,9),(22,9),(23,9),(24,9),(25,9),(26,9),(27,9),(28,9),(29,9),(30,9),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),(41,9);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,3,'Administrator','web','2022-09-06 19:55:43','2022-09-06 19:55:43'),(4,3,'Media Admin','web','2022-10-19 18:25:58','2022-10-19 18:37:01'),(5,3,'Resource admin','web','2022-10-19 18:35:02','2022-10-19 18:35:02'),(6,3,'Branch Manager','web','2022-10-19 18:37:14','2022-10-19 18:37:14'),(7,3,'asdfas','web','2023-04-26 21:36:56','2023-04-26 21:36:56'),(8,6,'Administrator','web','2024-02-08 13:43:28','2024-02-08 13:43:28'),(9,1,'Administrator','web','2024-05-20 11:31:09','2024-05-20 11:31:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sas`
--

DROP TABLE IF EXISTS `sas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sas`
--

LOCK TABLES `sas` WRITE;
/*!40000 ALTER TABLE `sas` DISABLE KEYS */;
INSERT INTO `sas` VALUES (1,'Bilal Ashraf','admin@admin.com','$2y$10$ifjGPlivw7IIexXActOxx.RMTc8fRwrdEAuSYPS9k95JnMyMvuJGW',NULL,'2020-11-26 09:08:52','2021-01-18 19:33:54');
/*!40000 ALTER TABLE `sas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `zone_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  `branch_id` bigint NOT NULL,
  `device_group_id` bigint NOT NULL,
  `device_id` bigint NOT NULL,
  `device_template_data_id` bigint NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `assets_download_time` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '0 = no, 1 = yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_logs`
--

DROP TABLE IF EXISTS `service_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` text,
  `params` text,
  `user_id` int DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method` varchar(191) DEFAULT NULL,
  `call_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `request_content` longtext,
  `response_content` longtext,
  `user_agent` text,
  `response_code` varchar(255) DEFAULT NULL,
  `log_type` enum('error-log','request-log') DEFAULT 'request-log',
  `file` longtext,
  `line` longtext,
  `message` longtext,
  `trace` longtext,
  `organization_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE,
  KEY `updated_at` (`updated_at`) USING BTREE,
  KEY `method` (`method`) USING BTREE,
  KEY `call_time` (`call_time`) USING BTREE,
  KEY `duration` (`duration`) USING BTREE,
  KEY `log_type` (`log_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_logs`
--

LOCK TABLES `service_logs` WRITE;
/*!40000 ALTER TABLE `service_logs` DISABLE KEYS */;
INSERT INTO `service_logs` VALUES (1,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 10:47:50','2024-06-10 10:47:50','POST','June 10, 2024, 10:47 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,'2024-06-10 10:47:50','2024-06-10 10:47:50',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(3,'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d','{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'192.168.0.103','2024-06-10 10:48:31','2024-06-10 10:48:31','POST','June 10, 2024, 10:48 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,'2024-06-10 10:48:31','2024-06-10 10:48:31',NULL,NULL,NULL,'{\"imei\":\"47dcb8a33de9b12d\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(5,'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7','{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'192.168.0.108','2024-06-10 10:49:08','2024-06-10 10:49:08','POST','June 10, 2024, 10:49 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,'2024-06-10 10:49:08','2024-06-10 10:49:08',NULL,NULL,NULL,'{\"imei\":\"ab6ff943a84e56d7\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(7,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 10:57:35','2024-06-10 10:57:35','POST','June 10, 2024, 10:57 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,'2024-06-10 10:57:35','2024-06-10 10:57:35',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(9,'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d','{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'192.168.0.103','2024-06-10 10:57:40','2024-06-10 10:57:40','POST','June 10, 2024, 10:57 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,'2024-06-10 10:57:40','2024-06-10 10:57:40',NULL,NULL,NULL,'{\"imei\":\"47dcb8a33de9b12d\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(11,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 10:59:14','2024-06-10 10:59:14','POST','June 10, 2024, 10:59 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,'2024-06-10 10:59:14','2024-06-10 10:59:14',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(13,'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7','{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'192.168.0.108','2024-06-10 10:59:43','2024-06-10 10:59:43','POST','June 10, 2024, 10:59 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,'2024-06-10 10:59:43','2024-06-10 10:59:43',NULL,NULL,NULL,'{\"imei\":\"ab6ff943a84e56d7\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(15,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 11:00:23','2024-06-10 11:00:23','POST','June 10, 2024, 11:00 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,'2024-06-10 11:00:23','2024-06-10 11:00:23',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(17,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:06:14','2024-06-10 11:06:14','POST','June 10, 2024, 11:06 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,'2024-06-10 11:06:14','2024-06-10 11:06:14',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(19,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:06:47','2024-06-10 11:06:47','POST','June 10, 2024, 11:06 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,'2024-06-10 11:06:47','2024-06-10 11:06:47',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(21,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:08:05','2024-06-10 11:08:05','POST','June 10, 2024, 11:08 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,'2024-06-10 11:08:05','2024-06-10 11:08:05',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(23,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:08:17','2024-06-10 11:08:17','POST','June 10, 2024, 11:08 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,'2024-06-10 11:08:17','2024-06-10 11:08:17',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(25,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 11:08:25','2024-06-10 11:08:25','POST','June 10, 2024, 11:08 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,'2024-06-10 11:08:25','2024-06-10 11:08:25',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(27,'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d','{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'192.168.0.103','2024-06-10 11:09:05','2024-06-10 11:09:05','POST','June 10, 2024, 11:09 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,'2024-06-10 11:09:05','2024-06-10 11:09:05',NULL,NULL,NULL,'{\"imei\":\"47dcb8a33de9b12d\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(29,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c','{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'192.168.0.103','2024-06-10 11:09:07','2024-06-10 11:09:07','POST','June 10, 2024, 11:09 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(30,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=91f789b6afbde5da&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c','{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'192.168.0.106','2024-06-10 11:09:10','2024-06-10 11:09:10','POST','June 10, 2024, 11:09 am',NULL,'{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(31,'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7','{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'192.168.0.108','2024-06-10 11:09:21','2024-06-10 11:09:21','POST','June 10, 2024, 11:09 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,'2024-06-10 11:09:21','2024-06-10 11:09:21',NULL,NULL,NULL,'{\"imei\":\"ab6ff943a84e56d7\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(33,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=ab6ff943a84e56d7&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'192.168.0.108','2024-06-10 11:09:23','2024-06-10 11:09:23','POST','June 10, 2024, 11:09 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(34,'http://192.168.0.104:8080/EK/public/api/zones','[]',NULL,'192.168.0.108','2024-06-10 11:09:27','2024-06-10 11:09:27','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(35,'http://192.168.0.104:8080/EK/public/api/cities','[]',NULL,'192.168.0.108','2024-06-10 11:09:27','2024-06-10 11:09:27','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(36,'http://192.168.0.104:8080/EK/public/api/branches','[]',NULL,'192.168.0.108','2024-06-10 11:09:27','2024-06-10 11:09:27','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(37,'http://192.168.0.104:8080/EK/public/api/devices','[]',NULL,'192.168.0.108','2024-06-10 11:09:28','2024-06-10 11:09:28','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(38,'http://192.168.0.104:8080/EK/public/api/device-groups','[]',NULL,'192.168.0.108','2024-06-10 11:09:28','2024-06-10 11:09:28','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(39,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 11:09:41','2024-06-10 11:09:41','GET','June 10, 2024, 11:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(40,'http://192.168.0.104:8080/EK/public/api/counter-content/1','[]',NULL,'192.168.0.106','2024-06-10 11:37:54','2024-06-10 11:37:54','GET','June 10, 2024, 11:37 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(41,'http://192.168.0.104:8080/EK/public/api/counter-content/1','[]',NULL,'192.168.0.106','2024-06-10 11:39:44','2024-06-10 11:39:44','GET','June 10, 2024, 11:39 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(42,'http://192.168.0.104:8080/EK/public/api/counter-content/1','[]',NULL,'192.168.0.106','2024-06-10 11:40:57','2024-06-10 11:40:57','GET','June 10, 2024, 11:40 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(43,'http://192.168.0.104:8080/EK/public/api/counter-content/2','[]',NULL,'192.168.0.103','2024-06-10 11:44:04','2024-06-10 11:44:04','GET','June 10, 2024, 11:44 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(44,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 11:44:48','2024-06-10 11:44:48','GET','June 10, 2024, 11:44 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(45,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c','{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'192.168.0.103','2024-06-10 11:45:25','2024-06-10 11:45:25','POST','June 10, 2024, 11:45 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(46,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:49:27','2024-06-10 11:49:27','POST','June 10, 2024, 11:49 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(47,NULL,NULL,NULL,NULL,'2024-06-10 11:49:27','2024-06-10 11:49:27',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(48,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.104','2024-06-10 11:51:46','2024-06-10 11:51:46','POST','June 10, 2024, 11:51 am',NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}',NULL,'PostmanRuntime/7.37.3',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,NULL,NULL,'2024-06-10 11:51:46','2024-06-10 11:51:46',NULL,NULL,NULL,'{\"ticket_number\":\"1001\",\"number_of_customers_ahead\":\"5\",\"approximate_serving_time\":\"10\",\"template_message\":\"Welcome to the Dubai Housing Center. Your ticket number: 1001 Please wait and we will serve you soon\",\"phone_number\":\"971549956513\",\"sms_type\":\"issued\",\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(50,'http://192.168.0.104:8080/EK/public/api/online-license?imei=91f789b6afbde5da','{\"imei\":\"91f789b6afbde5da\"}',NULL,'192.168.0.106','2024-06-10 11:53:07','2024-06-10 11:53:07','POST','June 10, 2024, 11:53 am',NULL,'{\"imei\":\"91f789b6afbde5da\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,'2024-06-10 11:53:07','2024-06-10 11:53:07',NULL,NULL,NULL,'{\"imei\":\"91f789b6afbde5da\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(52,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=91f789b6afbde5da&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c','{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'192.168.0.106','2024-06-10 11:53:10','2024-06-10 11:53:10','POST','June 10, 2024, 11:53 am',NULL,'{\"imei\":\"91f789b6afbde5da\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(53,'http://192.168.0.104:8080/EK/public/api/online-license?imei=47dcb8a33de9b12d','{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'192.168.0.103','2024-06-10 11:53:57','2024-06-10 11:53:57','POST','June 10, 2024, 11:53 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,NULL,'2024-06-10 11:53:57','2024-06-10 11:53:57',NULL,NULL,NULL,'{\"imei\":\"47dcb8a33de9b12d\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(55,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=47dcb8a33de9b12d&license_key=636581815c291aa58be002c6b0ccc8eae317d82c','{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'192.168.0.103','2024-06-10 11:53:59','2024-06-10 11:53:59','POST','June 10, 2024, 11:53 am',NULL,'{\"imei\":\"47dcb8a33de9b12d\",\"license_key\":\"636581815c291aa58be002c6b0ccc8eae317d82c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(56,'http://192.168.0.104:8080/EK/public/api/online-license?imei=ab6ff943a84e56d7','{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'192.168.0.108','2024-06-10 11:55:45','2024-06-10 11:55:45','POST','June 10, 2024, 11:55 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,NULL,'2024-06-10 11:55:45','2024-06-10 11:55:45',NULL,NULL,NULL,'{\"imei\":\"ab6ff943a84e56d7\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(58,'http://192.168.0.104:8080/EK/public/api/android-device-online-license?imei=ab6ff943a84e56d7&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'192.168.0.108','2024-06-10 11:55:55','2024-06-10 11:55:55','POST','June 10, 2024, 11:55 am',NULL,'{\"imei\":\"ab6ff943a84e56d7\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(59,'http://192.168.0.104:8080/EK/public/api/zones','[]',NULL,'192.168.0.108','2024-06-10 11:56:01','2024-06-10 11:56:01','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(60,'http://192.168.0.104:8080/EK/public/api/cities','[]',NULL,'192.168.0.108','2024-06-10 11:56:01','2024-06-10 11:56:01','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(61,'http://192.168.0.104:8080/EK/public/api/branches','[]',NULL,'192.168.0.108','2024-06-10 11:56:01','2024-06-10 11:56:01','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(62,'http://192.168.0.104:8080/EK/public/api/device-groups','[]',NULL,'192.168.0.108','2024-06-10 11:56:01','2024-06-10 11:56:01','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(63,'http://192.168.0.104:8080/EK/public/api/devices','[]',NULL,'192.168.0.108','2024-06-10 11:56:01','2024-06-10 11:56:01','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(64,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 11:56:18','2024-06-10 11:56:18','GET','June 10, 2024, 11:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(65,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 12:02:39','2024-06-10 12:02:39','GET','June 10, 2024, 12:02 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(66,'http://192.168.0.104:8080/EK/public/api/counter-content/1','[]',NULL,'192.168.0.106','2024-06-10 12:04:08','2024-06-10 12:04:08','GET','June 10, 2024, 12:04 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(67,'http://192.168.0.104:8080/EK/public/api/counter-content/2','[]',NULL,'192.168.0.103','2024-06-10 12:04:10','2024-06-10 12:04:10','GET','June 10, 2024, 12:04 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(68,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 12:04:13','2024-06-10 12:04:13','GET','June 10, 2024, 12:04 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(69,'http://192.168.0.104:8080/EK/public/api/counter-content/1','[]',NULL,'192.168.0.106','2024-06-10 12:10:12','2024-06-10 12:10:12','GET','June 10, 2024, 12:10 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(70,'http://192.168.0.104:8080/EK/public/api/counter-content/2','[]',NULL,'192.168.0.103','2024-06-10 12:10:14','2024-06-10 12:10:14','GET','June 10, 2024, 12:10 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(71,'http://192.168.0.104:8080/EK/public/api/playlist/3','[]',NULL,'192.168.0.108','2024-06-10 12:10:17','2024-06-10 12:10:17','GET','June 10, 2024, 12:10 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(72,'http://192.168.0.100:8000/api/online-license?imei=f800754e6677aeb9','{\"imei\":\"f800754e6677aeb9\"}',NULL,'192.168.0.113','2024-06-27 07:22:56','2024-06-27 07:22:56','POST','June 27, 2024, 7:22 am',NULL,'{\"imei\":\"f800754e6677aeb9\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(73,NULL,NULL,NULL,NULL,'2024-06-27 07:22:58','2024-06-27 07:22:58',NULL,NULL,NULL,'{\"imei\":\"f800754e6677aeb9\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(74,'http://192.168.0.100:8000/api/online-license?imei=f800754e6677aeb9','{\"imei\":\"f800754e6677aeb9\"}',NULL,'192.168.0.113','2024-06-27 07:26:29','2024-06-27 07:26:29','POST','June 27, 2024, 7:26 am',NULL,'{\"imei\":\"f800754e6677aeb9\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,NULL,NULL,'2024-06-27 07:26:30','2024-06-27 07:26:30',NULL,NULL,NULL,'{\"imei\":\"f800754e6677aeb9\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(76,'http://192.168.0.100:8000/api/android-device-online-license?imei=f800754e6677aeb9&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"f800754e6677aeb9\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'192.168.0.113','2024-06-27 07:26:31','2024-06-27 07:26:31','POST','June 27, 2024, 7:26 am',NULL,'{\"imei\":\"f800754e6677aeb9\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(77,'http://192.168.0.100:8000/api/zones','[]',NULL,'192.168.0.113','2024-06-27 07:26:37','2024-06-27 07:26:37','GET','June 27, 2024, 7:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(78,'http://192.168.0.100:8000/api/cities','[]',NULL,'192.168.0.113','2024-06-27 07:26:37','2024-06-27 07:26:37','GET','June 27, 2024, 7:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(79,'http://192.168.0.100:8000/api/branches','[]',NULL,'192.168.0.113','2024-06-27 07:26:37','2024-06-27 07:26:37','GET','June 27, 2024, 7:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(80,'http://192.168.0.100:8000/api/device-groups','[]',NULL,'192.168.0.113','2024-06-27 07:26:38','2024-06-27 07:26:38','GET','June 27, 2024, 7:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(81,'http://192.168.0.100:8000/api/devices','[]',NULL,'192.168.0.113','2024-06-27 07:26:38','2024-06-27 07:26:38','GET','June 27, 2024, 7:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(82,'http://192.168.0.100:8000/api/playlist/3','[]',NULL,'192.168.0.113','2024-06-27 07:27:04','2024-06-27 07:27:04','GET','June 27, 2024, 7:27 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(83,'http://192.168.0.100:8000/api/online-license?imei=f9fbf04e81fdc879','{\"imei\":\"f9fbf04e81fdc879\"}',NULL,'192.168.0.111','2024-06-27 07:32:08','2024-06-27 07:32:08','POST','June 27, 2024, 7:32 am',NULL,'{\"imei\":\"f9fbf04e81fdc879\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,NULL,'2024-06-27 07:32:09','2024-06-27 07:32:09',NULL,NULL,NULL,'{\"imei\":\"f9fbf04e81fdc879\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(85,'http://192.168.0.100:8000/api/online-license?imei=f9fbf04e81fdc879','{\"imei\":\"f9fbf04e81fdc879\"}',NULL,'192.168.0.111','2024-06-27 07:33:10','2024-06-27 07:33:10','POST','June 27, 2024, 7:33 am',NULL,'{\"imei\":\"f9fbf04e81fdc879\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,NULL,'2024-06-27 07:33:10','2024-06-27 07:33:10',NULL,NULL,NULL,'{\"imei\":\"f9fbf04e81fdc879\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(87,'http://192.168.0.100:8000/api/android-device-online-license?imei=f9fbf04e81fdc879&license_key=d9c9d3c1962d112497bf15a8a8b57d9799f9637c','{\"imei\":\"f9fbf04e81fdc879\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'192.168.0.111','2024-06-27 07:33:13','2024-06-27 07:33:13','POST','June 27, 2024, 7:33 am',NULL,'{\"imei\":\"f9fbf04e81fdc879\",\"license_key\":\"d9c9d3c1962d112497bf15a8a8b57d9799f9637c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(88,'http://192.168.0.100:8000/api/counter-content/1','[]',NULL,'192.168.0.111','2024-06-27 07:36:34','2024-06-27 07:36:34','GET','June 27, 2024, 7:36 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(89,'http://192.168.0.100:8000/api/counter-content/1','[]',NULL,'192.168.0.111','2024-06-27 07:37:01','2024-06-27 07:37:01','GET','June 27, 2024, 7:37 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(90,'http://192.168.0.100:8000/api/counter-content/1','[]',NULL,'192.168.0.111','2024-06-27 07:37:22','2024-06-27 07:37:22','GET','June 27, 2024, 7:37 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(91,'http://192.168.0.100:8000/api/counter-content/1','[]',NULL,'192.168.0.111','2024-06-27 07:38:17','2024-06-27 07:38:17','GET','June 27, 2024, 7:38 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(92,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 11:30:00','2025-01-30 11:30:00','POST','January 30, 2025, 11:30 am',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(93,NULL,NULL,NULL,NULL,'2025-01-30 11:30:00','2025-01-30 11:30:00',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(94,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 11:30:52','2025-01-30 11:30:52','POST','January 30, 2025, 11:30 am',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,NULL,NULL,'2025-01-30 11:30:52','2025-01-30 11:30:52',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Device Lisence has expired',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(96,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 11:31:21','2025-01-30 11:31:21','POST','January 30, 2025, 11:31 am',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,NULL,NULL,'2025-01-30 11:31:21','2025-01-30 11:31:21',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(98,'http://10.255.254.210:8000/api/android-device-online-license?imei=b04c38e05562da4c&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-01-30 11:31:23','2025-01-30 11:31:23','POST','January 30, 2025, 11:31 am',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(99,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-01-30 11:31:28','2025-01-30 11:31:28','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(100,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-01-30 11:31:28','2025-01-30 11:31:28','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(101,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-01-30 11:31:28','2025-01-30 11:31:28','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(102,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-01-30 11:31:29','2025-01-30 11:31:29','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(103,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-01-30 11:31:29','2025-01-30 11:31:29','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(104,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 11:31:40','2025-01-30 11:31:40','GET','January 30, 2025, 11:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(105,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 11:43:41','2025-01-30 11:43:41','POST','January 30, 2025, 11:43 am',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,NULL,NULL,'2025-01-30 11:43:41','2025-01-30 11:43:41',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(107,'http://10.255.254.210:8000/api/android-device-online-license?imei=b04c38e05562da4c&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-01-30 11:43:42','2025-01-30 11:43:42','POST','January 30, 2025, 11:43 am',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(108,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-01-30 11:43:47','2025-01-30 11:43:47','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(109,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-01-30 11:43:47','2025-01-30 11:43:47','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(110,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-01-30 11:43:47','2025-01-30 11:43:47','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(111,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-01-30 11:43:48','2025-01-30 11:43:48','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(112,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-01-30 11:43:48','2025-01-30 11:43:48','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(113,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 11:43:59','2025-01-30 11:43:59','GET','January 30, 2025, 11:43 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(114,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 11:49:15','2025-01-30 11:49:15','GET','January 30, 2025, 11:49 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(115,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-01-30 11:49:16','2025-01-30 11:49:16','GET','January 30, 2025, 11:49 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(116,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 12:00:49','2025-01-30 12:00:49','POST','January 30, 2025, 12:00 pm',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(117,NULL,NULL,NULL,NULL,'2025-01-30 12:00:49','2025-01-30 12:00:49',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(118,'http://10.255.254.210:8000/api/android-device-online-license?imei=b04c38e05562da4c&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-01-30 12:00:52','2025-01-30 12:00:52','POST','January 30, 2025, 12:00 pm',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(119,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-01-30 12:00:56','2025-01-30 12:00:56','GET','January 30, 2025, 12:00 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(120,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-01-30 12:00:57','2025-01-30 12:00:57','GET','January 30, 2025, 12:00 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(121,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-01-30 12:00:57','2025-01-30 12:00:57','GET','January 30, 2025, 12:00 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(122,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-01-30 12:00:57','2025-01-30 12:00:57','GET','January 30, 2025, 12:00 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(123,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-01-30 12:00:58','2025-01-30 12:00:58','GET','January 30, 2025, 12:00 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(124,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:01:08','2025-01-30 12:01:08','GET','January 30, 2025, 12:01 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(125,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.210','2025-01-30 12:03:50','2025-01-30 12:03:50','GET','January 30, 2025, 12:03 pm',NULL,'[]',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(126,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.210','2025-01-30 12:03:56','2025-01-30 12:03:56','GET','January 30, 2025, 12:03 pm',NULL,'[]',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(127,'http://10.255.254.210:8000/api/android-device-online-license','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.210','2025-01-30 12:04:41','2025-01-30 12:04:41','POST','January 30, 2025, 12:04 pm',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(128,'http://10.255.254.210:8000/api/android-device-online-license','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.210','2025-01-30 12:24:17','2025-01-30 12:24:17','POST','January 30, 2025, 12:24 pm',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(129,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 12:24:45','2025-01-30 12:24:45','POST','January 30, 2025, 12:24 pm',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(130,NULL,NULL,NULL,NULL,'2025-01-30 12:24:45','2025-01-30 12:24:45',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(131,'http://10.255.254.210:8000/api/android-device-online-license?imei=b04c38e05562da4c&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-01-30 12:24:49','2025-01-30 12:24:49','POST','January 30, 2025, 12:24 pm',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(132,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-01-30 12:24:53','2025-01-30 12:24:53','GET','January 30, 2025, 12:24 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(133,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-01-30 12:24:54','2025-01-30 12:24:54','GET','January 30, 2025, 12:24 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(134,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-01-30 12:24:54','2025-01-30 12:24:54','GET','January 30, 2025, 12:24 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(135,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-01-30 12:24:54','2025-01-30 12:24:54','GET','January 30, 2025, 12:24 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(136,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-01-30 12:24:55','2025-01-30 12:24:55','GET','January 30, 2025, 12:24 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(137,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:25:04','2025-01-30 12:25:04','GET','January 30, 2025, 12:25 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(138,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:25:23','2025-01-30 12:25:23','GET','January 30, 2025, 12:25 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(139,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-01-30 12:25:23','2025-01-30 12:25:23','GET','January 30, 2025, 12:25 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(140,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:26:04','2025-01-30 12:26:04','GET','January 30, 2025, 12:26 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(141,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-01-30 12:26:05','2025-01-30 12:26:05','GET','January 30, 2025, 12:26 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(142,'http://10.255.254.210:8000/api/online-license?imei=b04c38e05562da4c','{\"imei\":\"b04c38e05562da4c\"}',NULL,'10.255.254.16','2025-01-30 12:44:21','2025-01-30 12:44:21','POST','January 30, 2025, 12:44 pm',NULL,'{\"imei\":\"b04c38e05562da4c\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(143,NULL,NULL,NULL,NULL,'2025-01-30 12:44:21','2025-01-30 12:44:21',NULL,NULL,NULL,'{\"imei\":\"b04c38e05562da4c\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(144,'http://10.255.254.210:8000/api/android-device-online-license?imei=b04c38e05562da4c&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-01-30 12:44:22','2025-01-30 12:44:22','POST','January 30, 2025, 12:44 pm',NULL,'{\"imei\":\"b04c38e05562da4c\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(145,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-01-30 12:44:27','2025-01-30 12:44:27','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(146,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-01-30 12:44:27','2025-01-30 12:44:27','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(147,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-01-30 12:44:28','2025-01-30 12:44:28','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(148,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-01-30 12:44:28','2025-01-30 12:44:28','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(149,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-01-30 12:44:28','2025-01-30 12:44:28','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(150,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:44:54','2025-01-30 12:44:54','GET','January 30, 2025, 12:44 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(151,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-30 12:45:13','2025-01-30 12:45:13','GET','January 30, 2025, 12:45 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(152,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-01-30 12:45:14','2025-01-30 12:45:14','GET','January 30, 2025, 12:45 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(153,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.210','2025-01-30 12:46:39','2025-01-30 12:46:39','GET','January 30, 2025, 12:46 pm',NULL,'[]',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(154,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.210','2025-01-30 12:47:17','2025-01-30 12:47:17','GET','January 30, 2025, 12:47 pm',NULL,'[]',NULL,'PostmanRuntime/7.43.0',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(155,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-01-31 12:03:58','2025-01-31 12:03:58','GET','January 31, 2025, 12:03 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(156,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-01-31 12:03:59','2025-01-31 12:03:59','GET','January 31, 2025, 12:03 pm',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(157,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-03 05:56:24','2025-02-03 05:56:24','POST','February 3, 2025, 5:56 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(158,NULL,NULL,NULL,NULL,'2025-02-03 05:56:25','2025-02-03 05:56:25',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(159,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-03 05:56:43','2025-02-03 05:56:43','POST','February 3, 2025, 5:56 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,'2025-02-03 05:56:43','2025-02-03 05:56:43',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Not Found against this IMEI',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(161,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-03 05:58:21','2025-02-03 05:58:21','POST','February 3, 2025, 5:58 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(162,NULL,NULL,NULL,NULL,'2025-02-03 05:58:21','2025-02-03 05:58:21',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(163,'http://10.255.254.210:8000/api/android-device-online-license?imei=56480098304812be&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-02-03 05:58:29','2025-02-03 05:58:29','POST','February 3, 2025, 5:58 am',NULL,'{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(164,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-02-03 05:58:34','2025-02-03 05:58:34','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(165,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-02-03 05:58:34','2025-02-03 05:58:34','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(166,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-02-03 05:58:34','2025-02-03 05:58:34','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(167,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-02-03 05:58:35','2025-02-03 05:58:35','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(168,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-02-03 05:58:35','2025-02-03 05:58:35','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(169,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 05:58:45','2025-02-03 05:58:45','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(170,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 05:58:51','2025-02-03 05:58:51','GET','February 3, 2025, 5:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(171,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:00:14','2025-02-03 06:00:14','GET','February 3, 2025, 6:00 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(172,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:00:15','2025-02-03 06:00:15','GET','February 3, 2025, 6:00 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(173,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:02:28','2025-02-03 06:02:28','GET','February 3, 2025, 6:02 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(174,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:02:28','2025-02-03 06:02:28','GET','February 3, 2025, 6:02 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(175,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:02:44','2025-02-03 06:02:44','GET','February 3, 2025, 6:02 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(176,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:09:06','2025-02-03 06:09:06','GET','February 3, 2025, 6:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(177,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:09:07','2025-02-03 06:09:07','GET','February 3, 2025, 6:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(178,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:09:44','2025-02-03 06:09:44','GET','February 3, 2025, 6:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(179,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:09:45','2025-02-03 06:09:45','GET','February 3, 2025, 6:09 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(180,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:10:51','2025-02-03 06:10:51','GET','February 3, 2025, 6:10 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(181,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:10:52','2025-02-03 06:10:52','GET','February 3, 2025, 6:10 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(182,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 06:51:20','2025-02-03 06:51:20','GET','February 3, 2025, 6:51 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(183,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 06:51:22','2025-02-03 06:51:22','GET','February 3, 2025, 6:51 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(184,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-03 07:47:37','2025-02-03 07:47:37','POST','February 3, 2025, 7:47 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(185,NULL,NULL,NULL,NULL,'2025-02-03 07:47:38','2025-02-03 07:47:38',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(186,'http://10.255.254.210:8000/api/android-device-online-license?imei=56480098304812be&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-02-03 07:48:40','2025-02-03 07:48:40','POST','February 3, 2025, 7:48 am',NULL,'{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(187,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-02-03 07:48:45','2025-02-03 07:48:45','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(188,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-02-03 07:48:45','2025-02-03 07:48:45','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(189,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-02-03 07:48:46','2025-02-03 07:48:46','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(190,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-02-03 07:48:46','2025-02-03 07:48:46','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(191,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-02-03 07:48:47','2025-02-03 07:48:47','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(192,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 07:48:59','2025-02-03 07:48:59','GET','February 3, 2025, 7:48 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(193,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 07:49:06','2025-02-03 07:49:06','GET','February 3, 2025, 7:49 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(194,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 07:54:57','2025-02-03 07:54:57','GET','February 3, 2025, 7:54 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(195,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 07:54:57','2025-02-03 07:54:57','GET','February 3, 2025, 7:54 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(196,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 07:58:00','2025-02-03 07:58:00','GET','February 3, 2025, 7:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(197,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 07:58:00','2025-02-03 07:58:00','GET','February 3, 2025, 7:58 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(198,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-03 07:59:03','2025-02-03 07:59:03','GET','February 3, 2025, 7:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(199,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-03 07:59:03','2025-02-03 07:59:03','GET','February 3, 2025, 7:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(200,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-17 07:50:16','2025-02-17 07:50:16','POST','February 17, 2025, 7:50 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL,'2025-02-17 07:50:17','2025-02-17 07:50:17',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(202,'http://10.255.254.210:8000/api/android-device-online-license?imei=56480098304812be&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-02-17 07:50:28','2025-02-17 07:50:28','POST','February 17, 2025, 7:50 am',NULL,'{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(203,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-02-17 07:50:33','2025-02-17 07:50:33','GET','February 17, 2025, 7:50 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(204,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-02-17 07:50:33','2025-02-17 07:50:33','GET','February 17, 2025, 7:50 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(205,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-02-17 07:50:34','2025-02-17 07:50:34','GET','February 17, 2025, 7:50 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(206,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-02-17 07:50:34','2025-02-17 07:50:34','GET','February 17, 2025, 7:50 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(207,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-02-17 07:50:34','2025-02-17 07:50:34','GET','February 17, 2025, 7:50 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(208,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 07:51:20','2025-02-17 07:51:20','GET','February 17, 2025, 7:51 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(209,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 07:51:34','2025-02-17 07:51:34','GET','February 17, 2025, 7:51 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(210,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 07:51:47','2025-02-17 07:51:47','GET','February 17, 2025, 7:51 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(211,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 07:52:16','2025-02-17 07:52:16','GET','February 17, 2025, 7:52 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(212,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 07:52:39','2025-02-17 07:52:39','GET','February 17, 2025, 7:52 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(213,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 07:52:40','2025-02-17 07:52:40','GET','February 17, 2025, 7:52 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(214,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 07:53:11','2025-02-17 07:53:11','GET','February 17, 2025, 7:53 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(215,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 07:53:11','2025-02-17 07:53:11','GET','February 17, 2025, 7:53 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(216,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:26:49','2025-02-17 08:26:49','GET','February 17, 2025, 8:26 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(217,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:27:21','2025-02-17 08:27:21','GET','February 17, 2025, 8:27 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(218,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:30:11','2025-02-17 08:30:11','GET','February 17, 2025, 8:30 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(219,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 08:30:40','2025-02-17 08:30:40','GET','February 17, 2025, 8:30 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(220,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:30:41','2025-02-17 08:30:41','GET','February 17, 2025, 8:30 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(221,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 08:31:56','2025-02-17 08:31:56','GET','February 17, 2025, 8:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(222,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:31:57','2025-02-17 08:31:57','GET','February 17, 2025, 8:31 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(223,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:33:45','2025-02-17 08:33:45','GET','February 17, 2025, 8:33 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(224,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:41:21','2025-02-17 08:41:21','GET','February 17, 2025, 8:41 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(225,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-17 08:56:37','2025-02-17 08:56:37','POST','February 17, 2025, 8:56 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(226,NULL,NULL,NULL,NULL,'2025-02-17 08:56:38','2025-02-17 08:56:38',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(227,'http://10.255.254.210:8000/api/android-device-online-license?imei=56480098304812be&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-02-17 08:56:40','2025-02-17 08:56:40','POST','February 17, 2025, 8:56 am',NULL,'{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(228,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-02-17 08:56:45','2025-02-17 08:56:45','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(229,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-02-17 08:56:45','2025-02-17 08:56:45','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(230,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-02-17 08:56:45','2025-02-17 08:56:45','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(231,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-02-17 08:56:45','2025-02-17 08:56:45','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(232,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-02-17 08:56:46','2025-02-17 08:56:46','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(233,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 08:56:57','2025-02-17 08:56:57','GET','February 17, 2025, 8:56 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(234,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:57:03','2025-02-17 08:57:03','GET','February 17, 2025, 8:57 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(235,'http://10.255.254.210:8000/api/online-license?imei=56480098304812be','{\"imei\":\"56480098304812be\"}',NULL,'10.255.254.16','2025-02-17 08:59:27','2025-02-17 08:59:27','POST','February 17, 2025, 8:59 am',NULL,'{\"imei\":\"56480098304812be\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(236,NULL,NULL,NULL,NULL,'2025-02-17 08:59:27','2025-02-17 08:59:27',NULL,NULL,NULL,'{\"imei\":\"56480098304812be\"}','Lisence Found',NULL,NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(237,'http://10.255.254.210:8000/api/android-device-online-license?imei=56480098304812be&license_key=6c321a346b4e5e1b8c01edad6643910729666d41','{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'10.255.254.16','2025-02-17 08:59:29','2025-02-17 08:59:29','POST','February 17, 2025, 8:59 am',NULL,'{\"imei\":\"56480098304812be\",\"license_key\":\"6c321a346b4e5e1b8c01edad6643910729666d41\"}',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(238,'http://10.255.254.210:8000/api/zones','[]',NULL,'10.255.254.16','2025-02-17 08:59:33','2025-02-17 08:59:33','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(239,'http://10.255.254.210:8000/api/cities','[]',NULL,'10.255.254.16','2025-02-17 08:59:34','2025-02-17 08:59:34','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(240,'http://10.255.254.210:8000/api/branches','[]',NULL,'10.255.254.16','2025-02-17 08:59:34','2025-02-17 08:59:34','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(241,'http://10.255.254.210:8000/api/device-groups','[]',NULL,'10.255.254.16','2025-02-17 08:59:34','2025-02-17 08:59:34','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(242,'http://10.255.254.210:8000/api/devices','[]',NULL,'10.255.254.16','2025-02-17 08:59:35','2025-02-17 08:59:35','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(243,'http://10.255.254.210:8000/api/playlist/3','[]',NULL,'10.255.254.16','2025-02-17 08:59:43','2025-02-17 08:59:43','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL),(244,'http://10.255.254.210:8000/api/device-settings/3','[]',NULL,'10.255.254.16','2025-02-17 08:59:49','2025-02-17 08:59:49','GET','February 17, 2025, 8:59 am',NULL,'[]',NULL,'okhttp/5.0.0-alpha.2',NULL,'request-log',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `service_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ds` varbinary(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,_binary 'pVZˆ…Ï·¾W’¼\Äóƒ\è');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socket_message_logs`
--

DROP TABLE IF EXISTS `socket_message_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socket_message_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` int DEFAULT NULL,
  `message_content` longtext COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socket_message_logs`
--

LOCK TABLES `socket_message_logs` WRITE;
/*!40000 ALTER TABLE `socket_message_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `socket_message_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'image',
  `staff_background_content` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `background_stay_time` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin',NULL,'admin@ek.com',1,NULL,'$2y$10$ug.SPiMeNWQ/2VduIcSgd.McmBwytVeyVuGl5kkp.aFxOgoYrNsYW',NULL,'2024-05-20 11:30:58','2024-05-20 11:30:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `organization_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,1,'United Arab Emirates','united-arab-emirates',NULL,'2024-06-10 10:47:13','2024-06-10 10:47:13');
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-17 14:12:04
