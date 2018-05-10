-- MySQL dump 10.14  Distrib 5.5.56-MariaDB, for Linux (x86_64)
--
-- Host: rampup-bd.ckj6woduofyq.us-east-1.rds.amazonaws.com    Database: movie_db
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `title` varchar(250) NOT NULL DEFAULT '',
  `release` varchar(250) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `reviewer` varchar(250) DEFAULT NULL,
  `publication` varchar(250) DEFAULT NULL,
  KEY `reviewer` (`reviewer`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`reviewer`) REFERENCES `reviewers` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES ('IT','10/03/2017',4,'Robert Smith','The Daily Reviewer'),('Spiderman','10/01/2017',5,'Robert Smith','The Daily Reviewer'),('IT','10/03/2017',3,'Chris Harris','International Movie Critic'),('IT','10/03/2017',5,'Janet Garcia','The Daily Reviewer'),('Spiderman','10/01/2017',4,'Janet Garcia','MoviesNow'),('Transformers','11/03/2017',5,'Chris Harris','International Movie Critic'),('Transformers','11/03/2017',1,'Andrew West','MyNextReview');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `name` varchar(250) NOT NULL,
  `avatar` varchar(250) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES ('International Movie Critic','glyphicon-fire'),('Movies & Games','glyphicon-heart-empty'),('MoviesNow','glyphicon-time'),('MyNextReview','glyphicon-record'),('The Daily Reviewer','glyphicon-eye-open'),('TheOne','glyphicon-globe');
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewers`
--

DROP TABLE IF EXISTS `reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewers` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `publication` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `publication` (`publication`),
  CONSTRAINT `reviewers_ibfk_1` FOREIGN KEY (`publication`) REFERENCES `publications` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewers`
--

LOCK TABLES `reviewers` WRITE;
/*!40000 ALTER TABLE `reviewers` DISABLE KEYS */;
INSERT INTO `reviewers` VALUES ('Andrew West','MyNextReview','https://s3.amazonaws.com/uifaces/faces/twitter/d00maz/128.jpg'),('Chris Harris','International Movie Critic','https://s3.amazonaws.com/uifaces/faces/twitter/bungiwan/128.jpg'),('Janet Garcia','MoviesNow','https://s3.amazonaws.com/uifaces/faces/twitter/grrr_nl/128.jpg'),('Martin Thomas','TheOne','https://s3.amazonaws.com/uifaces/faces/twitter/karsh/128.jpg'),('Mindy Lee','Movies & Games','https://s3.amazonaws.com/uifaces/faces/twitter/laurengray/128.jpg'),('Robert Smith','The Daily Reviewer','https://s3.amazonaws.com/uifaces/faces/twitter/angelcolberg/128.jpg');
/*!40000 ALTER TABLE `reviewers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-18  8:42:36
