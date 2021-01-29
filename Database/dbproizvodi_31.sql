CREATE DATABASE  IF NOT EXISTS `dbproizvodi_31` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbproizvodi_31`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbproizvodi_31
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `proizvodi`
--

DROP TABLE IF EXISTS `proizvodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proizvodi` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `unitPrice` decimal(10,0) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `unitsInStock` int NOT NULL,
  `condition` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `productImage` varchar(255) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proizvodi`
--

LOCK TABLES `proizvodi` WRITE;
/*!40000 ALTER TABLE `proizvodi` DISABLE KEYS */;
INSERT INTO `proizvodi` VALUES (11,'Galaxy S21',799,'Samsung','128GB',5,'Refurbished','Made for the epic in every day. The Samsung Galaxy S21 5G and its new stylish design was created to help you capture lifes ordinary moments and make them extraordinary. With the ability to record in 8K, your videos are cinema quality. Use the 64MP camera for still shots that come out clear whether its day or night. Single Take AI transcends the usual restrictions of photo and video editing to capture lifes greatest moments, wherever they happen, in one single take*. The beautiful 6.2 adaptive 120Hz display makes scrolling feel faster and silky smooth while also being easy on the eyes for ultimate viewing. Experience the incredibly advanced Galaxy on the 5G leader in coverage.','https://images.samsung.com/my/smartphones/galaxy-s21-ultra-5g/models/images/galaxy-s21-ultra-5g-share-image.jpg'),(12,'iPhone 12 Pro Max',1199,'Apple','128GB',2,'New','iPhone 12 Pro Max. 5G to download huge files on the go and stream HDR video. Larger 6.7-inch Super Retina XDR display. Ceramic Shield with 4x better drop performance. Incredible low-light photography with the best Pro camera system on an iPhone, and 5x optical zoom range. Cinema-grade Dolby Vision video recording, editing, and playback. Night mode portraits and next-level AR experiences with the LiDAR Scanner. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging. For infinitely spectacular possibilities','https://fdn.gsmarena.com/imgroot/news/20/10/iphone-12-pricing-roundup/-1200/gsmarena_002.jpg'),(13,'Pixel 4a (5G)',699,'Google','64GB',6,'Refurbished','Pixel 4a with 5G is the budget-friendly, super fast phone from Google. It has the helpful stuff you need in a phone, with an extra boost of 5G speed.1 So you can download a movie in seconds,2 enjoy smooth streaming, and play your favorite games. Pixel 4a with 5G also takes amazing ultrawide photos in any light, keeps your data safe, blocks robocalls,3 helps you tackle your to-do list, and has an all-day battery that can last up to 48 hours with Extreme Battery Saver.4 Its a lot of help from Google, for a lot less than youd expect.','https://i-cdn.phonearena.com/images/articles/363005-image/Google-Pixel-4a-5G-3.jpg'),(14,'Galaxy A51 5G',499,'Samsung','128GB',8,'Refurbished','The world of tomorrow is built for 5G; your phone should be too. The Samsung Galaxy A51 5G lets you experience 5G plus amazing device features all at an incredible price! Capture pro-grade pics and smooth, steady videos with its quad lens camera. Enjoy the cinematic quality of a 6.5\" edge-to-edge screen all powered by a long-lasting, fast charging battery, that keeps up with you. The A51 5G is even better with next-gen 5G connectivity on Americas largest 5G network.','https://s3.amazonaws.com/realtalktime.com/wp-content/uploads/2019/12/30004721/A51.jpg'),(15,'Nord N10 5G',299,'BBK Electronics','64GB',2,'Refurbished','Unleash the power of 5G with OnePlus Nord N10 5G, our most accessible 5G smartphone yet. A new disruptive force in the world of 5G, the OnePlus Nord N10 5G connects to the largest nationwide 5G network, enabling users to access blazing fast speeds. The 90Hz Full HD display refreshes 50% faster than standard displays every second, making every day uses on the smartphone feel smoother and more responsive. Warp Charge 30T takes charging speeds to flagship levels. A quick half an hour charge is all N10 needs to power through a whole day. With the added bonus of a feature-packed quad camera system, you can also capture detailed photos and videos. Simply put, the OnePlus Nord N10 5G packs a premium punch at an accessible price on the largest nationwide 5G network.','https://cdn57.androidauthority.net/wp-content/uploads/2020/10/OnePlus-Nord-N10-and-N100.jpg'),(16,'iPhone 12 mini',729,'Apple','256GB',1,'Refurbished','iPhone 12 mini packs big features in a 5.4-inch design. 5G to download movies on the fly and stream high-quality video. A beautifully bright and compact Super Retina XDR display. Ceramic Shield with 4x better drop performance. Incredible low-light photography with Night mode on all cameras. Cinema-grade Dolby Vision HDR video recording, editing, and playback. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging. Its big news for mini.','https://cdn.vox-cdn.com/thumbor/WYAvnhez7oEaHGRND7A3QncZYlk=/0x0:2050x1367/1200x0/filters:focal(0x0:2050x1367):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22023082/vpavic_4279_20201107_0180.0.jpg');
/*!40000 ALTER TABLE `proizvodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbproizvodi_31'
--

--
-- Dumping routines for database 'dbproizvodi_31'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-28 23:56:44
