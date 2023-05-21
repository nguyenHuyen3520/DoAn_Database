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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'https://img.freepik.com/free-icon/user_318-159711.jpg',
  `phone` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1adc4ab1-e4ca-4178-973b-5e172a68ec81','Đoàn','Thị Lam','Ths.Bs ','doanthilam@gmail.com','$2a$12$HTwmj0oZd5kcwEdVheHMQ.uw1dgj6euFu2EaBZUDw7ZTJgt8xL7ZW','ngõ 120 Kim Giang, Hoàng Mai, Hà Nội','https://firebasestorage.googleapis.com/v0/b/server-image-b9408.appspot.com/o/DoAn23%2F145448-bs-lan.jpg?alt=media&token=05ae3a88-58bf-42f3-890e-7349fbae50f0','123','Bác sĩ tư vấn dinh dưỡng cho phụ nữ mang thai và trẻ em\nNhiều năm kinh nghiệm trong lĩnh vực Tư vấn dinh dưỡng',1,'2023-04-24 10:54:41','2023-05-15 15:09:00',2),('3260b4eb-4a87-44b2-8112-c26c111413b0','Quản','Trị Viên','Admin','admin@gmail.com','$2a$12$xGnRmjeX8qyaw0xbCcrTaOnNfeEox2ABuDyACcpt1KRLNuHq1O1yG','ngõ 120 Kim Giang, Hoàng Mai, Hà Nội','https://img.freepik.com/free-icon/user_318-159711.jpg','112','a',1,'2023-04-25 16:00:18','2023-04-25 16:00:18',1),('42d86d95-ca4d-49db-a935-26062645d2b2','Nguyễn','Hưu Lĩnh','Ths.Bs ','nguyenhuulinh@gmail.com','$2a$12$s/6a4aQYKSo7II7tr8w5mufamK8UAbgarxkscdiYBNoGvh2aNeL96','ngõ 120 Kim Giang, Hoàng Mai, Hà Nội','https://firebasestorage.googleapis.com/v0/b/server-image-b9408.appspot.com/o/DoAn23%2F164715-linh.jpg?alt=media&token=63ae631d-c2c9-4969-aac4-fb32812bd212','1234','Hơn 30 năm kinh nghiệm lĩnh vực Nhi khoa\nHiện là Trưởng khoa Nhi kiêm phụ trách Đơn vị tiêm chủng - Phòng khám Bệnh viện Đại học Y Dược 1',1,'2023-04-24 10:48:22','2023-04-24 10:48:22',2),('6eaad734-884e-437b-84ee-0f74e01719bd','Nguyễn','Huyên',NULL,'nguyenhuyennd1211@gmail.com','$2a$12$ggNObkADvGQp89vhIvPeh..93b9v8/Tr/PaArwqvZ2zFhoNRVZc9C','ngõ 120 Kim Giang, Hoàng Mai, Hà Nội','https://img.freepik.com/free-icon/user_318-159711.jpg','0898731845','a',1,'2023-04-12 10:09:10','2023-04-12 10:09:10',3),('9ad7371e-0184-4705-9b6f-cec7856d4bd9','Phạm ','Thị Minh Hà','Ths.Bs ','phamthiminhha@gmail.com','$2a$12$lU9/w.To1UqUGZ.fkjvqhOUIHBL9uCbSRIQ3sfVmCkETDpnQFhpCG','ngõ 120 Kim Giang, Hoàng Mai, Hà Nội','https://cdn.bookingcare.vn/fr/w200/2022/12/14/135158-bs-pham-thi-minh-ha.jpg','12345','Nhiều năm thăm khám và điều trị các bệnh lý Nhi và Nhi sơ sinh.\nGiảng viên bộ môn Nhi tại Đại học kỹ thuật y tế Hải Dương, Đại học Y tế Công cộng',1,'2023-04-24 10:55:51','2023-04-24 10:55:51',2),('d9fcea80-20a3-49a9-b760-1dbdd8c27578','Vu','Duc Trung','','huyenv@bsscommerce.com','$2a$12$iyaJPhtG9ykPrtgY1cetFeVuiDIIXJShLwzbnHEwmR5VNsnDAzDhC','Giao Thanh, Giao Thuy, Nam Dinh','https://img.freepik.com/free-icon/user_318-159711.jpg','08987318452','a',1,'2023-05-20 09:42:59','2023-05-20 16:29:22',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
