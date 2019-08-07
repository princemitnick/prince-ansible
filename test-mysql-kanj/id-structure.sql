-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.1    Database: cerca
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact` bigint(20) NOT NULL,
  `folk` bigint(20) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `position` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_contact_fk` (`contact`),
  KEY `person_folk_fk` (`folk`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`contact`) REFERENCES `person` (`id`),
  CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`folk`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chw_no` bigint(20) DEFAULT NULL,
  `dossier_no` bigint(20) DEFAULT NULL,
  `hivemr` bigint(20) DEFAULT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `search` varchar(255) DEFAULT NULL,
  `site` varchar(255) NOT NULL,
  `nif` varchar(20) DEFAULT NULL,
  `cin` varchar(30) DEFAULT NULL,
  `marital_status` varchar(30) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `blood_type` varchar(3) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `education_level` varchar(30) DEFAULT NULL,
  `mother_firstname` varchar(255) DEFAULT NULL,
  `mother_occupation` varchar(255) DEFAULT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `policy_holder` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `insurer` varchar(255) DEFAULT NULL,
  `main_beneficiary` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `left_index` longtext,
  `left_index_quality` varchar(15) DEFAULT NULL,
  `right_index` longtext,
  `right_index_quality` varchar(15) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `transport_type` varchar(255) DEFAULT NULL,
  `type_of_employee` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `creator` varchar(255) NOT NULL,
  `edited` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emr_id_uq` (`hivemr`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-05 12:54:46
