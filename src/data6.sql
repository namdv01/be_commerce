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
) ENGINE=InnoDB AUTO_INCREMENT=1841043 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1841041,6,4,7,'2022-12-16 06:10:30','2022-12-16 06:10:30'),(1841042,6,3,2,'2022-12-16 06:10:30','2022-12-16 06:10:30');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'Mô tả sản phẩm',100000,1,20,'Iphone X','2022-11-21 02:11:07','2022-11-21 02:11:07'),(2,1,'Mô tả sản phẩm',16000000,1,20,'Oppo note 3','2022-11-21 02:12:45','2022-11-21 02:12:45'),(3,1,'Mô tả sản phẩm',8000000,1,10,'Vivo 5','2022-11-21 02:12:45','2022-11-21 02:12:45'),(4,1,'Mô tả sản phẩm',8000000,1,20,'Iphone 8plus','2022-11-22 15:46:04','2022-11-22 15:46:04'),(5,1,'Mô tả sản phẩm',10000000,1,10,'Samsung glaxy s20','2022-11-22 15:46:04','2022-11-22 15:46:04'),(6,2,'Mô tả sản phẩm',150000,2,40,'Áo khoác jeans','2022-11-22 15:46:04','2022-11-22 15:46:04'),(7,2,'Mô tả sản phẩm',120000,2,60,'Quần thể thao','2022-11-22 15:46:04','2022-11-22 15:46:04'),(8,1,'Mô tả sản phẩm',133333,1,6,'Bánh mỳ','2022-11-22 15:46:04','2022-11-22 15:46:04'),(9,1,'Mô tả sản phẩm',987897,1,10,'Ốp điện thoại','2022-11-22 15:46:04','2022-11-22 15:46:04'),(10,1,'Mô tả sản phẩm',784551,1,11,'Màn hình máy tính','2022-11-22 15:46:04','2022-11-22 15:46:04'),(11,1,'Mô tả sản phẩm',49845,1,12,'Bình giữ nhiệt','2022-11-22 15:46:04','2022-11-22 15:46:04'),(12,1,'Mô tả sản phẩm',49874841,1,111,'Màn hình 64 inch','2022-11-22 15:46:04','2022-11-22 15:46:04'),(13,1,'Mô tả sản phẩm',555,1,22,'vở note','2022-11-22 15:46:04','2022-11-22 15:46:04'),(14,1,'Mô tả sản phẩm',2222,1,30,'Lót chuột','2022-11-22 15:46:04','2022-11-22 15:46:04'),(15,1,'Mô tả sản phẩm',564854,1,36,'bàn phím máy tính 97 ','2022-11-22 15:46:04','2022-11-22 15:46:04'),(16,1,'Mô tả sản phẩm',1200,1,99,'Hạt giống cây','2022-11-22 15:46:04','2022-11-22 15:46:04'),(17,1,'Mô tả sản phẩm',21452,1,100,'Thuốc bổ','2022-11-22 15:46:04','2022-11-22 15:46:04'),(18,1,'Mô tả sản phẩm',221523,1,50,'máy sấy tóc','2022-11-22 15:46:04','2022-11-22 15:46:04'),(19,1,'Mô tả sản phẩm',333652,1,22,'Tủ lạnh','2022-11-22 15:46:04','2022-11-22 15:46:04'),(20,1,'Mô tả sản phẩm',11145,1,20,'giày','2022-11-22 15:46:04','2022-11-22 15:46:04'),(21,1,'hoa hồng, hoa mai',10000,1,100,'hoa','2022-12-16 10:24:00','2022-12-16 10:24:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,4,4,2,10000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(2,4,2,3,80000,'2022-11-23 03:53:11','2022-11-23 03:53:11'),(3,5,1,1,10000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(4,5,2,1,80000,'2022-11-23 04:03:54','2022-11-23 04:03:54'),(5,6,6,5,7000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(6,6,7,1,30000,'2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,7,6,5,7000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,7,7,1,30000,'2022-11-23 04:20:39','2022-11-23 04:20:39'),(9,8,6,5,7000,'2022-11-23 04:30:40','2022-11-23 04:30:40'),(10,8,7,1,30000,'2022-11-23 04:30:40','2022-11-23 04:30:40'),(11,9,1,2,80000,'2022-11-28 09:51:08','2022-11-28 09:51:08'),(12,18,4,7,6400000,'2022-12-16 03:18:44','2022-12-16 03:18:44'),(13,19,4,7,6400000,'2022-12-16 03:20:40','2022-12-16 03:20:40'),(14,20,4,7,6400000,'2022-12-16 03:23:33','2022-12-16 03:23:33'),(15,20,3,2,8000000,'2022-12-16 03:23:33','2022-12-16 03:23:33'),(16,21,4,2,6400000,'2022-12-16 03:41:20','2022-12-16 03:41:20'),(17,22,4,2,6400000,'2022-12-16 03:41:34','2022-12-16 03:41:34'),(18,30,3,2,8000000,'2022-12-16 03:58:15','2022-12-16 03:58:15'),(19,31,9,2,987897,'2022-12-16 04:02:28','2022-12-16 04:02:28'),(20,32,9,2,987897,'2022-12-16 04:02:46','2022-12-16 04:02:46'),(21,33,9,2,987897,'2022-12-16 04:03:36','2022-12-16 04:03:36'),(22,34,9,2,987897,'2022-12-16 04:04:54','2022-12-16 04:04:54'),(23,35,1,1,100000,'2022-12-16 04:05:06','2022-12-16 04:05:06'),(24,36,1,3,100000,'2022-12-16 04:06:29','2022-12-16 04:06:29'),(25,37,1,4,100000,'2022-12-16 04:07:02','2022-12-16 04:07:02'),(26,38,1,4,100000,'2022-12-16 04:07:14','2022-12-16 04:07:14'),(27,39,8,3,133333,'2022-12-16 04:20:19','2022-12-16 04:20:19'),(28,40,8,2,133333,'2022-12-16 04:21:16','2022-12-16 04:21:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,6,0,'paypal','none','2022-11-23 03:53:10','Hải Phòng','099999988','2022-11-23 03:53:10','2022-11-23 03:53:10'),(5,6,0,'afterReveice','done','2022-11-23 04:03:54','Hải Phòng','099999988','2022-11-23 04:03:54','2022-11-23 04:03:54'),(6,6,0,'afterReveice','done','2022-11-23 04:11:56','Hải Phòng','099999988','2022-11-23 04:11:56','2022-11-23 04:11:56'),(7,6,0,'afterReveice','done','2022-11-23 04:20:39','Hải Phòng','099999988','2022-11-23 04:20:39','2022-11-23 04:20:39'),(8,6,0,'afterReveice','done','2022-11-23 04:30:40','Hải Phòng','099999988','2022-11-23 04:30:40','2022-11-23 04:30:40'),(9,6,1,'afterReveice','done','2022-11-28 09:51:08','123 Hồ Tùng Mậu','0339874563','2022-11-28 09:51:08','2022-11-28 09:51:08'),(10,6,0,'paypal','none','2022-12-16 03:06:07',NULL,NULL,'2022-12-16 03:06:07','2022-12-16 03:06:07'),(11,6,0,'paypal','none','2022-12-16 03:08:25','$phoneContact=0987454541',NULL,'2022-12-16 03:08:25','2022-12-16 03:08:25'),(12,6,0,'paypal','none','2022-12-16 03:11:01','$phoneContact=0987454541',NULL,'2022-12-16 03:11:01','2022-12-16 03:11:01'),(13,6,0,'paypal','none','2022-12-16 03:11:39','','0987454541','2022-12-16 03:11:39','2022-12-16 03:11:39'),(14,6,0,'paypal','none','2022-12-16 03:12:38','','0987454541','2022-12-16 03:12:38','2022-12-16 03:12:38'),(15,6,0,'paypal','none','2022-12-16 03:14:17','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:14:17','2022-12-16 03:14:17'),(16,6,0,'paypal','none','2022-12-16 03:14:53','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:14:53','2022-12-16 03:14:53'),(17,6,0,'paypal','none','2022-12-16 03:15:43','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:15:43','2022-12-16 03:15:43'),(18,6,0,'paypal','none','2022-12-16 03:18:44','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:18:44','2022-12-16 03:18:44'),(19,6,0,'paypal','none','2022-12-16 03:20:40',NULL,NULL,'2022-12-16 03:20:40','2022-12-16 03:20:40'),(20,6,0,'paypal','none','2022-12-16 03:23:33','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:23:33','2022-12-16 03:23:33'),(21,6,0,'paypal','none','2022-12-16 03:41:20','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:41:20','2022-12-16 03:41:20'),(22,6,0,'paypal','none','2022-12-16 03:41:34',NULL,NULL,'2022-12-16 03:41:34','2022-12-16 03:41:34'),(23,6,0,'paypal','none','2022-12-16 03:42:34','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:42:34','2022-12-16 03:42:34'),(24,6,0,'paypal','none','2022-12-16 03:46:28','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:46:28','2022-12-16 03:46:28'),(25,6,0,'paypal','none','2022-12-16 03:49:34','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:49:34','2022-12-16 03:49:34'),(26,6,0,'paypal','none','2022-12-16 03:50:08','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:50:08','2022-12-16 03:50:08'),(27,6,0,'paypal','none','2022-12-16 03:51:45','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:51:45','2022-12-16 03:51:45'),(28,6,0,'paypal','none','2022-12-16 03:52:00','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:52:00','2022-12-16 03:52:00'),(29,6,0,'paypal','none','2022-12-16 03:53:21','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:53:21','2022-12-16 03:53:21'),(30,6,0,'paypal','none','2022-12-16 03:58:15','Kiến Thụy Hải Phòng','0987454541','2022-12-16 03:58:15','2022-12-16 03:58:15'),(31,6,0,'paypal','none','2022-12-16 04:02:28','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:02:28','2022-12-16 04:02:28'),(32,6,0,'paypal','none','2022-12-16 04:02:46',NULL,NULL,'2022-12-16 04:02:46','2022-12-16 04:02:46'),(33,6,0,'paypal','none','2022-12-16 04:03:36',NULL,NULL,'2022-12-16 04:03:36','2022-12-16 04:03:36'),(34,6,0,'paypal','none','2022-12-16 04:04:54',NULL,NULL,'2022-12-16 04:04:54','2022-12-16 04:04:54'),(35,6,0,'paypal','none','2022-12-16 04:05:06','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:05:06','2022-12-16 04:05:06'),(36,6,0,'paypal','none','2022-12-16 04:06:29','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:06:29','2022-12-16 04:06:29'),(37,6,1,'paypal','none','2022-12-16 04:07:02','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:07:02','2022-12-16 04:15:37'),(38,6,0,'paypal','none','2022-12-16 04:07:14',NULL,NULL,'2022-12-16 04:07:14','2022-12-16 04:07:14'),(39,6,1,'paypal','none','2022-12-16 04:20:19','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:20:19','2022-12-16 04:20:45'),(40,6,1,'paypal','none','2022-12-16 04:21:16','Kiến Thụy Hải Phòng','0987454541','2022-12-16 04:21:16','2022-12-16 04:21:25');
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
INSERT INTO `sequelizemeta` VALUES ('migration-cart.js'),('migration-chat.js'),('migration-commentImages.js'),('migration-favoriteShop.js'),('migration-itemImages.js'),('migration-items.js'),('migration-notifies.js'),('migration-orderItem.js'),('migration-orders-update.js'),('migration-orders.js'),('migration-promotionItems.js'),('migration-promotions.js'),('migration-recomments.js'),('migration-shops.js'),('migration-storeToken.js'),('migration-users.js');
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
INSERT INTO `shops` VALUES (1,5,'','Mô tả gian hàng','Mạnh Nhân - Trung tâm thiết bị di động','098889988','open','2022-11-22 15:46:04','2022-11-22 15:46:04'),(2,5,'','Mô tả gian hàng','An Cường - Chuyên buôn bán quần áo','098889922','open','2022-11-22 19:46:04','2022-11-22 19:46:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storetokens`
--

LOCK TABLES `storetokens` WRITE;
/*!40000 ALTER TABLE `storetokens` DISABLE KEYS */;
INSERT INTO `storetokens` VALUES (1,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJhZG1pbkBnbWFpbC5jb20iLCJwb3NpdGlvbiI6ImFkbWluIiwiaWF0IjoxNjcxMTcyMjk2fQ.L2cDbwqACqtanCVzMz9zoF-pkh_hfxNbllCAL2Dfss8','login','2022-11-21 02:47:28','2022-12-16 06:31:36'),(2,6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZW1haWwiOiJraG9uZ2hvYXRheUBnbWFpbC5jb20iLCJwb3NpdGlvbiI6ImJ1eWVyIiwiaWF0IjoxNjcxMTgzNTQ4fQ.-QUOxHQiu-jsWz_uCm9mABIkpGy2doFzvhnbkhkG1KU','login','2022-11-23 02:45:03','2022-12-16 09:39:08'),(3,1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Im5hbTEyM0BnbWFpbC5jb20iLCJpZCI6MSwicG9zaXRpb24iOiJhZG1pbiIsImlhdCI6MTY2OTYzMDE0MX0.AYmFhZsju15-VQy3-GhcY72O7UuvHf-d50dYPOwRgxs','forget','2022-11-28 10:09:01','2022-11-28 10:09:01'),(5,5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZW1haWwiOiJzaG9wMUBnbWFpbC5jb20iLCJwb3NpdGlvbiI6InNlbGxlciIsImlhdCI6MTY3MTE4MzY4MX0.X31r0pNM2ccthOLPS8Hy_FU4aSvlG0AWG7dv5Mw8kT4','login','2022-11-28 10:35:22','2022-12-16 09:41:21');
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
INSERT INTO `users` VALUES (1,'admin@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','NamCGV','admin','0339501427','male','avatar/e2d4c75a-29ad-40f4-855d-0f92f269cd6f1670999389329.jpg',0,'Hà Nội','active','2022-11-18 10:39:36','2022-12-14 06:44:21'),(5,'shop1@gmail.com','$2a$10$7BQlgLJMa4mKyyB0AtUyVes5iBmOPLV5EZhLgG9FNgK8Stnj4CBei','Nguyễn Văn A','seller','0123456789','female','avatar/3cc200ea-d094-4da3-9fa3-27206b8e14611671172283898.jpg',3,'Hòa Bình','active','2022-11-22 15:46:04','2022-12-16 06:31:23'),(6,'khonghoatay@gmail.com','$2a$10$i4De/UVzhRqGx4RR7ElgjOde/r/s9iuMqSzh7Kh2VpyY.y.f5l4Pi','Nam DV 01','buyer','0987454541','male','avatar/43c7505d-e2db-4dcb-a45d-ffff8660090a1670999331426.jpg',0,'Kiến Thụy Hải Phòng','active','2022-11-22 15:46:04','2022-12-16 09:28:10');
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

-- Dump completed on 2022-12-16 17:35:08
