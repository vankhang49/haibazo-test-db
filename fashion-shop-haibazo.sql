-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: fashion-shop-haibazo
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Home & Decor'),(2,'Clothing'),(3,'Accessories'),(4,'Outdoor');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'Red'),(2,'Yellow'),(3,'Orange'),(4,'Green'),(5,'Blue'),(6,'Indigo'),(7,'Purple'),(8,'White'),(9,'Black'),(10,'Pink'),(12,'Dark Red'),(13,'Dark Blue'),(14,'Gray'),(15,'Other');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricings`
--

DROP TABLE IF EXISTS `pricings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricings` (
  `pricing_id` bigint NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) NOT NULL,
  `price` double NOT NULL,
  `pricing_code` varchar(255) NOT NULL,
  `pricing_image` varchar(255) NOT NULL,
  `pricing_name` varchar(50) NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `color_id` int NOT NULL,
  `product_id` bigint NOT NULL,
  `promotion_id` bigint DEFAULT NULL,
  `size_id` bigint NOT NULL,
  PRIMARY KEY (`pricing_id`),
  UNIQUE KEY `UKb3s1lfxqf54yjs8xmoaaailj3` (`pricing_code`),
  KEY `FKs1jffvis2v4yaxkbjt31wlb5m` (`color_id`),
  KEY `FKdigni9pij9tjxgdkj3tbv1mgp` (`product_id`),
  KEY `FK87cn8jrp2kxljsuapcx1xwnwp` (`promotion_id`),
  KEY `FKsekiutqjqafn14kqngsmdgbom` (`size_id`),
  CONSTRAINT `FK87cn8jrp2kxljsuapcx1xwnwp` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`),
  CONSTRAINT `FKdigni9pij9tjxgdkj3tbv1mgp` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKs1jffvis2v4yaxkbjt31wlb5m` FOREIGN KEY (`color_id`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `FKsekiutqjqafn14kqngsmdgbom` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`),
  CONSTRAINT `pricings_chk_1` CHECK ((`price` >= 0)),
  CONSTRAINT `pricings_chk_2` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricings`
--

LOCK TABLES `pricings` WRITE;
/*!40000 ALTER TABLE `pricings` DISABLE KEYS */;
INSERT INTO `pricings` VALUES (1,_binary '',100,'PC-00001','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Huishõ Pijama',100,10,1,1,2),(2,_binary '',100,'PC-00002','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Huishõ Pijama',100,8,1,1,2),(3,_binary '',100,'PC-00003','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Huishõ Pijama',100,9,1,1,2),(4,_binary '',100,'PC-00004','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Huishõ Pijama',100,9,1,1,3),(5,_binary '',100,'PC-00005','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Unalanced Knit Sweater',100,9,2,2,3),(6,_binary '',100,'PC-00006','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Unalanced Knit Sweater',100,8,2,2,3),(7,_binary '',100,'PC-00007','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Unalanced Knit Sweater',100,14,2,2,3),(8,_binary '',150,'PC-00008','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','California Wave Wash Sweatpants',100,14,3,2,4),(9,_binary '',150,'PC-00009','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','California Wave Wash Sweatpants',100,13,3,2,4),(10,_binary '',100,'PC-00010','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Haley Flannel Pants',100,9,4,1,3),(11,_binary '',100,'PC-00011','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Haley Flannel Pants',100,8,4,1,3),(12,_binary '',30,'PC-00012','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Heavy lend™ Hooded Sweatshirt',100,8,5,3,1),(13,_binary '',25,'PC-00013','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Heavy lend™ Hooded Sweatshirt',100,9,5,2,2),(14,_binary '',50,'PC-00014','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Way Stretch Pants',100,8,7,2,3),(15,_binary '',50,'PC-00015','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Way Stretch Pants',100,9,7,2,3),(18,_binary '',20,'PC-00016','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Golf Shorts',100,8,10,1,3),(19,_binary '',25,'PC-00017','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Golf Shortss',100,9,10,1,3),(20,_binary '',80,'PC-00018','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Uniqlo Pocketable UV Protection Parka',100,8,11,1,3),(21,_binary '',80,'PC-00019','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Uniqlo Pocketable UV Protection Parka',100,9,11,1,4),(22,_binary '',200,'PC-00020','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Red Bull Racing MCS EcoLite Down Jacket',100,8,12,1,3),(23,_binary '',200,'PC-00021','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Red Bull Racing MCS EcoLite Down Jacket',100,9,12,1,4),(24,_binary '',120,'PC-00024','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',100,1,13,1,3),(25,_binary '',120,'PC-00025','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',100,9,13,1,4),(29,_binary '',120,'PC-00026','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',100,8,13,1,4),(30,_binary '',120,'PC-00027','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',100,1,15,1,3),(31,_binary '',120,'PC-00028','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',100,9,15,1,4),(32,_binary '',170,'PC-00029','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Women\'Soft Cotton Petit Piqué Polo Shirt',100,1,17,1,2),(33,_binary '',170,'PC-00030','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Lacoste Women\'Soft Cotton Petit Piqué Polo Shirt',100,9,17,1,1),(34,_binary '',50,'PC-00031','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','FIT Hype Performance Shorts',100,1,18,1,3),(35,_binary '',60,'PC-00032','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','FIT Hype Performance Shorts',100,9,18,1,3),(37,_binary '',50,'PC-00033','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Ornate Framed Roses Canvas',100,8,20,1,5),(38,_binary '',50,'PC-00034','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Big Daddy\'s Garage LED',100,9,21,1,5),(39,_binary '',40,'PC-00035','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','BRA OVAL DROP GEM AND POLE',100,9,22,1,5),(40,_binary '',100,'PC-00036','https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518','Kids’ Explorer Mid Waterproof Hiking Boot',100,9,23,1,4);
/*!40000 ALTER TABLE `pricings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `image_id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',1),(2,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',2),(3,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',3),(4,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',4),(5,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',5),(6,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',7),(7,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',10),(8,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',11),(9,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',12),(10,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',13),(12,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',15),(13,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',17),(14,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',18),(15,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',20),(16,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',21),(17,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',22),(18,'https://fireasestorage.googleapis.com/v0//imageuploadd-4f4f5.appspot.com/o/multipleImages%2Flazer4.jfif?alt=media&token=36c42290-9556-4999-7d3-0e4449296518',23);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `date_create` date DEFAULT NULL,
  `product_desc` text NOT NULL,
  `enabled` bit(1) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `UK922x4t23nx64422orei4meb2y` (`product_code`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FK3bdhf42l8os4j6p1jid39fvk9` (`style_id`),
  CONSTRAINT `FK3bdhf42l8os4j6p1jid39fvk9` FOREIGN KEY (`style_id`) REFERENCES `styles` (`style_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2024-09-10','Made in Japan',_binary '','P-00001','Huishõ Pijama',2,1),(2,'2024-09-11','Made in France',_binary '','P-00002','Unbalanced Knit Sweater',2,2),(3,'2024-09-12','Made in France',_binary '','P-00003','California Wave Wash Sweatpants',2,2),(4,'2024-09-13','Made in France',_binary '','P-00004','Haley Flannel Pants',2,2),(5,'2024-09-14','Made in France',_binary '','P-00005','Heavy Blend™ Hooded Sweatshirt',2,2),(7,'2024-09-15','Made in France',_binary '','P-00006','Way Stretch Pants',2,2),(10,'2024-09-16','Made in France',_binary '','P-00007','Golf Shorts',2,2),(11,'2024-09-17','Made in France',_binary '','P-00008','Uniqlo Pocketable UV Protection Parka',2,2),(12,'2024-09-18','Made in America',_binary '','P-00009','Red Bull Racing MCS EcoLite Down Jacket',2,4),(13,'2024-09-19','Made in America',_binary '','P-00010','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',2,5),(15,'2024-09-20','Made in America',_binary '','P-00011','Lacoste Long Sleeved Slim Fit Stretch Polo Shirt',2,6),(17,'2024-09-21','Made in America',_binary '','P-00012','Lacoste Women\'Soft Cotton Petit Piqué Polo Shirt',2,6),(18,'2024-09-22','Made in America',_binary '','P-00013','FIT Hype Performance Shorts',2,6),(20,'2024-09-27','Made in America',_binary '','P-00014','Ornate Framed Roses Canvas',1,6),(21,'2024-09-27','Made in America',_binary '','P-00015','Big Daddy\'s Garage LED',1,1),(22,'2024-09-27','Made in America',_binary '','P-00016','BRA OVAL DROP GEM AND POLE',3,1),(23,'2024-09-27','Made in America',_binary '','P-00017','Kids’ Explorer Mid Waterproof Hiking Boot',4,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `promotion_id` bigint NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `promotion_name` varchar(255) NOT NULL,
  PRIMARY KEY (`promotion_id`),
  CONSTRAINT `promotions_chk_1` CHECK (((`discount` <= 1) and (`discount` >= 0)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,0,'No discount'),(2,0.05,'5% off'),(3,0.1,'10% off'),(4,0.15,'15% off '),(5,0.2,'20% off');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `size_id` bigint NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'S'),(2,'M'),(3,'L'),(4,'XL'),(5,'One size'),(6,'Custom');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `styles`
--

DROP TABLE IF EXISTS `styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `styles` (
  `style_id` bigint NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `styles`
--

LOCK TABLES `styles` WRITE;
/*!40000 ALTER TABLE `styles` DISABLE KEYS */;
INSERT INTO `styles` VALUES (1,'Modern'),(2,'Streetwear'),(3,'Colorfull'),(4,'Patchwork'),(5,'Bohemian'),(6,'Vintage');
/*!40000 ALTER TABLE `styles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 15:52:20


-- Trigger use delete pricings, product_images when delete product 
DELIMITER //
CREATE TRIGGER delete_relationship_before_delete_product
BEFORE delete on products
FOR EACH ROW
BEGIN
    delete from pricings pr where pr.product_id = old.product_id;
	delete from product_images pi where pi.product_id = old.product_id;
END//
DELIMITER ;