-- MySQL dump 10.13  Distrib 5.6.26, for osx10.8 (x86_64)
--
-- Host: localhost    Database: zhgly_prod
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `cp_degree`
--

DROP TABLE IF EXISTS `cp_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_degree` (
  `DEGREE_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '成色',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_degree`
--

LOCK TABLES `cp_degree` WRITE;
/*!40000 ALTER TABLE `cp_degree` DISABLE KEYS */;
INSERT INTO `cp_degree` VALUES ('45ab814aa7434ed39cca1464050a15fc','98新','98新','a1'),('8d27be91bb9746cdb5fb21873ac7595e','99新','99新','a1');
/*!40000 ALTER TABLE `cp_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_goods`
--

DROP TABLE IF EXISTS `cp_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_goods` (
  `GOODS_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT 'SN号',
  `BIANMA` varchar(30) DEFAULT NULL COMMENT '商品编码',
  `SPTYPE_ID` varchar(100) DEFAULT NULL COMMENT '商品类别',
  `SPBRAND_ID` varchar(100) DEFAULT NULL COMMENT '品牌',
  `SPUNIT_ID` varchar(100) DEFAULT NULL COMMENT '计量单位',
  `DESCRIPTION` varchar(5000) DEFAULT NULL COMMENT '商品描述',
  `SHORTDESC` varchar(500) DEFAULT NULL COMMENT '简述',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `ZCOUNT` int(11) DEFAULT NULL COMMENT '库存量',
  `DEGREE` varchar(100) DEFAULT NULL COMMENT '成色',
  `MATERIAL` varchar(100) DEFAULT NULL COMMENT '使用耗材',
  `INFEE` double(11,2) DEFAULT NULL COMMENT '进货价',
  `OUTFEE` double(11,2) DEFAULT NULL COMMENT '出货价',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `INCOUNT` int(11) DEFAULT NULL COMMENT '入库量',
  `OUTCOUNT` int(11) DEFAULT NULL COMMENT '出库量',
  PRIMARY KEY (`GOODS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_goods`
--

LOCK TABLES `cp_goods` WRITE;
/*!40000 ALTER TABLE `cp_goods` DISABLE KEYS */;
INSERT INTO `cp_goods` VALUES ('ce31c4cb7cfc46dcb43fcaa4f51baae1','联想X545打印机',NULL,'05879468eed641bb9c8e0cc1b8dfc464',NULL,'8cb22bada3f34bfca96aea50a3f70e6d','vsargwvsef3r22341df',NULL,'a1',0,'8d27be91bb9746cdb5fb21873ac7595e','ed876eb1f3114f7885bcabdc771b7842',800.00,1000.00,'2017-12-20 21:03:54',2,2);
/*!40000 ALTER TABLE `cp_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_material`
--

DROP TABLE IF EXISTS `cp_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_material` (
  `MATERIAL_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '使用耗材',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`MATERIAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_material`
--

LOCK TABLES `cp_material` WRITE;
/*!40000 ALTER TABLE `cp_material` DISABLE KEYS */;
INSERT INTO `cp_material` VALUES ('43e991b33c014d9bb7a69c8673d2599c','铝素','铝素','a1'),('ed876eb1f3114f7885bcabdc771b7842','碳素','碳素','a1');
/*!40000 ALTER TABLE `cp_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_spbrand`
--

DROP TABLE IF EXISTS `cp_spbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_spbrand` (
  `SPBRAND_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '品牌管理',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPBRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_spbrand`
--

LOCK TABLES `cp_spbrand` WRITE;
/*!40000 ALTER TABLE `cp_spbrand` DISABLE KEYS */;
INSERT INTO `cp_spbrand` VALUES ('1cfe0493c77242aaa25dab615975c767','联想','联想','a1'),('40c6813ded894322950181d48be8cc9b','神舟','神舟','a1'),('91fc0701fd58406aab9c0380bb76aa60','双飞燕','双飞燕','a1'),('a129234a7c584cedbc90f2917f3c9b9c','金士顿','金士顿','a1'),('bde3e3e047804bc9a3e8860021209e72','三星','三星','a1'),('dd8e2eb368564297b46e687e49d36ba6','华硕','华硕','a1'),('e52078ebc23d41d39afaff9e33dee49f','锐捷','锐捷','a1');
/*!40000 ALTER TABLE `cp_spbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_sptype`
--

DROP TABLE IF EXISTS `cp_sptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_sptype` (
  `SPTYPE_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '商品类别',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPTYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_sptype`
--

LOCK TABLES `cp_sptype` WRITE;
/*!40000 ALTER TABLE `cp_sptype` DISABLE KEYS */;
INSERT INTO `cp_sptype` VALUES ('05879468eed641bb9c8e0cc1b8dfc464','打印机','打印机','a1'),('05ebd3d333f148d39f82344874ba2d50','机箱','机箱','a1'),('09bdc517cc1d453ab8a425c1458e42db','键盘','键盘','a1'),('165b0dff1ab9473c934bf0c4885bcf53','内存条','内存条','a1'),('3de84765468f44ee8edea54a2ba91deb','鼠标','鼠标','a1'),('80c376c418014643aa1a77e2462ce704','主板','主板','a1'),('934817f95dc849d283127a2e93cb989f','cpu','cpu','a1'),('95a3946f4be247ecab2979ae90833a76','硬盘','硬盘','a1'),('edb124261ee341c38b64da4de887e1a1','显示器','显示器','a1');
/*!40000 ALTER TABLE `cp_sptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp_spunit`
--

DROP TABLE IF EXISTS `cp_spunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp_spunit` (
  `SPUNIT_ID` varchar(100) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '计量单位',
  `BZ` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`SPUNIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp_spunit`
--

LOCK TABLES `cp_spunit` WRITE;
/*!40000 ALTER TABLE `cp_spunit` DISABLE KEYS */;
INSERT INTO `cp_spunit` VALUES ('699a532338af46739f6c930f882f1fae','件','件','a1'),('81aa5db9d44d4224a600506d120f4383','块','块','a1'),('87e8777c1b514085a09e0f3438151b24','盒','盒','a1'),('8cb22bada3f34bfca96aea50a3f70e6d','个','个','a1'),('abbb90a0b5624157a0593e2326d92720','条','条','a1'),('fe5dfe2eab30400ead60edb49590b99f','包','包','a1');
/*!40000 ALTER TABLE `cp_spunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_fhdb`
--

DROP TABLE IF EXISTS `db_fhdb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_fhdb` (
  `FHDB_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `BACKUP_TIME` varchar(32) DEFAULT NULL COMMENT '备份时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `SQLPATH` varchar(300) DEFAULT NULL COMMENT '存储位置',
  `TYPE` int(1) NOT NULL COMMENT '类型',
  `DBSIZE` varchar(10) DEFAULT NULL COMMENT '文件大小',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHDB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_fhdb`
--

LOCK TABLES `db_fhdb` WRITE;
/*!40000 ALTER TABLE `db_fhdb` DISABLE KEYS */;
INSERT INTO `db_fhdb` VALUES ('131c7514e83b4f17bafa2cb65e9c9463','系统','2017-11-23 14:40:00','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123144000.sql',1,'73.695','定时备份操作'),('433fec5b3a3a43d1b9dfe38a41dbbc84','admin','2017-11-23 14:25:19','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123142517.sql',1,'72.827','admin备份全库操作'),('542de742d68d4277bcebfa91d7449f2e','系统','2017-11-23 14:46:02','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123144600.sql',1,'74.145','定时备份操作'),('9111d6ee2c58426f833b7129f23ffa8c','系统','2017-11-23 14:34:00','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123143400.sql',1,'73.427','定时备份操作'),('cb2aa964c7464f82b25ed49f89cba1d7','系统','2017-11-23 14:45:00','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123144500.sql',1,'73.961','定时备份操作'),('d40002bb0a02472d80b6df5ace6ce43e','系统','2017-11-23 14:35:00','整库','/Users/liuyw/Desktop/mysql_backup/20171123/zhgly_prod_20171123143500.sql',1,'73.353','定时备份操作');
/*!40000 ALTER TABLE `db_fhdb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db_timingbackup`
--

DROP TABLE IF EXISTS `db_timingbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_timingbackup` (
  `TIMINGBACKUP_ID` varchar(100) NOT NULL,
  `JOBNAME` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `CREATE_TIME` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `STATUS` int(1) NOT NULL COMMENT '类型',
  `FHTIME` varchar(30) DEFAULT NULL COMMENT '时间规则',
  `TIMEEXPLAIN` varchar(100) DEFAULT NULL COMMENT '规则说明',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`TIMINGBACKUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_timingbackup`
--

LOCK TABLES `db_timingbackup` WRITE;
/*!40000 ALTER TABLE `db_timingbackup` DISABLE KEYS */;
INSERT INTO `db_timingbackup` VALUES ('056c12fa6c2a457f907aa50df7be613f','all_437295','2017-11-23 14:45:11','all',2,'0 0/1  * * * ?','','每分钟备份一次'),('311e06c34a5e4518a86d5d30799f9b55','sys_app_user_515762','2016-04-11 17:04:55','sys_app_user',2,'1/2 * * ? * *','每个月的 每周 每天 每小时执行一次','备份任务'),('bc4a788bc2ec40bdb1b7730131c26d42','sys_app_user_359515','2016-04-12 17:24:05','sys_app_user',2,'1/3 * * ? * *','每个月的 每周 每天 每小时执行一次','ssss');
/*!40000 ALTER TABLE `db_timingbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_attachment`
--

DROP TABLE IF EXISTS `erp_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_attachment` (
  `ATTACHMENT_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_attachment`
--

LOCK TABLES `erp_attachment` WRITE;
/*!40000 ALTER TABLE `erp_attachment` DISABLE KEYS */;
INSERT INTO `erp_attachment` VALUES ('295926172a884b28ad9adf454137d6eb','电脑包','a1'),('b74fa2d77faf4aaca1f0ba64927e6335','键盘','a1'),('cb070bac61cf46c3a1e2790a8483c1e1','鼠标','a1'),('fa51fc07acb1405e9e6e3c106095d7a6','显示器','a2');
/*!40000 ALTER TABLE `erp_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_company`
--

DROP TABLE IF EXISTS `erp_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_company` (
  `COMPANY_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '姓名',
  `PHONE` varchar(100) DEFAULT NULL COMMENT '手机',
  `ADDRESS` varchar(1000) DEFAULT NULL COMMENT '地址',
  `WEIXIN` varchar(100) DEFAULT NULL COMMENT '门店',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '建档时间',
  `MONEY` double(11,2) DEFAULT NULL COMMENT '订单总金额',
  `INCOME` double(11,2) DEFAULT NULL COMMENT '实收金额',
  `OUTMONEY` double(11,2) DEFAULT NULL COMMENT '欠费金额',
  `LEVEL` varchar(100) DEFAULT NULL COMMENT '客户级别',
  `REMARKS1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CODE` varchar(100) DEFAULT NULL COMMENT '编码',
  `BILLFEE` double(11,2) DEFAULT NULL COMMENT '累计利润',
  `COUNTBILL` int(11) DEFAULT NULL COMMENT '累计订单数量',
  `BASEMONEY` double(11,2) DEFAULT NULL COMMENT '累计订单成本',
  PRIMARY KEY (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_company`
--

LOCK TABLES `erp_company` WRITE;
/*!40000 ALTER TABLE `erp_company` DISABLE KEYS */;
INSERT INTO `erp_company` VALUES ('018ea6031c1e478fb5fd74b63bd1c3c9','刘雅威','13750528053','广州市海珠区','小众蛙科技','2017-12-12 10:17:09',3000.00,2500.00,500.00,'fce4d25838a94084930de01d8585a3a6','测试','a1','DCKH-20171212-4852',2000.00,3,1000.00),('3eecef48344b48f0b93dddaf6c4da987','刘德华','13750528054','广州市海珠区','小众蛙科技','2017-12-12 10:49:41',1000.00,800.00,200.00,'6077ef74f49f4b8d917b56e8eae8b8ce','','a1','DCKH-20171212-1314',500.00,1,500.00);
/*!40000 ALTER TABLE `erp_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_companytype`
--

DROP TABLE IF EXISTS `erp_companytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_companytype` (
  `LEVEL_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '客户类别',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_companytype`
--

LOCK TABLES `erp_companytype` WRITE;
/*!40000 ALTER TABLE `erp_companytype` DISABLE KEYS */;
INSERT INTO `erp_companytype` VALUES ('6077ef74f49f4b8d917b56e8eae8b8ce','潜在客户','a1'),('925e3d639b8e4c46b06bef2cf1c8f949','流动客户','a1'),('fce4d25838a94084930de01d8585a3a6','优质客户','a1');
/*!40000 ALTER TABLE `erp_companytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_customer`
--

DROP TABLE IF EXISTS `erp_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_customer` (
  `CUSTOMER_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '姓名',
  `AGE` varchar(10) DEFAULT NULL COMMENT '年龄',
  `PHONE` varchar(100) DEFAULT NULL COMMENT '手机',
  `ADDRESS` varchar(1000) DEFAULT NULL COMMENT '地址',
  `QQ` double(11,2) DEFAULT NULL COMMENT '维修成本',
  `WEIXIN` varchar(100) DEFAULT NULL COMMENT '微信',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '建档时间',
  `MONEY` double(11,2) DEFAULT NULL COMMENT '订单金额',
  `LEVEL` varchar(100) DEFAULT NULL COMMENT '级别',
  `REMARKS1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `REMARKS2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `USERNAME` varchar(100) DEFAULT NULL,
  `DEVICE` varchar(1000) DEFAULT NULL,
  `PLAN` varchar(1000) DEFAULT NULL,
  `PAY` varchar(1000) DEFAULT NULL,
  `COMPANY_ID` varchar(100) DEFAULT NULL COMMENT '客户ID',
  `BILLFEE` double(11,2) DEFAULT NULL COMMENT '利润',
  `INCOME` double(11,2) DEFAULT NULL COMMENT '实收金额',
  `OUTMONEY` double(11,2) DEFAULT NULL COMMENT '欠费金额',
  `BILLSTATUS` varchar(100) DEFAULT NULL COMMENT '结算状态',
  `BILLTIME` varchar(32) DEFAULT NULL COMMENT '结算时间',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_customer`
--

LOCK TABLES `erp_customer` WRITE;
/*!40000 ALTER TABLE `erp_customer` DISABLE KEYS */;
INSERT INTO `erp_customer` VALUES ('00395ffd80064cd4a2e151c117a9bd31','DCDD-20171221-3198',NULL,'','',0.00,'','2017-12-21 13:52:05',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('1e032f17dbca4127a8e26f235f05ad40','DCDD-20171212-7520',NULL,'13750528053','',500.00,'刘雅威','2017-12-12 10:41:15',1000.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','6adc1f9e5ece468c993d27d3bdbd6dbe','现金支付','018ea6031c1e478fb5fd74b63bd1c3c9',500.00,1000.00,0.00,'1','2017-12-12 10:56:22'),('1f3c1a87548f4b5aa1005544e240f24c','DCDD-20171221-7947',NULL,'','',0.00,'','2017-12-21 13:51:57',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('3576f42d2bfb43f892c569a3f75d5966','DCDD-20171229-4768',NULL,'','',0.00,'','2017-12-29 09:29:32',0.00,'','','键盘','a1','电脑','','微信支付','',0.00,0.00,0.00,'0',NULL),('373b89534aad441b8911e330522b10b1','DCDD-20171221-6601',NULL,'','',0.00,'','2017-12-21 14:27:55',100.00,'狗狗狗狗','14c7429405b2466684eaff4914da4b5b','键盘','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',100.00,0.00,100.00,'2','2017-12-21 14:39:03'),('3f7b0c3de37445868ab1c9446560e3ab','DCDD-20171212-8839',NULL,'13750528053','系统升级，win7-->win8',0.00,'刘雅威','2017-12-12 10:40:16',1000.00,'56d7c5a4397c42b5bc3989d6dd46eec3','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','9673b3bc8fa04658bf90b8c96bb653ba','微信支付','018ea6031c1e478fb5fd74b63bd1c3c9',1000.00,1000.00,0.00,'1','2017-12-12 10:56:45'),('53947cf2c4ca4faba7334c6317c79d39','DCDD-20171221-2856',NULL,'','',0.00,'','2017-12-21 10:02:12',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('69a809c65e194c5cab8958a0da0709c0','DCDD-20171212-9184',NULL,'13750528053','电脑卡顿，升级硬盘',500.00,'刘雅威','2017-12-12 10:37:28',1000.00,'bcdbb5af953f4472915a2644d42f2ce9','d581e40da6eb44878a27e84bfe55a59e','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','018ea6031c1e478fb5fd74b63bd1c3c9',500.00,1000.00,0.00,'1','2017-12-15 13:44:24'),('80ff2e86f56843e28813c63aa91551dd','DCDD-20171221-9797',NULL,'','',0.00,'','2017-12-21 13:51:52',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('82cc4414b4e84d179d070160d0cc31a2','DCDD-20171221-7511',NULL,'','',0.00,'','2017-12-21 13:52:09',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','鼠标','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',''),('88c2091d5c7a4c6ea8f56a1b011249a1','DCDD-20171221-6111',NULL,'','',0.00,'','2017-12-21 13:52:03',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('aa85918aa5c7400d8621c94d3e71b544','DCDD-20171221-4647',NULL,'','',0.00,'','2017-12-21 13:51:59',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('b0fffe2f33e74c61907e5c42350c3884','DCDD-20171229-3531',NULL,'','',0.00,'','2017-12-29 09:28:02',0.00,'','14c7429405b2466684eaff4914da4b5b','','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('c65b2c0bb71f4ab792bdb65f0e70fe2b','DCDD-20171221-3414',NULL,'','',0.00,'','2017-12-21 13:51:44',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('cb2ded713fe249b4a4721e444e84ba3f','DCDD-20171221-9282',NULL,'','',0.00,'','2017-12-21 13:52:07',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('cf350e81ed5d479eb01ab4d65fea5faf','DCDD-20171212-3910',NULL,'13750528054','电脑卡顿，需要升级',500.00,'刘德华','2017-12-12 10:49:41',1000.00,'bcdbb5af953f4472915a2644d42f2ce9','d581e40da6eb44878a27e84bfe55a59e','电脑包','a1','电脑','f57dff3d0c1e476e8e94a608bbee0e4d','微信支付','3eecef48344b48f0b93dddaf6c4da987',500.00,800.00,200.00,'2','2017-12-20 23:44:38'),('da29c847ce504ec68040ce7d0441c725','DCDD-20171221-7310',NULL,'','',0.00,'','2017-12-21 13:51:55',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','电脑包','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0',NULL),('f286aaca23e749358a07e4440739f667','DCDD-20171221-2930',NULL,'','',0.00,'','2017-12-21 13:52:01',0.00,'50141667fca64083819a37453fd27e49','14c7429405b2466684eaff4914da4b5b','鼠标','a1','电脑','295926172a884b28ad9adf454137d6eb','微信支付','',0.00,0.00,0.00,'0','');
/*!40000 ALTER TABLE `erp_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_customerimg`
--

DROP TABLE IF EXISTS `erp_customerimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_customerimg` (
  `CUSTOMERIMG_ID` varchar(100) NOT NULL,
  `CDESCRIPTION` varchar(3000) DEFAULT NULL COMMENT '描述',
  `CTIME` varchar(32) DEFAULT NULL COMMENT '记录日期',
  `CUSTOMER_ID` varchar(100) DEFAULT NULL COMMENT '商户ID',
  `MAINBOARD` varchar(100) DEFAULT NULL COMMENT '主板',
  `DISPLAYCARD` varchar(100) DEFAULT NULL COMMENT '显卡',
  `STORAGE` varchar(100) DEFAULT NULL COMMENT '光存储',
  `CPU` varchar(100) DEFAULT NULL COMMENT 'CPU',
  `MEMORY` varchar(100) DEFAULT NULL COMMENT '内存',
  `DISK` varchar(100) DEFAULT NULL COMMENT '硬盘',
  `VOIDCARD` varchar(100) DEFAULT NULL COMMENT '声卡',
  `DISPLAYER` varchar(100) DEFAULT NULL COMMENT '显示器',
  `KEYBOARD` varchar(100) DEFAULT NULL COMMENT '鼠标键盘',
  `RADIATOR` varchar(100) DEFAULT NULL COMMENT '散热器',
  `PRINTER` varchar(100) DEFAULT NULL COMMENT '打印机',
  `OTHERS` varchar(100) DEFAULT NULL COMMENT '其他',
  `REMARK1` varchar(100) DEFAULT NULL COMMENT '备注1',
  `REMARK2` varchar(100) DEFAULT NULL COMMENT '备注2',
  `CODE` varchar(100) DEFAULT NULL COMMENT '编号',
  `STATUS` varchar(100) DEFAULT NULL COMMENT '维修状态',
  PRIMARY KEY (`CUSTOMERIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_customerimg`
--

LOCK TABLES `erp_customerimg` WRITE;
/*!40000 ALTER TABLE `erp_customerimg` DISABLE KEYS */;
INSERT INTO `erp_customerimg` VALUES ('1e55c416a9a84153b8d251f806fe5c17','<p>第一次维修，已经解决问题。</p>','2017-10-31 23:44:45','58e7e1707e6d466194e8ec2f7bb06a87',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('22b321f25079497dabe868ac2e800434','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/79101509448974473.png\" title=\"1.png\"/></p>','2017-10-31 19:22:56','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2a082ea33c0a49fc917a8d4d2ed14751','','2017-12-05 18:04:55','2a81b426b413475bb08273bf0139c9a2','','','','','','','','','','','','','','','DCJQ-20171205-5074','已修复'),('2e9c1f391ef643f0994fa6fa2da72f27','<p>第二次出问题，保修，已经解决。</p>','2017-11-01 00:15:35','58e7e1707e6d466194e8ec2f7bb06a87',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('32eed76f40d2421b889644c6439a1e3a','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/91091509419279178.png\" title=\"1.png\"/></p>','2017-10-31 11:08:06','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('40981374720243969261ce5f4b840cb6','','2017-12-15 13:46:23','cf350e81ed5d479eb01ab4d65fea5faf','','','','','','','','','w','','',NULL,'','','DCJQ-20171215-7829','295926172a884b28ad9adf454137d6eb'),('432739946ba6426d8c8289ece597ffb6','<p>电脑整机</p>','2017-12-12 10:38:27','69a809c65e194c5cab8958a0da0709c0','','','','','','','','','','','',NULL,'','','DCJQ-20171212-7628','f57dff3d0c1e476e8e94a608bbee0e4d'),('50c0f262343e4d25bd29d6375c19b333','<p>2</p>','2017-12-06 17:57:14','a121824843584cbcaf550fc28e4a5aa4','','','','','','','','','','','',NULL,'','','DCJQ-20171206-6990','已修复'),('54d3c806ab4b4f298c623f7b9a89e319','<p>123</p>','2017-12-15 09:46:34','cf350e81ed5d479eb01ab4d65fea5faf','主板信息','显卡信息','光存储信息','CPU信息','内存信息','硬盘信息','声卡信息','显示器信息','鼠标键盘信息','散热器信息','打印机信息',NULL,'备注1信息','备注2信息','DCJQ-20171215-9611','4c8edb1a46c44df5aac0be6fa39c5d62'),('642adfb03d4e48c7adf36e6f03c81bac','<p>123123</p>','2017-12-05 23:11:46','2a81b426b413475bb08273bf0139c9a2','123123123','123123123123','1231231313','12312312313','12312313123','123123123','123123123','12312312321','123123123','21331231231','123123123',NULL,'12312312','31231312','DCJQ-20171205-8836','待取走'),('76c9ba5ab56d47a294f4a3208b15995e','<p>认为</p>','2017-11-07 21:32:43','6bf5d9f45b9b429aad6faea533e2030c',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9dcfb6f26a764f299ba888a5edb4b3f9','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/72301509438423438.png\" title=\"1.png\"/></p>','2017-10-31 16:27:09','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('dc03951a83d04c46bb6fcf4144bed1eb','<p><img src=\"/test/plugins/ueditor/jsp/upload1/20171031/69371509448588275.png\" title=\"1.png\"/></p>','2017-10-31 19:16:30','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('e3fa9806e04e4a15b79239ee6dc11260','<p>fsfsfsfsfsdfsf</p>','2017-12-06 00:20:15','2a81b426b413475bb08273bf0139c9a2','3123','1231','123','123','123','132','123','123','123','132','1231',NULL,'23','132liu',NULL,'待检修'),('ef6bf36d01784779908a8b12c7b04281','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/25891509447119587.png\" title=\"14.png\"/></p>','2017-10-31 18:53:11','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f45283d203ab433fb6ebc96ead02e920','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/45481509449559952.png\" title=\"1.png\"/></p>','2017-10-31 19:32:42','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('f7285b39d00e4d2d9b5253053b005169','<p><img src=\"/online/plugins/ueditor/jsp/upload1/20171031/28601509441868525.png\" title=\"1.png\"/></p>','2017-10-31 17:24:54','e49b55a25732411daf619d25c48961c5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('ff49180755f941cfb00b981cd0d4b9eb','<p>ddd<img src=\"/FHSHGL/plugins/ueditor/jsp/upload1/20170304/94331488563343291.jpg\" title=\"n.jpg\"/></p>','2017-03-04 01:49:05','a277421ef2524e9ab5a4492a8a7a4ac2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `erp_customerimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_device`
--

DROP TABLE IF EXISTS `erp_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_device` (
  `DEVICE_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DEVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_device`
--

LOCK TABLES `erp_device` WRITE;
/*!40000 ALTER TABLE `erp_device` DISABLE KEYS */;
INSERT INTO `erp_device` VALUES ('295926172a884b28ad9adf454137d6eb','电脑','a1'),('6647cfaa14bc46f5bf933e35bc7351f1','主板','a1'),('8e6b24a5ffad43a599e5d78ac47f1608','打印机','a1'),('a6c15bba1dc54834ba9988112b35bc9c','显示器','a1'),('aedab101c2f84b80a25f31b709f03ad7','硬盘','a1'),('b74fa2d77faf4aaca1f0ba64927e6335','键盘','a1');
/*!40000 ALTER TABLE `erp_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_intoku`
--

DROP TABLE IF EXISTS `erp_intoku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_intoku` (
  `INTOKU_ID` varchar(100) NOT NULL,
  `GOODS_ID` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `INCOUNT` int(11) NOT NULL COMMENT '数量',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '单价',
  `ZPRICE` double(11,2) DEFAULT NULL COMMENT '总价',
  `INTIME` varchar(32) DEFAULT NULL COMMENT '入库时间',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `GOODS_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`INTOKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_intoku`
--

LOCK TABLES `erp_intoku` WRITE;
/*!40000 ALTER TABLE `erp_intoku` DISABLE KEYS */;
INSERT INTO `erp_intoku` VALUES ('92ede881553e4b9999c42a1f46eebef4','0af635859c224f57a7bf3f224d8c3eb3',2,1000.00,2000.00,'2017-12-19 20:23:51','','a1','二手打印机'),('a8548ee1d92f4bae817d0297ead7bfaf','57416dd784bc4464b88f266ac80398f1',2,1000.00,2000.00,'2017-12-19 20:23:33','','a1','二手笔记本');
/*!40000 ALTER TABLE `erp_intoku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_level`
--

DROP TABLE IF EXISTS `erp_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_level` (
  `LEVEL_ID` varchar(100) NOT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '级别',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`LEVEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_level`
--

LOCK TABLES `erp_level` WRITE;
/*!40000 ALTER TABLE `erp_level` DISABLE KEYS */;
INSERT INTO `erp_level` VALUES ('1a1b2fbf64864e78854fe04aee748acc','大客户','a2'),('50141667fca64083819a37453fd27e49','硬配件维修','a1'),('56d7c5a4397c42b5bc3989d6dd46eec3','软件维护','a1'),('bcdbb5af953f4472915a2644d42f2ce9','电脑升级','a1');
/*!40000 ALTER TABLE `erp_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_outku`
--

DROP TABLE IF EXISTS `erp_outku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_outku` (
  `OUTKU_ID` varchar(100) NOT NULL,
  `GOODS_ID` varchar(100) DEFAULT NULL COMMENT '商品ID',
  `INCOUNT` int(11) NOT NULL COMMENT '数量',
  `PRICE` double(11,2) DEFAULT NULL COMMENT '出货价',
  `ZPRICE` double(11,2) DEFAULT NULL COMMENT '出货总价',
  `OUTTIME` varchar(32) DEFAULT NULL COMMENT '出库时间',
  `GOODS_NAME` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `BZ` text,
  `INPRICE` double(11,2) DEFAULT NULL COMMENT '进货总价',
  `INCOME` double(11,2) DEFAULT NULL COMMENT '利润',
  PRIMARY KEY (`OUTKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_outku`
--

LOCK TABLES `erp_outku` WRITE;
/*!40000 ALTER TABLE `erp_outku` DISABLE KEYS */;
INSERT INTO `erp_outku` VALUES ('16417315eabd445fbe40dcef9b1d942c','ce31c4cb7cfc46dcb43fcaa4f51baae1',1,1000.00,1000.00,'2017-12-20 21:09:39','联想X545打印机','a1',NULL,800.00,200.00),('66384455315d443a88f54fdac8923410','ce31c4cb7cfc46dcb43fcaa4f51baae1',1,1000.00,1000.00,'2017-12-20 23:30:20','联想X545打印机','a1',NULL,800.00,200.00);
/*!40000 ALTER TABLE `erp_outku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_pay`
--

DROP TABLE IF EXISTS `erp_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_pay` (
  `PAY_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_pay`
--

LOCK TABLES `erp_pay` WRITE;
/*!40000 ALTER TABLE `erp_pay` DISABLE KEYS */;
INSERT INTO `erp_pay` VALUES ('295926172a884b28ad9adf454137d6eb','微信支付','a1'),('b74fa2d77faf4aaca1f0ba64927e6335','现金支付','a1');
/*!40000 ALTER TABLE `erp_pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_plan`
--

DROP TABLE IF EXISTS `erp_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_plan` (
  `PLAN_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_plan`
--

LOCK TABLES `erp_plan` WRITE;
/*!40000 ALTER TABLE `erp_plan` DISABLE KEYS */;
INSERT INTO `erp_plan` VALUES ('295926172a884b28ad9adf454137d6eb','已修复','a1'),('4c8edb1a46c44df5aac0be6fa39c5d62','超过1个月未取','a1'),('6adc1f9e5ece468c993d27d3bdbd6dbe','修复中','a1'),('9673b3bc8fa04658bf90b8c96bb653ba','待取走','a1'),('b74fa2d77faf4aaca1f0ba64927e6335','无法修复','a1'),('f33c3065759d409790b6c5013d79eaea','已修复未收款','a1'),('f33f77e91c074d119258b18fc5aa2c11','部分欠费','a1'),('f57dff3d0c1e476e8e94a608bbee0e4d','待检修','a1');
/*!40000 ALTER TABLE `erp_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_remarks`
--

DROP TABLE IF EXISTS `erp_remarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_remarks` (
  `REMARKS_ID` varchar(100) NOT NULL,
  `REMARKS` varchar(1000) DEFAULT NULL COMMENT '备注',
  `USERNAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REMARKS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_remarks`
--

LOCK TABLES `erp_remarks` WRITE;
/*!40000 ALTER TABLE `erp_remarks` DISABLE KEYS */;
INSERT INTO `erp_remarks` VALUES ('14c7429405b2466684eaff4914da4b5b','吴亦凡','a1'),('d581e40da6eb44878a27e84bfe55a59e','邓超','a1'),('fa51fc07acb1405e9e6e3c106095d7a6','脱发比较严重','a2');
/*!40000 ALTER TABLE `erp_remarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries` (
  `DICTIONARIES_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `ORDER_BY` int(11) NOT NULL COMMENT '排序',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `TBSNAME` varchar(100) DEFAULT NULL COMMENT '排查表',
  PRIMARY KEY (`DICTIONARIES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES ('0193ffbfae1e49e0b7810546cada316a','济南','JiNan','0030301',1,'10f46a521ea0471f8d71ee75ac3b5f3a','济南',''),('096e4ec8986149d994b09e604504e38d','黄浦区','huangpu','0030201',1,'f1ea30ddef1340609c35c88fb2919bee','黄埔',''),('10f46a521ea0471f8d71ee75ac3b5f3a','山东','ShanDong','00303',3,'be4a8c5182c744d28282a5345783a77f','山东省',''),('12a62a3e5bed44bba0412b7e6b733c93','北京','beijing','00301',1,'be4a8c5182c744d28282a5345783a77f','北京',''),('507fa87a49104c7c8cdb52fdb297da12','宣武区','xuanwuqu','0030101',1,'12a62a3e5bed44bba0412b7e6b733c93','宣武区',''),('66f1ff79b13947da98525aff7380ef50','高新区','gaoxinqu','003030101',1,'0193ffbfae1e49e0b7810546cada316a','高新区',''),('8994f5995f474e2dba6cfbcdfe5ea07a','语文','yuwen','00201',1,'fce20eb06d7b4b4d8f200eda623f725c','语文',''),('8ea7c44af25f48b993a14f791c8d689f','分类','fenlei','001',1,'0','分类',''),('be4a8c5182c744d28282a5345783a77f','地区','diqu','003',3,'0','地区',''),('d428594b0494476aa7338d9061e23ae3','红色','red','00101',1,'8ea7c44af25f48b993a14f791c8d689f','红色',''),('de9afadfbed0428fa343704d6acce2c4','绿色','green','00102',2,'8ea7c44af25f48b993a14f791c8d689f','绿色',''),('f1ea30ddef1340609c35c88fb2919bee','上海','shanghai','00302',2,'be4a8c5182c744d28282a5345783a77f','上海',''),('fce20eb06d7b4b4d8f200eda623f725c','课程','kecheng','002',2,'0','课程','');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhbutton`
--

DROP TABLE IF EXISTS `sys_fhbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhbutton`
--

LOCK TABLES `sys_fhbutton` WRITE;
/*!40000 ALTER TABLE `sys_fhbutton` DISABLE KEYS */;
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06','导出EXCEL','toExcel','导出EXCEL'),('46992ea280ba4b72b29dedb0d4bc0106','发邮件','email','发送电子邮件'),('4efa162fce8340f0bd2dcd3b11d327ec','导入EXCEL','FromExcel','导入EXCEL到系统用户'),('cc51b694d5344d28a9aa13c84b7166cd','发短信','sms','发送短信'),('da7fd386de0b49ce809984f5919022b8','站内信','FHSMS','发送站内信');
/*!40000 ALTER TABLE `sys_fhbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhlog`
--

DROP TABLE IF EXISTS `sys_fhlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhlog` (
  `FHLOG_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `CZTIME` varchar(32) DEFAULT NULL COMMENT '操作时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '事件',
  PRIMARY KEY (`FHLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhlog`
--

LOCK TABLES `sys_fhlog` WRITE;
/*!40000 ALTER TABLE `sys_fhlog` DISABLE KEYS */;
INSERT INTO `sys_fhlog` VALUES ('0013c2d502fc458ebdd804f31b4d5144','admin','2017-12-06 00:57:47','新增菜单客户管理'),('005ebe69b033489c974aa78be5afeb06','admin','2017-12-21 18:30:59','修改角色菜单权限，角色ID为:3'),('00aa867126214d72acd176961c4e6299','a1','2017-12-11 11:37:52','登录系统'),('00ab6ec185da490c8773230c11da19e7','a1','2017-12-19 17:07:00','登录系统'),('024e7391d16b4bf3b0d6dd0138f6f27a','a1','2017-12-11 20:22:52','登录系统'),('02688771fce24d10b12a87c716c4001c','admin','2017-10-31 14:58:46','登录系统'),('02d1c9950bc14e3da3aa85a78a024518','admin','2017-11-11 13:35:27','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('02f6c8ecc0ab4637aca78d1e061e4512','admin','2017-11-11 16:12:51','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('0327a2aa094e4224b9e87d189e5e9e29','a1','2017-12-06 17:10:05','登录系统'),('0328c4519c0143caa1b08296cd143c55','a1','2017-12-20 18:52:13','退出'),('032cfecb3cd54e0699d3e6aa86a4a2cb','a1','2017-11-01 11:00:07','登录系统'),('035202b4e067485ba199367bece3b78a','admin','2017-12-20 18:30:49','删除菜单ID83'),('036215a5b4584383957df443de602fa9','a1','2017-12-08 10:26:54','登录系统'),('0369d18c3a564ba39f1d8c876935e549','a0','2017-03-06 01:19:13','退出'),('038c07a7d64e4785bce61b394954f01c','admin','2017-12-12 09:14:36','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('03db449db35a4d3690d906763df538e3','a1','2017-11-01 11:09:38','登录系统'),('0427dc27baef498b839bc952bc3abf75','admin','2017-10-31 11:10:38','修改菜单订单归档'),('044f8c077be44ac693c88c3572ece831','admin','2017-12-07 15:48:01','新增菜单客户类型'),('0457d4fadf4a46e9842e46657c93c05c','a1','2017-12-18 22:49:20','登录系统'),('04f2b3ba5ab64c8c9c2813c6b5321f32','admin','2017-12-15 11:58:28','修改菜单财务分析'),('04f4520360da4c25bdaa05af481c0740','a1','2017-12-08 00:39:15','登录系统'),('050ed912115a40559ec09d7dafea8e7d','admin','2017-12-20 18:08:07','修改菜单订单结算'),('053ad6cf8ece43ffb2a6bbc921f61234','a0','2017-03-06 01:19:06','登录系统'),('056ddf7f9c93460db5f4ae089a253d4a','a1','2017-10-31 19:22:31','登录系统'),('05875dafa86949268d9b50153e986b9b','a1','2017-12-07 15:49:07','登录系统'),('05907ec9461648e38e10394ac2532bd4','a1','2017-12-05 16:54:53','登录系统'),('05974c837c844ec9ae2652b2601e73a1','a1','2017-12-11 10:01:55','登录系统'),('05bd45e3768e467c949bff713f4697ab','admin','2017-11-11 16:46:26','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('05c64f226a494582b6c956ddf7e35e1e','admin','2017-11-11 16:49:31','退出'),('0663555d12434fa6a28266bb6f6280d0','a1','2017-10-31 14:41:57','登录系统'),('069319b858e64ff9ab57b405158583cc','admin','2017-12-12 12:19:32','新增系统用户：叶赵东'),('06f375fef1a04c6c91ad360def3a1513','admin','2017-12-18 18:00:26','新增菜单使用耗材'),('071e256b4e144ec894b77756d2bae4c1','a1','2017-11-11 21:38:40','退出'),('0796f9c7b3d8464ab2ab1ea630df309f','a1','2017-12-11 10:59:41','登录系统'),('07994c62d1204e84872445802d40da72','a1','2017-12-13 21:48:19','退出'),('0805007ae11c4b1e873a15b8fe927770','admin','2017-12-12 09:11:32','新增菜单近30日订单'),('081019bd85fb4593a01e3444912f1bd8','admin','2017-10-31 11:10:03','修改菜单订单管理'),('085ffcee50e74ca3b8eb6847794f8dc7','admin','2017-12-19 11:03:55','登录系统'),('08619872cadb4171bc86a0d54d03b956','a1','2017-12-18 15:06:21','登录系统'),('08a1436b2e7b4ccda674a2447fc67a2d','a2','2017-11-01 10:10:47','登录系统'),('08f08c19758f43b893cfc7a737cc734a','admin','2017-10-31 14:45:35','登录系统'),('08f9d4cfba18491296f099abc7eea08c','a1','2017-12-15 14:03:59','登录系统'),('092301b8873e4deb95c32e8e20f34467','admin','2017-11-23 15:26:12','退出'),('092370d61ac442df82983b7684228169','admin','2017-12-07 21:50:55','退出'),('096a00121f214011a1325afe8aaa90f6','a1','2017-12-20 20:45:22','登录系统'),('097c6039c1a74a6eaac8a3571aedcb4e','a1','2017-12-20 17:09:59','登录系统'),('09adddc3213b4234926d789b627847f1','a1','2017-12-05 17:05:40','登录系统'),('0a652fc00df7438c87de2ce3c4fbcc57','a1','2017-11-07 21:31:14','登录系统'),('0a7373c1fc0b409b990a5199b7af3155','a1','2017-10-31 11:11:36','登录系统'),('0ac25f4e84a0455caa1149bae959af8c','admin','2017-12-12 12:15:28','修改菜单维修管理'),('0ae5d4b675eb4dc386e087258a11ebd3','admin','2017-11-01 10:33:44','登录系统'),('0b2ea234a203411c9d341a7fdf2660e6','a1','2017-12-07 20:17:30','登录系统'),('0b2ead2f0d5a4d0b9349414b7864a203','admin','2017-12-19 16:34:01','新增菜单近30日商品销售分析'),('0b79c84011f4497eabeca746cef1f4d4','a1','2017-12-07 17:41:41','登录系统'),('0ba6561e3654443cb20addf88fce00a2','admin','2017-12-21 18:20:04','修改角色:人员管理'),('0bc212b5c7564bf9b46ddc72d4a39260','a1','2017-12-15 11:46:05','登录系统'),('0bc3bc333ff743a8b166b936351dd1b8','admin','2017-10-31 11:44:06','修改系统用户：admin'),('0bddea53059f4254b759c159b4c37a0c','a1','2017-12-07 10:00:54','登录系统'),('0bf62f8dda3f4f899ddc1e03a3ee0ba5','a1','2017-12-06 09:31:33','登录系统'),('0c085013c2744e9d9ded967c275d07e6','a1','2017-10-31 14:53:48','登录系统'),('0ca1df1c923c43d9aaeb0c291e9924da','a1','2017-12-06 01:00:14','登录系统'),('0cae8d3b6e2a4d2e80c1f1fbee779e9f','a1','2017-12-19 20:09:41','登录系统密码或用户名错误'),('0cb2f1c882864ca8aeaaa4f4439806c8','admin','2017-12-12 12:21:10','退出'),('0d04ac88b955487ca97ad066f9e54b6c','admin','2017-12-21 14:46:46','登录系统'),('0d56034530924550a356f8d04d653a73','a1','2017-12-12 17:06:14','登录系统'),('0d752693c1db489bbbfbf2b858151daa','a1','2017-12-19 09:53:05','登录系统'),('0e3ffb9f2ef8433bb69bed4cad666020','admin','2017-12-15 12:00:32','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('0e745489e8e449d0995ae20dfac14efe','a1','2017-12-12 13:02:05','登录系统'),('0e93f35e084b4b548e47203f600488a1','a1','2017-12-07 23:36:58','登录系统'),('0efc90bafe5545c19fbf992b0a5899f6','admin','2017-11-11 13:34:46','新增菜单维修设备'),('0f60e76fa01d40d8a174e15cf38493ce','a1','2017-12-06 00:14:34','登录系统'),('0f8038f01b154e7e9bbc0c349cf4207b','admin','2017-12-20 18:02:26','登录系统'),('102d76b8c56943e58adba5341c798fc1','a1','2017-11-01 10:07:42','登录系统'),('10b00d272d9340088615587d0b28778a','a1','2017-12-20 17:01:29','登录系统'),('10b9d86917f948d7a491317b9c6af7d8','a1','2017-12-20 18:48:58','登录系统'),('10c374e1f629409a9c30d58c5fa938e8','admin','2017-12-15 12:00:22','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('10cf5415907d4431aa6622cc8af21c52','a1','2017-12-07 21:33:49','登录系统'),('11326d99548644af9865cc0ecd5e20a4','admin','2017-12-19 11:04:48','修改菜单类别'),('11341acb6ac4415891734f3ae2afee9c','admin','2017-10-31 21:56:21','登录系统'),('1194d6704cf64a4da93f4e9e989469eb','a1','2017-12-07 15:53:25','退出'),('127c30c3ebf8473ea4b877d1f6ef0cfb','a1','2017-12-11 16:17:59','登录系统'),('12c9ab90909e4e4eb24829e3ae0b9a53','admin','2017-12-11 23:27:27','登录系统密码或用户名错误'),('12d855165ce94d5eb5eddd256cd3b373','admin','2017-11-11 13:33:48','登录系统密码或用户名错误'),('13885b2da7c44cfa9511eebb477109eb','admin','2017-11-11 21:38:59','登录系统密码或用户名错误'),('13a5256f1e0c4622b234d22745c8592a','admin','2017-12-20 18:03:51','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('13e3a8b441244d84b3ce9730690b8c88','a1','2017-12-11 09:19:40','登录系统'),('13f56476f7a24ea08d29e15f914ba8b7','a1','2017-10-31 15:38:27','登录系统'),('14968ed209ba40108d9aa7439e90da20','admin','2017-12-19 14:49:06','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('14ab5fec07b34d069f2055cec88ae591','a1','2017-12-04 22:19:46','登录系统'),('14dbb9b5efab4eab9a7948dbc5918725','a1','2017-12-19 17:46:58','登录系统'),('14ebb680b37b4ee99016c0c9f8d18ae0','dckj','2017-11-01 10:14:51','登录系统密码或用户名错误'),('1572c43af35543e7a14d05272436a52e','a1','2017-11-01 10:15:27','登录系统密码或用户名错误'),('1594e100cabf46dbb71114abaa049c9d','a1','2017-12-13 00:06:01','退出'),('15e4777daeb8412e834a87fbac8a3188','admin','2017-10-31 14:53:37','退出'),('1624933edeef425cbc98d78eee6167b1','a1','2017-12-20 20:58:03','登录系统'),('1651d4b78f5c4256a68410ba84c8ed2a','a1','2017-11-01 11:38:33','退出'),('166f3bf532b9408480aa30ae3fd0ae6e','a1','2017-12-20 16:49:31','登录系统'),('16a1ab3818f4450992b2a712a40f02cf','a1','2017-12-04 22:22:53','登录系统'),('16fcf0fd2ca442dfafbcc1a728fb531a','a1','2017-10-31 21:44:58','登录系统'),('1701639c57a24133ad0ac88df99d2e9c','a1','2017-11-11 21:57:47','退出'),('17462563c2d64962b08ea350fabc755f','a1','2017-12-07 23:45:56','登录系统'),('1746b7ec41424d24b23ced5aad3c02a4','admin','2017-12-15 11:57:43','新增菜单结算管理'),('17ac204db2a8450797abc3123a58d70d','a1','2017-11-09 00:01:34','退出'),('17de28c4e89d441095eafae6fc5fe651','admin','2017-12-12 12:17:30','修改cha_qx权限，角色ID为:3'),('17fa3d2ed2e3487ba8c6527f98ea8813','admin','2017-11-11 22:03:34','删除菜单ID88'),('186ee258978a463b89bc6bcbd1cb5f32','a1','2017-12-07 15:54:45','登录系统'),('188d2ccaf83c4306a3e743766cb953e9','a1','2017-11-16 00:47:40','登录系统'),('18d4c2dc7eb1442e8e383978b5653b1a','admin','2017-11-01 10:10:36','退出'),('18dd85a271de41348f9fcfcd47495e6e','a1','2017-12-21 11:31:57','退出'),('1900aa4b6d794260a82eb593d9ff2da5','admin','2017-11-23 16:17:07','登录系统'),('19345c50b5184791ba4f037d6d29e97e','admin','2017-12-06 11:04:38','登录系统'),('193ed10e0b1344fab15dc0bad22bf185','admin','2017-11-09 00:04:17','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('19ae0786ce6446f9b8fdf082032e6e71','admin','2017-11-11 16:46:31','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('19f8b8d09aee4c2dac9feec5b5745340','a1','2017-12-19 09:06:02','登录系统'),('1a5eba7f15fb42da919d45791418e52e','a1','2017-11-16 14:44:51','登录系统'),('1ae30d45454341f59b5b5129f9248f10','admin','2017-10-31 14:39:04','登录系统'),('1b194bfd890d4609915cbad29b65095d','admin','2017-10-31 14:41:44','退出'),('1be42210e9b942f4b031a84960f1dbca','admin','2017-12-18 15:58:22','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('1c0b32e00f32425daf8d9a6666bdcd8d','admin','2017-12-20 18:18:39','退出'),('1c18ae89f1ba483d8c5b78a944cb4534','a1','2017-11-09 00:04:53','登录系统'),('1c2eac8d8fb8448aacfbd9d72e615795','a1','2017-12-12 09:04:18','登录系统'),('1c46d3d3e595478bab1f4b94057b3dbc','a1','2017-12-14 16:03:50','修改系统用户：a1'),('1c651bbc0cc64fac8becdea25499b16d','a1','2017-12-07 17:30:59','登录系统'),('1d0f6bc0c1c640e0a9c273fca7f6d01a','admin','2017-12-21 18:22:53','新增菜单公路工程'),('1d20091237f64c17bde2db7fdf659360','admin','2017-11-01 10:11:29','登录系统'),('1d6c788e69b04a988082439a809e4fed','a1','2017-12-20 11:09:41','退出'),('1d836516d4964447b9fd6bb83e953373','a1','2017-12-15 11:15:33','登录系统'),('1d8bca9d664a4c8d8cef3192d9c2f9ac','a1','2017-12-06 11:05:19','登录系统'),('1db01944939741f09d6484521a4773d8','a1','2017-11-11 13:33:36','退出'),('1ddebfa8cb5f4a4095c0e25ecbaf8a81','a1','2017-12-12 21:02:28','登录系统'),('1dfcdd7d4a0442c29629c72903660593','a1','2017-11-11 21:41:01','登录系统'),('1e0294c183c84cb3828b5def1fa76f0e','a1','2017-11-11 13:51:52','登录系统'),('1e22febd92d6491cab3c8f522d1be85f','a1','2017-12-18 23:32:47','登录系统'),('1e2382888f624df78f0bcad6af182ea0','a1','2017-10-31 15:06:24','登录系统'),('1e4509cf86f4407e90f598dd36f4c74b','a1','2017-10-31 14:38:23','登录系统'),('1efda3c0d22446ee9bfc23040aa31531','a1','2017-12-19 14:32:48','登录系统'),('1f44f7c976d14555b482b4b5af2be078','123@qq.com','2017-12-11 18:27:18','登录系统密码或用户名错误'),('1f4aaad320b646b89970760b3944c9e8','a1','2017-11-07 21:30:46','登录系统密码或用户名错误'),('1fe55c46a43f47e196d4a34347cdb7f3','a1','2017-11-11 13:35:44','登录系统'),('2061d69bd99a488cb4daa09fda4d0c0d','admin','2017-12-20 18:03:57','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('208a108b7ad240bfb28e561cb0ec72fc','a1','2017-12-19 17:27:16','登录系统'),('209b20174d654331b6878a5992c30dd3','a1','2017-12-18 18:16:21','登录系统'),('20cb48c458b048fdb819f6a0625a41a6','admin','2017-11-09 00:04:09','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('20ec4a61a2a54f4f8c3c01bc2f0e2d65','a1','2017-10-31 11:23:39','登录系统'),('211000ee01dd414c82505eb22db6559a','a1','2017-12-06 01:01:50','登录系统'),('214b503ed2e74e5e9939fe56f394836b','admin','2017-12-06 11:05:08','退出'),('215485c40473481ca5ccabe1eab9f572','a1','2017-12-19 10:29:52','登录系统'),('219399b4f34147b8b634484060459e72','admin','2017-11-23 15:29:15','退出'),('21a016af7d5c41e2808de80999fd8de9','a1','2017-10-31 15:03:24','登录系统'),('21e49c40f82b45dd803b2dafe2165891','a2','2017-12-12 14:08:21','退出'),('21fe3beea81f4a7d8100123802285c3e','admin','2017-11-23 16:02:32','登录系统'),('2206fddcaa6d4eeb89eac518484ecd86','admin','2017-12-20 18:17:08','新增菜单fsd'),('22296f43b93e45119397fbe4bebff4fb','a1','2017-12-07 23:26:04','登录系统'),('225139f137f74f5b902751395eedbc6c','a1','2017-12-08 00:07:41','登录系统'),('227ed171b97549bab36b07c2dcfbb50a','admin','2017-12-21 18:30:35','新增菜单市政道路'),('2281887713aa4596b747bf660f11a206','admin','2017-12-21 18:25:42','新增菜单送变电'),('22cb310df97f4312b45d414230eb5914','a1','2017-10-31 13:50:56','登录系统'),('230d1d4182bf45e6b4359437b1a361c5','admin','2017-12-07 15:48:28','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('2321e69404c5409a9114e531ede24156','a1','2017-10-31 12:59:03','退出'),('23670dbe352e405e8186c6cc9cf86124','admin','2017-12-19 14:46:12','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('239beb76b5ff4f5b93cbaec2dc9a582b','a0','2017-03-05 22:15:04','登录系统'),('23e66973c38041eeb3353aac49ac9172','admin','2017-11-23 14:39:35','退出'),('2414c33bc7214821a782cf2077fe774f','a1','2017-10-31 14:49:47','登录系统'),('24252432c8644af6b2dd9757303a6763','admin','2017-10-31 11:10:17','修改菜单订单资料'),('24b2203dce2b414b8a83ced1905d6e34','a1','2017-11-16 13:55:58','登录系统'),('24bb2f595a49405aacf7a6b8078b9da6','a1','2017-12-05 11:50:59','登录系统'),('256cbf7d268b400b9c10e6b01bf4b6cb','aa','2017-12-21 18:32:20','退出'),('2602d663039f4e848b6a9c609e928c60','a1','2017-12-20 11:09:18','登录系统'),('2698d2de084a419ca9b745a394afa4ac','admin','2017-12-21 15:56:44','登录系统'),('26d628bd58a6449ca55dafc1d508d40d','a1','2017-12-19 09:50:14','登录系统'),('27141d56160a44488be1e46933207d9c','admin','2017-11-23 16:21:59','登录系统'),('2785612cdc4f4309bad9fa577b09e9d6','admin','2017-12-20 18:11:53','登录系统'),('27ea440e3063471a8079b8c8a77d297d','a1','2017-12-12 09:04:50','退出'),('280d6d4812ef414e96a1bb5e1ded4a02','admin','2017-12-20 18:17:16','退出'),('2863bbea52164c88b93c4e7b38ae499b','admin','2017-12-21 16:02:24','修改系统用户：a1'),('28e8bd4413c442b1942f8cf7e9c24ec6','a1','2017-12-19 17:54:11','登录系统'),('28f92872d52448868c78dc5a34314dfc','admin','2017-12-20 18:03:28','修改菜单数据项'),('290a47ecdb3e4b50976aabec0bc47ec8','admin','2017-12-21 18:32:30','登录系统'),('293fd0678e2741a6a6ff1b4946afb7e9','a1','2017-12-12 17:04:20','退出'),('2954aca650ac406db525e3dc646d9e3b','admin','2017-12-18 15:03:12','修改菜单品牌'),('295d2bd8c1074a8d82baeef68d0a83c5','a1','2017-12-12 10:36:45','登录系统'),('2971cef7bd364ad08b423649b45fbdc7','admin','2017-12-20 18:12:44','修改菜单结算管理'),('29f3ece637ea4a16890bd220ada8e6d6','a1','2017-11-09 00:08:44','登录系统'),('2a1a807738f44c2dbdc056d990f91fe6','a1','2017-12-19 17:38:44','登录系统'),('2a3f7f4b94a944db8046d0eb76aa8f6d','admin','2017-12-06 01:04:15','登录系统'),('2aedbc62df7b4cb886a4300da9508282','a1','2017-11-11 16:17:36','登录系统'),('2b8239255d8b47d6bc8fd10f3835b1fd','admin','2017-12-21 18:23:34','新增菜单铁路'),('2b97d6e68419450ba6cadbcf1e5ceae4','admin','2017-11-11 22:06:03','修改菜单数据项'),('2ceec7932d8d46db9f430b886846dc5e','a1','2017-12-06 10:50:51','登录系统'),('2d22cd58bc644f23b1dda5ded548e2c6','a1','2017-12-08 00:01:22','登录系统'),('2d4cf6c5a6104669b41afe299cf472e1','a1','2017-11-03 13:57:25','登录系统'),('2d521c8d4feb49f4adc35f96a5959ee4','a1','2017-12-12 23:07:41','登录系统'),('2d5ccc838237491e8ddcb8b873031738','a1','2017-12-19 14:05:57','登录系统'),('2d70179555534ca88d8a0a4057810c99','a1','2017-12-11 23:12:06','登录系统'),('2d942b7c503c49bfbd31e40b24514e37','a1','2017-12-21 15:56:30','退出'),('2db0523dc4494ac8867429bde711c819','a1','2017-12-08 00:55:08','登录系统'),('2db6568e05d2482495103f48ce3dc7a1','a1','2017-12-19 09:41:37','登录系统'),('2dd3beb45759407b81a0173ad178d554','a1','2017-12-20 12:10:49','登录系统'),('2e320aea3ac34453aef609d2803fd9c2','admin','2017-12-15 11:57:04','登录系统'),('2f16a8e36359430b8d4d6401747f710c','a1','2017-12-06 19:00:06','登录系统'),('2f33066771604fdd88927cdab9763fcc','a1','2017-12-18 17:59:25','登录系统'),('2f401ab61b7c490c987e43a7c28dfd10','a1','2017-12-06 09:45:08','登录系统'),('2f8d1ead4a20429faedd71facccc5a3d','a1','2017-12-06 11:52:11','登录系统'),('2fde665e7d4746e98b28930a588c63e6','a2','2017-12-12 12:21:21','登录系统'),('2ffa3f90d4244aa58b41a6b89d62cd0f','a1','2017-12-19 11:34:02','登录系统'),('2ffbba7a5a6d40e4ab08110c54aeed0c','admin','2017-12-19 14:47:25','登录系统密码或用户名错误'),('300617e8c12f4758859e0a52f4351add','admin','2017-12-21 18:23:16','新增菜单公路工程'),('303c371dfee14b8cab14597e5f654bae','a1','2017-03-05 22:15:16','登录系统'),('30ba6c918a4147a9b4de3821acc7b56a','a1','2017-12-12 11:56:43','登录系统'),('30dd209d11cc4cb9bc1a615ab02e80c6','a1','2017-12-15 12:00:51','登录系统'),('315498aaf9b043c797f3de58a29d336d','a1','2017-11-11 22:03:04','退出'),('320b86beee154043a8cb22735afbf1c2','admin','2017-12-20 18:15:37','修改菜单商品结算'),('32dce182d3a9489082f06dcb4f5c195c','admin','2017-12-21 18:25:21','新增菜单火电设备'),('337a2715ef9b46ccb0ea1f5d5b2b56c3','a1','2017-12-20 18:14:32','登录系统'),('3471cb6250d84aee9e5b2bc86667d92d','admin','2017-12-20 18:15:09','登录系统'),('34cf2b0f75b4406fb446605f7a54aa5c','a1','2017-12-12 16:17:39','登录系统'),('34fbaa06315d49a8957593cc6b208bf9','a1','2017-10-31 14:06:32','登录系统'),('3552004f861846d3a7423b5d5ba0b3bf','a1','2017-12-07 17:09:54','登录系统'),('359045d67f194d448a819a16ab4474ce','admin','2017-12-21 18:32:42','修改角色菜单权限，角色ID为:3'),('35fe95e10aac46d3a1e7375e4fd21005','a1','2017-12-11 09:02:27','登录系统'),('360d54be29794e85a95928d3db7cad79','a1','2017-12-21 13:57:07','登录系统'),('36195064d6ed4ec18693e8f8ceff826f','a1','2017-12-11 15:09:55','登录系统'),('364d02c8596e4b37a019baf8b7c06cbb','a1','2017-12-19 11:01:45','登录系统'),('365463fcd23a4ca493677fe66193b23e','a1','2017-10-31 15:38:32','退出'),('3665e9b8b99c4f24a8d9957245776987','a1','2017-12-28 15:59:28','登录系统'),('366d6ed0a74d4f2fa0bd6bd8e764bc4c','a1','2017-12-19 09:48:06','登录系统'),('36757f2c498b408f9f88ef0458be5973','admin','2017-12-07 15:53:33','登录系统'),('369a459d2b364111b6c4bec6c7bc103b','admin','2017-12-12 12:17:24','修改edit_qx权限，角色ID为:3'),('36d380a5284e40d8af1000076ec6ed9b','admin','2017-12-12 09:05:04','登录系统'),('36e2c7e57889453693faac42e4ad9044','admin','2017-12-12 09:08:33','新增菜单财务分析'),('370e15b9f83a47a2b441a1a001f5b905','admin','2017-11-11 13:33:57','登录系统'),('375c8d7430b3435baeaa51e3865d305c','a1','2017-12-06 16:56:18','登录系统'),('376cfe0170524bac8ec681c3199eaccb','a1','2017-12-20 10:32:35','登录系统密码或用户名错误'),('3793976842d24080878110ca5da77d69','admin','2017-12-21 18:27:08','新增菜单城市道路、桥梁'),('379e93cc87fb43249d538595f08f025e','admin','2017-11-01 10:12:04','删除系统用户：{USER_ID=aba226eceabc404d8960be0ee3626fcd, tm=1509502324912}'),('37aa05c7f0dd43cb9cb2f821899473d9','admin','2017-12-12 12:19:56','登录系统'),('37ac929ff6e14acf8e26e904ee213678','admin','2017-12-20 18:04:06','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('37ad40b2de304a0d9a67cf22a2420ee2','a1','2017-11-08 23:08:43','退出'),('37c8b73d78de4c9fbc482ec54c6ff8fa','a1','2017-11-08 23:33:38','登录系统'),('37da7b41f6eb4600b40d946b1356a7f7','a1','2017-12-06 23:48:16','登录系统'),('38765e295ac84ad8af4faef3e57ef082','a1','2017-12-06 21:28:27','登录系统'),('388307dd297a4f028902e2372cda2057','admin','2017-12-12 09:43:42','登录系统密码或用户名错误'),('38ffdc3dc9c6401a97b4ad945891475c','a1','2017-12-20 18:19:07','登录系统'),('39782ff0215d4abebcf72f36a4cafab8','a1','2017-12-20 17:04:59','登录系统'),('397dab1b72f74ace986f5a4e74834c14','a1','2017-12-07 10:58:16','登录系统'),('39ba28fcd6e9419580a03b494ca108d9','a1','2017-12-11 12:01:27','登录系统'),('3a1f74f61c9a48a6a596c3832dea906a','a1','2017-12-11 23:27:46','登录系统'),('3a2dfe05e52343a19b4ff5483486b021','admin','2017-12-06 01:01:32','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('3a34275769e9495c8a8518779af2b5f3','a1','2017-11-09 00:19:00','登录系统'),('3a85007dcf7f40b3be11da976f126c7a','admin','2017-12-20 18:04:14','退出'),('3a8ebe3f9bff4582860bb1448e1b1d46','a1','2017-12-15 09:17:37','登录系统'),('3af41f37d6c64201b97dba86fc7c65bd','a1','2017-11-01 10:13:30','登录系统'),('3b0da7acdf84439baa9693db2facaa7f','a1','2017-12-06 23:39:55','登录系统'),('3b35071ee64b4f93a34564d872ec908d','a1','2017-11-23 16:25:39','登录系统'),('3b78abefd647427fbc55584da3d3aac9','a1','2017-11-11 22:39:09','登录系统'),('3bbb1ac7131b46548d65e976bd31d493','a1','2017-12-07 09:48:18','登录系统'),('3bbf56e59cf34781bd55f3e06c859edc','a1','2017-11-01 10:09:48','退出'),('3bd8bbff90524c489a9dbe0db050462f','admin','2017-12-12 09:17:26','登录系统'),('3c1f5ca9d66040b3aff3b4f64ae28162','a1','2017-10-31 15:12:49','退出'),('3c3f4b351b664e8ca183a04e2fa97b72','admin','2017-11-01 10:34:16','登录系统'),('3ccc207acbe7472c8a476f417e917b7e','admin','2017-12-06 11:04:56','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('3d3b7a0384b34ff6995f35d9686538b2','a1','2017-12-18 18:17:56','登录系统'),('3d3c5c1b3bce42a0bc1ba95abc898e51','admin','2017-12-21 18:21:09','新增菜单建筑工程'),('3d7f17a964ee4cbab0542ee1bd6cc8ad','a1','2017-11-01 10:09:44','登录系统'),('3da40c61b49349f1b034dd366a8ef193','admin','2017-10-31 14:58:42','退出'),('3dd960db17ad49b199a67f4868ffc6ed','admin','2017-12-07 21:50:41','退出'),('3e1a17f6b7c74fc6b26945152b9af53f','a1','2017-12-20 18:07:32','退出'),('3e604328cfaa4b43b3d72679ef671a43','a1','2017-10-31 10:55:32','登录系统'),('3f0049a8ddbd451b8986cc09788b06ae','a1','2017-12-21 09:58:20','登录系统'),('3f6afb2944d24dc593ac039bbc182168','a1','2017-10-31 11:08:25','退出'),('3f879f7a119442f383f66aa675f4c94d','admin','2017-12-14 16:30:35','登录系统'),('3fa2ec9f90e74a42a63fb68969ff8ff2','admin','2017-12-12 09:14:27','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('3fb9315f425044ed90521fa8483a1113','admin','2017-11-08 23:18:33','登录系统'),('3fd74c3ae4524119aaffbe11ec8ff312','a1','2017-10-31 11:45:52','登录系统'),('406b9d4f9a414369bdfe29b06aca8639','admin','2017-12-06 01:00:36','登录系统'),('40a05caedc524226a0b230b6ee3e09e2','admin','2017-10-31 15:07:47','退出'),('413de1fb30674f3fbfc2940677b545f2','a1','2017-12-11 16:00:27','登录系统'),('414820422a294826b26b3e223ebd57d4','admin','2017-12-20 18:04:01','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('414c7b6b218848db9e3af501806895d1','admin','2017-11-11 22:08:23','退出'),('4174c875d32744a1936a61b519f126d4','a1','2017-12-21 09:05:05','登录系统'),('41bd107f01404067812eeb837380f478','admin','2017-11-11 22:02:39','退出'),('41c0b93c6eda435ba3773e29c0a3701c','admin','2017-12-12 09:18:36','登录系统'),('41ee2ce0a15540719bad96c3f825041a','a1','2017-12-19 16:55:09','登录系统'),('41fcba991ca34b2fb5ec67ab05d83f81','admin','2017-12-19 14:47:36','登录系统'),('4277d42dc1f54cdcab52ad7b7fdf4ac2','a1','2017-12-11 14:05:53','登录系统'),('42b6ce5fca924a2f9cb239eb7614f3fb','admin','2017-12-06 11:04:24','登录系统密码或用户名错误'),('42d3ebd5a2c342248542f4c07d17f72c','a1','2017-12-13 00:06:57','登录系统'),('433b4c3399d74157894ff3ff066f47f9','a1','2017-11-08 23:59:22','登录系统'),('43d54432e23440c086003d0a7724d628','a1','2017-12-12 16:03:07','登录系统'),('43f8b68c8ec44ad482ee14f6a3aca10c','a1','2017-12-19 16:34:56','登录系统'),('4484e32f2af94b92b9bcd4006ca2fbe8','admin','2017-12-19 14:49:13','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('44a785a398cd4852a3dd36d1a137ac71','a1','2017-12-11 20:51:27','登录系统'),('44b849a366284f6fa0d88101b2fef78a','a1','2017-11-01 09:23:54','退出'),('4507dadf054f4db798c510c02d9b2694','admin','2017-11-11 16:45:14','登录系统密码或用户名错误'),('45562de58e6b49c0b51c8f4b40b92019','a1','2017-12-06 11:34:51','登录系统'),('4563da738d4048e388612635a636838e','admin','2017-12-18 15:58:29','退出'),('45a013554a134f8198b9a16d2694d56e','aa','2017-12-21 18:32:07','登录系统'),('45ef60aaee404315baa6f1f572fe1af8','admin','2017-12-18 15:03:00','新增菜单spbrand/list.do'),('4615044b43d647cea05b18701cd1e06d','admin','2017-11-08 23:12:42','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('464ab87321654e60ad32a752bbfb9ab5','a1','2017-12-13 00:06:06','登录系统'),('4659c193b51c48378c78f6c772980fcb','admin','2017-11-09 00:04:25','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('469aad1fd31545629b4608de57bef3f6','a1','2017-11-11 22:06:47','退出'),('46a951e9428c4204b042c6ad63e91ce4','a1','2017-12-19 16:51:35','登录系统'),('46be48d34e904fa6b2db45f555a229c0','admin','2017-11-08 23:19:01','退出'),('46f3f40cea6546a18fc3ddb7d35f7497','admin','2017-12-06 10:50:37','退出'),('471d6392313842d99f53104b75235bd7','a1','2017-12-19 16:07:48','登录系统'),('47494dc27ca54cb595429e310bc97ee9','a1','2017-10-31 15:04:45','退出'),('4754a40752e3420ea1ef5a06d2cf153b','a1','2017-12-19 16:32:12','登录系统'),('481ab6aed0d24205b3204e0ff64e81c4','a1','2017-12-12 10:33:20','登录系统'),('482387a0351a4971999c5a59a3be03fa','a1','2017-12-20 18:09:33','登录系统'),('48493cf1a2d14b9783958f85db945056','admin','2017-11-11 22:02:08','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('4877c9d1a3ac4b09a67a2f8d459681ee','a1','2017-12-14 16:02:24','登录系统'),('4888b94d25144f4dab77689c6ae41673','admin','2017-10-31 14:52:36','登录系统'),('48b0b8059e0849ab8d6fba7acae4e62b','admin','2017-11-23 14:39:42','登录系统'),('48bb5dcbe59148fdbff7989451be5ef1','a1','2017-12-07 11:17:31','登录系统'),('490b65a950674fab80bafe97d775b83c','admin','2017-11-01 10:34:49','退出'),('49150ae1f63f440fb09808588c06ad0f','admin','2017-12-19 16:34:41','退出'),('4958af58927a4e77ba946c6c296ab2ac','admin','2017-11-11 16:12:41','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('49d365706e844710980c13701ba4afae','admin','2017-10-31 15:37:29','退出'),('49e4b6e97349419cb11a7e657404d661','admin','2017-11-03 13:56:35','退出'),('4a34d6b9aff8495b8da40a7a0a548821','admin','2017-10-31 14:37:57','退出'),('4a65030f3e6547b6b202d7669635241a','a1','2017-12-12 10:15:15','登录系统'),('4ac9cf63f8204e0599b198f72cece5f4','a1','2017-12-21 14:46:35','退出'),('4ad8153b70914915a0d3998157dabc68','a1','2017-12-05 16:52:20','登录系统'),('4b00351bebbb4826abb5186dcc2dc526','admin','2017-11-01 10:34:08','退出'),('4b506b4976be4285bb30406e9cf4f9a7','admin','2017-10-31 15:07:54','登录系统'),('4b5436425dcf4e2980631a63ff054f5b','a1','2017-12-20 18:04:23','登录系统'),('4b72acd3cd244e8dad9963e4ea6b929c','admin','2017-12-20 18:09:21','退出'),('4b92155e101c40ac8610bd9b8982a5d6','a1','2017-12-11 18:27:24','登录系统'),('4b9bf499715343f0914e07b01232c6bf','admin','2017-12-20 18:07:40','登录系统'),('4b9e93407e39487f9a71caec4d0ef7a1','a1','2017-12-06 09:12:49','登录系统'),('4be85e3b43db4a75bad663eb2d6611c8','admin','2017-11-01 10:12:56','修改系统用户：a1'),('4c5df7ce455f4b85bdf7f249b9ec5d9f','admin','2017-12-21 14:59:21','退出'),('4c6101f8aa8741549343914c60e81c6d','admin','2017-12-20 18:31:38','登录系统'),('4c6e06e6fb8d4e329bfc4e4a41b2b546','a1','2017-12-11 16:05:27','登录系统'),('4dcb97ae59f74b21980a2c7ff5d33b8e','a1','2017-12-11 17:52:09','登录系统'),('4e0ded87ad114921bb21584faeb3a75f','a1','2017-12-06 10:49:36','退出'),('4e303deed42643e796d5e16314d61bde','a1','2017-10-31 11:15:49','退出'),('4e53a93c18aa46a8b98d51a47c19e492','admin','2017-11-01 10:16:07','修改系统用户：dckj'),('4e65d16f917044649a19fe5a6f5eb5a2','a1','2017-12-06 18:40:03','登录系统'),('4e6a6e62dd72443096a2b862c153f430','a1','2017-12-06 23:14:23','登录系统'),('4eb1dbb8ffa9435893d351fec51fed20','admin','2017-12-21 18:24:36','删除菜单ID132'),('4f116b7022e84630b0d85adbad518c8e','a1','2017-11-01 11:25:42','登录系统'),('4f6e6378646e4beabf01c47caa35e8cc','a1','2017-12-21 17:28:14','登录系统'),('4f93df9fc6234becad806da8f399d1e5','admin','2017-12-20 18:04:11','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('5008af1d047c42cf907981c3b972c4c9','admin','2017-12-12 22:06:55','退出'),('509cc4d3b04f45a1824f694c7f020228','admin','2017-11-23 15:15:11','登录系统'),('50a374a0123345399919c64333151050','a1','2017-10-31 18:24:11','登录系统'),('50d795aa8a8c48ea8b1858ce3995fb18','admin','2017-12-07 15:48:51','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('50da1b0ae0cc4e7d9e50cae89b9446ed','admin','2017-12-18 15:06:05','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('51235e0bcff0417eb755e25d4a1b1b76','admin','2017-12-20 18:09:20','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('51f8533423d147b8b72ba075eb95aa7a','admin','2017-12-21 18:20:55','新增菜单人员管理'),('51ffe492b76e40bba84fa5c61d886e16','a1','2017-12-06 21:11:01','登录系统'),('5236174d5ac848008c6263c10e614799','admin','2017-11-01 10:15:42','登录系统'),('5292dffa1c3b4bc3aa10840f788e7606','admin','2017-12-20 18:31:06','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('52ce5bba42fb4a7d9a184b7c882723c5','a1','2017-10-31 15:08:49','登录系统'),('536df19b616644bfbcf457eadb6826aa','a1','2017-12-05 10:42:18','登录系统'),('5376566b225b402d9c802de991d2e9d2','a1','2017-11-11 22:06:33','登录系统'),('53d10ab7d1b0473da1bfff8db4516e42','admin','2017-12-14 16:36:28','退出'),('5414b8b09591476b8ccd96109ebed4ea','admin','2017-12-21 18:22:43','新增菜单市政公用工程'),('54186147578b40f19e5a6f5d12b94765','a1','2017-10-31 15:00:51','退出'),('54acd1abd29643daae1165b5d011119e','admin','2017-12-19 11:04:36','修改菜单计量单位'),('54b16cf21c0a43ea9a2b158d9a3d5460','admin','2017-12-19 16:34:34','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('54bffbb56b6644b68ae543b5a4ccfd64','admin','2017-11-23 15:34:52','登录系统'),('54f0f89670c64fa7aa41cdc6a9e2f9dc','a1','2017-12-19 11:05:13','登录系统'),('554c8057b41f463e957caeeb14419a82','a1','2017-12-19 16:32:27','退出'),('569ee3a10b3b4d8299f9ac75300433f4','admin','2017-10-31 15:35:45','登录系统'),('56a885137adc40daa3e5a7cb5c0b24ef','a1','2017-12-06 21:35:30','登录系统'),('56b401d9803c4246bbf9aef6f05cfea7','a1','2017-11-01 10:19:17','登录系统'),('56f70afd91af4589b6740f716bba4201','admin','2017-11-16 14:39:15','登录系统'),('56fee5f109c845cbbe1758afccdc22ed','admin','2017-12-06 10:50:27','修改菜单客户归档'),('5755878e13e24e31bf9928f802cd33e6','admin','2017-11-23 15:25:41','新增菜单微信UI'),('578d0aeff2e145508b2edcb207dc16f3','a1','2017-10-31 21:56:08','退出'),('5817ec298b1e4bec9ebcb61ace185a0e','admin','2017-11-11 22:01:58','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('5873f25cd48b4791880c14eb01f88e78','a1','2017-11-01 09:23:46','登录系统'),('587dbe48af99407cb73e06f98c00531a','admin','2017-12-18 17:59:41','登录系统'),('59014048a12e4d098a2a57ecea4a63d5','a1','2017-10-31 09:10:24','登录系统'),('594a122bca414f45a6f2149f72f2c1fb','a1','2017-10-31 15:03:59','退出'),('59522010da78424b95ec61ac38935641','admin','2017-12-15 13:54:23','修改菜单维修管理'),('59662e381a824ec698c8152fdc709dc4','a1','2017-12-11 09:40:45','登录系统'),('596b9acb37284ae38bb2bff92a380373','a1','2017-12-06 11:03:57','退出'),('59a136f7319d4396bbb9090cd761daa2','admin','2017-11-08 23:08:52','登录系统密码或用户名错误'),('59b7da7797cb4da3b6534ef1642b1cf3','a1','2017-12-20 10:49:02','登录系统'),('59c21052b88e4233ba164c2fd683d6b0','a1','2017-12-05 17:21:13','登录系统'),('59d9c93f696a4f3782df3aefbd76e6c5','a1','2017-12-11 18:14:15','登录系统'),('5a6bd2c00ba3434fa1ce07585a1465e3','admin','2017-10-31 15:08:39','退出'),('5a98fc9e3aad4da89671b82aafbc7588','admin','2017-10-30 17:19:07','登录系统'),('5a9ee6db67e44146b0770bf5c55dd1d3','admin','2017-12-12 12:17:16','修改add_qx权限，角色ID为:3'),('5b48f6ba98b242a886ddc716aae75723','a1','2017-12-20 12:01:50','登录系统'),('5bb64f4ab1c04a728454e48567a2442a','a1','2017-12-06 18:11:00','登录系统'),('5bc23a8b8b4e49ee94b2cc90d31e7ba5','a1','2017-10-31 12:53:01','登录系统'),('5bd79de8c07f468b93fe4d0ac9177401','a1','2017-12-18 15:58:41','登录系统'),('5c2fd5437b7949949ab2440dafc083be','a1','2017-12-21 11:23:44','登录系统'),('5c467d2b89c74802b0abf45d32176aca','a1','2017-12-06 11:27:37','登录系统'),('5c50213798dc4ae38f18c78603736a1b','a1','2017-12-20 18:11:41','退出'),('5d14cbf0667a4ff8b1cbfad894ae62e6','a1','2017-11-16 10:53:43','登录系统'),('5d3c08e9362c4e4f9b706c899075056f','a1','2017-12-20 11:10:09','登录系统'),('5d4cec87e1b44785bdeca43ac975604b','a1','2017-12-20 15:52:59','登录系统'),('5d5e2109894f46e18f79801f7c18e6d6','a1','2017-12-19 18:07:53','登录系统密码或用户名错误'),('5d6655ea553140efa38ff7f515cb71ad','admin','2017-10-31 14:54:38','登录系统'),('5d7d3784be2e4e9e8dde058248388df6','admin','2017-12-12 09:44:22','退出'),('5db3b1bd56f741f5852cf115eb367ef8','admin','2017-12-15 11:58:09','修改菜单商品管理'),('5e2014e5d6b44eeeba6eaf1994349bf2','admin','2017-10-31 11:16:37','修改菜单客户类别'),('5e9cb8ee308a4e51bb86d9ea12e2dbed','a1','2017-12-14 16:04:01','登录系统'),('5f664833b6644b37bf0761f39b956f16','a1','2017-12-18 15:44:40','退出'),('5f8cf399a5ab45f2a6957036aed9432c','a1','2017-12-18 23:39:02','登录系统'),('5fc1aa11736446c9828827ee1f35f870','a1','2017-11-11 20:35:55','登录系统'),('5fefb1c87ef5497dbdcac2077cdb8332','a1','2017-12-13 00:24:17','登录系统'),('6030d506d16a4ec3ac79d1db8d640ef1','admin','2017-12-18 18:01:19','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('6041cdee04a541bcaf4732921e1ff314','a1','2017-12-21 13:59:51','登录系统'),('610dc3576f024b56b301b2d728c4fd55','a1','2017-12-19 13:09:49','登录系统'),('610e7f0ea26e497593fefb12869c2760','a1','2017-12-20 18:17:27','登录系统'),('619adc588a8c444a9a8cb0e119934627','admin','2017-11-11 16:46:39','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('623cdb4744fc4970bb95928f54a54608','admin','2017-12-20 18:09:15','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('62bc0e32498c4ba1872c63271d43f744','admin','2017-10-31 15:02:29','登录系统'),('62e3b7a1be51413dba779dfdb48de741','a1','2017-11-01 10:09:33','修改系统用户：a1'),('63246d7ecb4d43d0b2a8d90ff940f2c5','admin','2017-12-12 14:26:46','退出'),('63d32e16ffe947949c4fbfdeeb9a015f','admin','2017-11-09 00:04:34','退出'),('63d3976e9a60495b8ddb2ccdd45d643c','a1','2017-12-07 23:36:43','登录系统'),('64274af79d634d82b70a4d46f0dde226','a1','2017-12-12 20:58:24','退出'),('6443696c3bb445859f647e95390d064e','a1','2017-10-31 11:59:29','登录系统'),('647a5987b033465ca0eb2d0d51fd3eab','admin','2017-12-15 13:54:11','修改菜单数据库管理'),('6485faed32d4457c841034b92ffd79db','admin','2017-12-19 11:04:54','修改菜单品牌'),('648d3c4f426c443f813b510fe58edae8','admin','2017-12-19 14:45:41','新增菜单近30日订单分析'),('6496dc9f379c40399218c8892d861d11','admin','2017-10-31 11:45:26','登录系统'),('64cc5b89a34145b8812c31e6cde63065','a1','2017-10-31 18:49:49','登录系统'),('65553264efd04922805ca591b8d7e9a1','a1','2017-10-31 14:52:21','退出'),('65b99f72d1ff4cb09563fe88b5900909','a1','2017-12-18 15:00:23','退出'),('65cf7983931a462fbb4b0829c580e378','admin','2017-12-21 14:55:26','修改系统用户：a1'),('66607497b5334c788c9aecb78c9a83b5','a1','2017-12-12 16:31:49','登录系统'),('6664e03010bf4cf3a817a54a1d09d755','a1','2017-12-07 17:35:24','登录系统'),('667ec9bb084f42109763a92526c60489','admin','2017-11-08 23:36:39','删除按钮权限{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, ROLE_ID=68f8e4a39efe47c7bb869e9d15ab925d, guid=1510155399293}'),('6691957d27734efa8d43fd1cb30b7fb3','admin','2017-10-31 14:36:23','登录系统'),('66d7be1f0534484eb005024e34e28dd3','admin','2017-12-18 15:44:50','登录系统'),('66ef93a6dd0f495f999e6d81bf31e430','a1','2017-11-01 10:09:35','退出'),('67085f9bce624a209eea1d8c64fe2989','admin','2017-11-11 13:35:22','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('6758c13815c5402bb3cc4fe5fc5ec844','a1','2017-12-05 00:16:16','退出'),('67eeb321ab2a4111ba19d71729b8df10','a1','2017-12-21 17:32:49','登录系统'),('6808e0733a7147ab858aa074331a988b','a1','2017-12-20 13:09:18','退出'),('682c6d36a7334f818a3d878f29d4603e','admin','2017-12-20 18:16:10','退出'),('68460d41b5b34da598c1c7bc88f3fa73','a1','2017-12-20 18:16:19','登录系统'),('68530e2c08eb48e6b646633d1c652029','a1','2017-12-07 23:30:18','登录系统'),('68993e679f2a44d4a72eab9a5aeabecf','a1','2017-12-21 11:13:45','登录系统'),('69655dd3229b442591ad3ea032502869','admin','2017-11-11 22:06:58','登录系统'),('69e81a1e020141b38b371f4755afa140','admin','2017-10-31 21:18:26','退出'),('6aa4f3f44d814200b7a9ab772b0ad8ff','admin','2017-11-23 15:26:07','修改角色菜单权限，角色ID为:1'),('6ab631abc18946979eff0837daed0abc','a1','2017-12-06 21:22:18','登录系统'),('6ac36249d8eb4c68a6711c2cde8ecdd5','a1','2017-11-08 23:49:12','登录系统'),('6adfc73e346b48c69064c75310a43fe4','a1','2017-12-12 16:38:10','退出'),('6b4cdc5a36794ad9bc6f146161618302','a1','2017-11-11 20:48:04','登录系统'),('6b6b09ca854a44e7ad09c738b58c5c1a','admin','2017-12-12 09:16:49','登录系统'),('6c2398fa1ee84bc997e3dfa75c1b0362','a1','2017-11-16 00:24:28','登录系统'),('6c289dafe2d7401ebdf5a9b400b8a6d1','admin','2017-12-20 18:09:02','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('6c5a9d3898e64dcb904866e020f4657a','admin','2017-12-19 11:04:15','删除菜单ID77'),('6c71eaf386774193822f29138f79fe4e','a1','2017-12-19 20:35:00','退出'),('6cae8a933d3a4f56a4b7586180f08afe','admin','2017-12-07 15:48:32','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('6ce2fb4c694348e89dfac4ae8eefa649','admin','2017-11-11 22:06:20','退出'),('6ce37ea34bbe4178858e9cf3c7376924','a1','2017-12-20 15:43:58','登录系统'),('6d41efc45fa145238b26ea6256cec1d1','a1','2017-11-01 11:38:38','登录系统'),('6d712038ba80461c869c549be3ee44e0','a1','2017-12-12 21:02:22','登录系统密码或用户名错误'),('6d71c33f17384f90a547e7840e583ad2','admin','2017-12-12 09:08:51','修改菜单财务分析'),('6da9bdf8ef4b441fb792e58a58a1ac9e','a1','2017-12-15 13:55:09','登录系统'),('6e558dcb81fe4376904f922d3dcba3ea','admin','2017-11-16 14:05:21','登录系统'),('6e80e5c50d254a2ea4cf3af905b5b2c3','admin','2017-12-06 11:05:00','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('6ee654c89d0f4460a61d5e338c5ea3ff','admin','2017-12-12 12:21:07','新增系统用户：a2'),('6ee8f77c58b34da7a69640da085792dd','a1','2017-10-31 23:52:50','登录系统'),('6f1bde3693a9496c84e54901049549d3','admin','2017-11-11 22:03:43','删除菜单ID85'),('6fbd7b323f3146d992c1608915c02194','admin','2017-11-11 22:03:40','删除菜单ID86'),('6fc6ca9f83f04f65ae8ed0d67fe2eac2','admin','2017-12-21 18:31:56','退出'),('6fce4d5442ec42919f7582d970ae5059','a1','2017-12-07 23:54:52','登录系统'),('6fdcbcfa2d464824a9e3363742bc9f9f','a1','2017-12-11 21:15:33','登录系统'),('6fff909810754d959f553c095074884f','a1','2017-12-06 01:04:00','退出'),('70ed554d6e6b40ca9ac86db13112219a','admin','2017-12-20 18:30:53','删除菜单ID81'),('711018ebe22548fca8aa669a21b3cd0d','a1','2017-12-21 17:29:31','登录系统'),('712b503619f5472483e3617a7b69e438','a1','2017-10-31 11:00:40','登录系统'),('71eb3c58f9854021a6eb28174bc58adc','admin','2017-12-21 18:31:53','新增系统用户：aa'),('7213cd2516124adda930421667cd4afb','admin','2017-12-19 16:34:23','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('72b1e8c73413497d8205f2db7dc43c14','a1','2017-12-12 12:09:43','退出'),('72cc11e36fd142e6b845adb6c9168c23','a1','2017-12-12 11:07:26','登录系统'),('72f1b5137aff4d2baf439b312597d6a9','admin','2017-12-21 18:19:32','登录系统'),('72f71f0cf54341d8ab1cb9b90f939dd7','admin','2017-11-11 22:01:53','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('738d76dadf244a63a2e2d2b48610fa11','admin','2017-10-31 14:49:31','退出'),('739a20316d834a099106f31a40e1d02b','admin','2017-12-20 18:12:08','修改菜单出库流水'),('73bb36896d5d47b5b04f012e868ea834','admin','2017-12-21 11:13:35','退出'),('7406e718ba7944d196ca81f8ce4c74a0','a1','2017-12-19 20:59:52','登录系统'),('74bb682627bd4443b434ba0ae44ea2b4','a2','2017-12-12 13:01:58','退出'),('74e3b50a62da422ca5b3d937f2dd810f','a1','2017-12-04 22:14:14','登录系统'),('7537379060174b6f93939356ea6f269a','a1','2017-12-12 22:08:03','登录系统'),('75555a26f9d243da8b7d6028353b008c','a1','2017-12-12 18:06:17','登录系统密码或用户名错误'),('755ec290dd3f4ee49223ebe1cf8d2475','a1','2017-12-15 12:06:59','登录系统'),('755f74299fcd4302aced0f812d5b089f','admin','2017-11-11 16:12:59','退出'),('759a15180fac4477884b0bc0c4751768','admin','2017-11-08 23:33:32','退出'),('75f2ea1b6dd8454b8ac757cb0f6d4f28','admin','2017-12-18 18:01:38','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('766b0a2b99cb491893969f000d24c2c1','admin','2017-12-12 12:15:07','新增菜单维修管理'),('766c4fc61b8a4bc184a963eef39c5187','a1','2017-12-06 00:37:42','登录系统'),('768b2e71dbfd49228c061069a6102f27','a1','2017-12-20 22:03:09','登录系统'),('76a8b115a6574f0d8b8869cc97d1d628','a1','2017-11-01 10:58:21','登录系统'),('77ca320080f445f4a424439ca3ee19f0','admin','2017-11-11 22:03:50','删除菜单ID71'),('77f73e6670fd4ac4977113ae1d775f21','admin','2017-12-07 21:50:51','登录系统'),('785b240e8ef14df0a45e7af0e540ee21','a1','2017-12-13 21:47:59','登录系统'),('78644b5094004e7e9c78b3d52eb9b07f','a1','2017-12-19 16:37:54','登录系统'),('787ea5993bc0433f9f72f206a32be63c','admin','2017-11-01 10:10:02','登录系统'),('788ae8bd0a204bf9a5c10713b046e183','a1','2017-12-15 10:08:51','登录系统'),('78c3ff3986704cd49888f1f1034645dc','admin','2017-11-11 22:02:03','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('78d20ed36e254eada3e5ea701b874067','admin','2017-11-11 16:12:47','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('790f8027398d47909835eb4778e19bff','a1','2017-12-21 17:34:01','登录系统'),('7942d2b31fa945799ab20d6911e393fd','a1','2017-12-15 10:52:35','登录系统'),('79613f13f2c84e31840aba550f4b387f','admin','2017-12-19 11:04:43','修改菜单使用耗材'),('79bf13e81ea94d559cf1b04f126d4aeb','admin','2017-11-16 14:44:39','退出'),('79d216abc09a44358e35b68e71d61698','a1','2017-12-20 18:37:57','登录系统'),('79dfb656d8054355ad07bd1e7ab1ea42','admin','2017-12-21 18:30:02','新增菜单土建装饰'),('7a2217caaa9c4d91b4336b1d83a7e6d0','a1','2017-12-08 01:21:51','退出'),('7a7ab286df0844e59ff60eaa02b84dd3','a1','2017-11-11 13:52:58','退出'),('7ae175b7fdfd408581444575d7f7643c','a1','2017-10-31 15:04:18','登录系统'),('7b8eb077c4af4d2a8db02248eda4b397','a1','2017-12-12 09:43:18','登录系统'),('7baba0214801415bbddaa5ed3333af31','a1','2017-12-11 13:02:48','登录系统'),('7bca7e00552d47e696214665b060bf64','admin','2017-10-31 21:56:53','退出'),('7bcc6ba61aab4ee8bc20b996d3dc223f','admin','2017-10-31 15:03:17','退出'),('7c0035ea17bd4e9193b1bece5812eb77','a1','2017-12-11 10:22:04','登录系统'),('7c17a589bb35434f9abf1e7395e1a512','a1','2017-11-08 23:36:00','退出'),('7c4f41a807e4436a9b85e967ad7ec102','a1','2017-11-11 13:07:02','登录系统'),('7c84ec3086244bf0b761356acbdf227d','a1','2017-11-01 10:13:20','退出'),('7c8fd492c9214211ba1656d3bb51cdfb','admin','2017-12-18 15:01:06','新增菜单数据项'),('7ce4ff8c7fff456d95acb9eb6a0d4fe1','a1','2017-12-08 00:18:38','登录系统'),('7cee6aa14bb343308e16f4cb5d42af1d','a1','2017-12-12 14:57:56','退出'),('7d7adb95c66f48518944bb9b913e5588','a1','2017-12-07 23:47:30','登录系统'),('7d8c1924d6664f1bb45b1ee2fc07b9df','admin','2017-11-01 10:34:06','修改系统用户：admin'),('7d8def87e40e429a8e481ff5a95e07ca','admin','2017-12-12 09:18:55','登录系统'),('7d9485c5d10748a7a0d3f382ee2aeae5','admin','2017-12-06 10:49:45','登录系统'),('7dbebe93d28243a89ad71cb43db6c277','admin','2017-12-12 16:38:21','登录系统'),('7dfea69962cb4514a4472434b36c4cff','admin','2017-12-20 18:14:00','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('7e2c22f090654c239429d36a025ecad2','admin','2017-12-19 16:34:29','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('7e358d5175424379bbadea2755d5fb5b','a1','2017-11-01 11:16:04','登录系统'),('7e5ee74174a94c30a2cc580d32e0150d','admin','2017-11-09 00:04:31','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('7e95aef98fec44cbbe0d40d770000e14','a1','2017-12-20 16:22:07','登录系统'),('7ee8fdfad74f44b0acaf8471a86830f1','admin','2017-12-15 12:00:38','退出'),('7ef62a9a3fb44e6584c2f2ce2b1056e8','admin','2017-11-23 16:05:37','登录系统'),('7f11d3aa6e7242c082ab17ee0900ab97','admin','2017-11-11 13:35:17','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('7f26203368004012b4fec5b0eb04517c','a1','2017-12-20 18:41:51','登录系统'),('7f2953ee48954ab58007de2c9b1c1605','a1','2017-11-01 10:59:56','退出'),('7f837bc0fdc440a28d44f7c777fad28a','a1','2017-12-20 18:48:18','退出'),('7fd6f4fa500245e78c1bd2a62f615b85','admin','2017-10-31 14:59:13','退出'),('800dc6741e414f67ab04fff025572453','a1','2017-12-06 11:02:59','登录系统'),('801ca4d37ead43a782f7be5784355873','admin','2017-11-11 22:03:37','删除菜单ID87'),('804366732d744a8488b68eda2b340b06','admin','2017-11-08 23:12:46','退出'),('80abd1219a064bbaa213ca5dd5ae2951','admin','2017-12-18 15:05:56','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('8155331a77ce4126a02d2889e04afb95','a1','2017-12-18 22:30:57','登录系统'),('817ffc38b85149ab863d71ad249e091b','admin','2017-10-31 14:38:13','退出'),('81b18b3c9f584b0d900b6d12f72dd58f','admin','2017-12-19 14:45:09','新增菜单今日订单分析'),('81c56fbcabf24b8a9c6d7fb8d3fb3fb9','admin','2017-12-12 09:14:23','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('81e819f35a8849719752c0e4b16c38e3','admin','2017-12-12 09:13:08','修改菜单今日订单'),('829a33f829f44c02965f68d0ec430cf9','a1','2017-11-06 10:02:43','登录系统'),('82b90e88b3a4400198cb42b98d1ef64d','a1','2017-12-20 18:02:14','退出'),('832f61a1dca04cf59db37f78822ce807','a1','2017-12-05 23:09:58','登录系统'),('838f7d2ab44949e4bdb420d9a721088d','a1','2017-11-08 23:13:32','登录系统'),('8403616318e3417bbc94b87c311343a1','a1','2017-11-01 14:21:20','登录系统'),('840e800d298d4170ba51f371d95838c7','a1','2017-12-12 15:58:30','登录系统'),('841308643cde4dca8d012cb6a21068ed','a1','2017-12-19 11:22:13','登录系统'),('84175ff5e0054baaa6eba2425b8fd094','admin','2017-12-20 18:12:47','退出'),('841f75462246459bbc1d5bf97f3132dc','a1','2017-12-11 10:08:36','登录系统'),('8482b5fa9e1f4534b7e8e0c7eaf48aaa','a1','2017-12-06 09:48:48','登录系统'),('851022cce7894b6aa46e2e8007783b3d','admin','2017-12-21 18:28:09','新增菜单公路'),('8529405664944c18a3571eabb6eeb6ce','a1','2017-12-05 23:30:09','登录系统'),('856e8ceb5ed6476fa864fa6725e50246','admin','2017-10-31 14:06:22','退出'),('85813180cb264ef7b3639e7268e76b40','admin','2017-12-21 18:23:59','新增菜单建筑装饰工程'),('8627c2048cea413da4e888b9d97f826e','a1','2017-11-11 22:33:27','登录系统'),('8649229bcc01429384172eac17a4e2c4','admin','2017-12-20 18:14:02','退出'),('86d3738291c1458d994dc4504fe20858','admin','2017-12-15 12:00:02','登录系统'),('86d9460894474382972494101dda0777','a1','2017-12-21 15:53:41','登录系统'),('86f23d0cfcff4510b3780f193cbca61e','admin','2017-12-15 12:00:29','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('87555c26ef744c1293064fd4ad8c1452','admin','2017-12-21 18:29:34','新增菜单公共展示、陈列'),('87759abc9d6d4137ae04189000b5e0fd','a1','2017-12-05 00:20:54','登录系统'),('87871a9c506b42de99de7f8d37a55627','admin','2017-12-21 18:29:18','新增菜单古建筑、历史建筑装饰、装修'),('87929af0acf440cfb454c84ebb61e56c','a1','2017-10-31 15:00:12','登录系统'),('87a7dbae698c4e0e9ff774f7976c5462','admin','2017-10-31 11:43:30','修改系统用户：a1'),('87f0d1f3c7854c4db4466b7b17c20684','admin','2017-12-20 18:12:35','修改菜单商品管理'),('87f8a522407b45f69b6353c9e4c63922','a1','2017-12-11 09:51:19','登录系统'),('882b5d04b0324dd391e2431791435050','a1','2017-11-16 11:03:25','退出'),('88337d2fe1a2463cb06493e097288854','a1','2017-10-31 12:49:16','登录系统'),('883eb39e9b154a6287df07d9dde2d297','admin','2017-12-20 18:16:45','登录系统'),('88e622637fee42538ba239360223c314','admin','2017-12-06 11:04:52','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('88fcc123a58142c7a271330568dfd697','admin','2017-12-18 15:58:15','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('8950b13c304242dcbb5c3353bc181fd7','admin','2017-11-23 15:30:04','登录系统'),('896bc541de4c4609bb78aaa6f4f3fb29','a1','2017-12-12 11:55:54','登录系统'),('8984202a1c864e6e8b0c7a428fd394ac','admin','2017-12-19 16:34:39','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('89a68ef59c8e460182b5fdda5123f485','admin','2017-12-21 18:26:47','新增菜单自动化'),('89b779c3212d41449ec113dfa841d873','a1','2017-03-06 00:45:20','登录系统'),('89dc7b20e313459890fccab5cbc3144b','a1','2017-12-12 23:36:01','登录系统'),('8a04fd3d92124d47b63d2709ddae1c82','a1','2017-12-07 09:08:56','登录系统'),('8a61bfc17299413b8361099b560217a6','a1','2017-12-18 23:00:37','登录系统'),('8ad5ae13a7ba45c189a2474a59d96d6a','a1','2017-12-20 18:32:00','登录系统'),('8b267eedae8c4102a38f56d341c3a2df','a1','2017-11-16 11:06:52','登录系统'),('8b39470f387e4275a5f21b6b52d8ed4c','a1','2017-10-31 21:57:01','登录系统'),('8b9a83c38d71405b90485684499c445f','a1','2017-10-31 11:42:23','退出'),('8bc75cb0f2374186b1d920b46d8e1723','a1','2017-12-20 11:26:45','登录系统'),('8bd7f63e8ee04a11bf520e2766d36084','a1','2017-12-12 14:26:57','登录系统'),('8bf5d542c28147aeac1c2b5c05780249','admin','2017-12-06 00:59:13','新增菜单客户归档'),('8bfa3eb3d4064788b3f54509d0cfc32e','admin','2017-12-19 11:04:21','删除菜单ID75'),('8c232aed8a4440028dbeae241f288b53','a1','2017-12-20 22:49:25','登录系统'),('8c31ebed5f1245599494dbe92748c379','a1','2017-12-05 17:53:56','登录系统'),('8c53ecd41c7146d4b37d958c8c756e81','admin','2017-12-12 12:11:55','修改角色:维修员'),('8d76609838a64c74b21a104795b85dea','admin','2017-11-11 22:01:47','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('8deefa7b5c394216bcf5b307f583423c','a1','2017-12-20 12:19:08','登录系统'),('8e1e21c105bc4d159486ecd534999a67','a1','2017-12-11 10:25:40','登录系统'),('8e5775c50c97402b8b1e4655b9d48a10','a1','2017-12-07 21:51:09','登录系统'),('8e7b7420398b41f8bcd37dcf444c43d1','a1','2017-12-07 23:21:34','登录系统'),('8e8d754111854df9a1b6399b20881ed1','a1','2017-12-11 09:59:39','登录系统'),('8ecfd73fa33e477cb762e144a80ca4dc','a1','2017-12-15 11:59:48','登录系统'),('8eddba17254e42e5a5c5e7eb4003c61a','admin','2017-12-12 12:17:13','修改角色菜单权限，角色ID为:3'),('8f79c687c9ad42c18deab0cb992ee8d3','a1','2017-12-14 16:36:49','登录系统'),('8f8724c9289a49189fb873c6d7832ea2','a1','2017-12-12 14:58:02','登录系统'),('8f947004fa5f467b8987445dde2a080f','admin','2017-12-18 15:02:22','新增菜单类别'),('8facff9de4ac4509a08f3fadbabdd034','dckj','2017-11-01 10:17:09','退出'),('8fd419d6bc9242e99ec3e7533b926feb','admin','2017-12-18 15:06:00','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('9130450903fd48d3b66d9b620d606521','admin','2017-11-23 15:24:37','登录系统'),('914089ee4912468f83921c570e53f307','a1','2017-11-16 10:52:49','退出'),('91c621bb53834cbbaa14f8d66b26cd5b','a1','2017-12-06 00:12:21','登录系统'),('91ccaf3925cc4e3fa97f2784f5ec83d8','admin','2017-12-12 12:20:18','删除系统用户：{USER_ID=25a548b54de14a40b6ca3c8a9ba8ef37, tm=1513052418703}'),('925dd627ce91481cbcdce967a566195f','a1','2017-12-20 20:51:01','登录系统'),('9265f417468f46bd8438082744689f51','admin','2017-12-15 13:54:49','退出'),('927287d45d2248859f830c5274398f0f','a1','2017-12-06 18:57:40','登录系统'),('9275bb35d5994d02a533d8ae1783980e','a1','2017-12-14 22:39:38','登录系统'),('92bb49277ac245a2b007b61917553435','admin','2017-12-21 10:35:39','登录系统'),('93057fac0f7b4f3f8f9e6aeb9baba52a','admin','2017-12-19 16:33:26','新增菜单今日商品销售分析'),('93319ce5d0b7406aaeca5c97fd15787f','a1','2017-12-11 10:25:40','登录系统'),('93ad16088a80429a99505a39734b2525','admin','2017-12-19 14:47:50','删除菜单ID104'),('941179cf2aeb45af904665d6909c591f','a1','2017-12-06 11:40:39','登录系统'),('9497b9cc51f24f479fcd0dd40bb67f97','admin','2017-10-31 21:17:37','登录系统'),('94e10b2f96ac4167a9d84bdf4def49b0','a1','2017-10-31 12:52:49','退出'),('9531178f1f4a49c299dadc266722b015','admin','2017-12-12 12:11:12','登录系统'),('95627ec397ee4c739757884bc49e92c9','a1','2017-12-12 16:34:24','登录系统'),('95a18736fb8742119adb343c4f1e3856','admin','2017-12-18 18:00:50','修改菜单计量单位'),('95ab370ea3434a9b9fe531885dba7635','a1','2017-12-07 22:07:44','登录系统'),('95ebb183b7cc49ef889175a9a39d15bb','a1','2017-11-16 15:59:49','退出'),('96077564fd2b49be89dc434c70992ebf','admin','2017-11-16 14:43:01','登录系统'),('96b68578c95242ad8a3e1661c34de326','a1','2017-10-31 23:16:44','登录系统'),('96c958c4dc4b4e2189a2ce6b98fb63a2','a1','2017-12-04 21:35:22','登录系统'),('96e2279ab226465897af726193360eb1','admin','2017-12-20 18:18:36','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('96f32dc8d53b4176b44962c171fb1b14','a1','2017-12-20 18:31:19','登录系统'),('96fa095f2aba4a33a2c32e4a3cd14803','a1','2017-10-31 21:38:14','登录系统'),('9725edb749f24f699502a18c8c618fc3','a1','2017-12-21 14:03:24','登录系统'),('974b6d3e492c4045b7a910cc5b8e7e8f','a1','2017-12-11 10:52:02','登录系统'),('975b12b512d14dfba5417ffa19509e08','a1','2017-11-08 23:22:45','退出'),('97b72425e4dd40d28a18ba16017f3949','a1','2017-12-18 11:30:11','登录系统'),('97cf81d968f446349578da6164869d4b','admin','2017-11-11 13:35:12','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('98060d62d6494312af6d7d7d1790c03a','admin','2017-12-12 12:17:27','修改edit_qx权限，角色ID为:3'),('981be7c597c144ae96051dac75e6e3be','a1','2017-12-15 13:09:41','登录系统'),('982ac46890ac4350825c7e546bd0eb6d','a1','2017-12-06 13:02:22','登录系统'),('9842d613eef04092a664ca81057d623d','admin','2017-11-11 21:58:30','新增菜单订单数据项'),('990562e06f4d4791b637d0e7b62416e0','a1','2017-12-21 17:40:39','登录系统'),('990e5934129e4569ab1ca8ef97ea3867','a1','2017-12-07 17:07:44','登录系统'),('99563b4242d2473fb3950cd86c4742a2','a1','2017-12-06 18:05:40','登录系统'),('9967a831f6e1439dbac0f40e2a97fe63','a1','2017-10-31 14:54:02','退出'),('99f67ccc2cfc4f9688af709745c99c9d','a1','2017-12-11 09:58:06','登录系统'),('9a2159c66cb44d33b9f848026cf276ba','a0','2017-03-05 22:15:08','退出'),('9a43608d9a7445758f20a5055f21c695','a1','2017-11-11 15:32:46','登录系统'),('9a86cc353dc94c9a8088db74f4e15642','a1','2017-12-19 17:35:46','登录系统'),('9ab5e19826374a2980841f7260d66ef9','admin','2017-12-06 11:05:04','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('9af9810930ee40ff9428108817777bfb','a1','2017-11-11 13:52:40','登录系统'),('9babe85f140e4173a267ae185be179d8','a1','2017-12-11 11:57:43','登录系统'),('9c36a1f1549e491189f5193e9dcc41f8','admin','2017-03-05 22:14:53','退出'),('9c9a3b7069334bfbabdc62734a317055','a1','2017-12-12 17:10:15','退出'),('9cafa765dfe747a7b1af579235e0df7e','a1','2017-10-31 11:08:39','登录系统'),('9ccc07df15b54bc5b4710fdd55553d71','a1','2017-11-16 12:11:24','登录系统'),('9cddecb5915647f8a1e2d7ddbbe1eca1','a1','2017-12-20 18:31:29','退出'),('9d6dba20e5a04d6582c956c89426abf2','a1','2017-12-06 11:32:54','登录系统'),('9d7ac28534b24b8389c24212cbdcf061','a1','2017-12-21 09:11:22','登录系统'),('9d8fce2c491840ed8e6514dd379e50d3','admin','2017-12-20 18:09:10','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('9df3a3660bcc4405b4f7752b9f8258a6','a1','2017-12-21 17:54:58','登录系统'),('9e17501919684c449a7432a8c6192ea2','a1','2017-12-19 17:45:04','登录系统'),('9e56c68629e34acf81a5b39d1f404afa','a1','2017-10-31 21:00:18','登录系统'),('9e6119cd03154721a23251e530cd2616','a1','2017-12-19 14:43:14','退出'),('9ea7970a45ed4ebf89a476e045cbf03f','admin','2017-03-06 01:18:57','退出'),('9ec30b33f2a04fb2906a913ffb8fc660','a1','2017-10-31 09:16:09','登录系统'),('9ec3412b38e74f36bbbe471b93dd7835','a1','2017-12-11 11:48:41','登录系统'),('9ed856e71251471d96b3c2215d8b445d','a1','2017-12-20 13:46:50','登录系统'),('9ef4c3895de449539d5e17a34a46b7ed','admin','2017-12-20 18:48:44','修改菜单商品归档'),('9f3d2b3c789b49ee933a81ee2949ad98','a1','2017-12-12 13:05:07','退出'),('9f5b15f0d80946c2a10674e1f8bccbd4','admin','2017-12-07 21:49:26','登录系统'),('9f890a7b384a4b9cb7e2484c8382b8ce','a1','2017-12-12 11:14:22','登录系统'),('9f99125de11046c8837b9d999f8b0d4a','a1','2017-10-31 10:07:54','登录系统'),('9fd82eec1588401e879457580ea823c1','admin','2017-11-08 23:09:44','新增菜单随机附件'),('a029fae9792f48c6a3e74aab437c91a4','admin','2017-12-19 14:46:08','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('a0a5472a1be847a8b9a65e015c4ee0ea','admin','2017-11-01 10:19:08','退出'),('a1083be1b6e14389b67c29359718741d','a1','2017-10-31 14:38:56','退出'),('a1200595928542d09b3c1c9a99e46f98','a1','2017-12-20 18:52:18','登录系统'),('a13a5c04251f4a46b7e1a4b55b1e0d89','a1','2017-11-01 10:59:53','登录系统'),('a1a827761c2c4a24bf0cffea854a817d','admin','2017-11-11 22:07:17','修改菜单维修员'),('a1cb4dcea50041039091102945632b47','admin','2017-10-31 15:13:05','登录系统'),('a1d6febce89b4f23aa8d4a553bba18ea','admin','2017-11-01 10:17:26','登录系统密码或用户名错误'),('a2ba7468e3614307950867e5cfe385bf','admin','2017-10-31 14:38:05','登录系统'),('a2c9d58cec6b41aa808f480ce34133cc','a1','2017-12-11 15:45:33','登录系统'),('a2f626d0aba14b418e512dbd568c8209','a1','2017-12-18 16:49:13','登录系统'),('a32f3de9144644d3a7b8ba0ba1c22929','a1','2017-10-31 11:23:32','退出'),('a32f5f83db484c879dfcb066458a5859','a1','2017-12-05 17:59:52','登录系统'),('a345a11beb664f55aa3eca2f29e368d9','admin','2017-11-16 14:32:18','登录系统'),('a362d73c46ea44519cce43900353b009','a1','2017-12-15 10:58:33','登录系统'),('a372c2c165a741fe960e86f1863c125a','admin','2017-12-06 09:08:18','登录系统'),('a3e3516e6a634f03ade8d2b1ff7aff01','admin','2017-12-19 11:05:03','退出'),('a3e906a0bc814620b72be748f3493dff','a1','2017-12-11 18:01:15','登录系统'),('a432c67fb5b64a77b6f8c1251d19aeee','a1','2017-12-07 21:42:34','登录系统'),('a43984f83afb41c7882fda46dbcc66a6','admin','2017-12-19 14:44:13','新增菜单订单财务报表'),('a46c11c55525427a8941be9009d5fe5e','a1','2017-11-08 23:19:06','登录系统'),('a528f027e1cd4712acf5cc5ee1ed5e0c','a1','2017-12-11 10:03:47','登录系统'),('a58803a07c8c4933be9367bfba95a755','a1','2017-12-18 22:35:11','登录系统'),('a59cf19a972347d491f267e9655718d3','admin','2017-12-19 14:48:12','新增菜单商品财务报表'),('a5ffc6da5a6e415c80868239f80d3fe6','a1','2017-12-06 21:53:48','登录系统'),('a65b9a159c634b2eadc49880de99a31d','a1','2017-10-31 14:36:14','退出'),('a65cfb0c1c63477ea6abb5c8eb0455a2','a1','2017-12-20 20:47:51','登录系统'),('a6612c5be1244e6495c5d2617a2ccdf0','admin','2017-11-11 16:12:33','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('a6834e61f5014b7daba5f2659722abdf','a1','2017-12-11 11:29:48','登录系统'),('a69093729d0f43e7a894b9bd4136fcf1','a1','2017-12-18 14:58:57','登录系统'),('a69318c65d674f81b2be295f64b94837','a1','2017-12-08 10:35:04','登录系统'),('a6d293bc53544efd900d9ee76c00d834','a1','2017-10-31 19:36:18','登录系统'),('a70d91abc6ee4ce8bf07e2e3ce8e5064','a1','2017-12-05 12:05:02','登录系统'),('a7381d6daa2a4d409b6af0e16dba03a2','a1','2017-12-18 23:06:12','登录系统'),('a741b1494a564a92af2de5d9b2bb2e27','a1','2017-12-19 17:37:19','登录系统'),('a74acbc6a1fd4277a157345f00d769f7','admin','2017-12-12 16:39:23','退出'),('a74b110142074276862f871658d77b6e','aa','2017-12-21 18:32:55','登录系统'),('a795c5207d284e12bd58417ce6ee20e7','admin','2017-11-11 22:07:23','修改菜单订单类型'),('a79f9a87cfac498c892d9301b421102a','admin','2017-11-08 23:23:03','登录系统'),('a7a1d774777944be918129d57759570e','a1','2017-10-31 16:17:13','退出'),('a7ad3cd588ed436a9a7c59f85a0e6af4','a1','2017-10-31 15:04:42','修改系统用户：a1'),('a7c2b32173c549aeb530554f711b1399','admin','2017-12-18 15:05:39','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('a889fbec8e0248f4ab4be857aafb2ff4','a1','2017-12-06 01:00:25','退出'),('a8ae9e9069524a08b7cb346a50711ffb','admin','2017-11-23 15:16:20','登录系统'),('a8d07cc2607d4f5fac776a854d077468','a1','2017-12-14 23:28:51','登录系统'),('a9292d5f8cbd486799952e0906b8d5f9','a1','2017-12-18 17:59:32','退出'),('a945c61f43264ef9ac370780f3bb7821','admin','2017-10-31 21:56:47','修改菜单订单类型'),('a95a3acc31ac4c2886bacdb92afcf0cc','a1','2017-12-19 11:03:45','退出'),('a9a508ecac2c4b689425db558b75ab89','a1','2017-11-08 21:14:30','登录系统'),('a9b86e61370b442e9db07b8ecb688be8','a1','2017-10-31 15:35:36','退出'),('a9db51b8251948118481c364658801fb','admin','2017-12-20 18:03:10','新增菜单出库流水记录'),('aa9084b31be24f248116cbedba3c6d27','admin','2017-12-21 18:28:52','新增菜单公共装饰'),('aa9dce144cdc48a4ac9338dbdb6bc93b','a1','2017-12-19 18:08:00','登录系统'),('aaa6acd370b940f285483b004ce5aadc','a1','2017-12-05 18:15:51','登录系统'),('aace49b947c9446880df30926938aeb2','a1','2017-10-31 11:16:52','登录系统'),('ab25d3d96934456ab852df89123f5f57','a1','2017-10-31 21:47:55','登录系统'),('ab52904f587a4e818b38a4bd8313ef04','a1','2017-12-19 14:47:16','退出'),('abeac3fb7b91429f9add67d79d5bb022','a1','2017-10-31 19:19:31','登录系统'),('abeaf7a658854effbd33a2674338633a','admin','2017-11-23 15:43:16','登录系统'),('ac47eab9285a4b60836d3649cc1097b1','a1','2017-12-04 21:51:27','登录系统'),('ac590af49a5d4427a5bfda4fbc480854','a1','2017-11-01 11:31:40','登录系统'),('ac75cf79424b4d73a3a8de709a2dd8d8','admin','2017-10-31 21:18:20','登录系统'),('ace0f909156f4ef2b1c0ae50a3776d41','a1','2017-12-06 17:34:22','登录系统'),('acf1e00b95524b3aa81aa8830b216b6e','a1','2017-12-19 20:09:53','登录系统'),('ad402cde12ee482c8161ea5d1e211dec','admin','2017-12-15 13:52:49','登录系统'),('adb2770034f841c299d51e628167fb83','a1','2017-11-01 09:58:13','退出'),('adde949682b54466b09f69b791ad8228','a1','2017-11-01 10:33:35','退出'),('ae129f85be2147dd85994b9f09220a1e','a1','2017-12-20 16:55:37','登录系统'),('ae25d9d9ce6a49a4866093228e99eb47','a1','2017-12-21 17:19:25','登录系统'),('ae7b8555422146529e15120f9ddd17a5','admin','2017-12-21 18:22:32','新增菜单工业设备安装工程'),('aeef4ce53c704db3baa07c8e53f85b84','admin','2017-12-15 13:53:52','修改菜单库存管理'),('aef1303eec0c454393a950468e3347d8','a1','2017-11-11 16:49:43','登录系统'),('afeb06c6ee9b48ca8fddbd0c0c5559da','admin','2017-11-01 10:11:39','删除系统用户：{USER_ID=a88125c7e4994d5a80061a3645d7701d, tm=1509502299626}'),('b079ee80b81a4e67abf94c3fbe0ec118','admin','2017-11-03 13:08:12','登录系统密码或用户名错误'),('b0b7fb6693f1472799f6a1d3c4f24f60','a1','2017-12-20 18:30:21','退出'),('b121f3e4db314d0a9dac6fe0cc3ebac9','a1','2017-12-21 14:59:32','登录系统'),('b12ab8376b2b4d7ba600333ec6763707','a1','2017-12-21 17:49:59','登录系统'),('b1322cf467cd4b18b43b7d344e800940','admin','2017-12-15 13:53:35','修改菜单财务分析'),('b157738a6739439195f35a1eb8dea75c','a1','2017-10-31 21:18:34','登录系统'),('b17a8ffcd1e94f34be06370bdacf4c1c','a1','2017-12-06 00:04:26','登录系统'),('b19c872758d44c779585e31539df4d29','admin','2017-12-18 18:00:45','修改菜单成色'),('b220311f461a4019a356016a71f29773','a1','2017-10-31 14:44:41','登录系统'),('b25bf5f11a5644b1ab2e5744717c85c4','admin','2017-10-31 11:42:35','登录系统'),('b2caa51d69a44a4a92d161c587974dc3','admin','2017-12-20 18:30:32','登录系统'),('b31209f9476e4d94af4830b49681c02c','admin','2017-11-09 00:03:55','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('b33aa265700342ac85d6a9bc49327144','a1','2017-12-04 22:19:39','登录系统'),('b3456568e45349eaa35900bebb87b137','a1','2017-12-20 18:43:47','登录系统'),('b37c25409a3e4e44a874fa85ae714c1c','admin','2017-12-18 18:01:48','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('b3ad6fd046bf4d988f3d8d3432cca1c7','a1','2017-11-11 22:02:50','登录系统'),('b3c2be31db5446da96749ce436c13d9e','a1','2017-12-06 23:29:45','登录系统'),('b408bf5477374becaa3188bd3aa7e6b1','admin','2017-11-01 10:18:43','登录系统'),('b4785cb798024682927a852464fa7a5a','admin','2017-11-03 13:08:45','登录系统'),('b480473d86ff4e59b91396792cc2bbbc','admin','2017-12-15 12:00:26','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('b48a8dda7b70445d8b0a129f2dd0bfdc','a1','2017-12-04 22:31:56','登录系统'),('b4a99190d6ab4dac917dcd760347fc0a','a1','2017-12-12 23:07:32','退出'),('b4b8f28f6c15435c8bcf7a51cf18cdb6','a1','2017-12-12 09:36:35','登录系统'),('b4e6503ccecb468da94e17c009cb9939','a1','2017-11-01 09:57:33','登录系统'),('b4fc084707d74b718e6af89ce4154076','admin','2017-11-01 10:19:05','修改系统用户：a1'),('b524b7f01df54c7da0bc7c667b0ace2a','admin','2017-12-21 18:21:22','新增菜单土建'),('b526afa994ff4e76a8e1bcf115056e1b','a1','2017-12-12 09:40:17','登录系统'),('b55d60ea7ebd4da4bc036f26705bdf35','a1','2017-12-07 23:19:08','登录系统'),('b5765f323b6f4f1c96dfbf188377b2e4','admin','2017-11-11 22:03:16','登录系统'),('b5b045553ecf4a9399f300be353d942e','admin','2017-11-08 23:09:05','登录系统'),('b5d29aae5558496b805bbc75b0fd5160','admin','2017-12-06 00:56:35','登录系统'),('b653b201eaef4f74b9aa21313c9e8eec','a1','2017-12-07 23:39:25','登录系统'),('b6745353d20f4248b1bd9258787b8784','a1','2017-11-01 00:24:27','退出'),('b6bafddeca91431280daed6a44e9b0b8','dckj','2017-11-01 10:15:08','登录系统密码或用户名错误'),('b6f9469d10804f93b37914cff49bc67e','a1','2017-11-11 21:00:53','登录系统'),('b6fb1bb69e20434b9d29af3d16be5aec','admin','2017-12-19 14:49:02','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('b717055b57ae447d98560b98a71c0e3e','a1','2017-12-05 18:03:04','登录系统'),('b71c11c46d3c4c41873c1aba3f57e59d','admin','2017-11-01 10:13:04','退出'),('b7572d438ff1463b9dbc3321b4b590e6','a1','2017-12-15 13:54:57','登录系统密码或用户名错误'),('b7b031b14cdc402a808ea57c660e9ef5','a1','2017-12-20 10:43:44','登录系统'),('b7c9818581a74423afc8f2a78c717fd9','admin','2017-12-19 16:32:36','登录系统'),('b8bc51cb0c1c4da9861ab2ff29089bd0','a1','2017-12-20 18:17:49','退出'),('b91354796dc04b498b415428069fdccc','admin','2017-12-19 11:04:18','删除菜单ID76'),('b9b90a7c0e35450294fd6fbe5d0305a0','admin','2017-12-12 09:43:52','登录系统'),('b9bcf1f2e56b46f8a78488c758aeb683','a1','2017-12-06 10:49:26','登录系统'),('b9d7fe3f50f5434591f12c443508a6ef','a1','2017-12-20 17:39:45','登录系统'),('ba25bd82797941b088a025171f6052bb','a1','2017-12-21 09:21:14','登录系统'),('ba2abca8850c4a89ac1d5150bae597ce','admin','2017-12-18 15:00:36','登录系统'),('ba5a110b12cc4d07b2ca9d650057b9af','admin','2017-12-19 11:04:58','修改菜单品牌'),('ba84b3956508432d9fef9434e08604bd','a1','2017-11-11 22:26:35','登录系统'),('ba85babe92d5491a9bc90301e84fc314','admin','2017-10-31 21:18:09','修改菜单维修员'),('bb1d1e77476044fca6b33a61fc7aacb1','admin','2017-12-18 15:58:10','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('bb423325861d4d089c0e24eb8a7eda0b','a1','2017-12-06 17:45:43','登录系统'),('bb77052c214341368b86340b67f3b845','admin','2017-11-11 16:11:45','登录系统'),('bb92af9424ea42918f1e467eeefe6487','admin','2017-10-31 11:15:57','登录系统'),('bc50896b0b3f44099f218c73e9518465','a1','2017-11-16 00:17:57','登录系统'),('bcbad45f8d1143e6a3fee266cc8bf5c6','admin','2017-12-15 12:00:35','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('bd27b19405804bdb80c37d6f1aafd5aa','admin','2017-12-19 14:49:17','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('bdfd2031f85341fb9d6458e2765f7249','admin','2017-11-08 23:36:20','登录系统'),('be1c030a18c64cf98cac78271febd9c5','a1','2017-12-06 22:05:33','登录系统'),('bf311409c5f74461a08781180ab99358','admin','2017-11-11 22:08:27','登录系统'),('bf3563a1c4a444deb52e1cb4db3f4ce3','admin','2017-11-11 22:04:07','修改菜单订单归档'),('bf383fc5c5db4827be581213661824e8','a1','2017-10-31 12:54:47','退出'),('bf4bce6e28a04afe8e695b5064c05b39','a1','2017-12-19 14:10:25','登录系统'),('bf718e59f2b34b8c88b3d298f03e3989','a1','2017-10-31 15:20:48','登录系统'),('bf7acaa7248d43379de3e199dc2ba9b2','a1','2017-11-01 11:31:42','退出'),('bfbcc9d3489143aaa6ce25c20d524b7b','a1','2017-11-01 11:29:59','退出'),('bfd8d75bb7244c30af0a043385282298','admin','2017-12-19 14:43:45','修改菜单财务分析'),('bfdcc8aa7f824dd78480828061634e59','admin','2017-12-13 21:48:31','登录系统'),('c02f0a43784c401c8043ae5c473bf7a0','a1','2017-12-06 21:09:11','登录系统'),('c08198cc09bd4fe48dc1adf6630191ae','a1','2017-11-16 00:02:33','登录系统'),('c088e197eab7451f97e6ca956724c6b7','admin','2017-11-08 23:22:53','登录系统密码或用户名错误'),('c0b2bb428678402d9867def53178bdac','a1','2017-11-11 22:19:29','登录系统'),('c10e51f4d64b47588e2b3e56d1c747f2','admin','2017-12-12 14:08:33','登录系统'),('c1ebefe59e4843f0894e6b1e4d4ac490','a1','2017-12-12 09:56:25','登录系统'),('c31070abdc4d40099186de426165d540','admin','2017-12-07 15:47:22','登录系统'),('c318bf7684844a2da14c323b49b6baa1','admin','2017-11-11 21:39:08','登录系统'),('c3c4e9169afa44b89f498a7346857454','admin','2017-12-07 15:48:54','退出'),('c3f96332f3a549108b1db8d789511fbd','a1','2017-12-19 10:49:51','登录系统'),('c43c6b675ee3495e829e212e94aee01f','a1','2017-12-06 11:59:48','登录系统'),('c44c302321774d4dbe50c5b8e80b0067','admin','2017-11-11 16:45:26','登录系统密码或用户名错误'),('c47ec8c16b0b4d059ea23dffd2ba2f64','a1','2017-12-14 16:30:23','退出'),('c487ca6d0ecf43e28a94f15dd78cb60d','admin','2017-12-07 15:48:40','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('c5120cde8edc4b5daab572b30b7590ba','a1','2017-12-13 00:24:12','退出'),('c5483d197e254421b58102bcab830f55','a1','2017-12-20 11:09:10','登录系统密码或用户名错误'),('c55a6c779807404f9baeb9707022098b','a1','2017-12-20 11:18:56','登录系统'),('c576d36ec39642ce95f01d3fef573128','admin','2017-12-12 09:14:09','修改菜单近30日订单'),('c59356b01aaf4abeba95d4577ddaf3e7','admin','2017-10-31 11:45:43','退出'),('c5bb460823ef43f9b540d9bb27aca752','admin','2017-11-11 22:00:24','新增菜单随机附件'),('c5de0d44d9b54095916a7875f1a2fea5','a1','2017-11-01 10:13:16','登录系统'),('c60d876b666942aab02817cd773cd330','a1','2017-12-07 23:51:42','登录系统'),('c6ae4d4b846d4999a7884c604d363f5e','admin','2017-12-07 15:54:32','退出'),('c6b530db78c2473da74a86c2342d08c5','a1','2017-12-18 18:02:03','登录系统'),('c7633538d55a413c9ab72e8542304c2a','a1','2017-12-07 09:33:18','登录系统'),('c7666408f52a490c9826bf010bd96102','a1','2017-12-07 11:28:59','登录系统'),('c820e5de949b4cc0974488efc3157930','admin','2017-12-18 15:05:50','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('c83135c9271f4153bc65e3324f0f7e9c','a1','2017-12-07 13:03:00','登录系统'),('c83b3d78a92445dc9d7e5cc737820a54','a1','2017-03-06 00:03:57','退出'),('c84531b0eb764c128d2271e76252671d','admin','2017-11-11 22:01:26','新增菜单付款方式'),('c854e229cfcd4d1c9bc49398bfdcaa44','a1','2017-11-11 16:13:13','登录系统'),('c8993bad09e34276a3a071de2ef6363d','admin','2017-12-12 09:14:30','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('c8ae2223ea634a1eab37853e3dc23b1b','a1','2017-12-19 14:49:30','登录系统'),('c8c0f53a571c42079951ea53160f9dd7','admin','2017-12-12 12:13:15','修改角色菜单权限，角色ID为:3'),('c8dfb9d6655847cdb778b21159265347','admin','2017-11-23 15:07:22','登录系统'),('c913154f6f464fffbda83694078c9927','a1','2017-12-12 09:44:32','登录系统'),('c945b5063e494c91b7fd705dfb6a3991','a1','2017-10-31 19:32:02','登录系统'),('c95017f680264fd5a324bc0cd2dad173','admin','2017-10-31 21:18:13','退出'),('c9553b5ed6ac413aab042e19aed6e3aa','admin','2017-12-21 18:32:48','退出'),('c958d1beb5df4bc9a7be547233ac7236','admin','2017-11-11 16:46:09','新增菜单付款方式'),('c9610d74df8a450888faacea8ca934fb','admin','2017-11-11 16:12:17','新增菜单维修进度'),('c98c36fc980f4292846daa4b62d99058','admin','2017-12-15 11:57:58','修改菜单结算管理'),('c9a050b7b0a94b6e97044ca1fa676ca2','a1','2017-12-20 18:14:11','登录系统'),('c9a8a8597758455fbafe93a8c5adae98','a1','2017-12-20 22:39:35','登录系统'),('c9b26a2ec5a14979a689419883a3a303','admin','2017-11-08 23:10:23','修改菜单随机附件'),('c9c4ed25d8844a5fab1e63ab104631ee','a1','2017-12-11 16:42:54','登录系统'),('c9f94ab41cb749838786d05b4391d06e','admin','2017-12-21 18:26:17','新增菜单起重运输设备'),('ca07725160114c64b6a19297d1c23130','a2','2017-12-12 13:05:15','登录系统'),('ca0b6f5091364862a34bd8fd1e4e0efa','a1','2017-12-11 16:32:56','登录系统'),('ca1a1ba5c22f40e99ae434af637c4594','admin','2017-11-23 16:15:09','登录系统'),('ca1f1abf73a5473a9e62933b5f755765','a1','2017-12-04 21:29:15','登录系统'),('ca34983857ca402283fbe82c263925b4','admin','2017-10-31 14:58:10','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('ca5147443a534110ad0123df1e1cdc7f','admin','2017-12-19 14:46:16','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('ca55d94d00b04859975b9db882546a8f','a1','2017-12-11 11:39:04','登录系统'),('ca5864bb9c864e89bddf200d87bfba68','a1','2017-11-11 22:43:38','登录系统'),('ca5d893a298243b78a65c701146240ec','a1','2017-12-12 17:03:35','登录系统'),('ca876c13a17049649f4d8b64cd300884','a1','2017-10-31 23:19:16','登录系统'),('cac0f001d4df463e911f6efe88d3c739','a1','2017-12-08 00:28:25','登录系统'),('cb37f624fe154959acf8ba60dc5644a3','a1','2017-12-21 14:33:30','登录系统'),('cb45f3ee146b4e73b26591358380adf5','admin','2017-12-18 18:01:29','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('cb904683043c41b296808f24b3af20c4','a1','2017-10-31 15:04:50','登录系统'),('cb999775d8a34b6199a7bf521a2c7484','a1','2017-10-31 14:45:08','退出'),('cc436617e46d463eb13a43477922c89a','a1','2017-12-19 09:47:31','登录系统'),('cc5c0fcd9d814a6b9af8ba02ec27d94e','admin','2017-12-19 14:49:10','修改del_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('cc89e211afa844cf8c1fca578e22862a','a1','2017-12-07 11:42:14','登录系统'),('ccb3c642366f432e9813690ef512e4bb','a1','2017-12-11 18:06:10','登录系统'),('ccbdbea8567c46fda8d508222daa6bbe','123@qq.com','2017-12-11 20:51:04','登录系统密码或用户名错误'),('ccc6e0f9dcc84e7fb3b01f1d7a3fe783','a1','2017-11-16 15:31:06','登录系统'),('ccd628a7a908429fb4d4e054ced5a4bd','admin','2017-11-23 14:42:38','登录系统'),('ccf34d45704642d2aab68f2a2be96c25','admin','2017-12-19 14:46:23','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('cd538d7486c5486389b2abccf82f0114','a1','2017-12-15 10:45:50','登录系统'),('cd558211d6764f72b07fdb20a5b8ebc2','a1','2017-11-08 23:08:19','登录系统'),('cdb36f07b491413da9059deb4761774c','a1','2017-10-31 15:06:32','退出'),('cdb80450cd50431cacb92b2d0541abe1','a1','2017-10-31 11:09:18','退出'),('ce2e087387854c28b597d08802b13044','a1','2017-12-12 18:52:31','退出'),('ce66c260efaf4e9c8dbe16bb608d47b4','a1','2017-12-08 10:10:27','登录系统'),('ce70e51dedee48c6afa4aeda956b90a8','admin','2017-12-21 18:24:49','修改菜单铁路'),('cea7b4028367409598e4c5afeb65c873','a1','2017-12-12 20:06:10','登录系统'),('cf12ca28c40f44a189f3a0ac782b2b91','a1','2017-10-31 16:17:37','登录系统'),('cf16065eaf0448d5aecb20828c66856e','admin','2017-12-15 11:59:38','退出'),('cf1f085041144b22ac76c790ffdb1f03','a1','2017-03-06 01:09:10','退出'),('cf43032598b54047b81cd58e9c28d14f','admin','2017-11-16 14:31:51','登录系统'),('cf7acd89f054484ca182ee86779ec282','a1','2017-11-01 10:07:30','登录系统密码或用户名错误'),('cfb2a4d43e844ab0b0bd58b08391fe72','a1','2017-11-01 10:35:02','登录系统'),('cfecb0eb57724543822829e45a2b2cc4','admin','2017-11-23 14:24:47','登录系统'),('d00888c158a34a96b1f1db0fe797109c','a1','2017-11-11 21:05:27','登录系统'),('d05e3b8e6764455dad4dcddb11284236','admin','2017-12-19 14:49:19','退出'),('d07bb936ab6f49ec85664eabdda766f9','a1','2017-10-31 15:06:17','退出'),('d09177addaa044cb8325ae3e57970170','admin','2017-11-11 16:45:35','登录系统'),('d095f2e31da745cba14870725c3cd197','a1','2017-10-31 12:54:58','登录系统'),('d09942b9ba9b43398c19ed4d1eecf8fe','admin','2017-12-21 18:24:21','新增菜单工程造价'),('d0bdf3d3d25c4e25811b2008e8d7d469','admin','2017-10-31 11:11:27','退出'),('d0c844e6045c41efbb199efc8b470c65','admin','2017-12-12 12:17:20','修改del_qx权限，角色ID为:3'),('d10e36a09d5641ee8678f0babcf09309','admin','2017-10-31 11:16:41','退出'),('d11ef4ac7c0f42a586f3ba21b67d41d1','admin','2017-12-15 13:53:17','修改菜单微信管理'),('d13266c3a49d47e6a05f722cbce79a24','a1','2017-12-07 17:46:16','登录系统'),('d18a0bc7512046348c059a481dd5ba7e','a1','2017-12-06 00:08:01','登录系统'),('d1ba12d352074319b3f4b92a41b90c00','a1','2017-12-11 17:38:37','登录系统'),('d2445d81356d4efcaf08cf7091a8072d','a1','2017-11-12 23:08:48','登录系统'),('d25cfc3739da466d8b91180dcffaf6cd','a1','2017-10-31 21:17:15','退出'),('d2b3d5afdffd4e30bff61b34927e7525','a1','2017-12-18 21:06:24','登录系统'),('d2cf4bcab878473cb8014292028f1974','a1','2017-12-07 11:11:43','登录系统'),('d2ece4ee8bd64295bb8d117c5eae5d6d','a1','2017-11-16 14:05:09','退出'),('d34b3b0ea122455890646b82b3d6d959','a1','2017-12-12 10:47:56','登录系统'),('d35b31ef2ca042f0909b2b18b1b60a2f','a1','2017-10-31 21:51:38','登录系统'),('d3bb49ebacae4e41b3a630b51d3eb6e5','a1','2017-11-11 15:41:14','登录系统'),('d3fe49ec49034f218f76eaa187d0948c','admin','2017-12-27 16:24:53','登录系统'),('d4078f79e2c14341b1ac78696b381841','a1','2017-11-08 23:37:18','登录系统'),('d40bb82f66b34b589a307c3429fb04d1','admin','2017-12-12 12:19:42','退出'),('d424ed8f73b44d96bf71a0ecf6b736eb','admin','2017-11-01 10:16:10','退出'),('d44224ef27464606addad219dcd41ba8','a1','2017-12-20 11:38:38','登录系统'),('d4e6cca4e0d34dc2bb4ab6bb72f318fc','admin','2017-12-19 14:43:25','登录系统'),('d51c71111d274629aa4cea73e71843f1','a1','2017-12-06 21:06:43','登录系统'),('d56fdf2458334bb0872f1dafb09e9aeb','a1','2017-12-12 10:05:30','登录系统'),('d5a2619edf6b4a418c0515de0dfa17f9','a1','2017-12-15 11:59:53','退出'),('d5b3bfdb84574323ac9a5cf4a3cefa55','admin','2017-12-12 09:10:51','新增菜单今日订单'),('d5b46981869c44f08b26f468c02a6390','admin','2017-11-11 22:00:46','新增菜单维修设备'),('d62bc54a34b7416cb0822cbfcfcbfde9','a1','2017-12-11 23:27:16','退出'),('d65b759f914740bb823dcedcdd83000e','a1','2017-12-21 11:18:23','登录系统'),('d6658544c3fb498abf41f2f4f6f0f2fe','a1','2017-12-12 21:10:28','退出'),('d66a3c0a499c46a0a7294bf773230daa','a1','2017-12-07 21:49:11','退出'),('d68a8cd9b6114d73a39a4f3ab6f85e92','a1','2017-12-06 17:56:21','登录系统'),('d69fc60318ca4880b1ea40f202232664','a1','2017-11-11 21:40:53','登录系统密码或用户名错误'),('d6d33478f17d41d684e4edbd89c07ba2','admin','2017-12-20 18:09:06','修改add_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('d7208700a7da4949ac70c2b3130e71e0','a1','2017-12-11 11:32:34','登录系统'),('d7ce71fe4b884e248ff449574bd51ed9','admin','2017-12-21 18:30:12','新增菜单水电安装'),('d81de4c4e023490da2134f19d82a42f2','a1','2017-12-06 17:19:10','登录系统'),('d8d3694625684a2c9e2247bdaa1d8d8e','a1','2017-12-05 23:54:15','登录系统'),('d8d97e67ff1347e7b8ca476ed68c9304','admin','2017-10-31 14:59:17','登录系统'),('d8f19c34250a45f1981b2c3fda4452b5','a1','2017-12-21 09:14:33','登录系统'),('d911868d8f6642fa9589f70275a46fe8','admin','2017-11-23 15:26:17','登录系统'),('d99c5751e8994db99014f2f32a7f2a02','admin','2017-11-11 22:03:46','删除菜单ID72'),('da0b68a9ffda4c38ba51a2477c699c06','a1','2017-12-11 10:55:01','登录系统'),('da32b3bb8e874ec38ab92d7e330cf14d','admin','2017-12-12 09:18:57','退出'),('da97d4b06eaf482b900dc6d02e62cc8c','a1','2017-12-07 16:54:57','登录系统'),('dadfe4de921e45179db523e0e3678dde','admin','2017-12-19 14:46:30','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('daee0a7eb29545809a47d28a3a21abec','a1','2017-12-21 13:50:58','登录系统'),('db34857fdb8f4ba2ae6bcce9957d6c18','a1','2017-12-12 18:14:26','登录系统'),('db4b5969c5674e048fa1be007a95c833','admin','2017-11-08 23:36:54','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('db6addf0d56f410da5fb16731dd28c4a','admin','2017-11-11 16:46:20','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('db7e59ba908942688c3d9dd87d0a30d4','a1','2017-12-12 18:52:59','登录系统'),('db81c745fe7d45a2b11730eccec13dfe','a1','2017-12-08 17:44:24','登录系统'),('dbc4ecc2776846e59fd447d021822117','a1','2017-12-19 14:46:43','登录系统'),('dbf65eb050d643308e45ff9fc9bd3d74','admin','2017-12-20 18:31:08','退出'),('dca03273a2474f5997e9aee937dbc34f','a1','2017-11-16 10:52:58','登录系统'),('dca0e6249c184bd39ba54fc8239d1710','admin','2017-12-18 18:01:10','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('dd0c9d3746c44c01a00c63e674e66a5e','a1','2017-12-08 17:13:55','登录系统'),('dd30e4a6e84548f290d1cbaf447ca96a','a1','2017-11-16 10:34:22','登录系统'),('dd416ce9d3844faa9b7bc02bb84808cc','a1','2017-10-31 13:04:21','登录系统'),('dd5ef7d1cd744d86aba208972c4605db','admin','2017-11-11 22:00:04','新增菜单维修员'),('dd67d7c9d55b463d863116255b9fc283','a1','2017-12-19 14:13:53','登录系统'),('dde0ef657f6745ab983625391d5b893e','a1','2017-11-11 22:08:45','登录系统'),('de543b9269fc4394b3c93129554a15da','admin','2017-12-20 18:08:44','新增菜单商品结算'),('de7546cee05649d6ba1bd8c800ed3e8d','admin','2017-11-11 16:12:27','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('deb2b00f7b5a41f3bd18b698dc3a9af5','a1','2017-12-12 09:43:35','退出'),('dedb29a286cd4fe096d50e66ee2c653c','a1','2017-11-01 10:14:45','退出'),('df07cd893a3943268909e5ca42170808','a1','2017-10-31 14:44:01','退出'),('df195cd0ae084a35b8dac425c4f796cf','a1','2017-12-11 23:16:58','登录系统'),('df39a9ff5d414f909e59afa6f8b7186d','admin','2017-12-06 00:59:26','新增菜单数据项'),('df55c55e42aa47f095de84310faa9fd1','a1','2017-11-01 11:29:50','登录系统密码或用户名错误'),('df616c22806a48309c17275ccb50dd88','a1','2017-12-06 21:59:26','登录系统'),('df939a5a589d46d9a36f83bc71d8d403','admin','2017-11-11 21:40:44','退出'),('dfc309f30dc248088edad0df5442c8d0','a1','2017-12-20 10:32:50','登录系统'),('dfeb186572684db4aa3867bd9d7e6ec3','a1','2017-12-06 20:59:43','登录系统'),('e03d75920de940cda2257ce94d3a59ae','a1','2017-11-11 13:33:31','登录系统'),('e05d8ebd189e42c583eec86827805535','admin','2017-12-20 18:17:14','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('e09815fbee194b588c94de83b52065be','a2','2017-12-12 13:07:04','登录系统'),('e0982ff6cbb24df78e2faa4ca9eaf0f7','a1','2017-12-07 20:50:41','登录系统'),('e0e29d32059c4e50a6006806be74b9d8','a1','2017-12-12 18:06:30','登录系统'),('e160d48e1942410ebf30770daf2bbc7f','admin','2017-11-11 13:35:05','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('e17b3956395d475b816c150144c40a78','admin','2017-11-08 23:36:14','登录系统密码或用户名错误'),('e1958a8b496946aa9b84c11fff0356bd','a1','2017-12-18 15:44:32','登录系统'),('e1acbda190e247c1a5c8ce9e27541aac','admin','2017-12-20 18:31:50','退出'),('e1dc36927b5142cbbc8782088262500f','a1','2017-12-06 20:38:22','登录系统'),('e22dffd42ede4d6882741eb8232c6ce0','a1','2017-12-19 16:40:43','登录系统'),('e238364944024d4192dcf2f643281670','admin','2017-12-21 18:27:38','新增菜单城市供、排水及污水处理'),('e26d79854c9e47e1b1689a6d4368e984','a1','2017-12-20 18:12:59','登录系统'),('e29970ac2cd84bcf9821278350d8fe15','a1','2017-10-31 15:37:38','登录系统'),('e2eaa5fb79a04870a8e8bef3e9bf3378','admin','2017-12-06 01:01:39','退出'),('e36fdd6e2ef448f3ab1d9e6f0692df22','a1','2017-12-12 09:58:27','登录系统'),('e3c39de3421945b4be52736b4bb5b19b','admin','2017-12-15 11:58:20','修改菜单库存管理'),('e432b39013fe438fb4568e20e1ec2ffe','a1','2017-12-29 09:21:26','登录系统'),('e43d2831cbbf4691b8cc446904299538','a1','2017-10-31 12:59:11','登录系统'),('e463189d729a4dfaaf7d371fbca3a28e','a1','2017-12-06 00:56:24','退出'),('e47451cf85174fbbb6061ba6da4ba02e','a1','2017-12-21 10:12:32','登录系统'),('e4786f26c9d6422896ab553df81a036a','a1','2017-12-06 21:14:09','登录系统'),('e48b04c0bd1e4a289a58fb151e08d8e3','admin','2017-12-15 11:59:26','新增菜单账单归档'),('e4a5aed11ed3498890f2cce8ffdfeb48','a1','2017-12-06 23:10:06','登录系统'),('e4e561e9767c4081830d6cb03e00990a','admin','2017-03-06 00:06:01','登录系统'),('e548730ab4c04536ae3ed2dac468848f','a1','2017-12-12 15:41:15','登录系统'),('e554caff394c42bab3e73c4ebe173182','admin','2017-11-11 13:35:31','退出'),('e56cf0a4b39d4cc6b11a6921b98c39b5','a1','2017-12-20 11:33:49','登录系统'),('e5bb017c13124799a64d514f9fd7d7c8','a1','2017-12-19 10:58:13','登录系统'),('e6873f5d05f64d64a0dd8da03f0fb2ec','a1','2017-11-01 10:13:25','登录系统密码或用户名错误'),('e6efde3f9fe14198adb061f0e39bc390','admin','2017-10-31 15:06:38','登录系统'),('e6f809d799df4bc7b240f289e3c03905','a1','2017-12-07 13:07:18','登录系统'),('e7aef06933964d18ad227bc2d33d61cc','admin','2017-12-21 18:26:40','新增菜单化工械设备'),('e7ff9deeb5f04099a18965d0d1df683c','a1','2017-12-19 17:49:39','登录系统'),('e8ab6e1af14c4e1dad8f060d0f2a4056','admin','2017-10-31 14:05:58','登录系统'),('e8ae0cd80ebb430b936f155f021a9725','admin','2017-10-31 15:00:58','登录系统'),('e8ce8ad72d6b42e5be82ba45072b3606','a1','2017-12-05 23:36:58','登录系统'),('e8e05748dac3481ca8221df9a3c367c7','a1','2017-11-11 20:28:07','登录系统'),('e9033e801aeb4b3dbfb9986a936f9752','admin','2017-03-06 01:09:16','登录系统'),('e938437d770842d6b1be2f093156a985','a1','2017-12-15 11:37:25','登录系统'),('e9c69fbbea4340418294fdac1b02153e','a1','2017-12-18 16:07:43','登录系统'),('e9dfe51695194864a650d41daaabaa2e','admin','2017-12-20 18:31:48','删除菜单ID123'),('e9e0b70a35ef438a875d7f8e07a834c3','a1','2017-10-31 23:14:52','登录系统'),('ea7bc6c1f27c4d5ea35555aeaa9cce36','admin','2017-10-31 11:09:35','登录系统'),('ea871bba461c4c279745bb240167a8ec','admin','2017-11-11 22:08:31','退出'),('eada0cbc15794952b4555f87fca7e389','a1','2017-12-07 15:59:32','登录系统'),('eaec896e08f343adbf77ad44ea0dc8a5','admin','2017-10-31 11:10:52','修改菜单订单类别'),('eb161e7a25a747d9802fa38de2562fdf','a1','2017-11-16 13:38:29','登录系统'),('eba660e1f5af4211bb9e01d3bfc53132','a1','2017-12-12 09:19:08','登录系统'),('ebfb8587b633404d85a75855800ec28a','a2','2017-12-12 13:01:50','登录系统'),('ec5eced99d954ec7aea051bb21e8b207','a2','2017-11-01 10:11:22','退出'),('ecb9a6555fad4a3d9a39f5c784d97906','admin','2017-12-20 18:17:57','登录系统'),('ecdfaad598994c6990d40baf96172e48','admin','2017-10-31 14:48:08','登录系统'),('ece3e1f585924bd5bb74e7bd4df954d4','a1','2017-11-01 00:12:32','登录系统'),('ed084296173a425998b2efde3405fe9d','a1','2017-12-12 16:39:34','登录系统'),('ed13722afb1e4e0ea47e0c18c71c9ed0','a1','2017-12-19 17:28:58','登录系统'),('ed3832e91aa249a38c27c3496c7bb824','admin','2017-11-23 16:01:37','登录系统'),('ed8bbf2aa16645b7865109ce6e4cf1fd','a1','2017-12-20 18:13:33','退出'),('edb8edf5a509407498283e6377c724ba','admin','2017-12-12 09:18:50','退出'),('ee32a23393ec4d02a8d93ea69f51ae03','a1','2017-10-31 19:15:48','登录系统'),('ee7f4f51afb144429d756c3711c83f4f','admin','2017-12-18 15:03:51','新增菜单计量单位'),('eee113936c6e4df38f740c3f728f5da2','a1','2017-12-07 17:28:20','登录系统'),('eeebfd47798740c28169ebe578c5f714','a2','2017-12-12 12:56:22','登录系统'),('ef4d4449bff5412095c27e040965be81','admin','2017-12-07 15:48:45','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('efa72fa8ad074d5b8ae91bf3438116c0','admin','2017-12-21 18:21:29','新增菜单设备'),('f10e1017112240d08bc24e961c5b950f','a1','2017-10-31 23:55:39','登录系统'),('f196947a8cbf435780a075204e2ad28f','admin','2017-12-21 18:21:48','新增菜单建筑爆破与拆除'),('f1d3500133194991a38d4818874eacd1','a1','2017-12-05 00:16:35','退出'),('f1d7b873fc954ba49306c5a34caff049','a1','2017-10-31 19:24:45','登录系统'),('f22823c8edbd4bd7a8a26d32c9c1383d','a1','2017-12-14 16:03:55','退出'),('f2505a4780384db2b4304a611cc221b9','admin','2017-11-23 15:08:20','登录系统'),('f2d012cfa03a4c7f90140cf03d4193c1','admin','2017-12-20 18:48:27','登录系统'),('f30d76acbecc4452acf1795df45612eb','a1','2017-12-19 17:50:52','登录系统'),('f310dd8fb02747b0a9944b62a7bb627a','admin','2017-11-08 23:36:39','新增按钮权限pd{BUTTON_ID=3542adfbda73410c976e185ffe50ad06, RB_ID=b3a3f70f76e84e06adc4bf2ac6ec2add, ROLE_ID=68f8e4a39efe47c7bb869e9d15ab925d, guid=1510155399841}'),('f3145b4ae76340e39e9ee215b17fd67a','a1','2017-12-11 15:24:56','登录系统'),('f35b5b5d0a594a64b8fc77e378632f60','admin','2017-10-31 11:45:20','退出'),('f3acb4cf061440bc9d8b2dbaf9de7258','admin','2017-12-21 18:24:11','新增菜单建筑幕墙'),('f3b83bcd42104cd6a0c5dab41bc469ec','admin','2017-11-11 21:58:03','登录系统'),('f469ad64866048aab82672cc13c20c6a','admin','2017-10-31 15:02:25','退出'),('f4d3ba9fc1934e3d902e44f951a0be77','admin','2017-12-15 13:53:46','修改菜单商品管理'),('f4e1e1d407944d959f7fc30680b61d4d','admin','2017-11-11 22:01:06','新增菜单维修进度'),('f4ef47871aa14f91a52316c4695f8aef','a1','2017-12-15 11:56:52','退出'),('f5a24dbd8d644e6da91beb22d04de5ff','admin','2017-12-19 16:34:18','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('f5bf51337e6e4a549944c6af3097525c','admin','2017-12-12 21:10:38','登录系统'),('f5c4524664b743c59190537c7ad0218b','a1','2017-12-07 23:25:30','登录系统'),('f5ef91e80aee468d8f21537c8c0569e6','a1','2017-12-06 23:44:59','登录系统'),('f5efb19908ff434f86552f6a906a4540','a1','2017-11-01 10:18:37','登录系统密码或用户名错误'),('f5fb8a3a3bf74a41a7d804fc9bd8fd44','admin','2017-12-21 18:28:29','新增菜单桥梁及隧道'),('f6178bbe2fab4060bf3139dce25c3b2b','admin','2017-12-20 18:13:44','登录系统'),('f63517fb8d2d4ba1bd1f333dea103c00','a1','2017-12-07 11:35:29','登录系统'),('f6cfc772352d469c91aa82f2ec83b9af','admin','2017-12-19 21:02:37','登录系统'),('f6e521da33ad4ec4bae5aa51afe6ab5a','a1','2017-12-05 00:16:23','登录系统'),('f6e60f8a041e4ef8ac8593c9deb848c2','a1','2017-12-15 12:58:01','登录系统'),('f7234454591c40d6a3ffb063df86934e','admin','2017-12-20 18:48:49','退出'),('f7fd523cd6544d57bc94bbc66a0f084b','admin','2017-12-18 15:58:27','修改cha_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('f82e6d9e6d7f48d3b176a16996fec726','admin','2017-12-18 18:01:50','退出'),('f85bed73ebc14a85bb066111857f7cf8','admin','2017-12-12 12:16:37','新增菜单维修任务'),('f85d485b40ac42ffab2169db7d230378','a1','2017-12-20 12:05:36','登录系统'),('f8b156162663463b95a7457ccf79380c','admin','2017-11-23 15:25:07','新增菜单微信管理'),('f976365f089d4fb596657731895af792','admin','2017-11-23 16:20:57','登录系统'),('f9873e0cdc9b4c8394bc1cb8df20d3d1','admin','2017-12-21 18:30:24','新增菜单园林绿化'),('f9c3a2c51f434d828098d6bdb59b3082','admin','2017-11-09 00:02:04','登录系统'),('f9f192bd56b54735b36a6a6a24b1a171','admin','2017-12-18 15:58:02','修改角色菜单权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('fa1ae626f85d44ba877930b9708d8d14','a1','2017-10-31 14:49:48','退出'),('fa2d371346fb4bd4b9b5ef43b964c63f','a1','2017-12-07 15:47:09','退出'),('fa6cd594894e46239b8270a0eb07f799','a1','2017-12-07 23:30:36','登录系统'),('fa6d32cd8940486dbd43febf26473a5e','admin','2017-11-09 00:01:51','登录系统密码或用户名错误'),('fa8e74e83bab44eb8f2dfb5c1265971d','a1','2017-12-06 21:38:49','登录系统'),('faf0df06d960497e8f4426dea007ffdc','a1','2017-12-18 13:39:48','登录系统'),('fb2176f1a8f44014a69e86ccb0e3e291','a1','2017-11-11 16:22:36','登录系统'),('fb286d81fdd4487e8b7a60c76271a0ba','a1','2017-12-04 21:55:07','登录系统'),('fbd18c4049ad4d8b851d4f11ddcee5c2','admin','2017-11-03 13:08:02','登录系统密码或用户名错误'),('fbd983e6e67f422f8fe6a3791a8c5aff','a1','2017-12-21 17:37:02','登录系统'),('fc09115df872479fa576f6e1f668fff1','admin','2017-12-12 09:14:34','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('fc3ce7bf42014c28a2754b4e84005639','a1','2017-12-15 13:52:41','退出'),('fc86eb40e49a42c390358a685cb3bc76','admin','2017-11-11 21:59:47','新增菜单订单类型'),('fc9c38b06700481d944c4c5b56f59c31','a1','2017-12-11 16:14:11','登录系统'),('fca2bee3628743529a14f2457911e4a5','admin','2017-12-06 09:12:34','退出'),('fcf3d36c246c4a4cad67bb3bb25e125e','a1','2017-12-06 15:25:36','登录系统'),('fd26521d725e4dc1ba39ba455a901da0','a1','2017-10-31 21:33:40','登录系统'),('fd2d6aacfee54c02be533104cd636da4','a1','2017-03-06 01:19:22','登录系统'),('fd8c87108c504ee6959eee74aaf52dab','admin','2017-12-21 18:22:13','新增菜单电力工程'),('fdc3e26e6d464a35a88b32390d56f5d9','a1','2017-12-11 21:10:20','登录系统'),('fde1a9b7f40042d2ac12575226b6ab5d','admin','2017-12-06 01:00:02','退出'),('fde429f155044bd0b208a4825ed48e87','admin','2017-12-18 15:06:08','退出'),('fdf795aff43f4aae9fd10f1cbcccfe34','admin','2017-12-18 15:57:26','新增菜单成色'),('febf42dc127f4d1496e07b1cc45f88bd','dckj','2017-11-01 10:16:21','登录系统'),('ff1480d525764b6ba60e56c37001240d','a1','2017-12-07 11:39:15','登录系统'),('ff4989181d624ad09d2fe4882d6113bb','a1','2017-12-05 23:48:09','登录系统'),('ff5ae4f623db4f6f9d1b454f911d095c','a1','2017-11-01 11:29:56','登录系统'),('ff601e1d23ac44968759805e560be370','admin','2017-11-16 14:33:56','登录系统'),('ff97801a70d54259a93bf3d96abcf19f','admin','2017-12-19 14:47:47','删除菜单ID103'),('ffc3948374bb456cb3b0783e743ef9ba','a1','2017-12-06 16:34:42','登录系统'),('ffe6f7e397fc4845a72382a0633552c3','admin','2017-11-11 16:46:35','修改edit_qx权限，角色ID为:68f8e4a39efe47c7bb869e9d15ab925d'),('ffef36d0e8af45d789362bce3b374619','admin','2017-12-19 14:46:33','退出');
/*!40000 ALTER TABLE `sys_fhlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fhsms`
--

DROP TABLE IF EXISTS `sys_fhsms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fhsms` (
  `FHSMS_ID` varchar(100) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(5) DEFAULT NULL COMMENT '类型',
  `TO_USERNAME` varchar(255) DEFAULT NULL COMMENT '收信人',
  `FROM_USERNAME` varchar(255) DEFAULT NULL COMMENT '发信人',
  `SEND_TIME` varchar(100) DEFAULT NULL COMMENT '发信时间',
  `STATUS` varchar(5) DEFAULT NULL COMMENT '状态',
  `SANME_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FHSMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fhsms`
--

LOCK TABLES `sys_fhsms` WRITE;
/*!40000 ALTER TABLE `sys_fhsms` DISABLE KEYS */;
INSERT INTO `sys_fhsms` VALUES ('05879f5868824f35932ee9f2062adc03','你好','2','admin','san','2016-01-25 14:05:31','1','b311e893228f42d5a05dbe16917fd16f'),('2635dd035c6f4bb5a091abdd784bd899','你好','2','san','admin','2016-01-25 14:05:02','1','1b7637306683460f89174c2b025862b5'),('52378ccd4e2d4fe08994d1652af87c68','你好','1','admin','san','2016-01-25 16:26:44','1','920b20dafdfb4c09b560884eb277c51d'),('54850e7673f743d29052177f8cf115dd','haode ','1','admin','a1','2017-10-31 14:53:08','1','12f2badcc8c44b49b52ba4077ca9c073'),('5ceea49454c54791828efe087a8a6b25','show time','1','admin','a1','2017-10-31 14:49:19','1','d0ed916c138a467694d42309411d55e6'),('77ed13f9c49a4c4bb460c41b8580dd36','gggg','2','admin','san','2016-01-24 21:22:43','2','dd9ee339576e48c5b046b94fa1901d00'),('816bf72bd2594e7a9bab178fa1de9b60','ok','2','admin','a1','2017-10-31 14:51:57','1','790dea65d45741049951b26e7ece0285'),('98a6869f942042a1a037d9d9f01cb50f','你好','1','admin','san','2016-01-25 14:05:02','1','1b7637306683460f89174c2b025862b5'),('9e00295529014b6e8a27019cbccb3da1','柔柔弱弱','1','admin','san','2016-01-24 21:22:57','1','a29603d613ea4e54b5678033c1bf70a6'),('a30a5921093e477da82e5a96a8e6b444','show time','2','a1','admin','2017-10-31 14:49:19','1','d0ed916c138a467694d42309411d55e6'),('b322196b7e2d48c984dccde451d71825','ok','1','a1','admin','2017-10-31 14:51:57','1','790dea65d45741049951b26e7ece0285'),('d3aedeb430f640359bff86cd657a8f59','你好','1','admin','san','2016-01-24 21:22:12','1','f022fbdce3d845aba927edb698beb90b'),('e5376b1bd54b489cb7f2203632bd74ec','管理员好','2','admin','san','2016-01-25 14:06:13','2','b347b2034faf43c79b54be4627f3bd2b'),('e613ac0fcc454f32895a70b747bf4fb5','你也好','2','admin','san','2016-01-25 16:27:54','2','ce8dc3b15afb40f28090f8b8e13f078d'),('f0f5a713854c4bfbb93955c10615f1a2','haode ','2','a1','admin','2017-10-31 14:53:08','1','12f2badcc8c44b49b52ba4077ca9c073'),('f25e00cfafe741a3a05e3839b66dc7aa','你好','2','san','admin','2016-01-25 16:26:44','1','920b20dafdfb4c09b560884eb277c51d');
/*!40000 ALTER TABLE `sys_fhsms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_loginimg`
--

DROP TABLE IF EXISTS `sys_loginimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_loginimg` (
  `LOGINIMG_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '文件名',
  `FILEPATH` varchar(100) DEFAULT NULL COMMENT '路径',
  `TYPE` int(2) NOT NULL COMMENT '状态',
  `FORDER` int(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`LOGINIMG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_loginimg`
--

LOCK TABLES `sys_loginimg` WRITE;
/*!40000 ALTER TABLE `sys_loginimg` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_loginimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理','#','0','1','menu-icon fa fa-gavel blue','2',1),(2,'权限管理','#','1','1','menu-icon fa fa-lock black','1',1),(3,'日志管理','fhlog/list.do','1','6','menu-icon fa fa-book blue','1',1),(6,'信息管理','#','0','5','menu-icon fa fa-comments blue','2',1),(7,'图片管理','#','6','1','menu-icon fa fa-folder-o pink','2',1),(8,'性能监控','druid/index.html','9','9','menu-icon fa fa-tachometer red','1',1),(9,'系统工具','#','0','3','menu-icon fa fa-cogs blue','2',1),(20,'在线管理','onlinemanager/list.do','1','5','menu-icon fa fa-laptop green','1',1),(36,'角色(基础权限)','role.do','2','1','menu-icon fa fa-key orange','1',1),(37,'按钮权限','buttonrights/list.do','2','2','menu-icon fa fa-key green','1',1),(38,'菜单管理','menu/listAllMenu.do','1','3','menu-icon fa fa-folder-open-o brown','1',1),(39,'按钮管理','fhbutton/list.do','1','2','menu-icon fa fa-download orange','1',1),(40,'用户管理','#','0','2','menu-icon fa fa-users blue','2',1),(41,'系统用户','user/listUsers.do','40','1','menu-icon fa fa-users green','1',1),(43,'数据字典','dictionaries/listAllDict.do?DICTIONARIES_ID=0','1','4','menu-icon fa fa-book purple','1',1),(50,'站内信','fhsms/list.do','6','3','menu-icon fa fa-envelope green','1',1),(51,'图片列表','pictures/list.do','7','1','menu-icon fa fa-folder-open-o green','1',1),(52,'图片爬虫','pictures/goImageCrawler.do','7','2','menu-icon fa fa-cloud-download green','1',1),(54,'数据库管理','#','0','16','menu-icon fa fa-hdd-o blue','2',1),(55,'数据库备份','brdb/listAllTable.do','54','1','menu-icon fa fa-cloud-upload blue','1',1),(56,'数据库还原','brdb/list.do','54','3','menu-icon fa fa-cloud-download blue','1',1),(57,'备份定时器','timingbackup/list.do','54','2','menu-icon fa fa-tachometer blue','1',1),(58,'SQL编辑器','sqledit/view.do','54','4','menu-icon fa fa-pencil-square-o blue','1',1),(69,'订单管理','#','0','11','menu-icon fa fa-book blue','2',1),(70,'订单归档','customer/list.do','69','1','menu-icon fa fa-eye green','1',1),(73,'商品管理','#','0','12','menu-icon fa fa-briefcase blue','2',1),(74,'商品归档','goods/list.do','73','1','menu-icon fa fa-gift green','1',1),(78,'库存管理','#','0','15','menu-icon fa fa-bell blue','2',1),(79,'商品库存','kucun/list.do','78','1','menu-icon fa fa-home green','1',1),(80,'商品入库','intoku/list.do','78','2','menu-icon fa fa-cloud-download orange','1',1),(82,'库存盘点','kucun/kucunchar.do','78','4','menu-icon fa fa-bar-chart-o blue','1',1),(84,'订单归档','allcustomer/list.do','69','1','menu-icon fa fa-eye green','1',1),(89,'数据项','#','69','2','menu-icon fa fa-pencil-square-o green','1',1),(90,'订单类型','level/list.do','89','2','menu-icon fa fa-circle red','1',1),(91,'维修员','remarks/list.do','89','1','menu-icon fa fa-circle red','1',1),(92,'随机附件','attachment/list.do','89','3','menu-icon fa fa-circle red','1',1),(93,'维修设备','device/list.do','89','4','menu-icon fa fa-circle red','1',1),(94,'维修进度','plan/list.do','89','5','menu-icon fa fa-circle red','1',1),(95,'付款方式','pay/list.do','89','6','menu-icon fa fa-circle red','1',1),(96,'微信管理','#','0','17','menu-icon fa fa-comments blue','2',1),(97,'微信UI','weiui/index.do','96','1','menu-icon fa fa-leaf black','1',1),(98,'客户管理','#','0','10','menu-icon fa fa-users blue','2',1),(99,'客户归档','company/list.do','98','1','menu-icon fa fa-eye green','1',1),(100,'数据项','#','98','2','menu-icon fa fa-pencil-square-o green','1',1),(101,'客户类型','companyType/list.do','100','1','menu-icon fa fa-circle red','1',1),(102,'财务分析','#','0','18','menu-icon fa fa-bar-chart-o blue','2',1),(105,'维修管理','#','0','17','menu-icon fa fa-gavel blue','2',1),(106,'维修任务','customer/taskList.do','105','1','menu-icon fa fa-circle red','1',1),(107,'结算管理','#','0','13','menu-icon fa fa-cogs blue','2',1),(108,'订单结算','customer/billList.do','107','1','menu-icon fa fa-circle red','1',1),(109,'数据项','#','73','3','menu-icon fa fa-pencil-square-o green','1',1),(110,'类别','sptype/list.do','109','3','menu-icon fa fa-circle red','1',1),(111,'品牌','spbrand/list.do','109','5','menu-icon fa fa-circle red','1',1),(112,'计量单位','spunit/list.do','109','1','menu-icon fa fa-circle red','1',1),(113,'成色','degree/list.do','109','3','menu-icon fa fa-circle red','1',1),(114,'使用耗材','material/list.do','109','2','menu-icon fa fa-circle red','1',1),(115,'订单财务报表','#','102','1','menu-icon fa fa-info-circle green','1',1),(116,'今日订单分析','bill/dayList.do','115','1','menu-icon fa fa-circle red','1',1),(117,'近30日订单分析','bill/manyList.do','115','2','menu-icon fa fa-circle red','1',1),(118,'商品财务报表','#','102','2','menu-icon fa fa-bolt green','1',1),(119,'今日商品销售分析','bill/goodsDayList.do','118','1','menu-icon fa fa-circle red','1',1),(120,'近30日商品销售分析','bill/goodsManyList','118','2','menu-icon fa fa-circle red','1',1),(121,'出库流水','outku/list.do','73','2','menu-icon fa fa-barcode green','1',1),(122,'商品结算','outku/salesReport.do','107','2','menu-icon fa fa-circle red','1',1),(123,'人员管理','#','0','18','menu-icon fa fa-leaf black','2',1),(124,'建筑工程','#','123','1','menu-icon fa fa-leaf black','1',1),(125,'土建','#','124','1','menu-icon fa fa-leaf black','1',1),(126,'设备','#','124','2','menu-icon fa fa-leaf black','1',1),(127,'建筑爆破与拆除','#','124','3','menu-icon fa fa-leaf black','1',1),(128,'电力工程','#','123','2','menu-icon fa fa-leaf black','1',1),(129,'工业设备安装工程','#','123','3','menu-icon fa fa-leaf black','1',1),(130,'市政公用工程','#','123','4','menu-icon fa fa-leaf black','1',1),(131,'公路工程','#','123','5','menu-icon fa fa-leaf black','1',1),(133,'铁路','#','123','6','menu-icon fa fa-leaf black','1',1),(134,'建筑装饰工程','#','123','7','menu-icon fa fa-leaf black','1',1),(135,'建筑幕墙','#','123','8','menu-icon fa fa-leaf black','1',1),(136,'工程造价','#','123','9','menu-icon fa fa-leaf black','1',1),(137,'火电设备','#','128','1','menu-icon fa fa-leaf black','1',1),(138,'送变电','#','128','2','menu-icon fa fa-leaf black','1',1),(139,'起重运输设备','#','129','1','menu-icon fa fa-leaf black','1',1),(140,'化工械设备','#','129','2','menu-icon fa fa-leaf black','1',1),(141,'自动化','#','129','3','menu-icon fa fa-leaf black','1',1),(142,'城市道路、桥梁','#','130','1','menu-icon fa fa-leaf black','1',1),(143,'城市供、排水及污水处理','#','130','2','menu-icon fa fa-leaf black','1',1),(144,'公路','#','131','1','menu-icon fa fa-leaf black','1',1),(145,'桥梁及隧道','#','131','2','menu-icon fa fa-leaf black','1',1),(146,'公共装饰','#','134','1','menu-icon fa fa-leaf black','1',1),(147,'古建筑、历史建筑装饰、装修','#','134','2','menu-icon fa fa-leaf black','1',1),(148,'公共展示、陈列','#','134','3','menu-icon fa fa-leaf black','1',1),(149,'土建装饰','#','136','1','menu-icon fa fa-leaf black','1',1),(150,'水电安装','#','136','2','menu-icon fa fa-leaf black','1',1),(151,'园林绿化','#','136','3','menu-icon fa fa-leaf black','1',1),(152,'市政道路','#','136','4','menu-icon fa fa-leaf black','1',1);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','系统管理组','237684487543359353559194797006','0','1','1','1','1'),('115b386ff04f4352b060dffcd2b5d1da','中级会员','','2','0','0','0','0'),('1b67fc82ce89457a8347ae53e43a347e','初级会员','','2','0','0','0','0'),('2','备用组(TEST)','','0','0','0','0','1'),('3','人员管理','11417976086495984347171545358371785700527833088','1','121694457621910022543683507716096','121694457621910022543683507716096','121694457621910022543683507716096','121694457621910022543683507716096'),('3264c8e83d0248bb9e3ea6195b4c0216','总管理员(厂家)','19343403410773623942676544','1','19343403410773623942676544','19343403410773623942676544','19343403410773623942676544','19343403410773623942676544'),('68f8e4a39efe47c7bb869e9d15ab925d','下级管理员(商户)','21267495576183199121583358736007692288','1','10633671609922912720012958563173400640','10633671609922912720012958563173400640','10633671609922912720012958563173400640','10633671609922912720012958563173400640'),('8b70a7e67f2841e7aaba8a4d92e5ff6f','高级会员','','2','0','0','0','0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_fhbutton`
--

DROP TABLE IF EXISTS `sys_role_fhbutton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_fhbutton`
--

LOCK TABLES `sys_role_fhbutton` WRITE;
/*!40000 ALTER TABLE `sys_role_fhbutton` DISABLE KEYS */;
INSERT INTO `sys_role_fhbutton` VALUES ('5669c8754b4d4e368365ed5065f9fc10','3264c8e83d0248bb9e3ea6195b4c0216','3542adfbda73410c976e185ffe50ad06'),('6cc655a1f9b746eea6af9df540f8e743','3','da7fd386de0b49ce809984f5919022b8'),('74203935bfa34ce3b9b80e81f2a2bcfe','68f8e4a39efe47c7bb869e9d15ab925d','4efa162fce8340f0bd2dcd3b11d327ec'),('81d31bc5bf02490a85ce496b6755ef26','3','46992ea280ba4b72b29dedb0d4bc0106'),('8231c216fb514b4188e4162e629c6237','3264c8e83d0248bb9e3ea6195b4c0216','4efa162fce8340f0bd2dcd3b11d327ec'),('88f66a65ee1642bea7979e0e1050ac5f','3','4efa162fce8340f0bd2dcd3b11d327ec'),('8f8b3c5bfdfa4c6da19fce7396279180','68f8e4a39efe47c7bb869e9d15ab925d','cc51b694d5344d28a9aa13c84b7166cd'),('b3a3f70f76e84e06adc4bf2ac6ec2add','68f8e4a39efe47c7bb869e9d15ab925d','3542adfbda73410c976e185ffe50ad06'),('d51dc41918b040a78a021c9a43caf8d5','68f8e4a39efe47c7bb869e9d15ab925d','da7fd386de0b49ce809984f5919022b8'),('d80abc961d594f75b65e90d5b7437aa9','3','cc51b694d5344d28a9aa13c84b7166cd'),('d9a9a5a2d79446449cd26c17f061e1d0','3264c8e83d0248bb9e3ea6195b4c0216','da7fd386de0b49ce809984f5919022b8'),('e2033c3cdb8d48a1865e16e085f103b7','3264c8e83d0248bb9e3ea6195b4c0216','46992ea280ba4b72b29dedb0d4bc0106'),('f0329033d0914faf8ea6e9ff252cc5e6','68f8e4a39efe47c7bb869e9d15ab925d','46992ea280ba4b72b29dedb0d4bc0106'),('f919c1f620634bdaa353a9f63194a2e0','3','3542adfbda73410c976e185ffe50ad06'),('fbc51895f2184d63bd1409320a7a7a2a','3264c8e83d0248bb9e3ea6195b4c0216','cc51b694d5344d28a9aa13c84b7166cd');
/*!40000 ALTER TABLE `sys_role_fhbutton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('0cb206bd254f401e91fc63630103f83c','aa','33efb2e7fbc20515f304dd660d39a20f443480a6','刘雅威','','3','2017-12-21 18:32:55','0:0:0:0:0:0:0:1','0','测试','default','123@qq.com','aa','13750528053'),('1','admin','f3bbaaabde86886110730ec20cbe80cfde7b569c','超级管理员','1133671055321055258374707980945218933803269864762743594642571294','1','2017-12-27 16:24:53','0:0:0:0:0:0:0:1','0','admin','default','QQ313596790@main.com','001','18788888888'),('de56100db5194bf1a497effbe2276599','a2','445e41d7b4a4d0d4f72252769411bffd4530baa5','叶赵东','','3','2017-12-12 13:07:04','0:0:0:0:0:0:0:1','0','维修员登记','default','8888@qq.com','dckj-emp-001','13750528053'),('df658542223d4da9b700852fd9adaddf','a1','157e3022afaee6a331bd15c6642abd8f633045bd','小众蛙科技','','68f8e4a39efe47c7bb869e9d15ab925d','2017-12-29 09:21:26','0:0:0:0:0:0:0:1','0','测试','default','12121212@qq.com','user-001','13750528053');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_userphoto`
--

DROP TABLE IF EXISTS `sys_userphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_userphoto` (
  `USERPHOTO_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(30) DEFAULT NULL COMMENT '用户名',
  `PHOTO0` varchar(255) DEFAULT NULL COMMENT '原图',
  `PHOTO1` varchar(100) DEFAULT NULL COMMENT '头像1',
  `PHOTO2` varchar(100) DEFAULT NULL COMMENT '头像2',
  `PHOTO3` varchar(100) DEFAULT NULL COMMENT '头像3',
  PRIMARY KEY (`USERPHOTO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_userphoto`
--

LOCK TABLES `sys_userphoto` WRITE;
/*!40000 ALTER TABLE `sys_userphoto` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_userphoto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pictures`
--

DROP TABLE IF EXISTS `tb_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pictures`
--

LOCK TABLES `tb_pictures` WRITE;
/*!40000 ALTER TABLE `tb_pictures` DISABLE KEYS */;
INSERT INTO `tb_pictures` VALUES ('868f8c92952e4bac935af0226f2ad564','商品图片','8bcdfdd8b83e479898f99bbe1c9c4c3f.png','20171031/8bcdfdd8b83e479898f99bbe1c9c4c3f.png','2017-10-31 23:21:37','','商品图片'),('fcca50952af14609a89fc81b7c78d690','商品图片','69f7178a454d424aa2a9d8fd43c7de49.png','20171031/69f7178a454d424aa2a9d8fd43c7de49.png','2017-10-31 23:22:54','284e2238d7fc4bd481c6324fc4c160cf','商品图片');
/*!40000 ALTER TABLE `tb_pictures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-01 11:20:10
