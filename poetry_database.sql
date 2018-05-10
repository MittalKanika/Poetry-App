CREATE DATABASE  IF NOT EXISTS `poetry_database` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `poetry_database`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: poetry_database
-- ------------------------------------------------------
-- Server version	5.6.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(9) NOT NULL,
  PRIMARY KEY (`Admin_ID`),
  UNIQUE KEY `Admin_ID_UNIQUE` (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Category_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category_Type` varchar(10) NOT NULL,
  `Cat_Name` varchar(10) NOT NULL,
  `PoemID` int(11) NOT NULL,
  `PoetName` varchar(20) NOT NULL,
  PRIMARY KEY (`Category_ID`),
  UNIQUE KEY `Category_ID_UNIQUE` (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_poetry`
--

DROP TABLE IF EXISTS `category_poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_poetry` (
  `Category_Category_ID` int(11) NOT NULL,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Category_Category_ID`,`Poetry_Poem ID`),
  KEY `fk_Category_has_Poetry_Poetry1_idx` (`Poetry_Poem ID`),
  KEY `fk_Category_has_Poetry_Category_idx` (`Category_Category_ID`),
  CONSTRAINT `fk_Category_has_Poetry_Category` FOREIGN KEY (`Category_Category_ID`) REFERENCES `category` (`Category_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Category_has_Poetry_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_poetry`
--

LOCK TABLES `category_poetry` WRITE;
/*!40000 ALTER TABLE `category_poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `Favorite_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PoemID` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Posting_Date` date NOT NULL,
  PRIMARY KEY (`Favorite_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites_poetry`
--

DROP TABLE IF EXISTS `favorites_poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites_poetry` (
  `Favorites_Favorite_ID` int(11) NOT NULL,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Favorites_Favorite_ID`,`Poetry_Poem ID`),
  KEY `fk_Favorites_has_Poetry_Poetry1_idx` (`Poetry_Poem ID`),
  KEY `fk_Favorites_has_Poetry_Favorites1_idx` (`Favorites_Favorite_ID`),
  CONSTRAINT `fk_Favorites_has_Poetry_Favorites1` FOREIGN KEY (`Favorites_Favorite_ID`) REFERENCES `favorites` (`Favorite_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Favorites_has_Poetry_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites_poetry`
--

LOCK TABLES `favorites_poetry` WRITE;
/*!40000 ALTER TABLE `favorites_poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites_poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funfacts`
--

DROP TABLE IF EXISTS `funfacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funfacts` (
  `Funfact_ID` int(11) NOT NULL,
  `Funfact_Type` varchar(15) NOT NULL,
  `Funfact_Category` varchar(20) NOT NULL,
  `Text` text,
  PRIMARY KEY (`Funfact_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funfacts`
--

LOCK TABLES `funfacts` WRITE;
/*!40000 ALTER TABLE `funfacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `funfacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funfacts_poetry`
--

DROP TABLE IF EXISTS `funfacts_poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funfacts_poetry` (
  `Funfacts_Funfact_ID` int(11) NOT NULL,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Funfacts_Funfact_ID`,`Poetry_Poem ID`),
  KEY `fk_Funfacts_has_Poetry_Poetry1_idx` (`Poetry_Poem ID`),
  KEY `fk_Funfacts_has_Poetry_Funfacts1_idx` (`Funfacts_Funfact_ID`),
  CONSTRAINT `fk_Funfacts_has_Poetry_Funfacts1` FOREIGN KEY (`Funfacts_Funfact_ID`) REFERENCES `funfacts` (`Funfact_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funfacts_has_Poetry_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funfacts_poetry`
--

LOCK TABLES `funfacts_poetry` WRITE;
/*!40000 ALTER TABLE `funfacts_poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `funfacts_poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `Genres_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Genres_Name` varchar(25) NOT NULL,
  PRIMARY KEY (`Genres_ID`),
  UNIQUE KEY `Genres_ID_UNIQUE` (`Genres_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `PoemID` int(11) NOT NULL,
  `Num_Likes` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Like_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Like_ID`),
  UNIQUE KEY `Like_ID_UNIQUE` (`Like_ID`),
  KEY `fk_Likes_Poetry1_idx` (`Poetry_Poem ID`),
  CONSTRAINT `fk_Likes_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poetry`
--

DROP TABLE IF EXISTS `poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poetry` (
  `Poem ID` int(11) NOT NULL AUTO_INCREMENT,
  `PoetName` varchar(20) NOT NULL,
  `PoemTitle` varchar(40) NOT NULL,
  `Posting_Date` date NOT NULL,
  `PoemType` varchar(40) NOT NULL,
  `Num_Likes` int(11) NOT NULL,
  `Num_Shares` int(11) NOT NULL,
  `Image_url` varchar(150) NOT NULL,
  `Description` tinytext,
  `Text` text,
  PRIMARY KEY (`Poem ID`),
  UNIQUE KEY `Poem ID_UNIQUE` (`Poem ID`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poetry`
--

LOCK TABLES `poetry` WRITE;
/*!40000 ALTER TABLE `poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poetry_admin`
--

DROP TABLE IF EXISTS `poetry_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poetry_admin` (
  `Poetry_Poem ID` int(11) NOT NULL,
  `Admin_Admin_ID` int(11) NOT NULL,
  PRIMARY KEY (`Poetry_Poem ID`,`Admin_Admin_ID`),
  KEY `fk_Poetry_has_Admin_Admin1_idx` (`Admin_Admin_ID`),
  KEY `fk_Poetry_has_Admin_Poetry1_idx` (`Poetry_Poem ID`),
  CONSTRAINT `fk_Poetry_has_Admin_Admin1` FOREIGN KEY (`Admin_Admin_ID`) REFERENCES `admin` (`Admin_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Poetry_has_Admin_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poetry_admin`
--

LOCK TABLES `poetry_admin` WRITE;
/*!40000 ALTER TABLE `poetry_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `poetry_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poetry_quotes`
--

DROP TABLE IF EXISTS `poetry_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poetry_quotes` (
  `Poetry_Poem ID` int(11) NOT NULL,
  `Quotes_Quote_ID` int(11) NOT NULL,
  PRIMARY KEY (`Poetry_Poem ID`,`Quotes_Quote_ID`),
  KEY `fk_Poetry_has_Quotes_Quotes1_idx` (`Quotes_Quote_ID`),
  KEY `fk_Poetry_has_Quotes_Poetry1_idx` (`Poetry_Poem ID`),
  CONSTRAINT `fk_Poetry_has_Quotes_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Poetry_has_Quotes_Quotes1` FOREIGN KEY (`Quotes_Quote_ID`) REFERENCES `quotes` (`Quote_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poetry_quotes`
--

LOCK TABLES `poetry_quotes` WRITE;
/*!40000 ALTER TABLE `poetry_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `poetry_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `Quote_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PoemID` int(11) NOT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Quote_ID`),
  UNIQUE KEY `Quote_ID_UNIQUE` (`Quote_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shares` (
  `PoemID` int(11) NOT NULL,
  `Num_Share` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Share_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Share_ID`),
  UNIQUE KEY `Share_ID_UNIQUE` (`Share_ID`),
  KEY `fk_Shares_Poetry1_idx` (`Poetry_Poem ID`),
  CONSTRAINT `fk_Shares_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(9) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` char(1) NOT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `User_ID_UNIQUE` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_poetry`
--

DROP TABLE IF EXISTS `users_poetry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_poetry` (
  `Users_User_ID` int(11) NOT NULL,
  `Poetry_Poem ID` int(11) NOT NULL,
  PRIMARY KEY (`Users_User_ID`,`Poetry_Poem ID`),
  KEY `fk_Users_has_Poetry_Poetry1_idx` (`Poetry_Poem ID`),
  KEY `fk_Users_has_Poetry_Users1_idx` (`Users_User_ID`),
  CONSTRAINT `fk_Users_has_Poetry_Poetry1` FOREIGN KEY (`Poetry_Poem ID`) REFERENCES `poetry` (`Poem ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Users_has_Poetry_Users1` FOREIGN KEY (`Users_User_ID`) REFERENCES `users` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_poetry`
--

LOCK TABLES `users_poetry` WRITE;
/*!40000 ALTER TABLE `users_poetry` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_poetry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_shares`
--

DROP TABLE IF EXISTS `users_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_shares` (
  `Users_User_ID` int(11) NOT NULL,
  `Shares_Share_ID` int(11) NOT NULL,
  PRIMARY KEY (`Users_User_ID`,`Shares_Share_ID`),
  KEY `fk_Users_has_Shares_Shares1_idx` (`Shares_Share_ID`),
  KEY `fk_Users_has_Shares_Users1_idx` (`Users_User_ID`),
  CONSTRAINT `fk_Users_has_Shares_Shares1` FOREIGN KEY (`Shares_Share_ID`) REFERENCES `shares` (`Share_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Users_has_Shares_Users1` FOREIGN KEY (`Users_User_ID`) REFERENCES `users` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_shares`
--

LOCK TABLES `users_shares` WRITE;
/*!40000 ALTER TABLE `users_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'poetry_database'
--

--
-- Dumping routines for database 'poetry_database'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-10 15:41:43
