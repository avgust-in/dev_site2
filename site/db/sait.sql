-- MySQL dump 10.13  Distrib 5.7.30-33, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ca60673_0
-- ------------------------------------------------------
-- Server version	5.7.30-33

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES (79,'action_scheduler/migration_hook','complete','2020-10-05 13:26:32','2020-10-05 13:26:32','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601904392;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601904392;}',1,1,'2020-10-05 13:26:36','2020-10-05 16:26:36',0,NULL),(80,'action_scheduler/migration_hook','complete','2020-10-05 13:27:36','2020-10-05 13:27:36','[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1601904456;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1601904456;}',1,1,'2020-10-05 13:27:46','2020-10-05 16:27:46',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=1272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES (1,'action-scheduler-migration');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES (14,80,'действие началось через WP Cron','2020-10-05 13:27:46','2020-10-05 13:27:46'),(13,80,'действие создано','2020-10-05 13:26:36','2020-10-05 13:26:36'),(12,79,'действие завершено через WP Cron','2020-10-05 13:26:36','2020-10-05 13:26:36'),(11,79,'действие началось через WP Cron','2020-10-05 13:26:36','2020-10-05 13:26:36'),(10,79,'действие создано','2020-10-05 13:25:32','2020-10-05 13:25:32'),(15,80,'действие завершено через WP Cron','2020-10-05 13:27:46','2020-10-05 13:27:46');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (1,13,'rating','1'),(2,13,'verified','0'),(3,14,'rating','1'),(4,14,'verified','0'),(5,15,'rating','1'),(6,15,'verified','0'),(7,16,'rating','1'),(8,16,'verified','0'),(9,17,'rating','1'),(10,18,'rating','1'),(11,17,'verified','0'),(12,18,'verified','0'),(13,19,'rating','1'),(14,19,'verified','0'),(15,21,'rating','1'),(16,20,'rating','1'),(17,21,'verified','0'),(18,20,'verified','0'),(19,23,'rating','1'),(20,23,'verified','0'),(21,24,'rating','1'),(22,24,'verified','0');
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'я','','','','2019-08-06 11:12:14','2019-08-06 08:12:14','Привет! Это комментарий.\r\n',0,'1','','',0,0),(2,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:05:44','2020-07-02 20:05:44','1 ;arachni_xss_in_element_event=ae9a3f3d624ef4f62867477626a8aeba//',0,'0','METASCAN.ru','',0,0),(3,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:05:59','2020-07-02 20:05:59','1',0,'0','METASCAN.ru','',0,0),(4,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:06:14','2020-07-02 20:06:14','1_arachni_trainer_ae9a3f3d624ef4f62867477626a8aeba',0,'0','METASCAN.ru','',0,0),(5,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:06:29','2020-07-02 20:06:29','file:///windows/win.ini',0,'0','METASCAN.ru','',0,0),(6,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:06:59','2020-07-02 20:06:59','php://input.',0,'0','METASCAN.ru','',0,0),(7,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:07:20','2020-07-02 20:07:20','1;window.top._arachni_js_namespace_taint_tracer.log_execution_flow_sink()//',0,'0','METASCAN.ru','',0,0),(8,67,'1\' where sleep(4) #','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:07:35','2020-07-02 20:07:35','1',0,'0','METASCAN.ru','',0,0),(9,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:07:55','2020-07-02 20:07:55','*/;window.top._arachni_js_namespace_taint_tracer.log_execution_flow_sink()/*',0,'0','METASCAN.ru','',0,0),(10,67,'&amp; ping -n 0 localhost &amp;','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:08:38','2020-07-02 20:08:38','1',0,'0','METASCAN.ru','',0,0),(11,67,'1 script:;arachni_xss_in_element_event=ae9a3f3d624ef4f62867477626a8aeba//','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:15:50','2020-07-02 20:15:50','1',0,'0','METASCAN.ru','',0,0),(12,67,'\" | /bin/cat /etc/security/passwd | \"','metascan@metascan.ru','http://1','116.203.47.119','2020-07-02 23:16:05','2020-07-02 20:16:05','1',0,'0','METASCAN.ru','',0,0),(13,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:22:52','2020-07-02 21:22:52','1 script:;arachni_xss_in_element_event=ae9a3f3d624ef4f62867477626a8aeba//',0,'0','METASCAN.ru','review',0,0),(14,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:23:14','2020-07-02 21:23:14','www.ae9a3f3d624ef4f62867477626a8aeba.com/?',0,'0','METASCAN.ru','review',0,0),(15,80,'/admin-ajax.php','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:23:29','2020-07-02 21:23:29','1',0,'0','METASCAN.ru','review',0,0),(16,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:23:44','2020-07-02 21:23:44','1',0,'0','METASCAN.ru','review',0,0),(17,80,'php://input.','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:24:08','2020-07-02 21:24:08','1',0,'0','METASCAN.ru','review',0,0),(18,80,'php://input','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:24:08','2020-07-02 21:24:08','1',0,'0','METASCAN.ru','review',0,0),(19,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:24:40','2020-07-02 21:24:40','1\';.\")',0,'0','METASCAN.ru','review',0,0),(20,80,'\" | sleep 4 | \"','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:24:55','2020-07-02 21:24:55','1',0,'0','METASCAN.ru','review',0,0),(21,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:24:55','2020-07-02 21:24:55','\" | sleep 4 | \"',0,'0','METASCAN.ru','review',0,0),(22,1,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:25:19','2020-07-02 21:25:19','1',0,'0','METASCAN.ru','',0,0),(23,80,'1','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:25:19','2020-07-02 21:25:19','1',0,'0','METASCAN.ru','review',1,0),(24,80,'\" | ping -n 0 localhost | \"','metascan@metascan.ru','','116.203.47.119','2020-07-03 00:25:57','2020-07-02 21:25:57','1',0,'0','METASCAN.ru','review',0,0),(25,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-03 02:18:52','2020-07-02 23:18:52','1 script:;arachni_xss_in_element_event=ae9a3f3d624ef4f62867477626a8aeba//',0,'0','METASCAN.ru','',0,0),(26,67,'file:///boot.ini','metascan@metascan.ru','http://1','116.203.47.119','2020-07-03 02:19:07','2020-07-02 23:19:07','1',0,'0','METASCAN.ru','',0,0),(27,67,'file:///boot.ini.','metascan@metascan.ru','http://1','116.203.47.119','2020-07-03 02:19:07','2020-07-02 23:19:07','1',0,'0','METASCAN.ru','',0,0),(28,67,'1','metascan@metascan.ru','http://1','116.203.47.119','2020-07-03 02:19:22','2020-07-02 23:19:22','1\' and sleep(4)=\'',0,'0','METASCAN.ru','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mail_bank`
--

DROP TABLE IF EXISTS `wp_mail_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mail_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mail_bank`
--

LOCK TABLES `wp_mail_bank` WRITE;
/*!40000 ALTER TABLE `wp_mail_bank` DISABLE KEYS */;
INSERT INTO `wp_mail_bank` VALUES (1,'email_configuration',0),(2,'email_logs',0),(3,'settings',0),(4,'collation_type',0),(5,'notifications',0),(6,'roles_and_capabilities',0);
/*!40000 ALTER TABLE `wp_mail_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mail_bank_logs`
--

DROP TABLE IF EXISTS `wp_mail_bank_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mail_bank_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_to` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cc` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bcc` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_520_ci,
  `content` longtext COLLATE utf8mb4_unicode_520_ci,
  `sender_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sender_email` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debug_mode` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `debugging_output` longtext COLLATE utf8mb4_unicode_520_ci,
  `timestamp` int(20) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mail_bank_logs`
--

LOCK TABLES `wp_mail_bank_logs` WRITE;
/*!40000 ALTER TABLE `wp_mail_bank_logs` DISABLE KEYS */;
INSERT INTO `wp_mail_bank_logs` VALUES (1,'p.leontev@timeweb.ru','','','Test Email - Mail Bank','This is a demo Test Email for Email Setup - Mail Bank','AVGUST PAGE','avgust@avgust.ml','enable','220 smtp.timeweb.ru ESMTP\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.35]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-STARTTLS\r\n250 HELP\r\nSTARTTLS\r\n220 TLS go ahead\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.35]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250 HELP\r\nAUTH LOGIN\r\n334 VXNlcm5hbWU6\r\nYXZndXN0QGF2Z3VzdC5tbA==\r\n334 UGFzc3dvcmQ6\r\nWnhjdmJubTEy\r\n235 Authentication succeeded\r\nMAIL FROM:<avgust@avgust.ml>\r\n250 OK\r\nRCPT TO:<p.leontev@timeweb.ru>\r\n250 Accepted\r\nDATA\r\n354 Enter message, ending with \".\" on a line by itself\r\nTo: p.leontev@timeweb.ru\r\nFrom: AVGUST PAGE <avgust@avgust.ml>\r\nSubject: Test Email - Mail Bank\r\nX-Mailer: Mail Bank SMTP 4.0.10 for WordPress (https://tech-banker.com/wp-mail-bank/)\r\nContent-Type: text/html; charset=utf-8\r\nDate: Mon, 27 Jan 2020 12:20:41 +0000\r\nContent-Transfer-Encoding: quoted-printable\r\nContent-Disposition: inline\r\nMIME-Version: 1.0\r\n\r\nThis is a demo Test Email for Email Setup - Mail Bank\r\n.\r\n250 OK id=1iw3Nh-0006iP-N8\r\n',1580138441,'Sent'),(2,'p.leontev@timeweb.ru','','','this is sparta','<p>sparta</p>','AVGUST PAGE','avgust@avgust.ml','enable','220 smtp.timeweb.ru ESMTP\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.35]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-STARTTLS\r\n250 HELP\r\nSTARTTLS\r\n220 TLS go ahead\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.35]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250 HELP\r\nAUTH LOGIN\r\n334 VXNlcm5hbWU6\r\nYXZndXN0QGF2Z3VzdC5tbA==\r\n334 UGFzc3dvcmQ6\r\nWnhjdmJubTEy\r\n235 Authentication succeeded\r\nMAIL FROM:<avgust@avgust.ml>\r\n250 OK\r\nRCPT TO:<p.leontev@timeweb.ru>\r\n250 Accepted\r\nDATA\r\n354 Enter message, ending with \".\" on a line by itself\r\nTo: p.leontev@timeweb.ru\r\nFrom: AVGUST PAGE <avgust@avgust.ml>\r\nSubject: this is sparta\r\nX-Mailer: Mail Bank SMTP 4.0.10 for WordPress (https://tech-banker.com/wp-mail-bank/)\r\nContent-Type: text/html; charset=utf-8\r\nDate: Mon, 27 Jan 2020 12:21:44 +0000\r\nContent-Transfer-Encoding: quoted-printable\r\nContent-Disposition: inline\r\nMIME-Version: 1.0\r\n\r\n<p>sparta</p>\r\n.\r\n250 OK id=1iw3Oi-0000gx-7l\r\n',1580138503,'Sent'),(3,'p.leontev@timeweb.ru','','','[AVGUST PAGE] Ваш сайт обновлён до WordPress 5.3.3','Привет! Ваш сайт https://www.avgust.ml был автоматически обновлён до WordPress 5.3.3.\n\nПодробности о версии 5.3.3 можно узнать на экране \"О WordPress\":\nhttps://www.avgust.ml/wp-admin/about.php\n\nТакже доступен WordPress 5.4.1. Процедура обновления проста и займёт всего несколько секунд:\nhttps://www.avgust.ml/wp-admin/update-core.php\n\nЕсли вы столкнётесь с проблемами и вам понадобится поддержка, вам помогут волонтёры на форумах WordPress.org.\nhttps://ru.wordpress.org/support/forums/\n\nСвоевременно обновлять сайт важно из соображений безопасности. Это также делает Интернет более безопасным местом для вас и ваших читателей.\n\nКоманда WordPress\n','AVGUST PAGE','avgust@avgust.ml','enable','220 smtp.timeweb.ru ESMTP\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-STARTTLS\r\n250 HELP\r\nSTARTTLS\r\n220 TLS go ahead\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250 HELP\r\nAUTH LOGIN\r\n334 VXNlcm5hbWU6\r\nYXZndXN0QGF2Z3VzdC5tbA==\r\n334 UGFzc3dvcmQ6\r\nWnhjdmJubTEy\r\n535 Incorrect authentication data\r\n',1588252518,'Not Sent'),(4,'p.leontev@timeweb.ru','','','[AVGUST PAGE] Ваш сайт обновлён до WordPress 5.3.4','Привет! Ваш сайт https://www.avgust.ml был автоматически обновлён до WordPress 5.3.4.\n\nПодробности о версии 5.3.4 можно узнать на экране \"О WordPress\":\nhttps://www.avgust.ml/wp-admin/about.php\n\nТакже доступен WordPress 5.4.2. Процедура обновления проста и займёт всего несколько секунд:\nhttps://www.avgust.ml/wp-admin/update-core.php\n\nЕсли вы столкнётесь с проблемами и вам понадобится поддержка, вам помогут волонтёры на форумах WordPress.org.\nhttps://ru.wordpress.org/support/forums/\n\nСвоевременно обновлять сайт важно из соображений безопасности. Это также делает Интернет более безопасным местом для вас и ваших читателей.\n\nКоманда WordPress\n','AVGUST PAGE','avgust@avgust.ml','enable','220 smtp.timeweb.ru ESMTP\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-CHUNKING\r\n250-STARTTLS\r\n250 HELP\r\nSTARTTLS\r\n220 TLS go ahead\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-CHUNKING\r\n250 HELP\r\nAUTH LOGIN\r\n334 VXNlcm5hbWU6\r\nYXZndXN0QGF2Z3VzdC5tbA==\r\n334 UGFzc3dvcmQ6\r\nWnhjdmJubTEy\r\n535 Incorrect authentication data\r\n',1591886302,'Not Sent');
/*!40000 ALTER TABLE `wp_mail_bank_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_mail_bank_meta`
--

DROP TABLE IF EXISTS `wp_mail_bank_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_mail_bank_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_id` int(11) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_mail_bank_meta`
--

LOCK TABLES `wp_mail_bank_meta` WRITE;
/*!40000 ALTER TABLE `wp_mail_bank_meta` DISABLE KEYS */;
INSERT INTO `wp_mail_bank_meta` VALUES (1,1,'email_configuration','a:23:{s:13:\"email_address\";s:20:\"p.leontev@timeweb.ru\";s:8:\"reply_to\";s:0:\"\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:7:\"headers\";s:0:\"\";s:11:\"mailer_type\";s:4:\"smtp\";s:25:\"sender_name_configuration\";s:8:\"override\";s:11:\"sender_name\";s:11:\"AVGUST PAGE\";s:24:\"from_email_configuration\";s:8:\"override\";s:12:\"sender_email\";s:16:\"avgust@avgust.ml\";s:8:\"hostname\";s:15:\"smtp.timeweb.ru\";s:4:\"port\";i:25;s:8:\"enc_type\";s:3:\"tls\";s:9:\"auth_type\";s:5:\"login\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:16:\"sendgrid_api_key\";s:0:\"\";s:15:\"mailgun_api_key\";s:0:\"\";s:19:\"mailgun_domain_name\";s:0:\"\";s:8:\"username\";s:16:\"avgust@avgust.ml\";s:14:\"automatic_mail\";s:1:\"1\";s:8:\"password\";s:12:\"WnhjdmJubTEy\";s:12:\"redirect_uri\";s:55:\"http://ca60673-wordpress.tw1.ru/wp-admin/admin-ajax.php\";}'),(2,3,'settings','a:7:{s:23:\"automatic_plugin_update\";s:7:\"disable\";s:14:\"fetch_settings\";s:15:\"individual_site\";s:10:\"debug_mode\";s:6:\"enable\";s:26:\"remove_tables_at_uninstall\";s:7:\"disable\";s:18:\"monitor_email_logs\";s:6:\"enable\";s:15:\"auto_clear_logs\";s:7:\"disable\";s:17:\"delete_logs_after\";s:4:\"1day\";}'),(3,5,'notifications','a:6:{s:12:\"notification\";s:7:\"disable\";s:20:\"notification_service\";s:5:\"email\";s:26:\"notification_email_address\";s:20:\"p.leontev@timeweb.ru\";s:17:\"pushover_user_key\";s:0:\"\";s:18:\"pushover_app_token\";s:0:\"\";s:14:\"slack_web_hook\";s:0:\"\";}'),(4,6,'roles_and_capabilities','a:10:{s:22:\"roles_and_capabilities\";s:11:\"1,1,1,0,0,0\";s:27:\"show_mail_bank_top_bar_menu\";s:6:\"enable\";s:30:\"others_full_control_capability\";s:1:\"0\";s:24:\"administrator_privileges\";s:19:\"1,1,1,1,1,1,1,1,1,1\";s:17:\"author_privileges\";s:19:\"0,0,1,0,0,0,0,0,0,0\";s:17:\"editor_privileges\";s:19:\"0,0,1,0,0,0,1,0,0,0\";s:22:\"contributor_privileges\";s:19:\"0,0,0,0,0,0,1,0,0,0\";s:21:\"subscriber_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:22:\"other_roles_privileges\";s:19:\"0,0,0,0,0,0,0,0,0,0\";s:12:\"capabilities\";a:7:{i:0;s:14:\"manage_options\";i:1;s:12:\"edit_plugins\";i:2;s:10:\"edit_posts\";i:3;s:13:\"publish_posts\";i:4;s:13:\"publish_pages\";i:5;s:10:\"edit_pages\";i:6;s:4:\"read\";}}');
/*!40000 ALTER TABLE `wp_mail_bank_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=5109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://ca60673-wordpress.tw1.ru','yes'),(2,'home','http://ca60673-wordpress.tw1.ru','yes'),(3,'blogname','AVGUST PAGE','yes'),(4,'blogdescription','this is his site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','p.leontev@timeweb.ru','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','d.m.Y','yes'),(24,'time_format','H:i','yes'),(25,'links_updated_date_format','d.m.Y H:i','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:4:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:9:\"hello.php\";i:2;s:27:\"woocommerce/woocommerce.php\";i:3;s:29:\"wp-mail-bank/wp-mail-bank.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','3','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:2:{i:0;s:81:\"/home/c/ca60673/wordpress/public_html/wp-content/themes/twentyseventeen/style.css\";i:1;s:0:\"\";}','no'),(40,'template','twentyseventeen','yes'),(41,'stylesheet','twentyseventeen','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','45805','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','0','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','42','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'initial_db_version','44719','yes'),(94,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'WPLANG','ru_RU','yes'),(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(103,'cron','a:15:{i:1602315184;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1602316502;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602316508;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602317534;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602317569;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602317570;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602318108;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602318737;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1602330901;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602352503;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602352511;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602363301;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602363600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602784561;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}','yes'),(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'recovery_keys','a:0:{}','yes'),(118,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1580123157;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(257,'new_admin_email','p.leontev@timeweb.ru','yes'),(174,'db_upgraded','','yes'),(2028,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','yes'),(2029,'current_theme_supports_woocommerce','yes','yes'),(2030,'woocommerce_queue_flush_rewrite_rules','no','yes'),(278,'theme_mods_twentyseventeen','a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:11:\"custom_logo\";i:43;s:11:\"colorscheme\";s:6:\"custom\";s:15:\"colorscheme_hue\";i:227;s:21:\"external_header_video\";s:28:\"https://youtu.be/52Gg9CqhbP8\";s:12:\"header_image\";s:13:\"remove-header\";}','yes'),(280,'current_theme','Twenty Seventeen','yes'),(281,'theme_switched','','yes'),(291,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"5\",\"critical\":\"1\"}','yes'),(298,'wp_mail_smtp_initial_version','1.8.1','no'),(299,'wp_mail_smtp_version','1.8.1','no'),(300,'wp_mail_smtp','a:7:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:16:\"avgust@avgust.ml\";s:9:\"from_name\";s:11:\"AVGUST PAGE\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:11:\"pepipostapi\";a:1:{s:7:\"api_key\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}','no'),(309,'mb_admin_notice','a:1:{s:15:\"two_week_review\";a:3:{s:5:\"start\";s:10:\"02/03/2020\";s:3:\"int\";i:7;s:9:\"dismissed\";i:0;}}','yes'),(310,'mail_bank_update_database','mail_bank_update_database','yes'),(311,'mail-bank-version-number','3.0.6','yes'),(313,'mail-bank-welcome-page','opt_in','yes'),(314,'mail-bank-admin-email','avgust@avgust.ml','yes'),(315,'mb_tech_banker_site_id','156504','yes'),(316,'update_email_configuration','a:23:{s:13:\"email_address\";s:20:\"p.leontev@timeweb.ru\";s:8:\"reply_to\";s:0:\"\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:7:\"headers\";s:0:\"\";s:11:\"mailer_type\";s:4:\"smtp\";s:25:\"sender_name_configuration\";s:8:\"override\";s:11:\"sender_name\";s:11:\"AVGUST PAGE\";s:24:\"from_email_configuration\";s:8:\"override\";s:12:\"sender_email\";s:16:\"avgust@avgust.ml\";s:8:\"hostname\";s:15:\"smtp.timeweb.ru\";s:4:\"port\";i:25;s:8:\"enc_type\";s:3:\"tls\";s:9:\"auth_type\";s:5:\"login\";s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:16:\"sendgrid_api_key\";s:0:\"\";s:15:\"mailgun_api_key\";s:0:\"\";s:19:\"mailgun_domain_name\";s:0:\"\";s:8:\"username\";s:16:\"avgust@avgust.ml\";s:14:\"automatic_mail\";s:1:\"1\";s:8:\"password\";s:12:\"WnhjdmJubTEy\";s:12:\"redirect_uri\";s:55:\"http://ca60673-wordpress.tw1.ru/wp-admin/admin-ajax.php\";}','yes'),(317,'mail_bank_mail_status','220 smtp.timeweb.ru ESMTP\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-CHUNKING\r\n250-STARTTLS\r\n250 HELP\r\nSTARTTLS\r\n220 TLS go ahead\r\nEHLO localhost\r\n250-smtp.timeweb.ru Hello localhost [92.53.96.13]\r\n250-SIZE 52428800\r\n250-8BITMIME\r\n250-PIPELINING\r\n250-AUTH PLAIN LOGIN\r\n250-CHUNKING\r\n250 HELP\r\nAUTH LOGIN\r\n334 VXNlcm5hbWU6\r\nYXZndXN0QGF2Z3VzdC5tbA==\r\n334 UGFzc3dvcmQ6\r\nWnhjdmJubTEy\r\n535 Incorrect authentication data\r\n','yes'),(318,'mail_bank_is_mail_sent','Not Sent','yes'),(145,'recently_activated','a:1:{s:36:\"contact-form-7/wp-contact-form-7.php\";i:1601904329;}','yes'),(153,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"p.leontev@timeweb.ru\";s:7:\"version\";s:5:\"5.3.4\";s:9:\"timestamp\";i:1591875510;}','no'),(173,'admin_email_lifespan','1617636479','yes'),(177,'can_compress_scripts','0','no'),(2166,'woocommerce_tracker_ua','a:2:{i:0;s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";i:1;s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\";}','yes'),(3567,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1602274982;s:15:\"version_checked\";s:5:\"5.3.4\";s:12:\"translations\";a:0:{}}','no'),(5093,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1602274984;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.2.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no'),(5094,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602274985;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.3.4\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.2.2\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.8.1\";s:29:\"wp-mail-bank/wp-mail-bank.php\";s:6:\"4.0.10\";}s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.3.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/really-simple-ssl.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2320223\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2320228\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.5\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"wp-mail-bank/wp-mail-bank.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-bank\";s:4:\"slug\";s:12:\"wp-mail-bank\";s:6:\"plugin\";s:29:\"wp-mail-bank/wp-mail-bank.php\";s:11:\"new_version\";s:6:\"4.0.12\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-bank/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wp-mail-bank.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-bank/assets/icon-256x256.png?rev=1966190\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-bank/assets/icon-128x128.png?rev=1966190\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-bank/assets/banner-1544x500.png?rev=1966190\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-bank/assets/banner-772x250.png?rev=1966191\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(2483,'woocommerce_tracker_last_send','1601890382','yes'),(5091,'_site_transient_timeout_theme_roots','1602276783','no'),(5092,'_site_transient_theme_roots','a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),(5069,'_transient_timeout__woocommerce_helper_updates','1602276010','no'),(5070,'_transient__woocommerce_helper_updates','a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1602232810;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}','no'),(1917,'action_scheduler_hybrid_store_demarkation','75','yes'),(1918,'schema-ActionScheduler_StoreSchema','3.0.1593712501','yes'),(1919,'schema-ActionScheduler_LoggerSchema','2.0.1593712501','yes'),(2031,'_transient_wc_attribute_taxonomies','a:0:{}','yes'),(2032,'product_cat_children','a:0:{}','yes'),(2033,'default_product_cat','15','yes'),(2034,'woocommerce_admin_notices','a:1:{i:0;s:7:\"install\";}','yes'),(2064,'woocommerce_meta_box_errors','a:0:{}','yes'),(2037,'woocommerce_version','4.2.2','yes'),(2038,'woocommerce_db_version','4.2.2','yes'),(2041,'action_scheduler_lock_async-request-runner','1602267883','yes'),(2042,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"GD4httvWjabRBEwzMZ9HUGa0c94wZGGX\";}','yes'),(2043,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','yes'),(2044,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2045,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2046,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2047,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2048,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2049,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2050,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2051,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2052,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2053,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2054,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2055,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(2059,'woocommerce_admin_install_timestamp','1593712503','yes'),(2058,'woocommerce_admin_version','1.2.4','yes'),(2295,'_transient_orders-transient-version','1593724972','yes'),(2066,'woocommerce_onboarding_profile','a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"art-music-photography\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:7:\"proshop\";s:7:\"plugins\";s:7:\"skipped\";}','yes'),(2067,'woocommerce_onboarding_opt_in','yes','yes'),(2070,'_transient_woocommerce_reports-transient-version','1593712579','yes'),(2083,'woocommerce_task_list_welcome_modal_dismissed','1','yes'),(2098,'_transient_product_query-transient-version','1602084481','yes'),(2091,'_transient_shipping-transient-version','1593712828','yes'),(2099,'_transient_product-transient-version','1593725157','yes'),(4944,'_site_transient_timeout_browser_fbee07002086f75e2a6dbc33eddce443','1602689280','no'),(4945,'_site_transient_browser_fbee07002086f75e2a6dbc33eddce443','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.102\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(2135,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.1.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1593713926;s:7:\"version\";s:5:\"5.1.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','yes'),(1922,'woocommerce_store_address','avgust.ml','yes'),(1923,'woocommerce_store_address_2','','yes'),(1924,'woocommerce_store_city','СПб','yes'),(1925,'woocommerce_default_country','RU','yes'),(1926,'woocommerce_store_postcode','123','yes'),(1927,'woocommerce_allowed_countries','all','yes'),(1928,'woocommerce_all_except_countries','a:0:{}','yes'),(1929,'woocommerce_specific_allowed_countries','a:0:{}','yes'),(1930,'woocommerce_ship_to_countries','','yes'),(1931,'woocommerce_specific_ship_to_countries','a:0:{}','yes'),(1932,'woocommerce_default_customer_address','base','yes'),(1933,'woocommerce_calc_taxes','no','yes'),(1934,'woocommerce_enable_coupons','yes','yes'),(1935,'woocommerce_calc_discounts_sequentially','no','no'),(1936,'woocommerce_currency','RUB','yes'),(1937,'woocommerce_currency_pos','right','yes'),(1938,'woocommerce_price_thousand_sep','','yes'),(1939,'woocommerce_price_decimal_sep',',','yes'),(1940,'woocommerce_price_num_decimals','2','yes'),(1941,'woocommerce_shop_page_id','76','yes'),(1942,'woocommerce_cart_redirect_after_add','no','yes'),(1943,'woocommerce_enable_ajax_add_to_cart','yes','yes'),(1944,'woocommerce_placeholder_image','75','yes'),(1945,'woocommerce_weight_unit','kg','yes'),(1946,'woocommerce_dimension_unit','cm','yes'),(1947,'woocommerce_enable_reviews','yes','yes'),(1948,'woocommerce_review_rating_verification_label','yes','no'),(1949,'woocommerce_review_rating_verification_required','no','no'),(1950,'woocommerce_enable_review_rating','yes','yes'),(1951,'woocommerce_review_rating_required','yes','no'),(1952,'woocommerce_manage_stock','yes','yes'),(1953,'woocommerce_hold_stock_minutes','60','no'),(1954,'woocommerce_notify_low_stock','yes','no'),(1955,'woocommerce_notify_no_stock','yes','no'),(1956,'woocommerce_stock_email_recipient','p.leontev@timeweb.ru','no'),(1957,'woocommerce_notify_low_stock_amount','2','no'),(1958,'woocommerce_notify_no_stock_amount','0','yes'),(1959,'woocommerce_hide_out_of_stock_items','no','yes'),(1960,'woocommerce_stock_format','','yes'),(1961,'woocommerce_file_download_method','force','no'),(1962,'woocommerce_downloads_require_login','no','no'),(1963,'woocommerce_downloads_grant_access_after_payment','yes','no'),(1964,'woocommerce_downloads_add_hash_to_filename','yes','yes'),(1965,'woocommerce_prices_include_tax','no','yes'),(1966,'woocommerce_tax_based_on','shipping','yes'),(1967,'woocommerce_shipping_tax_class','inherit','yes'),(1968,'woocommerce_tax_round_at_subtotal','no','yes'),(1969,'woocommerce_tax_classes','','yes'),(1970,'woocommerce_tax_display_shop','excl','yes'),(1971,'woocommerce_tax_display_cart','excl','yes'),(1972,'woocommerce_price_display_suffix','','yes'),(1973,'woocommerce_tax_total_display','itemized','no'),(1974,'woocommerce_enable_shipping_calc','yes','no'),(1975,'woocommerce_shipping_cost_requires_address','no','yes'),(1976,'woocommerce_ship_to_destination','billing','no'),(1977,'woocommerce_shipping_debug_mode','no','yes'),(1978,'woocommerce_enable_guest_checkout','yes','no'),(1979,'woocommerce_enable_checkout_login_reminder','no','no'),(1980,'woocommerce_enable_signup_and_login_from_checkout','no','no'),(1981,'woocommerce_enable_myaccount_registration','no','no'),(1982,'woocommerce_registration_generate_username','yes','no'),(1983,'woocommerce_registration_generate_password','yes','no'),(1984,'woocommerce_erasure_request_removes_order_data','no','no'),(1985,'woocommerce_erasure_request_removes_download_data','no','no'),(1986,'woocommerce_allow_bulk_remove_personal_data','no','no'),(1987,'woocommerce_registration_privacy_policy_text','Ваши личные данные будут использоваться для упрощения вашей работы с сайтом, управления доступом к вашей учётной записи и для других целей, описанных в нашей [privacy_policy].','yes'),(1988,'woocommerce_checkout_privacy_policy_text','Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].','yes'),(1989,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(1990,'woocommerce_trash_pending_orders','','no'),(1991,'woocommerce_trash_failed_orders','','no'),(1992,'woocommerce_trash_cancelled_orders','','no'),(1993,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','no'),(1994,'woocommerce_email_from_name','AVGUST PAGE','no'),(1995,'woocommerce_email_from_address','p.leontev@timeweb.ru','no'),(1996,'woocommerce_email_header_image','','no'),(1997,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','no'),(1998,'woocommerce_email_base_color','#96588a','no'),(1999,'woocommerce_email_background_color','#f7f7f7','no'),(2000,'woocommerce_email_body_background_color','#ffffff','no'),(2001,'woocommerce_email_text_color','#3c3c3c','no'),(2002,'woocommerce_cart_page_id','77','no'),(2003,'woocommerce_checkout_page_id','78','no'),(2004,'woocommerce_myaccount_page_id','79','no'),(2005,'woocommerce_terms_page_id','','no'),(2006,'woocommerce_force_ssl_checkout','no','yes'),(2007,'woocommerce_unforce_ssl_checkout','no','yes'),(2008,'woocommerce_checkout_pay_endpoint','order-pay','yes'),(2009,'woocommerce_checkout_order_received_endpoint','order-received','yes'),(2010,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','yes'),(2011,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','yes'),(2012,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','yes'),(2013,'woocommerce_myaccount_orders_endpoint','orders','yes'),(2014,'woocommerce_myaccount_view_order_endpoint','view-order','yes'),(2015,'woocommerce_myaccount_downloads_endpoint','downloads','yes'),(2016,'woocommerce_myaccount_edit_account_endpoint','edit-account','yes'),(2017,'woocommerce_myaccount_edit_address_endpoint','edit-address','yes'),(2018,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','yes'),(2019,'woocommerce_myaccount_lost_password_endpoint','lost-password','yes'),(2020,'woocommerce_logout_endpoint','customer-logout','yes'),(2021,'woocommerce_api_enabled','no','yes'),(2022,'woocommerce_allow_tracking','yes','no'),(2023,'woocommerce_show_marketplace_suggestions','yes','no'),(2024,'woocommerce_single_image_width','600','yes'),(2025,'woocommerce_thumbnail_image_width','300','yes'),(2026,'woocommerce_checkout_highlight_required_fields','yes','yes'),(2027,'woocommerce_demo_store','no','no'),(2183,'category_children','a:0:{}','yes'),(4946,'_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845','1602689281','no'),(4947,'_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}','no'),(4948,'_transient_timeout_wc_low_stock_count','1604676481','no'),(4949,'_transient_wc_low_stock_count','0','no'),(4950,'_transient_timeout_wc_outofstock_count','1604676481','no'),(4951,'_transient_wc_outofstock_count','0','no'),(4852,'action_scheduler_migration_status','complete','yes'),(4941,'_transient_timeout_wc_shipping_method_count_legacy','1604676474','no'),(4942,'_transient_wc_shipping_method_count_legacy','a:2:{s:7:\"version\";s:10:\"1593712828\";s:5:\"value\";i:0;}','no'),(4943,'_transient_wc_count_comments','O:8:\"stdClass\":7:{s:14:\"total_comments\";i:28;s:3:\"all\";i:28;s:9:\"moderated\";s:2:\"27\";s:8:\"approved\";s:1:\"1\";s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}','yes'),(4969,'_transient_is_multi_author','0','yes'),(4970,'_transient_twentyseventeen_categories','1','yes'),(5089,'_transient_timeout__woocommerce_helper_subscriptions','1602275883','no'),(5090,'_transient__woocommerce_helper_subscriptions','a:0:{}','no'),(4982,'_site_transient_timeout_browser_5901347e05a2a24cc4acfb6bf0b38ab9','1602689349','no'),(4983,'_site_transient_browser_5901347e05a2a24cc4acfb6bf0b38ab9','a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(4,1,'_edit_lock','1580122956:1'),(9,11,'_wp_attached_file','2020/01/wllpp-1.jpg'),(10,11,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:950;s:6:\"height\";i:534;s:4:\"file\";s:19:\"2020/01/wllpp-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"wllpp-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"wllpp-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"wllpp-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:19:\"wllpp-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(11,12,'_wp_attached_file','2020/01/cropped-wllpp-1.jpg'),(12,12,'_wp_attachment_context','custom-logo'),(13,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:27:\"2020/01/cropped-wllpp-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cropped-wllpp-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:27:\"cropped-wllpp-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(51,34,'_wp_attachment_metadata','a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:130106.28172588833;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.09219549442027235;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:4708604;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:288;s:16:\"length_formatted\";s:4:\"4:48\";s:6:\"artist\";s:8:\"???RAVEN\";s:5:\"title\";s:67:\"Old School Asian Hip-hop Instrumental ¦ ٭SENTOKI٭ ¦ Prod. Raven\";s:11:\"initial_key\";s:2:\"6m\";s:3:\"bpm\";s:3:\"130\";}'),(19,16,'_wp_attached_file','2020/01/Снимок-экрана-от-2020-01-27-18-57-50.png'),(20,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1455;s:6:\"height\";i:415;s:4:\"file\";s:62:\"2020/01/Снимок-экрана-от-2020-01-27-18-57-50.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Снимок-экрана-от-2020-01-27-18-57-50-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:63:\"Снимок-экрана-от-2020-01-27-18-57-50-1024x292.png\";s:5:\"width\";i:1024;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"Снимок-экрана-от-2020-01-27-18-57-50-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:62:\"Снимок-экрана-от-2020-01-27-18-57-50-768x219.png\";s:5:\"width\";i:768;s:6:\"height\";i:219;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:62:\"Снимок-экрана-от-2020-01-27-18-57-50-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(21,17,'_wp_attached_file','2020/01/cropped-Снимок-экрана-от-2020-01-27-18-57-50.png'),(22,17,'_wp_attachment_context','site-icon'),(23,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:70:\"2020/01/cropped-Снимок-экрана-от-2020-01-27-18-57-50.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:70:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:68:\"cropped-Снимок-экрана-от-2020-01-27-18-57-50-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(50,34,'_wp_attached_file','2020/03/Old-School-Asian-Hip-hop-Instrumental-¦-٭SENTOKI٭-¦-Prod.-Raven.mp3'),(48,31,'_edit_lock','1584557921:1'),(28,20,'_wp_attached_file','2020/01/ubuntu-19.10-default-wallpaper.jpg'),(29,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:950;s:6:\"height\";i:534;s:4:\"file\";s:42:\"2020/01/ubuntu-19.10-default-wallpaper.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"ubuntu-19.10-default-wallpaper-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"ubuntu-19.10-default-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"ubuntu-19.10-default-wallpaper-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:42:\"ubuntu-19.10-default-wallpaper-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(30,21,'_wp_attached_file','2020/01/cropped-ubuntu-19.10-default-wallpaper.jpg'),(31,21,'_wp_attachment_context','custom-header'),(32,21,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:50:\"2020/01/cropped-ubuntu-19.10-default-wallpaper.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"cropped-ubuntu-19.10-default-wallpaper-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"cropped-ubuntu-19.10-default-wallpaper-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"cropped-ubuntu-19.10-default-wallpaper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"cropped-ubuntu-19.10-default-wallpaper-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"cropped-ubuntu-19.10-default-wallpaper-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:52:\"cropped-ubuntu-19.10-default-wallpaper-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:50:\"cropped-ubuntu-19.10-default-wallpaper-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:20;}'),(33,21,'_wp_attachment_custom_header_last_used_twentyseventeen','1580219389'),(34,21,'_wp_attachment_is_custom_header','twentyseventeen'),(36,23,'_wp_attached_file','2020/01/wllpp-1-1.jpg'),(37,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:950;s:6:\"height\";i:534;s:4:\"file\";s:21:\"2020/01/wllpp-1-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"wllpp-1-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"wllpp-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"wllpp-1-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:21:\"wllpp-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(38,24,'_wp_attached_file','2020/01/cropped-wllpp-1-1.jpg'),(39,24,'_wp_attachment_context','custom-header'),(40,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:29:\"2020/01/cropped-wllpp-1-1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-wllpp-1-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"cropped-wllpp-1-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-wllpp-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-wllpp-1-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"cropped-wllpp-1-1-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:31:\"cropped-wllpp-1-1-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:29:\"cropped-wllpp-1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:23;}'),(41,24,'_wp_attachment_custom_header_last_used_twentyseventeen','1580219441'),(42,24,'_wp_attachment_is_custom_header','twentyseventeen'),(44,26,'_edit_lock','1580298187:1'),(52,35,'_wp_attached_file','2020/03/Sv615fI7NDk.jpg'),(53,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:23:\"2020/03/Sv615fI7NDk.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Sv615fI7NDk-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Sv615fI7NDk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"Sv615fI7NDk-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"Sv615fI7NDk-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(54,36,'_wp_attached_file','2020/03/IMGP4264-scaled.jpg'),(55,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2020/03/IMGP4264-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMGP4264-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMGP4264-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMGP4264-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMGP4264-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMGP4264-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMGP4264-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:22:\"IMGP4264-2000x1200.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"IMGP4264-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:14:\"(C)VICTOR AZEN\";s:6:\"camera\";s:10:\"PENTAX K-1\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1551477554\";s:9:\"copyright\";s:23:\"AZEN VICTOR PHOTOGRAPHY\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:4:\"2500\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMGP4264.jpg\";}'),(56,37,'_wp_attached_file','2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3'),(57,38,'_wp_attached_file','2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit-mp3-image.jpg'),(58,38,'_cover_hash','758a809cf01d618ed4af32b60875a2b2'),(59,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:64:\"2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit-mp3-image.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"Oliver-Heldens-Gecko-Orchestral-Intro-Edit-mp3-image-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"Oliver-Heldens-Gecko-Orchestral-Intro-Edit-mp3-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:64:\"Oliver-Heldens-Gecko-Orchestral-Intro-Edit-mp3-image-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(60,37,'_thumbnail_id','38'),(61,37,'_wp_attachment_metadata','a:29:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:5:\"codec\";s:4:\"LAME\";s:7:\"encoder\";s:10:\"LAME3.98.2\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:15:\"--preset insane\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:11942037;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:295;s:16:\"length_formatted\";s:4:\"4:55\";s:5:\"album\";s:16:\"Serious Beats 77\";s:6:\"artist\";s:14:\"Oliver Heldens\";s:4:\"band\";s:15:\"Various Artists\";s:7:\"comment\";s:11:\"541 Belgium\";s:16:\"encoder_settings\";s:12:\"LAME v3.98.4\";s:5:\"genre\";s:5:\"House\";s:9:\"publisher\";s:3:\"541\";s:5:\"title\";s:29:\"Gecko (Orchestral Intro Edit)\";s:12:\"track_number\";s:2:\"36\";s:4:\"year\";s:4:\"2014\";s:4:\"text\";s:10:\"2014-03-14\";s:8:\"url_user\";s:22:\"http://play.google.com\";s:5:\"image\";a:3:{s:4:\"mime\";s:10:\"image/jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;}}'),(63,31,'enclosure','http://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\r\n11942037\r\naudio/mpeg\r\n'),(84,48,'_wp_attached_file','2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_.mp3'),(85,48,'_wp_attachment_metadata','a:19:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10563972;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:263;s:16:\"length_formatted\";s:4:\"4:23\";s:10:\"encoded_by\";s:20:\"LAME in FL Studio 11\";s:5:\"title\";s:31:\"DJRU_OnEMaX-Dj_OnEMaX_-_island_\";s:11:\"initial_key\";s:2:\"8m\";s:4:\"year\";s:4:\"2016\";s:3:\"bpm\";s:3:\"128\";}'),(65,40,'_wp_attached_file','2020/03/meLBK48Fxmc.jpg'),(66,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:461;s:4:\"file\";s:23:\"2020/03/meLBK48Fxmc.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"meLBK48Fxmc-300x138.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"meLBK48Fxmc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"meLBK48Fxmc-768x354.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"meLBK48Fxmc-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(67,41,'_wp_attached_file','2020/03/cropped-meLBK48Fxmc.jpg'),(68,41,'_wp_attachment_context','custom-logo'),(69,41,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:458;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2020/03/cropped-meLBK48Fxmc.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-meLBK48Fxmc-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-meLBK48Fxmc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:31:\"cropped-meLBK48Fxmc-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(70,42,'_wp_attached_file','2020/03/av.jpg'),(71,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:334;s:6:\"height\";i:355;s:4:\"file\";s:14:\"2020/03/av.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"av-282x300.jpg\";s:5:\"width\";i:282;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"av-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:14:\"av-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(72,43,'_wp_attached_file','2020/03/cropped-av.jpg'),(73,43,'_wp_attachment_context','custom-logo'),(74,43,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:246;s:6:\"height\";i:250;s:4:\"file\";s:22:\"2020/03/cropped-av.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cropped-av-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"cropped-av-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),(78,45,'_wp_attached_file','2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit-1.mp3'),(79,45,'_thumbnail_id','38'),(80,45,'_wp_attachment_metadata','a:32:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:5:\"codec\";s:4:\"LAME\";s:7:\"encoder\";s:10:\"LAME3.98.2\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:15:\"--preset insane\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:12028312;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:295;s:16:\"length_formatted\";s:4:\"4:55\";s:5:\"album\";s:16:\"Serious Beats 77\";s:4:\"band\";s:15:\"Various Artists\";s:16:\"encoder_settings\";s:12:\"LAME v3.98.4\";s:5:\"genre\";s:5:\"House\";s:5:\"title\";s:29:\"Gecko (Orchestral Intro Edit)\";s:4:\"text\";s:7:\"ip date\";s:8:\"url_user\";s:22:\"http://play.google.com\";s:6:\"artist\";s:14:\"Oliver Heldens\";s:9:\"publisher\";s:3:\"541\";s:8:\"composer\";s:14:\"Oliver Heldens\";s:12:\"track_number\";s:2:\"36\";s:11:\"initial_key\";s:3:\"11m\";s:7:\"comment\";s:11:\"541 Belgium\";s:4:\"year\";s:4:\"2014\";s:3:\"bpm\";s:3:\"125\";s:5:\"image\";a:3:{s:4:\"mime\";s:10:\"image/jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;}}'),(87,31,'enclosure','http://avgust.ml/wp-content/uploads/2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_.mp3\r\n10563972\r\naudio/mpeg\r\n'),(88,51,'_wp_attached_file','2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_-1.mp3'),(89,51,'_wp_attachment_metadata','a:19:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:10563972;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:263;s:16:\"length_formatted\";s:4:\"4:23\";s:10:\"encoded_by\";s:20:\"LAME in FL Studio 11\";s:5:\"title\";s:31:\"DJRU_OnEMaX-Dj_OnEMaX_-_island_\";s:11:\"initial_key\";s:2:\"8m\";s:4:\"year\";s:4:\"2016\";s:3:\"bpm\";s:3:\"128\";}'),(90,52,'_wp_attached_file','2020/03/ferreck-dawn-rene-amesz_-_lord.mp3'),(91,53,'_wp_attached_file','2020/03/ferreck-dawn-rene-amesz_-_lord-mp3-image.jpg'),(92,53,'_cover_hash','7c070026ad6dfb1d34b6234774935510'),(93,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:604;s:6:\"height\";i:604;s:4:\"file\";s:52:\"2020/03/ferreck-dawn-rene-amesz_-_lord-mp3-image.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"ferreck-dawn-rene-amesz_-_lord-mp3-image-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"ferreck-dawn-rene-amesz_-_lord-mp3-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:52:\"ferreck-dawn-rene-amesz_-_lord-mp3-image-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(94,52,'_thumbnail_id','53'),(95,52,'_wp_attachment_metadata','a:27:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:5:\"codec\";s:4:\"LAME\";s:7:\"encoder\";s:8:\"LAME3.92\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:6737921;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:165;s:16:\"length_formatted\";s:4:\"2:45\";s:5:\"album\";s:124:\"Speeeedy EDM Blog - главный источник электронной музыки вконтакте!  vk.com/speeeedy\";s:6:\"artist\";s:29:\"Ferreck Dawn &amp; Rene Amesz\";s:5:\"genre\";s:5:\"House\";s:5:\"title\";s:19:\"Lord (Original Mix)\";s:8:\"url_user\";s:15:\"vk.com/speeeedy\";s:11:\"initial_key\";s:2:\"6m\";s:7:\"comment\";s:124:\"Speeeedy EDM Blog - главный источник электронной музыки вконтакте!  vk.com/speeeedy\";s:20:\"unsynchronised_lyric\";s:124:\"Speeeedy EDM Blog - главный источник электронной музыки вконтакте!  vk.com/speeeedy\";s:4:\"year\";s:4:\"2016\";s:3:\"bpm\";s:3:\"121\";s:5:\"image\";a:3:{s:4:\"mime\";s:10:\"image/jpeg\";s:5:\"width\";i:604;s:6:\"height\";i:604;}}'),(96,54,'_edit_lock','1584559864:1'),(97,55,'_wp_attached_file','2020/03/246225200_154132.jpg'),(98,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:28:\"2020/03/246225200_154132.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"246225200_154132-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"246225200_154132-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"246225200_154132-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"246225200_154132-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"246225200_154132-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(99,56,'_wp_attached_file','2020/03/SlRUjIo7e3c.jpg'),(100,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1215;s:6:\"height\";i:2160;s:4:\"file\";s:23:\"2020/03/SlRUjIo7e3c.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"SlRUjIo7e3c-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"SlRUjIo7e3c-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"SlRUjIo7e3c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"SlRUjIo7e3c-768x1365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"SlRUjIo7e3c-864x1536.jpg\";s:5:\"width\";i:864;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"SlRUjIo7e3c-1152x2048.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:25:\"SlRUjIo7e3c-1215x1200.jpg\";s:5:\"width\";i:1215;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:23:\"SlRUjIo7e3c-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(101,59,'_wp_attached_file','2020/03/IMG_7585.jpg'),(102,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2020/03/IMG_7585.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_7585-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_7585-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_7585-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"IMG_7585-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 6D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1530207974\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:7:\"0.00025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(124,75,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(123,75,'_wp_attached_file','woocommerce-placeholder.png'),(117,67,'_edit_lock','1584560003:1'),(120,67,'_oembed_e94557e1275e2968c7c57b50def864b3','<blockquote class=\"wp-embedded-content\" data-secret=\"fvELMEKXbN\"><a href=\"http://avgust.ml/%d1%84%d0%be%d1%82%d1%87%d0%ba%d0%b8/\">Фотчки</a></blockquote><iframe title=\"«Фотчки» &#8212; AVGUST PAGE\" class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"http://avgust.ml/%d1%84%d0%be%d1%82%d1%87%d0%ba%d0%b8/embed/#?secret=fvELMEKXbN\" data-secret=\"fvELMEKXbN\" width=\"525\" height=\"296\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>'),(121,67,'_oembed_time_e94557e1275e2968c7c57b50def864b3','1584559983'),(125,53,'_wp_attachment_image_alt','bcf'),(126,80,'_edit_last','1'),(127,80,'_edit_lock','1593712938:1'),(128,80,'_thumbnail_id','53'),(129,80,'_regular_price','100'),(130,80,'_sale_price','99'),(131,80,'total_sales','0'),(132,80,'_tax_status','taxable'),(133,80,'_tax_class',''),(134,80,'_manage_stock','no'),(135,80,'_backorders','no'),(136,80,'_sold_individually','no'),(137,80,'_virtual','no'),(138,80,'_downloadable','no'),(139,80,'_download_limit','-1'),(140,80,'_download_expiry','-1'),(141,80,'_stock',NULL),(142,80,'_stock_status','instock'),(143,80,'_wc_average_rating','0'),(144,80,'_wc_review_count','0'),(145,80,'_product_version','4.2.2'),(146,80,'_price','99'),(147,78,'_edit_lock','1593712876:1'),(148,82,'_form','<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]'),(149,82,'_mail','a:8:{s:7:\"subject\";s:28:\"AVGUST PAGE \"[your-subject]\"\";s:6:\"sender\";s:33:\"AVGUST PAGE <wordpress@avgust.ml>\";s:4:\"body\";s:190:\"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта AVGUST PAGE (http://avgust.ml)\";s:9:\"recipient\";s:20:\"p.leontev@timeweb.ru\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(150,82,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:28:\"AVGUST PAGE \"[your-subject]\"\";s:6:\"sender\";s:33:\"AVGUST PAGE <wordpress@avgust.ml>\";s:4:\"body\";s:131:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта AVGUST PAGE (http://avgust.ml)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:30:\"Reply-To: p.leontev@timeweb.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),(151,82,'_messages','a:8:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:60:\"Поле обязательно для заполнения.\";s:16:\"invalid_too_long\";s:39:\"Поле слишком длинное.\";s:17:\"invalid_too_short\";s:41:\"Поле слишком короткое.\";}'),(152,82,'_additional_settings',NULL),(153,82,'_locale','ru_RU');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-08-06 11:12:14','2019-08-06 08:12:14','<!-- wp:paragraph -->\n<p>It\'s my site<br>It\'s now or never<br>I ain\'t gonna live forever<br>I just want to live while I\'m alive</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iit\'s my site</p>\n<!-- /wp:paragraph -->','avgust site','','publish','open','open','','%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80','','','2020-01-27 14:04:58','2020-01-27 11:04:58','',0,'http://ca60673-wordpress.tw1.ru/?p=1',0,'post','',1),(2,1,'2019-08-06 11:12:14','2019-08-06 08:12:14','<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://ca60673-wordpress.tw1.ru/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->','Пример страницы','','publish','closed','open','','sample-page','','','2019-08-06 11:12:14','2019-08-06 08:12:14','',0,'http://ca60673-wordpress.tw1.ru/?page_id=2',0,'page','',0),(3,1,'2019-08-06 11:12:14','2019-08-06 08:12:14','<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://ca60673-wordpress.tw1.ru.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->','Политика конфиденциальности','','draft','closed','open','','privacy-policy','','','2019-08-06 11:12:14','2019-08-06 08:12:14','',0,'http://ca60673-wordpress.tw1.ru/?page_id=3',0,'page','',0),(7,1,'2020-01-27 14:03:02','2020-01-27 11:03:02','<!-- wp:paragraph -->\n<p>hello ins my site</p>\n<!-- /wp:paragraph -->','avgust site','','inherit','closed','closed','','1-autosave-v1','','','2020-01-27 14:03:02','2020-01-27 11:03:02','',1,'http://ca60673-wordpress.tw1.ru/2020/01/27/1-autosave-v1/',0,'revision','',0),(8,1,'2020-01-27 14:04:20','2020-01-27 11:04:20','<!-- wp:paragraph -->\n<p>It\'s my site<br>It\'s now or never<br>I ain\'t gonna live forever<br>I just want to live while I\'m alive</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>it\'s my site</p>\n<!-- /wp:paragraph -->','avgust site','','inherit','closed','closed','','1-revision-v1','','','2020-01-27 14:04:20','2020-01-27 11:04:20','',1,'http://ca60673-wordpress.tw1.ru/2020/01/27/1-revision-v1/',0,'revision','',0),(9,1,'2020-01-27 14:04:58','2020-01-27 11:04:58','<!-- wp:paragraph -->\n<p>It\'s my site<br>It\'s now or never<br>I ain\'t gonna live forever<br>I just want to live while I\'m alive</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Iit\'s my site</p>\n<!-- /wp:paragraph -->','avgust site','','inherit','closed','closed','','1-revision-v1','','','2020-01-27 14:04:58','2020-01-27 11:04:58','',1,'http://ca60673-wordpress.tw1.ru/2020/01/27/1-revision-v1/',0,'revision','',0),(34,1,'2020-03-18 21:47:28','2020-03-18 18:47:28','','Old-School-Asian-Hip-hop-Instrumental-¦-٭SENTOKI٭-¦-Prod.-Raven','','inherit','open','closed','','old-school-asian-hip-hop-instrumental-%c2%a6-%d9%adsentoki%d9%ad-%c2%a6-prod-raven','','','2020-03-18 21:47:28','2020-03-18 18:47:28','',31,'http://avgust.ml/wp-content/uploads/2020/03/Old-School-Asian-Hip-hop-Instrumental-¦-٭SENTOKI٭-¦-Prod.-Raven.mp3',0,'attachment','audio/mpeg',0),(35,1,'2020-03-18 21:48:14','2020-03-18 18:48:14','','Sv615fI7NDk','','inherit','open','closed','','sv615fi7ndk','','','2020-03-18 21:48:14','2020-03-18 18:48:14','',31,'http://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg',0,'attachment','image/jpeg',0),(11,1,'2020-01-27 14:07:48','2020-01-27 11:07:48','','wllpp (1)','','inherit','open','closed','','wllpp-1','','','2020-01-27 14:07:48','2020-01-27 11:07:48','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/wllpp-1.jpg',0,'attachment','image/jpeg',0),(12,1,'2020-01-27 14:08:00','2020-01-27 11:08:00','http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-wllpp-1.jpg','cropped-wllpp-1.jpg','','inherit','open','closed','','cropped-wllpp-1-jpg','','','2020-01-27 14:08:00','2020-01-27 11:08:00','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-wllpp-1.jpg',0,'attachment','image/jpeg',0),(16,1,'2020-01-28 16:45:17','2020-01-28 13:45:17','','Снимок экрана от 2020-01-27 18-57-50','','inherit','open','closed','','%d1%81%d0%bd%d0%b8%d0%bc%d0%be%d0%ba-%d1%8d%d0%ba%d1%80%d0%b0%d0%bd%d0%b0-%d0%be%d1%82-2020-01-27-18-57-50','','','2020-01-28 16:45:17','2020-01-28 13:45:17','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/Снимок-экрана-от-2020-01-27-18-57-50.png',0,'attachment','image/png',0),(17,1,'2020-01-28 16:45:56','2020-01-28 13:45:56','http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-Снимок-экрана-от-2020-01-27-18-57-50.png','cropped-Снимок-экрана-от-2020-01-27-18-57-50.png','','inherit','open','closed','','cropped-%d1%81%d0%bd%d0%b8%d0%bc%d0%be%d0%ba-%d1%8d%d0%ba%d1%80%d0%b0%d0%bd%d0%b0-%d0%be%d1%82-2020-01-27-18-57-50-png','','','2020-01-28 16:45:56','2020-01-28 13:45:56','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-Снимок-экрана-от-2020-01-27-18-57-50.png',0,'attachment','image/png',0),(31,1,'2020-03-18 21:45:25','2020-03-18 18:45:25','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":48} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_.mp3\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','publish','open','open','','31','','','2020-03-18 21:57:29','2020-03-18 18:57:29','',0,'http://avgust.ml/?p=31',0,'post','',0),(32,1,'2020-03-18 21:45:11','2020-03-18 18:45:11','<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-revision-v1','','','2020-03-18 21:45:11','2020-03-18 18:45:11','',31,'https://avgust.ml/2020/03/18/31-revision-v1/',0,'revision','',0),(20,1,'2020-01-28 16:49:39','2020-01-28 13:49:39','','ubuntu-19.10-default-wallpaper','','inherit','open','closed','','ubuntu-19-10-default-wallpaper','','','2020-01-28 16:49:39','2020-01-28 13:49:39','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/ubuntu-19.10-default-wallpaper.jpg',0,'attachment','image/jpeg',0),(21,1,'2020-01-28 16:49:46','2020-01-28 13:49:46','','cropped-ubuntu-19.10-default-wallpaper.jpg','','inherit','open','closed','','cropped-ubuntu-19-10-default-wallpaper-jpg','','','2020-01-28 16:49:46','2020-01-28 13:49:46','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-ubuntu-19.10-default-wallpaper.jpg',0,'attachment','image/jpeg',0),(23,1,'2020-01-28 16:50:33','2020-01-28 13:50:33','','wllpp (1)','','inherit','open','closed','','wllpp-1-2','','','2020-01-28 16:50:33','2020-01-28 13:50:33','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/wllpp-1-1.jpg',0,'attachment','image/jpeg',0),(24,1,'2020-01-28 16:50:40','2020-01-28 13:50:40','','cropped-wllpp-1-1.jpg','','inherit','open','closed','','cropped-wllpp-1-1-jpg','','','2020-01-28 16:50:40','2020-01-28 13:50:40','',0,'http://ca60673-wordpress.tw1.ru/wp-content/uploads/2020/01/cropped-wllpp-1-1.jpg',0,'attachment','image/jpeg',0),(26,1,'2020-01-29 14:42:57','2020-01-29 11:42:57','<!-- wp:paragraph -->\n<p>www.google.com</p>\n<!-- /wp:paragraph -->','','','publish','open','open','','26','','','2020-01-29 14:42:57','2020-01-29 11:42:57','',0,'http://ca60673-wordpress.tw1.ru/?p=26',0,'post','',0),(27,1,'2020-01-29 14:42:57','2020-01-29 11:42:57','<!-- wp:paragraph -->\n<p>www.google.com</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','26-revision-v1','','','2020-01-29 14:42:57','2020-01-29 11:42:57','',26,'http://ca60673-wordpress.tw1.ru/2020/01/29/26-revision-v1/',0,'revision','',0),(36,1,'2020-03-18 21:49:31','2020-03-18 18:49:31','','IMGP4264','','inherit','open','closed','','imgp4264','','','2020-03-18 21:49:31','2020-03-18 18:49:31','',31,'http://avgust.ml/wp-content/uploads/2020/03/IMGP4264.jpg',0,'attachment','image/jpeg',0),(45,1,'2020-03-18 21:56:29','2020-03-18 18:56:29','','Oliver-Heldens-Gecko-Orchestral-Intro-Edit-1','','inherit','open','closed','','oliver-heldens-gecko-orchestral-intro-edit-1','','','2020-03-18 21:56:29','2020-03-18 18:56:29','',31,'http://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit-1.mp3',0,'attachment','audio/mpeg',0),(46,1,'2020-03-18 21:56:31','2020-03-18 18:56:31','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":45} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit-1.mp3\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-revision-v1','','','2020-03-18 21:56:31','2020-03-18 18:56:31','',31,'http://avgust.ml/2020/03/18/31-revision-v1/',0,'revision','',0),(37,1,'2020-03-18 21:50:54','2020-03-18 18:50:54','','Oliver-Heldens-Gecko-Orchestral-Intro-Edit','','inherit','open','closed','','oliver-heldens-gecko-orchestral-intro-edit','','','2020-03-18 21:50:54','2020-03-18 18:50:54','',31,'http://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3',0,'attachment','audio/mpeg',0),(38,1,'2020-03-18 21:50:54','2020-03-18 18:50:54','','','','inherit','open','closed','','38','','','2020-03-18 21:50:54','2020-03-18 18:50:54','',0,'https://avgust.ml/38/',0,'attachment','image/jpeg',0),(47,1,'2020-03-18 21:56:49','2020-03-18 18:56:49','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio -->\n<figure class=\"wp-block-audio\"><audio controls src=\"blob:https://avgust.ml/ca838720-1a62-4673-87f3-c0f7d1ae95e5\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-revision-v1','','','2020-03-18 21:56:49','2020-03-18 18:56:49','',31,'http://avgust.ml/2020/03/18/31-revision-v1/',0,'revision','',0),(39,1,'2020-03-18 21:51:08','2020-03-18 18:51:08','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":34} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Old-School-Asian-Hip-hop-Instrumental-¦-٭SENTOKI٭-¦-Prod.-Raven.mp3\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-revision-v1','','','2020-03-18 21:51:08','2020-03-18 18:51:08','',31,'http://avgust.ml/2020/03/18/31-revision-v1/',0,'revision','',0),(40,1,'2020-03-18 21:53:50','2020-03-18 18:53:50','','meLBK48Fxmc','','inherit','open','closed','','melbk48fxmc','','','2020-03-18 21:53:50','2020-03-18 18:53:50','',0,'http://avgust.ml/wp-content/uploads/2020/03/meLBK48Fxmc.jpg',0,'attachment','image/jpeg',0),(41,1,'2020-03-18 21:54:00','2020-03-18 18:54:00','http://avgust.ml/wp-content/uploads/2020/03/cropped-meLBK48Fxmc.jpg','cropped-meLBK48Fxmc.jpg','','inherit','open','closed','','cropped-melbk48fxmc-jpg','','','2020-03-18 21:54:00','2020-03-18 18:54:00','',0,'http://avgust.ml/wp-content/uploads/2020/03/cropped-meLBK48Fxmc.jpg',0,'attachment','image/jpeg',0),(42,1,'2020-03-18 21:54:16','2020-03-18 18:54:16','','av','','inherit','open','closed','','av','','','2020-03-18 21:54:16','2020-03-18 18:54:16','',0,'http://avgust.ml/wp-content/uploads/2020/03/av.jpg',0,'attachment','image/jpeg',0),(43,1,'2020-03-18 21:54:26','2020-03-18 18:54:26','http://avgust.ml/wp-content/uploads/2020/03/cropped-av.jpg','cropped-av.jpg','','inherit','open','closed','','cropped-av-jpg','','','2020-03-18 21:54:26','2020-03-18 18:54:26','',0,'http://avgust.ml/wp-content/uploads/2020/03/cropped-av.jpg',0,'attachment','image/jpeg',0),(48,1,'2020-03-18 21:56:50','2020-03-18 18:56:50','','DJRU_OnEMaX-Dj_OnEMaX_-_island_','','inherit','open','closed','','djru_onemax-dj_onemax_-_island_','','','2020-03-18 21:56:50','2020-03-18 18:56:50','',31,'http://avgust.ml/wp-content/uploads/2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_.mp3',0,'attachment','audio/mpeg',0),(49,1,'2020-03-18 21:57:29','2020-03-18 18:57:29','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":48} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_.mp3\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-revision-v1','','','2020-03-18 21:57:29','2020-03-18 18:57:29','',31,'http://avgust.ml/2020/03/18/31-revision-v1/',0,'revision','',0),(50,1,'2020-03-18 22:00:07','2020-03-18 19:00:07','<!-- wp:image {\"id\":36,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMGP4264-1024x683.jpg\" alt=\"\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":37} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/Oliver-Heldens-Gecko-Orchestral-Intro-Edit.mp3\"></audio></figure>\n<!-- /wp:audio -->\n\n<!-- wp:image {\"id\":35,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/Sv615fI7NDk.jpg\" alt=\"\" class=\"wp-image-35\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:audio {\"id\":52} -->\n<figure class=\"wp-block-audio\"><audio controls src=\"https://avgust.ml/wp-content/uploads/2020/03/ferreck-dawn-rene-amesz_-_lord.mp3\"></audio><figcaption>Послушаешь?))</figcaption></figure>\n<!-- /wp:audio -->\n\n<!-- wp:paragraph -->\n<p>добавляю записи, развлекуха в вордпресс</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','31-autosave-v1','','','2020-03-18 22:00:07','2020-03-18 19:00:07','',31,'http://avgust.ml/2020/03/18/31-autosave-v1/',0,'revision','',0),(51,1,'2020-03-18 21:58:43','2020-03-18 18:58:43','','DJRU_OnEMaX-Dj_OnEMaX_-_island_-1','','inherit','open','closed','','djru_onemax-dj_onemax_-_island_-1','','','2020-03-18 21:58:43','2020-03-18 18:58:43','',31,'http://avgust.ml/wp-content/uploads/2020/03/DJRU_OnEMaX-Dj_OnEMaX_-_island_-1.mp3',0,'attachment','audio/mpeg',0),(52,1,'2020-03-18 22:00:07','2020-03-18 19:00:07','','ferreck-dawn-rene-amesz_-_lord','','inherit','open','closed','','ferreck-dawn-rene-amesz_-_lord','','','2020-03-18 22:00:07','2020-03-18 19:00:07','',31,'http://avgust.ml/wp-content/uploads/2020/03/ferreck-dawn-rene-amesz_-_lord.mp3',0,'attachment','audio/mpeg',0),(53,1,'2020-03-18 22:00:07','2020-03-18 19:00:07','','fff','','inherit','open','closed','','53','','','2020-07-02 21:02:09','2020-07-02 18:02:09','',0,'https://avgust.ml/53/',0,'attachment','image/jpeg',0),(54,1,'2020-03-18 22:07:35','2020-03-18 19:07:35','<!-- wp:image {\"id\":55,\"width\":576,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/246225200_154132-1024x768.jpg\" alt=\"\" class=\"wp-image-55\" width=\"576\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":59,\"width\":576,\"height\":384,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMG_7585.jpg\" alt=\"\" class=\"wp-image-59\" width=\"576\" height=\"384\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":56,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/SlRUjIo7e3c-576x1024.jpg\" alt=\"\" class=\"wp-image-56\"/></figure>\n<!-- /wp:image -->','Фотчки','','publish','closed','closed','','%d1%84%d0%be%d1%82%d1%87%d0%ba%d0%b8','','','2020-03-18 22:07:35','2020-03-18 19:07:35','',0,'https://avgust.ml/?page_id=54',0,'page','',0),(55,1,'2020-03-18 22:02:52','2020-03-18 19:02:52','','246225200_154132','','inherit','open','closed','','246225200_154132','','','2020-03-18 22:02:52','2020-03-18 19:02:52','',54,'http://avgust.ml/wp-content/uploads/2020/03/246225200_154132.jpg',0,'attachment','image/jpeg',0),(56,1,'2020-03-18 22:03:23','2020-03-18 19:03:23','','SlRUjIo7e3c','','inherit','open','closed','','slrujio7e3c','','','2020-03-18 22:03:23','2020-03-18 19:03:23','',54,'http://avgust.ml/wp-content/uploads/2020/03/SlRUjIo7e3c.jpg',0,'attachment','image/jpeg',0),(57,1,'2020-03-18 22:03:29','2020-03-18 19:03:29','<!-- wp:image {\"id\":55,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/246225200_154132-1024x768.jpg\" alt=\"\" class=\"wp-image-55\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":56,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/SlRUjIo7e3c-576x1024.jpg\" alt=\"\" class=\"wp-image-56\"/></figure>\n<!-- /wp:image -->','Фотчки','','inherit','closed','closed','','54-revision-v1','','','2020-03-18 22:03:29','2020-03-18 19:03:29','',54,'https://avgust.ml/2020/03/18/54-revision-v1/',0,'revision','',0),(58,1,'2020-03-18 22:04:58','2020-03-18 19:04:58','<!-- wp:image {\"id\":55,\"width\":576,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/246225200_154132-1024x768.jpg\" alt=\"\" class=\"wp-image-55\" width=\"576\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":56,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/SlRUjIo7e3c-576x1024.jpg\" alt=\"\" class=\"wp-image-56\"/></figure>\n<!-- /wp:image -->','Фотчки','','inherit','closed','closed','','54-revision-v1','','','2020-03-18 22:04:58','2020-03-18 19:04:58','',54,'https://avgust.ml/2020/03/18/54-revision-v1/',0,'revision','',0),(59,1,'2020-03-18 22:07:17','2020-03-18 19:07:17','','IMG_7585','','inherit','open','closed','','img_7585','','','2020-03-18 22:07:17','2020-03-18 19:07:17','',54,'http://avgust.ml/wp-content/uploads/2020/03/IMG_7585.jpg',0,'attachment','image/jpeg',0),(60,1,'2020-03-18 22:07:25','2020-03-18 19:07:25','<!-- wp:image {\"id\":55,\"width\":576,\"height\":428,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/246225200_154132-1024x768.jpg\" alt=\"\" class=\"wp-image-55\" width=\"576\" height=\"428\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":59,\"width\":576,\"height\":384,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-default\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/IMG_7585.jpg\" alt=\"\" class=\"wp-image-59\" width=\"576\" height=\"384\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":56,\"sizeSlug\":\"large\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://avgust.ml/wp-content/uploads/2020/03/SlRUjIo7e3c-576x1024.jpg\" alt=\"\" class=\"wp-image-56\"/></figure>\n<!-- /wp:image -->','Фотчки','','inherit','closed','closed','','54-revision-v1','','','2020-03-18 22:07:25','2020-03-18 19:07:25','',54,'https://avgust.ml/2020/03/18/54-revision-v1/',0,'revision','',0),(82,1,'2020-07-02 21:18:46','2020-07-02 18:18:46','<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit \"Отправить\"]\nAVGUST PAGE \"[your-subject]\"\nAVGUST PAGE <wordpress@avgust.ml>\nОт: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта AVGUST PAGE (http://avgust.ml)\np.leontev@timeweb.ru\nReply-To: [your-email]\n\n0\n0\n\nAVGUST PAGE \"[your-subject]\"\nAVGUST PAGE <wordpress@avgust.ml>\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта AVGUST PAGE (http://avgust.ml)\n[your-email]\nReply-To: p.leontev@timeweb.ru\n\n0\n0\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.','Контактная форма 1','','publish','closed','closed','','%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1','','','2020-07-02 21:18:46','2020-07-02 18:18:46','',0,'http://avgust.ml/?post_type=wpcf7_contact_form&p=82',0,'wpcf7_contact_form','',0),(80,1,'2020-07-02 21:02:36','2020-07-02 18:02:36','fbfbdfbd','fgn','ngnvgngnvgn','publish','open','closed','','fgn','','','2020-07-03 00:25:57','2020-07-02 21:25:57','',0,'http://avgust.ml/?post_type=product&#038;p=80',0,'product','',0),(81,1,'2020-07-02 21:02:40','2020-07-02 18:02:40','fbfbdfbd','fgn','ngnvgngnvgn','inherit','closed','closed','','80-autosave-v1','','','2020-07-02 21:02:40','2020-07-02 18:02:40','',80,'http://avgust.ml/2020/07/02/80-autosave-v1/',0,'revision','',0),(77,1,'2020-07-02 20:56:20','2020-07-02 17:56:20','<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->','Корзина','','publish','closed','closed','','cart','','','2020-07-02 20:56:20','2020-07-02 17:56:20','',0,'http://avgust.ml/cart/',0,'page','',0),(78,1,'2020-07-02 20:56:20','2020-07-02 17:56:20','<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->','Оформление заказа','','publish','closed','closed','','checkout','','','2020-07-02 20:56:20','2020-07-02 17:56:20','',0,'http://avgust.ml/checkout/',0,'page','',0),(79,1,'2020-07-02 20:56:20','2020-07-02 17:56:20','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','Мой аккаунт','','publish','closed','closed','','my-account','','','2020-07-02 20:56:20','2020-07-02 17:56:20','',0,'http://avgust.ml/my-account/',0,'page','',0),(75,1,'2020-07-02 20:55:01','2020-07-02 17:55:01','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2020-07-02 20:55:01','2020-07-02 17:55:01','',0,'http://avgust.ml/wp-content/uploads/2020/07/woocommerce-placeholder.png',0,'attachment','image/png',0),(76,1,'2020-07-02 20:56:20','2020-07-02 17:56:20','','Магазин','','publish','closed','closed','','shop','','','2020-07-02 20:56:20','2020-07-02 17:56:20','',0,'http://avgust.ml/shop/',0,'page','',0),(67,1,'2020-03-18 22:32:07','2020-03-18 19:32:07','<!-- wp:core-embed/wordpress {\"url\":\"https://avgust.ml/фотчки/\",\"type\":\"wp-embed\",\"providerNameSlug\":\"avgust-page\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-avgust-page\"><div class=\"wp-block-embed__wrapper\">\nhttps://avgust.ml/фотчки/\n</div></figure>\n<!-- /wp:core-embed/wordpress -->','','','publish','open','open','','https-avgust-ml-%d1%84%d0%be%d1%82%d1%87%d0%ba%d0%b8','','','2020-03-18 22:33:02','2020-03-18 19:33:02','',0,'https://avgust.ml/?p=67',0,'post','',0),(68,1,'2020-03-18 22:32:07','2020-03-18 19:32:07','','https://avgust.ml/фотчки/','','inherit','closed','closed','','67-revision-v1','','','2020-03-18 22:32:07','2020-03-18 19:32:07','',67,'https://avgust.ml/2020/03/18/67-revision-v1/',0,'revision','',0),(69,1,'2020-03-18 22:32:29','2020-03-18 19:32:29','<!-- wp:core-embed/wordpress {\"url\":\"https://avgust.ml/фотчки/\",\"type\":\"wp-embed\",\"providerNameSlug\":\"avgust-page\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-avgust-page\"><div class=\"wp-block-embed__wrapper\">\nhttps://avgust.ml/фотчки/\n</div></figure>\n<!-- /wp:core-embed/wordpress -->','https://avgust.ml/фотчки/','','inherit','closed','closed','','67-revision-v1','','','2020-03-18 22:32:29','2020-03-18 19:32:29','',67,'https://avgust.ml/2020/03/18/67-revision-v1/',0,'revision','',0),(70,1,'2020-03-18 22:33:03','2020-03-18 19:33:03','<!-- wp:core-embed/wordpress {\"url\":\"https://avgust.ml/фотчки/\",\"type\":\"wp-embed\",\"providerNameSlug\":\"avgust-page\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-avgust-page\"><div class=\"wp-block-embed__wrapper\">\nhttps://avgust.ml/фотчки/\n</div></figure>\n<!-- /wp:core-embed/wordpress -->','https://avgust.ml/фотчки/','','inherit','closed','closed','','67-autosave-v1','','','2020-03-18 22:33:03','2020-03-18 19:33:03','',67,'https://avgust.ml/2020/03/18/67-autosave-v1/',0,'revision','',0),(71,1,'2020-03-18 22:33:02','2020-03-18 19:33:02','<!-- wp:core-embed/wordpress {\"url\":\"https://avgust.ml/фотчки/\",\"type\":\"wp-embed\",\"providerNameSlug\":\"avgust-page\",\"className\":\"\"} -->\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-avgust-page\"><div class=\"wp-block-embed__wrapper\">\nhttps://avgust.ml/фотчки/\n</div></figure>\n<!-- /wp:core-embed/wordpress -->','','','inherit','closed','closed','','67-revision-v1','','','2020-03-18 22:33:02','2020-03-18 19:33:02','',67,'https://avgust.ml/2020/03/18/67-revision-v1/',0,'revision','',0),(83,1,'2020-10-07 18:28:01','0000-00-00 00:00:00','','Черновик','','auto-draft','open','open','','','','','2020-10-07 18:28:01','0000-00-00 00:00:00','',0,'http://avgust.ml/?p=83',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(26,1,0),(31,1,0),(67,1,0),(80,15,0),(80,16,0),(80,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4),(2,2,'product_type','',0,1),(3,3,'product_type','',0,0),(4,4,'product_type','',0,0),(5,5,'product_type','',0,0),(6,6,'product_visibility','',0,0),(7,7,'product_visibility','',0,0),(8,8,'product_visibility','',0,0),(9,9,'product_visibility','',0,0),(10,10,'product_visibility','',0,0),(11,11,'product_visibility','',0,0),(12,12,'product_visibility','',0,0),(13,13,'product_visibility','',0,0),(14,14,'product_visibility','',0,0),(15,15,'product_cat','',0,1),(16,16,'product_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,15,'product_count_product_cat','1'),(2,16,'product_count_product_tag','1');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Без рубрики','%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8',0),(2,'simple','simple',0),(3,'grouped','grouped',0),(4,'variable','variable',0),(5,'external','external',0),(6,'exclude-from-search','exclude-from-search',0),(7,'exclude-from-catalog','exclude-from-catalog',0),(8,'featured','featured',0),(9,'outofstock','outofstock',0),(10,'rated-1','rated-1',0),(11,'rated-2','rated-2',0),(12,'rated-3','rated-3',0),(13,'rated-4','rated-4',0),(14,'rated-5','rated-5',0),(15,'Uncategorized','uncategorized',0),(16,'ff12','ff12',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(33,1,'_order_count','0'),(17,1,'wp_dashboard_quick_press_last_post_id','83'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"92.53.118.0\";}'),(19,1,'wp_user-settings','libraryContent=browse'),(20,1,'wp_user-settings-time','1580123318'),(22,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(23,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(27,1,'_woocommerce_persistent_cart_1','a:1:{s:4:\"cart\";a:1:{s:32:\"f033ab37c30201f73f142449d037028d\";a:6:{s:3:\"key\";s:32:\"f033ab37c30201f73f142449d037028d\";s:10:\"product_id\";i:80;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),(24,1,'_woocommerce_tracks_anon_id','woo:aWRcTDxxDPQDmrFJ2uF+6NrX'),(25,1,'wc_last_active','1602028800'),(26,1,'dismissed_no_secure_connection_notice','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BX0TnCyFkeSRIR5izRA5Z7Y/bRkAuB/','admin','p.leontev@timeweb.ru','','2019-08-06 08:12:14','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_note_actions` VALUES (1,1,'yes-please','Да, пожалуйста!','https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin','actioned',0),(2,2,'open-marketing-hub','Открыть маркетинговый центр','http://avgust.ml/wp-admin/admin.php?page=wc-admin&path=/marketing','actioned',0),(3,3,'connect','Подключить','?page=wc-addons&section=helper','unactioned',0),(4,4,'continue-profiler','Продолжить настройку магазина','http://avgust.ml/wp-admin/admin.php?page=wc-admin&enable_onboarding=1','unactioned',1),(5,4,'skip-profiler','Пропустить установку','http://avgust.ml/wp-admin/admin.php?page=wc-admin&reset_profiler=0','actioned',0),(6,5,'learn-more','Узнать больше','https://woocommerce.com/mobile/','actioned',0);
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
INSERT INTO `wp_wc_admin_notes` VALUES (1,'wc-admin-onboarding-email-marketing','info','en_US','Советы, обновления продуктов и новые идеи','Мы готовы вам помочь — получайте советы, новости о продуктах и вдохновляющие идеи прямо на почту.','mail','{}','unactioned','woocommerce-admin','2020-07-02 17:55:03',NULL,0),(2,'wc-admin-marketing-intro','info','en_US','Найдите свою аудиторию','Расширяйте базу заказчиков и увеличивайте продажи с помощью маркетинговых инструментов для WooCommerce.','speaker','{}','unactioned','woocommerce-admin','2020-07-02 17:55:03',NULL,0),(3,'wc-admin-wc-helper-connection','info','en_US','Подключиться к WooCommerce.com','Подключайтесь, чтобы получать важные уведомления о продукте и обновления.','info','{}','unactioned','woocommerce-admin','2020-07-02 17:55:03',NULL,0),(4,'wc-admin-onboarding-profiler-reminder','update','en_US','Добро пожаловать в WooCommerce! Настройте свой магазин и начните продавать','Мы поможем вам пройти самые важные этапы, чтобы ваш магазин заработал.','info','{}','actioned','woocommerce-admin','2020-07-02 14:55:09',NULL,0),(5,'wc-admin-mobile-app','info','en_US','Установите мобильное приложение Woo','Установите мобильное приложение WooCommerce для управления заказами, получения уведомлений о продажах и просмотра ключевых показателей — где бы вы ни находились.','phone','{}','unactioned','woocommerce-admin','2020-07-04 21:57:46',NULL,0);
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES (15,15);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES (80,'',0,0,99.0000,99.0000,1,NULL,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES (1,'Пониженная ставка','%d0%bf%d0%be%d0%bd%d0%b8%d0%b6%d0%b5%d0%bd%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0'),(2,'Нулевая ставка','%d0%bd%d1%83%d0%bb%d0%b5%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d0%b2%d0%ba%d0%b0');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=MyISAM AUTO_INCREMENT=12178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-10 11:05:45
