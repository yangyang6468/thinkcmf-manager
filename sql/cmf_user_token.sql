/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:50:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `user_id` int(4) NOT NULL,
  `expire_time` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  `token` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1547969303', '1532417303', 'c49dc51bc1c5e36d5e4796431918bc18c49dc51bc1c5e36d5e4796431918bc18', 'web');
