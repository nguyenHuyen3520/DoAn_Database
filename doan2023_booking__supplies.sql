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
-- Table structure for table `booking__supplies`
--

DROP TABLE IF EXISTS `booking__supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking__supplies` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `quantity` int NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `booking_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `supply_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking__supplies_SupplyId_BookingId_unique` (`booking_id`,`supply_id`),
  KEY `supply_id` (`supply_id`),
  CONSTRAINT `booking__supplies_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking__supplies_ibfk_2` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking__supplies`
--

LOCK TABLES `booking__supplies` WRITE;
/*!40000 ALTER TABLE `booking__supplies` DISABLE KEYS */;
INSERT INTO `booking__supplies` VALUES ('0712f771-a88a-4055-8e90-2c161a413727',1,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-07 17:08:28','2023-05-07 17:08:28','ab6deb07-2ffc-4e3a-8501-5afb21ac4ef7',2),('30f77843-1bda-4960-878d-300b855e15f1',4,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-07 18:01:20','2023-05-07 18:01:20','c3d02876-bf4e-44b5-b81d-b6703399105a',1),('5842b388-afaa-49fc-9f3b-2f09498156f7',2,'Ngày uống 2 lần sáng và tối trước ăn 30 phút','2023-05-08 13:16:00','2023-05-08 13:16:00','0da5a16d-1af1-41b0-8fbf-3cb40a4408b6',1),('7caafc5e-cec2-49dd-9740-fbc651761678',2,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-08 06:37:11','2023-05-08 06:37:11','4af7bd89-f47e-48f4-ae1f-4b6a3a71884a',4),('7dc1f5fd-b600-4248-8f27-829fcf5ed4e8',2,'Ngày uống 2 lần sáng và tối trước ăn 30 phút','2023-05-08 13:16:00','2023-05-08 13:16:00','0da5a16d-1af1-41b0-8fbf-3cb40a4408b6',3),('7ec73663-5b17-4ea1-9387-f9acf74bbbc9',3,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-07 18:01:20','2023-05-07 18:01:20','c3d02876-bf4e-44b5-b81d-b6703399105a',2),('8f586564-23ea-4fdb-bcec-0f802f155763',2,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-07 17:03:19','2023-05-07 17:03:19','ab6deb07-2ffc-4e3a-8501-5afb21ac4ef7',1),('b87ddcb8-b63c-4dc9-b0e6-d4eb3700c1b6',2,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-08 06:37:11','2023-05-08 06:37:11','4af7bd89-f47e-48f4-ae1f-4b6a3a71884a',1),('b8c0b39d-1af6-4d74-8471-35f739cfb33f',3,'Ngày uống sáng và tối. Mỗi lần uống 2 viên trước ăn 30 phút','2023-05-07 18:01:20','2023-05-07 18:01:20','c3d02876-bf4e-44b5-b81d-b6703399105a',3);
/*!40000 ALTER TABLE `booking__supplies` ENABLE KEYS */;
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
