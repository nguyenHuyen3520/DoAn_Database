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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `sort` int DEFAULT NULL,
  `status` int NOT NULL,
  `symptom` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `patient_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bill_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `patient_id` (`patient_id`),
  KEY `service_id` (`service_id`),
  KEY `user_id` (`user_id`),
  KEY `bill_id` (`bill_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('08a13794-93c1-4398-aff6-05e46a0ee0bc','1679788800','13:30 - 14:30',2,3,NULL,NULL,'2023-04-25 12:26:10','2023-05-20 19:51:20','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',2,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('08cbf380-7942-4d3e-9c69-a10edd2e33b1','1679875200','13:30 - 14:30',3,0,NULL,NULL,'2023-04-25 23:52:48','2023-04-25 23:52:48',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('0da5a16d-1af1-41b0-8fbf-3cb40a4408b6','1679788800','15:30 - 16:30',5,4,'bé bị suy dinh dưỡng thể nhẹ','cần cải thiện chế độ dinh dưỡng','2023-04-25 12:26:10','2023-05-08 13:18:15','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',3,'1adc4ab1-e4ca-4178-973b-5e172a68ec81','9ac5005e-db73-4041-870d-f75c9b2f8d6c'),('3aa5d294-8e23-48a4-896e-f48d94d9f7dc','1679788800','16:30 - 17:30',6,0,NULL,NULL,'2023-04-25 12:26:10','2023-04-25 12:26:10',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('4af7bd89-f47e-48f4-ae1f-4b6a3a71884a','1679788800','9:30 - 10:30',1,3,'bé bị suy dinh dưỡng thể thấp còi','bố sung thêm cho trẻ dinh dưỡng và uống thuốc để giúp cơ thể cải thiện ','2023-04-25 12:26:10','2023-04-25 22:23:37','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',3,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('71a42e38-8df9-480f-8830-00947ee15653','1679875200','15:30 - 16:30',5,3,'bé bị suy dinh dưỡng thể thấp còi','bố sung thêm cho trẻ dinh dưỡng và uống thuốc để giúp cơ thể cải thiện ','2023-04-26 01:03:53','2023-04-26 01:06:14','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',3,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('7a6a6e2e-8309-475f-aedb-d27642db1055','1679875200','17:30 - 18:30',7,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('806d5c3d-1a9f-45a3-85e4-1d5a9da95031','1679788800','10:30 - 11:30',2,0,NULL,NULL,'2023-04-25 12:26:10','2023-04-25 12:26:10',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('888901fe-b8b9-4076-afc8-e8ee538d87a2','1679788800','14:30 - 15:30',4,0,NULL,NULL,'2023-04-25 12:26:10','2023-04-25 12:26:10',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('98245dad-2240-44fd-9c69-ad9051a31703','1679875200','10:30 - 11:30',2,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('ab6deb07-2ffc-4e3a-8501-5afb21ac4ef7','1679875200','9:30 - 10:30',1,4,'bé bị suy dinh dưỡng thể thấp còi','Cần bổ sung thêm dưỡng chất bằng chế độ dinh dưỡng và uống thuốc','2023-04-25 23:52:48','2023-05-07 18:20:38','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',3,'1adc4ab1-e4ca-4178-973b-5e172a68ec81','2426a991-8c85-449a-9454-0c2360a7b991'),('ac522a2f-2974-4d59-8ee1-e8ce5f6ddfe0','1679875200','13:30 - 14:30',3,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('b078f5c4-d8bb-4b5d-a62c-9d8d34b9820b','1679875200','15:30 - 16:30',5,0,NULL,NULL,'2023-04-25 23:52:48','2023-04-25 23:52:48',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('c3d02876-bf4e-44b5-b81d-b6703399105a','1679875200','10:30 - 11:30',2,3,'Suy dinh dưỡng thể nhẹ cân','Cần bổ sung thêm dưỡng chất bằng chế độ dinh dưỡng và uống thuốc','2023-04-25 23:52:48','2023-05-07 18:01:32','69f5b656-3896-4eea-a5bf-dc623e4c8e4a',3,'1adc4ab1-e4ca-4178-973b-5e172a68ec81','3df5b501-4659-4c9a-a453-e835d395a2a9'),('c6845c02-76d8-4373-8a3f-386434f32a13','1679875200','14:30 - 15:30',4,0,NULL,NULL,'2023-04-25 23:52:48','2023-04-25 23:52:48',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('d3ccb04c-57ef-4719-97ba-6feeb4652ddd','1679875200','16:30 - 17:30',6,0,NULL,NULL,'2023-04-25 23:52:48','2023-04-25 23:52:48',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('d6f595c8-86ba-49a6-9337-f651e626eb9a','1679875200','16:30 - 17:30',6,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('d7c80f28-a68a-45b0-ab79-c2bd7e84ffe4','1679875200','17:30 - 18:30',7,0,NULL,NULL,'2023-04-25 23:52:48','2023-04-25 23:52:48',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('dfacfbb1-d8c1-45c2-bb0b-aa172f1d848f','1679875200','14:30 - 15:30',4,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL),('e3bee3f1-7eea-4404-aa6d-cab161837b4e','1679788800','17:30 - 18:30',7,0,NULL,NULL,'2023-04-25 12:26:10','2023-04-25 12:26:10',NULL,NULL,'1adc4ab1-e4ca-4178-973b-5e172a68ec81',NULL),('e8cd0db0-38cd-4f41-89ce-d0c915c3e33a','1679875200','9:30 - 10:30',1,0,NULL,NULL,'2023-04-26 01:03:53','2023-04-26 01:03:53',NULL,NULL,'42d86d95-ca4d-49db-a935-26062645d2b2',NULL);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
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
