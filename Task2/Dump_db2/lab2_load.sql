CREATE DATABASE  IF NOT EXISTS `lab2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lab2`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lab2
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `load`
--

DROP TABLE IF EXISTS `load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `load` (
  `professor_id` int(11) NOT NULL COMMENT 'номер преподавателя',
  `subject_id` int(11) NOT NULL COMMENT 'номер предмета',
  `subject_type` varchar(45) NOT NULL COMMENT 'тип (лекция/практика)',
  `group_id` int(11) NOT NULL COMMENT 'номер группы',
  `Professors_professor_id` int(11) NOT NULL,
  `Subjects_subject_id` int(11) NOT NULL,
  `Subjects_subject_type` varchar(45) NOT NULL,
  PRIMARY KEY (`professor_id`,`subject_id`,`subject_type`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `load`
--

LOCK TABLES `load` WRITE;
/*!40000 ALTER TABLE `load` DISABLE KEYS */;
INSERT INTO `load` VALUES (1,1,'лекция',1,1,1,'лекция'),(1,1,'практика',1,1,1,'лекция'),(2,1,'практика',3,2,1,'практика'),(2,2,'практика',3,2,2,'практика');
/*!40000 ALTER TABLE `load` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-18 18:47:10
