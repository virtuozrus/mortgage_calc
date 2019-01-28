-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: calc
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `userhash` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `uri` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,'2019-01-21 23:45:30',NULL,NULL,NULL),(2,'2019-01-22 11:37:04',NULL,NULL,NULL),(3,'2019-01-22 11:37:04',NULL,NULL,NULL),(4,'2019-01-22 11:38:45',NULL,NULL,NULL),(5,'2019-01-22 11:38:45',NULL,NULL,NULL),(6,'2019-01-22 11:39:26',NULL,NULL,NULL),(7,'2019-01-22 11:39:26',NULL,NULL,NULL),(8,'2019-01-22 11:39:34',NULL,NULL,NULL),(9,'2019-01-22 11:39:35',NULL,NULL,NULL),(10,'2019-01-22 11:42:14',NULL,NULL,NULL),(11,'2019-01-22 11:42:15',NULL,NULL,NULL),(12,'2019-01-22 11:43:44',NULL,NULL,NULL),(13,'2019-01-22 11:43:45',NULL,NULL,NULL),(14,'2019-01-22 11:45:13',NULL,NULL,NULL),(15,'2019-01-22 11:45:13',NULL,NULL,NULL),(16,'2019-01-22 12:05:17',NULL,NULL,NULL),(17,'2019-01-22 12:05:18',NULL,NULL,NULL),(18,'2019-01-22 12:16:48',NULL,NULL,NULL),(19,'2019-01-22 12:16:48',NULL,NULL,NULL),(20,'2019-01-22 12:22:03',NULL,NULL,NULL),(21,'2019-01-22 12:22:03',NULL,NULL,NULL),(22,'2019-01-22 12:24:03',NULL,NULL,NULL),(23,'2019-01-22 12:24:03',NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL),(26,'2019-01-22 12:27:41',NULL,NULL,NULL),(27,'2019-01-22 12:27:41',NULL,NULL,NULL),(28,'2019-01-22 12:30:37',NULL,NULL,NULL),(29,'2019-01-22 12:30:38',NULL,NULL,NULL),(30,'2019-01-22 12:30:43',NULL,NULL,NULL),(31,'2019-01-22 12:30:43',NULL,NULL,NULL),(32,'2019-01-22 12:30:54',NULL,NULL,NULL),(33,'2019-01-22 12:30:54',NULL,NULL,NULL),(34,'2019-01-22 12:47:16',NULL,NULL,NULL),(35,'2019-01-22 12:47:16',NULL,NULL,NULL),(36,'2019-01-22 12:47:21',NULL,NULL,NULL),(37,'2019-01-22 12:47:40',NULL,NULL,NULL),(38,'2019-01-22 12:47:40',NULL,NULL,NULL),(43,'2019-01-22 14:56:12',NULL,NULL,NULL),(44,'2019-01-22 14:56:12',NULL,NULL,NULL),(45,'2019-01-22 14:56:19',NULL,NULL,NULL),(46,'2019-01-22 14:56:19',NULL,NULL,NULL),(47,'2019-01-22 15:07:54',NULL,NULL,NULL),(48,'2019-01-22 15:07:55',NULL,NULL,NULL),(49,'2019-01-22 15:10:49',NULL,NULL,NULL),(50,'2019-01-22 15:10:50',NULL,NULL,NULL),(51,'2019-01-22 15:11:02',NULL,NULL,NULL),(52,'2019-01-22 15:11:02',NULL,NULL,NULL),(53,'2019-01-22 15:11:12',NULL,NULL,NULL),(54,'2019-01-22 15:11:12',NULL,NULL,NULL),(55,'2019-01-22 15:17:52',NULL,NULL,NULL),(56,'2019-01-22 15:17:52',NULL,NULL,NULL),(57,'2019-01-22 15:18:01',NULL,NULL,NULL),(58,'2019-01-22 15:18:02',NULL,NULL,NULL),(59,'2019-01-22 15:18:15',NULL,NULL,NULL),(60,'2019-01-22 15:18:15',NULL,NULL,NULL),(61,'2019-01-22 15:19:34',NULL,NULL,NULL),(62,'2019-01-22 15:19:34',NULL,NULL,NULL),(63,'2019-01-22 15:19:38',NULL,NULL,NULL),(64,'2019-01-22 15:19:39',NULL,NULL,NULL),(65,'2019-01-22 15:48:51','5c46d741757aa','2130706433','/'),(66,'2019-01-22 15:48:51','5c46d741757aa','2130706433','/favicon.ico'),(67,'2019-01-22 15:49:19','5c46d741757aa','2130706433','/'),(68,'2019-01-22 15:49:19','5c46d741757aa','2130706433','/favicon.ico'),(69,'2019-01-22 15:51:14','5c46d741757aa','2130706433','/'),(70,'2019-01-22 15:51:15','5c46d741757aa','2130706433','/favicon.ico'),(71,'2019-01-22 15:51:30','5c46d992af829','2130706433','/login'),(72,'2019-01-22 15:51:30','5c46d992af829','2130706433','/favicon.ico'),(73,'2019-01-22 15:51:35','5c46d992af829','2130706433','/login'),(74,'2019-01-22 15:51:35','5c46d992af829','2130706433','/favicon.ico'),(75,'2019-01-22 15:51:59','5c46d992af829','2130706433','/login'),(76,'2019-01-22 15:51:59','5c46d992af829','2130706433','/favicon.ico'),(77,'2019-01-22 15:54:59','5c46d741757aa','2130706433','/'),(78,'2019-01-22 15:54:59','5c46d741757aa','2130706433','/favicon.ico'),(79,'2019-01-22 15:55:04','5c46d741757aa','2130706433','/'),(80,'2019-01-22 15:55:04','5c46d741757aa','2130706433','/login/calc/'),(81,'2019-01-22 15:55:04','5c46d741757aa','2130706433','/favicon.ico'),(82,'2019-01-22 15:55:04','5c46d741757aa','2130706433','/login/calc/'),(83,'2019-01-22 15:55:31','5c46d741757aa','2130706433','/login/calc/?exit=1'),(84,'2019-01-22 15:55:31','5c46d741757aa','2130706433','/login'),(85,'2019-01-22 15:55:31','5c46d741757aa','2130706433','/favicon.ico'),(86,'2019-01-22 16:11:24','5c46d741757aa','2130706433','/login'),(87,'2019-01-22 16:11:25','5c46d741757aa','2130706433','/login'),(88,'2019-01-22 16:11:43','5c46d741757aa','2130706433','/login'),(89,'2019-01-22 16:11:47','5c46d741757aa','2130706433','/'),(90,'2019-01-22 16:11:48','5c46d741757aa','2130706433','/'),(91,'2019-01-22 16:12:35','5c46d741757aa','2130706433','/'),(92,'2019-01-22 16:12:54','5c46d741757aa','2130706433','/'),(93,'2019-01-22 16:12:55','5c46d741757aa','2130706433','/login/calc/'),(94,'2019-01-22 16:13:38','5c46d741757aa','2130706433','/login/calc/?exit=1'),(95,'2019-01-22 16:13:38','5c46d741757aa','2130706433','/login'),(96,'2019-01-22 16:13:41','5c46d741757aa','2130706433','/login'),(97,'2019-01-22 16:13:53','5c46d741757aa','2130706433','/login'),(98,'2019-01-22 16:13:53','5c46d741757aa','2130706433','/login/calc/'),(99,'2019-01-22 16:14:07','5c46d741757aa','2130706433','/login/calc/'),(100,'2019-01-22 16:14:18','5c46d741757aa','2130706433','/login/calc/?exit=1'),(101,'2019-01-22 16:14:18','5c46d741757aa','2130706433','/login'),(102,'2019-01-22 19:39:22','5c46d741757aa','2130706433','/login'),(103,'2019-01-22 19:39:24','5c46d741757aa','2130706433','/login'),(104,'2019-01-22 19:40:16','5c46d741757aa','2130706433','/login'),(105,'2019-01-22 19:40:17','5c46d741757aa','2130706433','/login'),(106,'2019-01-22 19:40:47','5c46d741757aa','2130706433','/login'),(107,'2019-01-22 19:40:47','5c46d741757aa','2130706433','/login/calc/'),(108,'2019-01-22 19:41:05','5c46d992af829','2130706433','/login'),(109,'2019-01-22 19:41:14','5c46d992af829','2130706433','/login'),(110,'2019-01-22 19:41:18','5c46d992af829','2130706433','/login'),(111,'2019-01-22 19:41:18','5c46d992af829','2130706433','/login/calc/'),(112,'2019-01-22 19:41:59','5c46d992af829','2130706433','/login/calc/'),(113,'2019-01-22 19:42:00','5c46d992af829','2130706433','/login/calc/'),(114,'2019-01-22 19:42:00','5c46d992af829','2130706433','/login/calc/'),(115,'2019-01-22 19:42:00','5c46d992af829','2130706433','/login/calc/'),(116,'2019-01-22 19:43:24','5c46d992af829','2130706433','/login/calc/?exit=1'),(117,'2019-01-22 19:43:24','5c46d992af829','2130706433','/login'),(118,'2019-01-22 19:45:57','5c46d741757aa','2130706433','/login/calc/?exit=1'),(119,'2019-01-22 19:45:57','5c46d741757aa','2130706433','/login'),(120,'2019-01-22 22:18:07','5c46d741757aa','2130706433','/login'),(121,'2019-01-22 22:18:11','5c46d741757aa','2130706433','/login'),(122,'2019-01-22 22:18:11','5c46d741757aa','2130706433','/login/calc/'),(123,'2019-01-22 22:18:13','5c46d741757aa','2130706433','/login/calc/?exit=1'),(124,'2019-01-22 22:18:13','5c46d741757aa','2130706433','/login'),(125,'2019-01-22 23:12:18','5c46d741757aa','2130706433','/login'),(126,'2019-01-22 23:34:43','5c46d741757aa','2130706433','/login'),(127,'2019-01-22 23:34:44','5c46d741757aa','2130706433','/login'),(128,'2019-01-22 23:34:44','5c46d741757aa','2130706433','/login'),(129,'2019-01-22 23:35:19','5c46d741757aa','2130706433','/'),(130,'2019-01-22 23:35:20','5c46d741757aa','2130706433','/'),(131,'2019-01-22 23:38:40','5c46d741757aa','2130706433','/'),(132,'2019-01-23 00:53:27','5c46d741757aa','2130706433','/'),(133,'2019-01-23 08:21:25','5c46d741757aa','2130706433','/'),(134,'2019-01-25 16:08:05','5c49e02b6336d','2130706433','/v/'),(135,'2019-01-25 16:08:06','5c49e02b6336d','2130706433','/v/'),(136,'2019-01-25 16:08:09','5c49e02b6336d','2130706433','/v/'),(137,'2019-01-25 16:09:33','5c49e02b6336d','2130706433','/v/'),(138,'2019-01-25 16:13:29','5c49e02b6336d','2130706433','/v/'),(139,'2019-01-25 16:13:46','5c49e02b6336d','2130706433','/v/'),(140,'2019-01-25 16:14:12','5c49e02b6336d','2130706433','/v/'),(141,'2019-01-25 16:49:17','5c49e02b6336d','2130706433','/v/'),(142,'2019-01-25 16:49:17','5c49e02b6336d','2130706433','/v/'),(143,'2019-01-25 16:49:26','5c49e02b6336d','2130706433','/v/'),(144,'2019-01-25 16:54:22','5c49e02b6336d','2130706433','/v/login/index'),(145,'2019-01-25 17:20:15','5c49e02b6336d','2130706433','/v/'),(146,'2019-01-25 17:21:56','5c49e02b6336d','2130706433','/v/'),(147,'2019-01-25 17:22:18','5c49e02b6336d','2130706433','/v/'),(148,'2019-01-25 17:22:20','5c49e02b6336d','2130706433','/v/'),(149,'2019-01-25 17:22:34','5c4ae36a924d9','2130706433','/v/'),(150,'2019-01-25 17:22:36','5c4ae36a924d9','2130706433','/v/'),(151,'2019-01-25 17:22:36','5c4ae36a924d9','2130706433','/v/'),(152,'2019-01-25 17:22:37','5c4ae36a924d9','2130706433','/v/'),(153,'2019-01-25 17:22:37','5c4ae36a924d9','2130706433','/v/'),(154,'2019-01-25 17:22:53','5c4ae36a924d9','2130706433','/v/'),(155,'2019-01-25 17:48:06','5c49e02b6336d','2130706433','/v/'),(156,'2019-01-25 17:48:10','5c49e02b6336d','2130706433','/v/'),(157,'2019-01-26 11:03:31','5c49e02b6336d','2130706433','/v/'),(158,'2019-01-26 11:03:46','5c4ae36a924d9','2130706433','/v/'),(159,'2019-01-26 11:03:59','5c4ae36a924d9','2130706433','/v/'),(160,'2019-01-26 11:04:16','5c49e02b6336d','2130706433','/v/'),(161,'2019-01-26 11:59:32','5c49e02b6336d','2130706433','/v/'),(162,'2019-01-26 11:59:45','5c49e02b6336d','2130706433','/v/'),(163,'2019-01-26 11:59:55','5c49e02b6336d','2130706433','/v/'),(164,'2019-01-26 12:00:08','5c49e02b6336d','2130706433','/v/'),(165,'2019-01-26 12:05:34','5c49e02b6336d','2130706433','/v/'),(166,'2019-01-26 12:06:33','5c49e02b6336d','2130706433','/v/'),(167,'2019-01-26 22:54:49','5c49e02b6336d','2130706433','/v/'),(168,'2019-01-26 22:54:53','5c49e02b6336d','2130706433','/v/'),(169,'2019-01-26 22:56:25','5c49e02b6336d','2130706433','/v/'),(170,'2019-01-26 22:56:29','5c49e02b6336d','2130706433','/v/'),(171,'2019-01-26 23:11:45','5c49e02b6336d','2130706433','/v/'),(172,'2019-01-26 23:11:50','5c49e02b6336d','2130706433','/v/'),(173,'2019-01-26 23:12:53','5c49e02b6336d','2130706433','/v/'),(174,'2019-01-26 23:12:57','5c49e02b6336d','2130706433','/v/'),(175,'2019-01-26 23:21:21','5c49e02b6336d','2130706433','/v/'),(176,'2019-01-26 23:21:25','5c49e02b6336d','2130706433','/v/'),(177,'2019-01-27 12:56:32','5c49e02b6336d','2130706433','/v/'),(178,'2019-01-27 12:56:36','5c49e02b6336d','2130706433','/v/'),(179,'2019-01-27 17:36:27','5c49e02b6336d','2130706433','/v/'),(180,'2019-01-27 17:36:32','5c49e02b6336d','2130706433','/v/'),(181,'2019-01-27 18:00:06','5c49e02b6336d','2130706433','/v/'),(182,'2019-01-27 18:00:10','5c49e02b6336d','2130706433','/v/'),(183,'2019-01-27 18:42:02','5c49e02b6336d','2130706433','/v/'),(184,'2019-01-27 18:42:02','5c49e02b6336d','2130706433','/v/'),(185,'2019-01-27 18:42:07','5c49e02b6336d','2130706433','/v/'),(186,'2019-01-27 18:42:17','5c49e02b6336d','2130706433','/v/'),(187,'2019-01-27 18:42:20','5c49e02b6336d','2130706433','/v/'),(188,'2019-01-27 20:15:14','5c49e02b6336d','2130706433','/v/'),(189,'2019-01-27 20:15:19','5c49e02b6336d','2130706433','/v/'),(190,'2019-01-27 20:16:29','5c49e02b6336d','2130706433','/v/'),(191,'2019-01-27 20:16:34','5c49e02b6336d','2130706433','/v/'),(192,'2019-01-27 21:35:37','5c49e02b6336d','2130706433','/v/'),(193,'2019-01-27 21:35:42','5c49e02b6336d','2130706433','/v/'),(194,'2019-01-27 21:35:45','5c49e02b6336d','2130706433','/v/'),(195,'2019-01-27 21:35:51','5c49e02b6336d','2130706433','/v/'),(196,'2019-01-27 21:50:20','5c49e02b6336d','2130706433','/v/'),(197,'2019-01-27 21:50:24','5c49e02b6336d','2130706433','/v/'),(198,'2019-01-27 21:50:27','5c49e02b6336d','2130706433','/v/'),(199,'2019-01-27 21:50:31','5c49e02b6336d','2130706433','/v/'),(200,'2019-01-27 21:50:36','5c49e02b6336d','2130706433','/v/'),(201,'2019-01-27 21:50:40','5c49e02b6336d','2130706433','/v/'),(202,'2019-01-27 22:02:08','5c49e02b6336d','2130706433','/v/'),(203,'2019-01-27 22:02:41','5c4ae36a924d9','2130706433','/v/'),(204,'2019-01-27 22:02:46','5c4ae36a924d9','2130706433','/v/'),(205,'2019-01-27 22:14:49','5c4ae36a924d9','2130706433','/v/'),(206,'2019-01-27 22:14:51','5c4ae36a924d9','2130706433','/v/'),(207,'2019-01-27 22:14:54','5c4ae36a924d9','2130706433','/v/'),(208,'2019-01-27 22:16:48','5c49e02b6336d','2130706433','/v/'),(209,'2019-01-27 22:27:50','5c4dcdf65e215','2130706433','/'),(210,'2019-01-27 22:28:02','5c4dcdf65e215','2130706433','/'),(211,'2019-01-27 22:28:02','5c4dcdf65e215','2130706433','/'),(212,'2019-01-27 22:28:03','5c4dcdf65e215','2130706433','/'),(213,'2019-01-27 22:28:07','5c4dcdf65e215','2130706433','/'),(214,'2019-01-27 22:28:19','5c4dcdf65e215','2130706433','/'),(215,'2019-01-27 22:29:23','5c49e02b6336d','2130706433','/v/'),(216,'2019-01-27 22:30:50','5c49e02b6336d','2130706433','/v/'),(217,'2019-01-27 22:33:31','5c49e02b6336d','2130706433','/v/'),(218,'2019-01-27 22:33:35','5c49e02b6336d','2130706433','/v/'),(219,'2019-01-27 22:57:28','5c4ae36a924d9','2130706433','/v/'),(220,'2019-01-27 22:57:37','5c4ae36a924d9','2130706433','/v/'),(221,'2019-01-28 10:30:47','5c49e02b6336d','2130706433','/v/'),(222,'2019-01-28 10:31:26','5c49e02b6336d','2130706433','/v/'),(223,'2019-01-28 10:32:00','5c49e02b6336d','2130706433','/v/'),(224,'2019-01-28 10:32:06','5c49e02b6336d','2130706433','/v/');
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 10:37:42