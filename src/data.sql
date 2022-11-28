-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: containers-us-west-112.railway.app    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `Carts`
--

DROP TABLE IF EXISTS `Carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `itemId` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carts`
--

LOCK TABLES `Carts` WRITE;
/*!40000 ALTER TABLE `Carts` DISABLE KEYS */;
INSERT INTO `Carts` VALUES (7,6,2,5,'2022-11-23 08:44:36','2022-11-23 08:44:36');
/*!40000 ALTER TABLE `Carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Chats`
--

DROP TABLE IF EXISTS `Chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Chats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `readerId` int NOT NULL,
  `writerId` int NOT NULL,
  `text` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Chats`
--

LOCK TABLES `Chats` WRITE;
/*!40000 ALTER TABLE `Chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CommentImages`
--

DROP TABLE IF EXISTS `CommentImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CommentImages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commentId` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CommentImages`
--

LOCK TABLES `CommentImages` WRITE;
/*!40000 ALTER TABLE `CommentImages` DISABLE KEYS */;
INSERT INTO `CommentImages` VALUES (3,16,'comment/844edf99-f6b1-4530-a829-5ed15e2763901669188799817.jpg','2022-11-23 07:33:19','2022-11-23 07:33:19'),(4,16,'comment/a9d32149-5b2d-4990-93ab-c55bb3757fd41669188799818.jpg','2022-11-23 07:33:19','2022-11-23 07:33:19');
/*!40000 ALTER TABLE `CommentImages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FavoriteShops`
--

DROP TABLE IF EXISTS `FavoriteShops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FavoriteShops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shopId` int NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FavoriteShops`
--

LOCK TABLES `FavoriteShops` WRITE;
/*!40000 ALTER TABLE `FavoriteShops` DISABLE KEYS */;
/*!40000 ALTER TABLE `FavoriteShops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemImages`
--

DROP TABLE IF EXISTS `ItemImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ItemImages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemId` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemImages`
--

LOCK TABLES `ItemImages` WRITE;
/*!40000 ALTER TABLE `ItemImages` DISABLE KEYS */;
INSERT INTO `ItemImages` VALUES (1,4,'item/iphone8-1.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(2,4,'item/iphone8-2.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(3,4,'item/iphone8-3.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(4,4,'item/iphone8-4.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(5,4,'item/iphone8-5.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32');
/*!40000 ALTER TABLE `ItemImages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shopId` int NOT NULL,
  `description` text,
  `price` int NOT NULL,
  `itemTypeId` int NOT NULL,
  `quantity` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES (1,1,'Mô tả sản phẩm',9999999,1,20,'Iphone X','2022-11-21 02:11:07','2022-11-21 02:11:07'),(2,1,'Mô tả sản phẩm',16000000,1,20,'Oppo note 3','2022-11-21 02:12:45','2022-11-21 02:12:45'),(3,1,'Mô tả sản phẩm',8000000,1,10,'Vivo 5','2022-11-21 02:12:45','2022-11-21 02:12:45'),(4,1,'Mô tả sản phẩm',8000000,1,20,'Iphone 8plus','2022-11-22 15:46:04','2022-11-22 15:46:04'),(5,1,'Mô tả sản phẩm',10000000,1,10,'Samsung glaxy s20','2022-11-22 15:46:04','2022-11-22 15:46:04'),(6,2,'Mô tả sản phẩm',150000,2,40,'Áo khoác jeans','2022-11-22 15:46:04','2022-11-22 15:46:04'),(7,2,'Mô tả sản phẩm',120000,2,60,'Quần thể thao','2022-11-22 15:46:04','2022-11-22 15:46:04');
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notifies`
--

DROP TABLE IF EXISTS `Notifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Notifies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receiverId` int NOT NULL,
  `senderId` int NOT NULL,
  `text` text,
  `status` enum('read','unread') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notifies`
--

LOCK TABLES `Notifies` WRITE;
/*!40000 ALTER TABLE `Notifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Notifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItems`
--

DROP TABLE IF EXISTS `OrderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `itemId` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItems`
--

LOCK TABLES `OrderItems` WRITE;
/*!40000 ALTER TABLE `OrderItems` DISABLE KEYS */;
INSERT INTO `OrderItems` VALUES (1,4,4,2,10000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(2,4,2,3,80000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(3,5,1,1,10000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(4,5,2,1,80000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(5,6,6,5,7000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(6,6,7,1,30000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,7,6,5,7000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,7,7,1,30000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(9,8,6,5,7000,'2022-11-23 04:30:40','2022-11-23 04:30:40'),(10,8,7,1,30000,'2022-11-23 04:30:40','2022-11-23 04:30:40');
/*!40000 ALTER TABLE `OrderItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `isPayment` tinyint(1) NOT NULL,
  `methodPayment` enum('paypal','afterReveice') NOT NULL,
  `deliver` enum('none','delivering','done','cancel') DEFAULT NULL,
  `timeOrder` datetime DEFAULT NULL,
  `addressReceive` varchar(255) DEFAULT NULL,
  `phoneContact` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (4,6,1,'afterReveice','done','2022-11-23 03:53:10','Hải Phòng','099999988','2022-11-23 03:53:10','2022-11-23 03:53:10'),(5,6,0,'afterReveice','none','2022-11-23 04:03:54','Hải Phòng','099999988','2022-11-23 04:03:54','2022-11-23 04:03:54'),(6,6,0,'afterReveice','none','2022-11-23 04:11:56','Hải Phòng','099999988','2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,6,0,'afterReveice','none','2022-11-23 04:20:39','Hải Phòng','099999988','2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,6,0,'afterReveice','none','2022-11-23 04:30:40','Hải Phòng','099999988','2022-11-23 04:30:40','2022-11-23 04:30:40');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromotionItems`
--

DROP TABLE IF EXISTS `PromotionItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PromotionItems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemId` int NOT NULL,
  `promotionId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromotionItems`
--

LOCK TABLES `PromotionItems` WRITE;
/*!40000 ALTER TABLE `PromotionItems` DISABLE KEYS */;
/*!40000 ALTER TABLE `PromotionItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotions`
--

DROP TABLE IF EXISTS `Promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `reducePercent` int DEFAULT NULL,
  `text` text,
  `dayBegin` datetime DEFAULT NULL,
  `dayFinish` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotions`
--

LOCK TABLES `Promotions` WRITE;
/*!40000 ALTER TABLE `Promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Recomments`
--

DROP TABLE IF EXISTS `Recomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `itemId` int NOT NULL,
  `text` text,
  `star` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recomments`
--

LOCK TABLES `Recomments` WRITE;
/*!40000 ALTER TABLE `Recomments` DISABLE KEYS */;
INSERT INTO `Recomments` VALUES (16,6,4,'Sản phẩm đúng như mô tả',4,'2022-11-23 07:33:19','2022-11-23 07:33:19');
/*!40000 ALTER TABLE `Recomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('migration-cart.js'),('migration-chat.js'),('migration-commentImages.js'),('migration-favoriteShop.js'),('migration-itemImages.js'),('migration-items.js'),('migration-notifies.js'),('migration-orderItem.js'),('migration-orders.js'),('migration-promotionItems.js'),('migration-promotions.js'),('migration-recomments.js'),('migration-shops.js'),('migration-storeToken.js'),('migration-users.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shops`
--

DROP TABLE IF EXISTS `Shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ownerId` int NOT NULL,
  `logo` varchar(255) NOT NULL,
  `description` text,
  `shopName` varchar(255) DEFAULT NULL,
  `phoneContact` varchar(255) DEFAULT NULL,
  `status` enum('open','close') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shops`
--

LOCK TABLES `Shops` WRITE;
/*!40000 ALTER TABLE `Shops` DISABLE KEYS */;
INSERT INTO `Shops` VALUES (1,5,'','Mô tả gian hàng','Mạnh Nhân - Trung tâm thiết bị di động','098889988','open','2022-11-22 15:46:04','2022-11-22 15:46:04'),(2,5,'','Mô tả gian hàng','An Cường - Chuyên buôn bán quần áo','098889922','open','2022-11-22 15:46:04','2022-11-22 15:46:04');
/*!40000 ALTER TABLE `Shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreTokens`
--

DROP TABLE IF EXISTS `StoreTokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StoreTokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` enum('login','forget') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreTokens`
--

LOCK TABLES `StoreTokens` WRITE;
/*!40000 ALTER TABLE `StoreTokens` DISABLE KEYS */;
INSERT INTO `StoreTokens` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicG9zaXRpb24iOiJhZG1pbiIsImVtYWlsIjoiYWRtaW5AZ21haWwuY29tIiwiaWF0IjoxNjY5MDc2OTI2fQ.poL4PvvtdEiilUddOvv-p6cl2YdB7GGUia_u4vxHFqM','login','2022-11-21 02:47:28','2022-11-22 00:28:46'),(2,6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZW1haWwiOiJraG9uZ2hvYXRheUBnbWFpbC5jb20iLCJwb3NpdGlvbiI6ImJ1eWVyIiwiaWF0IjoxNjY5MjcyMzkzfQ.gruhDggGsxjxMRsYESjMW-3J-hEJt2o0Qn-JbvsFICY','login','2022-11-23 02:45:03','2022-11-24 06:46:33');
/*!40000 ALTER TABLE `StoreTokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `position` enum('admin','seller','buyer') DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `imageAvatar` varchar(255) DEFAULT NULL,
  `limitCreateShop` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` enum('active','non-active') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Đỗ Văn Nam','admin','0339501427','male','',0,'Hà Nội','active','2022-11-18 10:39:36','2022-11-18 10:39:36'),(5,'shop1@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Nguyễn Văn A','seller','0123456789','female','',3,'Hòa Bình','active','2022-11-22 15:46:04','2022-11-22 15:46:04'),(6,'khonghoatay@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Trần Văn B','buyer','099999988','female','',0,'Hải Phòng','active','2022-11-22 15:46:04','2022-11-22 15:46:04');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24 14:18:41
