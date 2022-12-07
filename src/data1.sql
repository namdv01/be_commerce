-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `itemId` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1840492 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1840491,6,4,1,'2022-12-07 04:42:07','2022-12-07 04:42:07');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
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
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentimages`
--

DROP TABLE IF EXISTS `commentimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentimages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commentId` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentimages`
--

LOCK TABLES `commentimages` WRITE;
/*!40000 ALTER TABLE `commentimages` DISABLE KEYS */;
INSERT INTO `commentimages` VALUES (3,16,'comment/844edf99-f6b1-4530-a829-5ed15e2763901669188799817.jpg','2022-11-23 07:33:19','2022-11-23 07:33:19'),(4,16,'comment/a9d32149-5b2d-4990-93ab-c55bb3757fd41669188799818.jpg','2022-11-23 07:33:19','2022-11-23 07:33:19');
/*!40000 ALTER TABLE `commentimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoriteshops`
--

DROP TABLE IF EXISTS `favoriteshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoriteshops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shopId` int NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoriteshops`
--

LOCK TABLES `favoriteshops` WRITE;
/*!40000 ALTER TABLE `favoriteshops` DISABLE KEYS */;
INSERT INTO `favoriteshops` VALUES (1,1,6,'2022-11-18 10:39:36','2022-11-18 10:39:36');
/*!40000 ALTER TABLE `favoriteshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemimages`
--

DROP TABLE IF EXISTS `itemimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemimages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemId` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemimages`
--

LOCK TABLES `itemimages` WRITE;
/*!40000 ALTER TABLE `itemimages` DISABLE KEYS */;
INSERT INTO `itemimages` VALUES (1,4,'item/iphone8-1.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(2,4,'item/iphone8-2.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(3,4,'item/iphone8-3.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(4,4,'item/iphone8-4.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32'),(5,4,'item/iphone8-5.jpg','2022-11-22 16:18:32','2022-11-22 16:18:32');
/*!40000 ALTER TABLE `itemimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
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
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'Mô tả sản phẩm',100000,1,20,'Iphone X','2022-11-21 02:11:07','2022-11-21 02:11:07'),(2,1,'Mô tả sản phẩm',16000000,1,20,'Oppo note 3','2022-11-21 02:12:45','2022-11-21 02:12:45'),(3,1,'Mô tả sản phẩm',8000000,1,10,'Vivo 5','2022-11-21 02:12:45','2022-11-21 02:12:45'),(4,1,'Mô tả sản phẩm',8000000,1,20,'Iphone 8plus','2022-11-22 15:46:04','2022-11-22 15:46:04'),(5,1,'Mô tả sản phẩm',10000000,1,10,'Samsung glaxy s20','2022-11-22 15:46:04','2022-11-22 15:46:04'),(6,2,'Mô tả sản phẩm',150000,2,40,'Áo khoác jeans','2022-11-22 15:46:04','2022-11-22 15:46:04'),(7,2,'Mô tả sản phẩm',120000,2,60,'Quần thể thao','2022-11-22 15:46:04','2022-11-22 15:46:04');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifies`
--

DROP TABLE IF EXISTS `notifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifies` (
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
-- Dumping data for table `notifies`
--

LOCK TABLES `notifies` WRITE;
/*!40000 ALTER TABLE `notifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `itemId` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,4,4,2,10000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(2,4,2,3,80000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(3,5,1,1,10000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(4,5,2,1,80000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(5,6,6,5,7000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(6,6,7,1,30000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,7,6,5,7000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,7,7,1,30000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(9,8,6,5,7000,'2022-11-23 04:30:40','2022-11-23 04:30:40'),(10,8,7,1,30000,'2022-11-23 04:30:40','2022-11-23 04:30:40'),(11,9,1,2,80000,'2022-11-28 09:51:08','2022-11-28 09:51:08');
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,6,1,'afterReveice','done','2022-11-23 03:53:10','Hải Phòng','099999988','2022-11-23 03:53:10','2022-11-23 03:53:10'),(5,6,0,'afterReveice','none','2022-11-23 04:03:54','Hải Phòng','099999988','2022-11-23 04:03:54','2022-11-23 04:03:54'),(6,6,0,'afterReveice','none','2022-11-23 04:11:56','Hải Phòng','099999988','2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,6,0,'afterReveice','none','2022-11-23 04:20:39','Hải Phòng','099999988','2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,6,0,'afterReveice','none','2022-11-23 04:30:40','Hải Phòng','099999988','2022-11-23 04:30:40','2022-11-23 04:30:40'),(9,6,1,'afterReveice','none','2022-11-28 09:51:08','123 Hồ Tùng Mậu','0339874563','2022-11-28 09:51:08','2022-11-28 09:51:08');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotionitems`
--

DROP TABLE IF EXISTS `promotionitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotionitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemId` int NOT NULL,
  `promotionId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotionitems`
--

LOCK TABLES `promotionitems` WRITE;
/*!40000 ALTER TABLE `promotionitems` DISABLE KEYS */;
INSERT INTO `promotionitems` VALUES (1,4,1,'2022-11-28 00:00:00','2022-11-28 00:00:00');
/*!40000 ALTER TABLE `promotionitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `reducePercent` int DEFAULT NULL,
  `text` text,
  `dayBegin` datetime DEFAULT NULL,
  `dayFinish` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,5,20,'Giảm giá ngày khai trương','2022-11-26 00:00:00','2022-12-26 00:00:00','2022-11-18 10:39:36','2022-11-18 10:39:36');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomments`
--

DROP TABLE IF EXISTS `recomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recomments` (
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
-- Dumping data for table `recomments`
--

LOCK TABLES `recomments` WRITE;
/*!40000 ALTER TABLE `recomments` DISABLE KEYS */;
INSERT INTO `recomments` VALUES (16,6,4,'Sản phẩm đúng như mô tả',4,'2022-11-23 07:33:19','2022-11-23 07:33:19');
/*!40000 ALTER TABLE `recomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('migration-cart.js'),('migration-chat.js'),('migration-commentImages.js'),('migration-favoriteShop.js'),('migration-itemImages.js'),('migration-items.js'),('migration-notifies.js'),('migration-orderItem.js'),('migration-orders.js'),('migration-promotionItems.js'),('migration-promotions.js'),('migration-recomments.js'),('migration-shops.js'),('migration-storeToken.js'),('migration-users.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
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
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,5,'','Mô tả gian hàng','Mạnh Nhân - Trung tâm thiết bị di động','098889988','open','2022-11-22 15:46:04','2022-11-22 15:46:04'),(2,5,'','Mô tả gian hàng','An Cường - Chuyên buôn bán quần áo','098889922','open','2022-11-22 15:46:04','2022-11-22 15:46:04');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storetokens`
--

DROP TABLE IF EXISTS `storetokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storetokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` enum('login','forget') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storetokens`
--

LOCK TABLES `storetokens` WRITE;
/*!40000 ALTER TABLE `storetokens` DISABLE KEYS */;
INSERT INTO `storetokens` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJwb3NpdGlvbiI6ImFkbWluIiwiaWF0IjoxNjcwMzg1MzA5fQ.jGxRTqB8Bv2Y9W3TsYvseyRtU5n8eHnmXtjcqmC8WXM','login','2022-11-21 02:47:28','2022-12-07 03:55:09'),(2,6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwicG9zaXRpb24iOiJidXllciIsImVtYWlsIjoia2hvbmdob2F0YXlAZ21haWwuY29tIiwiaWF0IjoxNjcwNDA3MDQ1fQ.hk6c3cGtLXSjkDOcjHRjHSMcFZim77fIPpme3Pfkr1I','login','2022-11-23 02:45:03','2022-12-07 09:57:25'),(3,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5hbTEyM0BnbWFpbC5jb20iLCJpZCI6MSwicG9zaXRpb24iOiJhZG1pbiIsImlhdCI6MTY2OTYzMDE0MX0.AYmFhZsju15-VQy3-GhcY72O7UuvHf-d50dYPOwRgxs','forget','2022-11-28 10:09:01','2022-11-28 10:09:01'),(5,5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwicG9zaXRpb24iOiJzZWxsZXIiLCJlbWFpbCI6InNob3AxQGdtYWlsLmNvbSIsImlhdCI6MTY3MDM4NTQ0N30.Zhw2aoxPAW-dY-XyfHTOeIonYqUKgsXmAJrV9WKfZqk','login','2022-11-28 10:35:22','2022-12-07 03:57:27');
/*!40000 ALTER TABLE `storetokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
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
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Đỗ Văn Nam','admin','0339501427','male','avatar/adminAvatar.jpg',0,'Hà Nội','active','2022-11-18 10:39:36','2022-11-18 10:39:36'),(5,'shop1@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Nguyễn Văn A','seller','0123456789','female','avatar/sellerAvatar.png',3,'Hòa Bình','active','2022-11-22 15:46:04','2022-11-22 15:46:04'),(6,'khonghoatay@gmail.com','$2a$10$w30MKapC7kGquc0QbKzvNeOp5hYAZt/XFoQ33uUdhURgde8DFo3CK','Nam','buyer','0987454541','male','avatar/sellerAvatar.png',0,'Kiến Thụy Hải Phòng','active','2022-11-22 15:46:04','2022-12-05 08:25:39');
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

-- Dump completed on 2022-12-07 17:35:16
