-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinemovie
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','password');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3d704slv66tw6x5hmbm6p2x3u` (`product_id`),
  CONSTRAINT `FK3d704slv66tw6x5hmbm6p2x3u` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (464,310,1,18731);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('arul@gmail.com','Chennai','9876543215','arul','arul'),('user@gmail.com','Chennai','9999999999','user','user'),('user1@gmail.com','chennai','8888888888','user1','123');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL,
  `actual_price` float NOT NULL,
  `avail` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `discount` float NOT NULL,
  `durations` varchar(255) DEFAULT NULL,
  `imagepath` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (13452,290,'yes','Historical','Vikram, karthi, Jayam Ravi',0,'3hr:00min','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjm1cCoyIUH9h4_LDDMTbnIKLaOYK8zRWgJraKXN5A9Bxguipw','Ponniyin Selvan: I',290,'02:00 PM'),(18731,310,'yes','Comedy','Vijay, Vijay Sethupathi',0,'2hr:50min','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRfPemKBxZs8dFE4Z0Yib0i9fEiUVriLxqHj0JHsD6ICvSwLgEV','Master',310,'10:00 PM'),(78815,350,'yes','Thriller','kamal vijay sethupathi',0,'2hr:30min','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRcywLT8os8ZXJb7n3hmSzrSzpnLIDNgHeIufdEvCprHyuxThul','vikram',350,'11:00 AM'),(89737,240,'yes','Drama','Siva Karthikeyan, Priyanka Mohan',0,'3hr:00min','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSMJC3ZMxSuQDBkAsSDvrLo3ChSAWjDS4tQf9Sywnu79jikqOO','Don',240,'06:00 PM');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` bigint NOT NULL,
  `dop` date DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `totalcost` float NOT NULL,
  `transactionid` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo7gdhk6inpwo1ktafs0q3wy2a` (`customer_email`),
  CONSTRAINT `FKo7gdhk6inpwo1ktafs0q3wy2a` FOREIGN KEY (`customer_email`) REFERENCES `customer` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (325262,'2022-10-23','MARAKKAR',3,1050,'TFIB622177958981','user1@gmail.com'),(569715,'2022-10-25','Doctor',2,500,'TFIB551808157695','user@gmail.com'),(577298,'2022-10-27','Ponniyin Selvan: I',1,290,'TFIB353790882457','user@gmail.com'),(813354,'2022-10-22','MARAKKAR',3,1050,'TFIB413735942621','user@gmail.com'),(856318,'2022-10-28','Ponniyin Selvan: I',3,870,'TFIB940633929867','user@gmail.com'),(992062,'2022-10-28','Master',2,620,'TFIB978493503606','user@gmail.com');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-28 12:58:12
