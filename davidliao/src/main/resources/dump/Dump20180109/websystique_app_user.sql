-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: websystique
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sin` varchar(255) DEFAULT NULL,
  `phoneNumber` mediumtext,
  `salary` mediumtext,
  `hireDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sso_id` (`sso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (3,'david','$2a$10$VTA9gRDla72spkpf6ydbtuuxurRJXNAkVhNhWK9OhSzYfZoN49ZmS','David','Liao','a@b.c','0:0:0:0:0:0:0:1','math','a','1','1','1','2000-01-01'),(4,'george','$2a$10$1kNj1R22BR6I5xP6NQNiIObZjk/wzruPbOteQRrQ4GB2DyAxro64i','george','l','a@b.c','0:0:0:0:0:0:0:1','a','a','1','1','1','2000-01-01'),(6,'cindy','$2a$10$dZRsCyK1uwFRjib/ko7EUOBsGQmdPsADfESJTW6Iwz6AsmVhdgiVO','ahkg','b','a','0:0:0:0:0:0:0:1','a','a','1','1','5000','2000-01-01'),(8,'asdfg','$2a$10$/PI7hHs705d1j8Npljm6De92fFFpRghPQatJsmCIGGIETDfKXfLfG','A','b','a','N/A','d','f','1234','1324','1234','2015-11-15'),(9,'1234','$2a$10$8z9QvIJfo4kj5PPQc.7zqeR4xJXaXreJYu4NJhQdBSSUvQNjfrYn.','a','b','asd','N/A','asd','a','1','1','1','2011-11-11'),(10,'sam','$2a$10$byy2AJ8GxgsW8vLV.TQf6uve/GqnTglvo5YrV8gMxU7oJhvK30J3a','sam','a','a','0:0:0:0:0:0:0:1','f','w','61','5','1','2015-06-30');
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09 18:21:52
