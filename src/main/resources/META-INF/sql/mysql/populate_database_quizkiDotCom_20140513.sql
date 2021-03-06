-- Copyright 2013,2014 Johnathan E. James - haxwell.org - jj-ccs.com - quizki.com
--
-- This file is part of Quizki.
--
-- Quizki is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 2 of the License, or
-- (at your option) any later version.
--
-- Quizki is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Quizki. If not, see http://www.gnu.org/licenses.


-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 127.7.125.130    Database: quizki_db
-- ------------------------------------------------------
-- Server version	5.1.73

USE quizki_db;

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
-- Table structure for table `autocomplete_history`
--

DROP TABLE IF EXISTS `autocomplete_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autocomplete_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `environment_id` bigint(20) NOT NULL,
  `text` varchar(128) NOT NULL,
  PRIMARY KEY (`user_id`,`environment_id`,`text`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autocomplete_history`
--

LOCK TABLES `autocomplete_history` WRITE;
/*!40000 ALTER TABLE `autocomplete_history` DISABLE KEYS */;
INSERT INTO `autocomplete_history` VALUES (6,1,1,'\"openshift\"'),(2,1,2,'\"oceb fundamental book, chapter 2, p17\"'),(3,1,1,'\"oceb fundamental|chapter 2|business functions, markets, and strategies\"'),(4,1,2,'\"oceb fundamental book, chapter 2, p18\"'),(5,1,1,'\"step analysis\"');
/*!40000 ALTER TABLE `autocomplete_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choice`
--

DROP TABLE IF EXISTS `choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(1000) NOT NULL,
  `isCorrect` int(11) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choice`
--

LOCK TABLES `choice` WRITE;
/*!40000 ALTER TABLE `choice` DISABLE KEYS */;
INSERT INTO `choice` VALUES (1,'florida box turtle',1,0),(2,'turtle',1,0),(3,'otter',1,1),(4,'dog',0,0),(5,'giraffe',0,0),(6,'cat',0,0),(7,'They are 3 to 5 feet tall when standing on all fours.',1,0),(8,'They live 15-35 years in the wild.',1,1),(9,'They do not eat meat.',0,0),(10,'They live in arctic conditions.',0,0),(11,'Elephant',1,4),(12,'cow',1,2),(13,'goat',1,1),(14,'hippo',1,3),(15,'True',1,0),(16,'False',0,0),(17,'False',0,0),(18,'True',1,0),(19,'False',0,0),(20,'True',1,0),(21,'to make efficient the government procedures to the citizens',1,0),(22,'to connect people with government',0,0),(23,'to minimize corruption',0,0),(24,'a bid',1,0),(25,'bid',1,0),(26,'offer',1,0),(27,'False',0,0),(28,'True',1,0),(29,'True',1,0),(30,'False',0,0),(31,'short',0,0),(32,'long',0,0),(33,'put',1,1),(34,'call',0,0),(35,'False',1,0),(36,'True',0,0),(37,'False',0,0),(38,'True',1,0),(39,'in the money',1,0),(40,'False',0,0),(41,'True',1,0),(42,'True',1,0),(43,'False',0,0),(44,'at the money',1,1),(45,'out of the money',0,0),(46,'in the money',0,0),(47,'False',1,0),(48,'True',0,0),(49,'prices will fall',0,0),(50,'prices will rise',1,0),(51,'prices will remain the same',0,0),(52,'True',0,0),(53,'False',1,0),(54,'long',1,0),(55,'short',0,0),(56,'long',0,0),(57,'short',1,0),(58,'volatility',1,0),(59,'volatility',1,0),(60,'Chester A. Arthur',0,0),(61,'Benjamin Harrison',0,0),(62,'Grover Cleveland',1,0),(63,'Franklin D. Roosevelt',0,0),(64,'William Henry Harrison',0,0),(65,'James K. Polk',0,0),(66,'John Tyler',1,0),(67,'Martin Van Buren',0,0),(68,'Brothers',0,0),(69,'Uncle-nephew',0,0),(70,'Grandfather-grandson',1,0),(71,'Father-son',0,0),(72,'They aren\'t related',0,0),(73,'John Adams',0,0),(74,'Barack Obama',0,0),(75,'Herbert Hoover',0,0),(76,'James K. Polk',0,0),(77,'Harry S. Truman',1,0),(78,'George W. Bush',0,0),(79,'Woodrow Wilson',1,0),(80,'Franklin D. Roosevelt',0,0),(81,'Abraham Lincoln',0,0),(82,'Lyndon B. Johnson',0,0),(83,'Andrew Jackson',0,1),(84,'Richard M. Nixon',0,0),(85,'John Tyler',0,1),(86,'Andrew Johnson',1,0),(87,'William J. Clinton',1,0),(88,'George W. Bush',0,0),(89,'Jimmy Carter',0,0),(90,'James Monroe',0,0),(91,'William Howard Taft',1,0),(92,'Herbert Hoover',0,0),(93,'Andrew Johnson',0,0),(94,'Martin Van Buren',0,0),(95,'James Buchanan',0,0),(96,'James Madison',1,0),(97,'Zachary Taylor',0,0),(98,'Thomas Jefferson',0,0),(99,'George Washington',0,0),(100,'John F. Kennedy',0,0),(101,'Dwight D. Eisenhower',0,0),(102,'Ulysses S. Grant',1,0),(103,'William Henry Harrison',0,0),(104,'One',0,0),(105,'Three',0,0),(106,'Two',1,0),(107,'Four',0,0),(108,'27th Amendment',0,0),(109,'25th Amendment',1,0),(110,'20th Amendment',0,0),(111,'22nd Amendment',0,0),(112,'Franklin D. Roosevelt',0,0),(113,'Thomas Jefferson',0,0),(114,'John F. Kennedy',0,0),(115,'Abraham Lincoln',0,0),(116,'Woodrow Wilson',1,1),(117,'Ronald Reagan',0,0),(118,'Barack Obama',0,0),(119,'Richard M. Nixon',1,0),(120,'Dwight D. Eisenhower',0,0),(121,'George H.W. Bush',0,0),(122,'Warren G. Harding',0,0),(123,'Ronald Reagan',0,0),(124,'Richard M. Nixon',1,0),(125,'George Washington',0,0),(126,'Abraham Lincoln',0,0),(127,'Nancy Reagan',0,0),(128,'Eleanor Roosevelt',1,0),(129,'Hillary Rodham Clinton',0,0),(130,'Patricia Nixon',0,0),(131,'Jacqueline Kennedy',0,0),(132,'Calvin Coolidge',1,0),(133,'John F. Kennedy',0,0),(134,'William Howard Taft',0,0),(135,'George H.W. Bush',0,0),(136,'Ulysses S. Grant',0,0),(137,'Franklin D. Roosevelt',0,0),(138,'Grover Cleveland',1,0),(139,'James Garfield',0,0),(140,'George W. Bush',0,0),(141,'John F. Kennedy',0,0),(142,'Sam Nunn',0,0),(143,'Andrew Shepard',0,0),(144,'Dwayne Elizondo Mountain Dew Herbert Camacho',0,0),(145,'James Marshall',1,0),(146,'Josiah Bartlet',0,1),(147,'Lynda Bird Johnson',0,0),(148,'Malia Obama',0,0),(149,'Margaret Truman',1,0),(150,'Caroline Kennedy',0,0),(151,'Chelsea Clinton',0,0),(152,'Arkadelphia',0,0),(153,'Vanndale',0,0),(154,'Hope',1,0),(155,'Bentonville',0,0),(156,'Hot Springs',0,0),(157,'William McKinley',0,0),(158,'James Garfield',0,0),(159,'Andrew Johnson',0,0),(160,'Theodore Roosevelt',0,0),(161,'Rutherford B. Hayes',1,0),(162,'Millard Fillmore',1,0),(163,'James Monroe',0,0),(164,'John Quincy Adams',0,0),(165,'James Buchanan',0,0),(166,'Franklin Pierce',0,0),(167,'Dwight D. Eisenhower',1,0),(168,'Ronald Reagan',0,0),(169,'Harry S. Truman',0,0),(170,'Gerald Ford',0,0),(171,'Lyndon B. Johnson',0,0),(172,'George W. Bush',0,0),(173,'Gerald Ford',1,0),(174,'George Washington',0,0),(175,'Calvin Coolidge',0,0),(176,'Andrew Johnson',0,0),(177,'Thomas Jefferson',0,0),(178,'John Tyler',1,0),(179,'Abraham Lincoln',0,0),(180,'James Buchanan',0,0),(181,'James Madison',0,0),(182,'Thomas Jefferson',1,0),(183,'James Monroe',0,0),(184,'John Quincy Adams',1,0),(185,'George W. Bush',0,0),(186,'Rutherford B. Hayes',0,0),(187,'Harry S. Truman',0,0),(188,'Andrew Johnson',0,0),(189,'Theodore Roosevelt',0,0),(190,'Barack Obama',0,0),(191,'Lyndon B. Johnson',1,0),(192,'Inner Join',1,1),(193,'Right Join',0,0),(194,'Full Join',0,0),(195,'Left Join',0,0),(196,'Full Join',0,0),(197,'Inner Join',0,1),(198,'Left Join',1,1),(199,'Right Join',0,0),(200,'Left Join',0,0),(201,'Inner Join',0,1),(202,'Right Join',1,1),(203,'Full Join',0,0),(204,'Full Join',1,1),(205,'Right Join',0,0),(206,'Inner Join',0,1),(207,'Left Join',0,0),(208,'union',1,0),(209,'True',1,0),(210,'False',0,0),(211,'True',0,0),(212,'False',1,0),(213,'True',1,0),(214,'False',0,0),(215,'False',0,0),(216,'True',1,0),(217,'40',1,0),(218,'$40',1,0),(219,'$23.00',1,0),(220,'$23',1,0),(221,'23',1,0),(222,'23.00',1,0),(223,'No',1,0),(224,'Yes',0,0),(225,'True',0,0),(226,'False',1,0),(227,'gadsaf',1,0),(228,'gasdsdf',1,0),(229,'fads',1,0),(230,'adsf',1,0),(231,'[[strategic]] deliberations',1,0),(232,'careful [[analyses]] of the [[market environment]]',1,0),(233,'consideration of your company\'s [[strengths and weaknesses]]',1,0),(234,'true',1,0),(235,'false',0,0),(236,'support function',1,0),(237,'decision making',1,0),(238,'communication',1,0),(239,'support',1,0),(240,'goal setting',1,0),(241,'controlling',1,0),(242,'delegation',1,0),(243,'planning',1,0),(244,'business strategy',1,0),(245,'sets objectives and plans measures to be taken',1,4),(246,'divides the market into theoretical segments',1,2),(247,'analyzes the market environment',1,1),(248,'analyzes its strengths and weaknesses',1,3),(249,'[[bargaining power]] of [[suppliers]]',1,0),(250,'[[substitute]] products or services',1,0),(251,'[[potential competition]]: threats of [[new competitors]], and/or [[barriers to entry]]',1,0),(252,'[[rivalry]] among competitors',1,0),(253,'[[bargaining power]] of [[consumers]]/[[buyers]]',1,0),(254,'technological',1,0),(255,'economic',1,0),(256,'political',1,0),(257,'sociological',1,0),(258,'sociological',1,0),(259,'political',0,0),(260,'technological',0,0),(261,'economic',0,0),(262,'political',0,0),(263,'technological',0,0),(264,'sociological',0,0),(265,'economic',1,0),(266,'technological',1,0),(267,'technological factors',1,0),(268,'population growth',0,0),(269,'subsidies',1,0),(270,'taxation',0,0),(271,'legislation',1,0),(272,'no',0,0),(273,'yes',1,0);
/*!40000 ALTER TABLE `choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty`
--

DROP TABLE IF EXISTS `difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `difficulty` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty`
--

LOCK TABLES `difficulty` WRITE;
/*!40000 ALTER TABLE `difficulty` DISABLE KEYS */;
INSERT INTO `difficulty` VALUES (1,'Junior'),(2,'Intermediate'),(3,'Senior'),(4,'Guru');
/*!40000 ALTER TABLE `difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_status`
--

DROP TABLE IF EXISTS `entity_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_status` (
  `entity_id` bigint(20) NOT NULL DEFAULT '0',
  `entity_type_id` bigint(20) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`,`entity_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_status`
--

LOCK TABLES `entity_status` WRITE;
/*!40000 ALTER TABLE `entity_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_type`
--

DROP TABLE IF EXISTS `entity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_type`
--

LOCK TABLES `entity_type` WRITE;
/*!40000 ALTER TABLE `entity_type` DISABLE KEYS */;
INSERT INTO `entity_type` VALUES (1,0),(2,0);
/*!40000 ALTER TABLE `entity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `message` varchar(256) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `entity_status` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_feedback`
--

DROP TABLE IF EXISTS `exam_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `examId` bigint(20) NOT NULL,
  `commentingUserId` bigint(20) NOT NULL,
  `comment` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examId` (`examId`),
  KEY `commentingUserId` (`commentingUserId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_feedback`
--

LOCK TABLES `exam_feedback` WRITE;
/*!40000 ALTER TABLE `exam_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_question`
--

DROP TABLE IF EXISTS `exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_question` (
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  KEY `exam_id` (`exam_id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_question`
--

LOCK TABLES `exam_question` WRITE;
/*!40000 ALTER TABLE `exam_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_topic_cache`
--

DROP TABLE IF EXISTS `exam_topic_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_topic_cache` (
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `count` bigint(20) NOT NULL,
  KEY `exam_id` (`exam_id`),
  KEY `question_id` (`question_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_topic_cache`
--

LOCK TABLES `exam_topic_cache` WRITE;
/*!40000 ALTER TABLE `exam_topic_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_topic_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `time_stamp` datetime NOT NULL,
  `text` varchar(1000) NOT NULL,
  `entity_type_id` bigint(20) DEFAULT NULL,
  `entity_id` bigint(20) DEFAULT NULL,
  `numOfInstances` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `entity_type_id` (`entity_type_id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(10000) NOT NULL,
  `difficulty_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `entity_status` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `difficulty_id` (`difficulty_id`),
  KEY `type_id` (`type_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'<p><img src=\"http://upload.wikimedia.org/wikipedia/commons/f/f4/Florida_Box_Turtle_Digon3_re-edited.jpg\" alt=\"\" width=\"276\" height=\"221\" /></p>',1,3,1,'What animal is this?',0),(2,'<p><img src=\"http://onemoregeneration.org/wp-content/uploads/2011/11/OMG-Trivia-11-15-11.jpg\" alt=\"\" width=\"288\" height=\"216\" /></p>',1,1,1,'What animal is this?',0),(3,'<p><img src=\"http://bearsoftheworld.net/images/bears/brown_bear_ru.jpg\" alt=\"\" width=\"287\" height=\"215\" /></p>',1,2,1,'Which are characteristics of brown bears',0),(4,'<p><img src=\"http://2.bp.blogspot.com/-xpgIOttwTTg/TWRni-cC-tI/AAAAAAAAA-o/9GMqFyMnQCY/s1600/african-elephant2.jpg\" alt=\"\" width=\"268\" height=\"185\" />&nbsp;<img src=\"http://kassowal.com/wallpaper/Animal-wallpaper/Cow/2.jpg\" alt=\"\" width=\"239\" height=\"180\" />&nbsp;<img src=\"http://sites.psu.edu/reshmajblog/files/2012/11/Beautiful-animals-of-Kenya-Masai-Mara-National-Park-Hippopotamus-Adult-with-Baby-Masai-Mara-Kenya-Posters-beautiful-endangered-anmimals-of-kenya-hippopotamus-species-hippopotamus-dangerous-habitat-picture.jpg\" alt=\"\" width=\"237\" height=\"178\" />&nbsp;<img src=\"http://www.kayfabenews.com/wp-content/uploads/2013/01/goat.jpg\" alt=\"\" width=\"244\" height=\"183\" /></p>',2,4,1,'Put these animals in order by weight, ascending.',0),(5,'<p>A&nbsp;<span style=\"text-decoration: underline;\">heterotroph</span> is an organism that must ingest other organisms in order to grow.</p>',2,1,1,'',0),(6,'<p>A <span style=\"text-decoration: underline;\">photoautotroph</span> is an organism that can use energy from sunlight to grow.</p>',2,1,1,'',0),(7,'<p>Mammals are warm blooded.</p>',1,1,1,'',0),(8,'<p>What is the main objective of e-government?</p>',1,1,3,'',0),(9,'<p>The highest price a prospective buyer is willing to pay for a unit of a given security</p>',1,3,1,'',0),(10,'<p>The price at which someone who owns a security is willing to sell it...</p>',1,3,1,'',0),(11,'<p>A&nbsp;<strong>listed option</strong> is a put or call that an exchange has authorized for trading.</p>',1,1,1,'',0),(12,'<p>The&nbsp;<strong>strike price</strong> is the price that you, as the owner of the option, are entitled to buy or sell the underlying commodity.</p>',1,1,1,'',0),(13,'<p>An option to&nbsp;<strong>sell</strong> a security at a given price on or before a certain date.</p>',1,1,1,'',0),(14,'<p>If you are hoping the underlying instrument goes down in value, you should be using a&nbsp;<strong>call</strong> option.</p>',1,1,1,'',0),(15,'<p>If you are hoping the underlying instrument goes up in value, you should be using a&nbsp;<strong>call</strong>&nbsp;option.</p>',1,1,1,'',0),(16,'<p>If the <strong>strike price</strong> is less than the <strong>market price</strong> of the underlying security, a call option is said to be</p>',1,3,1,'',0),(17,'<p>A&nbsp;<strong>put option</strong> is \"in the money\" if the strike price is <em>above</em> the market price.</p>',1,1,1,'',0),(18,'<p>To be \"in the money\" means you can exercise your option at a profit, given the current market conditions.</p>',1,1,1,'',0),(19,'<p>When the&nbsp;<strong>strike price</strong>&nbsp;is equal to the market price, an option is said to be...</p>',1,1,1,'',0),(20,'<p>The&nbsp;<strong>market price</strong> is the price you are entitled to exercise your option at</p>',1,1,1,'',0),(21,'<p>To be&nbsp;<strong>bullish&nbsp;</strong>means you think</p>',1,1,1,'',0),(22,'<p>To be long is to have the <strong>right of assignment</strong>.</p>',1,1,1,'',0),(23,'<p>If you have&nbsp;the&nbsp;<strong>right of exercise</strong>, you are _______ a commodity.</p>',1,1,1,'',0),(24,'<p>If you have the&nbsp;<strong>obligation of assignment</strong>, you are _________ a commodity.</p>',1,1,1,'',0),(25,'<p>A measure of the fluctuation in the market price of the underlying security....</p>',1,3,1,'',0),(26,'<p>The annualized standard deviation of returns is defined as ....</p>',3,3,1,'',0),(27,'<p>Who is the only President to have served two non-consecutive terms in office?</p>',1,1,4,'',0),(28,'<p>Who was the first Vice-President to succeed to the Presidency upon the death of a President?</p>',1,1,4,'',0),(29,'<p>What is the relationship between Presidents William Henry Harrison and Benjamin Harrison?</p>',1,1,4,'',0),(30,'<p>Which President had a previous career as a haberdasher?</p>',2,1,4,'',0),(31,'<p>Which President kept a herd of sheep on the White House lawn to grow wool for the war effort?</p>',2,1,4,'',0),(32,'<p>Which of these Presidents have been impeached, as provided for under Article II, Section 4 of the U.S. Constitution?</p>',1,2,4,'',0),(33,'<p>Who was the only President to also serve as Chief Justice of the U.S. Supreme Court?</p>',2,1,4,'',0),(34,'<p>Who was the first President to take the Oath of Office while completely attired in garments made in the United States?</p>',3,1,4,'',0),(35,'<p>Which President once portrayed Desdemona in a military theatrical production of Shakespeare\'s <em>Othello</em>?</p>',3,1,4,'',0),(36,'<p>The maximum number of terms a President may serve was once only a customary limit, but was later enacted into law by the 22nd Amendment to the U.S. Constitution. How many terms is it?</p>',1,1,4,'',0),(37,'<p>The events surrounding the assassination of President John F. Kennedy inspired which Amendment to the U.S. Constitution?</p>',1,1,4,'',0),(38,'<p>Which President was the only one to have a Ph.D.?</p>',2,1,4,'',0),(39,'<p>Which President was fond of cottage cheese and ketchup?</p>',3,1,4,'',0),(40,'<p>Which President was the subject of \"an old Vulcan proverb,\" as quoted by Captain Spock in <em>Star Trek VI: The Undiscovered Country</em>?</p>',2,1,4,'',0),(41,'<p>Which First Lady had the Secret Service code name \"Rover\" due to her extensive travels?</p>',3,1,4,'',0),(42,'<p>It\'s well-known that three of the first five Presidents died on the Fourth of July (John Adams, Thomas Jefferson, James Monroe). &nbsp;Yet only one President was <em>born</em> on the Fourth of July. &nbsp;Which one?</p>',2,1,4,'',0),(43,'<p>Which President is the subject of this piece of political attack doggerel: <em>\"Ma, Ma, where\'s my Pa? Gone to the White House, ha ha ha!\"</em></p>',1,1,4,'',0),(44,'<p>Which fictional President had an \"escape capsule\" in the Presidential aircraft that the then-current President thought was a pretty good idea?</p>',1,1,4,'',0),(45,'<p>Which First Daughter was known to refer to the White House as \"The Great White Jail\"?</p>',3,1,4,'',0),(46,'<p>Which Arkansas town was President William J. Clinton born in?</p>',1,1,4,'',0),(47,'<p>Who was the first President to visit the West Coast of the United States (specifically, San Francisco)?</p>',2,1,4,'',0),(48,'<p>Which President not only purchased the first cast-iron stove for the White House, but personally instructed the cook in its use after examining a model of the stove at the U.S. Patent Office?</p>',3,1,4,'',0),(49,'<p>Which President was the first to use makeup for his television appearances?</p>',2,1,4,'',0),(50,'<p>Who is the only President to have attained office without being voted for in a single election?</p>',1,1,4,'',0),(51,'<p>The song \"Hail to the Chief\" is commonly played to honor the President. &nbsp;Which President was it first played for?</p>',2,1,4,'',0),(52,'<p>Which Presidents were elected via a vote in the House of Representatives, as provided for in Article II, Section 1 of the U.S. Constitution, after failing to obtain a majority vote in the Electoral College?</p>',2,2,4,'',0),(53,'<p>Which President was the only one to have the Oath of Office administered by a woman?</p>',3,1,4,'',0),(54,'<p>If a SQL join returns rows when there is at least one match in both tables, this is a....</p>',1,1,1,'',0),(55,'<p>If a SQL join returns all rows in the left table, even when there are no matches in the right table, this is a...</p>',1,1,1,'',0),(56,'<p>If a SQL join returns rows when there is a match in the right table, but no matches in the left table, this is a....</p>',1,1,1,'',0),(57,'<p>If a SQL join returns rows when there is one match in one of the tables, this is a....</p>',1,1,1,'',0),(58,'<p>This statement is used to combine the result set of two or more SELECT statements.</p>',1,3,1,'',0),(59,'<p>Technical analysis evalutes securities by analyzing the statistics generated by market activity, such as past prices and volume.</p>',1,1,1,'',0),(60,'<p>Fundamental analysis attempts to use charts and other tools which can suggest future activity.</p>',1,1,1,'',0),(61,'<p>Fundamental analysis attempts to measure a security\'s intrinsic value.</p>',1,1,1,'',0),(62,'<p>Technical analysts use historical price and volume data exclusively.</p>',1,1,1,'',0),(63,'<p>If the strike price of a call option is $30, and the intrinsic value of the option is $10, how much must the market price be?</p>',1,3,1,'',0),(64,'<p>If the market price of the underlying security of a call option is $75, and the strike price of the option is $52, what is the intrinsic value of the option?</p>',1,3,1,'',0),(65,'<p>If a put option has a strike price of $35, and the underlying security has a market price of $50, is the option \'in the money\'?</p>',1,1,1,'',0),(66,'<p>Technical analysts place great importance of the value of a security.</p>',1,1,1,'',0),(67,'<p>test question</p>',1,3,2,'',0),(68,'<p>Developing strategies in line with market requirements entails...</p>',1,5,1,'',0),(69,'<p>A&nbsp;<strong>core</strong> business function directly serves the objective of the business.</p>',1,1,1,'',0),(75,'<p>STEP analysis involves analyzing the following factors:</p>',1,5,1,'',0),(70,'<p>A business function which does not directly serve the objective of the enterprise is a...</p>',1,3,1,'',0),(71,'<p>A manager requires seven competencies.. they are:</p>',1,5,1,'',0),(72,'<p>The ___________ ____________ defines the direction that the organization grows in.</p>',1,3,1,'',0),(73,'<p>To determine its business strategy, an enterprise...</p>',1,4,1,'',0),(74,'<p>Porter\'s Five Forces....</p>',1,5,1,'',0),(76,'<p>Values, lifestyle and education would be examples of which kind of factors in STEP analysis?</p>',1,1,1,'',0),(77,'<p>Exchange rates, taxation, and business cycles would be examples of which kind of factors in STEP analysis?</p>',1,1,1,'',0),(78,'<p>Product lifecycles would be an example of which kind of factors in STEP analysis?</p>',1,3,1,'',0),(79,'<p>Which of the following are examples of Political factors in STEP analysis?</p>',1,2,1,'',0),(80,'<p>Does OpenShift logging support fucking suck?!</p>',1,1,1,'',0);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_choice`
--

DROP TABLE IF EXISTS `question_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_choice` (
  `question_id` bigint(20) NOT NULL,
  `choice_id` bigint(20) NOT NULL,
  KEY `question_id` (`question_id`),
  KEY `choice_id` (`choice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_choice`
--

LOCK TABLES `question_choice` WRITE;
/*!40000 ALTER TABLE `question_choice` DISABLE KEYS */;
INSERT INTO `question_choice` VALUES (1,1),(1,2),(2,3),(2,6),(2,5),(2,4),(3,9),(3,10),(3,8),(3,7),(4,11),(4,13),(4,14),(4,12),(5,15),(5,16),(6,18),(6,17),(7,20),(7,19),(8,23),(8,22),(8,21),(9,25),(9,24),(10,26),(11,28),(11,27),(12,30),(12,29),(13,33),(13,32),(13,31),(13,34),(14,35),(14,36),(15,37),(15,38),(16,39),(17,41),(17,40),(18,43),(18,42),(19,46),(19,44),(19,45),(20,48),(20,47),(21,51),(21,49),(21,50),(22,52),(22,53),(23,55),(23,54),(24,57),(24,56),(25,58),(26,59),(27,61),(27,63),(27,60),(27,62),(28,65),(28,66),(28,64),(28,67),(29,72),(29,71),(29,68),(29,70),(29,69),(30,76),(30,77),(30,74),(30,73),(30,75),(31,79),(31,78),(31,81),(31,82),(31,80),(32,88),(32,86),(32,84),(32,87),(32,85),(32,83),(33,90),(33,93),(33,89),(33,91),(33,92),(34,94),(34,97),(34,96),(34,98),(34,95),(35,102),(35,100),(35,103),(35,101),(35,99),(36,106),(36,105),(36,107),(36,104),(37,109),(37,111),(37,108),(37,110),(38,115),(38,116),(38,114),(38,113),(38,112),(39,120),(39,121),(39,118),(39,119),(39,117),(40,124),(40,123),(40,125),(40,122),(40,126),(41,127),(41,128),(41,131),(41,130),(41,129),(42,132),(42,136),(42,135),(42,134),(42,133),(43,141),(43,138),(43,137),(43,139),(43,140),(44,145),(44,146),(44,142),(44,143),(44,144),(45,151),(45,150),(45,148),(45,147),(45,149),(46,154),(46,153),(46,155),(46,156),(46,152),(47,160),(47,157),(47,159),(47,158),(47,161),(48,163),(48,162),(48,165),(48,166),(48,164),(49,169),(49,171),(49,168),(49,167),(49,170),(50,174),(50,173),(50,175),(50,176),(50,172),(51,180),(51,181),(51,179),(51,178),(51,177),(52,182),(52,186),(52,183),(52,185),(52,184),(53,188),(53,190),(53,191),(53,189),(53,187),(54,193),(54,195),(54,192),(54,194),(55,196),(55,199),(55,197),(55,198),(56,203),(56,202),(56,200),(56,201),(57,204),(57,206),(57,207),(57,205),(58,208),(59,210),(59,209),(60,212),(60,211),(61,214),(61,213),(62,216),(62,215),(63,218),(63,217),(64,220),(64,219),(64,222),(64,221),(65,223),(65,224),(66,226),(66,225),(67,229),(67,230),(67,227),(67,228),(68,232),(68,231),(68,233),(69,234),(69,235),(70,236),(71,238),(71,242),(71,240),(71,239),(71,241),(71,243),(71,237),(72,244),(73,246),(73,248),(73,245),(73,247),(74,249),(74,251),(74,250),(74,253),(74,252),(75,254),(75,255),(75,257),(75,256),(76,258),(76,259),(76,260),(76,261),(77,264),(77,265),(77,263),(77,262),(78,266),(78,267),(79,271),(79,269),(79,268),(79,270),(80,272),(80,273);
/*!40000 ALTER TABLE `question_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_reference`
--

DROP TABLE IF EXISTS `question_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_reference` (
  `question_id` bigint(20) NOT NULL,
  `reference_id` bigint(20) NOT NULL,
  KEY `question_id` (`question_id`),
  KEY `reference_id` (`reference_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_reference`
--

LOCK TABLES `question_reference` WRITE;
/*!40000 ALTER TABLE `question_reference` DISABLE KEYS */;
INSERT INTO `question_reference` VALUES (1,1),(3,2),(4,3),(4,5),(4,6),(4,4),(5,7),(6,8),(8,9),(12,10),(27,11),(28,12),(32,16),(32,17),(32,13),(32,14),(32,15),(33,18),(53,20),(53,19),(52,21),(44,23),(44,22),(38,24),(36,25),(36,26),(40,27),(40,28),(42,29),(43,30),(45,31),(50,32),(50,33),(37,34),(54,35),(55,35),(56,35),(57,35),(58,35),(59,36),(60,36),(61,36),(62,36),(66,37),(74,38),(75,39),(76,40),(77,41),(79,42);
/*!40000 ALTER TABLE `question_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_topic`
--

DROP TABLE IF EXISTS `question_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_topic` (
  `question_id` bigint(20) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  KEY `question_id` (`question_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_topic`
--

LOCK TABLES `question_topic` WRITE;
/*!40000 ALTER TABLE `question_topic` DISABLE KEYS */;
INSERT INTO `question_topic` VALUES (1,1),(2,4),(2,1),(3,3),(3,1),(4,1),(5,5),(5,1),(6,6),(6,7),(6,5),(7,8),(7,1),(8,9),(9,10),(9,11),(9,12),(10,10),(10,11),(10,12),(11,10),(11,11),(11,12),(12,10),(12,11),(12,12),(13,10),(13,11),(13,12),(14,10),(14,11),(14,12),(15,10),(15,11),(15,12),(16,10),(16,11),(16,12),(17,10),(17,11),(17,12),(18,10),(18,11),(18,12),(19,10),(19,11),(19,12),(20,10),(20,11),(20,12),(21,10),(21,11),(21,12),(22,10),(22,11),(22,12),(23,10),(23,11),(23,12),(24,10),(24,11),(24,12),(25,10),(25,11),(25,12),(26,10),(26,11),(26,12),(27,13),(28,13),(29,13),(30,13),(31,13),(32,13),(33,13),(34,13),(35,13),(36,13),(37,13),(38,13),(39,13),(40,13),(41,13),(42,13),(43,13),(44,13),(45,13),(46,13),(47,13),(48,13),(49,13),(50,13),(51,13),(52,13),(53,13),(54,15),(54,14),(55,15),(55,14),(56,15),(56,14),(57,15),(57,14),(58,15),(58,14),(59,16),(60,16),(61,16),(61,17),(62,16),(62,17),(63,10),(63,11),(63,12),(64,10),(64,11),(64,12),(65,10),(65,11),(65,12),(66,16),(66,17),(67,18),(68,21),(68,19),(68,20),(69,22),(69,24),(69,23),(70,27),(70,26),(70,25),(71,28),(71,29),(71,30),(72,32),(72,33),(72,31),(73,36),(73,35),(73,34),(74,38),(74,37),(74,39),(75,41),(75,42),(75,40),(75,43),(76,45),(76,44),(76,47),(76,46),(77,51),(77,48),(77,50),(77,49),(78,55),(78,54),(78,52),(78,53),(79,58),(79,59),(79,56),(79,57),(80,60);
/*!40000 ALTER TABLE `question_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_type` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type`
--

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` VALUES (1,'Single'),(2,'Multiple'),(3,'Phrase'),(4,'Sequence'),(5,'Set');
/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference`
--

DROP TABLE IF EXISTS `reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference`
--

LOCK TABLES `reference` WRITE;
/*!40000 ALTER TABLE `reference` DISABLE KEYS */;
INSERT INTO `reference` VALUES (1,'http://en.wikipedia.org/wiki/Turtle'),(2,'http://bearsoftheworld.net/brown_bears.asp'),(3,'http://en.wikipedia.org/wiki/hippopotamus'),(4,'http://en.wikipedia.org/wiki/goat'),(5,'http://en.wikipedia.org/wiki/elephant'),(6,'http://en.wikipedia.org/wiki/cow'),(7,'http://en.wikipedia.org/wiki/Heterotroph'),(8,'http://en.wikipedia.org/wiki/Photoautotroph'),(9,'a book...'),(10,'http://en.wikipedia.org/wiki/Strike_price'),(11,'He was the 22nd and 24th President, 1885-1889 and 1893-1897.'),(12,'Following the death of Willam Henry Harrison, after one month in office (1841).'),(13,'Many calls were made for George W. Bush\'s impeachment, but nothing ever came of it.'),(14,'Nixon was nearly impeached over the Watergate scandal, but resigned before he could be impeached.'),(15,'Andrew Johnson failed of conviction in the Senate by only one vote.'),(16,'Clinton was impeached over the Monica Lewinsky sex scandal, but not convicted by the Senate.'),(17,'Tyler narrowly escaped impeachment during his term in office.'),(18,'Taft served as President 1909-1913, and as Chief Justice 1921-1930.'),(19,'The oath was administered in Air Force One, shortly after the Kennedy assassination.'),(20,'The woman in question was U.S. District Judge Sarah Hughes.'),(21,'Following Jefferson\'s election, the 12th Amendment was passed to modify Electoral College voting.'),(22,'This was depicted in the movie Air Force One.  The real Air Force One has no such escape capsule.'),(23,'President Clinton is the President that thought the escape capsule was a good idea.'),(24,'Wilson received his doctorate in 1886 from Johns Hopkins University.'),(25,'The only President to break that precedent was Franklin D. Roosevelt, elected to four terms.'),(26,'The precedent was set by George Washington, who stepped down after two terms.'),(27,'The quote is from an early scene at Starfleet Headquarters with Spock and Captain James Kirk.'),(28,'The proverb in question: \'Only Nixon could go to China.\''),(29,'Coolidge was born July 4, 1872.'),(30,'The source of the doggerel was the campaign of Cleveland\'s opponent, James G. Blaine.'),(31,'Though Lynda Johnson and her sister Luci did call it \'The Great White Mausoleum.\''),(32,'Ford was appointed to the Vice-Presidency by Congress after the resignation of Spiro T. Agnew.'),(33,'Ford succeeded to the Presidency upon the resignation of Richard M. Nixon.'),(34,'The amendment\'s title is \'Presidential Succession and Disability.\''),(35,'http://www.w3schools.com/sql/sql_join.asp'),(36,'http://www.investopedia.com/university/technical/techanalysis1.asp'),(37,'TAs consider the past trading data of the security, not its value.'),(38,'oceb fundamental book, chapter 2, p17'),(39,'oceb fundamental book, chapter 2, p18'),(40,'oceb fundamental book, chapter 2, p18'),(41,'oceb fundamental book, chapter 2, p18'),(42,'oceb fundamental book, chapter 2, p18');
/*!40000 ALTER TABLE `reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (1,'animals'),(2,'aquatic'),(3,'bears'),(4,'aquatic animals'),(5,'biology'),(6,'sunlight'),(7,'plants'),(8,'mammals'),(9,'e-government'),(10,'trading'),(11,'commodities'),(12,'options'),(13,'U.S. Presidents'),(14,'joins'),(15,'SQL'),(16,'technical analysis'),(17,'fundamental analysis'),(18,'topic1'),(19,'oceb fundamental'),(20,'chapter 2'),(21,'business functions, markets, and strategies'),(22,'business functions, markets, and strategies'),(23,'chapter 2'),(24,'oceb fundamental'),(25,'chapter 2'),(26,'oceb fundamental'),(27,'business functions, markets, and strategies'),(28,'business functions, markets, and strategies'),(29,'oceb fundamental'),(30,'chapter 2'),(31,'chapter 2'),(32,'business functions, markets, and strategies'),(33,'oceb fundamental'),(34,'chapter 2'),(35,'oceb fundamental'),(36,'business functions, markets, and strategies'),(37,'oceb fundamental'),(38,'business functions, markets, and strategies'),(39,'chapter 2'),(40,'chapter 2'),(41,'business functions, markets, and strategies'),(42,'oceb fundamental'),(43,'step analysis'),(44,'step analysis'),(45,'business functions, markets, and strategies'),(46,'chapter 2'),(47,'oceb fundamental'),(48,'step analysis'),(49,'chapter 2'),(50,'oceb fundamental'),(51,'business functions, markets, and strategies'),(52,'step analysis'),(53,'chapter 2'),(54,'oceb fundamental'),(55,'business functions, markets, and strategies'),(56,'step analysis'),(57,'chapter 2'),(58,'business functions, markets, and strategies'),(59,'oceb fundamental'),(60,'openshift');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'Administrator'),(2,'General User');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johnathan','password'),(2,'billy','password'),(3,'ale','bomboclat'),(4,'erbo','FunBunny'),(5,'amitlath','amitlath'),(6,'qambelly','123456'),(7,'thedarkcoder','9898723707'),(8,'babu','babuji'),(9,'rajsa','babuji'),(10,'alice','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles_map`
--

DROP TABLE IF EXISTS `users_roles_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles_map` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles_map`
--

LOCK TABLES `users_roles_map` WRITE;
/*!40000 ALTER TABLE `users_roles_map` DISABLE KEYS */;
INSERT INTO `users_roles_map` VALUES (1,1),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2);
/*!40000 ALTER TABLE `users_roles_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `entityTypeId` bigint(20) NOT NULL,
  `entityId` bigint(20) NOT NULL,
  `thumbsUp` int(11) NOT NULL,
  `thumbsDown` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`entityId`,`entityTypeId`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-13  9:37:13
