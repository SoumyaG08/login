CREATE DATABASE  IF NOT EXISTS `emaildb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `emaildb`;
-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: emaildb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'angela.liftin@gmail.com','2016-06-14 10:46:33','2016-06-14 10:46:33'),(2,'casey.audelo@gmail.com','2016-06-14 10:47:39','2016-06-14 10:47:39'),(4,'sushrut.g@michigan.edu','2016-06-14 10:56:06','2016-06-14 10:56:06'),(5,'neha.m@yahoo.com','2016-06-14 10:56:34','2016-06-14 10:56:34'),(10,'ish.khan@google.com','2016-06-14 10:59:59','2016-06-14 10:59:59'),(11,'houyan.pan@hotmail.com','2016-06-14 11:01:55','2016-06-14 11:01:55'),(12,'nicole.zhou@gmail.com','2016-06-14 11:05:48','2016-06-14 11:05:48'),(15,'prafk@yahoo.com','2016-06-14 14:03:29','2016-06-14 14:03:29'),(18,'sandor@got.org','2016-06-14 14:05:21','2016-06-14 14:05:21');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pw_hash` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sam','Gatti','soumyanatural@gmail.com','$2b$12$hSjxn8ewjozv4ojcL8lxPu6R8/rHoIho3RBU.xx9gKXnki3oTUv9O','2016-06-14 22:39:19'),(2,'Praf','Kap','prafk@yahoo.com','$2b$12$XE/wlKThOZOIg2ylwR87vOhXlSu1g/p4S5eTVsKLuAD8yxxs7zVPm','2016-06-14 22:41:28'),(3,'Yona','Reggie','Yona.reg@gmail.com','$2b$12$QXmaPIcm.oBAVIdKvPxdxOUthol6PCxnpS/BPPolkng1saGZfZJ..','2016-06-14 22:47:09'),(4,'Pappu','Mastre','prafk@yahoo.com','$2b$12$MwAOTkJfiXU6AL2jwMBj7eODBIl0G9JEtgDUMB2ofIkfjQdMYuka6','2016-06-14 23:19:44'),(5,'Sammy','Gatti','saladi@fdbhealth.com','$2b$12$MOoGS93eabBEIQ4LiwlItu7LJLRntvfWmr7Q/HHt8ILZPfiRcXDgK','2016-06-14 23:22:31'),(6,'Anna','Propas','anna@codingdoo.com','$2b$12$0kkTkDXd.L2dWmy0KaJVWuJwVrRufQAOrydjwBOfEsElwPt65fnvq','2016-06-15 11:25:51'),(7,'Alex','Keyes','akeyes@gmail.com','$2b$12$R6Q9qe7GSzNBQVk/cuV/Muf5.AnFFzEGmfsqcy0jfUn.FyOfpuA3y','2016-06-21 17:25:20'),(8,'Sam','Domingo','sdomingo@gmail.com','$2b$12$ddsF9VozLHus5MDXSw8TT.fOSwkLD3ZeGMVAz7Wq9E2GuJrO4h422','2016-06-21 17:29:15');
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

-- Dump completed on 2016-06-23 19:26:44
