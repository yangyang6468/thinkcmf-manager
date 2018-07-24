/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:50:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------
