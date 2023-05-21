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
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `supplies_group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplies_group_id` (`supplies_group_id`),
  CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`supplies_group_id`) REFERENCES `supplies_groups` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES (1,'Siro Vitalysine','cho trẻ biếng ăn an toàn, hiệu quả','hộp',194,140000,1,'2023-05-07 07:18:08','2023-05-08 13:16:08',1),(2,'Nuzolex','cho trẻ biếng ăn an toàn, hiệu quả','hộp',397,125000,1,'2023-05-07 07:18:24','2023-05-07 18:01:32',1),(3,'Vitatroplex ','cho trẻ biếng ăn an toàn, hiệu quả','chai',95,110000,1,'2023-05-07 07:20:17','2023-05-08 13:16:08',1),(4,'Special Kid Appetit+','cho trẻ biếng ăn an toàn, hiệu quả','hộp',150,120000,1,'2023-05-07 07:20:17','2023-05-07 07:20:17',1),(5,'6 Enzymes IP','cho trẻ biếng ăn an toàn, hiệu quả','hộp',200,110000,1,'2023-05-07 07:20:17','2023-05-07 07:20:17',1),(6,'Olymdiges Gold','cho trẻ biếng ăn an toàn, hiệu quả','hộp',159,100000,1,'2023-05-07 07:20:17','2023-05-07 07:20:17',1);
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-21 16:20:18