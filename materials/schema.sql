-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: 112.74.187.234    Database: ucacc_dev
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
-- Table structure for table `base_bank`
--

DROP TABLE IF EXISTS `base_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_bank` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `bankCode` varchar(3) DEFAULT NULL,
  `bankName` varchar(150) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `sortIndex` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `base_bankregion`
--

DROP TABLE IF EXISTS `base_bankregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_bankregion` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `areaCode` varchar(4) DEFAULT NULL,
  `areaName` varchar(50) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `cityName` varchar(30) DEFAULT NULL,
  `provinceName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `base_branchbank`
--

DROP TABLE IF EXISTS `base_branchbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_branchbank` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `bankNo` varchar(13) DEFAULT NULL,
  `bankName` varchar(150) DEFAULT NULL,
  `bankCode` varchar(3) DEFAULT NULL,
  `areaCode` varchar(4) DEFAULT NULL,
  `bankIndex` varchar(4) DEFAULT NULL,
  `checkBit` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `base_supercyberbank`
--

DROP TABLE IF EXISTS `base_supercyberbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_supercyberbank` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `bankNo` varchar(13) DEFAULT NULL,
  `bankName` varchar(150) DEFAULT NULL,
  `bankCode` varchar(3) DEFAULT NULL,
  `areaCode` varchar(4) DEFAULT NULL,
  `bankIndex` varchar(4) DEFAULT NULL,
  `checkBit` varchar(1) DEFAULT NULL,
  `bankNickname` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_address`
--

DROP TABLE IF EXISTS `bc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_address` (
  `id` varchar(64) NOT NULL,
  `corporateId` varchar(64) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `provinceId` varchar(50) DEFAULT NULL,
  `cityId` varchar(50) DEFAULT NULL,
  `areaId` varchar(50) DEFAULT NULL,
  `street` varchar(128) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporate`
--

DROP TABLE IF EXISTS `bc_corporate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporate` (
  `id` char(32) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `logoFileId` char(32) DEFAULT NULL,
  `faxNum` varchar(32) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `addressId` varchar(32) DEFAULT NULL,
  `importRecordId` char(32) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `tradeStatus` tinyint(4) NOT NULL,
  `lastRoleId` varchar(32) NOT NULL,
  `sortType` int(11) DEFAULT NULL,
  `sortValue` int(11) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `hasDataCenterPermission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporate_bak_20180302`
--

DROP TABLE IF EXISTS `bc_corporate_bak_20180302`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporate_bak_20180302` (
  `id` char(32) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `logoFileId` char(32) DEFAULT NULL,
  `faxNum` varchar(32) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `addressId` varchar(32) DEFAULT NULL,
  `importRecordId` char(32) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `tradeStatus` tinyint(4) NOT NULL,
  `lastRoleId` varchar(32) NOT NULL,
  `sortType` int(11) DEFAULT NULL,
  `sortValue` int(11) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `hasDataCenterPermission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporate_bak_20180412`
--

DROP TABLE IF EXISTS `bc_corporate_bak_20180412`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporate_bak_20180412` (
  `id` char(32) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `logoFileId` char(32) DEFAULT NULL,
  `faxNum` varchar(32) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `addressId` varchar(32) DEFAULT NULL,
  `importRecordId` char(32) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `isActive` tinyint(4) NOT NULL,
  `tradeStatus` tinyint(4) NOT NULL,
  `lastRoleId` varchar(32) NOT NULL,
  `sortType` int(11) DEFAULT NULL,
  `sortValue` int(11) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `hasDataCenterPermission` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporateintro`
--

DROP TABLE IF EXISTS `bc_corporateintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporateintro` (
  `id` char(32) NOT NULL,
  `introduction` longtext,
  `mainProduct` longtext,
  `homePage` longtext,
  `homePagePreview` longtext,
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporateqc`
--

DROP TABLE IF EXISTS `bc_corporateqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporateqc` (
  `id` char(32) NOT NULL,
  `threeLicensesInOne` tinyint(4) NOT NULL,
  `addressId` char(32) DEFAULT NULL,
  `corporateType` tinyint(4) DEFAULT NULL,
  `establishTime` datetime DEFAULT NULL,
  `bizZeroDate` date DEFAULT NULL COMMENT '营业期限开始日期',
  `bizDueDate` date DEFAULT NULL COMMENT '营业期限结束日期',
  `bizScope` varchar(1024) DEFAULT NULL,
  `registCapital` decimal(15,4) DEFAULT NULL,
  `registCapitalCurrency` char(3) DEFAULT NULL,
  `license` varchar(64) DEFAULT NULL,
  `licenseFileId` char(32) DEFAULT NULL,
  `bizLicense` varchar(64) DEFAULT NULL,
  `bizLicenseFileId` char(32) DEFAULT NULL,
  `taxRegistLicense` varchar(64) DEFAULT NULL,
  `taxRegistLicenseFileId` char(32) DEFAULT NULL,
  `orgLicense` varchar(64) DEFAULT NULL,
  `orgLicenseFileId` char(32) DEFAULT NULL,
  `legalPerson` varchar(32) DEFAULT NULL,
  `legalPersonFileId` char(32) DEFAULT NULL,
  `legalPersonIdCardNo` varchar(25) DEFAULT NULL COMMENT '企业法人身份证号码和个人认证的身份证号码',
  `legalPersonCertType` varchar(2) DEFAULT NULL COMMENT '法人证件类型，这里主要是个人的时候使用',
  `agentFileId` char(32) DEFAULT NULL,
  `agentName` varchar(128) DEFAULT NULL COMMENT '授权代办人姓名',
  `agentIdCardNo` varchar(25) DEFAULT NULL COMMENT '授权代办人身份证号码',
  `agentCertType` varchar(2) DEFAULT NULL COMMENT '代办人证件类型',
  `firstSubmitTime` datetime DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资质认证表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporateqc_bak_20180124`
--

DROP TABLE IF EXISTS `bc_corporateqc_bak_20180124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporateqc_bak_20180124` (
  `id` char(32) NOT NULL,
  `threeLicensesInOne` tinyint(4) NOT NULL,
  `addressId` char(32) DEFAULT NULL,
  `corporateType` tinyint(4) DEFAULT NULL,
  `establishTime` datetime DEFAULT NULL,
  `bizZeroDate` date DEFAULT NULL COMMENT '营业期限开始日期',
  `bizDueDate` date DEFAULT NULL COMMENT '营业期限结束日期',
  `bizScope` varchar(1024) DEFAULT NULL,
  `registCapital` decimal(15,4) DEFAULT NULL,
  `registCapitalCurrency` char(3) DEFAULT NULL,
  `license` varchar(64) DEFAULT NULL,
  `licenseFileId` char(32) DEFAULT NULL,
  `bizLicense` varchar(64) DEFAULT NULL,
  `bizLicenseFileId` char(32) DEFAULT NULL,
  `taxRegistLicense` varchar(64) DEFAULT NULL,
  `taxRegistLicenseFileId` char(32) DEFAULT NULL,
  `orgLicense` varchar(64) DEFAULT NULL,
  `orgLicenseFileId` char(32) DEFAULT NULL,
  `legalPerson` varchar(32) DEFAULT NULL,
  `legalPersonFileId` char(32) DEFAULT NULL,
  `legalPersonIdCardNo` varchar(25) DEFAULT NULL COMMENT '企业法人身份证号码和个人认证的身份证号码',
  `legalPersonCertType` varchar(2) DEFAULT NULL COMMENT '法人证件类型，这里主要是个人的时候使用',
  `agentFileId` char(32) DEFAULT NULL,
  `agentName` varchar(128) DEFAULT NULL COMMENT '授权代办人姓名',
  `agentIdCardNo` varchar(25) DEFAULT NULL COMMENT '授权代办人身份证号码',
  `agentCertType` varchar(2) DEFAULT NULL COMMENT '代办人证件类型',
  `firstSubmitTime` datetime DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资质认证表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporateqcapply`
--

DROP TABLE IF EXISTS `bc_corporateqcapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporateqcapply` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `threeLicensesInOne` tinyint(4) NOT NULL,
  `licenseFileId` char(32) DEFAULT NULL,
  `bizLicenseFileId` char(32) DEFAULT NULL,
  `taxRegistLicenseFileId` char(32) DEFAULT NULL,
  `orgLicenseFileId` char(32) DEFAULT NULL,
  `legalPersonFileId` char(32) DEFAULT NULL,
  `agentFileId` char(32) DEFAULT NULL,
  `refusalReason` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `type` tinyint(4) NOT NULL COMMENT '认证类型. 0.企业认证. 1.个人认证',
  `bizLicense` varchar(64) DEFAULT NULL COMMENT '营业执照编号',
  `license` varchar(64) DEFAULT NULL COMMENT '三证合一编号',
  `agentName` varchar(128) DEFAULT NULL COMMENT '授权代办人姓名',
  `agentIdCardNo` varchar(25) DEFAULT NULL COMMENT '授权代办人身份证号码',
  `agentCertType` varchar(2) DEFAULT NULL COMMENT '代办人证件类型',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资质认证申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_corporateqcapply_bak_20180124`
--

DROP TABLE IF EXISTS `bc_corporateqcapply_bak_20180124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_corporateqcapply_bak_20180124` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `threeLicensesInOne` tinyint(4) NOT NULL,
  `licenseFileId` char(32) DEFAULT NULL,
  `bizLicenseFileId` char(32) DEFAULT NULL,
  `taxRegistLicenseFileId` char(32) DEFAULT NULL,
  `orgLicenseFileId` char(32) DEFAULT NULL,
  `legalPersonFileId` char(32) DEFAULT NULL,
  `agentFileId` char(32) DEFAULT NULL,
  `refusalReason` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `name` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `type` tinyint(4) NOT NULL COMMENT '认证类型. 0.企业认证. 1.个人认证',
  `bizLicense` varchar(64) DEFAULT NULL COMMENT '营业执照编号',
  `license` varchar(64) DEFAULT NULL COMMENT '三证合一编号',
  `agentName` varchar(128) DEFAULT NULL COMMENT '授权代办人姓名',
  `agentIdCardNo` varchar(25) DEFAULT NULL COMMENT '授权代办人身份证号码',
  `agentCertType` varchar(2) DEFAULT NULL COMMENT '代办人证件类型',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资质认证申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_customerorder`
--

DROP TABLE IF EXISTS `bc_customerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_customerorder` (
  `id` char(32) NOT NULL,
  `corporateId` varchar(32) NOT NULL,
  `corporateName` varchar(128) DEFAULT NULL,
  `contactName` varchar(80) DEFAULT NULL,
  `contactPhone` varchar(32) DEFAULT NULL,
  `addressId` varchar(32) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `code` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_department`
--

DROP TABLE IF EXISTS `bc_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_department` (
  `id` char(32) NOT NULL,
  `corporateId` varchar(50) NOT NULL,
  `parentId` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_role`
--

DROP TABLE IF EXISTS `bc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_role` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `roleName` varchar(100) DEFAULT NULL,
  `isTemplate` tinyint(4) NOT NULL,
  `code0` varchar(255) DEFAULT NULL,
  `code1` varchar(255) DEFAULT NULL,
  `code2` varchar(255) DEFAULT NULL,
  `code3` varchar(255) DEFAULT NULL,
  `code4` varchar(255) DEFAULT NULL,
  `code5` varchar(255) DEFAULT NULL,
  `code6` varchar(255) DEFAULT NULL,
  `code7` varchar(255) DEFAULT NULL,
  `code8` varchar(255) DEFAULT NULL,
  `code9` varchar(255) DEFAULT NULL,
  `code10` varchar(255) DEFAULT NULL,
  `code11` varchar(255) DEFAULT NULL,
  `code12` varchar(255) DEFAULT NULL,
  `code13` varchar(255) DEFAULT NULL,
  `code14` varchar(255) DEFAULT NULL,
  `code15` varchar(255) DEFAULT NULL,
  `code16` varchar(255) DEFAULT NULL,
  `code17` varchar(255) DEFAULT NULL,
  `code18` varchar(255) DEFAULT NULL,
  `code19` varchar(255) DEFAULT NULL,
  `code20` varchar(255) DEFAULT NULL,
  `code21` varchar(255) DEFAULT NULL,
  `code22` varchar(255) DEFAULT NULL,
  `sortValue` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_role_bak_20180302`
--

DROP TABLE IF EXISTS `bc_role_bak_20180302`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_role_bak_20180302` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `roleName` varchar(100) DEFAULT NULL,
  `isTemplate` tinyint(4) NOT NULL,
  `code0` varchar(255) DEFAULT NULL,
  `code1` varchar(255) DEFAULT NULL,
  `code2` varchar(255) DEFAULT NULL,
  `code3` varchar(255) DEFAULT NULL,
  `code4` varchar(255) DEFAULT NULL,
  `code5` varchar(255) DEFAULT NULL,
  `code6` varchar(255) DEFAULT NULL,
  `code7` varchar(255) DEFAULT NULL,
  `code8` varchar(255) DEFAULT NULL,
  `code9` varchar(255) DEFAULT NULL,
  `code10` varchar(255) DEFAULT NULL,
  `code11` varchar(255) DEFAULT NULL,
  `code12` varchar(255) DEFAULT NULL,
  `code13` varchar(255) DEFAULT NULL,
  `code14` varchar(255) DEFAULT NULL,
  `code15` varchar(255) DEFAULT NULL,
  `code16` varchar(255) DEFAULT NULL,
  `code17` varchar(255) DEFAULT NULL,
  `code18` varchar(255) DEFAULT NULL,
  `code19` varchar(255) DEFAULT NULL,
  `code20` varchar(255) DEFAULT NULL,
  `code21` varchar(255) DEFAULT NULL,
  `code22` varchar(255) DEFAULT NULL,
  `sortValue` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_rolegroup`
--

DROP TABLE IF EXISTS `bc_rolegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_rolegroup` (
  `id` char(32) NOT NULL,
  `groupRoleId` char(32) NOT NULL,
  `itemRoleId` char(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_token`
--

DROP TABLE IF EXISTS `bc_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_token` (
  `id` char(32) NOT NULL,
  `token` varchar(255) NOT NULL,
  `userId` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_user`
--

DROP TABLE IF EXISTS `bc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_user` (
  `id` char(32) NOT NULL,
  `userName` varchar(32) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `payPwd` varchar(64) DEFAULT NULL,
  `memberOf` char(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `departmentId` char(32) DEFAULT NULL,
  `dpId` char(32) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `wechatLoginId` char(32) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `hasDataCenterPermission` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_userapply`
--

DROP TABLE IF EXISTS `bc_userapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_userapply` (
  `id` char(32) NOT NULL,
  `userId` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `userName` varchar(64) NOT NULL,
  `departmentName` varchar(64) NOT NULL,
  `roleName` varchar(64) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `refusalReason` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户成员变更申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_usercorporaterole`
--

DROP TABLE IF EXISTS `bc_usercorporaterole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_usercorporaterole` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `userId` char(32) NOT NULL,
  `roleId` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体用户角色中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_usercorporaterole_bak_20180302`
--

DROP TABLE IF EXISTS `bc_usercorporaterole_bak_20180302`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_usercorporaterole_bak_20180302` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `userId` char(32) NOT NULL,
  `roleId` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体用户角色中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bc_usercorporaterole_copy`
--

DROP TABLE IF EXISTS `bc_usercorporaterole_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bc_usercorporaterole_copy` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `userId` char(32) NOT NULL,
  `roleId` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='主体用户角色中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `c_paydeal_pay`
--

DROP TABLE IF EXISTS `c_paydeal_pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_paydeal_pay` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键,自增',
  `CODE_YW` varchar(50) DEFAULT NULL COMMENT '业务订单编码.关联L_PAY_DEAL表的CODE字段',
  `CODE_ZF` varchar(50) DEFAULT NULL COMMENT '支付编码.关联L_PAY_RECORD表的CODE字段',
  `MONEY_YF` decimal(18,2) DEFAULT '0.00' COMMENT '应付金额，默认值0.本次应付的金额=业务订单总额-已付金额',
  `MONEY_SF` decimal(18,2) DEFAULT '0.00' COMMENT '付金额，默认值0.本次支付实际支付的金额',
  `STATUS` int(11) DEFAULT '0' COMMENT '状态. 0：正常（默认值）.1：已弃用（当支付失败后，相应的关联记录的状态会变为已弃用）.2：已删除',
  `IS_PART_PAY` int(11) DEFAULT '0' COMMENT '是否部分支付.0: 全额支付（默认值）.1：部分支付',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`),
  KEY `C_PAYDEAL_PAY_CODE_YW` (`CODE_YW`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1624 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `c_paydeal_qsr`
--

DROP TABLE IF EXISTS `c_paydeal_qsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_paydeal_qsr` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE_YW` varchar(50) DEFAULT NULL COMMENT '业务订单编码.关联L_PAY_DEAL表的CODE字段',
  `C_PAYDEAL_PAY_ID` bigint(20) DEFAULT '0' COMMENT '业务订单与支付关联ID.关联C_PAYDEAL_PAY的ID字段',
  `QSR` datetime DEFAULT NULL COMMENT '起算日',
  `ZQ` int(11) DEFAULT '-1' COMMENT '账期，默认值-1表示没有填写账期. 单位：天',
  `DQR` datetime DEFAULT NULL COMMENT '到期日.计算公式：到期日 = 起算日 + 账期',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '支付类型.0：转账支付（缺省值）.1：票据支付',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户id.关联T_CORPORATEUSER表',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `d_productstatus`
--

DROP TABLE IF EXISTS `d_productstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_productstatus` (
  `ID` int(11) NOT NULL,
  `KEY` varchar(64) DEFAULT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `CREATETIME` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ״̬';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_center_bak_20170831`
--

DROP TABLE IF EXISTS `data_center_bak_20170831`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_center_bak_20170831` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `content` mediumtext,
  `dataValue` decimal(20,2) DEFAULT NULL COMMENT '数值',
  `dataTime` datetime DEFAULT NULL COMMENT '录入时间',
  `resultAnalysis` mediumtext COMMENT '数值分析',
  `dataValueForecast` decimal(20,2) DEFAULT NULL COMMENT '预测数值',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centercategory`
--

DROP TABLE IF EXISTS `data_centercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centercategory` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `type` tinyint(4) NOT NULL COMMENT '类型 1指数 2资讯',
  `status` tinyint(4) NOT NULL COMMENT '1正常 0禁用',
  `parentId` varchar(32) NOT NULL COMMENT '父类Id',
  `unit` varchar(32) DEFAULT NULL,
  `period` tinyint(4) DEFAULT NULL COMMENT '颗粒度 1月 2日 (指数用)',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0' COMMENT '顺序',
  `isDeletable` tinyint(4) NOT NULL COMMENT '是否可删除  1可以 0不可以',
  `version` int(11) NOT NULL,
  `chartType` tinyint(2) DEFAULT NULL COMMENT '图表类型',
  `level` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centerdatasrc`
--

DROP TABLE IF EXISTS `data_centerdatasrc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centerdatasrc` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL COMMENT '分类',
  `dataValue` decimal(20,2) NOT NULL COMMENT '数值',
  `resultAnalysis` mediumtext COMMENT '数值分析',
  `dataValueForecast` decimal(20,2) DEFAULT NULL COMMENT '预测数值',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `dataKey` varchar(20) DEFAULT NULL COMMENT '数据Key，现用来存储省份',
  `dataYear` smallint(4) DEFAULT NULL COMMENT '数据所属年',
  `dataMonth` tinyint(2) DEFAULT NULL COMMENT '数据所属月',
  `dataDay` tinyint(2) DEFAULT NULL COMMENT '数据所属日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centerdatasrc_bak_20171103`
--

DROP TABLE IF EXISTS `data_centerdatasrc_bak_20171103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centerdatasrc_bak_20171103` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL COMMENT '分类',
  `dataValue` decimal(20,2) DEFAULT NULL COMMENT '数值',
  `dataTime` datetime DEFAULT NULL COMMENT '录入时间',
  `resultAnalysis` mediumtext COMMENT '数值分析',
  `dataValueForecast` decimal(20,2) DEFAULT NULL COMMENT '预测数值',
  `dataDate` datetime DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centerintro`
--

DROP TABLE IF EXISTS `data_centerintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centerintro` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL COMMENT '分类',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `quantity` decimal(20,0) DEFAULT NULL COMMENT '数量',
  `mainContent` mediumtext COMMENT '主要内容',
  `minorContent` mediumtext COMMENT '次要内容',
  `imgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片ID',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `fsInfoId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centerintro_bak_20171114`
--

DROP TABLE IF EXISTS `data_centerintro_bak_20171114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centerintro_bak_20171114` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL COMMENT '分类',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `quantity` decimal(20,0) DEFAULT NULL COMMENT '数量',
  `mainContent` mediumtext COMMENT '主要内容',
  `minorContent` mediumtext COMMENT '次要内容',
  `imgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片ID',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `fsInfoId` varchar(32) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL COMMENT '价格'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_centerpermission_bak_20171114`
--

DROP TABLE IF EXISTS `data_centerpermission_bak_20171114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_centerpermission_bak_20171114` (
  `id` varchar(32) NOT NULL,
  `categoryId` varchar(32) NOT NULL,
  `corporateId` varchar(32) DEFAULT NULL,
  `type` tinyint(4) NOT NULL,
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_corporate`
--

DROP TABLE IF EXISTS `data_corporate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_corporate` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `dataId` char(32) NOT NULL,
  `dueDate` date DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updatedBy` char(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_minemouth`
--

DROP TABLE IF EXISTS `data_minemouth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_minemouth` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `description` text COMMENT '描述',
  `productionArea` tinyint(2) NOT NULL COMMENT '产区',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_minemouthdetail`
--

DROP TABLE IF EXISTS `data_minemouthdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_minemouthdetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `mineMouthId` varchar(32) NOT NULL COMMENT 'Refer to Data_MineMouth''s id',
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `priceFluctuation` decimal(20,2) NOT NULL COMMENT '价格浮动',
  `calorificPower` varchar(50) NOT NULL COMMENT '热值',
  `dueDate` datetime NOT NULL COMMENT '有效期',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_price`
--

DROP TABLE IF EXISTS `data_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_price` (
  `id` char(32) NOT NULL,
  `dataId` char(32) NOT NULL,
  `type` tinyint(2) NOT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `monthlyPrice` decimal(20,2) DEFAULT NULL,
  `annualPrice` decimal(20,2) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updatedBy` char(32) NOT NULL,
  `version` int(11) NOT NULL,
  `isPriceUndefined` tinyint(1) NOT NULL COMMENT '是否未定价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_transport`
--

DROP TABLE IF EXISTS `data_transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transport` (
  `id` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1海运2铁路3汽运',
  `srcStation` varchar(32) NOT NULL COMMENT '始发站',
  `destStation` varchar(32) NOT NULL COMMENT '到达站',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_transportdetail`
--

DROP TABLE IF EXISTS `data_transportdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_transportdetail` (
  `id` varchar(32) NOT NULL,
  `transportId` varchar(32) NOT NULL,
  `price` decimal(20,2) NOT NULL COMMENT '价格',
  `priceFluctuation` decimal(20,2) NOT NULL COMMENT '价格变化',
  `dueDate` datetime NOT NULL COMMENT '有效期',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_value`
--

DROP TABLE IF EXISTS `data_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_value` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `module` tinyint(4) NOT NULL COMMENT '模块',
  `value` varchar(255) NOT NULL COMMENT '内容',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_category`
--

DROP TABLE IF EXISTS `demo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_category` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `parentId` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `cateName` varchar(20) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `levelCode` varchar(31) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_order`
--

DROP TABLE IF EXISTS `demo_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_order` (
  `id` varchar(32) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `billDate` datetime DEFAULT NULL,
  `quality` decimal(18,6) DEFAULT NULL,
  `amount` decimal(18,6) DEFAULT NULL,
  `buyerId` varchar(32) NOT NULL,
  `salerId` varchar(32) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `productFSInfoId` varchar(32) DEFAULT NULL,
  `contractFSInfoId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_orderdetail`
--

DROP TABLE IF EXISTS `demo_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_orderdetail` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderId` varchar(32) DEFAULT NULL,
  `productName` varchar(31) DEFAULT NULL,
  `productQty` decimal(18,6) NOT NULL,
  `productPrice` decimal(18,6) NOT NULL,
  `productAmt` decimal(18,6) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `productId` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_product`
--

DROP TABLE IF EXISTS `demo_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_product` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `productName` varchar(63) DEFAULT NULL,
  `productPrice` decimal(18,6) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `userId` varchar(32) NOT NULL,
  `categoryId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_user`
--

DROP TABLE IF EXISTS `demo_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_user` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(15) DEFAULT NULL,
  `status` decimal(1,0) NOT NULL,
  `regDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `userTypeId` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_usertype`
--

DROP TABLE IF EXISTS `demo_usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_usertype` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `typeName` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `demo_usertypeext`
--

DROP TABLE IF EXISTS `demo_usertypeext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_usertypeext` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `extName` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `elec_payee`
--

DROP TABLE IF EXISTS `elec_payee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elec_payee` (
  `id` char(32) NOT NULL COMMENT 'pk',
  `accountName` varchar(122) NOT NULL COMMENT '电费收款方账号名称',
  `createTime` datetime NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `elec_payer`
--

DROP TABLE IF EXISTS `elec_payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elec_payer` (
  `id` char(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(122) NOT NULL COMMENT '电费付款方企业id',
  `payeeAccount` varchar(50) NOT NULL COMMENT '电费收款方账号',
  `createTime` datetime NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faq_question`
--

DROP TABLE IF EXISTS `faq_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_question` (
  `id` varchar(32) NOT NULL,
  `parentId` varchar(32) DEFAULT NULL COMMENT '父问题Id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `sort` int(11) NOT NULL COMMENT '排序',
  `answer` longtext COMMENT '回答',
  `isPublished` tinyint(1) NOT NULL COMMENT '是否发布',
  `isHot` tinyint(1) NOT NULL COMMENT '是否热门',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_account`
--

DROP TABLE IF EXISTS `fin_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_account` (
  `id` varchar(50) NOT NULL,
  `corporateId` varchar(50) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `totalAmt` decimal(20,2) DEFAULT NULL,
  `parentAccount` varchar(50) DEFAULT NULL,
  `accountName` varchar(122) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `contactName` varchar(61) DEFAULT NULL,
  `accountAddr` varchar(200) DEFAULT NULL,
  `submitTime` datetime DEFAULT NULL,
  `openTime` datetime DEFAULT NULL,
  `accountQcApplyId` varchar(32) DEFAULT NULL COMMENT '最近更新的开户申请记录id',
  `remark` varchar(60) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_accountqc`
--

DROP TABLE IF EXISTS `fin_accountqc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_accountqc` (
  `id` char(32) NOT NULL,
  `accountId` char(32) DEFAULT NULL,
  `corporateId` varchar(50) NOT NULL,
  `application` varchar(200) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `submitTime` datetime DEFAULT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开户资料表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_accountqcapply`
--

DROP TABLE IF EXISTS `fin_accountqcapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_accountqcapply` (
  `id` char(32) NOT NULL,
  `corporateId` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `application` varchar(200) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `refusalReason` varchar(300) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `submitTime` datetime DEFAULT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开户申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_accountrule`
--

DROP TABLE IF EXISTS `fin_accountrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_accountrule` (
  `id` varchar(50) NOT NULL,
  `corporateId` varchar(50) DEFAULT NULL,
  `payAmt` int(11) DEFAULT NULL,
  `withdrawAmt` int(11) DEFAULT NULL,
  `transferAmt` int(11) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_audit`
--

DROP TABLE IF EXISTS `fin_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_audit` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `payApplyId` varchar(32) NOT NULL COMMENT '待付款单Id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `type` tinyint(2) NOT NULL COMMENT '审核类型',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_bill`
--

DROP TABLE IF EXISTS `fin_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bill` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) DEFAULT NULL COMMENT '票据单号',
  `type` tinyint(2) DEFAULT NULL COMMENT '票据类型',
  `amount` decimal(20,2) NOT NULL COMMENT '票据金额',
  `drawerName` varchar(255) DEFAULT NULL COMMENT '开票人名称',
  `takerName` varchar(255) DEFAULT NULL COMMENT '收票人名称',
  `drawerBankId` int(11) DEFAULT NULL COMMENT '开票人银行Id',
  `billDate` datetime DEFAULT NULL COMMENT '开票日期',
  `dueDate` datetime DEFAULT NULL COMMENT '到期日期',
  `billFSInfoId` varchar(32) DEFAULT NULL COMMENT '票据图片路径',
  `isExchanged` tinyint(1) NOT NULL COMMENT '是否兑票',
  `exchangedTime` datetime DEFAULT NULL COMMENT '兑票日期',
  `incomePicFSInfoId` varchar(32) DEFAULT NULL COMMENT '进账单附件',
  `incomePicDescription` varchar(500) DEFAULT NULL COMMENT '进账单描述',
  `actPaymentAmt` decimal(20,2) NOT NULL COMMENT '已付金额',
  `confirmExchangedTime` datetime DEFAULT NULL COMMENT '确认兑票的日期',
  `recTime` datetime DEFAULT NULL COMMENT '收票日期',
  `confirmRecTime` datetime DEFAULT NULL COMMENT '确认收票的日期',
  `status` tinyint(2) NOT NULL COMMENT '票据状态',
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型.1.支付数据2.单边业务数据',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `extDocCode` varchar(50) DEFAULT NULL COMMENT '外部单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_bill_bak_20171205`
--

DROP TABLE IF EXISTS `fin_bill_bak_20171205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bill_bak_20171205` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) DEFAULT NULL COMMENT '票据单号',
  `type` tinyint(2) DEFAULT NULL COMMENT '票据类型',
  `amount` decimal(20,2) NOT NULL COMMENT '票据金额',
  `drawerName` varchar(255) DEFAULT NULL COMMENT '开票人名称',
  `takerName` varchar(255) DEFAULT NULL COMMENT '收票人名称',
  `drawerBankId` int(11) DEFAULT NULL COMMENT '开票人银行Id',
  `billDate` datetime DEFAULT NULL COMMENT '开票日期',
  `dueDate` datetime DEFAULT NULL COMMENT '到期日期',
  `billFSInfoId` varchar(32) DEFAULT NULL COMMENT '票据图片路径',
  `isExchanged` tinyint(1) NOT NULL COMMENT '是否兑票',
  `exchangedTime` datetime DEFAULT NULL COMMENT '兑票日期',
  `incomePicFSInfoId` varchar(32) DEFAULT NULL COMMENT '进账单附件',
  `incomePicDescription` varchar(500) DEFAULT NULL COMMENT '进账单描述',
  `actPaymentAmt` decimal(20,2) NOT NULL COMMENT '已付金额',
  `confirmExchangedTime` datetime DEFAULT NULL COMMENT '确认兑票的日期',
  `recTime` datetime DEFAULT NULL COMMENT '收票日期',
  `confirmRecTime` datetime DEFAULT NULL COMMENT '确认收票的日期',
  `status` tinyint(2) NOT NULL COMMENT '票据状态',
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型.1.支付数据2.单边业务数据',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_bill_bak_20171208`
--

DROP TABLE IF EXISTS `fin_bill_bak_20171208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_bill_bak_20171208` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) DEFAULT NULL COMMENT '票据单号',
  `type` tinyint(2) DEFAULT NULL COMMENT '票据类型',
  `amount` decimal(20,2) NOT NULL COMMENT '票据金额',
  `drawerName` varchar(255) DEFAULT NULL COMMENT '开票人名称',
  `takerName` varchar(255) DEFAULT NULL COMMENT '收票人名称',
  `drawerBankId` int(11) DEFAULT NULL COMMENT '开票人银行Id',
  `billDate` datetime DEFAULT NULL COMMENT '开票日期',
  `dueDate` datetime DEFAULT NULL COMMENT '到期日期',
  `billFSInfoId` varchar(32) DEFAULT NULL COMMENT '票据图片路径',
  `isExchanged` tinyint(1) NOT NULL COMMENT '是否兑票',
  `exchangedTime` datetime DEFAULT NULL COMMENT '兑票日期',
  `incomePicFSInfoId` varchar(32) DEFAULT NULL COMMENT '进账单附件',
  `incomePicDescription` varchar(500) DEFAULT NULL COMMENT '进账单描述',
  `actPaymentAmt` decimal(20,2) NOT NULL COMMENT '已付金额',
  `confirmExchangedTime` datetime DEFAULT NULL COMMENT '确认兑票的日期',
  `recTime` datetime DEFAULT NULL COMMENT '收票日期',
  `confirmRecTime` datetime DEFAULT NULL COMMENT '确认收票的日期',
  `status` tinyint(2) NOT NULL COMMENT '票据状态',
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型.1.支付数据2.单边业务数据',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `extDocCode` varchar(50) DEFAULT NULL COMMENT '外部单编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_invoice`
--

DROP TABLE IF EXISTS `fin_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_invoice` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `taxRatePercentage` tinyint(4) DEFAULT NULL,
  `companyName` varchar(100) NOT NULL,
  `taxPayerId` varchar(60) NOT NULL,
  `bankName` varchar(100) NOT NULL,
  `account` varchar(50) NOT NULL,
  `addressId` char(32) NOT NULL,
  `postAddressId` char(32) DEFAULT NULL,
  `createdBy` char(32) NOT NULL,
  `updatedBy` char(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_payapply`
--

DROP TABLE IF EXISTS `fin_payapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_payapply` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `payeeCorporateId` varchar(32) DEFAULT NULL COMMENT '收款方企业Id',
  `code` varchar(50) NOT NULL COMMENT '待付款单编号',
  `extDocType` tinyint(2) NOT NULL COMMENT '业务单类型',
  `extDocCode` varchar(50) NOT NULL COMMENT '业务单编号',
  `extDocName` varchar(100) DEFAULT NULL COMMENT '业务名称',
  `amount` decimal(20,2) NOT NULL COMMENT '金额',
  `payType` tinyint(2) NOT NULL COMMENT '支付类型',
  `payerId` varchar(32) NOT NULL COMMENT '付款方Id',
  `payeeId` varchar(32) NOT NULL COMMENT '收款方Id',
  `remark` varchar(22) DEFAULT NULL COMMENT '摘要/用途',
  `comment` varchar(100) DEFAULT NULL COMMENT '附言',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `fee` decimal(20,2) NOT NULL COMMENT '手续费',
  `payTime` datetime DEFAULT NULL COMMENT '支付时间',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父待付款单号',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `extPayStatus` varchar(50) DEFAULT NULL COMMENT '外部支付状态',
  `extPayUpdateTime` datetime DEFAULT NULL COMMENT '外部支付更新时间',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_payApply_extDocCode` (`extDocCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_payapply_bak_20171205`
--

DROP TABLE IF EXISTS `fin_payapply_bak_20171205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_payapply_bak_20171205` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `payeeCorporateId` varchar(32) DEFAULT NULL COMMENT '收款方企业Id',
  `code` varchar(50) NOT NULL COMMENT '待付款单编号',
  `extDocType` tinyint(2) NOT NULL COMMENT '业务单类型',
  `extDocCode` varchar(50) NOT NULL COMMENT '业务单编号',
  `extDocName` varchar(100) DEFAULT NULL COMMENT '业务名称',
  `amount` decimal(20,2) NOT NULL COMMENT '金额',
  `payType` tinyint(2) NOT NULL COMMENT '支付类型',
  `payerId` varchar(32) NOT NULL COMMENT '付款方Id',
  `payeeId` varchar(32) NOT NULL COMMENT '收款方Id',
  `remark` varchar(22) DEFAULT NULL COMMENT '摘要/用途',
  `comment` varchar(100) DEFAULT NULL COMMENT '附言',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `fee` decimal(20,2) NOT NULL COMMENT '手续费',
  `payTime` datetime DEFAULT NULL COMMENT '支付时间',
  `parentId` varchar(32) DEFAULT NULL COMMENT '父待付款单号',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `extPayStatus` varchar(50) DEFAULT NULL COMMENT '外部支付状态',
  `extPayUpdateTime` datetime DEFAULT NULL COMMENT '外部支付更新时间',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  `billId` varchar(32) DEFAULT NULL COMMENT '票据Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_payee`
--

DROP TABLE IF EXISTS `fin_payee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_payee` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `phone` varchar(50) DEFAULT NULL COMMENT '收款方电话',
  `nickName` varchar(50) DEFAULT NULL COMMENT '收款方昵称',
  `type` tinyint(2) NOT NULL COMMENT '类型',
  `bankImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '银行图片',
  `branchBankNo` varchar(50) DEFAULT NULL COMMENT '支行编号',
  `branchBankName` varchar(100) DEFAULT NULL COMMENT '支行名称',
  `branchBankProvince` varchar(20) DEFAULT NULL COMMENT '支行省',
  `branchBankCity` varchar(20) DEFAULT NULL COMMENT '支行市',
  `branchBankKeyword` varchar(20) DEFAULT NULL COMMENT '支行关键字',
  `account` varchar(50) DEFAULT NULL,
  `accountName` varchar(122) DEFAULT NULL,
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型',
  `bankNo` varchar(50) DEFAULT NULL COMMENT '银行联行号/超级网银联行号',
  `bankName` varchar(100) DEFAULT NULL COMMENT '银行名称/超级网银名称',
  `arrivalTimeType` tinyint(2) NOT NULL COMMENT '到账时间类型',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_payee_bak_part20171213`
--

DROP TABLE IF EXISTS `fin_payee_bak_part20171213`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_payee_bak_part20171213` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `phone` varchar(50) DEFAULT NULL COMMENT '收款方电话',
  `nickName` varchar(50) DEFAULT NULL COMMENT '收款方昵称',
  `type` tinyint(2) NOT NULL COMMENT '类型',
  `bankImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '银行图片',
  `branchBankNo` varchar(50) DEFAULT NULL COMMENT '支行编号',
  `branchBankName` varchar(100) DEFAULT NULL COMMENT '支行名称',
  `branchBankProvince` varchar(20) DEFAULT NULL COMMENT '支行省',
  `branchBankCity` varchar(20) DEFAULT NULL COMMENT '支行市',
  `branchBankKeyword` varchar(20) DEFAULT NULL COMMENT '支行关键字',
  `account` varchar(50) DEFAULT NULL,
  `accountName` varchar(122) DEFAULT NULL,
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型',
  `bankNo` varchar(50) DEFAULT NULL COMMENT '银行联行号/超级网银联行号',
  `bankName` varchar(100) DEFAULT NULL COMMENT '银行名称/超级网银名称',
  `arrivalTimeType` tinyint(2) NOT NULL COMMENT '到账时间类型',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_payer`
--

DROP TABLE IF EXISTS `fin_payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_payer` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `account` varchar(50) DEFAULT NULL COMMENT '账户',
  `accountName` varchar(122) DEFAULT NULL COMMENT '账户名称',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_settlement`
--

DROP TABLE IF EXISTS `fin_settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_settlement` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `type` tinyint(2) NOT NULL COMMENT '类型，1订单，2发货单',
  `totalAmt` decimal(20,2) DEFAULT NULL COMMENT '结算金额',
  `feeAmt` decimal(20,2) NOT NULL COMMENT '服务费金额',
  `freight` decimal(20,2) DEFAULT NULL COMMENT '运费',
  `discountAmt` decimal(20,2) NOT NULL COMMENT '折让金额',
  `expPaymentAmt` decimal(20,2) NOT NULL COMMENT '应付金额',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_settlementdetail`
--

DROP TABLE IF EXISTS `fin_settlementdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_settlementdetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `settlementId` varchar(32) NOT NULL COMMENT '结算id',
  `amount` decimal(20,2) NOT NULL COMMENT '金额',
  `quantity` decimal(20,6) NOT NULL COMMENT '数量',
  `price` decimal(20,8) NOT NULL COMMENT '单价',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_transfer`
--

DROP TABLE IF EXISTS `fin_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_transfer` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) NOT NULL COMMENT '转账编号',
  `agentPhone` varchar(50) DEFAULT NULL COMMENT '经办人电话',
  `status` tinyint(2) NOT NULL COMMENT '转账状态',
  `extDocType` varchar(50) DEFAULT NULL COMMENT '业务单类型',
  `extDocCode` varchar(100) DEFAULT NULL COMMENT '业务单编号',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_withdrawals`
--

DROP TABLE IF EXISTS `fin_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_withdrawals` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) NOT NULL COMMENT '编号',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `auditType` varchar(100) NOT NULL COMMENT '审核类型',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fin_withdrawals_bak_20180102`
--

DROP TABLE IF EXISTS `fin_withdrawals_bak_20180102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_withdrawals_bak_20180102` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `corporateId` varchar(32) NOT NULL COMMENT '企业Id',
  `code` varchar(50) NOT NULL COMMENT '编号',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `auditType` varchar(100) NOT NULL COMMENT '审核类型',
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_customersummary`
--

DROP TABLE IF EXISTS `fsr_customersummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_customersummary` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `fundId` varchar(32) DEFAULT NULL COMMENT '数据源表对应的id',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单id',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '平台流量总计.=已认定流量总计+项目部成立前认定流量',
  `afterDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '已认定流量总计.=已认定合同流量+已认定单项资金流量+已认定采购流量+已认定采购流量',
  `orderAmt` decimal(20,2) NOT NULL COMMENT '合同流量',
  `singleFundAmt` decimal(20,2) NOT NULL COMMENT '单项资金流量',
  `tradeAmt` decimal(20,2) NOT NULL COMMENT '交易流量',
  `purchaseAmt` decimal(20,2) NOT NULL COMMENT '采购流量',
  `beforeDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '项目部成立前认定流量',
  `pendingAmt` decimal(20,2) NOT NULL COMMENT '待认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_fund`
--

DROP TABLE IF EXISTS `fsr_fund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_fund` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `disabled` tinyint(4) NOT NULL COMMENT '是否禁用.0：已启用.1.已禁用',
  `payCode` varchar(32) DEFAULT NULL COMMENT '支付编号',
  `bizCode` varchar(32) DEFAULT NULL COMMENT '业务单号',
  `tradeTime` datetime NOT NULL COMMENT '交易时间',
  `statTime` datetime NOT NULL COMMENT '统计时间',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `account` varchar(32) DEFAULT NULL COMMENT '交易账号',
  `accountName` varchar(125) DEFAULT NULL COMMENT '交易账号名称',
  `oppAccount` varchar(32) DEFAULT NULL COMMENT '对方账号',
  `oppAccountName` varchar(125) DEFAULT NULL COMMENT '对方账户名',
  `tradeType` varchar(20) DEFAULT NULL COMMENT '交易类型',
  `isCalculated` varchar(5) DEFAULT NULL COMMENT '是否计算',
  `fundForm` varchar(20) DEFAULT NULL COMMENT '资金形态',
  `bizType` varchar(20) DEFAULT NULL COMMENT '资金类型',
  `fundType` varchar(20) NOT NULL COMMENT '资金类型',
  `statAmt` decimal(20,2) NOT NULL COMMENT '统计金额',
  `inAmt` decimal(20,2) DEFAULT NULL COMMENT '收入金额',
  `outAmt` decimal(20,2) DEFAULT NULL COMMENT '支出金额',
  `remainingAmt` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `isFlowCalculated` varchar(5) DEFAULT NULL COMMENT '是否计算流量',
  `flowStatMonth` varchar(5) DEFAULT NULL COMMENT '流量统计月份',
  `belongsTo` varchar(125) NOT NULL COMMENT '流量归属部门',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `salesman` varchar(125) DEFAULT NULL COMMENT '负责业务员',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `bizDescription` varchar(500) DEFAULT NULL COMMENT '业务描述',
  `isBeforeDeptSetup` varchar(5) NOT NULL COMMENT '是否为项目部成立前的流量',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_importresult`
--

DROP TABLE IF EXISTS `fsr_importresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_importresult` (
  `id` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态.1.待处理.2.处理中.3.处理失败.4.处理成功',
  `type` tinyint(4) NOT NULL COMMENT '处理类型. 1.导入合同流量数据.2.导入资金流量数据',
  `result` text COMMENT '处理结果内容',
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `createBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `beginTime` datetime DEFAULT NULL COMMENT '开始处理的时间',
  `endTime` datetime DEFAULT NULL COMMENT '完成处理的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_order`
--

DROP TABLE IF EXISTS `fsr_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_order` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `orderId` varchar(32) NOT NULL COMMENT '订单id',
  `energyAmt` decimal(20,2) NOT NULL COMMENT '金额 - 能源类',
  `materialAmt` decimal(20,2) NOT NULL COMMENT '金额 - 原材料',
  `chemicalsAmt` decimal(20,2) NOT NULL COMMENT '金额 - 化工类',
  `packageAmt` decimal(20,2) NOT NULL COMMENT '金额 - 包装类',
  `metalsAmt` decimal(20,2) NOT NULL COMMENT '金额 - 五金橡胶设备类',
  `fittingsAmt` decimal(20,2) NOT NULL COMMENT '金额 - 辅料配件类',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '金额（元）',
  `beforeDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '项目部成立前认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_purchase`
--

DROP TABLE IF EXISTS `fsr_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_purchase` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `fundId` varchar(32) NOT NULL COMMENT '数据源表对应的id',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '采购流量总计',
  `orderAmt` decimal(20,2) NOT NULL COMMENT '订单采购流量',
  `elecAmt` decimal(20,2) NOT NULL COMMENT '电费转账采购流量',
  `otherAmt` decimal(20,2) NOT NULL COMMENT '其他采购流量',
  `coalAmt` decimal(20,2) NOT NULL COMMENT '其中：煤炭采购流量',
  `insuranceAmt` decimal(20,2) NOT NULL COMMENT '其中：保险采购流量',
  `cartonAmt` decimal(20,2) NOT NULL COMMENT '其中：纸箱采购流量',
  `beforeDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '项目部成立前认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_singlefund`
--

DROP TABLE IF EXISTS `fsr_singlefund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_singlefund` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `fundId` varchar(32) NOT NULL COMMENT '数据源表对应的id',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '单项资金流量总额',
  `insuranceAmt` decimal(20,2) NOT NULL COMMENT '保险单项资金流量',
  `elecAmt` decimal(20,2) NOT NULL COMMENT '电力单项资金流量',
  `otherAmt` decimal(20,2) NOT NULL COMMENT '其他单项资金流量',
  `beforeDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '项目部成立前认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_summary`
--

DROP TABLE IF EXISTS `fsr_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_summary` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `fundId` varchar(32) DEFAULT NULL COMMENT '数据源表对应的id',
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单id',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '流量总计',
  `orderAmt` decimal(20,2) NOT NULL COMMENT '合同流量',
  `singleFundAmt` decimal(20,2) NOT NULL COMMENT '单项资金流量',
  `tradeAmt` decimal(20,2) NOT NULL COMMENT '交易流量',
  `purchaseAmt` decimal(20,2) NOT NULL COMMENT '采购流量',
  `pendingAmt` decimal(20,2) NOT NULL COMMENT '待认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_trade`
--

DROP TABLE IF EXISTS `fsr_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_trade` (
  `id` varchar(32) NOT NULL,
  `importId` varchar(32) NOT NULL COMMENT '导入id',
  `customer` varchar(125) NOT NULL COMMENT '流量归属',
  `fundId` varchar(32) NOT NULL COMMENT '数据源表对应的id',
  `totalAmt` decimal(20,2) NOT NULL COMMENT '交易流量总计',
  `orderAmt` decimal(20,2) NOT NULL COMMENT '订单交易流量',
  `elecAmt` decimal(20,2) NOT NULL COMMENT '电费转账交易流量',
  `otherAmt` decimal(20,2) NOT NULL COMMENT '其他交易流量',
  `beforeDeptSetupAmt` decimal(20,2) NOT NULL COMMENT '项目部成立前认定流量',
  `dataPermissionId` varchar(32) NOT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime NOT NULL COMMENT '统计筛选的时间，对应订单的导入时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fsr_userwhitelist`
--

DROP TABLE IF EXISTS `fsr_userwhitelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fsr_userwhitelist` (
  `id` varchar(32) NOT NULL COMMENT 'pk/userId',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `info_usertroubletrace`
--

DROP TABLE IF EXISTS `info_usertroubletrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_usertroubletrace` (
  `id` char(32) NOT NULL,
  `corporateId` char(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `handler` varchar(32) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` char(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `innodb_monitor`
--

DROP TABLE IF EXISTS `innodb_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `innodb_monitor` (
  `a` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_apply`
--

DROP TABLE IF EXISTS `l_account_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_apply` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `YYZZ` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `JGDM` varchar(200) DEFAULT NULL COMMENT '机构代码',
  `GSDJ` varchar(200) DEFAULT NULL COMMENT '国税登记',
  `QYLRY` varchar(200) DEFAULT NULL COMMENT '企业录入员身份证',
  `FHY` varchar(200) DEFAULT NULL COMMENT '复核员身份证',
  `JYZH` varchar(200) DEFAULT NULL COMMENT '交易账户申请书',
  `STATUS` char(2) DEFAULT NULL COMMENT '状态',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易账户申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_balance_apply`
--

DROP TABLE IF EXISTS `l_account_balance_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_balance_apply` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `APPLY_CODE` varchar(50) DEFAULT NULL,
  `MONEY` decimal(15,2) DEFAULT NULL COMMENT '金额',
  `OUT_ACCOUNT_NAME` varchar(50) DEFAULT NULL,
  `OUT_ACCOUNT` varchar(20) DEFAULT NULL,
  `ACCOUNT_NAME` varchar(32) DEFAULT NULL COMMENT '收款人',
  `BANK_CODE` varchar(32) DEFAULT NULL COMMENT '收款银行卡号',
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '收款银行名称',
  `BANK_ADDR` varchar(100) DEFAULT NULL,
  `BANK_NO` varchar(12) DEFAULT NULL,
  `BANK_NO_TYPE` int(11) DEFAULT '0',
  `REMARK` varchar(22) DEFAULT NULL COMMENT '摘要',
  `COMMENT` varchar(100) DEFAULT NULL COMMENT '附言',
  `STATUS` int(11) DEFAULT '0' COMMENT '状态.0.待审核（缺省值） 1.不通过 2.待一审审核/提现中 3.待二审审核 4.审核通过 5.已提现',
  `PAY_STATUS` int(11) DEFAULT '0' COMMENT '0.未提现（缺省值） 1.提现中 2.已提现 3.提现失败.4.提现失败已冲账',
  `REFUSE_MSG1` varchar(255) DEFAULT NULL,
  `REFUSE_MSG2` varchar(255) DEFAULT NULL,
  `QY_USER_ID` varchar(50) DEFAULT NULL,
  `PLAT_USER_ID1` varchar(50) DEFAULT NULL,
  `PLAT_USER_ID2` varchar(50) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `APPLY_QY_TIME` datetime DEFAULT NULL,
  `APPLY_PLAT_TIME1` datetime DEFAULT NULL,
  `APPLY_PLAT_TIME2` datetime DEFAULT NULL,
  `payTimeType` int(11) NOT NULL DEFAULT '0' COMMENT '到账时间. 0:普通到账(默认值). 1:实时到账(超级网银通道)',
  `hostStatus` varchar(1) DEFAULT NULL COMMENT '主机交易状态.\r\n行内汇款：\r\n6：主机交易成功 （最终完结状态）.\r\n7：主机交易失败 （最终完结状态）.\r\n8：状态未知，没有收到后台系统返回的应答.\r\n跨行汇款：\r\nA：支付系统正在处理.\r\nB：处理成功（最终完结状态）.\r\nC：处理失败.\r\nD：状态未知.\r\nE：大额查证.\r\n9：查证取消交易.\r\nb:汇款失败已冲账（最终完结状态）',
  `fee` decimal(15,2) NOT NULL COMMENT '手续费',
  `auditType` tinyint(4) NOT NULL COMMENT '审核类型.0：人工审核.1：自动审核',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提现申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_question`
--

DROP TABLE IF EXISTS `l_account_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_question` (
  `ID` varchar(50) NOT NULL,
  `QUESTION` varchar(50) DEFAULT NULL COMMENT '问题',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟账户安全问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_question_item`
--

DROP TABLE IF EXISTS `l_account_question_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_question_item` (
  `ID` varchar(50) NOT NULL,
  `QUESTION_ID` varchar(50) DEFAULT NULL COMMENT '问题',
  `ANSWER` varchar(100) DEFAULT NULL COMMENT '答案',
  `ACCOUNT_ID` varchar(50) DEFAULT NULL COMMENT '虚拟账号ID',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟账户安全问题明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_rule`
--

DROP TABLE IF EXISTS `l_account_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_rule` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `DEPOSIT_MONEY` int(11) DEFAULT NULL COMMENT '提现审核金额',
  `PAY_MONEY` int(11) DEFAULT NULL COMMENT '付款审核金额',
  `MOBILE` char(11) DEFAULT NULL COMMENT '短信提醒手机号',
  `RULE_TYPE` int(11) DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `EMAIl` varchar(100) DEFAULT NULL COMMENT '支付验证邮箱',
  `TRANSFER_MONEY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易账户申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_account_transfer`
--

DROP TABLE IF EXISTS `l_account_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_account_transfer` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `CORPORATEUSER_ID` varchar(50) NOT NULL COMMENT '公司ID',
  `APPLY_CODE` varchar(50) NOT NULL COMMENT '转账流水号',
  `MONEY` decimal(15,2) NOT NULL COMMENT '金额',
  `OUT_ACCOUNT_NAME` varchar(50) NOT NULL COMMENT '转账方户名',
  `OUT_ACCOUNT` varchar(25) NOT NULL COMMENT '转账方账号',
  `IN_ACCOUNT_NAME` varchar(50) NOT NULL COMMENT '收款方户名',
  `IN_ACCOUNT` varchar(25) NOT NULL COMMENT '收款方账号',
  `SUBBANKCODE` varchar(50) NOT NULL COMMENT '收款支行编码',
  `SUBBANKCODENAME` varchar(100) NOT NULL COMMENT '收款方支行名',
  `BANKCODE` varchar(50) NOT NULL COMMENT '银行编码',
  `BANKCODENAME` varchar(100) NOT NULL COMMENT '银行名称',
  `SUBBANK_PROVICE` varchar(20) NOT NULL COMMENT '省',
  `SUBBANK_CITY` varchar(20) NOT NULL COMMENT '市',
  `SUBBANK_KEYWORD` varchar(20) DEFAULT NULL COMMENT '关键字',
  `AGENTPHONE` varchar(20) DEFAULT NULL COMMENT '经办人手机',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '收款方电话',
  `FEE` varchar(15) DEFAULT NULL COMMENT '手续费',
  `STATUS` int(11) NOT NULL COMMENT '状态',
  `PAY_STATUS` varchar(11) NOT NULL COMMENT '支付状态',
  `USE_AGE` varchar(50) DEFAULT NULL COMMENT '用途.该字段于附言调整功能时废除',
  `COMMENT` varchar(100) DEFAULT NULL COMMENT '附言',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `PROCESS_TIME` datetime DEFAULT NULL COMMENT '处理时间',
  `REFUSE_MSG1` varchar(255) DEFAULT NULL COMMENT '拒绝信息1',
  `QY_USER_ID` varchar(50) DEFAULT NULL,
  `APPLY_QY_TIME` datetime DEFAULT NULL,
  `REFUSE_MSG2` varchar(255) DEFAULT NULL COMMENT '银行拒绝信息',
  `payTimeType` int(11) NOT NULL DEFAULT '0' COMMENT '到账时间. 0:普通到账(默认值). 1:实时到账(超级网银通道)',
  `hostStatus` varchar(1) DEFAULT NULL COMMENT '主机交易状态.\r\n行内汇款：\r\n6：主机交易成功 （最终完结状态）.\r\n7：主机交易失败 （最终完结状态）.\r\n8：状态未知，没有收到后台系统返回的应答.\r\n跨行汇款：\r\nA：支付系统正在处理.\r\nB：处理成功（最终完结状态）.\r\nC：处理失败.\r\nD：状态未知.\r\nE：大额查证.\r\n9：查证取消交易.\r\nb:汇款失败已冲账（最终完结状态）',
  `payTime` datetime DEFAULT NULL COMMENT '支付时间',
  `extDocType` tinyint(4) DEFAULT NULL COMMENT '业务扩展类型.0：默认的转账方式，没有业务扩展.1：单边订单.',
  `extDocNo` varchar(64) DEFAULT NULL COMMENT '业务编号或id.extType=1时，对应单边订单编号.',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='转账表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_activityapplyproperty`
--

DROP TABLE IF EXISTS `l_activityapplyproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_activityapplyproperty` (
  `id` varchar(32) NOT NULL,
  `applyId` varchar(32) NOT NULL COMMENT '关联t_activityApply的id',
  `propertyId` varchar(32) NOT NULL COMMENT '关联l_activityProperty的id',
  `value` varchar(1000) NOT NULL COMMENT '属性值',
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_activityprize`
--

DROP TABLE IF EXISTS `l_activityprize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_activityprize` (
  `id` varchar(36) NOT NULL,
  `activitySeqId` varchar(36) NOT NULL COMMENT 'L_ActivitySeq表的主键',
  `prizeLevel` int(11) NOT NULL COMMENT '奖品等级',
  `prizeName` varchar(255) NOT NULL COMMENT '奖品名称',
  `totalPrizeQty` int(11) NOT NULL COMMENT '总的奖品数量',
  `remainingPrizeQty` int(11) NOT NULL COMMENT '剩余奖品数量',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_activityproperty`
--

DROP TABLE IF EXISTS `l_activityproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_activityproperty` (
  `id` varchar(32) NOT NULL,
  `activityId` varchar(32) NOT NULL COMMENT '关联t_activity的id',
  `name` varchar(255) NOT NULL COMMENT '属性名称',
  `type` tinyint(4) NOT NULL COMMENT '属性类型',
  `required` tinyint(4) NOT NULL COMMENT '是否必填',
  `valueRange` varchar(255) NOT NULL COMMENT '取值范围',
  `sequence` int(11) NOT NULL COMMENT '顺序',
  `canSearch` tinyint(4) NOT NULL COMMENT '是否为搜索条件',
  `tags` varchar(255) NOT NULL COMMENT '标识此属性的用途，方便扩展处理',
  `createTime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedby` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_activityseq`
--

DROP TABLE IF EXISTS `l_activityseq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_activityseq` (
  `id` varchar(36) NOT NULL COMMENT '主键，UUID',
  `activityId` varchar(20) NOT NULL COMMENT '活动类型名字',
  `startDate` datetime NOT NULL COMMENT '活动开始时间',
  `endDate` datetime NOT NULL COMMENT '活动结束时间',
  `expectedParticipantQty` int(11) NOT NULL COMMENT '活动期望参与人数',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_activitytimeperiod`
--

DROP TABLE IF EXISTS `l_activitytimeperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_activitytimeperiod` (
  `id` varchar(36) NOT NULL,
  `activitySeqId` varchar(36) NOT NULL COMMENT 'L_ActivitySeq表的主键',
  `startTime` datetime NOT NULL COMMENT '活动开始时间点',
  `endTime` datetime NOT NULL COMMENT '活动结束时间点',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_bank`
--

DROP TABLE IF EXISTS `l_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_bank` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `STATUS` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='银行表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_carousel_type`
--

DROP TABLE IF EXISTS `l_carousel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_carousel_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `TYPE_NAME` varchar(50) DEFAULT NULL COMMENT '类型名称',
  `RECOMMENDSIZE` varchar(50) DEFAULT NULL COMMENT '推荐尺寸',
  `ISDEL` int(2) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_contractdetail`
--

DROP TABLE IF EXISTS `l_contractdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_contractdetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `contractId` varchar(32) NOT NULL COMMENT 'fk, refer to T_CONTRACT',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `productPrice` decimal(22,8) NOT NULL COMMENT '产品单价',
  `productQty` decimal(20,6) NOT NULL COMMENT '产品数量',
  `productAmt` decimal(20,2) NOT NULL COMMENT '产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `isPreQARequired` tinyint(1) NOT NULL COMMENT '是否发货前质检',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `freight` decimal(20,2) NOT NULL COMMENT '运费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_corporateuser_account`
--

DROP TABLE IF EXISTS `l_corporateuser_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_corporateuser_account` (
  `ID` varchar(50) NOT NULL,
  `PARENTACCTOUNT` varchar(50) DEFAULT NULL COMMENT '结算账号',
  `ACCOUNT` varchar(64) DEFAULT NULL COMMENT '虚拟子账号',
  `ACCOUNT_CODE` varchar(20) DEFAULT NULL COMMENT '虚拟子账号户名',
  `ACCOUNT_NAME` varchar(50) DEFAULT NULL COMMENT '联系人',
  `ACCOUNT_PHONE` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `ACCOUNT_ADDRESS` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '支付密码',
  `ACCOUNT_SATUES` char(2) DEFAULT NULL COMMENT '账户状态',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟账户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_corporateusercert`
--

DROP TABLE IF EXISTS `l_corporateusercert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_corporateusercert` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `CORPORATE_INTRODUCE` longtext,
  `BUSINESS_SCOPE` longtext,
  `MAINPRODUCT` longtext,
  `CORPORATE_PICTURE` varchar(255) DEFAULT NULL,
  `BUSINESS_LICENSE` varchar(64) DEFAULT NULL,
  `BUSINESS_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `TAX_REGISTRATION_LICENSE` varchar(64) DEFAULT NULL,
  `TAX_REGISTRATION_PIC` varchar(255) DEFAULT NULL,
  `ORGANIZATION_CODE` varchar(64) DEFAULT NULL,
  `ORGANIZATION_CODE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL,
  `LEGALPERSON_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `LEGALPERSON_LICENSE_PIC1` varchar(255) DEFAULT NULL,
  `CONTACT_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `CONTACT_LICENSE_PIC1` varchar(255) DEFAULT NULL,
  `TRADEMARK_CERT_PIC` varchar(255) DEFAULT NULL,
  `AUTHORITY_CERT_PIC` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `HOMEPAGE` longtext,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL,
  `HOMEPAGE_PREVIEW` longtext COMMENT '主页预览内容',
  `ISONLYBL` int(1) DEFAULT '0',
  `FIRST_SUBMITTED_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKf625xjj5nr9ky5pd71ptb4p1k` (`IMPORT_RECORD_ID`) USING BTREE,
  KEY `FK7agnui2evaxj779jse65b8uxj` (`CORPORATEUSER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='以企业名义注册的或者运营平台添加的企业用户，主要分为采购商、供应商、服务商、平台方';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_corporateusercert_bak_20171031`
--

DROP TABLE IF EXISTS `l_corporateusercert_bak_20171031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_corporateusercert_bak_20171031` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `CORPORATE_INTRODUCE` longtext,
  `BUSINESS_SCOPE` longtext,
  `MAINPRODUCT` longtext,
  `CORPORATE_PICTURE` varchar(255) DEFAULT NULL,
  `BUSINESS_LICENSE` varchar(64) DEFAULT NULL,
  `BUSINESS_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `TAX_REGISTRATION_LICENSE` varchar(64) DEFAULT NULL,
  `TAX_REGISTRATION_PIC` varchar(255) DEFAULT NULL,
  `ORGANIZATION_CODE` varchar(64) DEFAULT NULL,
  `ORGANIZATION_CODE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL,
  `LEGALPERSON_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `LEGALPERSON_LICENSE_PIC1` varchar(255) DEFAULT NULL,
  `CONTACT_LICENSE_PIC` varchar(255) DEFAULT NULL,
  `CONTACT_LICENSE_PIC1` varchar(255) DEFAULT NULL,
  `TRADEMARK_CERT_PIC` varchar(255) DEFAULT NULL,
  `AUTHORITY_CERT_PIC` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `HOMEPAGE` longtext,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL,
  `HOMEPAGE_PREVIEW` longtext COMMENT '主页预览内容',
  `ISONLYBL` int(1) DEFAULT '0',
  `FIRST_SUBMITTED_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_data_permission_customer`
--

DROP TABLE IF EXISTS `l_data_permission_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_data_permission_customer` (
  `ID` varchar(50) NOT NULL,
  `DP_ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) NOT NULL,
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP,
  `UPDATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_dataPermissionCustomer_corporateId` (`CORPORATEUSER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据权限 用户关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_deal_detail`
--

DROP TABLE IF EXISTS `l_deal_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_deal_detail` (
  `ID` varchar(50) NOT NULL,
  `CORPORATE_ID` varchar(50) DEFAULT NULL COMMENT '企业ID',
  `ACCOUNT_ID` varchar(50) DEFAULT NULL COMMENT '虚拟账户ID',
  `SN` varchar(50) DEFAULT NULL COMMENT 'SN',
  `DEAL_TYEP` char(2) DEFAULT NULL COMMENT '交易类型',
  `DEAT_TIME` datetime DEFAULT NULL COMMENT '交易时间',
  `STATUS` char(2) DEFAULT NULL COMMENT '状态',
  `DEAL_MONEY` decimal(20,2) DEFAULT NULL COMMENT '交易金额',
  `BILLS_TYEP` char(2) DEFAULT NULL COMMENT '单据类型',
  `ORDER_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `DEAL_DETAIL_ITEM_ID` varchar(50) DEFAULT NULL COMMENT '银行流水ID',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_deal_detail_item`
--

DROP TABLE IF EXISTS `l_deal_detail_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_deal_detail_item` (
  `ID` varchar(50) NOT NULL,
  `SN` varchar(50) DEFAULT NULL COMMENT '银行流水号',
  `PAY_FORM_ID` varchar(50) DEFAULT NULL COMMENT '付款账号',
  `PAY_TO_ID` varchar(50) DEFAULT NULL COMMENT '收款账号',
  `PAY_FEE` decimal(20,2) DEFAULT NULL COMMENT '金额',
  `COMMENT` varchar(100) DEFAULT NULL COMMENT '附言',
  `REMARK` varchar(32) DEFAULT NULL COMMENT '摘要',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟账号流水表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_exponentchartdetail_bank_20170811`
--

DROP TABLE IF EXISTS `l_exponentchartdetail_bank_20170811`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_exponentchartdetail_bank_20170811` (
  `id` varchar(32) NOT NULL,
  `exponentChartId` varchar(32) NOT NULL COMMENT '外键',
  `dataValue` decimal(20,2) NOT NULL COMMENT '指数',
  `dataTime` datetime NOT NULL COMMENT '录入时间',
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `resultAnalysis` text COMMENT '指数分析',
  `dataValueForecast` decimal(20,2) DEFAULT NULL COMMENT '预测指数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_fileiteminfo`
--

DROP TABLE IF EXISTS `l_fileiteminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_fileiteminfo` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `fileSetInfoId` varchar(32) NOT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `filePath` varchar(255) NOT NULL COMMENT '文件路径',
  `fileName` varchar(255) NOT NULL COMMENT '文件名字',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `size` bigint(20) NOT NULL COMMENT '文件大小（字节数）',
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_fileiteminfo_bak_20170428`
--

DROP TABLE IF EXISTS `l_fileiteminfo_bak_20170428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_fileiteminfo_bak_20170428` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `fileSetInfoId` varchar(32) NOT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `filePath` varchar(255) NOT NULL COMMENT '文件路径',
  `fileName` varchar(255) NOT NULL COMMENT '文件名字',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `size` bigint(20) NOT NULL COMMENT '文件大小（字节数）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_individualuser`
--

DROP TABLE IF EXISTS `l_individualuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_individualuser` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `D_D_ID` varchar(50) DEFAULT NULL,
  `ACCOUNTNAME` varchar(64) DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `payPwd` varchar(64) DEFAULT NULL COMMENT '支付密码',
  `payPwdSecurityLevel` char(2) DEFAULT NULL COMMENT '支付密码安全级别',
  `NAME` varchar(32) DEFAULT NULL,
  `EMPLOYEE_NUM` varchar(32) DEFAULT NULL,
  `JOBPOSITION` varchar(32) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `STATUS` int(2) NOT NULL,
  `PHONE` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `QQ` varchar(64) DEFAULT NULL,
  `WEIXIN` varchar(64) DEFAULT NULL,
  `COMMENT` varchar(500) DEFAULT NULL,
  `HEAD_LOGO` varchar(255) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `LASTLOGONTIME` datetime DEFAULT NULL,
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '负责区域省ID',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '负责区域市ID',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '负责区域区县ID',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `DP_ID` varchar(50) DEFAULT NULL COMMENT '数据权限ID',
  `isCorporateUser` tinyint(1) NOT NULL DEFAULT '0',
  `wechatLoginId` varchar(32) DEFAULT NULL COMMENT '绑定微信登录ID',
  `version` int(11) NOT NULL DEFAULT '0',
  `hasDataCenterPermission` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_individualuser_bak_20170914`
--

DROP TABLE IF EXISTS `l_individualuser_bak_20170914`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_individualuser_bak_20170914` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `D_D_ID` varchar(50) DEFAULT NULL,
  `ACCOUNTNAME` varchar(64) DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `payPwd` varchar(64) DEFAULT NULL COMMENT '支付密码',
  `payPwdSecurityLevel` char(2) DEFAULT NULL COMMENT '支付密码安全级别',
  `NAME` varchar(32) DEFAULT NULL,
  `EMPLOYEE_NUM` varchar(32) DEFAULT NULL,
  `JOBPOSITION` varchar(32) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `STATUS` int(2) NOT NULL,
  `PHONE` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `QQ` varchar(64) DEFAULT NULL,
  `WEIXIN` varchar(64) DEFAULT NULL,
  `COMMENT` varchar(500) DEFAULT NULL,
  `HEAD_LOGO` varchar(255) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `LASTLOGONTIME` datetime DEFAULT NULL,
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '负责区域省ID',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '负责区域市ID',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '负责区域区县ID',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `DP_ID` varchar(50) DEFAULT NULL COMMENT '数据权限ID',
  `isCorporateUser` tinyint(1) NOT NULL DEFAULT '0',
  `wechatLoginId` varchar(32) DEFAULT NULL COMMENT '绑定微信登录ID',
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_individualuser_bank_20170626`
--

DROP TABLE IF EXISTS `l_individualuser_bank_20170626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_individualuser_bank_20170626` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `D_D_ID` varchar(50) DEFAULT NULL,
  `ACCOUNTNAME` varchar(64) DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `EMPLOYEE_NUM` varchar(32) DEFAULT NULL,
  `JOBPOSITION` varchar(32) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(32) DEFAULT NULL,
  `STATUS` int(2) NOT NULL,
  `PHONE` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `QQ` varchar(64) DEFAULT NULL,
  `WEIXIN` varchar(64) DEFAULT NULL,
  `COMMENT` varchar(500) DEFAULT NULL,
  `HEAD_LOGO` varchar(255) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `LASTLOGONTIME` datetime DEFAULT NULL,
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '负责区域省ID',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '负责区域市ID',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '负责区域区县ID',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `DP_ID` varchar(50) DEFAULT NULL COMMENT '数据权限ID',
  `isCorporateUser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_invoice`
--

DROP TABLE IF EXISTS `l_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_invoice` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `PROVINCE_ID` int(11) DEFAULT NULL,
  `CITY_ID` int(11) DEFAULT NULL,
  `AREA_ID` int(11) DEFAULT NULL,
  `REAL_ADDRESS` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `DUTY_NO` varchar(50) DEFAULT NULL COMMENT '纳税人识别号',
  `INVOICE_HEAD` varchar(100) DEFAULT NULL COMMENT '发票抬头',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '发票配送地址',
  `BANK_CODE` varchar(100) DEFAULT NULL COMMENT '银行帐号',
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '开户行',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PS_PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '配送省',
  `PS_CITY_ID` varchar(50) DEFAULT NULL COMMENT '配送市',
  `PS_AREA_ID` varchar(50) DEFAULT NULL COMMENT '配送县',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发票表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_logisticsdetail`
--

DROP TABLE IF EXISTS `l_logisticsdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_logisticsdetail` (
  `id` varchar(50) NOT NULL DEFAULT '' COMMENT '物流中转信息ID',
  `logisticsId` varchar(50) NOT NULL COMMENT 'fk, refer to T_Logistics''s id',
  `detail` varchar(255) DEFAULT NULL COMMENT '物流中转信息',
  `transportTime` datetime DEFAULT NULL COMMENT '填写信息时间',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_news_type`
--

DROP TABLE IF EXISTS `l_news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_news_type` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(50) DEFAULT NULL,
  `ISDEL` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_order_bill`
--

DROP TABLE IF EXISTS `l_order_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_order_bill` (
  `id` varchar(32) NOT NULL,
  `orderId` varchar(32) NOT NULL COMMENT '订单id',
  `billId` varchar(32) NOT NULL COMMENT '票据信息id',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_orderdetail`
--

DROP TABLE IF EXISTS `l_orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_orderdetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `orderId` varchar(32) NOT NULL COMMENT 'fk, refer to T_ORDER',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `productPrice` decimal(22,8) NOT NULL COMMENT '产品单价',
  `productQty` decimal(20,6) NOT NULL COMMENT '产品数量',
  `productAmt` decimal(20,2) NOT NULL COMMENT '产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `extProductCode` varchar(255) DEFAULT NULL COMMENT 'external product code外部产品编码',
  `extProductName` varchar(64) DEFAULT NULL COMMENT 'external product name外部产品名称',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_orderdetail_bak_20170320`
--

DROP TABLE IF EXISTS `l_orderdetail_bak_20170320`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_orderdetail_bak_20170320` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `orderId` varchar(32) NOT NULL COMMENT 'fk, refer to T_ORDER',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `productPrice` decimal(22,8) NOT NULL COMMENT '产品单价',
  `productQty` decimal(20,6) NOT NULL COMMENT '产品数量',
  `productAmt` decimal(20,2) NOT NULL COMMENT '产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `isPreQARequired` tinyint(1) NOT NULL COMMENT '是否发货前质检',
  `extProductCode` varchar(255) DEFAULT NULL COMMENT 'external product code外部产品编码',
  `extProductName` varchar(64) DEFAULT NULL COMMENT 'external product name外部产品名称',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货产品数量',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_orderdetail_bak_20170717`
--

DROP TABLE IF EXISTS `l_orderdetail_bak_20170717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_orderdetail_bak_20170717` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `orderId` varchar(32) NOT NULL COMMENT 'fk, refer to T_ORDER',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `productPrice` decimal(22,8) NOT NULL COMMENT '产品单价',
  `productQty` decimal(20,6) NOT NULL COMMENT '产品数量',
  `productAmt` decimal(20,2) NOT NULL COMMENT '产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `isPreQARequired` tinyint(1) NOT NULL COMMENT '是否发货前质检',
  `extProductCode` varchar(255) DEFAULT NULL COMMENT 'external product code外部产品编码',
  `extProductName` varchar(64) DEFAULT NULL COMMENT 'external product name外部产品名称',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货产品数量',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_orderdetail_bak_20171121`
--

DROP TABLE IF EXISTS `l_orderdetail_bak_20171121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_orderdetail_bak_20171121` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `orderId` varchar(32) NOT NULL COMMENT 'fk, refer to T_ORDER',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `productPrice` decimal(22,8) NOT NULL COMMENT '产品单价',
  `productQty` decimal(20,6) NOT NULL COMMENT '产品数量',
  `productAmt` decimal(20,2) NOT NULL COMMENT '产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `extProductCode` varchar(255) DEFAULT NULL COMMENT 'external product code外部产品编码',
  `extProductName` varchar(64) DEFAULT NULL COMMENT 'external product name外部产品名称',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_orderproduct`
--

DROP TABLE IF EXISTS `l_orderproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_orderproduct` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '订单产品ID',
  `PRODUCT_ID` varchar(255) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `ORDER_PRODUCT_NUM` int(11) DEFAULT '0' COMMENT '购买数量',
  `ORDER_PRODUCT_UNIT` varchar(10) DEFAULT NULL COMMENT '购买单位',
  `ORDER_PRODUCT_PRICE` decimal(10,2) DEFAULT NULL COMMENT '购买单价',
  `ORDER_PRODUCT_COUNT` decimal(10,2) DEFAULT NULL COMMENT '购买总价',
  `ORDER_PRODUCT_PATH` varchar(500) DEFAULT NULL COMMENT '产品主图路径',
  `ORDER_ID` varchar(255) DEFAULT NULL COMMENT '订单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_pay_deal`
--

DROP TABLE IF EXISTS `l_pay_deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_pay_deal` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `CODE` varchar(50) DEFAULT NULL COMMENT '业务订单编码.编码规则：YWD + YYYYMMDD + 6位序号',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户ID.关联T_CORPORATEUSER表',
  `DEAL_ID` varchar(50) DEFAULT NULL COMMENT '交易ID',
  `DEAL_TYPE` char(2) DEFAULT NULL COMMENT '交易类型.1.充值.2.订单支付.3.订单收入.4.支付集采保证金.5.退还集采保证金.6.支付竞拍保证金.7.退还竞拍保证金.8.平台保证金收入.9.平台保证金支出.10.没收保证金.11.平台收入担保金.12.平台支出担保金.13.订单退还.14.支付投标保证金.15.退还投标保证金',
  `TO_ID` varchar(50) DEFAULT NULL COMMENT '收款企业ID',
  `MONEY` decimal(18,2) DEFAULT '0.00' COMMENT '订单总金额',
  `MONEY_SF` decimal(18,2) DEFAULT '0.00' COMMENT '已支付的金额',
  `MONEY_YF` decimal(18,2) DEFAULT '0.00' COMMENT '还需支付的金额',
  `RETURN_URL` varchar(200) DEFAULT NULL COMMENT '回调url',
  `STATUS` int(11) DEFAULT NULL COMMENT '支付状态.1. 待审核.2. 待支付.3. 支付失败.4. 已支付.5. 审核不通过.6. 通过付款中.7. 退回付款中.8. 已审核通过.9. 已审核退回.10. 主管审核.11.已开票.12.已收票.13.已确认收款',
  `NUMS` decimal(20,6) DEFAULT '0.000000' COMMENT '数量',
  `NAME` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `discountAmt` decimal(18,2) NOT NULL COMMENT '折让金额',
  `parentDealCode` varchar(50) DEFAULT NULL COMMENT 'deal_id的父编号，如：订单号',
  PRIMARY KEY (`ID`),
  KEY `L_PAY_RECORD_CODE` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_pay_deal_old`
--

DROP TABLE IF EXISTS `l_pay_deal_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_pay_deal_old` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `CODE` varchar(50) DEFAULT NULL COMMENT '编号',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `DEAL_ID` varchar(50) DEFAULT NULL COMMENT '交易ID',
  `DEAL_TYPE` char(2) DEFAULT NULL COMMENT '交易类型01订单支付',
  `TO_ID` varchar(50) DEFAULT NULL COMMENT '收款企业ID',
  `MONEY` decimal(18,2) DEFAULT NULL COMMENT '支付金额',
  `STATUS` int(2) DEFAULT NULL COMMENT '1待审核2待支付3支付失败4支付成功  5审核不通过',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `RETURN_URL` varchar(200) DEFAULT NULL COMMENT '回调url',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `CHECK_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `PAYNO` varchar(100) DEFAULT NULL COMMENT '流水号',
  `NUMS` int(11) DEFAULT NULL COMMENT '数量',
  `NAME` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `PAY_STATUS` int(11) DEFAULT '0' COMMENT '支付状态. 0:待支付. 1:支付中. 2:支付成功. 3:支付失败. 4:二次支付中. 5:二次支付成功. 6:二次支付失败.',
  `AUDIT_ENABLE` int(11) DEFAULT '0' COMMENT '审核使能状态. \r\n0：开启订单支付平台审核（缺省值）. 1：关闭订单支付平台审核（采用临时方案）.2.关闭订单支付平台审核（采用确认收款方案）',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `BILL_ID` varchar(50) DEFAULT NULL COMMENT '关联T_BILL表，用于对应票据信息',
  `COMMENT` varchar(22) DEFAULT NULL COMMENT '支付时填写的摘要',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_pay_record`
--

DROP TABLE IF EXISTS `l_pay_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_pay_record` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `CODE` varchar(50) NOT NULL COMMENT '支付编码.编码规则：ZF + YYYYMMDD + 6位序号',
  `MONEY` decimal(18,2) DEFAULT '0.00' COMMENT '支付金额',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '支付类型.0：转账支付（缺省值）.1：票据支付',
  `IN_ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '收款人名称',
  `IN_ACCOUNT` varchar(25) DEFAULT NULL COMMENT '收款人账户',
  `OUT_ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '付款人名称',
  `OUT_ACCOUNT` varchar(25) DEFAULT NULL COMMENT '付款人账户',
  `PAY_STATUS` int(11) DEFAULT '0' COMMENT '支付状态.0:待支付.1:支付中.2:支付成功.3:支付失败',
  `PAY_NO` varchar(100) DEFAULT NULL COMMENT '交易流水',
  `remark` varchar(22) DEFAULT NULL COMMENT '摘要',
  `PAY_RELATE_ID` varchar(50) DEFAULT NULL COMMENT '支付类型关联ID.PAY_TYPE=1：票据ID',
  `AUDIT_ENABLE` int(11) DEFAULT '0' COMMENT '审核使能状态.0：开启订单支付平台审核（缺省值）. 1：关闭订单支付平台审核（采用临时方案）.2.关闭订单支付平台审核（采用确认收款方案）',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '发起支付的用户id.关联T_CORPORATEUSER表',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `hostStatus` varchar(1) DEFAULT NULL COMMENT '主机交易状态.\r\n行内汇款：\r\n6：主机交易成功 （最终完结状态）.\r\n7：主机交易失败 （最终完结状态）.\r\n8：状态未知，没有收到后台系统返回的应答.\r\n跨行汇款：\r\nA：支付系统正在处理.\r\nB：处理成功（最终完结状态）.\r\nC：处理失败.\r\nD：状态未知.\r\nE：大额查证.\r\n9：查证取消交易.\r\nb:汇款失败已冲账（最终完结状态）',
  `comment` varchar(100) DEFAULT NULL COMMENT '附言，前25位将被默认占用为支付编号.规则：ZZ/ZF/TX+5位自定义编号+yyyyMMdd+6位自增编号+;',
  PRIMARY KEY (`ID`),
  KEY `PAY_RECORD_CODE` (`CODE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_paydeal_audit_record`
--

DROP TABLE IF EXISTS `l_paydeal_audit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_paydeal_audit_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键,自动递增',
  `CODE_YW` varchar(50) DEFAULT NULL COMMENT '业务订单编码.关联L_PAY_DEAL表的CODE字段',
  `STATUS_BEFORE` int(11) DEFAULT '0' COMMENT '审核前的订单状态',
  `STATUS_AFTER` int(11) DEFAULT '0' COMMENT '审核后的订单状态',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '审核备注信息',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '操作用户id.关联T_CORPORATEUSER表\r\n',
  `AUDIT_TIME` datetime DEFAULT NULL COMMENT '审核时间',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`),
  KEY `PAYDEAL_AUDIT_RECORD_CODEYW` (`CODE_YW`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1516 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_product_spec_att`
--

DROP TABLE IF EXISTS `l_product_spec_att`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_product_spec_att` (
  `ID` varchar(32) NOT NULL,
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL COMMENT '产品规格id',
  `ATTRIBUTE_NAME` varchar(32) DEFAULT NULL COMMENT '属性名称',
  `ATTRIBUTE_UNIT` varchar(32) DEFAULT NULL,
  `ATTRIBUTE_ORDER` int(10) DEFAULT NULL COMMENT '属性顺序',
  `OPTIONS_VALUE` varchar(99) DEFAULT NULL COMMENT '用分号分割多个可选值',
  `ISMAIN` int(2) DEFAULT '0' COMMENT '是否为主属性 1是 0否',
  `VALUE_TYPE` char(1) DEFAULT NULL COMMENT '1数字2字符串',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_productpictures`
--

DROP TABLE IF EXISTS `l_productpictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_productpictures` (
  `PRODUCTPICTURE_ID` varchar(50) DEFAULT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品id',
  `PRODUCT_IMGPATH` varchar(255) DEFAULT NULL COMMENT '产品组图路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_region`
--

DROP TABLE IF EXISTS `l_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `NAME_EN` varchar(100) NOT NULL,
  `SHORTNAME_EN` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5099 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_relateapply`
--

DROP TABLE IF EXISTS `l_relateapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_relateapply` (
  `ID` varchar(60) NOT NULL,
  `CORPORATEUSER_ID_APPLY` varchar(60) DEFAULT NULL COMMENT '申请公司id',
  `APPLY_NAME` varchar(60) DEFAULT NULL COMMENT '联系人',
  `APPLY_TEL` varchar(60) DEFAULT NULL COMMENT '联系电话',
  `CORPORATEUSER_ID_RELATE` varchar(60) DEFAULT NULL COMMENT '关联公司id',
  `RELATE_NAME` varchar(60) DEFAULT NULL COMMENT '联系人',
  `RELATE_TEL` varchar(60) DEFAULT NULL COMMENT '联系电话',
  `STATUS` varchar(60) DEFAULT NULL COMMENT '0(待审核)1(关联成功) 2(取消关联)',
  `REASON` varchar(60) DEFAULT NULL COMMENT '审核未通过的原因',
  `CORPORATENAME` varchar(60) DEFAULT NULL COMMENT '关联公司名称',
  `CORPORATE_ADDR` varchar(255) DEFAULT NULL COMMENT '关联公司地址',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '关联公司企业性质',
  `TYPE` int(2) DEFAULT NULL COMMENT '关联公司企业类型',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_rownumberstatistics`
--

DROP TABLE IF EXISTS `l_rownumberstatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_rownumberstatistics` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `rowNumber` bigint(20) NOT NULL COMMENT '统计行数',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_senddetail`
--

DROP TABLE IF EXISTS `l_senddetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_senddetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `sendId` varchar(32) NOT NULL COMMENT 'fk, refer to T_SEND',
  `productId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_PRODUCT',
  `category1Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 1',
  `category2Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 2',
  `category3Id` varchar(32) NOT NULL COMMENT 'fk refer to T_PRODUCTCATEGORY where level = 3',
  `productCode` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `productName` varchar(100) NOT NULL COMMENT '产品名称',
  `productUnit` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `shiptProductPrice` decimal(22,8) NOT NULL COMMENT '发货产品单价',
  `recProductPrice` decimal(22,8) NOT NULL COMMENT '收货产品单价',
  `shiptProductQty` decimal(20,6) NOT NULL COMMENT 'shipment product quantity发货的产品数量',
  `recProductQty` decimal(20,6) NOT NULL COMMENT 'receiving product quantity接收的产品数量',
  `shiptProductAmt` decimal(20,2) NOT NULL COMMENT 'shipment product amount发货的产品总额',
  `recProductAmt` decimal(20,2) NOT NULL COMMENT 'receiving product amount收货的产品总额',
  `productImg` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `orderDetailId` varchar(32) NOT NULL DEFAULT '' COMMENT 'fk, refer to L_OrderDetail''s id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `l_user_bank`
--

DROP TABLE IF EXISTS `l_user_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_user_bank` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `NAME` varchar(50) DEFAULT NULL COMMENT '姓名',
  `BANK_CODE` varchar(50) DEFAULT NULL COMMENT '银行账户号',
  `CREATE_BANK` varchar(50) DEFAULT NULL COMMENT '开户行',
  `BANK_PHONE` varchar(11) DEFAULT NULL COMMENT '手机',
  `STATUS` char(2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绑定银行卡表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_operation`
--

DROP TABLE IF EXISTS `log_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_operation` (
  `id` char(32) NOT NULL,
  `extDocType` tinyint(4) NOT NULL,
  `extDocCode` varchar(50) NOT NULL,
  `operator` varchar(32) DEFAULT NULL,
  `userName` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_activityconfig`
--

DROP TABLE IF EXISTS `mall_activityconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_activityconfig` (
  `id` varchar(32) NOT NULL COMMENT 'id，主键',
  `name` varchar(100) NOT NULL COMMENT '活动商城名称',
  `activityMallType` tinyint(4) NOT NULL COMMENT '活动商城类型.1：五金商城.2：陶瓷商城',
  `disabled` tinyint(4) NOT NULL COMMENT '禁用状态.0：已禁用.1：正常',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mall_activityconfigdetail`
--

DROP TABLE IF EXISTS `mall_activityconfigdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mall_activityconfigdetail` (
  `id` varchar(32) NOT NULL,
  `disabled` tinyint(4) NOT NULL COMMENT '禁用状态. 0：正常. 1：已禁用',
  `category1Id` varchar(32) DEFAULT NULL COMMENT '一级分类id',
  `category2Id` varchar(32) DEFAULT NULL COMMENT '二级分类id',
  `category3Id` varchar(32) DEFAULT NULL COMMENT '三级分类id',
  `supplierId` varchar(32) DEFAULT NULL COMMENT '供应商id',
  `productAttrId` varchar(32) DEFAULT NULL COMMENT '产品属性id. 目前对应l_product_spec_att.id',
  `activityConfigId` varchar(32) NOT NULL COMMENT 'Mall_ActivityConfig表的id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createdBy` varchar(64) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(64) NOT NULL COMMENT '更新人',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `category1Id` (`category1Id`) USING BTREE,
  KEY `category2Id` (`category2Id`) USING BTREE,
  KEY `category3Id` (`category3Id`) USING BTREE,
  KEY `supplierId` (`supplierId`) USING BTREE,
  KEY `productAttrId` (`productAttrId`) USING BTREE,
  KEY `activityConfigId` (`activityConfigId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_push`
--

DROP TABLE IF EXISTS `msg_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_push` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '消息内容体',
  `linkedUrl` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `msgType` smallint(6) NOT NULL COMMENT '消息的类型',
  `externalDataKey` varchar(50) DEFAULT NULL COMMENT '关联到业务数据id or code',
  `externalDataHandledStatus` tinyint(2) NOT NULL COMMENT '业务数据处理的状态：-1无需处理，1待处理，2已处理',
  `tagPushResult` smallint(6) DEFAULT NULL COMMENT '以标签推送的结果',
  `lastTagPushTime` datetime DEFAULT NULL COMMENT '最后以标签推送的时间',
  `lastTagPushedBy` varchar(64) DEFAULT NULL COMMENT '最后以标签推送的操作人',
  `tagPushCount` int(11) NOT NULL COMMENT '以标签推送的次数',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_push_bak_20170823`
--

DROP TABLE IF EXISTS `msg_push_bak_20170823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_push_bak_20170823` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '消息内容体',
  `linkedUrl` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `msgType` tinyint(4) NOT NULL COMMENT '消息的类型',
  `externalDataKey` varchar(50) DEFAULT NULL COMMENT '关联到业务数据id or code',
  `externalDataHandledStatus` tinyint(2) NOT NULL COMMENT '业务数据处理的状态：-1无需处理，1待处理，2已处理',
  `tagPushResult` smallint(6) DEFAULT NULL COMMENT '以标签推送的结果',
  `lastTagPushTime` datetime DEFAULT NULL COMMENT '最后以标签推送的时间',
  `lastTagPushedBy` varchar(64) DEFAULT NULL COMMENT '最后以标签推送的操作人',
  `tagPushCount` int(11) NOT NULL COMMENT '以标签推送的次数',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushdetail`
--

DROP TABLE IF EXISTS `msg_pushdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushdetail` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `msgPushId` varchar(255) NOT NULL COMMENT 'refer to Msg_Push''s id',
  `recUserId` varchar(32) DEFAULT NULL COMMENT '接收用户id',
  `recPhone` varchar(32) DEFAULT NULL COMMENT '接收用户id',
  `status` tinyint(2) NOT NULL COMMENT '消息推送状态（-1已删除，1未读，2已读）',
  `appPushResult` smallint(6) DEFAULT NULL COMMENT 'app推送结果（200成功， 500失败）',
  `smsPushResult` smallint(6) DEFAULT NULL COMMENT '短信推送结果（200成功， 500失败）',
  `smsPushCount` int(11) NOT NULL COMMENT '短信发送次数',
  `appPushCount` int(11) NOT NULL COMMENT 'app发送次数',
  `recCorporateId` varchar(32) NOT NULL COMMENT '接收企业id',
  `isSentByApp` tinyint(1) NOT NULL COMMENT '消息通过app发送',
  `isSentBySms` tinyint(1) NOT NULL COMMENT '消息通过sms发送',
  `lastPushTime` datetime NOT NULL COMMENT '最后一次推送时间',
  `lastPushedBy` varchar(64) NOT NULL COMMENT '最后一次推送操作人',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushdetail_bak_20170823`
--

DROP TABLE IF EXISTS `msg_pushdetail_bak_20170823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushdetail_bak_20170823` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `msgPushId` varchar(255) NOT NULL COMMENT 'refer to Msg_Push''s id',
  `recUserId` varchar(32) DEFAULT NULL COMMENT '接收用户id',
  `recPhone` varchar(32) DEFAULT NULL COMMENT '接收用户id',
  `status` tinyint(2) NOT NULL COMMENT '消息推送状态（-1已删除，1未读，2已读）',
  `appPushResult` smallint(6) DEFAULT NULL COMMENT 'app推送结果（200成功， 500失败）',
  `smsPushResult` smallint(6) DEFAULT NULL COMMENT '短信推送结果（200成功， 500失败）',
  `smsPushCount` int(11) NOT NULL COMMENT '短信发送次数',
  `appPushCount` int(11) NOT NULL COMMENT 'app发送次数',
  `recCorporateId` varchar(32) NOT NULL COMMENT '接收企业id',
  `isSentByApp` tinyint(1) NOT NULL COMMENT '消息通过app发送',
  `isSentBySms` tinyint(1) NOT NULL COMMENT '消息通过sms发送',
  `lastPushTime` datetime NOT NULL COMMENT '最后一次推送时间',
  `lastPushedBy` varchar(64) NOT NULL COMMENT '最后一次推送操作人',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushtag`
--

DROP TABLE IF EXISTS `msg_pushtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushtag` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `tagId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `msgPushId` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_msgPushTag_msgPushId` (`msgPushId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushtag_bak_20170823`
--

DROP TABLE IF EXISTS `msg_pushtag_bak_20170823`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushtag_bak_20170823` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `tagId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `msgPushId` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushtag_bak_20171219`
--

DROP TABLE IF EXISTS `msg_pushtag_bak_20171219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushtag_bak_20171219` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `tagId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `msgPushId` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushuseralias`
--

DROP TABLE IF EXISTS `msg_pushuseralias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushuseralias` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `registrationId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `alias` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushuseralias_bak_20171128`
--

DROP TABLE IF EXISTS `msg_pushuseralias_bak_20171128`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushuseralias_bak_20171128` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `registrationId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `alias` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msg_pushuseralias_bak_20171201`
--

DROP TABLE IF EXISTS `msg_pushuseralias_bak_20171201`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_pushuseralias_bak_20171201` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `registrationId` varchar(32) NOT NULL COMMENT '注册极光的id',
  `alias` varchar(32) NOT NULL COMMENT '别名，用户id',
  `createTime` datetime NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_app_user`
--

DROP TABLE IF EXISTS `sys_app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_app_user` (
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
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dictionary`
--

DROP TABLE IF EXISTS `sys_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionary` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `DKEY` varchar(20) DEFAULT NULL COMMENT '健',
  `VALUE` varchar(300) DEFAULT NULL COMMENT '值',
  `PID` varchar(50) DEFAULT NULL COMMENT '自关联ID',
  `SORT` int(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_dictionary_bak_20170518`
--

DROP TABLE IF EXISTS `sys_dictionary_bak_20170518`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionary_bak_20170518` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `DKEY` varchar(20) DEFAULT NULL COMMENT '健',
  `VALUE` varchar(300) DEFAULT NULL COMMENT '值',
  `PID` varchar(50) DEFAULT NULL COMMENT '自关联ID',
  `SORT` int(2) DEFAULT NULL COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_gl_qx`
--

DROP TABLE IF EXISTS `sys_gl_qx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `MENU_ORDER` int(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `description` varchar(15) DEFAULT NULL COMMENT '菜单说明',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_menu_bak_20170313`
--

DROP TABLE IF EXISTS `sys_menu_bak_20170313`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_bak_20170313` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` int(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_menu_bak_20170316`
--

DROP TABLE IF EXISTS `sys_menu_bak_20170316`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_bak_20170316` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` int(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_menu_bak_20170327`
--

DROP TABLE IF EXISTS `sys_menu_bak_20170327`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu_bak_20170327` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` int(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `description` varchar(15) DEFAULT NULL COMMENT '菜单说明'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_operate_log`
--

DROP TABLE IF EXISTS `sys_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_operate_log` (
  `id` varchar(36) NOT NULL,
  `loginName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `content` varchar(500) DEFAULT NULL COMMENT '业务说明',
  `operationTime` datetime DEFAULT NULL COMMENT '操作时间',
  `successed` varchar(10) DEFAULT NULL COMMENT '成功/失败',
  `detail` text COMMENT '失败详情',
  `userIp` varchar(100) DEFAULT NULL COMMENT '操作ip',
  `bId` varchar(50) DEFAULT NULL COMMENT '业务id(0未设置-1错误)',
  `type` varchar(100) DEFAULT NULL COMMENT '业务类型',
  `agent` varchar(500) DEFAULT NULL COMMENT '操作终端',
  `corporateUser_id` varchar(50) DEFAULT NULL COMMENT '企业id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_operate_log_201706`
--

DROP TABLE IF EXISTS `sys_operate_log_201706`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_operate_log_201706` (
  `id` varchar(36) NOT NULL,
  `loginName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `content` varchar(500) DEFAULT NULL COMMENT '业务说明',
  `operationTime` datetime DEFAULT NULL COMMENT '操作时间',
  `successed` varchar(10) DEFAULT NULL COMMENT '成功/失败',
  `detail` text COMMENT '失败详情',
  `userIp` varchar(100) DEFAULT NULL COMMENT '操作ip',
  `bId` varchar(50) DEFAULT NULL COMMENT '业务id(0未设置-1错误)',
  `type` varchar(100) DEFAULT NULL COMMENT '业务类型',
  `agent` varchar(500) DEFAULT NULL COMMENT '操作终端',
  `corporateUser_id` varchar(50) DEFAULT NULL COMMENT '企业id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `AUD_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  `CREATOR_ID` varchar(50) DEFAULT NULL,
  `ISPUB` int(1) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `OPT` int(1) DEFAULT NULL,
  `IMP_QX` varchar(255) DEFAULT NULL,
  `EXP_QX` varchar(255) DEFAULT NULL,
  `FIL_QX` varchar(255) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `unaud_qx` varchar(255) DEFAULT NULL,
  `close_qx` varchar(255) DEFAULT NULL,
  `unclose_qx` varchar(255) DEFAULT NULL,
  `print_qx` varchar(255) DEFAULT NULL,
  `c12_qx` varchar(255) DEFAULT NULL,
  `c13_qx` varchar(255) DEFAULT NULL,
  `c14_qx` varchar(255) DEFAULT NULL,
  `c15_qx` varchar(255) DEFAULT NULL,
  `c16_qx` varchar(255) DEFAULT NULL,
  `c17_qx` varchar(255) DEFAULT NULL,
  `c18_qx` varchar(255) DEFAULT NULL,
  `c19_qx` varchar(255) DEFAULT NULL,
  `c20_qx` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_role_bak_20170327`
--

DROP TABLE IF EXISTS `sys_role_bak_20170327`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_bak_20170327` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `AUD_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  `CREATOR_ID` varchar(50) DEFAULT NULL,
  `ISPUB` int(1) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `OPT` int(1) DEFAULT NULL,
  `IMP_QX` varchar(255) DEFAULT NULL,
  `EXP_QX` varchar(255) DEFAULT NULL,
  `FIL_QX` varchar(255) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `unaud_qx` varchar(255) DEFAULT NULL,
  `close_qx` varchar(255) DEFAULT NULL,
  `unclose_qx` varchar(255) DEFAULT NULL,
  `print_qx` varchar(255) DEFAULT NULL,
  `c12_qx` varchar(255) DEFAULT NULL,
  `c13_qx` varchar(255) DEFAULT NULL,
  `c14_qx` varchar(255) DEFAULT NULL,
  `c15_qx` varchar(255) DEFAULT NULL,
  `c16_qx` varchar(255) DEFAULT NULL,
  `c17_qx` varchar(255) DEFAULT NULL,
  `c18_qx` varchar(255) DEFAULT NULL,
  `c19_qx` varchar(255) DEFAULT NULL,
  `c20_qx` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_role_bak_20170328`
--

DROP TABLE IF EXISTS `sys_role_bak_20170328`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_bak_20170328` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `AUD_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  `CREATOR_ID` varchar(50) DEFAULT NULL,
  `ISPUB` int(1) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `OPT` int(1) DEFAULT NULL,
  `IMP_QX` varchar(255) DEFAULT NULL,
  `EXP_QX` varchar(255) DEFAULT NULL,
  `FIL_QX` varchar(255) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `unaud_qx` varchar(255) DEFAULT NULL,
  `close_qx` varchar(255) DEFAULT NULL,
  `unclose_qx` varchar(255) DEFAULT NULL,
  `print_qx` varchar(255) DEFAULT NULL,
  `c12_qx` varchar(255) DEFAULT NULL,
  `c13_qx` varchar(255) DEFAULT NULL,
  `c14_qx` varchar(255) DEFAULT NULL,
  `c15_qx` varchar(255) DEFAULT NULL,
  `c16_qx` varchar(255) DEFAULT NULL,
  `c17_qx` varchar(255) DEFAULT NULL,
  `c18_qx` varchar(255) DEFAULT NULL,
  `c19_qx` varchar(255) DEFAULT NULL,
  `c20_qx` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_rule`
--

DROP TABLE IF EXISTS `sys_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule` (
  `ID` varchar(255) NOT NULL DEFAULT '' COMMENT 'ID',
  `DEPOSIT_MONEY` decimal(20,2) DEFAULT NULL COMMENT '提现审核金额',
  `PAY_MONEY` decimal(20,2) DEFAULT NULL COMMENT '付款审核金额',
  `ZTL_ACCOUNT` varchar(50) DEFAULT NULL COMMENT '众陶联虚拟账号',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT 'DEPOSIT_MONEY',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `BEIYONG1` varchar(50) DEFAULT NULL COMMENT '备用字段1',
  `BEIYONG2` varchar(50) DEFAULT NULL COMMENT '备用2',
  `BEIYONG3` varchar(50) DEFAULT NULL COMMENT '备用3',
  `BEIYONG4` varchar(50) DEFAULT NULL COMMENT '备用4',
  `BEIYONG5` varchar(50) DEFAULT NULL COMMENT '备用5',
  `phone` varchar(11) DEFAULT NULL COMMENT '提现自动审核通知的手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '提现自动审核通知的邮箱地址',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `sys_user_qx`
--

DROP TABLE IF EXISTS `sys_user_qx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_userrole`
--

DROP TABLE IF EXISTS `sys_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_userrole` (
  `userId` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_version`
--

DROP TABLE IF EXISTS `sys_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_version` (
  `ID` varchar(50) NOT NULL COMMENT '版本表id',
  `VERSION` decimal(20,0) DEFAULT NULL,
  `minSupportVersion` varchar(32) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL COMMENT '类型：0-安卓；1-IOS',
  `IS_LEVELUP` int(11) DEFAULT '0' COMMENT '是否强制更新：0-否；1-是',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '上传人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '上传时间',
  `versionFSInfoId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_version_bak_20170919`
--

DROP TABLE IF EXISTS `sys_version_bak_20170919`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_version_bak_20170919` (
  `ID` varchar(50) NOT NULL COMMENT '版本表id',
  `VERSION` varchar(50) DEFAULT NULL,
  `FILE_PATH` varchar(200) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL COMMENT '类型：0-安卓；1-IOS',
  `IS_LEVELUP` int(11) DEFAULT '0' COMMENT '是否强制更新：0-否；1-是',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '上传人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '上传时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sys_work_day`
--

DROP TABLE IF EXISTS `sys_work_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_work_day` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `dateStr` date NOT NULL COMMENT '日期，格式yyyy-MM-dd',
  `weekStr` varchar(6) NOT NULL COMMENT '星期，如：星期一',
  `isWorkDay` tinyint(4) NOT NULL COMMENT '是否为工作日.0：否.1：是',
  `holiday` varchar(30) DEFAULT NULL COMMENT '节假日信息',
  `remark` varchar(500) DEFAULT NULL COMMENT '描述',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `PARENTACCTOUNT` varchar(50) DEFAULT NULL COMMENT '结算账号',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '虚拟子账号',
  `ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '虚拟子账号户名',
  `FR_NAME` varchar(20) DEFAULT NULL COMMENT '法人姓名',
  `FR_CODE_TYPE` char(2) DEFAULT NULL COMMENT '法人证件类型',
  `FR_CODE` varchar(30) DEFAULT NULL COMMENT '法人身份证号',
  `FR_TEL` varchar(20) DEFAULT NULL COMMENT '法人联系电话',
  `FR_PHONE` varchar(20) DEFAULT NULL COMMENT '接收账户变动短信提醒手机号码',
  `LRRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业录入员姓名',
  `LRRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业录入员职务',
  `LRRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业录入员联系电话',
  `LRRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业录入员QQ号码',
  `LRRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业录入员证件类型',
  `LRRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业录入员证件号码',
  `FHRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业复核员姓名',
  `FHRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业复核员职务',
  `FHRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业复核员联系电话',
  `FHRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业复核员QQ号码',
  `FHRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业复核员证件类型',
  `FHRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业复核员证件号码',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID',
  `ACCOUNT_SATUES` char(2) DEFAULT NULL COMMENT '账户状态账户状态：00启用，01禁用',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `ACCOUNT_ADDRESS` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `YYZZ` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `JGDM` varchar(200) DEFAULT NULL COMMENT '机构代码',
  `GSDJ` varchar(200) DEFAULT NULL COMMENT '国税登记证',
  `QYLRY` varchar(200) DEFAULT NULL COMMENT '企业录入员',
  `FHY` varchar(200) DEFAULT NULL COMMENT '复核员身份',
  `JYZH` varchar(200) DEFAULT NULL COMMENT '交易账户申请书',
  `APPLY_STATUS` char(2) DEFAULT NULL COMMENT '01已提交02已通过03不通过',
  `REFUSE` varchar(300) DEFAULT NULL COMMENT '拒绝原因',
  `SUBMIT_TIME` datetime DEFAULT NULL COMMENT '提交时间',
  `OPEN_TIME` datetime DEFAULT NULL COMMENT '开户时间',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '支付密码找回邮箱',
  `ZR_NAME` varchar(50) DEFAULT NULL COMMENT '重要信件接收人姓名',
  `ZR_CODE` varchar(50) DEFAULT NULL COMMENT '重要信件接收人身份证号',
  `LRRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业录入员身份证反面图片',
  `FHRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业复核员身份证反面图片',
  `FR_CODE_TYPE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL COMMENT '银行开户许可证图片路径',
  `applicantIdCardPic` varchar(255) DEFAULT NULL COMMENT '申请人身份证照片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_account_bak_20170828`
--

DROP TABLE IF EXISTS `t_account_bak_20170828`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_bak_20170828` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `PARENTACCTOUNT` varchar(50) DEFAULT NULL COMMENT '结算账号',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '虚拟子账号',
  `ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '虚拟子账号户名',
  `FR_NAME` varchar(20) DEFAULT NULL COMMENT '法人姓名',
  `FR_CODE_TYPE` char(2) DEFAULT NULL COMMENT '法人证件类型',
  `FR_CODE` varchar(30) DEFAULT NULL COMMENT '法人身份证号',
  `FR_TEL` varchar(20) DEFAULT NULL COMMENT '法人联系电话',
  `FR_PHONE` varchar(20) DEFAULT NULL COMMENT '接收账户变动短信提醒手机号码',
  `LRRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业录入员姓名',
  `LRRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业录入员职务',
  `LRRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业录入员联系电话',
  `LRRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业录入员QQ号码',
  `LRRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业录入员证件类型',
  `LRRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业录入员证件号码',
  `FHRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业复核员姓名',
  `FHRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业复核员职务',
  `FHRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业复核员联系电话',
  `FHRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业复核员QQ号码',
  `FHRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业复核员证件类型',
  `FHRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业复核员证件号码',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID',
  `ACCOUNT_SATUES` char(2) DEFAULT NULL COMMENT '账户状态账户状态：00启用，01禁用',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `ACCOUNT_ADDRESS` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `YYZZ` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `JGDM` varchar(200) DEFAULT NULL COMMENT '机构代码',
  `GSDJ` varchar(200) DEFAULT NULL COMMENT '国税登记证',
  `QYLRY` varchar(200) DEFAULT NULL COMMENT '企业录入员',
  `FHY` varchar(200) DEFAULT NULL COMMENT '复核员身份',
  `JYZH` varchar(200) DEFAULT NULL COMMENT '交易账户申请书',
  `APPLY_STATUS` char(2) DEFAULT NULL COMMENT '01已提交02已通过03不通过',
  `REFUSE` varchar(300) DEFAULT NULL COMMENT '拒绝原因',
  `SUBMIT_TIME` datetime DEFAULT NULL COMMENT '提交时间',
  `OPEN_TIME` datetime DEFAULT NULL COMMENT '开户时间',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '支付密码找回邮箱',
  `ZR_NAME` varchar(50) DEFAULT NULL COMMENT '重要信件接收人姓名',
  `ZR_CODE` varchar(50) DEFAULT NULL COMMENT '重要信件接收人身份证号',
  `LRRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业录入员身份证反面图片',
  `FHRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业复核员身份证反面图片',
  `FR_CODE_TYPE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL COMMENT '银行开户许可证图片路径',
  `applicantIdCardPic` varchar(255) DEFAULT NULL COMMENT '申请人身份证照片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_account_bak_part_20170830`
--

DROP TABLE IF EXISTS `t_account_bak_part_20170830`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_bak_part_20170830` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `PARENTACCTOUNT` varchar(50) DEFAULT NULL COMMENT '结算账号',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '虚拟子账号',
  `ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '虚拟子账号户名',
  `FR_NAME` varchar(20) DEFAULT NULL COMMENT '法人姓名',
  `FR_CODE_TYPE` char(2) DEFAULT NULL COMMENT '法人证件类型',
  `FR_CODE` varchar(30) DEFAULT NULL COMMENT '法人身份证号',
  `FR_TEL` varchar(20) DEFAULT NULL COMMENT '法人联系电话',
  `FR_PHONE` varchar(20) DEFAULT NULL COMMENT '接收账户变动短信提醒手机号码',
  `LRRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业录入员姓名',
  `LRRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业录入员职务',
  `LRRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业录入员联系电话',
  `LRRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业录入员QQ号码',
  `LRRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业录入员证件类型',
  `LRRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业录入员证件号码',
  `FHRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业复核员姓名',
  `FHRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业复核员职务',
  `FHRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业复核员联系电话',
  `FHRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业复核员QQ号码',
  `FHRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业复核员证件类型',
  `FHRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业复核员证件号码',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID',
  `ACCOUNT_SATUES` char(2) DEFAULT NULL COMMENT '账户状态账户状态：00启用，01禁用',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `ACCOUNT_ADDRESS` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `YYZZ` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `JGDM` varchar(200) DEFAULT NULL COMMENT '机构代码',
  `GSDJ` varchar(200) DEFAULT NULL COMMENT '国税登记证',
  `QYLRY` varchar(200) DEFAULT NULL COMMENT '企业录入员',
  `FHY` varchar(200) DEFAULT NULL COMMENT '复核员身份',
  `JYZH` varchar(200) DEFAULT NULL COMMENT '交易账户申请书',
  `APPLY_STATUS` char(2) DEFAULT NULL COMMENT '01已提交02已通过03不通过',
  `REFUSE` varchar(300) DEFAULT NULL COMMENT '拒绝原因',
  `SUBMIT_TIME` datetime DEFAULT NULL COMMENT '提交时间',
  `OPEN_TIME` datetime DEFAULT NULL COMMENT '开户时间',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '支付密码找回邮箱',
  `ZR_NAME` varchar(50) DEFAULT NULL COMMENT '重要信件接收人姓名',
  `ZR_CODE` varchar(50) DEFAULT NULL COMMENT '重要信件接收人身份证号',
  `LRRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业录入员身份证反面图片',
  `FHRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业复核员身份证反面图片',
  `FR_CODE_TYPE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL COMMENT '银行开户许可证图片路径',
  `applicantIdCardPic` varchar(255) DEFAULT NULL COMMENT '申请人身份证照片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_account_bank_20170626`
--

DROP TABLE IF EXISTS `t_account_bank_20170626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_bank_20170626` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `PARENTACCTOUNT` varchar(50) DEFAULT NULL COMMENT '结算账号',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '虚拟子账号',
  `ACCOUNT_NAME` varchar(122) DEFAULT NULL COMMENT '虚拟子账号户名',
  `FR_NAME` varchar(20) DEFAULT NULL COMMENT '法人姓名',
  `FR_CODE_TYPE` char(2) DEFAULT NULL COMMENT '法人证件类型',
  `FR_CODE` varchar(30) DEFAULT NULL COMMENT '法人身份证号',
  `FR_TEL` varchar(20) DEFAULT NULL COMMENT '法人联系电话',
  `FR_PHONE` varchar(20) DEFAULT NULL COMMENT '接收账户变动短信提醒手机号码',
  `LRRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业录入员姓名',
  `LRRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业录入员职务',
  `LRRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业录入员联系电话',
  `LRRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业录入员QQ号码',
  `LRRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业录入员证件类型',
  `LRRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业录入员证件号码',
  `FHRY_NAME` varchar(20) DEFAULT NULL COMMENT '企业复核员姓名',
  `FHRY_POSITION` varchar(20) DEFAULT NULL COMMENT '企业复核员职务',
  `FHRY_PHONE` varchar(20) DEFAULT NULL COMMENT '企业复核员联系电话',
  `FHRY_QQ` varchar(20) DEFAULT NULL COMMENT '企业复核员QQ号码',
  `FHRY_CODE_TYPE` char(2) DEFAULT NULL COMMENT '企业复核员证件类型',
  `FHRY_CODE` varchar(30) DEFAULT NULL COMMENT '企业复核员证件号码',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID',
  `ACCOUNT_SATUES` char(2) DEFAULT NULL COMMENT '账户状态账户状态：00启用，01禁用',
  `PASSWORD` varchar(50) DEFAULT NULL COMMENT '支付密码',
  `PASSWORD_STEP` char(2) DEFAULT NULL COMMENT '密码级别01弱级02中级03较安全',
  `BALANCE` decimal(20,2) DEFAULT NULL COMMENT '余额',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `ACCOUNT_ADDRESS` varchar(200) DEFAULT NULL COMMENT '联系地址',
  `YYZZ` varchar(200) DEFAULT NULL COMMENT '营业执照',
  `JGDM` varchar(200) DEFAULT NULL COMMENT '机构代码',
  `GSDJ` varchar(200) DEFAULT NULL COMMENT '国税登记证',
  `QYLRY` varchar(200) DEFAULT NULL COMMENT '企业录入员',
  `FHY` varchar(200) DEFAULT NULL COMMENT '复核员身份',
  `JYZH` varchar(200) DEFAULT NULL COMMENT '交易账户申请书',
  `APPLY_STATUS` char(2) DEFAULT NULL COMMENT '01已提交02已通过03不通过',
  `REFUSE` varchar(300) DEFAULT NULL COMMENT '拒绝原因',
  `SUBMIT_TIME` datetime DEFAULT NULL COMMENT '提交时间',
  `OPEN_TIME` datetime DEFAULT NULL COMMENT '开户时间',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '支付密码找回邮箱',
  `ZR_NAME` varchar(50) DEFAULT NULL COMMENT '重要信件接收人姓名',
  `ZR_CODE` varchar(50) DEFAULT NULL COMMENT '重要信件接收人身份证号',
  `LRRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业录入员身份证反面图片',
  `FHRY_ID_CARD_SIDE_2_PIC` varchar(255) DEFAULT NULL COMMENT '企业复核员身份证反面图片',
  `FR_CODE_TYPE_PIC` varchar(255) DEFAULT NULL,
  `BANKACCOUNT_PERMIT` varchar(255) DEFAULT NULL COMMENT '银行开户许可证图片路径',
  `applicantIdCardPic` varchar(255) DEFAULT NULL COMMENT '申请人身份证照片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_account_bank_bank_20170626`
--

DROP TABLE IF EXISTS `t_account_bank_bank_20170626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_bank_bank_20170626` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID',
  `NAME` varchar(100) DEFAULT NULL COMMENT '户名（需要与企业名称一致）',
  `BANK_NO` varchar(50) DEFAULT NULL COMMENT '联行号',
  `BANK_CODE` varchar(50) DEFAULT NULL COMMENT '账号',
  `BANK_NAME` varchar(100) DEFAULT NULL COMMENT '开户行',
  `SUBBANK_PROVICE` varchar(20) DEFAULT NULL COMMENT '开户支行省',
  `SUBBANK_CITY` varchar(20) DEFAULT NULL COMMENT '开户支行市',
  `SUBBANK_KEYWORD` varchar(20) DEFAULT NULL COMMENT '开户支行关键字',
  `SUBBANK_NAME` varchar(100) DEFAULT NULL COMMENT '开户支行名称',
  `BANK_TYPE` char(2) DEFAULT NULL COMMENT '类型01指定出金账户02已开通广发银行对公账户',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `BANK_PIC` varchar(255) DEFAULT NULL COMMENT '出金账户正反面',
  `bankPicId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_activity`
--

DROP TABLE IF EXISTS `t_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_activity` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '活动名称',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `smstempl` varchar(1000) DEFAULT NULL COMMENT '短信模板',
  `createTime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedby` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_activityapply`
--

DROP TABLE IF EXISTS `t_activityapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_activityapply` (
  `id` varchar(32) NOT NULL,
  `activityId` varchar(32) NOT NULL COMMENT '关联t_activity的id',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `createTime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedby` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_activitymallconfig`
--

DROP TABLE IF EXISTS `t_activitymallconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_activitymallconfig` (
  `id` varchar(32) NOT NULL COMMENT 'id，主键',
  `name` varchar(100) NOT NULL COMMENT '活动商城名称',
  `activityMallType` tinyint(4) NOT NULL COMMENT '活动商城类型.1：五金商城.2：陶瓷商城',
  `disabled` tinyint(4) NOT NULL COMMENT '禁用状态.0：正常.1：已禁用',
  `supplierId` varchar(32) NOT NULL COMMENT '供应商id',
  `category1Id` varchar(32) NOT NULL COMMENT '一级分类id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`supplierId`,`category1Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_advert`
--

DROP TABLE IF EXISTS `t_advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_advert` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `TITLE` varchar(99) DEFAULT NULL COMMENT 'title',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'CONTENT',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'STATUS',
  `CREATETIME` datetime DEFAULT NULL COMMENT 'CREATETIME',
  `ISSHOW` varchar(10) DEFAULT NULL COMMENT 'ISSHOW',
  `CREATEUSER` varchar(50) DEFAULT NULL COMMENT 'CREATEUSER',
  `ADV_ORDER` int(2) DEFAULT '0',
  `imgFSInfoId` varchar(32) DEFAULT NULL,
  `recommendSize` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_advert_bak_20171023`
--

DROP TABLE IF EXISTS `t_advert_bak_20171023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_advert_bak_20171023` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `TITLE` varchar(99) DEFAULT NULL COMMENT 'title',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT 'CONTENT',
  `STATUS` varchar(10) DEFAULT NULL COMMENT 'STATUS',
  `IMGPATH` varchar(255) DEFAULT NULL COMMENT 'IMGPATH',
  `CREATETIME` datetime DEFAULT NULL COMMENT 'CREATETIME',
  `ISSHOW` varchar(10) DEFAULT NULL COMMENT 'ISSHOW',
  `CREATEUSER` varchar(50) DEFAULT NULL COMMENT 'CREATEUSER',
  `ADV_ORDER` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_auction`
--

DROP TABLE IF EXISTS `t_auction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_auction` (
  `ID` varchar(64) NOT NULL,
  `SN` varchar(50) DEFAULT NULL COMMENT '竞拍编号',
  `PRODUCT_NAME` varchar(64) DEFAULT NULL COMMENT '产品id',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户id',
  `DEPOSIT_TYPE` tinyint(4) DEFAULT '0' COMMENT '保证金类型：0，数字，1，百分比',
  `STATUS` int(2) DEFAULT '0' COMMENT '状态 0：已审核未开始，1：竞拍中，2：竞拍成功，3：竞拍失败，4：交易中，6：竞价待审核，8：审核未通过，22,：供应商报名待审核',
  `AUCTION_AREA` varchar(64) DEFAULT NULL COMMENT '竞拍地区',
  `BEGINTIME` datetime DEFAULT NULL COMMENT '开始时间',
  `ENDTIME` datetime DEFAULT NULL COMMENT '结束时间',
  `EXP_PRICE` decimal(15,2) DEFAULT NULL COMMENT '起始价格',
  `QUANTITY` decimal(15,3) DEFAULT NULL COMMENT '竞拍数量',
  `PRICE_RANGE` int(11) DEFAULT NULL COMMENT '减价幅度',
  `PRICE_INTERVAL` decimal(15,2) DEFAULT NULL COMMENT '报价金额间隔',
  `PROVIDER_DEPOSIT` decimal(15,2) DEFAULT NULL COMMENT '供应商保证金金额',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UNIT` varchar(24) DEFAULT NULL COMMENT '单位',
  `RECEIVER_ADDRESS` varchar(128) DEFAULT NULL COMMENT '收货地',
  `TIME_INTERVAL` int(4) DEFAULT NULL COMMENT '单位分钟',
  `REQUIRE_ID` varchar(64) DEFAULT NULL COMMENT '需求id,对应T_REQUIRE表id',
  `CUOHEJUNJIA` decimal(15,2) DEFAULT '0.00' COMMENT '撮合均价',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '其他要求',
  `CLASS1` varchar(60) DEFAULT NULL COMMENT '一级分类',
  `CLASS2` varchar(60) DEFAULT NULL COMMENT '二级分类',
  `CLASS3` varchar(60) DEFAULT NULL COMMENT '三级分类',
  `APPLY_COM` varchar(60) DEFAULT NULL COMMENT '申请企业',
  `CONTACT` varchar(50) DEFAULT NULL COMMENT '联系人',
  `TEl` varchar(50) DEFAULT NULL COMMENT 'l联系电话',
  `REQ_DATE` date DEFAULT NULL COMMENT '需求日期',
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县',
  `PAGEHTML` text COMMENT '产品详情',
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `REFUESE` varchar(1000) DEFAULT NULL,
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_auction_price`
--

DROP TABLE IF EXISTS `t_auction_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_auction_price` (
  `ID` varchar(50) NOT NULL DEFAULT '',
  `AUCTION_ID` varchar(50) DEFAULT NULL COMMENT '竞拍id',
  `AUCTION_PRICE` decimal(15,2) DEFAULT NULL COMMENT '报价金额',
  `PROVIDER_ID` varchar(50) DEFAULT NULL COMMENT '竞拍供应商id',
  `AUCTION_TIME` datetime DEFAULT NULL COMMENT '报价时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_auction_provider_apply`
--

DROP TABLE IF EXISTS `t_auction_provider_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_auction_provider_apply` (
  `ID` varchar(64) NOT NULL,
  `AUCTION_ID` varchar(64) DEFAULT NULL COMMENT '竞价id',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户id',
  `STATUS` int(2) DEFAULT '0' COMMENT '状态  0:待审核， 1：已审核，2：未通过',
  `MARGIN` int(2) DEFAULT NULL COMMENT '保证金',
  `DEPOSIT_ID` varchar(50) DEFAULT NULL COMMENT '保证金id，对应t_deposit表id',
  `CREATETIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bank_slip_bind`
--

DROP TABLE IF EXISTS `t_bank_slip_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bank_slip_bind` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ACCOUNT` varchar(32) NOT NULL COMMENT '虚拟子账号，与T_ACCOUNT表的ACCOUNT表进行关联（与MOBILE字段构成唯一识别）',
  `MOBILE` varchar(11) NOT NULL COMMENT '手机号码',
  `USERNAME` varchar(100) NOT NULL COMMENT '用户姓名',
  `CERT_TYPE` char(2) NOT NULL COMMENT '证件类型.01：身份证.02：士兵证.03：护照.04：户口簿.05：港澳来往内地通行证.06：台湾同胞来往内地通行证',
  `CERT_NO` varchar(60) NOT NULL COMMENT '证件号码',
  `RESERVE1` varchar(100) DEFAULT NULL COMMENT '预留字段1',
  `RESERVE2` varchar(100) DEFAULT NULL COMMENT '预留字段2',
  `RESERVE3` varchar(100) DEFAULT NULL COMMENT '预留字段3',
  `STATUS` int(11) DEFAULT '0' COMMENT '状态.0：已签约，默认值.1：已取消签约',
  `CREATE_USER_ID` varchar(50) DEFAULT NULL COMMENT '创建绑定的用户ID',
  `UPDATE_USER_ID` varchar(50) DEFAULT NULL COMMENT '修改绑定的用户ID',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ID`),
  KEY `BANK_SLIP_ACCOUNT` (`ACCOUNT`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='电子回单查询员绑定记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bigorder_inf`
--

DROP TABLE IF EXISTS `t_bigorder_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bigorder_inf` (
  `ID` int(50) NOT NULL COMMENT '主键',
  `NAME` varchar(32) NOT NULL COMMENT '类别',
  `VALUE` varchar(20) NOT NULL COMMENT '目标金额',
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bill`
--

DROP TABLE IF EXISTS `t_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bill` (
  `ID` varchar(50) NOT NULL COMMENT '主键',
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL COMMENT '公司ID ',
  `BILL_CODE` varchar(50) DEFAULT NULL,
  `BILL_TYPE` int(11) DEFAULT '-1' COMMENT '0：支票. 1：商业承兑汇票. 2：银行承兑汇票',
  `BILL_MONEY` decimal(18,2) DEFAULT '0.00' COMMENT '票据金额',
  `BANK_NAME` varchar(50) DEFAULT NULL COMMENT '开户行',
  `OUT_NAME` varchar(255) DEFAULT NULL COMMENT '开票人名称',
  `IN_NAME` varchar(255) DEFAULT NULL COMMENT '收票人名称',
  `OUT_DATE` datetime DEFAULT NULL COMMENT '出票日期',
  `END_DATE` datetime DEFAULT NULL COMMENT '到期日期',
  `PIC_PATHS` text COMMENT '票据图片路径',
  `IS_EXCHANGE` int(11) DEFAULT '0' COMMENT '是否已兑票.0：未兑票（缺省值）. 1：已兑票',
  `EXCHANGE_TIME` datetime DEFAULT NULL COMMENT '实际的兑票收款时间(线下票据收到款的时间，由用户录入）',
  `IN_MONEY_PIC_PATH` varchar(511) DEFAULT NULL COMMENT '进账单附件',
  `IN_MONEY_DESC` varchar(500) DEFAULT NULL COMMENT '其他说明',
  `MONEY_SF` decimal(18,2) DEFAULT '0.00' COMMENT '已付金额',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `DO_EXCHANGE_TIME` datetime DEFAULT NULL COMMENT '用户提交确认收款的时间',
  `RECV_TIME` datetime DEFAULT NULL COMMENT '用户提交确认收票的时间',
  `DO_RECV_TIME` datetime DEFAULT NULL COMMENT '用户提交确认收票的时间',
  `dataType` tinyint(4) NOT NULL COMMENT '数据类型.1.支付数据2.单边业务数据',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bizaudit`
--

DROP TABLE IF EXISTS `t_bizaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bizaudit` (
  `id` varchar(32) NOT NULL,
  `extDocType` tinyint(4) NOT NULL COMMENT '业务类型.1：订单审核.2：单边订单审核.3：发货单审核',
  `extDocCode` varchar(32) NOT NULL COMMENT '业务编号',
  `type` tinyint(4) NOT NULL COMMENT '操作类型.1：企业发起. 2：企业复核（企业内部审核）. 3：付款方确认（订单确认）. 4：收款方确认（订单确认）. 5：平台确认（订单确认）. 6：平台发起. 7：平台审核（平台一审）. 8：平台复核（平台二审）. 9：返审（单边订单用到）',
  `disabled` tinyint(1) NOT NULL COMMENT '禁用状态. 0：正常. 1：已禁用',
  `status` tinyint(1) NOT NULL COMMENT '审核状态. 1：通过. 2：不通过',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注，主要用于存放通过和不通过的说明',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bizaudit_bak_20171020`
--

DROP TABLE IF EXISTS `t_bizaudit_bak_20171020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bizaudit_bak_20171020` (
  `id` varchar(32) NOT NULL,
  `extDocType` tinyint(4) NOT NULL COMMENT '业务类型.1：订单审核.2：单边订单审核.3：发货单审核',
  `extDocCode` varchar(32) NOT NULL COMMENT '业务编号',
  `type` tinyint(4) NOT NULL COMMENT '操作类型.1：企业发起. 2：企业复核（企业内部审核）. 3：付款方确认（订单确认）. 4：收款方确认（订单确认）. 5：平台确认（订单确认）. 6：平台发起. 7：平台审核（平台一审）. 8：平台复核（平台二审）. 9：返审（单边订单用到）',
  `disabled` tinyint(1) NOT NULL COMMENT '禁用状态. 0：正常. 1：已禁用',
  `status` tinyint(1) NOT NULL COMMENT '审核状态. 1：通过. 2：不通过',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注，主要用于存放通过和不通过的说明',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_bizaudit_bak_20171109`
--

DROP TABLE IF EXISTS `t_bizaudit_bak_20171109`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_bizaudit_bak_20171109` (
  `id` varchar(32) NOT NULL,
  `extDocType` tinyint(4) NOT NULL COMMENT '业务类型.1：订单审核.2：单边订单审核.3：发货单审核',
  `extDocCode` varchar(32) NOT NULL COMMENT '业务编号',
  `type` tinyint(4) NOT NULL COMMENT '操作类型.1：企业发起. 2：企业复核（企业内部审核）. 3：付款方确认（订单确认）. 4：收款方确认（订单确认）. 5：平台确认（订单确认）. 6：平台发起. 7：平台审核（平台一审）. 8：平台复核（平台二审）. 9：返审（单边订单用到）',
  `disabled` tinyint(1) NOT NULL COMMENT '禁用状态. 0：正常. 1：已禁用',
  `status` tinyint(1) NOT NULL COMMENT '审核状态. 1：通过. 2：不通过',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注，主要用于存放通过和不通过的说明',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_brandmgr`
--

DROP TABLE IF EXISTS `t_brandmgr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_brandmgr` (
  `BRAND_ID` varchar(64) NOT NULL COMMENT '品牌ID',
  `NAME` varchar(255) NOT NULL COMMENT '品牌名称',
  `PATH` varchar(255) NOT NULL COMMENT '品牌logo路径',
  `BRANDHTML` longtext COMMENT '品牌网页',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `BRANDTYPE` decimal(1,0) DEFAULT NULL COMMENT '品牌分类',
  PRIMARY KEY (`BRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_brokered`
--

DROP TABLE IF EXISTS `t_brokered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_brokered` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID唯一值',
  `REQUIRE_ID` varchar(50) DEFAULT NULL COMMENT '需求ID,关联T_REQUIRE的ID',
  `CATEGORY_TYPE` int(1) DEFAULT '0' COMMENT '推荐分类，0：企业产品，1：集采活动',
  `RECOMMEND_COM_ID` varchar(50) DEFAULT NULL COMMENT '推荐的企业ID,关联T_CORPORATEUSER的ID',
  `REQUIRE_COM_ID` varchar(50) DEFAULT NULL COMMENT '需求企业ID,关联T_CORPORATEUSER的ID',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品编号，关联T_PRODUCT',
  `GROUP_BUY_ID` varchar(64) DEFAULT NULL COMMENT '集采ID，关联T_GROUP_BUY_LIST的ID',
  `OFFERPRICE` decimal(22,8) DEFAULT '0.00000000' COMMENT '商家报价',
  `STATUS` int(2) DEFAULT NULL COMMENT '状态（0：报价中，1：待推送，2：已推送，3：已关闭，4：达成意向，5：参与集采，6：撮合成功）',
  `PERIOD_TYPE` int(1) DEFAULT '0' COMMENT '撮合阶段（0：供应商，1：采购商）',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `IS_RECOMMEND` int(1) DEFAULT '0' COMMENT '是否被推荐（0：否，1：是）',
  `START_EFFECTIVE_DATE` date DEFAULT NULL COMMENT '报价有效开始日',
  `END_EFFECTIVE_DATE` date DEFAULT NULL COMMENT '报价有效结束日',
  `PRICE_EXPLAIN` varchar(500) DEFAULT NULL COMMENT '报价说明',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_car_length`
--

DROP TABLE IF EXISTS `t_car_length`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_car_length` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '运输方式表ID',
  `NAME` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_car_type`
--

DROP TABLE IF EXISTS `t_car_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_car_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '车型ID',
  `NAME` varchar(10) NOT NULL DEFAULT '' COMMENT '车型名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_cargood`
--

DROP TABLE IF EXISTS `t_cargood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cargood` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NUM` decimal(20,6) DEFAULT '0.000000' COMMENT '产品数量',
  `COOKIENAME` varchar(50) DEFAULT NULL COMMENT 'cookie名称',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `productCessId` varchar(32) DEFAULT NULL COMMENT '产品税率ID, refer to t_product_cess''s id',
  `productCostId` varchar(32) DEFAULT NULL COMMENT '产品帐期ID, refer to t_product_cost''s id',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '购物车里的商品状态, 1:未提交订单，2：已提交订单，3：已失效',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_cargood_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_cargood_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cargood_bak_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `GOODS_ID` varchar(50) DEFAULT NULL COMMENT '商品ID',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NUM` decimal(20,6) DEFAULT '0.000000' COMMENT '产品数量',
  `COOKIENAME` varchar(50) DEFAULT NULL COMMENT 'cookie名称',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_carousel`
--

DROP TABLE IF EXISTS `t_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_carousel` (
  `ID` varchar(50) NOT NULL COMMENT 'id',
  `IMGPATH` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `STATE` int(11) DEFAULT '0' COMMENT '状态',
  `ISSHOW` int(11) DEFAULT '1' COMMENT '是否显示 1是 0否',
  `LINKURL` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `IMG_TYPE` int(11) DEFAULT '0' COMMENT '图片类型',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATEUSER` varchar(255) DEFAULT NULL COMMENT '创建人',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATEUSER` varchar(255) DEFAULT NULL COMMENT '修改人',
  `NUMBER` int(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_collect`
--

DROP TABLE IF EXISTS `t_collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_collect` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `USER_ID` varchar(50) NOT NULL COMMENT '用户ID',
  `COLLECTID` varchar(50) NOT NULL COMMENT '收藏品ID',
  `CTYPE` char(2) NOT NULL COMMENT '收藏类型 0采购1供应2服务3产品4集采5竞拍',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CSTATUES` char(1) NOT NULL COMMENT '收藏状态',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_complain`
--

DROP TABLE IF EXISTS `t_complain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_complain` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `COMLPAIN_CODE` varchar(50) DEFAULT NULL COMMENT '编号',
  `COMLPAIN_ORDER` varchar(50) DEFAULT NULL COMMENT '订单编辑',
  `COMLPAIN_USER` varchar(50) DEFAULT NULL COMMENT '投诉人ID',
  `COMLPAIN_USERNAME` varchar(50) DEFAULT NULL COMMENT '投诉人用户名',
  `COMLPAIN_TITLE` varchar(100) DEFAULT NULL COMMENT '投诉标题',
  `COMLPAIN_CONTENT` varchar(1000) DEFAULT NULL COMMENT '投诉内容',
  `CREATETIME` datetime DEFAULT NULL COMMENT '投诉日期',
  `STATUES` char(1) DEFAULT NULL COMMENT '状态',
  `REPLAY` varchar(1000) DEFAULT NULL COMMENT '处理意见',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `FILESPATH` varchar(500) DEFAULT NULL COMMENT '附件路径',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_COMPLAIN` BEFORE INSERT ON `t_complain` FOR EACH ROW begin
    declare olddate varchar(12);
    declare newdate varchar(12);
    declare c_code  varchar(50);
    declare mdate   datetime;
    declare tmpvar  int;
    set newdate=DATE_FORMAT(now(), "%Y%m%d");
    set mdate=(select max(CREATETIME) from T_COMPLAIN);
    set c_code=(select COMLPAIN_CODE  from T_COMPLAIN where CREATETIME = mdate order by COMLPAIN_CODE desc limit 1);
    set olddate=(select DATE_FORMAT(CREATETIME, "%Y%m%d") from T_COMPLAIN where CREATETIME = mdate order by COMLPAIN_CODE desc limit 1);
    if olddate = newdate then
        set tmpvar=cast(right(c_code, 4) as signed) + 1;
        set new.COMLPAIN_CODE=concat("TS", newdate, lpad(tmpvar, 4, "0"));
    else
        set new.COMLPAIN_CODE=concat("TS", newdate, "0001");
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_contract`
--

DROP TABLE IF EXISTS `t_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contract` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `CONTRACT_CODE` varchar(50) NOT NULL COMMENT '合同编号',
  `CONTRACT_TITLE` varchar(255) DEFAULT NULL COMMENT '合同标题',
  `CONTRACT_STATUS` char(2) DEFAULT NULL COMMENT '合同状态（01：未发起合同，02：待供应商确认，03：待采购商确认，04：待平台确认，05：已生效，06：平台未通过）',
  `CONTRACT_CONTENT` text COMMENT '合同内容',
  `CONTRACT_BUYRR_ID` varchar(50) DEFAULT NULL COMMENT '采购商ID',
  `CONTRACT_BUYRR` varchar(255) DEFAULT NULL COMMENT '采购商',
  `CONTRACT_SUPPLIER_ID` varchar(50) DEFAULT NULL COMMENT '供应商ID',
  `CONTRACT_SUPPLIER` varchar(255) DEFAULT NULL COMMENT '供应商',
  `CREATETIME` datetime DEFAULT NULL COMMENT '意向单生成时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '合同最后修改时间',
  `SIGNTIME` datetime DEFAULT NULL COMMENT '合同签订时间',
  `REFUSE_TIMES` int(11) DEFAULT '0' COMMENT '拒绝次数',
  `CONTRACTTIME` datetime DEFAULT NULL COMMENT '发起合同时间',
  `TRADE_SOURCE_TYPE` char(2) DEFAULT NULL COMMENT '合同来源类型（01：集采，02：竞价，03：购物车，04：撮合，05：模糊）',
  `TRADE_SOURCE_ID` varchar(255) DEFAULT NULL COMMENT '交易来源ID',
  `CLOSE_STATUS` char(1) DEFAULT '1' COMMENT '关闭状态',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_CODE` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `PRODUCT_NAME` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_UNIT` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `PRODUCT_PRICE` decimal(22,8) DEFAULT NULL COMMENT '产品单价',
  `PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '产品数量',
  `PRODUCT_SUM` decimal(20,2) DEFAULT NULL COMMENT '产品总额',
  `PRODUCT_IMG` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `FREIGHT` decimal(20,2) DEFAULT '0.00' COMMENT '运费',
  `ACCEPTE_ZIP` char(6) DEFAULT NULL COMMENT '邮政编码',
  `ACCEPTE_ADDR` varchar(300) DEFAULT NULL COMMENT '配送地址',
  `ACCEPTER` varchar(20) DEFAULT NULL COMMENT '接收人姓名',
  `ACCEPTER_PHONE` varchar(20) DEFAULT NULL COMMENT '接收人电话',
  `IS_SPLIT` char(1) DEFAULT NULL COMMENT '是否可以分单',
  `SEND_ADDR` varchar(300) DEFAULT NULL COMMENT '发货地址',
  `SEND_ZIP` char(6) DEFAULT NULL COMMENT '发货邮编',
  `ISQA` char(1) DEFAULT '1' COMMENT '获取质检0否1是',
  `ISEDIT` char(1) DEFAULT '1' COMMENT '1未修改2已修改',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `REFUSECAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CONTRACT_AFFIX` varchar(300) DEFAULT NULL COMMENT '合同附件',
  `CONTRACT_AFFIX_NAME` varchar(300) DEFAULT NULL COMMENT '合同附件名称',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `ISXXHT` char(1) DEFAULT '0' COMMENT '是否线上合同 0线上签订合同1线下上传合同',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `IS_HISTORY` tinyint(4) DEFAULT NULL COMMENT '是否历史意向单',
  PRIMARY KEY (`ID`),
  KEY `FKnray6rxjk6d6f9uxaha9j640k` (`IMPORT_RECORD_ID`) USING BTREE,
  KEY `FK21epppj0je3eokto7e7f2gah8` (`PRODUCT_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_contract_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_contract_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contract_bak_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `CONTRACT_CODE` varchar(50) NOT NULL COMMENT '合同编号',
  `CONTRACT_TITLE` varchar(255) DEFAULT NULL COMMENT '合同标题',
  `CONTRACT_STATUS` char(2) DEFAULT NULL COMMENT '合同状态（01：未发起合同，02：待供应商确认，03：待采购商确认，04：待平台确认，05：已生效，06：平台未通过）',
  `CONTRACT_CONTENT` text COMMENT '合同内容',
  `CONTRACT_BUYRR_ID` varchar(50) DEFAULT NULL COMMENT '采购商ID',
  `CONTRACT_BUYRR` varchar(255) DEFAULT NULL COMMENT '采购商',
  `CONTRACT_SUPPLIER_ID` varchar(50) DEFAULT NULL COMMENT '供应商ID',
  `CONTRACT_SUPPLIER` varchar(255) DEFAULT NULL COMMENT '供应商',
  `CREATETIME` datetime DEFAULT NULL COMMENT '意向单生成时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '合同最后修改时间',
  `SIGNTIME` datetime DEFAULT NULL COMMENT '合同签订时间',
  `REFUSE_TIMES` int(11) DEFAULT '0' COMMENT '拒绝次数',
  `CONTRACTTIME` datetime DEFAULT NULL COMMENT '发起合同时间',
  `TRADE_SOURCE_TYPE` char(2) DEFAULT NULL COMMENT '合同来源类型（01：集采，02：竞价，03：购物车，04：撮合，05：模糊）',
  `TRADE_SOURCE_ID` varchar(255) DEFAULT NULL COMMENT '交易来源ID',
  `CLOSE_STATUS` char(1) DEFAULT '1' COMMENT '关闭状态',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_CODE` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `PRODUCT_NAME` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_UNIT` varchar(20) DEFAULT NULL COMMENT '产品单位',
  `PRODUCT_PRICE` decimal(22,8) DEFAULT NULL COMMENT '产品单价',
  `PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '产品数量',
  `PRODUCT_SUM` decimal(20,2) DEFAULT NULL COMMENT '产品总额',
  `PRODUCT_IMG` varchar(300) DEFAULT NULL COMMENT '产品图片',
  `FREIGHT` decimal(20,2) DEFAULT '0.00' COMMENT '运费',
  `ACCEPTE_ZIP` char(6) DEFAULT NULL COMMENT '邮政编码',
  `ACCEPTE_ADDR` varchar(300) DEFAULT NULL COMMENT '配送地址',
  `ACCEPTER` varchar(20) DEFAULT NULL COMMENT '接收人姓名',
  `ACCEPTER_PHONE` varchar(20) DEFAULT NULL COMMENT '接收人电话',
  `IS_SPLIT` char(1) DEFAULT NULL COMMENT '是否可以分单',
  `SEND_ADDR` varchar(300) DEFAULT NULL COMMENT '发货地址',
  `SEND_ZIP` char(6) DEFAULT NULL COMMENT '发货邮编',
  `ISQA` char(1) DEFAULT '1' COMMENT '获取质检0否1是',
  `ISEDIT` char(1) DEFAULT '1' COMMENT '1未修改2已修改',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `REFUSECAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CONTRACT_AFFIX` varchar(300) DEFAULT NULL COMMENT '合同附件',
  `CONTRACT_AFFIX_NAME` varchar(300) DEFAULT NULL COMMENT '合同附件名称',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `ISXXHT` char(1) DEFAULT '0' COMMENT '是否线上合同 0线上签订合同1线下上传合同',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `IS_HISTORY` tinyint(4) DEFAULT NULL COMMENT '是否历史意向单'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser`
--

DROP TABLE IF EXISTS `t_corporateuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(15,4) DEFAULT NULL,
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `isActive` tinyint(1) NOT NULL COMMENT '是否启用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用',
  `referenceId` varchar(32) DEFAULT NULL COMMENT '引用企业id',
  `workUnit` varchar(64) DEFAULT NULL COMMENT '工作单位',
  `pinyin` varchar(64) DEFAULT NULL COMMENT '中文拼音名称',
  `version` int(11) NOT NULL DEFAULT '0',
  `exponentPermission` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CORPORATEUSER_ACCOUNTNAME` (`ACCOUNTNAME`) USING BTREE,
  KEY `FKemb5mmh2x1iyw9rqrh6a3e8lc` (`IMPORT_RECORD_ID`) USING BTREE,
  KEY `CORPORATEUSER_ID` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20170327`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20170327`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20170327` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(10,0) DEFAULT NULL COMMENT '注册资金',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `ISACTIVE` int(1) DEFAULT '1' COMMENT '1：启用（缺省），0：停用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `QY_LEVEL` int(2) DEFAULT NULL COMMENT '企业等级',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) DEFAULT NULL COMMENT '注册类型 0 或空 为企业    1为个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20170421`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20170421`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20170421` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(10,0) DEFAULT NULL COMMENT '注册资金',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `ISACTIVE` int(1) DEFAULT '1' COMMENT '1：启用（缺省），0：停用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `QY_LEVEL` int(2) DEFAULT NULL COMMENT '企业等级',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) DEFAULT NULL COMMENT '注册类型 0 或空 为企业    1为个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20170518`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20170518`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20170518` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(10,0) DEFAULT NULL COMMENT '注册资金',
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `ISACTIVE` int(1) DEFAULT '1' COMMENT '1：启用（缺省），0：停用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `QY_LEVEL` int(2) DEFAULT NULL COMMENT '企业等级',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20170824`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20170824`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20170824` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(15,4) DEFAULT NULL,
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `isActive` tinyint(1) NOT NULL COMMENT '是否启用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用',
  `referenceId` varchar(32) DEFAULT NULL COMMENT '引用企业id',
  `exponentPermission` tinyint(4) DEFAULT '1' COMMENT '指数权限',
  `workUnit` varchar(64) DEFAULT NULL COMMENT '工作单位',
  `pinyin` varchar(64) DEFAULT NULL COMMENT '中文拼音名称',
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20170914`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20170914`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20170914` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(15,4) DEFAULT NULL,
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `isActive` tinyint(1) NOT NULL COMMENT '是否启用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用',
  `referenceId` varchar(32) DEFAULT NULL COMMENT '引用企业id',
  `exponentPermission` tinyint(4) DEFAULT '1' COMMENT '指数权限',
  `workUnit` varchar(64) DEFAULT NULL COMMENT '工作单位',
  `pinyin` varchar(64) DEFAULT NULL COMMENT '中文拼音名称',
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20171031`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20171031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20171031` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(15,4) DEFAULT NULL,
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `isActive` tinyint(1) NOT NULL COMMENT '是否启用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用',
  `referenceId` varchar(32) DEFAULT NULL COMMENT '引用企业id',
  `workUnit` varchar(64) DEFAULT NULL COMMENT '工作单位',
  `pinyin` varchar(64) DEFAULT NULL COMMENT '中文拼音名称',
  `version` int(11) NOT NULL DEFAULT '0',
  `exponentPermission` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_corporateuser_bak_20171114`
--

DROP TABLE IF EXISTS `t_corporateuser_bak_20171114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_corporateuser_bak_20171114` (
  `ID` varchar(50) NOT NULL COMMENT '企业用户ID',
  `ACCOUNTNAME` varchar(64) DEFAULT NULL COMMENT '企业用户名',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '企业用户密码',
  `CORPORATENAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '企业地址',
  `CORPORATETYPE` varchar(32) DEFAULT NULL COMMENT '企业性质',
  `CORPORATESIZE` varchar(32) DEFAULT NULL COMMENT '企业规模',
  `FACTORYAREA` varchar(64) DEFAULT NULL COMMENT '厂房面积',
  `REGISTRATIONFUND` decimal(15,4) DEFAULT NULL,
  `registrationFundCurrency` char(3) NOT NULL COMMENT '注册资金的币种',
  `LEGAL_PERSON` varchar(200) DEFAULT NULL COMMENT '企业法人',
  `REGISTERDEP` varchar(128) DEFAULT NULL COMMENT '登记机关',
  `REGISTERTIME` datetime DEFAULT NULL COMMENT '成立时间',
  `ANNUALINSP_TIME` datetime DEFAULT NULL COMMENT '年检时间',
  `PHONE` varchar(32) DEFAULT NULL COMMENT '企业电话',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '企业邮箱',
  `WEBSITE` varchar(255) DEFAULT NULL COMMENT '企业网站',
  `CONTACT_NAME` varchar(80) DEFAULT NULL COMMENT '联系人姓名',
  `CONTACT_PHONE` varchar(32) DEFAULT NULL COMMENT '联系人手机',
  `CREATETIME` datetime DEFAULT NULL COMMENT '注册时间',
  `CREATOR_ID` varchar(50) DEFAULT NULL COMMENT '信息录入用户ID',
  `STATUS` int(2) DEFAULT NULL COMMENT '企业用户状态0：待审核1：待完善个人信息；2：采购商已确认；3：使用中；4：已拒绝；5：已停用',
  `TYPE` int(2) DEFAULT NULL COMMENT '企业用户类型0采购商1供应商2服务商3系统运营',
  `RIGHTS` varchar(255) DEFAULT NULL COMMENT '企业用户权限',
  `ROLE_ID` varchar(100) DEFAULT NULL COMMENT '企业用户对应角色ID',
  `LASTLOGONTIME` datetime DEFAULT NULL COMMENT '上次登录时间',
  `CORPORATE_LOGO` varchar(255) DEFAULT NULL,
  `ORDERBYALL` int(11) DEFAULT '0',
  `ORDERBYTYPE` int(11) DEFAULT '0',
  `isActive` tinyint(1) NOT NULL COMMENT '是否启用',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父企业用户ID',
  `IS_TRAN_FREEZE` int(1) DEFAULT NULL COMMENT '允许交易 or 冻结交易',
  `FWS_TYPE` char(2) DEFAULT NULL COMMENT '服务商类型01质检02运输03金融',
  `PROVINCE_ID` varchar(32) DEFAULT NULL COMMENT '企业所在省',
  `CITY_ID` varchar(32) DEFAULT NULL COMMENT '企业所在市',
  `AREA_ID` varchar(32) DEFAULT NULL COMMENT '企业所在县区',
  `POSTCODE` varchar(32) DEFAULT NULL COMMENT '邮编',
  `FAXNUM` varchar(32) DEFAULT NULL COMMENT '传真号',
  `REFUSE_CAUSE` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `SKIN` varchar(100) DEFAULT NULL COMMENT '界面皮肤',
  `IP` varchar(100) DEFAULT NULL COMMENT '访问IP',
  `CORPORATE_LICENSE` varchar(64) DEFAULT NULL COMMENT '三证合一执照号',
  `CORPORATE_LICENSE_DATE` datetime DEFAULT NULL COMMENT '三证合一执照号有效日期',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `CREDIT` decimal(10,1) DEFAULT '0.0' COMMENT '信用分',
  `QQ` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `REGISTTYPE` varchar(10) NOT NULL DEFAULT '0' COMMENT '注册类型  0：企业  1：个人',
  `CERTTYPE` char(2) DEFAULT NULL COMMENT '证件类型,个人用',
  `CERTCODE` varchar(30) DEFAULT NULL COMMENT '证件号码，个人用',
  `referenceId` varchar(32) DEFAULT NULL COMMENT '引用企业id',
  `workUnit` varchar(64) DEFAULT NULL COMMENT '工作单位',
  `pinyin` varchar(64) DEFAULT NULL COMMENT '中文拼音名称',
  `version` int(11) NOT NULL DEFAULT '0',
  `exponentPermission` tinyint(4) DEFAULT NULL,
  `dataCenterType` tinyint(4) NOT NULL DEFAULT '4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_data_permission`
--

DROP TABLE IF EXISTS `t_data_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_data_permission` (
  `DP_ID` varchar(50) NOT NULL COMMENT '主键',
  `DP_NAME` varchar(64) NOT NULL COMMENT '名字',
  `RWMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`DP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_dealicon`
--

DROP TABLE IF EXISTS `t_dealicon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dealicon` (
  `ID` varchar(60) NOT NULL COMMENT '图标id',
  `PATH` varchar(255) DEFAULT NULL COMMENT '图标路径',
  `MODULE` varchar(50) DEFAULT NULL COMMENT '所属模块',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态(0:未启用，1:启用)',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_deposit`
--

DROP TABLE IF EXISTS `t_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_deposit` (
  `ID` varchar(50) NOT NULL,
  `SN` varchar(50) DEFAULT NULL,
  `TYPE` char(2) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `USER_ID` varchar(50) DEFAULT NULL,
  `MONEY` decimal(20,2) DEFAULT NULL,
  `PAY_STATUS` varchar(10) DEFAULT '0' COMMENT '保证金类型 1：百分比  0：具体金额',
  `UNIT` varchar(10) DEFAULT NULL,
  `PAY_FORM` varchar(30) DEFAULT NULL,
  `PAY_TO` varchar(30) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保证金';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_DEPOSIT` BEFORE INSERT ON `t_deposit` FOR EACH ROW BEGIN
    DECLARE olddate VARCHAR(12);
    DECLARE newdate VARCHAR(12);
    DECLARE c_code  VARCHAR(50);
    DECLARE mdate   DATETIME;
    DECLARE tmpvar  INT;
    SET newdate=DATE_FORMAT(NOW(), "%Y%m%d");
    SET mdate=(SELECT MAX(CREATE_TIME) FROM T_DEPOSIT);
    SET c_code=(SELECT SN  FROM T_DEPOSIT WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    SET olddate=(SELECT DATE_FORMAT(CREATE_TIME, "%Y%m%d") FROM T_DEPOSIT WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    IF olddate = newdate THEN
        SET tmpvar=CAST(RIGHT(c_code, 4) AS SIGNED) + 1;
        SET new.SN=CONCAT("PD", newdate, LPAD(tmpvar, 4, "0"));
    ELSE
        SET new.SN=CONCAT("PD", newdate, "0001");
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_entrust_list`
--

DROP TABLE IF EXISTS `t_entrust_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_entrust_list` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID唯一值',
  `ENTRUST_CODE` varchar(50) DEFAULT NULL COMMENT '委托编号',
  `ENTRUST_TYPE` int(2) DEFAULT '0' COMMENT '委托分类(0：买货 1：卖货)',
  `CONTACT` varchar(50) DEFAULT NULL COMMENT '联系人',
  `TEL` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `COMPANY_ID` varchar(50) DEFAULT NULL COMMENT '企业ID',
  `COMPANY_NAME` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `PRICE` decimal(10,2) DEFAULT NULL,
  `STATUS` int(2) DEFAULT '0' COMMENT '状态(0:未提交 1：待审核 2：审核通过 3：拒绝申请 4：完成)',
  `ENTRUST_COMMONT` varchar(500) DEFAULT NULL COMMENT '内容',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `OTHERSEXPAIN` varchar(500) DEFAULT NULL COMMENT '其他说明(拒绝原因、备注等)',
  `LASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `FILEPATH` varchar(500) DEFAULT NULL COMMENT '文件保存路径',
  `FILENAME` text COMMENT '上传文件名称',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `payeeCorporate` varchar(128) DEFAULT NULL,
  `payeeAccount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_evaluate`
--

DROP TABLE IF EXISTS `t_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_evaluate` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `ORDER_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `ORDER_CODE` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '评价时间',
  `EVALUATE_ID` varchar(50) DEFAULT NULL COMMENT '评价人ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '评价用户名',
  `ETYPE` char(2) DEFAULT NULL COMMENT '类型',
  `EOPTION` text COMMENT '评价意见',
  `STAR_LEVEL` varchar(10) DEFAULT NULL COMMENT '评价星级',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_exponentchart_bank_20170811`
--

DROP TABLE IF EXISTS `t_exponentchart_bank_20170811`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_exponentchart_bank_20170811` (
  `id` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '类型 1.综合2.品类3.单品',
  `name` varchar(32) NOT NULL COMMENT '名称',
  `period` tinyint(4) NOT NULL COMMENT '颗粒度 1月 2日',
  `status` tinyint(4) NOT NULL COMMENT '1正常',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `createdBy` varchar(64) NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0' COMMENT '指数权限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_filesetinfo`
--

DROP TABLE IF EXISTS `t_filesetinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_filesetinfo` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `docSrcType` tinyint(2) NOT NULL COMMENT '文件来源类型, 1 : 订单下面的合同附件',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_filesetinfo_bak_20170428`
--

DROP TABLE IF EXISTS `t_filesetinfo_bak_20170428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_filesetinfo_bak_20170428` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `docSrcType` tinyint(2) NOT NULL COMMENT '文件来源类型, 1 : 订单下面的合同附件',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_finance_pro`
--

DROP TABLE IF EXISTS `t_finance_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance_pro` (
  `ID` varchar(60) NOT NULL,
  `IMG` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `NAME` varchar(60) DEFAULT NULL COMMENT '名称',
  `EXPECT_EARNINGS` varchar(20) DEFAULT NULL COMMENT '预期收益',
  `DEADLINE` varchar(20) DEFAULT NULL COMMENT '期限',
  `THRESHOLD` varchar(20) DEFAULT NULL COMMENT '门槛,起投金额',
  `INTRO` varchar(255) DEFAULT NULL COMMENT '简介',
  `CLICKRATE` int(20) DEFAULT NULL COMMENT '点击数',
  `URL` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `STATUS` int(1) DEFAULT NULL COMMENT '上架下架状态',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_finance_pro_apply`
--

DROP TABLE IF EXISTS `t_finance_pro_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_finance_pro_apply` (
  `ID` varchar(60) NOT NULL COMMENT '主键ID',
  `SN` varchar(64) DEFAULT NULL COMMENT '申请编号JR+日期+流水号',
  `CORPORATE_ID` varchar(60) DEFAULT NULL COMMENT '企业用户ID',
  `APPLY_TYPE` int(2) DEFAULT NULL COMMENT '数据字典维护，0：账单质押、1：仓单质押:2：融资申请:3：物权质押',
  `FINANCE_PRO_ID` varchar(60) DEFAULT NULL COMMENT '金融产品ID',
  `FINANCE_PRO_NAME` varchar(60) DEFAULT NULL COMMENT '金融产品名称',
  `APPLY_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '金额产品申请金额',
  `CONTACT_NAME` varchar(60) DEFAULT NULL COMMENT '联系人',
  `CONTACT_TEL` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `REMARK` varchar(1000) DEFAULT NULL COMMENT '备注',
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '相关凭证图片',
  `STATUS` int(2) DEFAULT NULL COMMENT '0:待提交，1：待审核，2：审核通过，3：审核不通过，4：已完成',
  `REASON` varchar(255) DEFAULT NULL COMMENT '拒绝原因',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_FINANCE_PRO_APPLY` BEFORE INSERT ON `t_finance_pro_apply` FOR EACH ROW BEGIN
    DECLARE olddate VARCHAR(12);
    DECLARE newdate VARCHAR(12);
    DECLARE c_code  VARCHAR(50);
    DECLARE mdate   DATETIME;
    DECLARE tmpvar  INT;
    SET newdate=DATE_FORMAT(NOW(), "%Y%m%d");
    SET mdate=(SELECT MAX(CREATETIME) FROM T_FINANCE_PRO_APPLY);
    SET c_code=(SELECT SN  FROM T_FINANCE_PRO_APPLY WHERE CREATETIME = mdate ORDER BY SN DESC LIMIT 1);
    SET olddate=(SELECT DATE_FORMAT(CREATETIME, "%Y%m%d") FROM T_FINANCE_PRO_APPLY WHERE CREATETIME = mdate ORDER BY SN DESC LIMIT 1);
    IF olddate = newdate THEN
        SET tmpvar=CAST(RIGHT(c_code, 4) AS SIGNED) + 1;
        SET new.SN=CONCAT("JR", newdate, LPAD(tmpvar, 4, "0"));
    ELSE
        SET new.SN=CONCAT("JR", newdate, "0001");
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_goodaddress`
--

DROP TABLE IF EXISTS `t_goodaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goodaddress` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `corporateuser_id` varchar(64) DEFAULT NULL COMMENT '企业用户id,对应 t_corporateuser的id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县',
  `name` varchar(50) DEFAULT NULL COMMENT '接/收货人的姓名',
  `phone` varchar(50) DEFAULT NULL COMMENT '接/收货人的电话',
  `isDefault` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址，1：是默认，2：非默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_goodaddress_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_goodaddress_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goodaddress_bak_oneorder2mulprod` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `type` tinyint(4) DEFAULT NULL COMMENT '0：默认收货地址，1：收货地址，2：默认发货地址，3：发货地址',
  `corporateuser_id` varchar(64) DEFAULT NULL COMMENT '企业用户id,对应 t_corporateuser的id',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_goods`
--

DROP TABLE IF EXISTS `t_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_goods` (
  `ID` varchar(50) NOT NULL COMMENT '商品ID主键',
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_CODE` varchar(50) DEFAULT NULL COMMENT '产品编号',
  `PRODUCT_NAME` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `PRODUCT_UNIT` varchar(50) DEFAULT NULL COMMENT '产品单位',
  `TO_PROVINCE` varchar(50) DEFAULT NULL COMMENT '配送省',
  `TO_CITY` varchar(50) DEFAULT NULL COMMENT '配送市',
  `TO_AREA` varchar(50) DEFAULT NULL COMMENT '配送县',
  `PAYDATE` varchar(50) DEFAULT NULL COMMENT '付款时间',
  `FREIGHT` decimal(10,2) DEFAULT NULL COMMENT '运费',
  `PRODUCT_TAXRATE` decimal(10,2) DEFAULT NULL COMMENT '税率',
  `PRICE` decimal(22,8) DEFAULT NULL COMMENT '价格',
  `CREATE_TIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_apply_list`
--

DROP TABLE IF EXISTS `t_group_apply_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_apply_list` (
  `ID` varchar(64) NOT NULL,
  `SN` varchar(64) DEFAULT NULL COMMENT '编号',
  `PRODUCT_ID` varchar(64) DEFAULT NULL COMMENT '产品ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `GROUP_BUY_TITLE` varchar(128) DEFAULT NULL COMMENT '集采名称',
  `GROUP_BUY_PRICE` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `GROUP_BUY_NUM` varchar(8) DEFAULT NULL COMMENT '购买数量',
  `GROUP_BUY_UNIT` varchar(8) DEFAULT NULL COMMENT '单位',
  `ADDRESS` varchar(64) DEFAULT NULL COMMENT '收货地址',
  `GROUP_BUY_AGING` varchar(8) DEFAULT NULL COMMENT '团购时效',
  `STATUS` varchar(8) DEFAULT NULL COMMENT '状态',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `REMARK` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_buy_list`
--

DROP TABLE IF EXISTS `t_group_buy_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_buy_list` (
  `ID` varchar(64) NOT NULL,
  `REQ_ID` varchar(64) DEFAULT NULL COMMENT '产品ID',
  `SN` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `RULE_ID` varchar(64) DEFAULT NULL COMMENT '规则ID',
  `PAY_STATUS` varchar(8) NOT NULL DEFAULT '0' COMMENT '保证金类型0：实际   1：比例',
  `EARNEST_MONEY` decimal(10,2) DEFAULT NULL COMMENT '采购商保证金',
  `LEAST_NUMS` varchar(8) DEFAULT NULL COMMENT '成团最少数量',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `GROUP_TIME` datetime DEFAULT NULL COMMENT '招投标时间设置',
  `PACT_TIME` datetime DEFAULT NULL COMMENT '合同时间设置',
  `NEED_NUM` varchar(8) DEFAULT NULL COMMENT '发布需求次数',
  `GROUP_BUY_TITLE` varchar(128) DEFAULT NULL COMMENT '集采标题',
  `GROUP_BUY_PRICE` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `MATCH_PRICE` decimal(10,2) DEFAULT NULL COMMENT '近期撮合价',
  `GROUP_BUY_NUM` decimal(15,3) DEFAULT NULL COMMENT '成团数量',
  `GROUP_BUY_AGING` varchar(16) DEFAULT NULL COMMENT '团购时效',
  `GROUP_BUY_LOCAL` varchar(128) DEFAULT NULL COMMENT '购商收货地域范围',
  `START_TIME` datetime DEFAULT NULL COMMENT '开始时间',
  `STATUS` varchar(8) DEFAULT NULL COMMENT '状态',
  `END_TIME` datetime DEFAULT NULL COMMENT '结束时间',
  `GROUP_NOW_BUYER` varchar(18) DEFAULT '0' COMMENT '参与集采的企业数量',
  `group_now_num` decimal(20,6) NOT NULL,
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `PRODUCT_NAME` varchar(128) DEFAULT NULL,
  `CLASS1` varchar(60) DEFAULT NULL,
  `CLASS2` varchar(60) DEFAULT NULL,
  `CLASS3` varchar(60) DEFAULT NULL,
  `PROVINCE_ID` varchar(60) DEFAULT NULL,
  `CITY_ID` varchar(60) DEFAULT NULL,
  `AREA_ID` varchar(60) DEFAULT NULL,
  `PAGEHTML` longtext,
  `UNIT` varchar(10) DEFAULT NULL,
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `REFUSE_CAUSER` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `ISQA` varchar(8) DEFAULT '0' COMMENT '发货前质检  0：否    1：是',
  `FACTORY` varchar(60) DEFAULT NULL COMMENT '产地',
  `BRAND` varchar(60) DEFAULT NULL COMMENT '品牌',
  `DESCRIPTION` varchar(60) DEFAULT NULL COMMENT '预交货说明',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_GROUP_BUY_LIST` BEFORE INSERT ON `t_group_buy_list` FOR EACH ROW BEGIN
    DECLARE olddate VARCHAR(12);
    DECLARE newdate VARCHAR(12);
    DECLARE c_code  VARCHAR(50);
    DECLARE mdate   DATETIME;
    DECLARE tmpvar  INT;
    SET newdate=DATE_FORMAT(NOW(), "%Y%m%d");
    SET mdate=(SELECT MAX(CREATE_TIME) FROM T_GROUP_BUY_LIST);
    SET c_code=(SELECT SN  FROM T_GROUP_BUY_LIST WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    SET olddate=(SELECT DATE_FORMAT(CREATE_TIME, "%Y%m%d") FROM T_GROUP_BUY_LIST WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    IF olddate = newdate THEN
        SET tmpvar=CAST(RIGHT(c_code, 4) AS SIGNED) + 1;
        SET new.SN=CONCAT("JC", newdate, LPAD(tmpvar, 4, "0"));
    ELSE
        SET new.SN=CONCAT("JC", newdate, "0001");
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_group_buy_list_bak_20170227`
--

DROP TABLE IF EXISTS `t_group_buy_list_bak_20170227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_buy_list_bak_20170227` (
  `ID` varchar(64) NOT NULL,
  `REQ_ID` varchar(64) DEFAULT NULL COMMENT '产品ID',
  `SN` varchar(50) DEFAULT NULL,
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `RULE_ID` varchar(64) DEFAULT NULL COMMENT '规则ID',
  `PAY_STATUS` varchar(8) NOT NULL DEFAULT '0' COMMENT '保证金类型0：实际   1：比例',
  `EARNEST_MONEY` decimal(10,2) DEFAULT NULL COMMENT '采购商保证金',
  `LEAST_NUMS` varchar(8) DEFAULT NULL COMMENT '成团最少数量',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `GROUP_TIME` datetime DEFAULT NULL COMMENT '招投标时间设置',
  `PACT_TIME` datetime DEFAULT NULL COMMENT '合同时间设置',
  `NEED_NUM` varchar(8) DEFAULT NULL COMMENT '发布需求次数',
  `GROUP_BUY_TITLE` varchar(128) DEFAULT NULL COMMENT '集采标题',
  `GROUP_BUY_PRICE` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `MATCH_PRICE` decimal(10,2) DEFAULT NULL COMMENT '近期撮合价',
  `GROUP_BUY_NUM` decimal(15,3) DEFAULT NULL COMMENT '成团数量',
  `GROUP_BUY_AGING` varchar(16) DEFAULT NULL COMMENT '团购时效',
  `GROUP_BUY_LOCAL` varchar(128) DEFAULT NULL COMMENT '购商收货地域范围',
  `START_TIME` datetime DEFAULT NULL COMMENT '开始时间',
  `STATUS` varchar(8) DEFAULT NULL COMMENT '状态',
  `END_TIME` datetime DEFAULT NULL COMMENT '结束时间',
  `GROUP_NOW_BUYER` varchar(18) DEFAULT '0' COMMENT '参与集采的企业数量',
  `GROUP_NOW_NUM` varchar(18) DEFAULT '0' COMMENT '当前集采量',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `PRODUCT_NAME` varchar(128) DEFAULT NULL,
  `CLASS1` varchar(60) DEFAULT NULL,
  `CLASS2` varchar(60) DEFAULT NULL,
  `CLASS3` varchar(60) DEFAULT NULL,
  `PROVINCE_ID` varchar(60) DEFAULT NULL,
  `CITY_ID` varchar(60) DEFAULT NULL,
  `AREA_ID` varchar(60) DEFAULT NULL,
  `PAGEHTML` longtext,
  `UNIT` varchar(10) DEFAULT NULL,
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `REFUSE_CAUSER` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `ISQA` varchar(8) DEFAULT '0' COMMENT '发货前质检  0：否    1：是',
  `FACTORY` varchar(60) DEFAULT NULL COMMENT '产地',
  `BRAND` varchar(60) DEFAULT NULL COMMENT '品牌',
  `DESCRIPTION` varchar(60) DEFAULT NULL COMMENT '预交货说明',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_buyer_list`
--

DROP TABLE IF EXISTS `t_group_buyer_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_buyer_list` (
  `ID` varchar(50) NOT NULL,
  `BSN` varchar(32) NOT NULL COMMENT '购买编号',
  `SN` varchar(32) DEFAULT NULL COMMENT '集采编号',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '采购商ID',
  `buy_nums` decimal(20,6) NOT NULL,
  `EARNEST_MONEY` decimal(10,2) DEFAULT NULL COMMENT '保证金',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `STATUS` varchar(2) DEFAULT '0' COMMENT '0：未支付保证金   1：已支付',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_buyer_list_bak_20170227`
--

DROP TABLE IF EXISTS `t_group_buyer_list_bak_20170227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_buyer_list_bak_20170227` (
  `ID` varchar(50) NOT NULL,
  `BSN` varchar(32) NOT NULL COMMENT '购买编号',
  `SN` varchar(32) DEFAULT NULL COMMENT '集采编号',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '采购商ID',
  `BUY_NUMS` varchar(8) DEFAULT NULL COMMENT '采购数量',
  `EARNEST_MONEY` decimal(10,2) DEFAULT NULL COMMENT '保证金',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `STATUS` varchar(2) DEFAULT '0' COMMENT '0：未支付保证金   1：已支付'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_rule_list`
--

DROP TABLE IF EXISTS `t_group_rule_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_rule_list` (
  `ID` varchar(64) NOT NULL,
  `EARNEST_MONEY` decimal(10,0) DEFAULT NULL COMMENT '保证金',
  `LEAST_NUMS` varchar(8) DEFAULT NULL COMMENT '成团最少数量',
  `GROUP_TIME` datetime DEFAULT NULL COMMENT '招投标时间设置',
  `PACT_TIME` datetime DEFAULT NULL COMMENT '合同时间设置',
  `NEED_NUM` varchar(16) DEFAULT NULL COMMENT '发布需求次数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_group_supplier_list`
--

DROP TABLE IF EXISTS `t_group_supplier_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_group_supplier_list` (
  `ID` varchar(50) NOT NULL,
  `BSN` varchar(32) DEFAULT NULL COMMENT '招投标编号',
  `SN` varchar(32) DEFAULT NULL COMMENT '集采编号',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '供应商ID',
  `SUPPLY_NUMS` varchar(16) DEFAULT NULL COMMENT '供应数量',
  `EARNEST_MONEY` decimal(10,2) DEFAULT '0.00' COMMENT '保证金',
  `STATUS` varchar(8) DEFAULT NULL COMMENT '状态',
  `APPLY_TIME` datetime DEFAULT NULL COMMENT '申请时间',
  `FILEPATH` varchar(1000) DEFAULT NULL COMMENT '文件路径',
  `SUPPLY_MONEY` decimal(10,2) DEFAULT NULL COMMENT '供应商报价',
  `FILENAME` varchar(1000) DEFAULT NULL COMMENT '原始文件名',
  `E_MONEY` decimal(10,2) DEFAULT '0.00' COMMENT '设置保证金',
  `PAY_STATUS` varchar(10) DEFAULT '0' COMMENT '保证金类型',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_helpquestion`
--

DROP TABLE IF EXISTS `t_helpquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_helpquestion` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID',
  `QUESTION_TYPE` varchar(50) DEFAULT NULL COMMENT '问题分类ID，关联T_HELPQUESTION_TYPE的ID',
  `QUESTION_CONTENT` longtext COMMENT '问题内容',
  `ISRELEASE` int(1) DEFAULT '0' COMMENT '是否发布，0：否，1:是',
  `ISHOT` int(1) DEFAULT NULL COMMENT '是否是热门问题，0：否，1:是',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_helpquestion_bak_20170912`
--

DROP TABLE IF EXISTS `t_helpquestion_bak_20170912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_helpquestion_bak_20170912` (
  `ID` varchar(50) NOT NULL COMMENT '主键ID',
  `QUESTION_TYPE` varchar(50) DEFAULT NULL COMMENT '问题分类ID，关联T_HELPQUESTION_TYPE的ID',
  `QUESTION_CONTENT` longtext COMMENT '问题内容',
  `ISRELEASE` int(1) DEFAULT '0' COMMENT '是否发布，0：否，1:是',
  `ISHOT` int(1) DEFAULT NULL COMMENT '是否是热门问题，0：否，1:是',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATETIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_helpquestion_type`
--

DROP TABLE IF EXISTS `t_helpquestion_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_helpquestion_type` (
  `ID` varchar(50) NOT NULL COMMENT '主键唯一',
  `PARENT_ID` varchar(64) DEFAULT NULL COMMENT '父节点ID',
  `QUESTION_NAME` varchar(255) DEFAULT NULL COMMENT '问题名称',
  `ISTERMINAL` int(1) DEFAULT '0' COMMENT '是否有子节点，0：否，1:是',
  `QUESTION_TYPE_ORDER` int(3) DEFAULT NULL COMMENT '分类顺序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_helpquestion_type_bak_20170912`
--

DROP TABLE IF EXISTS `t_helpquestion_type_bak_20170912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_helpquestion_type_bak_20170912` (
  `ID` varchar(50) NOT NULL COMMENT '主键唯一',
  `PARENT_ID` varchar(64) DEFAULT NULL COMMENT '父节点ID',
  `QUESTION_NAME` varchar(255) DEFAULT NULL COMMENT '问题名称',
  `ISTERMINAL` int(1) DEFAULT '0' COMMENT '是否有子节点，0：否，1:是',
  `QUESTION_TYPE_ORDER` int(3) DEFAULT NULL COMMENT '分类顺序',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ht_model`
--

DROP TABLE IF EXISTS `t_ht_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ht_model` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '合同模板ID',
  `HT_MODEL_NAME` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `HT_MODEL_CONTENT` text COMMENT '模板内容',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `ISOPEN` char(1) DEFAULT NULL COMMENT '是否可见',
  `FILENAME` varchar(255) DEFAULT NULL COMMENT '附件名称',
  `FILEPATH` varchar(255) DEFAULT NULL COMMENT '附件路径',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ht_supplement`
--

DROP TABLE IF EXISTS `t_ht_supplement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ht_supplement` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '合同补充ID',
  `SUPPLEMENTL_CONTENT` varchar(3000) DEFAULT NULL COMMENT '补充内容',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_ROLE` char(1) DEFAULT NULL COMMENT '创建角色',
  `HT_ID` varchar(50) DEFAULT NULL COMMENT '合同ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_import_record`
--

DROP TABLE IF EXISTS `t_import_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_import_record` (
  `ID` varchar(36) NOT NULL,
  `IMPORT_TIME` datetime NOT NULL,
  `IMPORT_USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_leavemsg`
--

DROP TABLE IF EXISTS `t_leavemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_leavemsg` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `LEAVE_CODE` varchar(50) DEFAULT NULL COMMENT '编号',
  `LEAVE_USER` varchar(50) DEFAULT NULL COMMENT '留言人ID',
  `leave_username` varchar(50) DEFAULT NULL COMMENT '留言人用户名',
  `LEAVE_TITLE` varchar(100) DEFAULT NULL COMMENT '留言标题',
  `LEAVE_CONTENT` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `CREATETIME` datetime DEFAULT NULL COMMENT '留言日期',
  `STATUES` char(1) DEFAULT NULL COMMENT '状态',
  `REPLAY` varchar(1000) DEFAULT NULL COMMENT '处理意见',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_LEAVEMSG` BEFORE INSERT ON `t_leavemsg` FOR EACH ROW begin
    declare olddate varchar(12);
    declare newdate varchar(12);
    declare c_code  varchar(50);
    declare mdate   datetime;
    declare tmpvar  int;
    set newdate=DATE_FORMAT(now(), "%Y%m%d");
    set mdate=(select max(CREATETIME) from T_LEAVEMSG);
    set c_code=(select LEAVE_CODE  from T_LEAVEMSG where CREATETIME = mdate order by LEAVE_CODE desc limit 1);
    set olddate=(select DATE_FORMAT(CREATETIME, "%Y%m%d") from T_LEAVEMSG where CREATETIME = mdate order by LEAVE_CODE desc limit 1);
    if olddate = newdate then
        set tmpvar=cast(right(c_code, 4) as signed) + 1;
        set new.LEAVE_CODE=concat("LY", newdate, lpad(tmpvar, 4, "0"));
    else
        set new.LEAVE_CODE=concat("LY", newdate, "0001");
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_logistics`
--

DROP TABLE IF EXISTS `t_logistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_logistics` (
  `id` varchar(50) NOT NULL DEFAULT '' COMMENT '物流单id',
  `sendId` varchar(50) NOT NULL COMMENT '发货单ID',
  `weight` decimal(20,6) NOT NULL COMMENT '重量',
  `weightUnit` int(11) NOT NULL COMMENT '重量的单位:1-T;2-Kg',
  `volume` decimal(20,6) NOT NULL COMMENT '体积',
  `kilometers` decimal(20,6) NOT NULL COMMENT '公里数',
  `transportTool` int(11) NOT NULL COMMENT '运输工具',
  `transportToolLength` int(11) NOT NULL COMMENT '运输工具长度',
  `transportType` int(11) NOT NULL COMMENT '运输方式',
  `freight` decimal(20,2) NOT NULL COMMENT '运费',
  `logisticsCompany` varchar(50) DEFAULT NULL COMMENT '物流公司',
  `logisticsCode` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `driverName` varchar(50) DEFAULT NULL COMMENT '司机姓名',
  `driverPhone` varchar(50) DEFAULT NULL COMMENT '司机电话',
  `carNumber` varchar(50) DEFAULT NULL COMMENT '车牌号',
  `logisticsAging` tinyint(4) DEFAULT NULL COMMENT '物流时效',
  `isOntime` tinyint(1) NOT NULL COMMENT '是否准时，0超时，1准时',
  `isNormal` tinyint(1) NOT NULL COMMENT '是否正常，0异常，1正常',
  `abnormalMessage` varchar(500) DEFAULT NULL COMMENT '异常信息',
  `isSigned` tinyint(1) NOT NULL COMMENT '是否签收，0未签收，1签收',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message` (
  `ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RECEIVER_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` int(1) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_messagetext`
--

DROP TABLE IF EXISTS `t_messagetext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_messagetext` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `MESSAGE_TEXT` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `CONTENT` longtext COMMENT '消息内容(富文本)',
  `POSTDATE` datetime DEFAULT NULL COMMENT '消息发送时间',
  `TOLIST` int(2) DEFAULT NULL COMMENT '发送用户范围',
  `TYPE` int(2) DEFAULT NULL COMMENT '消息类型，0:系统；1：产品；2：求购；3：询价；4：集采；5：竞价',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_news` (
  `ID` varchar(50) NOT NULL,
  `TITLE` varchar(99) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL COMMENT '副标题',
  `CONTENT` text,
  `NEWS_TYPE` int(11) DEFAULT NULL,
  `NEWS_IMGPATH` varchar(255) DEFAULT NULL,
  `STATE` int(2) DEFAULT NULL,
  `PUSHTIME` datetime DEFAULT NULL,
  `PUSHUSER` varchar(50) DEFAULT NULL,
  `ISTOP` int(2) DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL COMMENT '编辑时间',
  `UPDATEUSER` varchar(50) DEFAULT NULL COMMENT '编辑人',
  `CHILD_TYPE` int(2) DEFAULT NULL COMMENT '新闻子类型  1公告 2特惠',
  `SOURCE` varchar(50) DEFAULT NULL COMMENT '新闻来源',
  `DCLICK` int(10) DEFAULT NULL COMMENT '点击数',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order`
--

DROP TABLE IF EXISTS `t_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(1) NOT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) NOT NULL COMMENT '合同形式',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `attachmentFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `totalPaymentAmt` decimal(20,2) NOT NULL COMMENT '累计支付金额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `totalRefundAmt` decimal(20,2) NOT NULL COMMENT '累计退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称',
  `tradeFinishTime` datetime DEFAULT NULL COMMENT '交易完成的时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `deliverymethod` tinyint(4) DEFAULT NULL COMMENT '送货方式',
  `customer` varchar(125) DEFAULT NULL COMMENT '流量归属',
  `dataPermissionId` varchar(32) DEFAULT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime DEFAULT NULL COMMENT '统计时间',
  `isBeforeDeptSetup` tinyint(4) DEFAULT '0' COMMENT '是否为项目部成立前的流量. 0否. 1是',
  `invoiceId` char(32) DEFAULT NULL,
  `extraFSInfoId` char(32) DEFAULT NULL,
  `isExtraFSInfoEditable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_Order_orderCode` (`orderCode`) USING BTREE,
  KEY `FK9twbjsf1edp1kgnt9n2yurw3g` (`importRecordId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_20170821`
--

DROP TABLE IF EXISTS `t_order_20170821`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_20170821` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(1) NOT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) NOT NULL COMMENT '合同形式',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `attachmentFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `totalPaymentAmt` decimal(20,2) NOT NULL COMMENT '累计支付金额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `totalRefundAmt` decimal(20,2) NOT NULL COMMENT '累计退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `adminRefusalReason` varchar(255) DEFAULT NULL COMMENT '平台拒绝原因',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称',
  `finAdminRefusalReason` varchar(255) DEFAULT NULL COMMENT '财务复核审核不通过原因',
  `deliverymethod` tinyint(4) DEFAULT NULL COMMENT '送货方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_Order_orderCode` (`orderCode`) USING BTREE,
  KEY `FK9twbjsf1edp1kgnt9n2yurw3g` (`importRecordId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20170320`
--

DROP TABLE IF EXISTS `t_order_bak_20170320`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20170320` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(4) DEFAULT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) DEFAULT NULL COMMENT '合同形式 (1:线上合同，2：线下合同）',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalCount` int(11) NOT NULL DEFAULT '0' COMMENT '拒绝次数',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `contractAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT 'shipment status 发货状态 1：未发货，2：部分发货，3：全部发货',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `exceptionStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '异常状态 0：无异常，1：异常处理中，2：异常已处理',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计支付金额',
  `expPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '期望支付金额 （所有发货单的recTotalAmt之和）',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量',
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货数量',
  `expShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '期望发货数量',
  `actTotalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计总运费'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20170324`
--

DROP TABLE IF EXISTS `t_order_bak_20170324`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20170324` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(4) DEFAULT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) DEFAULT NULL COMMENT '合同形式 (1:线上合同，2：线下合同）',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalCount` int(11) NOT NULL DEFAULT '0' COMMENT '拒绝次数',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `contractAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT 'shipment status 发货状态 1：未发货，2：部分发货，3：全部发货',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `exceptionStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '异常状态 0：无异常，1：异常处理中，2：异常已处理',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计支付金额',
  `expPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '期望支付金额 （所有发货单的recTotalAmt之和）',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量',
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货数量',
  `expShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '期望发货数量',
  `actTotalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计总运费',
  `discountAmt` decimal(18,2) NOT NULL COMMENT '折让金额',
  `recTotalAmt` decimal(20,2) NOT NULL COMMENT '收货总额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20170428`
--

DROP TABLE IF EXISTS `t_order_bak_20170428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20170428` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(4) DEFAULT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) DEFAULT NULL COMMENT '合同形式 (1:线上合同，2：线下合同）',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalCount` int(11) NOT NULL DEFAULT '0' COMMENT '拒绝次数',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `contractAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT 'shipment status 发货状态 1：未发货，2：部分发货，3：全部发货',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `exceptionStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '异常状态 0：无异常，1：异常处理中，2：异常已处理',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计支付金额',
  `expPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '期望支付金额 （所有发货单的recTotalAmt之和）',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量',
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货数量',
  `expShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '期望发货数量',
  `actTotalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计总运费',
  `discountAmt` decimal(18,2) NOT NULL COMMENT '折让金额',
  `recTotalAmt` decimal(20,2) NOT NULL COMMENT '收货总额',
  `disabled` tinyint(1) NOT NULL COMMENT '用于过滤测试数据',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `isFreightDisabled` tinyint(1) NOT NULL COMMENT '是否运费禁用，1禁用，0不禁用',
  `prepaidAmt` decimal(20,2) NOT NULL COMMENT '预付款金额',
  `prepaidRefundAmt` decimal(20,2) NOT NULL COMMENT '预付款退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `feeCalculationRule` tinyint(2) DEFAULT NULL COMMENT '服务费计算规则,1按百分比，2按数量',
  `feePercentage` decimal(10,2) NOT NULL COMMENT '服务费百分比',
  `feePrice` decimal(20,8) NOT NULL COMMENT '服务费单价'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20170526`
--

DROP TABLE IF EXISTS `t_order_bak_20170526`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20170526` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(4) DEFAULT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) DEFAULT NULL COMMENT '合同形式 (1:线上合同，2：线下合同）',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalCount` int(11) NOT NULL DEFAULT '0' COMMENT '拒绝次数',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `contractAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT 'shipment status 发货状态 1：未发货，2：部分发货，3：全部发货',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计支付金额',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量',
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货数量',
  `expShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '期望发货数量',
  `actTotalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计总运费',
  `recTotalAmt` decimal(20,2) NOT NULL COMMENT '收货总额',
  `disabled` tinyint(1) NOT NULL COMMENT '用于过滤测试数据',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `isFreightDisabled` tinyint(1) NOT NULL COMMENT '是否运费禁用，1禁用，0不禁用',
  `prepaidAmt` decimal(20,2) NOT NULL COMMENT '预付款金额',
  `prepaidRefundAmt` decimal(20,2) NOT NULL COMMENT '预付款退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `feeCalculationRule` tinyint(2) DEFAULT NULL COMMENT '服务费计算规则,1按百分比，2按数量',
  `feePercentage` decimal(10,2) NOT NULL COMMENT '服务费百分比',
  `feePrice` decimal(20,8) NOT NULL COMMENT '服务费单价',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `adminRefusalReason` varchar(255) DEFAULT NULL COMMENT '平台拒绝原因',
  `paymentFSInfoId` varchar(32) DEFAULT NULL COMMENT '支付附件文件集ID',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20170717`
--

DROP TABLE IF EXISTS `t_order_bak_20170717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20170717` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(1) NOT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) NOT NULL COMMENT '合同形式',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalCount` int(11) NOT NULL DEFAULT '0' COMMENT '拒绝次数',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `contractAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT 'shipment status 发货状态 1：未发货，2：部分发货，3：全部发货',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计支付金额',
  `actRecProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计收货数量',
  `actShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '累计发货数量',
  `expShiptProductQty` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '期望发货数量',
  `actTotalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计总运费',
  `recTotalAmt` decimal(20,2) NOT NULL COMMENT '收货总额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `isFreightDisabled` tinyint(1) NOT NULL COMMENT '是否运费禁用，1禁用，0不禁用',
  `prepaidAmt` decimal(20,2) NOT NULL COMMENT '预付款金额',
  `prepaidRefundAmt` decimal(20,2) NOT NULL COMMENT '预付款退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `feeCalculationRule` tinyint(2) DEFAULT NULL COMMENT '服务费计算规则,1按百分比，2按数量',
  `feePercentage` decimal(10,2) NOT NULL COMMENT '服务费百分比',
  `feePrice` decimal(20,8) NOT NULL COMMENT '服务费单价',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `adminRefusalReason` varchar(255) DEFAULT NULL COMMENT '平台拒绝原因',
  `paymentFSInfoId` varchar(32) DEFAULT NULL COMMENT '支付附件文件集ID',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20171121`
--

DROP TABLE IF EXISTS `t_order_bak_20171121`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20171121` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(1) NOT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) NOT NULL COMMENT '合同形式',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `attachmentFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `totalPaymentAmt` decimal(20,2) NOT NULL COMMENT '累计支付金额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `totalRefundAmt` decimal(20,2) NOT NULL COMMENT '累计退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称',
  `tradeFinishTime` datetime DEFAULT NULL COMMENT '交易完成的时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `deliverymethod` tinyint(4) DEFAULT NULL COMMENT '送货方式',
  `customer` varchar(125) DEFAULT NULL COMMENT '流量归属',
  `dataPermissionId` varchar(32) DEFAULT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime DEFAULT NULL COMMENT '统计时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_20171208`
--

DROP TABLE IF EXISTS `t_order_bak_20171208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_20171208` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `orderCode` varchar(255) DEFAULT NULL,
  `recipientAddr` varchar(500) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `recipientPhone` varchar(255) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `recipientProvince` varchar(50) DEFAULT NULL,
  `recipientCity` varchar(50) DEFAULT NULL,
  `recipientArea` varchar(50) DEFAULT NULL,
  `importRecordId` varchar(36) DEFAULT NULL,
  `externalOrderCode` varchar(255) DEFAULT NULL,
  `isHistory` tinyint(1) NOT NULL,
  `logisticsRemark` varchar(500) DEFAULT NULL,
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `subTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '产品总额',
  `totalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额=subTotalAmt+totalFreight',
  `payType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '支付类型0：转账支付（缺省值）.1：票据支付',
  `buyerId` varchar(32) NOT NULL DEFAULT '' COMMENT '采购商id',
  `buyerName` varchar(255) NOT NULL DEFAULT '' COMMENT '采购商名字，refer to T_CORPORATEUSER''s corporatename',
  `supplierId` varchar(32) NOT NULL DEFAULT '' COMMENT '供应商id',
  `supplierName` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名字, refer to T_CORPORATEUSER''s corporatename',
  `buyerMsg` varchar(255) DEFAULT NULL COMMENT '买家留言',
  `contractName` varchar(255) DEFAULT NULL COMMENT '合同名称',
  `contractContent` text COMMENT '合同内容',
  `contractForm` tinyint(2) NOT NULL COMMENT '合同形式',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tradeSrcId` varchar(32) DEFAULT NULL COMMENT '交易来源ID',
  `tradeSrcType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '交易来源类型（1：集采，2：竞价，3：购物车，4：撮合，5：模糊）',
  `orderStatus` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '订单状态（-1：交易取消，1：暂存， 2：待采购商确认，3：待供应商确认，4：待平台确认，5：交易中，6：交易完成）',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `attachmentFSInfoId` varchar(32) DEFAULT NULL COMMENT 'fk, refer to T_FileSetInfo''s id',
  `totalPaymentAmt` decimal(20,2) NOT NULL COMMENT '累计支付金额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单',
  `totalRefundAmt` decimal(20,2) NOT NULL COMMENT '累计退款金额',
  `closeStatus` tinyint(2) NOT NULL COMMENT '0默认值，1完结中，2确认完结，3拒绝完结',
  `closeInitiatorType` tinyint(2) DEFAULT NULL COMMENT '完结发起人类型',
  `closeRefusalReason` varchar(255) DEFAULT NULL COMMENT '完结的拒绝原因',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  `adminAuditStatus` tinyint(2) DEFAULT NULL COMMENT '平台核实状态，1待平台核实，2平台核实不通过， 3平台核实通过',
  `chargeName` varchar(10) DEFAULT NULL COMMENT '费用名称',
  `tradeFinishTime` datetime DEFAULT NULL COMMENT '交易完成的时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `deliverymethod` tinyint(4) DEFAULT NULL COMMENT '送货方式',
  `customer` varchar(125) DEFAULT NULL COMMENT '流量归属',
  `dataPermissionId` varchar(32) DEFAULT NULL COMMENT '流量归属部门ID，对应t_data_permission.dp_id',
  `statTime` datetime DEFAULT NULL COMMENT '统计时间',
  `isBeforeDeptSetup` tinyint(4) DEFAULT '0' COMMENT '是否为项目部成立前的流量. 0否. 1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_order_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_bak_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '订单ID',
  `ORDER_CODE` varchar(255) NOT NULL COMMENT '订单编号',
  `ORDER_USER` varchar(255) DEFAULT NULL COMMENT '下单者',
  `ORDER_TEL` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `ORDER_ZIP` varchar(10) DEFAULT NULL COMMENT '邮编',
  `ORDER_ADDR` varchar(500) DEFAULT NULL COMMENT '配送地址',
  `ORDER_CONTRACT_ID` varchar(50) DEFAULT NULL COMMENT '合同ID',
  `ORDER_CONTRACT_CODE` varchar(255) DEFAULT NULL COMMENT '合同编号',
  `ORDER_PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '订单产品数量',
  `ORDER_MONEY` decimal(20,2) DEFAULT NULL COMMENT '订单总额',
  `ACCEEPT_NAME` varchar(255) DEFAULT NULL COMMENT '接收姓名',
  `ACCEEPT_PHONE` varchar(255) DEFAULT NULL COMMENT '接收人电话',
  `ORDER_STATE` char(2) DEFAULT NULL COMMENT '订单状态',
  `ORDER_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SEND_TIME` datetime DEFAULT NULL COMMENT '发货时间',
  `STORAGE_TIME` datetime DEFAULT NULL COMMENT '收货入库时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `SEND_TYPE` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `SEND_CODE` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `SEND_COMPANY` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `SEND_ADDR` varchar(300) DEFAULT NULL COMMENT '发货地址',
  `SEND_ZIP` char(6) DEFAULT NULL COMMENT '发货邮编',
  `PRODUCTREMARK` varchar(500) DEFAULT NULL,
  `REMARK` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `PAYMENT_DAYS` int(11) DEFAULT NULL COMMENT '账期',
  `ORDER_TYPE` char(2) DEFAULT NULL COMMENT '交易类型 refer to T_CONTRACT.TRADE_SOURCE_TYPE',
  `EXTERNAL_PRODUCT_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统产品编号',
  `EXTERNAL_PRODUCT_NAME` varchar(64) DEFAULT NULL COMMENT '外部系统产品名称',
  `EXTERNAL_ORDER_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统订单编号',
  `IS_HISTORY` tinyint(4) DEFAULT NULL COMMENT '是否历史订单',
  `LOGISTICS_REMARK` varchar(500) DEFAULT NULL COMMENT '物流备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_order_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_order_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '订单ID',
  `ORDER_CODE` varchar(255) NOT NULL COMMENT '订单编号',
  `ORDER_USER` varchar(255) DEFAULT NULL COMMENT '下单者',
  `ORDER_TEL` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `ORDER_ZIP` varchar(10) DEFAULT NULL COMMENT '邮编',
  `ORDER_ADDR` varchar(500) DEFAULT NULL COMMENT '配送地址',
  `ORDER_CONTRACT_ID` varchar(50) DEFAULT NULL COMMENT '合同ID',
  `ORDER_CONTRACT_CODE` varchar(255) DEFAULT NULL COMMENT '合同编号',
  `ORDER_PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '订单产品数量',
  `ORDER_MONEY` decimal(20,2) DEFAULT NULL COMMENT '订单总额',
  `ACCEEPT_NAME` varchar(255) DEFAULT NULL COMMENT '接收姓名',
  `ACCEEPT_PHONE` varchar(255) DEFAULT NULL COMMENT '接收人电话',
  `ORDER_STATE` char(2) DEFAULT NULL COMMENT '订单状态',
  `ORDER_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SEND_TIME` datetime DEFAULT NULL COMMENT '发货时间',
  `STORAGE_TIME` datetime DEFAULT NULL COMMENT '收货入库时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `SEND_TYPE` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `SEND_CODE` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `SEND_COMPANY` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `SEND_ADDR` varchar(300) DEFAULT NULL COMMENT '发货地址',
  `SEND_ZIP` char(6) DEFAULT NULL COMMENT '发货邮编',
  `PRODUCTREMARK` varchar(500) DEFAULT NULL,
  `REMARK` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `PAYMENT_DAYS` int(11) DEFAULT NULL COMMENT '账期',
  `ORDER_TYPE` char(2) DEFAULT NULL COMMENT '交易类型 refer to T_CONTRACT.TRADE_SOURCE_TYPE',
  `EXTERNAL_PRODUCT_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统产品编号',
  `EXTERNAL_PRODUCT_NAME` varchar(64) DEFAULT NULL COMMENT '外部系统产品名称',
  `EXTERNAL_ORDER_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统订单编号',
  `IS_HISTORY` tinyint(4) DEFAULT NULL COMMENT '是否历史订单',
  `LOGISTICS_REMARK` varchar(500) DEFAULT NULL COMMENT '物流备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_org`
--

DROP TABLE IF EXISTS `t_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_org` (
  `ID` varchar(50) NOT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  `PARENT_ID` varchar(50) DEFAULT NULL,
  `ORG_NAME` varchar(255) DEFAULT NULL,
  `ISTERMINAL` varchar(255) DEFAULT NULL,
  `ORG_DESC` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pay_flow`
--

DROP TABLE IF EXISTS `t_pay_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pay_flow` (
  `id` varchar(32) NOT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `flowType` tinyint(4) NOT NULL COMMENT '流量类型.0：无.1：交易流量.2：合同流量.3：采购流量.4：无效流量.',
  `extDocNo` varchar(64) NOT NULL COMMENT '外部关联编号或id，目前基本用于存放支付编号、转账编号或提现编号',
  `extDocType` tinyint(4) NOT NULL COMMENT '外部关联编号类型.0：票据支付.1：发货单支付.2：预付款支付.3：提现.4：转账.',
  `status` tinyint(4) NOT NULL COMMENT '状态.0：正常（默认值）.1：已禁用.2：已删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createUserId` varchar(32) NOT NULL COMMENT '创建人id',
  `updateUserId` varchar(32) DEFAULT NULL COMMENT '更新人id',
  `createdBy` varchar(64) NOT NULL COMMENT '创建人，只用于内部人员方便跟踪',
  `updatedBy` varchar(64) NOT NULL COMMENT '更新人，只用于内部人员方便跟踪',
  PRIMARY KEY (`id`),
  KEY `idx_payflow_extDocNo` (`extDocNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pay_flow_bak_20170717`
--

DROP TABLE IF EXISTS `t_pay_flow_bak_20170717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pay_flow_bak_20170717` (
  `id` varchar(32) NOT NULL,
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `flowType` tinyint(4) NOT NULL COMMENT '流量类型.0：无.1：交易流量.2：合同流量.3：采购流量.4：无效流量.',
  `extDocNo` varchar(64) NOT NULL COMMENT '外部关联编号或id，目前基本用于存放支付编号、转账编号或提现编号',
  `extDocType` tinyint(4) NOT NULL COMMENT '外部关联编号类型.0：票据支付.1：发货单支付.2：预付款支付.3：提现.4：转账.',
  `status` tinyint(4) NOT NULL COMMENT '状态.0：正常（默认值）.1：已禁用.2：已删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createUserId` varchar(32) NOT NULL COMMENT '创建人id',
  `updateUserId` varchar(32) DEFAULT NULL COMMENT '更新人id',
  `createdBy` varchar(64) NOT NULL COMMENT '创建人，只用于内部人员方便跟踪',
  `updatedBy` varchar(64) NOT NULL COMMENT '更新人，只用于内部人员方便跟踪',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_payee_bank_20170626`
--

DROP TABLE IF EXISTS `t_payee_bank_20170626`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_payee_bank_20170626` (
  `ID` varchar(50) NOT NULL,
  `ACCOUNTNAME` varchar(50) NOT NULL COMMENT '户名',
  `ACCOUNTCODE` varchar(50) NOT NULL COMMENT '账号',
  `BANKCODE` varchar(50) NOT NULL COMMENT '银行编码',
  `SUBBANK_PROVICE` varchar(20) NOT NULL COMMENT '省',
  `SUBBANK_CITY` varchar(20) NOT NULL COMMENT '市',
  `SUBBANK_KEYWORD` varchar(20) DEFAULT NULL COMMENT '关键字',
  `SUBBANKCODE` varchar(50) NOT NULL COMMENT '支行',
  `CREATE_TIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `CORPORATEUSER_ID` varchar(50) NOT NULL COMMENT '用户ID',
  `PHONE` varchar(20) DEFAULT NULL,
  `NICKNAME` varchar(50) DEFAULT NULL,
  `BANKCODENAME` varchar(100) NOT NULL,
  `SUBBANKCODENAME` varchar(100) NOT NULL,
  `payTimeType` tinyint(4) NOT NULL COMMENT '到账时间. 0:普通到账(默认值). 1:实时到账(超级网银通道)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_pricingstrategy`
--

DROP TABLE IF EXISTS `t_pricingstrategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pricingstrategy` (
  `ID` varchar(50) NOT NULL,
  `PRODUCT_ID` varchar(50) NOT NULL COMMENT '产品id',
  `VALIDSTARTTIME` datetime DEFAULT NULL COMMENT '价格有效期开始时间',
  `VALIDENDTIME` datetime DEFAULT NULL COMMENT '价格有效期结束时间',
  `STATUS` int(2) DEFAULT NULL COMMENT '1启用  0禁用',
  `USERID` varchar(50) DEFAULT NULL COMMENT '策略发布人',
  `CREATETIME` datetime DEFAULT NULL COMMENT '策略创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `PRODUCT_ID` varchar(50) NOT NULL DEFAULT '',
  `PRODUCT_CODE` varchar(32) NOT NULL,
  `PRODUCT_NAME` varchar(64) DEFAULT NULL,
  `ALIAS` varchar(50) DEFAULT NULL COMMENT '产品别名',
  `CATEGORYID1` varchar(32) DEFAULT NULL,
  `CATEGORYID2` varchar(32) DEFAULT NULL,
  `CATEGORYID3` varchar(32) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `originalPrice` decimal(22,8) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL COMMENT '产品状态',
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `SUPPLIERID` varchar(32) DEFAULT NULL,
  `INVENTORY_NUM` decimal(20,6) DEFAULT NULL,
  `PRODUCT_UNIT` varchar(8) DEFAULT NULL,
  `ISRELEASE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `ISBIDFOR` int(2) DEFAULT '0' COMMENT '是否是竞价产品 1 是 0 否',
  `PATH` varchar(255) DEFAULT NULL COMMENT '产品主图片',
  `PAGEHTML` longtext COMMENT '产品介绍',
  `PROVINCE_ID` varchar(20) DEFAULT NULL COMMENT '产地省份id',
  `CITY_ID` varchar(20) DEFAULT NULL COMMENT '市id',
  `AREA_ID` varchar(20) DEFAULT NULL COMMENT '区id',
  `BUYDESC` longtext COMMENT '采购说明',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '运费模板id',
  `P_TYPE` tinyint(4) NOT NULL COMMENT '1未定价 2已定价',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `REFUSE_CAUSER` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `IS_FROM_ORDER` tinyint(4) DEFAULT NULL COMMENT '是否由历史订单创建而来',
  `RELEASETIME` datetime DEFAULT NULL,
  `productImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片集 ID',
  `productType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '产品类型 1 普通商品 2APP商城商品',
  `clicks` int(11) DEFAULT NULL,
  `version` int(11) NOT NULL,
  `imgFSInfoId` varchar(32) DEFAULT NULL COMMENT '产品图片文件集ID, refer to T_FileSetInfo''s id',
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FKlxsy6wqgv65xcxepq598yl9ls` (`IMPORT_RECORD_ID`) USING BTREE,
  KEY `FK60ajgfrn7t6a48ql47ya9pm9m` (`SUPPLIERID`) USING BTREE,
  KEY `t_prouduct_cratetime` (`CREATETIME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_bak`
--

DROP TABLE IF EXISTS `t_product_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_bak` (
  `PRODUCT_ID` varchar(50) NOT NULL DEFAULT '',
  `PRODUCT_CODE` varchar(32) NOT NULL,
  `PRODUCT_NAME` varchar(64) DEFAULT NULL,
  `ALIAS` varchar(50) DEFAULT NULL COMMENT '产品别名',
  `CATEGORYID1` varchar(32) DEFAULT NULL,
  `CATEGORYID2` varchar(32) DEFAULT NULL,
  `CATEGORYID3` varchar(32) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL COMMENT '产品状态',
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `SUPPLIERID` varchar(32) DEFAULT NULL,
  `INVENTORY_NUM` decimal(20,6) DEFAULT NULL,
  `PRODUCT_UNIT` varchar(8) DEFAULT NULL,
  `ISRELEASE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `ISBIDFOR` int(2) DEFAULT '0' COMMENT '是否是竞价产品 1 是 0 否',
  `PATH` varchar(255) DEFAULT NULL COMMENT '产品主图片',
  `ISQA` int(2) DEFAULT '0' COMMENT '是否发货前质检 0否，1是',
  `PAGEHTML` longtext COMMENT '产品介绍',
  `PROVINCE_ID` varchar(20) DEFAULT NULL COMMENT '产地省份id',
  `CITY_ID` varchar(20) DEFAULT NULL COMMENT '市id',
  `AREA_ID` varchar(20) DEFAULT NULL COMMENT '区id',
  `BUYDESC` longtext COMMENT '采购说明',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '运费模板id',
  `P_TYPE` varchar(2) DEFAULT NULL COMMENT '1:专利产品   2：非专利',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `REFUSE_CAUSER` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `IS_FROM_ORDER` tinyint(4) DEFAULT NULL COMMENT '是否由历史订单创建而来',
  `imgFSInfoId` varchar(32) DEFAULT NULL COMMENT '产品图片文件集ID, refer to T_FileSetInfo''s id',
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FKlxsy6wqgv65xcxepq598yl9ls` (`IMPORT_RECORD_ID`) USING BTREE,
  KEY `FK60ajgfrn7t6a48ql47ya9pm9m` (`SUPPLIERID`) USING BTREE,
  KEY `t_prouduct_cratetime` (`CREATETIME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_bak_20170531`
--

DROP TABLE IF EXISTS `t_product_bak_20170531`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_bak_20170531` (
  `PRODUCT_ID` varchar(50) NOT NULL DEFAULT '',
  `PRODUCT_CODE` varchar(32) NOT NULL,
  `PRODUCT_NAME` varchar(64) DEFAULT NULL,
  `ALIAS` varchar(50) DEFAULT NULL COMMENT '产品别名',
  `CATEGORYID1` varchar(32) DEFAULT NULL,
  `CATEGORYID2` varchar(32) DEFAULT NULL,
  `CATEGORYID3` varchar(32) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `SUPPLIERID` varchar(32) DEFAULT NULL,
  `INVENTORY_NUM` decimal(20,6) DEFAULT NULL,
  `PRODUCT_UNIT` varchar(8) DEFAULT NULL,
  `ISRELEASE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `ISBIDFOR` int(2) DEFAULT '0' COMMENT '是否是竞价产品 1 是 0 否',
  `PATH` varchar(255) DEFAULT NULL COMMENT '产品主图片',
  `ISQA` int(2) DEFAULT '0' COMMENT '是否发货前质检 0否，1是',
  `PAGEHTML` longtext COMMENT '产品介绍',
  `PROVINCE_ID` varchar(20) DEFAULT NULL COMMENT '产地省份id',
  `CITY_ID` varchar(20) DEFAULT NULL COMMENT '市id',
  `AREA_ID` varchar(20) DEFAULT NULL COMMENT '区id',
  `BUYDESC` longtext COMMENT '采购说明',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '运费模板id',
  `P_TYPE` tinyint(4) NOT NULL COMMENT '1未定价 2已定价',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `REFUSE_CAUSER` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `IS_FROM_ORDER` tinyint(4) DEFAULT NULL COMMENT '是否由历史订单创建而来',
  `RELEASETIME` datetime DEFAULT NULL,
  `productType` tinyint(4) NOT NULL COMMENT '1普通  2 预付款',
  `productImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片集 ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_bak_20170717`
--

DROP TABLE IF EXISTS `t_product_bak_20170717`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_bak_20170717` (
  `PRODUCT_ID` varchar(50) NOT NULL DEFAULT '',
  `PRODUCT_CODE` varchar(32) NOT NULL,
  `PRODUCT_NAME` varchar(64) DEFAULT NULL,
  `ALIAS` varchar(50) DEFAULT NULL COMMENT '产品别名',
  `CATEGORYID1` varchar(32) DEFAULT NULL,
  `CATEGORYID2` varchar(32) DEFAULT NULL,
  `CATEGORYID3` varchar(32) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `SUPPLIERID` varchar(32) DEFAULT NULL,
  `INVENTORY_NUM` decimal(20,6) DEFAULT NULL,
  `PRODUCT_UNIT` varchar(8) DEFAULT NULL,
  `ISRELEASE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `ISBIDFOR` int(2) DEFAULT '0' COMMENT '是否是竞价产品 1 是 0 否',
  `PATH` varchar(255) DEFAULT NULL COMMENT '产品主图片',
  `ISQA` int(2) DEFAULT '0' COMMENT '是否发货前质检 0否，1是',
  `PAGEHTML` longtext COMMENT '产品介绍',
  `PROVINCE_ID` varchar(20) DEFAULT NULL COMMENT '产地省份id',
  `CITY_ID` varchar(20) DEFAULT NULL COMMENT '市id',
  `AREA_ID` varchar(20) DEFAULT NULL COMMENT '区id',
  `BUYDESC` longtext COMMENT '采购说明',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '运费模板id',
  `P_TYPE` tinyint(4) NOT NULL COMMENT '1未定价 2已定价',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `REFUSE_CAUSER` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `IS_FROM_ORDER` tinyint(4) DEFAULT NULL COMMENT '是否由历史订单创建而来',
  `RELEASETIME` datetime DEFAULT NULL,
  `productType` tinyint(4) NOT NULL COMMENT '1普通  2 预付款',
  `productImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片集 ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_bak_20170720`
--

DROP TABLE IF EXISTS `t_product_bak_20170720`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_bak_20170720` (
  `PRODUCT_ID` varchar(50) NOT NULL DEFAULT '',
  `PRODUCT_CODE` varchar(32) NOT NULL,
  `PRODUCT_NAME` varchar(64) DEFAULT NULL,
  `ALIAS` varchar(50) DEFAULT NULL COMMENT '产品别名',
  `CATEGORYID1` varchar(32) DEFAULT NULL,
  `CATEGORYID2` varchar(32) DEFAULT NULL,
  `CATEGORYID3` varchar(32) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `KEYWORDS` varchar(255) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `SUPPLIERID` varchar(32) DEFAULT NULL,
  `INVENTORY_NUM` decimal(20,6) DEFAULT NULL,
  `PRODUCT_UNIT` varchar(8) DEFAULT NULL,
  `ISRELEASE` int(11) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `UPDATETIME` datetime DEFAULT NULL,
  `ISBIDFOR` int(2) DEFAULT '0' COMMENT '是否是竞价产品 1 是 0 否',
  `PATH` varchar(255) DEFAULT NULL COMMENT '产品主图片',
  `ISQA` int(2) DEFAULT '0' COMMENT '是否发货前质检 0否，1是',
  `PAGEHTML` longtext COMMENT '产品介绍',
  `PROVINCE_ID` varchar(20) DEFAULT NULL COMMENT '产地省份id',
  `CITY_ID` varchar(20) DEFAULT NULL COMMENT '市id',
  `AREA_ID` varchar(20) DEFAULT NULL COMMENT '区id',
  `BUYDESC` longtext COMMENT '采购说明',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '运费模板id',
  `P_TYPE` tinyint(4) NOT NULL COMMENT '1未定价 2已定价',
  `IS_SEND` char(1) DEFAULT '1' COMMENT '1需要发货0无需发货',
  `REFUSE_CAUSER` varchar(200) DEFAULT NULL COMMENT '拒绝原因',
  `IS_FROM_ORDER` tinyint(4) DEFAULT NULL COMMENT '是否由历史订单创建而来',
  `RELEASETIME` datetime DEFAULT NULL,
  `productImgFSInfoId` varchar(32) DEFAULT NULL COMMENT '图片集 ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_cess`
--

DROP TABLE IF EXISTS `t_product_cess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_cess` (
  `ID` varchar(50) NOT NULL,
  `CESS` decimal(20,2) DEFAULT NULL COMMENT '税率  单位（%）',
  `DISCOUNT` decimal(20,2) DEFAULT NULL COMMENT '折扣 (单位%)',
  `PRICINGID` varchar(50) DEFAULT NULL COMMENT '定价策略id',
  PRIMARY KEY (`ID`),
  KEY `FK2n1abmyt47g20qyl1n5i9nhod` (`PRICINGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_cost`
--

DROP TABLE IF EXISTS `t_product_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_cost` (
  `ID` varchar(50) NOT NULL,
  `cost_day` tinyint(4) DEFAULT NULL COMMENT '账期',
  `DISCOUNT` decimal(20,2) DEFAULT NULL COMMENT '折扣 单位(%)',
  `PRICINGID` varchar(50) DEFAULT NULL COMMENT '定价策略id',
  PRIMARY KEY (`ID`),
  KEY `FKjq3fd3o6brtnj4l41y2a8y9u4` (`PRICINGID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_product_unitconversion`
--

DROP TABLE IF EXISTS `t_product_unitconversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product_unitconversion` (
  `ID` varchar(50) NOT NULL,
  `PID` varchar(50) DEFAULT NULL COMMENT '商品id',
  `ZLVAL` varchar(50) DEFAULT NULL COMMENT '重量数值',
  `ZLUNIT` varchar(50) DEFAULT NULL COMMENT '重量单位',
  `ZLVAL_CONVER` varchar(50) DEFAULT NULL COMMENT '重量转换值',
  `ZLVAL_CONVERUNIT` varchar(50) DEFAULT NULL COMMENT '重量换算单位',
  `TJVAL` varchar(50) DEFAULT NULL COMMENT '体积值',
  `TJUNIT` varchar(50) DEFAULT NULL COMMENT '体积单位',
  `TJVAL_CONVER` varchar(50) DEFAULT NULL COMMENT '体积换算值',
  `TJVAL_CONVERUNIT` varchar(50) DEFAULT NULL COMMENT '体积换算单位',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productcategory`
--

DROP TABLE IF EXISTS `t_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productcategory` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(80) DEFAULT NULL,
  `ORDERBY` int(11) DEFAULT NULL,
  `ISSHOW` varchar(32) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL,
  `PARENTID` varchar(32) DEFAULT NULL,
  `PRODUCT_SPEC_ID` varchar(32) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '产品类型 1 大宗商品 2 快销品',
  PRIMARY KEY (`ID`),
  KEY `FK60j8ume9r22unncumltck7nbw` (`IMPORT_RECORD_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productquotation`
--

DROP TABLE IF EXISTS `t_productquotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productquotation` (
  `id` char(32) NOT NULL,
  `productName` varchar(32) NOT NULL,
  `spec` varchar(200) NOT NULL,
  `price` decimal(22,8) NOT NULL,
  `unit` varchar(8) NOT NULL,
  `validTime` datetime NOT NULL,
  `provinceId` char(32) NOT NULL,
  `cityId` char(32) NOT NULL,
  `areaId` char(32) NOT NULL,
  `isShow` tinyint(1) NOT NULL,
  `updateTime` datetime NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(32) NOT NULL,
  `createdBy` varchar(32) NOT NULL,
  `version` int(11) NOT NULL,
  `numberTime` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productspec`
--

DROP TABLE IF EXISTS `t_productspec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productspec` (
  `PRODUCT_SPEC_ID` varchar(32) NOT NULL,
  `PRODUCT_SPEC_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productspecdata`
--

DROP TABLE IF EXISTS `t_productspecdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productspecdata` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `PRODUCT_SPEC_ATT_ID` varchar(50) DEFAULT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL,
  `DATAVALUE` varchar(32) DEFAULT '',
  `dataType` tinyint(2) NOT NULL COMMENT '数据类型0：产品，1：需求产品，2：单据',
  `docId` varchar(32) DEFAULT NULL COMMENT '单据ID',
  `docDetailId` varchar(32) DEFAULT NULL COMMENT '明细单据ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productspecdata_bak_20170317`
--

DROP TABLE IF EXISTS `t_productspecdata_bak_20170317`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productspecdata_bak_20170317` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `PRODUCT_SPEC_ATT_ID` varchar(50) DEFAULT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL,
  `DATAVALUE` varchar(32) DEFAULT '',
  `dataType` tinyint(2) DEFAULT NULL,
  `docId` varchar(32) DEFAULT NULL COMMENT '单据ID',
  `docDetailId` varchar(32) DEFAULT NULL COMMENT '明细单据ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_productspecdata_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_productspecdata_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_productspecdata_bak_oneorder2mulprod` (
  `PRODUCT_SPEC_DATA_ID` varchar(50) NOT NULL,
  `PRODUCT_SPEC_ATT_ID` varchar(50) DEFAULT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL,
  `DATAVALUE` varchar(32) DEFAULT '',
  `DATATYPE` char(1) DEFAULT '0' COMMENT '0产品1需求产品'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_purpose_inf`
--

DROP TABLE IF EXISTS `t_purpose_inf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_purpose_inf` (
  `APPLY_ID` varchar(50) NOT NULL COMMENT '报名编码',
  `ACTIVITY_TYPE` varchar(20) DEFAULT NULL COMMENT '活动类型，引用数据字典DKEY',
  `CORPORATE_USER_TYPE` int(11) DEFAULT NULL COMMENT '企业类型',
  `CORPORATENAME` varchar(128) NOT NULL COMMENT '企业名称',
  `CONTACT_NAME` varchar(80) NOT NULL COMMENT '联系人',
  `CONTACT_PHONE` varchar(32) NOT NULL COMMENT '联系方式',
  `EMAIL` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `CATEGORYID1` varchar(32) DEFAULT NULL COMMENT '分类1',
  `CATEGORYID2` varchar(32) DEFAULT NULL COMMENT '分类2',
  `CATEGORYID3` varchar(32) DEFAULT NULL COMMENT '分类3',
  `PRODUCT_NAME` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `NUM` decimal(20,6) DEFAULT NULL,
  `UNIT` varchar(50) DEFAULT NULL,
  `PRICE` decimal(22,8) DEFAULT NULL,
  `PROPERTY` varchar(2000) DEFAULT NULL COMMENT ' 产品规格属性',
  `REMARK` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATETIME` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_purpose_property`
--

DROP TABLE IF EXISTS `t_purpose_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_purpose_property` (
  `ID` varchar(36) NOT NULL,
  `APPLY_ID` varchar(36) NOT NULL,
  `ACTIVITY_TYPE` varchar(20) NOT NULL,
  `CREATETIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NAME` varchar(200) NOT NULL,
  `VALUE` varchar(1000) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_quality`
--

DROP TABLE IF EXISTS `t_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_quality` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `SEND_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `QUALITY_ID` varchar(50) DEFAULT NULL COMMENT '质检员ID',
  `USER_NAME` varchar(50) DEFAULT NULL COMMENT '质检员用户名',
  `RESULT_DETAIL` text COMMENT '质检结果描述',
  `status` tinyint(2) NOT NULL,
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `qualityAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'quality attachment file set info id',
  `qualityType` tinyint(2) NOT NULL DEFAULT '1' COMMENT '质检类型, 1；发货前质检，2：入库前质检，3：采购商自己质检',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_quality_bak`
--

DROP TABLE IF EXISTS `t_quality_bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_quality_bak` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '主键ID',
  `SEND_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `QUALITY_ID` varchar(50) DEFAULT NULL COMMENT '质检员ID',
  `USER_NAME` varchar(50) DEFAULT NULL COMMENT '质检员用户名',
  `RESULT_DETAIL` text COMMENT '质检结果描述',
  `status` tinyint(2) NOT NULL,
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `qualityAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT 'quality attachment file set info id',
  `qualityType` tinyint(2) NOT NULL DEFAULT '1' COMMENT '质检类型, 1；发货前质检，2：入库前质检，3：采购商自己质检',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_reminded`
--

DROP TABLE IF EXISTS `t_reminded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reminded` (
  `ID` varchar(50) NOT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL COMMENT '项目ID',
  `PHONE` varchar(50) DEFAULT NULL COMMENT '提醒电话',
  `CONTENT` varchar(200) DEFAULT NULL COMMENT '提醒内容',
  `REMIND_TIME` datetime DEFAULT NULL COMMENT '提醒时间',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_require`
--

DROP TABLE IF EXISTS `t_require`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_require` (
  `ID` varchar(60) NOT NULL,
  `REQUIRE_CODE` varchar(50) DEFAULT NULL COMMENT '需求编号',
  `PRODUCT_NAME` varchar(50) DEFAULT NULL,
  `TRADE_SOURCE_ID` varchar(50) DEFAULT NULL COMMENT '交易来源ID',
  `QUANTITY` decimal(20,6) DEFAULT NULL COMMENT '数量',
  `UNIT` varchar(255) DEFAULT NULL COMMENT '单位',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `STATUS` varchar(255) DEFAULT NULL COMMENT '0:待审核，1通过，2拒绝(审核通过后，才可以发起集采交易)',
  `DEPOSIT_TYPE` tinyint(4) DEFAULT '0' COMMENT '保证金类型：0，数字，1，百分比',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '其他要求',
  `CLASS1` varchar(60) DEFAULT NULL COMMENT '一级分类',
  `CLASS2` varchar(60) DEFAULT NULL,
  `CLASS3` varchar(60) DEFAULT NULL,
  `APPLY_COM` varchar(60) DEFAULT NULL COMMENT '申请企业',
  `CONTACT` varchar(50) DEFAULT NULL COMMENT '联系人',
  `TEl` varchar(50) DEFAULT NULL COMMENT 'l联系电话',
  `EXP_PRICE` decimal(22,8) DEFAULT NULL COMMENT '期望价格',
  `REQ_DATE` date DEFAULT NULL COMMENT '需求日期',
  `COMPANY_ID` varchar(64) DEFAULT NULL COMMENT '申请企业id',
  `TYPE` int(2) DEFAULT NULL COMMENT '1：集采，2：竞拍 3撮合4模糊',
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `EARNEST_MONEY` decimal(20,2) DEFAULT '0.00' COMMENT '保证金',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县',
  `REFUSE_CAUSER` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `PAGEHTML` text COMMENT '产品详情',
  `PRICE_END_DATE` date DEFAULT NULL COMMENT '报价截止日',
  `PAY_DATE_EXPLAIN` varchar(500) DEFAULT NULL COMMENT '付款时间说明',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据',
  `showLevel` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示级别',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_require_bak_20170320`
--

DROP TABLE IF EXISTS `t_require_bak_20170320`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_require_bak_20170320` (
  `ID` varchar(60) NOT NULL,
  `REQUIRE_CODE` varchar(50) DEFAULT NULL COMMENT '需求编号',
  `PRODUCT_NAME` varchar(50) DEFAULT NULL,
  `TRADE_SOURCE_ID` varchar(50) DEFAULT NULL COMMENT '交易来源ID',
  `QUANTITY` decimal(20,6) DEFAULT NULL COMMENT '数量',
  `UNIT` varchar(255) DEFAULT NULL COMMENT '单位',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `STATUS` varchar(255) DEFAULT NULL COMMENT '0:待审核，1通过，2拒绝(审核通过后，才可以发起集采交易)',
  `DEPOSIT_TYPE` tinyint(4) DEFAULT '0' COMMENT '保证金类型：0，数字，1，百分比',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '其他要求',
  `CLASS1` varchar(60) DEFAULT NULL COMMENT '一级分类',
  `CLASS2` varchar(60) DEFAULT NULL,
  `CLASS3` varchar(60) DEFAULT NULL,
  `APPLY_COM` varchar(60) DEFAULT NULL COMMENT '申请企业',
  `CONTACT` varchar(50) DEFAULT NULL COMMENT '联系人',
  `TEl` varchar(50) DEFAULT NULL COMMENT 'l联系电话',
  `EXP_PRICE` decimal(22,8) DEFAULT NULL COMMENT '期望价格',
  `REQ_DATE` date DEFAULT NULL COMMENT '需求日期',
  `COMPANY_ID` varchar(64) DEFAULT NULL COMMENT '申请企业id',
  `TYPE` int(2) DEFAULT NULL COMMENT '1：集采，2：竞拍 3撮合4模糊',
  `PICPATH` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `CREATETIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LASTUPDATETIME` datetime DEFAULT NULL COMMENT '最后修改时间',
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `EARNEST_MONEY` decimal(20,2) DEFAULT '0.00' COMMENT '保证金',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县',
  `REFUSE_CAUSER` varchar(500) DEFAULT NULL COMMENT '拒绝原因',
  `PAGEHTML` text COMMENT '产品详情',
  `PRICE_END_DATE` date DEFAULT NULL COMMENT '报价截止日',
  `PAY_DATE_EXPLAIN` varchar(500) DEFAULT NULL COMMENT '付款时间说明',
  `DISABLED` tinyint(4) DEFAULT '0' COMMENT '是否失效数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_role_visit_user`
--

DROP TABLE IF EXISTS `t_role_visit_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_visit_user` (
  `USER_ID` varchar(32) NOT NULL,
  `ROLE_ID` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_searchkeyword`
--

DROP TABLE IF EXISTS `t_searchkeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_searchkeyword` (
  `id` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_searchrequest`
--

DROP TABLE IF EXISTS `t_searchrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_searchrequest` (
  `id` varchar(32) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send`
--

DROP TABLE IF EXISTS `t_send`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send` (
  `id` varchar(32) NOT NULL,
  `sendCode` varchar(32) NOT NULL COMMENT '发货单编号',
  `sendUser` varchar(255) DEFAULT NULL COMMENT '发货人姓名',
  `sendPhone` varchar(20) DEFAULT NULL COMMENT '发货人电话',
  `sendStreetAddr` varchar(500) DEFAULT NULL COMMENT '发货街道地址',
  `orderId` varchar(32) NOT NULL COMMENT '订单id',
  `orderCode` varchar(255) NOT NULL COMMENT '订单编号',
  `recName` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `recPhone` varchar(255) DEFAULT NULL COMMENT '收货人电话',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sendTime` datetime DEFAULT NULL COMMENT '收货时间',
  `recTime` datetime DEFAULT NULL COMMENT '入库时间',
  `recStreetAddr` varchar(300) DEFAULT NULL COMMENT '收货人街道地址',
  `sendProvinceId` varchar(50) DEFAULT NULL COMMENT '发货省id',
  `sendCityId` varchar(50) DEFAULT NULL COMMENT '发货市id',
  `sendAreaId` varchar(50) DEFAULT NULL COMMENT '发货区id',
  `recProvinceId` varchar(50) DEFAULT NULL COMMENT '收货省id',
  `recCityId` varchar(50) DEFAULT NULL COMMENT '收货市id',
  `recAreaId` varchar(50) DEFAULT NULL COMMENT '收货区id',
  `importRecordId` varchar(36) DEFAULT NULL COMMENT '导入记录id',
  `externalSendCode` varchar(255) DEFAULT NULL COMMENT '外部发货单号',
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `shiptSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '发货产品的总额（不含运费）',
  `recSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '接受到的产品总额（不含运费）',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '发货状态，1：质检中，2：待发货，3：已发货，4：已质检，5：已收货，6：已完成',
  `recConfirmAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT '确认收货附件的file set info id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send_bak_20170428`
--

DROP TABLE IF EXISTS `t_send_bak_20170428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send_bak_20170428` (
  `id` varchar(32) NOT NULL,
  `sendCode` varchar(32) NOT NULL COMMENT '发货单编号',
  `sendUser` varchar(255) DEFAULT NULL COMMENT '发货人姓名',
  `sendPhone` varchar(20) DEFAULT NULL COMMENT '发货人电话',
  `sendStreetAddr` varchar(500) DEFAULT NULL COMMENT '发货街道地址',
  `orderId` varchar(32) NOT NULL COMMENT '订单id',
  `orderCode` varchar(255) NOT NULL COMMENT '订单编号',
  `recName` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `recPhone` varchar(255) DEFAULT NULL COMMENT '收货人电话',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sendTime` datetime DEFAULT NULL COMMENT '收货时间',
  `recTime` datetime DEFAULT NULL COMMENT '入库时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `SEND_TYPE` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `logisticCode` varchar(50) DEFAULT NULL COMMENT '物流编号',
  `logisticCompany` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `recStreetAddr` varchar(300) DEFAULT NULL COMMENT '收货人街道地址',
  `sendProvinceId` varchar(50) DEFAULT NULL COMMENT '发货省id',
  `sendCityId` varchar(50) DEFAULT NULL COMMENT '发货市id',
  `sendAreaId` varchar(50) DEFAULT NULL COMMENT '发货区id',
  `recProvinceId` varchar(50) DEFAULT NULL COMMENT '收货省id',
  `recCityId` varchar(50) DEFAULT NULL COMMENT '收货市id',
  `recAreaId` varchar(50) DEFAULT NULL COMMENT '收货区id',
  `importRecordId` varchar(36) DEFAULT NULL COMMENT '导入记录id',
  `logisticRemark` varchar(200) DEFAULT NULL COMMENT '物流备注',
  `payType` tinyint(2) NOT NULL COMMENT '支付类型',
  `externalSendCode` varchar(255) DEFAULT NULL COMMENT '外部发货单号',
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `shiptSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '发货产品的总额（不含运费）',
  `recSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '接受到的产品总额（不含运费）',
  `shiptTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '发货单总额=shiptSubTotalAmt+totalFreight',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `recTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '收货总额=recSubTotalAmt+totalFreight',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '发货状态，1：质检中，2：待发货，3：已发货，4：已质检，5：已收货，6：已完成',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计已支付金额',
  `recConfirmAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT '确认收货附件的file set info id',
  `discountAmt` decimal(18,2) NOT NULL COMMENT '折让金额',
  `expPaymentAmt` decimal(20,2) NOT NULL COMMENT '应付总额',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send_bak_20170720`
--

DROP TABLE IF EXISTS `t_send_bak_20170720`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send_bak_20170720` (
  `id` varchar(32) NOT NULL,
  `sendCode` varchar(32) NOT NULL COMMENT '发货单编号',
  `sendUser` varchar(255) DEFAULT NULL COMMENT '发货人姓名',
  `sendPhone` varchar(20) DEFAULT NULL COMMENT '发货人电话',
  `sendStreetAddr` varchar(500) DEFAULT NULL COMMENT '发货街道地址',
  `orderId` varchar(32) NOT NULL COMMENT '订单id',
  `orderCode` varchar(255) NOT NULL COMMENT '订单编号',
  `recName` varchar(255) DEFAULT NULL COMMENT '收货人姓名',
  `recPhone` varchar(255) DEFAULT NULL COMMENT '收货人电话',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sendTime` datetime DEFAULT NULL COMMENT '收货时间',
  `recTime` datetime DEFAULT NULL COMMENT '入库时间',
  `logisticCode` varchar(50) DEFAULT NULL COMMENT '物流编号',
  `logisticCompany` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `recStreetAddr` varchar(300) DEFAULT NULL COMMENT '收货人街道地址',
  `sendProvinceId` varchar(50) DEFAULT NULL COMMENT '发货省id',
  `sendCityId` varchar(50) DEFAULT NULL COMMENT '发货市id',
  `sendAreaId` varchar(50) DEFAULT NULL COMMENT '发货区id',
  `recProvinceId` varchar(50) DEFAULT NULL COMMENT '收货省id',
  `recCityId` varchar(50) DEFAULT NULL COMMENT '收货市id',
  `recAreaId` varchar(50) DEFAULT NULL COMMENT '收货区id',
  `importRecordId` varchar(36) DEFAULT NULL COMMENT '导入记录id',
  `logisticRemark` varchar(200) DEFAULT NULL COMMENT '物流备注',
  `payType` tinyint(2) NOT NULL COMMENT '支付类型',
  `externalSendCode` varchar(255) DEFAULT NULL COMMENT '外部发货单号',
  `totalFreight` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '总运费',
  `shiptSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '发货产品的总额（不含运费）',
  `recSubTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '接受到的产品总额（不含运费）',
  `shiptTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '发货单总额=shiptSubTotalAmt+totalFreight',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `recTotalAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '收货总额=recSubTotalAmt+totalFreight',
  `shiptStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '发货状态，1：质检中，2：待发货，3：已发货，4：已质检，5：已收货，6：已完成',
  `paymentStatus` tinyint(2) NOT NULL DEFAULT '1' COMMENT '支付状态 1：未付款，2：部分付款，3：全部付款',
  `actPaymentAmt` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '累计已支付金额',
  `recConfirmAtchFSInfoId` varchar(32) DEFAULT NULL COMMENT '确认收货附件的file set info id',
  `orderType` tinyint(2) NOT NULL COMMENT '订单类型，1普通订单，2预付款订单'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send_bak_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_send_bak_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send_bak_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '发货单ID',
  `CODE` varchar(255) DEFAULT NULL COMMENT '发货单编号',
  `SEND_USER` varchar(255) DEFAULT NULL COMMENT '下单者',
  `SEND_TEL` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `SEND_ZIP` varchar(10) DEFAULT NULL COMMENT '发货邮编',
  `SEND_ADDR` varchar(500) DEFAULT NULL COMMENT '发货配送地址',
  `ORDER_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `ORDER_CODE` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `SEND_PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '发货单产品数量',
  `SEND_MONEY` decimal(20,2) DEFAULT NULL COMMENT '发货单总额',
  `ACCEEPT_NAME` varchar(255) DEFAULT NULL COMMENT '接收姓名',
  `ACCEEPT_PHONE` varchar(255) DEFAULT NULL COMMENT '接收人电话',
  `SEND_STATE` char(2) DEFAULT NULL COMMENT '发货单状态 （01：未发货，02：发货前质检中，03：发货前质检完成，04：已发货，05：入库前质检中，06：入库前质检完成，07：已收货，08：付款处理中，09：已付款，10：已完成，11：已开票，12：已收票，13：已确认收款，14：部分支付，15：部分支付-已开票，16：部分支付-已收票）',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SEND_TIME` datetime DEFAULT NULL COMMENT '发货时间',
  `STORAGE_TIME` datetime DEFAULT NULL COMMENT '收货入库时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `SEND_TYPE` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `SEND_CODE` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `SEND_COMPANY` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `ACCEPT_ADDR` varchar(300) DEFAULT NULL COMMENT '收货地址',
  `ACCEPT_ZIP` char(6) DEFAULT NULL COMMENT '收货邮编',
  `ACCEPT_NUM` decimal(20,6) DEFAULT NULL COMMENT '收货数量',
  `ACCEPT_MONEY` decimal(20,2) DEFAULT '0.00' COMMENT '入库总额',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `ACCEPT_AFFIX` varchar(300) DEFAULT NULL COMMENT '确认收货附件',
  `ACCEPT_AFFIX_NAME` varchar(300) DEFAULT NULL COMMENT '确认收货附件名称',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `SEND_KIND` char(2) DEFAULT NULL COMMENT '发货单类型',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `AUDIT_PAY_TYPE_STATUS` int(11) DEFAULT '0' COMMENT '审核更改支付类型状态. 0：无需审核. 1：待审核. 2：审核通过. 3：审核不通过',
  `AUDIT_REMARK` varchar(255) DEFAULT NULL COMMENT '审核更改支付类型的原因',
  `NEW_PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `NEW_PRODUCT_PRICE` decimal(22,8) DEFAULT '0.00000000' COMMENT '发货单修改后的产品单价',
  `EXTERNAL_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统发货单编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send_evaluate`
--

DROP TABLE IF EXISTS `t_send_evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send_evaluate` (
  `ID` varchar(255) NOT NULL DEFAULT '' COMMENT '发货单评价表ID',
  `SEND_ID` varchar(255) DEFAULT NULL COMMENT '发货单ID',
  `BUYRR_EVALUATE` varchar(255) DEFAULT NULL COMMENT '采购商评价',
  `SUPPLIER_EVALUATE` varchar(255) DEFAULT NULL COMMENT '供应商评价',
  `PRODUCT_EVALUATE` int(11) DEFAULT '0' COMMENT '产品评价',
  `SERVICE_EVALUATE` int(11) DEFAULT '0' COMMENT '服务评价',
  `PAY_EVALUATE` int(11) DEFAULT '0' COMMENT '结款评价',
  `LOGISTIC_EVALUATE` int(11) DEFAULT '0' COMMENT '物流评价',
  `BUYRR_DESCRIBE` varchar(500) DEFAULT NULL COMMENT '采购商描述',
  `SUPPLIER_DESCRIBE` varchar(500) DEFAULT NULL COMMENT '供应商描述',
  `createTime` datetime NOT NULL,
  `BUYER_ID` varchar(64) DEFAULT NULL,
  `SUPPLIER_ID` varchar(64) DEFAULT NULL,
  `EVA_TYPE` tinyint(4) DEFAULT NULL COMMENT '0:采购商的评价，1：服务商和供应商的评价',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_send_oneorder2mulprod`
--

DROP TABLE IF EXISTS `t_send_oneorder2mulprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_send_oneorder2mulprod` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT '发货单ID',
  `CODE` varchar(255) DEFAULT NULL COMMENT '发货单编号',
  `SEND_USER` varchar(255) DEFAULT NULL COMMENT '下单者',
  `SEND_TEL` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `SEND_ZIP` varchar(10) DEFAULT NULL COMMENT '发货邮编',
  `SEND_ADDR` varchar(500) DEFAULT NULL COMMENT '发货配送地址',
  `ORDER_ID` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `ORDER_CODE` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `SEND_PRODUCT_NUM` decimal(20,6) DEFAULT NULL COMMENT '发货单产品数量',
  `SEND_MONEY` decimal(20,2) DEFAULT NULL COMMENT '发货单总额',
  `ACCEEPT_NAME` varchar(255) DEFAULT NULL COMMENT '接收姓名',
  `ACCEEPT_PHONE` varchar(255) DEFAULT NULL COMMENT '接收人电话',
  `SEND_STATE` char(2) DEFAULT NULL COMMENT '发货单状态 （01：未发货，02：发货前质检中，03：发货前质检完成，04：已发货，05：入库前质检中，06：入库前质检完成，07：已收货，08：付款处理中，09：已付款，10：已完成，11：已开票，12：已收票，13：已确认收款，14：部分支付，15：部分支付-已开票，16：部分支付-已收票）',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SEND_TIME` datetime DEFAULT NULL COMMENT '发货时间',
  `STORAGE_TIME` datetime DEFAULT NULL COMMENT '收货入库时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `FINISH_TIME` datetime DEFAULT NULL COMMENT '完成时间',
  `SEND_TYPE` varchar(50) DEFAULT NULL COMMENT '配送方式',
  `SEND_CODE` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `SEND_COMPANY` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `ACCEPT_ADDR` varchar(300) DEFAULT NULL COMMENT '收货地址',
  `ACCEPT_ZIP` char(6) DEFAULT NULL COMMENT '收货邮编',
  `ACCEPT_NUM` decimal(20,6) DEFAULT NULL COMMENT '收货数量',
  `ACCEPT_MONEY` decimal(20,2) DEFAULT '0.00' COMMENT '入库总额',
  `SEND_PROVINCE` varchar(50) DEFAULT NULL COMMENT '发货省',
  `SEND_CITY` varchar(50) DEFAULT NULL COMMENT '发货市',
  `SEND_AREA` varchar(50) DEFAULT NULL COMMENT '发货县',
  `ACCEPT_PROVINCE` varchar(50) DEFAULT NULL COMMENT '收货省',
  `ACCEPT_CITY` varchar(50) DEFAULT NULL COMMENT '收货市',
  `ACCEPT_AREA` varchar(50) DEFAULT NULL COMMENT '收货县',
  `IMPORT_RECORD_ID` varchar(36) DEFAULT NULL COMMENT '导入记录ID',
  `ACCEPT_AFFIX` varchar(300) DEFAULT NULL COMMENT '确认收货附件',
  `ACCEPT_AFFIX_NAME` varchar(300) DEFAULT NULL COMMENT '确认收货附件名称',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `SEND_KIND` char(2) DEFAULT NULL COMMENT '发货单类型',
  `PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `AUDIT_PAY_TYPE_STATUS` int(11) DEFAULT '0' COMMENT '审核更改支付类型状态. 0：无需审核. 1：待审核. 2：审核通过. 3：审核不通过',
  `AUDIT_REMARK` varchar(255) DEFAULT NULL COMMENT '审核更改支付类型的原因',
  `NEW_PAY_TYPE` int(11) DEFAULT '0' COMMENT '0：转账支付（缺省值）.1：票据支付',
  `NEW_PRODUCT_PRICE` decimal(22,8) DEFAULT '0.00000000' COMMENT '发货单修改后的产品单价',
  `EXTERNAL_CODE` varchar(255) DEFAULT NULL COMMENT '外部系统发货单编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_sendlogistics`
--

DROP TABLE IF EXISTS `t_sendlogistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sendlogistics` (
  `id` varchar(32) NOT NULL,
  `sendId` varchar(32) NOT NULL,
  `time` datetime NOT NULL,
  `content` varchar(100) NOT NULL,
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_siterequest`
--

DROP TABLE IF EXISTS `t_siterequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_siterequest` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `requestUri` varchar(255) NOT NULL COMMENT 'http请求的uri',
  `scheme` varchar(10) DEFAULT NULL COMMENT 'http请求的scheme',
  `remoteIpAddr` varchar(50) NOT NULL COMMENT '请求发起的ip地址',
  `sessionId` varchar(255) DEFAULT NULL COMMENT 'session id或者token',
  `requestMethod` varchar(10) NOT NULL COMMENT '请求方法',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_siterequeststatistics`
--

DROP TABLE IF EXISTS `t_siterequeststatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_siterequeststatistics` (
  `id` varchar(32) NOT NULL COMMENT 'pk',
  `rowNumber` bigint(20) NOT NULL COMMENT '统计行数',
  `createdBy` varchar(64) NOT NULL,
  `createTime` datetime NOT NULL,
  `updatedBy` varchar(64) NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_specialdiscounts`
--

DROP TABLE IF EXISTS `t_specialdiscounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_specialdiscounts` (
  `id` varchar(32) NOT NULL,
  `orderCode` varchar(32) NOT NULL COMMENT '订单编号',
  `sendCode` varchar(32) NOT NULL COMMENT '发货单编号',
  `discountAmt` decimal(18,2) NOT NULL COMMENT '折让金额',
  `actualDiscountAmt` decimal(18,2) NOT NULL COMMENT '实际折让金额',
  `description` text COMMENT '折让描述',
  `fileSetInfoId` varchar(32) DEFAULT NULL COMMENT '折让附件集id',
  `status` tinyint(11) NOT NULL COMMENT '折让状态.0：待处理.1：待确认.2：已确认.3：已取消',
  `buyerId` varchar(32) NOT NULL COMMENT '采购商用户id',
  `supplierId` varchar(32) NOT NULL COMMENT '供应商用户id',
  `createUserId` varchar(32) NOT NULL COMMENT '发起折让的成员用户id',
  `updateAmtUserId` varchar(32) DEFAULT NULL COMMENT '调整折让金额的供应商的成员用户id',
  `createdBy` varchar(64) NOT NULL COMMENT '发起折让的成员用户id',
  `updatedBy` varchar(64) NOT NULL COMMENT '更新人账号名称',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '供应商调整折让金额的更新时间',
  `confirmTime` datetime DEFAULT NULL COMMENT '采购商确认使用折让的时间',
  `version` int(11) NOT NULL DEFAULT '0' COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_supplydemand`
--

DROP TABLE IF EXISTS `t_supplydemand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_supplydemand` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `type` varchar(32) DEFAULT NULL,
  `title` varchar(255) NOT NULL COMMENT '主题',
  `content` mediumtext COMMENT '内容',
  `fileSetInfoId` varchar(32) DEFAULT NULL COMMENT '文件ID',
  `corporateUserId` varchar(32) NOT NULL COMMENT '企业ID',
  `contacter` varchar(255) DEFAULT NULL COMMENT '联系人',
  `contacterPhone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `releaseTime` datetime DEFAULT NULL COMMENT '发布时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `refusalReason` varchar(500) DEFAULT NULL COMMENT '拒绝理由',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='供需表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_tender`
--

DROP TABLE IF EXISTS `t_tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tender` (
  `ID` varchar(50) NOT NULL,
  `SN` varchar(50) DEFAULT NULL,
  `REQ_ID` varchar(50) DEFAULT NULL COMMENT '产品ID',
  `GROUP_BUY_ID` varchar(50) DEFAULT NULL COMMENT '集采ID',
  `DEPOSIT_ID` varchar(50) DEFAULT NULL COMMENT '保证金ID',
  `TYPE` char(2) DEFAULT NULL COMMENT '01-招标，02-投标',
  `STATUS` varchar(2) DEFAULT NULL,
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '发起招投标用户',
  `ADDRESS` varchar(200) DEFAULT NULL,
  `NUM` decimal(20,2) DEFAULT NULL COMMENT '招投标总数量',
  `PRICE` decimal(20,2) DEFAULT NULL,
  `FILENAME` varchar(50) DEFAULT NULL,
  `FILEPATH` varchar(200) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='招投标';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_T_TENDER` BEFORE INSERT ON `t_tender` FOR EACH ROW BEGIN
    DECLARE olddate VARCHAR(12);
    DECLARE newdate VARCHAR(12);
    DECLARE c_code  VARCHAR(50);
    DECLARE mdate   DATETIME;
    DECLARE tmpvar  INT;
    SET newdate=DATE_FORMAT(NOW(), "%Y%m%d");
    SET mdate=(SELECT MAX(CREATE_TIME) FROM T_TENDER);
    SET c_code=(SELECT SN  FROM T_TENDER WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    SET olddate=(SELECT DATE_FORMAT(CREATE_TIME, "%Y%m%d") FROM T_TENDER WHERE CREATE_TIME = mdate ORDER BY SN DESC LIMIT 1);
    IF olddate = newdate THEN
        SET tmpvar=CAST(RIGHT(c_code, 4) AS SIGNED) + 1;
        SET new.SN=CONCAT("EQ", newdate, LPAD(tmpvar, 4, "0"));
    ELSE
        SET new.SN=CONCAT("EQ", newdate, "0001");
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `t_testdm`
--

DROP TABLE IF EXISTS `t_testdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_testdm` (
  `ID` varchar(255) NOT NULL DEFAULT '' COMMENT 'ID',
  `NAME` varchar(255) DEFAULT NULL COMMENT 'NAME',
  `NUM` int(11) DEFAULT '0' COMMENT 'NUM',
  `CREATETIME` datetime DEFAULT NULL COMMENT 'CREATETIME',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_token`
--

DROP TABLE IF EXISTS `t_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_token` (
  `ID` varchar(255) NOT NULL DEFAULT '' COMMENT 'ID',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `TOKEN` varchar(255) DEFAULT NULL COMMENT 'token',
  `CREATETIME` datetime DEFAULT NULL COMMENT '时间',
  `QYID` varchar(50) DEFAULT NULL COMMENT '企业id',
  `ISQY` int(11) DEFAULT NULL COMMENT '是否企业用户(0企业用户，1个人用户)',
  `QYTYPE` int(11) DEFAULT NULL COMMENT '企业用户类型',
  `USER_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_token_bak_20170324`
--

DROP TABLE IF EXISTS `t_token_bak_20170324`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_token_bak_20170324` (
  `ID` varchar(255) NOT NULL DEFAULT '' COMMENT 'ID',
  `USERNAME` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `TOKEN` varchar(255) DEFAULT NULL COMMENT 'token',
  `CREATETIME` datetime DEFAULT NULL COMMENT '时间',
  `QYID` varchar(50) DEFAULT NULL COMMENT '企业id',
  `ISQY` int(11) DEFAULT NULL COMMENT '是否企业用户(0企业用户，1个人用户)',
  `QYTYPE` int(11) DEFAULT NULL COMMENT '企业用户类型',
  `USER_ID` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_transport_price`
--

DROP TABLE IF EXISTS `t_transport_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transport_price` (
  `ID` varchar(50) NOT NULL,
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `TEMPLATE_ID` varchar(50) DEFAULT NULL COMMENT '模板ID',
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '区',
  `PRICE` decimal(10,2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`),
  KEY `I_transport` (`PROVINCE_ID`,`CITY_ID`,`AREA_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_transport_template`
--

DROP TABLE IF EXISTS `t_transport_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transport_template` (
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '用户ID',
  `id` varchar(32) NOT NULL DEFAULT '',
  `TEMPLATE_NAME` varchar(100) DEFAULT NULL COMMENT '模板名称',
  `TYPE` varchar(2) DEFAULT '1' COMMENT '类型  1：按体积     2：按质量',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `PRICE` decimal(10,2) DEFAULT NULL COMMENT '默认价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_transport_type`
--

DROP TABLE IF EXISTS `t_transport_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_transport_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '运输方式表ID',
  `NAME` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_webpage`
--

DROP TABLE IF EXISTS `t_webpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_webpage` (
  `id` varchar(100) NOT NULL COMMENT '主键及网页标识，前端开发员自定义',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `type` tinyint(4) NOT NULL COMMENT '模板类型：1:原始，2:带公共头尾',
  `webSource` mediumtext COMMENT '网页源代码',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `createdBy` varchar(32) NOT NULL COMMENT '创建人',
  `updatedBy` varchar(32) NOT NULL COMMENT '更新人',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_ztree`
--

DROP TABLE IF EXISTS `t_ztree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ztree` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT 'id',
  `NAME` varchar(60) DEFAULT NULL COMMENT '名称',
  `ZID` varchar(50) DEFAULT NULL COMMENT '叶子id',
  `PID` varchar(50) DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_goods_rejected`
--

DROP TABLE IF EXISTS `tb_goods_rejected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_goods_rejected` (
  `ID` varchar(50) NOT NULL DEFAULT '' COMMENT 'ID',
  `SEND_ID` varchar(50) DEFAULT NULL COMMENT '发货单ID',
  `SEND_CODE` varchar(50) DEFAULT NULL,
  `REJECT_CODE` varchar(50) DEFAULT NULL,
  `REQ_COUNT` decimal(15,2) DEFAULT '0.00' COMMENT '申请退货数量',
  `REQ_UNIT` varchar(10) DEFAULT NULL,
  `REQ_AMOUNT` decimal(15,2) DEFAULT NULL COMMENT '申请退货金额',
  `REQ_DESC` text COMMENT '申请退货说明',
  `REQ_PHOTO` varchar(512) DEFAULT NULL COMMENT '退货凭证图片',
  `REQ_TIME` datetime DEFAULT NULL COMMENT '申请退货时间',
  `PASS_TIME` datetime DEFAULT NULL COMMENT '确认退货的时间',
  `STATUS` int(11) DEFAULT '0' COMMENT '退货状态',
  `REFUND_STATUS` int(11) DEFAULT '0' COMMENT '退款状态',
  `ACTUAL_COUNT` decimal(15,2) DEFAULT '0.00' COMMENT '实际退货数量',
  `ACTUAL_AMOUNT` decimal(15,2) DEFAULT NULL COMMENT '实际退货金额',
  `ACTUAL_ADDR` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `ACTUAL_NAME` varchar(255) DEFAULT NULL COMMENT '收货联系人',
  `ACTUAL_PHONE` varchar(255) DEFAULT NULL COMMENT '收货联系电话',
  `REMARK` text COMMENT '备注',
  `PROVINCE_ID` varchar(50) DEFAULT NULL COMMENT '省',
  `CITY_ID` varchar(50) DEFAULT NULL COMMENT '市',
  `AREA_ID` varchar(50) DEFAULT NULL COMMENT '县',
  `ADDR_ID_NAME` varchar(150) DEFAULT NULL,
  `CORPORATEUSER_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`ztl`@`183.233.176.49`*/ /*!50003 TRIGGER `TRG_TB_GOODS_REJECTED` BEFORE INSERT ON `tb_goods_rejected` FOR EACH ROW begin
    declare olddate varchar(12);
    declare newdate varchar(12);
    declare c_REJECT_CODE  varchar(50);
    declare mdate   datetime;
    declare tmpvar  int;
    set newdate=DATE_FORMAT(now(), "%Y%m%d");
    set mdate=(select max(REQ_TIME) from TB_GOODS_REJECTED);
    set c_REJECT_CODE=(select REJECT_CODE  from TB_GOODS_REJECTED where REQ_TIME = mdate order by REJECT_CODE desc limit 1);
    set olddate=(select DATE_FORMAT(REQ_TIME, "%Y%m%d") from TB_GOODS_REJECTED where REQ_TIME = mdate order by REJECT_CODE desc limit 1);
    if olddate = newdate then
        set tmpvar=cast(right(c_REJECT_CODE, 4) as signed) + 1;
        set new.REJECT_CODE=concat("TH", newdate, lpad(tmpvar, 4, "0"));
    else
        set new.REJECT_CODE=concat("TH", newdate, "0001");
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `col` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trade_entrustaccount`
--

DROP TABLE IF EXISTS `trade_entrustaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_entrustaccount` (
  `id` char(32) NOT NULL,
  `createdBy` char(32) NOT NULL,
  `updatedBy` char(32) NOT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `v_individualuser`
--

DROP TABLE IF EXISTS `v_individualuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_individualuser` (
  `id` tinyint(4) NOT NULL,
  `isCorporateUser` tinyint(4) NOT NULL,
  `CORPORATEUSER_ID` tinyint(4) NOT NULL,
  `D_D_ID` tinyint(4) NOT NULL,
  `ACCOUNTNAME` tinyint(4) NOT NULL,
  `PASSWORD` tinyint(4) NOT NULL,
  `NAME` tinyint(4) NOT NULL,
  `EMPLOYEE_NUM` tinyint(4) NOT NULL,
  `JOBPOSITION` tinyint(4) NOT NULL,
  `RIGHTS` tinyint(4) NOT NULL,
  `ROLE_ID` tinyint(4) NOT NULL,
  `STATUS` tinyint(4) NOT NULL,
  `PHONE` tinyint(4) NOT NULL,
  `EMAIL` tinyint(4) NOT NULL,
  `QQ` tinyint(4) NOT NULL,
  `WEIXIN` tinyint(4) NOT NULL,
  `COMMENT` tinyint(4) NOT NULL,
  `HEAD_LOGO` tinyint(4) NOT NULL,
  `CREATETIME` tinyint(4) NOT NULL,
  `UPDATETIME` tinyint(4) NOT NULL,
  `LASTLOGONTIME` tinyint(4) NOT NULL,
  `PROVINCE_ID` tinyint(4) NOT NULL,
  `CITY_ID` tinyint(4) NOT NULL,
  `AREA_ID` tinyint(4) NOT NULL,
  `SKIN` tinyint(4) NOT NULL,
  `IP` tinyint(4) NOT NULL,
  `DP_ID` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 18:19:26
