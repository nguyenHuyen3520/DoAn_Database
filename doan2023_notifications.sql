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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(255) NOT NULL,
  `additional` varchar(255) DEFAULT NULL,
  `additional_value` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('01886e50-1f88-4f8d-9d8d-b72696d2e8f5','Bạn đã đặt lịch khám bệnh thành công lịch khám bệnh vào ngày 26/03/2023 vào khung giờ 9:30 - 10:30. Vui lòng để ý điện thoại để xác nhận từ phòng khám.','a','4af7bd89-f47e-48f4-ae1f-4b6a3a71884a',0,'2023-04-25 12:37:41','2023-04-25 13:00:55','6eaad734-884e-437b-84ee-0f74e01719bd'),('2cfb805f-c516-43ca-8e79-72c450920b01','Bạn đã đặt lịch khám bệnh thành công lịch khám bệnh vào ngày 27/03/2023 vào khung giờ 9:30 - 10:30. Vui lòng để ý điện thoại để xác nhận từ phòng khám.','a','ab6deb07-2ffc-4e3a-8501-5afb21ac4ef7',1,'2023-04-26 00:56:39','2023-04-26 00:56:39','6eaad734-884e-437b-84ee-0f74e01719bd'),('a977f9d6-bae1-44ba-abc4-7328fd04af5b','Bạn đã đặt lịch khám bệnh thành công lịch khám bệnh vào ngày 27/03/2023 vào khung giờ 15:30 - 16:30. Vui lòng để ý điện thoại để xác nhận từ phòng khám.','a','71a42e38-8df9-480f-8830-00947ee15653',1,'2023-04-26 01:04:09','2023-04-26 01:04:09','6eaad734-884e-437b-84ee-0f74e01719bd'),('e2f3b1a5-9404-4df6-a356-093cb5b5856a','Bạn đã đặt lịch khám bệnh thành công lịch khám bệnh vào ngày 27/03/2023 vào khung giờ 10:30 - 11:30. Vui lòng để ý điện thoại để xác nhận từ phòng khám.','a','c3d02876-bf4e-44b5-b81d-b6703399105a',1,'2023-04-25 23:54:57','2023-04-25 23:54:57','6eaad734-884e-437b-84ee-0f74e01719bd'),('fbc0344d-7499-43e2-a32a-0870f22be698','Bạn đã đặt lịch khám bệnh thành công lịch khám bệnh vào ngày 27/03/2023 vào khung giờ 10:30 - 11:30. Vui lòng để ý điện thoại để xác nhận từ phòng khám.','a','c3d02876-bf4e-44b5-b81d-b6703399105a',1,'2023-04-25 23:55:05','2023-04-25 23:55:05','6eaad734-884e-437b-84ee-0f74e01719bd');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
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
