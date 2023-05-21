-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doan2023
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT 'HSBN1683475832',
  `gender` int NOT NULL,
  `note` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `bmi` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_default` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES ('53c85901-136e-48a1-a92b-4f45743c478c','Nguyễn Văn Bìmh','HSBN1682274337',1,'khong','26/04/2023','12','103','5.825242718446602','ngõ 120 kim giang','0898731845','nguyenhuyennd1211@gmail.com',0,'2023-04-23 18:26:54','2023-05-17 17:28:32','6eaad734-884e-437b-84ee-0f74e01719bd'),('69f5b656-3896-4eea-a5bf-dc623e4c8e4a','Nguyễn Văn Minh','HSBN48',1,'Không bị dị ứng gì','25/04/2020','30','128','11.71875','ngõ 120 kim giang','0898731845','nguyenhuyennd1211@gmail.com',0,'2023-04-22 11:05:52','2023-05-21 09:06:16','6eaad734-884e-437b-84ee-0f74e01719bd'),('6d624825-784b-46f3-b8de-94819bed2f7d','test123','HSBN1682470758',1,'khong\n','26/04/2023','35','130','13.461538461538462','ngõ 120 kim giang','0898731845','test1@gmail.com',1,'2023-04-26 01:01:59','2023-05-21 09:06:16','6eaad734-884e-437b-84ee-0f74e01719bd'),('e3d83895-b9a8-4221-b64f-3857936f0b5f','Test','HSBN1682461415',1,'khong','04/26/2019','35','130','13.5','ngõ 120 kim giang','0898731845','test@gmail.com',0,'2023-04-26 00:54:47','2023-04-26 00:54:47','6eaad734-884e-437b-84ee-0f74e01719bd');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 16:20:17
