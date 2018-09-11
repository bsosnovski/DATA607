CREATE DATABASE  IF NOT EXISTS `movie_ratings` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `movie_ratings`;
-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: movie_ratings
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `critics`
--

DROP TABLE IF EXISTS `critics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `critics` (
  `CriticID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) DEFAULT NULL,
  `Username` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CriticID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `critics`
--

LOCK TABLES `critics` WRITE;
/*!40000 ALTER TABLE `critics` DISABLE KEYS */;
INSERT INTO `critics` VALUES (1,'Joan','jp'),(2,'Valera','vk'),(3,'Nataliya','nk'),(4,'Bianca','bs'),(5,'Robert','rk'),(6,'Mila','mp'),(7,'Alexander','as'),(8,'Ewa','ed'),(9,'Nika','ns'),(10,'Sasha','sg'),(11,'Irina','ig');
/*!40000 ALTER TABLE `critics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies` (
  `MovieID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Three_Billboards_Outside_Ebbing_Missouri'),(2,'La_La_Land'),(3,'Lady_Bird'),(4,'Red_Sparrow'),(5,'Star_Wars_The_Last_Jedi'),(6,'Coco'),(7,'Wonder_Woman'),(8,'Black_Panther');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ratings` (
  `RatingID` int(11) NOT NULL AUTO_INCREMENT,
  `Rate` int(1) DEFAULT NULL,
  `CriticID` int(11) DEFAULT NULL,
  `MovieID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RatingID`),
  KEY `CriticID` (`CriticID`),
  KEY `MovieID` (`MovieID`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`CriticID`) REFERENCES `critics` (`criticid`) ON UPDATE CASCADE,
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`MovieID`) REFERENCES `movies` (`movieid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,5,1,1),(2,4,1,3),(3,5,2,1),(4,4,2,5),(5,4,2,6),(6,3,2,7),(7,2,2,8),(8,4,3,2),(9,5,3,5),(10,4,3,6),(11,5,3,7),(12,5,3,8),(13,5,4,1),(14,4,4,2),(15,5,4,3),(16,3,4,4),(17,5,4,5),(18,4,4,7),(19,4,4,8),(20,4,5,2),(21,5,5,5),(22,5,6,2),(23,5,6,6),(24,5,6,7),(25,3,7,2),(26,4,7,3),(27,2,7,4),(28,5,7,5),(29,5,7,7),(30,5,7,8),(31,2,8,3),(32,3,8,4),(33,4,8,7),(34,4,9,7),(35,4,10,7),(36,4,9,2);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-10 23:44:36
