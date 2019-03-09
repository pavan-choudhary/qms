-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: qms
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `form_details`
--

DROP TABLE IF EXISTS `form_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `submit_date` datetime DEFAULT NULL,
  `verified_by` varchar(100) DEFAULT NULL,
  `verify_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_details`
--

LOCK TABLES `form_details` WRITE;
/*!40000 ALTER TABLE `form_details` DISABLE KEYS */;
INSERT INTO `form_details` VALUES (47,'pavan','2019-03-09 13:26:42',NULL,NULL),(48,'pavan','2019-03-09 13:33:58',NULL,NULL),(49,'pavan','2019-03-09 13:34:42',NULL,NULL),(50,'pavan','2019-03-09 13:35:48',NULL,NULL),(51,'pavan','2019-03-09 13:36:24',NULL,NULL);
/*!40000 ALTER TABLE `form_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `question` varchar(100) NOT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `formid` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES ('supplier','p',48,16),('source','p',48,17),('sample_location','p',48,18),('weight','p',48,19),('agg_type','',48,20),('weight_balance','pd',48,21),('weight_sample_testing','12',48,22),('weight_sample_sieving','3',48,23),('material_passing','',48,24),('pto_comment','no comnt',48,25),('total','75',48,26),('amount_status','1',48,27),('plant','p',48,28),('date','03/09/2019',48,29),('supplier','p',49,30),('source','p',49,31),('sample_location','p',49,32),('weight','p',49,33),('agg_type','',49,34),('weight_balance','pd',49,35),('weight_sample_testing','12',49,36),('weight_sample_sieving','3',49,37),('material_passing','',49,38),('pto_comment','no comnt',49,39),('total','75',49,40),('amount_status','1',49,41),('plant','p',49,42),('date','03/09/2019',49,43),('supplier','p',50,44),('source','p',50,45),('sample_location','p',50,46),('weight','p',50,47),('agg_type','',50,48),('weight_balance','pd',50,49),('weight_sample_testing','12',50,50),('weight_sample_sieving','3',50,51),('material_passing','',50,52),('pto_comment','no comnt',50,53),('total','75',50,54),('amount_status','1',50,55),('plant','p',50,56),('date','03/09/2019',50,57),('supplier','p',51,58),('source','p',51,59),('sample_location','p',51,60),('weight','p',51,61),('agg_type','',51,62),('weight_balance','pd',51,63),('weight_sample_testing','12',51,64),('weight_sample_sieving','3',51,65),('material_passing','',51,66),('pto_comment','no comnt',51,67),('total','75',51,68),('amount_status','1',51,69),('plant','p',51,70),('date','03/09/2019',51,71);
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-09 15:28:25
