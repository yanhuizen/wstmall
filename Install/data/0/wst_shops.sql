/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : wstmall

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-09-03 12:46:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wst_shops`
-- ----------------------------
DROP TABLE IF EXISTS `wst_shops`;
CREATE TABLE `wst_shops` (
  `shopId` int(11) NOT NULL AUTO_INCREMENT,
  `shopSn` varchar(20) NOT NULL,
  `userId` int(11) NOT NULL,
  `areaId1` int(11) NOT NULL,
  `areaId2` int(11) NOT NULL,
  `areaId3` int(11) NOT NULL,
  `goodsCatId1` int(11) NOT NULL,
  `goodsCatId2` int(11) DEFAULT NULL,
  `goodsCatId3` int(11) DEFAULT NULL,
  `isSelf` tinyint(4) NOT NULL DEFAULT '0',
  `shopName` varchar(100) NOT NULL,
  `shopCompany` varchar(255) NOT NULL,
  `shopImg` varchar(150) NOT NULL,
  `shopTel` varchar(20) DEFAULT NULL,
  `shopAddress` varchar(255) NOT NULL,
  `avgeCostMoney` float(11,1) DEFAULT '0.0',
  `deliveryStartMoney` float(11,1) DEFAULT '0.0',
  `deliveryMoney` float(11,1) DEFAULT '0.0',
  `deliveryFreeMoney` float(11,1) DEFAULT '0.0',
  `deliveryCostTime` int(11) NOT NULL DEFAULT '0',
  `deliveryTime` varchar(255) NOT NULL,
  `deliveryType` tinyint(4) NOT NULL DEFAULT '0',
  `bankId` int(11) NOT NULL,
  `bankNo` varchar(20) NOT NULL,
  `isInvoice` tinyint(4) NOT NULL DEFAULT '0',
  `invoiceRemarks` varchar(255) DEFAULT NULL,
  `serviceStartTime` float(11,1) NOT NULL,
  `serviceEndTime` float(11,1) NOT NULL,
  `shopStatus` tinyint(4) NOT NULL DEFAULT '0',
  `statusRemarks` varchar(255) DEFAULT NULL,
  `shopAtive` tinyint(4) NOT NULL DEFAULT '1',
  `shopFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  `latitude` char(30) DEFAULT '0',
  `longitude` char(30) DEFAULT '0',
  `mapLevel` int(11) DEFAULT '13',
  PRIMARY KEY (`shopId`),
  KEY `areaId1` (`areaId2`) USING BTREE,
  KEY `shopStatus` (`shopStatus`,`shopFlag`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wst_shops
-- ----------------------------