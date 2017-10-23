-- MySQL dump 10.13  Distrib 5.6.32, for Linux (x86_64)
-- 2017/10/23
-- Host: localhost    Database: dead_gm
-- ------------------------------------------------------
-- Server version	5.6.32

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



DROP TABLE IF EXISTS `extrabalance`;
CREATE TABLE `extrabalance` (
  `id` int(11) NOT NULL,
  `effectID` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `startTime` varchar(255) DEFAULT NULL,
  `endTime` varchar(255) DEFAULT NULL,
  `hasPush` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `act_server_history`
--

DROP TABLE IF EXISTS `act_server_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_server_history` (
  `sid` int(32) NOT NULL DEFAULT '0',
  `lid` bigint(64) NOT NULL DEFAULT '0',
  `a_type` int(32) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sid`,`lid`,`a_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_server_history`
--

/*!40000 ALTER TABLE `act_server_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_server_history` ENABLE KEYS */;

--
-- Table structure for table `activitytypebetting`
--

DROP TABLE IF EXISTS `activitytypebetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitytypebetting` (
  `actId` int(200) NOT NULL,
  `actName` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `actSort` int(200) DEFAULT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitytypebetting`
--

LOCK TABLES `activitytypebetting` WRITE;
/*!40000 ALTER TABLE `activitytypebetting` DISABLE KEYS */;
INSERT INTO `activitytypebetting` VALUES (2001,'财神投注活动',1);
/*!40000 ALTER TABLE `activitytypebetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitytype`
--

DROP TABLE IF EXISTS `activitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activitytype` (
  `actId` int(200) NOT NULL,
  `actName` varchar(500) DEFAULT NULL,
  `actSort` int(200) DEFAULT NULL,
  `actHotStatus` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitytype`
--

LOCK TABLES `activitytype` WRITE;
/*!40000 ALTER TABLE `activitytype` DISABLE KEYS */;
INSERT INTO `activitytype` VALUES (1001,'每日充值',1,2),(1002,'充值返利',2,0),(1003,'等级达标',3,3),(1004,'竞技场达标',4,4),(1005,'神秘商城达标',5,0),(1006,'招募达标',6,4),(1007,'充值循环达标活动',7,2),(1008,'钻石消费循环达标活动',8,0),(1009,'累计消费钻石达标活动',9,0),(1010,'登录达标活动',10,0),(1011,'芯片装备达标活动',11,0),(1012,'幸存者星级达标活动',12,0),(1013,'活动获得指定幸存者活动',13,2),(1014,'关卡进度达标(普通关卡)活动',14,4),(1015,'关卡进度达标(工业区)活动',15,0);
/*!40000 ALTER TABLE `activitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activityinfo`
--

DROP TABLE IF EXISTS `activityinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activityinfo` (
  `actInfoId` int(200) NOT NULL AUTO_INCREMENT,
  `actInfoName` varchar(500) DEFAULT NULL,
  `actInfoPicture` varchar(500) DEFAULT NULL,
  `actInfoStartTime` varchar(500) DEFAULT NULL,
  `actInfoEndTime` varchar(500) DEFAULT NULL,
  `actInfoDes` text,
  `actInfoReward` text,
  `actInfoTarget` text,
  `actId` int(200) DEFAULT NULL,
  `isOpenTmpl` varchar(200) DEFAULT NULL,
  `hashPush` int(200) DEFAULT NULL,
  `actInfoStartDay` varchar(200) DEFAULT NULL,
  `actInfoEndDay` varchar(200) DEFAULT NULL,
  `state` int(200) DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  `serverIdContent` varchar(500) DEFAULT NULL,
  `actLangTmpId` int(200) DEFAULT NULL,
  PRIMARY KEY (`actInfoId`)
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityinfo`
--

LOCK TABLES `activityinfo` WRITE;
/*!40000 ALTER TABLE `activityinfo` DISABLE KEYS */;
INSERT INTO `activityinfo` VALUES (15,'12','21','2017-07-20 11:09:05','2017-07-30 11:09:07','21','[{\"rewardGoodsId\":\"12\",\"rewardGoodsCount\":\"21\",\"rewardIsRadio\":\"2,2\"},{\"rewardGoodsId\":\"21\",\"rewardGoodsCount\":\"21\",\"rewardIsRadio\":\"0\"},{\"rewardGoodsId\":\"21\",\"rewardGoodsCount\":\"21\"}]','[{\"rechargeDiamCount\":\"12\",\"rechargeIsRadio\":\"1\"},{\"rechargeDiamCount\":\"21\"}]',0,'0',0,'0','2',1,NULL,NULL,NULL),(50,'555',NULL,NULL,NULL,NULL,'null','null',0,NULL,0,NULL,NULL,1,NULL,NULL,NULL),(79,'充值返利','12','2017-06-01 18:57:11','2017-07-08 18:57:16','12','null','[{\"rechargeDiamCount\":\"12\",\"rechargeIsRadio\":\"1\",\"rewardList\":[{\"num\":12,\"itemId\":21,\"effective\":0,\"notice\":1},{\"num\":22,\"itemId\":22,\"effective\":0,\"notice\":2}]},{\"rechargeDiamCount\":\"33\",\"rechargeIsRadio\":\"1\",\"rewardList\":[{\"num\":32,\"itemId\":32,\"effective\":0,\"notice\":1}]}]',1002,'0',0,'','',-1,NULL,NULL,12),(94,'充值返利活动模板','2','2017-07-28 20:54:52','2017-07-29 20:54:55','充值返利巴拉巴拉',NULL,'[{\"rechargeDiamCount\":\"20000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":6013,\"effective\":0,\"notice\":0}]},{\"rechargeDiamCount\":\"30000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0}]},{\"rechargeDiamCount\":\"40000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0}]},{\"rechargeDiamCount\":\"50000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":40,\"itemId\":12,\"effective\":0,\"notice\":0}]}]',1002,'0',0,'','',-1,0,NULL,0),(502,'竞技场测试1','1','2017-09-07 15:18:31','2017-09-22 15:18:33','1111',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1111,\"itemId\":1111,\"effective\":0,\"notice\":0},{\"num\":77,\"itemId\":7777,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"1\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":2222,\"itemId\":2222,\"effective\":0,\"notice\":0}],\"index\":1}]',1004,NULL,0,'','',-1,0,NULL,1),(523,'通关达人','15','2017-09-07 12:19:15','2017-09-29 12:19:17','通过指定关卡即可活动大量奖励！',NULL,'[{\"rechargeDiamCount\":\"201\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"301\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"401\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"501\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"601\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100,\"itemId\":7,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"701\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"801\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":6}]',1014,'0',0,'','',-1,0,NULL,15),(525,'工业区通关','16','2017-09-07 12:27:55','2017-09-29 12:27:57','通关指定工业区关卡即可获得大量奖励！',NULL,'[{\"rechargeDiamCount\":\"100003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":40111,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":15,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"101003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"101005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"101007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1015,'0',0,'','',-1,0,NULL,16),(527,'钻石消费好礼','10','2017-09-07 12:38:57','2017-09-29 12:39:00','消耗钻石达到对应目标即可获得大量奖励！',NULL,'[{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"1000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"10000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3000000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1009,'0',0,'','',-1,0,NULL,10),(532,'钻石单笔消耗','9','2017-09-06 12:58:09','2017-09-29 12:58:11','单笔消耗满足对应目标即可领取豪华大礼！',NULL,'[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":203,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0}]',1008,'0',0,'','',-1,0,NULL,9),(594,'测试6','8','2017-09-06 14:40:15','2017-09-29 14:40:18','11111',NULL,'[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":15,\"itemId\":203,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0}]',1007,'0',0,'','',-1,0,NULL,8),(604,'3等级达标','3','2017-09-12 19:32:56','2017-09-18 19:32:59','等级提升奖励多多！',NULL,'[{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"14\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"17\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"19\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"25\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"27\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"29\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7}]',1003,'0',0,'','',-1,0,NULL,3),(606,'神秘商店','5','2017-09-12 20:04:26','2017-09-14 20:04:29','神秘商店达标获得奖励',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"20\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4}]',1005,'0',0,'','',-1,0,NULL,5),(623,'幸存者达标','13','2017-09-13 11:55:36','2017-09-19 11:55:38','幸存者达标即可获得大量奖励！',NULL,'[{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":7,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":30001,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"3\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3}]',1012,'0',0,'','',-1,0,NULL,13),(627,'吉羽测试','14','2017-09-17 12:06:00','2017-09-27 12:06:02','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"107\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30107,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"124\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30124,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":400236,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1}]',1013,NULL,1,'','',1,0,NULL,14),(632,'11','11','2017-09-12 13:22:09','2017-09-28 13:22:11','阿达大厦多','null','[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":1,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":2,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":3,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":4,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"7\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":6}]',1010,'0',0,'','',-1,NULL,NULL,11),(640,'招募达标','6','2017-09-13 14:48:56','2017-09-16 14:48:58','招募达标指定人数即可获得奖励',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"30\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":400107,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":400101,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":25,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"200\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0}],\"index\":5}]',1006,'0',0,'','',-1,0,NULL,6),(648,'王然','1','2017-09-26 01:40:00','2017-09-26 01:55:00','王然',NULL,'[{\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":1,\"itemId\":30001,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":5}]',1001,'0',0,'','',-1,0,NULL,1),(651,'王然','11','2017-09-26 01:40:00','2017-09-26 01:55:00','王然',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":1,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":2,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":3,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":4,\"itemId\":4,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"7\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":6}]',1010,'0',1,'','',0,0,NULL,11),(663,'芯片强化','12','2017-09-13 16:20:53','2017-09-27 16:20:54','芯片达标即可获得精彩奖励！',NULL,'[{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":1,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":2,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"12\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":4,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"12\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"6\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1011,'0',1,'','',1,0,NULL,12),(685,'王然','11','2017-09-26 01:40:00','2017-09-26 01:55:00','王然',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":1,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":2,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":3,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":4,\"itemId\":4,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"7\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":6}]',1010,'0',1,'','',0,4,'651',11),(687,'吉羽测试','1','2017-09-20 12:00:00','2017-09-23 12:00:00','吉羽测试',NULL,'[{\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"100\",\"rewardList\":[{\"num\":1,\"itemId\":30001,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":5}]',1001,'0',0,'','',0,0,NULL,1),(690,'吉羽测试','6','2017-09-17 01:14:16','2017-09-27 01:14:19','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"30\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40097,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40096,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":25,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"200\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1006,'0',1,'','',1,0,NULL,6),(693,'吉羽测试','3','2017-09-17 01:22:14','2017-09-27 01:22:16','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"14\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"17\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"19\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"25\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"27\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"29\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7}]',1003,'0',1,'','',1,0,NULL,3),(696,'吉羽测试','5','2017-09-17 01:25:57','2017-09-27 01:25:58','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"20\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4}]',1005,'0',1,'','',1,0,NULL,5),(699,'吉羽测试','4','2017-09-17 01:30:48','2017-09-27 01:30:50','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":70,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":2,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":80,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":90,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":2,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":200,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":4,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":400,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":8},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":6,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":600,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":9},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":8,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":800,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":10},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":8513,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":1000,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":11}]',1004,'0',1,'','',1,0,NULL,4),(702,'吉羽测试','2','2017-09-15 01:51:02','2017-09-27 01:51:04','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"1500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":30000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"4500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"7500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"15000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"22000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1002,'0',1,'','',1,0,NULL,2),(707,'芯片强化','12','2017-09-13 16:20:53','2017-09-27 16:20:54','芯片达标即可获得精彩奖励！',NULL,'[{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":1,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":2,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"12\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":4,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"12\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"6\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1011,'0',1,'','',1,1,'663',12),(708,'芯片强化','12','2017-09-13 16:20:53','2017-09-27 16:20:54','芯片达标即可获得精彩奖励！',NULL,'[{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":1,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":2,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"12\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"4\",\"rewardList\":[{\"num\":4,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"12\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"5\",\"rewardList\":[{\"num\":2,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"6\",\"rechargeCount\":\"9\",\"rechargeIsRadio\":\"0\",\"cumulativePay\":\"6\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1011,'0',1,'','',1,297799680,'663',12),(709,'吉羽测试','13','2017-09-17 02:05:19','2017-09-27 02:05:22','吉羽测试','null','[{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":30001,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"3\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3}]',1012,'0',1,'','',1,NULL,NULL,13),(710,'吉羽测试','13','2017-09-17 02:05:19','2017-09-27 02:05:22','吉羽测试','null','[{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":30001,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"3\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3}]',1012,'0',1,'','',1,1,'709',13),(711,'吉羽测试','13','2017-09-17 02:05:19','2017-09-27 02:05:22','吉羽测试','null','[{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeCount\":\"3\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"5\",\"rechargeCount\":\"4\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5,\"itemId\":30001,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"3\",\"rechargeCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3}]',1012,'0',1,'','',1,297799680,'709',13),(712,'吉羽测试','14','2017-09-17 12:06:00','2017-09-27 12:06:02','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"107\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30107,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"124\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30124,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":400236,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1}]',1013,NULL,1,'','',1,1,'627',14),(713,'吉羽测试','14','2017-09-17 12:06:00','2017-09-27 12:06:02','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"107\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30107,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"124\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":30124,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":400236,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1}]',1013,NULL,1,'','',1,297799680,'627',14),(715,'吉羽测试','15','2017-09-17 02:18:04','2017-09-27 02:18:06','吉羽测试','null','[{\"rechargeDiamCount\":\"201\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"301\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"401\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"501\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"601\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":2,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"701\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"801\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":6}]',1014,'0',1,'','',1,NULL,NULL,15),(716,'吉羽测试','15','2017-09-17 02:18:04','2017-09-27 02:18:06','吉羽测试','null','[{\"rechargeDiamCount\":\"201\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"301\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"401\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"501\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"601\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":2,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"701\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"801\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":6}]',1014,'0',1,'','',1,1,'715',15),(717,'吉羽测试','15','2017-09-17 02:18:04','2017-09-27 02:18:06','吉羽测试','null','[{\"rechargeDiamCount\":\"201\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"301\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"401\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"501\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"601\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":2,\"itemId\":49050,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"701\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40112,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"801\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":6,\"itemId\":40113,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":6}]',1014,'0',1,'','',1,297799680,'715',15),(718,'吉羽测试','16','2017-09-17 02:24:05','2017-09-27 02:24:07','吉羽测试','null','[{\"rechargeDiamCount\":\"100003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":40111,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":15,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"101003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"101005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"101007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1015,'0',1,'','',1,NULL,NULL,16),(719,'吉羽测试','16','2017-09-17 02:24:05','2017-09-27 02:24:07','吉羽测试','null','[{\"rechargeDiamCount\":\"100003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":40111,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":15,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"101003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"101005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"101007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1015,'0',1,'','',1,1,'718',16),(720,'吉羽测试','16','2017-09-17 02:24:05','2017-09-27 02:24:07','吉羽测试','null','[{\"rechargeDiamCount\":\"100003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":40111,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"100005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":15,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"100007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"101003\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"101005\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"101007\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1015,'0',1,'','',1,297799680,'718',16),(721,'吉羽测试','10','2017-09-17 02:37:50','2017-09-27 02:37:52','吉羽测试','null','[{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"1000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"10000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3000000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1009,'0',1,'','',1,NULL,NULL,10),(722,'吉羽测试','10','2017-09-17 02:37:50','2017-09-27 02:37:52','吉羽测试','null','[{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"1000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"10000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3000000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1009,'0',1,'','',1,1,'721',10),(723,'吉羽测试','10','2017-09-17 02:37:50','2017-09-27 02:37:52','吉羽测试','null','[{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40056,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40057,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"1000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40060,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40061,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"5000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1500000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"10000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":3000000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":301,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40062,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":40063,\"effective\":0,\"notice\":0}],\"index\":5}]',1009,'0',1,'','',1,297799680,'721',10),(724,'吉羽测试','2','2017-09-15 01:51:02','2017-09-27 01:51:04','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"1500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":30000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"4500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"7500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"15000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"22000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1002,'0',1,'','',1,1,'702',2),(725,'吉羽测试','2','2017-09-15 01:51:02','2017-09-27 01:51:04','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"1500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":30000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"4500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"7500\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"15000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"22000\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":12011,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1002,'0',1,'','',1,297799680,'702',2),(726,'吉羽测试','8','2017-09-17 02:40:53','2017-09-27 02:40:55','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1007,'0',1,'','',1,NULL,NULL,8),(727,'吉羽测试','8','2017-09-17 02:40:53','2017-09-27 02:40:55','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1007,'0',1,'','',1,1,'726',8),(728,'吉羽测试','8','2017-09-17 02:40:53','2017-09-27 02:40:55','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1007,'0',1,'','',1,297799680,'726',8),(729,'吉羽测试','9','2017-09-17 02:42:12','2017-09-27 02:42:16','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1008,'0',1,'','',1,NULL,NULL,9),(730,'吉羽测试','9','2017-09-17 02:42:12','2017-09-27 02:42:16','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1008,'0',1,'','',1,1,'729',9),(731,'吉羽测试','9','2017-09-17 02:42:12','2017-09-27 02:42:16','吉羽测试','null','[{\"rechargeDiamCount\":\"500\",\"rechargeCount\":\"500\",\"rewardList\":[{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0}]',1008,'0',1,'','',1,297799680,'729',9),(734,'吉羽测试','3','2017-09-17 01:22:14','2017-09-27 01:22:16','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"14\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"17\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"19\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"25\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"27\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"29\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7}]',1003,'0',1,'','',1,1,'693',3),(735,'吉羽测试','3','2017-09-17 01:22:14','2017-09-27 01:22:16','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"14\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"17\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"19\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"25\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"27\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":13003,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"29\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7}]',1003,'0',1,'','',1,297799680,'693',3),(736,'吉羽测试','4','2017-09-17 01:30:48','2017-09-27 01:30:50','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":70,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":2,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":80,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":90,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":2,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":200,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":4,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":400,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":8},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":6,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":600,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":9},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":8,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":800,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":10},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":8513,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":1000,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":11}]',1004,'0',1,'','',1,1,'699',4),(737,'吉羽测试','4','2017-09-17 01:30:48','2017-09-27 01:30:50','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":30,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":50,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41000,\"effective\":0,\"notice\":0},{\"num\":30,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":70,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":2,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":4,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":80,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":90,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"2\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":6,\"itemId\":41001,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0}],\"index\":5},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"51\",\"areanEnd\":\"100\",\"rewardList\":[{\"num\":2,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":6},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"11\",\"areanEnd\":\"50\",\"rewardList\":[{\"num\":3,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":200,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":7},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"4\",\"areanEnd\":\"10\",\"rewardList\":[{\"num\":4,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":400,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":100000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":8},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"3\",\"areanEnd\":\"3\",\"rewardList\":[{\"num\":6,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":600,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":9},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"2\",\"areanEnd\":\"2\",\"rewardList\":[{\"num\":8,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":800,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":10},{\"rechargeDiamCount\":\"3\",\"rechargeIsRadio\":\"0\",\"areanBegin\":\"1\",\"areanEnd\":\"1\",\"rewardList\":[{\"num\":1,\"itemId\":8513,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":1000,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":11}]',1004,'0',1,'','',1,297799680,'699',4),(738,'吉羽测试','5','2017-09-17 01:25:57','2017-09-27 01:25:58','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"20\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4}]',1005,'0',1,'','',1,1,'696',5),(739,'吉羽测试','5','2017-09-17 01:25:57','2017-09-27 01:25:58','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"5\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":5000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"20\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":12011,\"effective\":0,\"notice\":0}],\"index\":4}]',1005,'0',1,'','',1,297799680,'696',5),(740,'吉羽测试','6','2017-09-17 01:14:16','2017-09-27 01:14:19','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"30\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40097,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40096,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":25,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"200\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1006,'0',1,'','',1,1,'690',6),(741,'吉羽测试','6','2017-09-17 01:14:16','2017-09-27 01:14:19','吉羽测试',NULL,'[{\"rechargeDiamCount\":\"1\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":20,\"itemId\":12,\"effective\":0,\"notice\":0},{\"num\":3,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":10000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"10\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12009,\"effective\":0,\"notice\":0},{\"num\":20,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"30\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40097,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"50\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":40096,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12001,\"effective\":0,\"notice\":0},{\"num\":50,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"100\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":25,\"itemId\":13003,\"effective\":0,\"notice\":0},{\"num\":5,\"itemId\":12010,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":50000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":4},{\"rechargeDiamCount\":\"200\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":1,\"itemId\":12005,\"effective\":0,\"notice\":0},{\"num\":1,\"itemId\":13002,\"effective\":0,\"notice\":0},{\"num\":100,\"itemId\":6013,\"effective\":0,\"notice\":0},{\"num\":200000,\"itemId\":11,\"effective\":0,\"notice\":0}],\"index\":5}]',1006,'0',1,'','',1,297799680,'690',6),(742,'9999','9999','2017-09-19 15:54:11','2017-09-30 15:54:13','',NULL,'[{\"rechargeDiamCount\":\"111\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0}],\"index\":0},{\"rechargeDiamCount\":\"124\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":99,\"itemId\":9999,\"effective\":0,\"notice\":0}],\"index\":1},{\"rechargeDiamCount\":\"110\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0}],\"index\":2},{\"rechargeDiamCount\":\"111\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0}],\"index\":3},{\"rechargeDiamCount\":\"112\",\"rechargeIsRadio\":\"0\",\"rewardList\":[{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0},{\"num\":999,\"itemId\":9999,\"effective\":0,\"notice\":0}],\"index\":4}]',1013,'0',0,'','',0,0,NULL,9999),(744,'1','1','2017-09-19 20:21:57','2017-09-29 20:22:00','1','null','[{\"rechargeDiamCount\":\"103\",\"rewardList\":[{\"num\":1,\"itemId\":1,\"effective\":0,\"notice\":0}],\"index\":0}]',1013,'0',0,'','',0,NULL,NULL,1);
/*!40000 ALTER TABLE `activityinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminuser` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `adminName` varchar(20) NOT NULL,
  `adminPass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminId`),
  KEY `FK_Reference_4` (`roleId`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`roleId`) REFERENCES `roleinfo` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminuser`
--

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES (1,1,'admin','e271828','zhangsan@qq.com');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;

--
-- Table structure for table `balckname_info`
--

DROP TABLE IF EXISTS `balckname_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balckname_info` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `uid` bigint(64) DEFAULT NULL,
  `type` int(32) DEFAULT NULL,
  `serverId` int(32) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `balckname_uid_index` (`uid`,`serverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balckname_info`
--

/*!40000 ALTER TABLE `balckname_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `balckname_info` ENABLE KEYS */;

--
-- Table structure for table `btn_controller`
--

DROP TABLE IF EXISTS `btn_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btn_controller` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `b_type` tinyint(8) DEFAULT '1' COMMENT '按钮类型',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '生效时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `b_status` int(32) DEFAULT '0' COMMENT '状态(0:开启1:关闭)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btn_controller`
--

/*!40000 ALTER TABLE `btn_controller` DISABLE KEYS */;
/*!40000 ALTER TABLE `btn_controller` ENABLE KEYS */;

--
-- Table structure for table `cdkey_activity`
--

DROP TABLE IF EXISTS `cdkey_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdkey_activity` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `act_id` int(32) DEFAULT NULL COMMENT '活动id',
  `is_open` tinyint(1) DEFAULT NULL COMMENT '是否开启(开启平台)',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `perday_num` int(32) DEFAULT NULL COMMENT '每天兑换次数',
  `total_num` int(32) DEFAULT NULL COMMENT '总共兑换次数',
  `rewards` varchar(1024) DEFAULT NULL COMMENT '奖励',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cdkey_activity_index` (`act_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdkey_activity`
--

/*!40000 ALTER TABLE `cdkey_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdkey_activity` ENABLE KEYS */;

--
-- Table structure for table `email_template`
--

DROP TABLE IF EXISTS `email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_template` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `context` text,
  `system` tinyint(1) DEFAULT NULL,
  `have_attachment` tinyint(1) DEFAULT NULL,
  `uids` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL,
  `attachment` text,
  `type` int(32) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_template`
--

/*!40000 ALTER TABLE `email_template` DISABLE KEYS */;
INSERT INTO `email_template` VALUES (1,'','',1,0,'','2016-07-21 09:54:29','2016-07-21 09:54:29','[]',41,1,'2016-07-20 16:00:00','2016-07-20 16:00:00'),(2,'heihei','',1,0,'','2016-07-21 10:09:52','2016-07-21 10:09:52','[]',41,1,'2016-07-20 16:00:00','2016-07-21 16:00:00'),(3,'','',1,0,'','2016-07-21 10:15:32','2016-07-21 11:48:51','[]',41,1,'2016-07-20 16:00:00','2016-07-20 16:00:00'),(4,'','',1,0,'','2016-07-22 07:44:15','2016-07-22 07:44:15','[]',41,0,'2016-07-21 16:00:00','2016-07-21 16:00:00'),(5,'','',1,0,'','2016-07-22 08:48:34','2016-07-22 08:48:34','[]',41,0,'2016-07-21 16:00:00','2016-07-21 16:00:00'),(6,'','',1,0,'','2016-07-22 08:49:29','2016-07-22 08:49:29','[]',41,0,'2016-07-21 16:00:00','2016-07-21 16:00:00'),(7,'','',1,0,'','2016-07-22 09:00:00','2016-07-22 09:00:00','[]',41,1,'2016-07-21 16:00:00','2016-07-21 16:00:00'),(8,'','',1,0,'','2016-08-30 03:16:34','2016-08-30 03:16:34','[]',41,0,'2016-08-29 16:00:00','2016-08-29 16:00:00'),(9,'222','',1,0,'','2016-08-31 07:04:21','2016-08-31 07:04:21','[]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(10,'你在哪','我是你爸爸',1,1,'','2016-08-31 07:07:07','2016-08-31 07:07:07','[{\"id\":5,\"type\":3,\"num\":8}]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(11,'你在哪','我是你爸爸',1,1,'','2016-08-31 07:08:33','2016-08-31 07:08:33','[{\"id\":5,\"type\":3,\"num\":8}]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(12,'diaplay','display',1,1,'','2016-08-31 07:44:40','2016-08-31 07:44:40','[{\"id\":2,\"type\":1,\"num\":3}]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(13,'haha','houhou',1,1,'','2016-08-31 07:46:24','2016-08-31 07:46:24','[{\"id\":2,\"type\":1,\"num\":3}, {\"id\":5,\"type\":4,\"num\":6}]',42,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(14,'解决','看看',1,0,'','2016-08-31 08:45:15','2016-08-31 08:45:15','[]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00'),(15,'对对对','废废废d',1,0,'对对对','2016-08-31 09:30:54','2016-08-31 09:30:54','[]',41,0,'2016-08-30 16:00:00','2016-08-30 16:00:00');
/*!40000 ALTER TABLE `email_template` ENABLE KEYS */;

--
-- Table structure for table `functionmenu`
--

DROP TABLE IF EXISTS `functionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functionmenu` (
  `funId` int(11) NOT NULL AUTO_INCREMENT,
  `funName` varchar(20) NOT NULL,
  `funUrl` varchar(100) DEFAULT NULL,
  `displayAsMenu` tinyint(1) DEFAULT NULL,
  `parentFunId` int(11) DEFAULT NULL,
  `funNumber` int(11) DEFAULT NULL COMMENT '菜单排序',
  PRIMARY KEY (`funId`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functionmenu`
--

/*!40000 ALTER TABLE `functionmenu` DISABLE KEYS */;
INSERT INTO `functionmenu` VALUES (6,'组织管理',NULL,1,NULL,NULL),(7,'员工管理','/adminuser/list.do',1,6,NULL),(8,'新增员工','btnAddEmp',1,7,NULL),(9,'权限管理',NULL,1,NULL,NULL),(15,'权限管理','/jurisdiction/list.do',1,9,NULL),(17,'新增权限','btnAddDiction',1,15,NULL),(18,'修改权限','btnUpdateDiction',1,15,NULL),(19,'删除权限','btnDeleteDiction',1,15,NULL),(20,'修改员工','btnUpdateEmp',1,7,NULL),(21,'删除员工','btnDeleteEmp',1,7,NULL),(22,'日常统计数据总览',NULL,1,NULL,NULL),(23,'全平台统计','/SortCount/overview',1,22,NULL),(24,'iOS平台统计',NULL,1,22,NULL),(25,'Android平台统计',NULL,1,22,NULL),(26,'美国地区统计',NULL,1,22,NULL),(27,'香港地区统计',NULL,1,22,NULL),(28,'台湾地区统计',NULL,1,22,NULL),(29,'实时统计',NULL,1,NULL,NULL),(30,'分类统计',NULL,1,NULL,NULL),(31,'关键统计',NULL,1,NULL,NULL),(32,'新增用户统计','/SortCount/userRegister',1,30,1),(33,'实时付费额度','/SortCount/realtime_paymoney',1,29,NULL),(34,'实时在线用户数','/SortCount/online_num',1,29,NULL),(35,'点付费率统计','/SortCount/pointmoney',1,30,7),(36,'LTV','/SortCount/ltvmoney',1,30,5),(37,'用户留存统计','/SortCount/retention',1,30,4),(38,'付费排行统计','/SortCount/payCountRanking',1,30,3),(39,'产销统计(钻石)','/SortCount/countDiamond',1,31,NULL),(40,'产销统计(材料)','/SortCount/countMaterial',1,31,NULL),(41,'每日商品销售统计','/SortCount/shoCount',1,31,NULL),(42,'每日战斗统计','/SortCount/countBattlend',1,31,NULL),(43,'每日抽将统计','/SortCount/recruitHero',1,31,NULL),(44,'每日任务统计','/SortCount/stageStatistics',1,31,NULL),(45,'日志查询',NULL,1,NULL,NULL),(46,'用户登录日志','/journal/commonJournal',1,45,NULL),(47,'新增用户日志','/journal/userReJournal',1,45,NULL),(48,'任务日志','/journal/taskReJournal',1,45,NULL),(49,'道具日志','/journal/itemJournal',1,45,NULL),(50,'资源日志','/journal/resourseJournal',1,45,NULL),(51,'装备合成日志','/journal/equipSynJournal',1,45,NULL),(52,'装备穿戴日志','/journal/equipAddJournal',1,45,NULL),(53,'符文日志','/journal/runeJournal',1,45,NULL),(54,'战斗结束日志','/journal/battleendJournal',1,45,NULL),(55,'竞技场战斗消耗日志','/journal/areaFightJournal',1,45,NULL),(56,'付费日志','/journal/moneyPayJournal',1,45,NULL),(57,'商城日志','/journal/shopJournal',1,45,NULL),(58,'神秘商城刷新日志','/journal/mysteryShopInfoJournal',1,45,NULL),(59,'神秘商城购买日志','/journal/mysteryShopBuyJournal',1,45,NULL),(60,'房间收集日志','/journal/roomCollectJournal',1,45,NULL),(61,'房间升级日志','/journal/roomLevelUpJournal',1,45,NULL),(62,'招募日志','/journal/recruitJournal',1,45,NULL),(63,'招募武将日志','/journal/recruitHeroJournal',1,45,NULL),(64,'招募道具日志','/journal/recruitItemJournal',1,45,NULL),(65,'武将获得日志','/journal/heroGetJournal',1,45,NULL),(66,'武将升阶日志','/journal/heroLevelJournal',1,45,NULL),(67,'武将升级日志','/journal/heroLevelUpJournal',1,45,NULL),(68,'武将觉醒日志','/journal/heroWakeJournal',1,45,NULL),(69,'技能日志','/journal/skillJournal',1,45,NULL),(70,'邮件收取日志','/journal/emailReceiveJournal',1,45,NULL),(71,'邮件奖励日志','/journal/emailRewardJournal',1,45,NULL),(72,'剧情副本日志','/journal/plotJournal',1,45,NULL),(73,'好友日志','/journal/friendJournal',1,45,NULL),(74,'cdk日志','/journal/cdkJournal',1,45,NULL),(75,'校验异常日志','/journal/battleerrorJournal',1,45,NULL),(76,'联盟贡献日志','/journal/devoteJournal',1,45,NULL),(77,'联盟升级日志','/journal/allianceLvUpJournal',1,45,NULL),(78,'联盟boss日志','/journal/allianceBossJournal',1,45,NULL),(79,'仓库分配日志','/journal/depotAllocateJournal',1,45,NULL),(80,'角色管理',NULL,1,NULL,NULL),(81,'openID查询','/rolesearch/openIDsearch',1,80,NULL),(83,'黑名单','/rolesearch/black',1,80,NULL),(84,'封禁列表','/rolesearch/userbanned',1,80,NULL),(85,'昵称查询','/rolesearch/nicksearch',1,80,NULL),(86,'角色查询','/rolesearch/rolesearch',1,80,NULL),(87,'武将查询','/rolesearch/herosearch',1,80,NULL),(88,'符文查询','/rolesearch/runesearch',1,80,NULL),(89,'道具查询','/rolesearch/itemsearch',1,80,NULL),(90,'符文管理','/rolesearch/runeManager',1,80,NULL),(91,'uid修改','/rolesearch/uidManager',1,80,NULL),(92,'联盟查询','/rolesearch/alliSearch',1,80,NULL),(93,'ugc','/rolesearch/ugcManage',1,80,NULL),(94,'白名单','/rolesearch/white',1,80,NULL),(95,'删除黑名单','btnDeleteBlack',1,83,NULL),(96,'新增黑名单','btnAddBlack',1,83,NULL),(97,'新增白名单','btnAddWhite',1,94,NULL),(98,'删除白名单','btnDeleteWhite',1,94,NULL),(99,'封禁用户','/rolesearch/userBlock',1,80,NULL),(100,'解封用户','/rolesearch/userUnBlock',1,80,NULL),(101,'添加资源','/rolesearch/addResource',1,80,NULL),(102,'修改角色','btnUpdateRole',1,86,NULL),(103,'删除符文','btnDeleteRune',1,88,NULL),(104,'公告管理',NULL,1,NULL,NULL),(105,'公告列表','/notice/comNotice',1,104,NULL),(106,'删除公告','btnDeleteNotice',1,105,NULL),(107,'新增公告','btnAddNotice',1,105,NULL),(108,'预约公告','btnPublishNotice',1,105,NULL),(109,'房间合成日志','/journal/roomMixJournal',1,45,NULL),(110,'修改武将信息','btnUpdateHero',1,87,NULL),(111,'删除武将信息','btnDeleteHero',1,87,NULL),(112,'修改道具信息','btnUpdateItem',1,89,NULL),(113,'删除道具信息','btnDeleteItem',1,89,NULL),(114,'修改符文信息','btnUpdateRune',1,90,NULL),(115,'服务器',NULL,1,NULL,NULL),(116,'服务器列表','/gameServer/gameServer',1,115,NULL),(117,' 防火墙','/gameServer/fireServer',1,115,NULL),(118,'功能开关','/gameServer/function',1,115,NULL),(119,'redis清缓存','/gameServer/redis',1,115,NULL),(120,'ugc全清档','/gameServer/ugc',1,115,NULL),(121,'新增服','btnAddSer',1,116,NULL),(122,'编辑服','btnUpdateSer',1,116,NULL),(123,'删除服','btnDeleteSer',1,116,NULL),(124,'开启','btnOpenF',1,118,NULL),(125,'关闭','btnCloseF',1,118,NULL),(135,'cdk活动','/Cdk/cdkList',1,139,NULL),(136,'删除','btnDeleteCdk',1,135,NULL),(137,'导出CVS','btnExport',1,135,NULL),(139,'活动管理','/SortCount/realtim',1,NULL,NULL),(140,'新增','btnAddCdk',1,135,NULL),(141,'实时新增用户','/SortCount/realtimeRegister',1,29,NULL),(142,'活跃用户统计','/SortCount/userActive',1,30,2),(143,'上架商品列表','/shop/onList',1,139,NULL),(144,'预约商品列表','/shop/preList',1,139,NULL),(145,'商城商品列表','/shop/offList',1,139,NULL),(146,'下架','btnAdd',1,145,NULL),(147,'编辑','btnUpdateoff',1,145,NULL),(148,'删除','btnDeleteoff',1,145,NULL),(149,'推送服务器','btnViewo',1,145,NULL),(150,'添加','btnAddShop',1,145,NULL),(153,'滞留等级分布统计','/SortCount/retention_level',1,30,11),(154,'邮件相关',NULL,1,NULL,NULL),(155,'邮件列表','/email/email',1,154,NULL),(156,'邮件发送','/email/emailSend',1,154,NULL),(157,'邮件活动发送','/email/emailallSend',1,154,NULL),(158,'重发','btnAddEmail',1,155,NULL),(159,'删除','btnDeleteEmail',1,155,NULL),(160,'详情',NULL,1,155,NULL),(161,'全局buff','/balance/buffList',1,139,NULL),(162,'删除','btnUpdateBuff',1,161,NULL),(163,'服活跃用户统计','/SortCount/userServerActive',1,30,12),(164,'服LTV','/SortCount/ltvServermoney',1,30,13),(165,'服用户留存统计','/SortCount/retentionServer',1,30,14),(166,'服新增用户统计','/SortCount/userRegisterServer',1,30,15),(167,'服点付费率统计','/SortCount/pointmoneyServer',1,30,16),(168,'服付费统计','/SortCount/payCountDayServer',1,30,17),(169,'精彩活动',NULL,1,NULL,NULL),(170,'普通精彩活动','/activity/activityList',1,169,NULL),(171,'批量改状态','btnUpdateSta',1,116,NULL),(172,'普通精彩活动已推送列表','/activity/havePush',1,169,NULL),(173,'商品已推送列表','/shop/havePush',1,139,NULL),(174,'付费统计','/SortCount/payCountDay',1,30,6),(176,'新手礼包统计','/SortCount/newUserGuideGift',1,30,8),(177,'新手剧情通关统计','/SortCount/newUserSplot',1,30,9),(178,'客户端通用统计','/SortCount/clientCommonCount',1,30,10),(181,'小服竞技场战斗日志','/journal/smallArenaBattleLog',1,45,NULL),(182,'小服竞技场购买日志','/journal/smallArenaBuyLog',1,45,NULL),(183,'小服竞技场历史最高段位奖励日志','/journal/smallArenaMaxRankLog',1,45,NULL),(184,'小服竞技场扫荡日志','/journal/smallArenaSweepLog',1,45,NULL),(185,'小服竞技场晋升日志','/journal/smallArenaPromoteLog',1,45,NULL),(186,'小服竞技场点赞日志','/journal/smallArenaDoLikeLog',1,45,NULL),(187,'联盟战日志','/journal/allianceWarLog',1,45,NULL),(188,'联盟战排行日志','/journal/allianceWarRankLog',1,45,NULL),(189,'联盟战个人战斗日志','/journal/allianceFightLog',1,45,NULL),(190,'特殊精彩活动','/activity/theGodOfWealthBettingActivityList',1,169,NULL),(191,'特殊精彩活动已推送列表','/activity/limithavePush',1,169,NULL),(192,'支付渠道开关','/gameServer/payfunctionSwitch',1,115,NULL),(193,'财神活动日志','/journal/betGodActivityLog',1,45,NULL);
INSERT INTO `functionmenu` VALUES ('197', '聊天室', '/gameServer/chatServer', '1', '115', null);
INSERT INTO `functionmenu` VALUES ('198', '删档付费记录', '/roleSearchPayLog', '1', '115', null);
INSERT INTO `functionmenu` VALUES ('195', 'VIP特权日志', '/journal/vipBonusLogList', '1', '45', null);
INSERT INTO `functionmenu` VALUES ('196', 'VIP日志', '/journal/vipLogList', '1', '45', null);
/*!40000 ALTER TABLE `functionmenu` ENABLE KEYS */;

--
-- Table structure for table `limittime_activity`
--

DROP TABLE IF EXISTS `limittime_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limittime_activity` (
  `actId` bigint(20) NOT NULL AUTO_INCREMENT,
  `actType` int(15) DEFAULT NULL,
  `beginTime` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `endTime` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `state` int(15) DEFAULT NULL,
  `hashpush` int(15) DEFAULT NULL,
  `serverIdContent` int(11) DEFAULT NULL,
  `serverId` int(11) DEFAULT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limittime_activity`
--

/*!40000 ALTER TABLE `limittime_activity` DISABLE KEYS */;
INSERT INTO `limittime_activity` VALUES (129,2001,'2017-09-11 18:32:05','2017-09-12 23:25:00','阿斯顿撒多',1,1,128,4),(140,2001,'2017-09-12 20:57:47','2017-09-14 20:57:48','',1,1,NULL,NULL);
/*!40000 ALTER TABLE `limittime_activity` ENABLE KEYS */;

--
-- Table structure for table `notice_template`
--

DROP TABLE IF EXISTS `notice_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_template` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `beginTime` timestamp NULL DEFAULT NULL,
  `endTime` timestamp NULL DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `ceateTime` timestamp NULL DEFAULT NULL,
  `status` int(32) DEFAULT NULL,
  `serverId` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_template`
--

/*!40000 ALTER TABLE `notice_template` DISABLE KEYS */;
INSERT INTO `notice_template` VALUES (33,'2017-08-12 09:56:57','2017-08-12 23:56:58','{\"1\":\" \\n                           \\n                           \",\"zh-CN\":\"都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭都来吃饭\"}','2017-08-12 17:57:45',1,1),(34,'2017-08-12 10:08:02','2017-08-12 23:08:04','{\"1\":\"asdfjasldkfaslfasolkdfjaslkdfjasl    \",\"zh-TW\":\"阿斯顿发生大法师打发阿斯蒂芬\",\"zh-CN\":\"阿斯顿发生发大是大非\"}','2017-08-12 18:08:51',0,1);
/*!40000 ALTER TABLE `notice_template` ENABLE KEYS */;

--
-- Table structure for table `permission_category`
--

DROP TABLE IF EXISTS `permission_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_category` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_category`
--

/*!40000 ALTER TABLE `permission_category` DISABLE KEYS */;
INSERT INTO `permission_category` VALUES ('1','超级权限',1),('2','运营权限',1),('721fbbca1ae44716918fdb3921deacb1','客服权限',1);
/*!40000 ALTER TABLE `permission_category` ENABLE KEYS */;

--
-- Table structure for table `rolefunmenurel`
--

DROP TABLE IF EXISTS `rolefunmenurel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolefunmenurel` (
  `relId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `funId` int(11) DEFAULT NULL,
  PRIMARY KEY (`relId`),
  KEY `FK_Reference_2` (`roleId`),
  KEY `FK_Reference_3` (`funId`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`roleId`) REFERENCES `roleinfo` (`roleId`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`funId`) REFERENCES `functionmenu` (`funId`)
) ENGINE=InnoDB AUTO_INCREMENT=10062 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolefunmenurel`
--

/*!40000 ALTER TABLE `rolefunmenurel` DISABLE KEYS */;
INSERT INTO `rolefunmenurel` VALUES (5802,27,45),(5803,27,46),(5804,27,47),(5805,27,48),(5806,27,49),(5807,27,50),(5808,27,51),(5809,27,52),(5810,27,53),(5811,27,54),(5812,27,55),(5813,27,56),(5814,27,57),(5815,27,58),(5816,27,59),(5817,27,60),(5818,27,61),(5819,27,62),(5820,27,63),(5821,27,64),(5822,27,65),(5823,27,66),(5824,27,67),(5825,27,68),(5826,27,69),(5827,27,70),(5828,27,71),(5829,27,72),(5830,27,73),(5831,27,74),(5832,27,75),(5833,27,76),(5834,27,77),(5835,27,78),(5836,27,79),(5837,27,109),(6421,25,22),(6422,25,23),(6423,25,24),(6424,25,25),(6425,25,26),(6426,25,27),(6427,25,28),(6428,25,29),(6429,25,33),(6430,25,34),(6431,25,141),(6432,25,30),(6433,25,32),(6434,25,35),(6435,25,36),(6436,25,37),(6437,25,38),(6438,25,142),(6439,25,153),(6440,25,31),(6441,25,39),(6442,25,40),(6443,25,41),(6444,25,42),(6445,25,43),(6446,25,44),(6447,25,45),(6448,25,46),(6449,25,47),(6450,25,48),(6451,25,49),(6452,25,50),(6453,25,51),(6454,25,52),(6455,25,53),(6456,25,54),(6457,25,55),(6458,25,56),(6459,25,57),(6460,25,58),(6461,25,59),(6462,25,60),(6463,25,61),(6464,25,62),(6465,25,63),(6466,25,64),(6467,25,65),(6468,25,66),(6469,25,67),(6470,25,68),(6471,25,69),(6472,25,70),(6473,25,71),(6474,25,72),(6475,25,73),(6476,25,74),(6477,25,75),(6478,25,76),(6479,25,77),(6480,25,78),(6481,25,79),(6482,25,109),(6483,25,80),(6484,25,81),(6485,25,83),(6486,25,95),(6487,25,96),(6488,25,84),(6489,25,85),(6490,25,86),(6491,25,102),(6492,25,87),(6493,25,110),(6494,25,111),(6495,25,88),(6496,25,103),(6497,25,89),(6498,25,112),(6499,25,113),(6500,25,90),(6501,25,114),(6502,25,91),(6503,25,92),(6504,25,93),(6505,25,94),(6506,25,97),(6507,25,98),(6508,25,99),(6509,25,100),(6510,25,101),(6511,25,104),(6512,25,105),(6513,25,106),(6514,25,107),(6515,25,108),(6516,25,135),(6517,25,136),(6518,25,137),(6519,25,140),(6520,25,143),(6521,25,144),(6522,25,145),(6523,25,146),(6524,25,147),(6525,25,148),(6526,25,149),(6527,25,150),(6528,25,154),(6529,25,155),(6530,25,158),(6531,25,159),(6532,25,160),(6533,25,156),(6534,25,157),(6535,25,139),(6536,26,22),(6537,26,23),(6538,26,24),(6539,26,25),(6540,26,26),(6541,26,27),(6542,26,28),(6543,26,29),(6544,26,33),(6545,26,34),(6546,26,141),(6547,26,30),(6548,26,32),(6549,26,35),(6550,26,36),(6551,26,37),(6552,26,38),(6553,26,142),(6554,26,153),(6555,26,31),(6556,26,39),(6557,26,40),(6558,26,41),(6559,26,42),(6560,26,43),(6561,26,44),(6562,26,45),(6563,26,46),(6564,26,47),(6565,26,48),(6566,26,49),(6567,26,50),(6568,26,51),(6569,26,52),(6570,26,53),(6571,26,54),(6572,26,55),(6573,26,56),(6574,26,57),(6575,26,58),(6576,26,59),(6577,26,60),(6578,26,61),(6579,26,62),(6580,26,63),(6581,26,64),(6582,26,65),(6583,26,66),(6584,26,67),(6585,26,68),(6586,26,69),(6587,26,70),(6588,26,71),(6589,26,72),(6590,26,73),(6591,26,74),(6592,26,75),(6593,26,76),(6594,26,77),(6595,26,78),(6596,26,79),(6597,26,109),(8319,29,174),(8321,29,176),(8322,29,177),(8323,29,178),(8326,29,30),(9898,1,6),(9899,1,7),(9900,1,8),(9901,1,20),(9902,1,21),(9903,1,9),(9904,1,15),(9905,1,17),(9906,1,18),(9907,1,19),(9908,1,22),(9909,1,23),(9910,1,24),(9911,1,25),(9912,1,26),(9913,1,27),(9914,1,28),(9915,1,29),(9916,1,33),(9917,1,34),(9918,1,141),(9919,1,30),(9920,1,32),(9921,1,35),(9922,1,36),(9923,1,37),(9924,1,38),(9925,1,142),(9926,1,153),(9927,1,163),(9928,1,164),(9929,1,165),(9930,1,166),(9931,1,167),(9932,1,168),(9933,1,174),(9934,1,176),(9935,1,177),(9936,1,178),(9937,1,31),(9938,1,39),(9939,1,40),(9940,1,41),(9941,1,42),(9942,1,43),(9943,1,44),(9944,1,45),(9945,1,46),(9946,1,47),(9947,1,48),(9948,1,49),(9949,1,50),(9950,1,51),(9951,1,52),(9952,1,53),(9953,1,54),(9954,1,55),(9955,1,56),(9956,1,57),(9957,1,58),(9958,1,59),(9959,1,60),(9960,1,61),(9961,1,62),(9962,1,63),(9963,1,64),(9964,1,65),(9965,1,66),(9966,1,67),(9967,1,68),(9968,1,69),(9969,1,70),(9970,1,71),(9971,1,72),(9972,1,73),(9973,1,74),(9974,1,75),(9975,1,76),(9976,1,77),(9977,1,78),(9978,1,79),(9979,1,109),(9980,1,181),(9981,1,182),(9982,1,183),(9983,1,184),(9984,1,185),(9985,1,186),(9986,1,187),(9987,1,188),(9988,1,189),(9989,1,193),(9990,1,80),(9991,1,81),(9992,1,83),(9993,1,95),(9994,1,96),(9995,1,84),(9996,1,85),(9997,1,86),(9998,1,102),(9999,1,87),(10000,1,110),(10001,1,111),(10002,1,88),(10003,1,103),(10004,1,89),(10005,1,112),(10006,1,113),(10007,1,90),(10008,1,114),(10009,1,91),(10010,1,92),(10011,1,93),(10012,1,94),(10013,1,97),(10014,1,98),(10015,1,99),(10016,1,100),(10017,1,101),(10018,1,104),(10019,1,105),(10020,1,106),(10021,1,107),(10022,1,108),(10023,1,115),(10024,1,116),(10025,1,121),(10026,1,122),(10027,1,123),(10028,1,171),(10029,1,117),(10030,1,118),(10031,1,124),(10032,1,125),(10033,1,119),(10034,1,120),(10035,1,192),(10036,1,135),(10037,1,136),(10038,1,137),(10039,1,140),(10040,1,145),(10041,1,146),(10042,1,147),(10043,1,148),(10044,1,149),(10045,1,150),(10046,1,161),(10047,1,162),(10048,1,173),(10049,1,154),(10050,1,155),(10051,1,158),(10052,1,159),(10053,1,160),(10054,1,156),(10055,1,157),(10056,1,169),(10057,1,170),(10058,1,172),(10059,1,190),(10060,1,191),(10061,1,139);
/*!40000 ALTER TABLE `rolefunmenurel` ENABLE KEYS */;

--
-- Table structure for table `roleinfo`
--

DROP TABLE IF EXISTS `roleinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roleinfo` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) NOT NULL,
  `roleDesc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleinfo`
--

/*!40000 ALTER TABLE `roleinfo` DISABLE KEYS */;
INSERT INTO `roleinfo` VALUES (1,'超级管理员','ok'),(25,'运营管理',NULL),(26,'发行管理',NULL),(27,'日志管理',NULL),(29,'',NULL);
/*!40000 ALTER TABLE `roleinfo` ENABLE KEYS */;

--
-- Table structure for table `shop_activity`
--

DROP TABLE IF EXISTS `shop_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_activity` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `act_name` varchar(200) DEFAULT NULL,
  `tmplId` int(32) DEFAULT NULL,
  `type` int(32) DEFAULT NULL,
  `price` int(32) DEFAULT NULL,
  `mark` int(32) DEFAULT NULL,
  `priority` int(32) DEFAULT NULL,
  `maxBuy` int(32) DEFAULT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `state` int(32) DEFAULT NULL,
  `hasPush` int(32) DEFAULT NULL,
  `act_id` int(32) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `serverId` int(200) DEFAULT NULL,
  `visableCond` varchar(200) DEFAULT NULL,
  `purchaseLimit` varchar(200) DEFAULT NULL,
  `position` int(100) DEFAULT NULL,
  `typeWeight` varchar(200) DEFAULT NULL,
  `openCondition` varchar(200) DEFAULT NULL,
  `iconDir` varchar(200) DEFAULT NULL,
  `bgPriority` int(100) DEFAULT NULL,
  `tempId` int(100) DEFAULT NULL,
  `style` varchar(200) DEFAULT NULL,
  `parameter` varchar(200) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `rules` varchar(500) DEFAULT NULL,
  `bgActive` varchar(200) DEFAULT NULL,
  `pushServer` varchar(500) DEFAULT NULL,
  `countInfo` varchar(500) DEFAULT NULL,
  `visableCondId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_activity`
--

/*!40000 ALTER TABLE `shop_activity` DISABLE KEYS */;
INSERT INTO `shop_activity` VALUES (250,'1',1,12,1,1,1,0,'2017-09-07 14:48:15','2017-10-07 14:48:16',1,0,1,'1',0,'1','1',1,'1','1','1',NULL,1,NULL,NULL,'[{\"language\":\"zh-CN\",\"content\":\"1\"}]','[{\"id\":1,\"node\":1,\"rate\":1,\"priority\":1,\"times\":0,\"lvLimit\":\"1\"}]','1',NULL,'1',NULL);
/*!40000 ALTER TABLE `shop_activity` ENABLE KEYS */;

--
-- Table structure for table `system_permission`
--

DROP TABLE IF EXISTS `system_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_permission` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `permission_category_id` varchar(50) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_permission`
--

/*!40000 ALTER TABLE `system_permission` DISABLE KEYS */;
INSERT INTO `system_permission` VALUES (1,'*:*:*','全部权限','1',1),(2,'system.role','对用户分配角色 ','721fbbca1ae44716918fdb3921deacb1',0),(3,'system.user','添加管理员','721fbbca1ae44716918fdb3921deacb1',0),(4,'system.permission','权限管理','721fbbca1ae44716918fdb3921deacb1',0),(5,'app.activity:cdk:view','cdk查看','2',0),(6,'app.log:levelAround','等级分布','721fbbca1ae44716918fdb3921deacb1',0),(7,'app.activity:cdk:add','添加cdk','2',0),(8,'app.log:lookuseronline','在线统计','2',0),(9,'game.server:add','系统初始化数据','2',1),(10,'system.user:lock','系统初始化数据','2',1),(11,'app.role:upload','系统初始化数据','2',1),(12,'app.log:playerRetention','系统初始化数据','2',1),(13,'app.activity:activitysort:list','系统初始化数据','2',1),(14,'app.activity:email:edit','系统初始化数据','2',1),(15,'app.role:additem','系统初始化数据','2',1),(16,'app.activity:cdk:edit','系统初始化数据','2',1),(17,'system.role:view','系统初始化数据','2',1),(18,'app.role:starSetting','系统初始化数据','2',1),(19,'system.permission:delete','系统初始化数据','2',1),(20,'app.log:searchLoginNum','系统初始化数据','2',1),(21,'system.role:add','系统初始化数据','2',1),(22,'system.role:edit','系统初始化数据','2',1),(23,'app.log:orderDetails','系统初始化数据','2',1),(24,'system.user:edit','系统初始化数据','2',1),(25,'app.role:starSearch','系统初始化数据','2',1),(26,'app.activity:email:update','系统初始化数据','2',1),(27,'app.role:takebackresources','系统初始化数据','2',1),(28,'app.log:waveAround','系统初始化数据','2',1),(29,'system.log','系统初始化数据','2',1),(30,'app.log:waveRank','系统初始化数据','2',1),(31,'app.activity:broad','系统初始化数据','2',1),(32,'app.role:addmoney','系统初始化数据','2',1),(33,'game.server:view','系统初始化数据','2',1),(34,'app.activity:controller:publish','系统初始化数据','2',1),(35,'app.role:set','系统初始化数据','2',1),(36,'app.activity:active:publish','系统初始化数据','2',1),(37,'system.user.add','系统初始化数据','2',1),(38,'app.log:payCount','系统初始化数据','2',1),(39,'game.db.sql','系统初始化数据','2',1),(40,'app.log:payRank','充值排行','2',0),(41,'app.activity:activitysort:delete','系统初始化数据','2',1),(42,'app.activity:email:publish','系统初始化数据','2',1),(43,'app.activity:email:add','系统初始化数据','2',1),(44,'app.activity:cdk:publish','系统初始化数据','2',1),(45,'system.permission:add','系统初始化数据','2',1),(46,'app.activity:controller:add','系统初始化数据','2',1),(47,'app.role:edit','系统初始化数据','2',1),(48,'app.activity:activitysort:add','系统初始化数据','2',1),(49,'app.role:adddiamond','系统初始化数据','2',1),(50,'app.log:salvage.data:wardata','系统初始化数据','2',1),(51,'app.activity:active:list','系统初始化数据','2',1),(52,'app.blackName:add','系统初始化数据','2',1),(53,'app.activity:active:edit','系统初始化数据','2',1),(54,'app.activity:email:list','系统初始化数据','2',1),(55,'app.log:defenceExperience','系统初始化数据','2',1),(56,'app.activity:controller:edit','系统初始化数据','2',1),(57,'app.blackName:list','系统初始化数据','2',1),(58,'app.activity:email:delete','系统初始化数据','2',1),(59,'system.user:view','系统初始化数据','2',1),(60,'app.activity:active:add','系统初始化数据','2',1),(61,'app.activity:activitysort:publish','系统初始化数据','2',1),(62,'app.log:payAndRetention','系统初始化数据','2',1),(63,'app.log:guideRetention','系统初始化数据','2',1),(64,'app.log:auditDetail','系统初始化数据','2',1),(65,'app.role:reduceitem','系统初始化数据','2',1),(66,'app.log:salvage.data:user:info','系统初始化数据','2',1),(67,'app.activity:activitysort:update','系统初始化数据','2',1),(68,'app.log:arenaRank','系统初始化数据','2',1),(69,'system.user:delete','系统初始化数据','2',1),(70,'system.user:add','系统初始化数据','2',1),(71,'app.role:searchUserInfo','系统初始化数据','2',1),(72,'system.role:delete','系统初始化数据','2',1),(73,'app.role:roleSetting','系统初始化数据','2',1),(74,'system.permission:view','系统初始化数据','2',1),(75,'app.log:itemCensus','系统初始化数据','2',1),(76,'game.server:edit','系统初始化数据','2',1),(77,'app.log:coinDetails','系统初始化数据','2',1),(78,'system.permission:edit','系统初始化数据','2',1),(79,'app.activity:activitysort:edit','系统初始化数据','2',1),(82,'app.role:taskSetting','系统初始化数据','2',1),(83,'app.log:searchlevelAround','系统初始化数据','2',1),(84,'app.role:managerRole','系统初始化数据','2',1),(85,'app.role:roleManager','系统初始化数据','2',1),(86,'app.log','日志查询','2',0),(87,'app.password','修改密码','2',0),(88,'app.activity','活动管理','2',0);
/*!40000 ALTER TABLE `system_permission` ENABLE KEYS */;

--
-- Table structure for table `system_role`
--

DROP TABLE IF EXISTS `system_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_role` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role`
--

/*!40000 ALTER TABLE `system_role` DISABLE KEYS */;
INSERT INTO `system_role` VALUES (1,'admin','超级管理员：拥有全部权限的角色'),(2,'运营','运营组'),(3,'客服','客服组');
/*!40000 ALTER TABLE `system_role` ENABLE KEYS */;

--
-- Table structure for table `system_role_permission`
--

DROP TABLE IF EXISTS `system_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_role_permission` (
  `permissionid` bigint(64) DEFAULT NULL,
  `roleid` bigint(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_role_permission`
--

/*!40000 ALTER TABLE `system_role_permission` DISABLE KEYS */;
INSERT INTO `system_role_permission` VALUES (1,1),(6,3),(4,3),(86,2),(3,3),(2,3),(8,2),(6,2),(4,2),(3,2),(2,2),(87,2),(86,3);
/*!40000 ALTER TABLE `system_role_permission` ENABLE KEYS */;

--
-- Table structure for table `system_server`
--

DROP TABLE IF EXISTS `system_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_server` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(50) DEFAULT NULL,
  `is_open` tinyint(1) DEFAULT NULL,
  `is_email` tinyint(1) DEFAULT NULL,
  `web_url` varchar(1000) DEFAULT NULL,
  `log_server` text,
  `app_server` text,
  `mark_log` tinyint(1) DEFAULT NULL COMMENT '是否记录日志',
  `serial_number` int(32) DEFAULT '0' COMMENT '服务器编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_server`
--

/*!40000 ALTER TABLE `system_server` DISABLE KEYS */;
INSERT INTO `system_server` VALUES (1,'dev',1,0,'http://192.168.99.90:9092','[{\"type\":\"log\",\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_dev\",\"user\":\"root\",\"password\":\"root\"}]',0,0),(2,'xjw',1,0,'http://192.168.99.91:8080','[{\"type\":\"log\",\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_dev\",\"user\":\"root\",\"password\":\"root\"}]',1,0),(3,'xln',1,0,'http://192.168.99.92:8090','[{\"type\":\"log\",\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_dev\",\"user\":\"root\",\"password\":\"root\"}]',1,0),(4,'商务服务器',1,0,'http://123.206.60.63:8080','[{\"type\":\"log\",\"host\":\"127.0.0.1\",\"port\":3306,\"database\":\"app_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"123.206.60.63\",\"port\":3306,\"database\":\"dead_server\",\"user\":\"root\",\"password\":\"deadroot\"}]',0,0),(5,'wan',1,0,'http://192.168.99.90:9094','[{\"type\":\"log\",\"host\":\"127.0.0.1\",\"port\":3306,\"database\":\"app_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"dead_wan\",\"user\":\"root\",\"password\":\"root\"}]',1,0),(6,'yb',1,1,'http://192.168.99.93:8002','[{\"type\":\"log\",\"host\":\"127.0.0.1\",\"port\":3306,\"database\":\"app_log\",\"user\":\"root\",\"password\":\"root\"}]','[{\"index\":0,\"host\":\"192.168.99.90\",\"port\":3306,\"database\":\"catmint_game\",\"user\":\"root\",\"password\":\"root\"}]',1,0);
/*!40000 ALTER TABLE `system_server` ENABLE KEYS */;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` char(44) DEFAULT NULL,
  `salt` char(24) DEFAULT NULL,
  `openid` varchar(64) DEFAULT NULL,
  `providerid` varchar(10) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `register_ip` varchar(15) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`name`),
  UNIQUE KEY `user_openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES (1,'admin','X2e8f4jS6ahO3tv3gY1ipIAJKdZKAv9osC9fzoWrTcc=','BuGaa7yNnATC5z5xb8tyGg==','admin','local',0,'超级管理员','2014-01-31 16:12:40','127.0.0.1',1),(2,'admin1','4kr7oKZRyaPb4EMai3yi+azzDZr9a30nq684N3Ya3a0=','EBFd/qF66rfLa5YBEp8XWA==',NULL,NULL,0,NULL,'2016-07-13 10:30:48','192.168.99.92',0),(3,'zhangyu','RtfVOQfZsMcFCBHbwo3DhIe9+yu3SGDQb1eQrXbXxm0=','yiJ3PnX6ww1gGlS/QLGtXg==',NULL,NULL,0,NULL,'2016-09-23 12:21:17','192.168.99.93',0),(4,'wangyq','Oy6evjbnytRVVk4+HcL1EOMSEVIBZ794h+MzqgoOJ2U=','aLoSkBfAjwfIipQqrETmQQ==',NULL,NULL,0,NULL,'2016-09-27 03:02:44','127.0.0.1',0),(5,'wangyq1','gXLPFX9yM2koIMeXUxAt1uG+2gyO1W0nu7oHKOmk75Y=','UZF61oFl5I3WTxw0x7attA==',NULL,NULL,0,NULL,'2016-09-27 09:28:58','127.0.0.1',0),(6,'jay','Y79m5zoaoMm6SMptHE8qvzKYyRZVFqOmFUUdmzjG/do=','TQwMdwpCJynrVoz+769QZw==',NULL,NULL,0,NULL,'2016-12-22 05:56:30','127.0.0.1',0);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;

--
-- Table structure for table `system_user_role`
--

DROP TABLE IF EXISTS `system_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_role` (
  `userid` bigint(64) DEFAULT NULL,
  `roleid` bigint(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_role`
--

/*!40000 ALTER TABLE `system_user_role` DISABLE KEYS */;
INSERT INTO `system_user_role` VALUES (1,1),(2,1),(4,2),(5,3),(6,3);
/*!40000 ALTER TABLE `system_user_role` ENABLE KEYS */;

--
-- Table structure for table `system_user_server`
--

DROP TABLE IF EXISTS `system_user_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user_server` (
  `SERVERID` int(32) DEFAULT NULL,
  `USERID` bigint(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user_server`
--

/*!40000 ALTER TABLE `system_user_server` DISABLE KEYS */;
INSERT INTO `system_user_server` VALUES (2,2),(1,2),(4,1),(3,1),(2,1),(1,1),(3,2),(4,2),(5,2),(5,1);
/*!40000 ALTER TABLE `system_user_server` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



-- ----------------------------
-- Table structure for t_cdk_back
-- ----------------------------
DROP TABLE IF EXISTS `t_cdk_back`;
CREATE TABLE `t_cdk_back` (
  `id` bigint(64) NOT NULL DEFAULT '0',
  `cdks` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `t_online_num`;
CREATE TABLE `t_online_num` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `date` varchar(50) DEFAULT NULL,
  `online_cnt` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
)






-- 每日新增
CREATE TABLE `t_new_user_regin` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `newuser_cnt` int(11) DEFAULT '0' COMMENT '新增用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日活跃
CREATE TABLE `t_activity_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `activeuser_cnt` int(11) DEFAULT '0' COMMENT '活跃用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30留存
CREATE TABLE `t_user_preserve` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日留存',
  `preserve_desc` varchar(20) DEFAULT NULL COMMENT '格式pu~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日付费统计
CREATE TABLE `t_money_pay_day` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `paycount_cnt` int(11) DEFAULT '0' COMMENT '付费人数',
  `moneytotal_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  `newpeople_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 任务统计
CREATE TABLE `t_task_statistics` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tastid` varchar(20) DEFAULT NULL COMMENT '任务id',
  `type` int(11) DEFAULT '0' COMMENT '任务类型',
  `task_cnt` int(11) DEFAULT '0' COMMENT '任务次数',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 前端通用统计
CREATE TABLE `t_role_click` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `clickpersion_cnt` int(11) DEFAULT '0' COMMENT '点击人数',
  `click_cnt` int(11) DEFAULT '0' COMMENT '点击数',
  `logresion` varchar(200) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 关卡统计
CREATE TABLE `t_stage_statistics` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `stage_id` varchar(20) DEFAULT NULL COMMENT '关卡id',
  `persion_cnt` int(11) DEFAULT '0' COMMENT '挑战人数',
  `first_cnt` int(11) DEFAULT '0' COMMENT '首次通关人数',
  `lose_cnt` int(11) DEFAULT '0' COMMENT '失败挑点次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30天点付费率
CREATE TABLE `t_money_preserve` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日点付费率',
  `preserve_desc` varchar(20) DEFAULT NULL COMMENT '格式pu~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30天LTV
CREATE TABLE `t_money_ltv` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日ltv',
  `preserve_desc` varchar(1000) DEFAULT NULL COMMENT '格式dm~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 分渠道统计
--

-- 每日新增
CREATE TABLE `c_new_user_regin` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `newuser_cnt` int(11) DEFAULT '0' COMMENT '新增用户',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日活跃
CREATE TABLE `c_activity_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `activeuser_cnt` int(11) DEFAULT '0' COMMENT '活跃用户',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30留存
CREATE TABLE `c_user_preserve` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日留存',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  `preserve_desc` varchar(20) DEFAULT NULL COMMENT '格式pu~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日付费统计
CREATE TABLE `c_money_pay_day` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `paycount_cnt` int(11) DEFAULT '0' COMMENT '付费人数',
  `moneytotal_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  `newpeople_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  `channel` varchar(20) DEFAULT NULL COMMENT '渠道',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 分服统计
--

-- 每日新增
CREATE TABLE `s_new_user_regin` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `newuser_cnt` int(11) DEFAULT '0' COMMENT '新增用户',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日活跃
CREATE TABLE `s_activity_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `activeuser_cnt` int(11) DEFAULT '0' COMMENT '活跃用户',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30留存
CREATE TABLE `s_user_preserve` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日留存',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  `preserve_desc` varchar(20) DEFAULT NULL COMMENT '格式pu~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 每日付费统计
CREATE TABLE `s_money_pay_day` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `date` varchar(20) DEFAULT NULL COMMENT '统计日期',
  `paycount_cnt` int(11) DEFAULT '0' COMMENT '付费人数',
  `moneytotal_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  `newpeople_cnt` int(11) DEFAULT '0' COMMENT '付费额',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30天点付费率
CREATE TABLE `s_money_preserve` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日点付费率',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  `preserve_desc` varchar(20) DEFAULT NULL COMMENT '格式pu~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 30天LTV
CREATE TABLE `s_money_ltv` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `end_date` varchar(20) DEFAULT NULL COMMENT '截止日期',
  `from_date` varchar(20) DEFAULT NULL COMMENT '开始日期',
  `day_num` int(11) DEFAULT '0' COMMENT '几日ltv',
  `server_id` int(11) DEFAULT '0' COMMENT '服务器id',
  `preserve_desc` varchar(1000) DEFAULT NULL COMMENT '格式dm~2--nu~15',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2017-09-13 10:05:45
