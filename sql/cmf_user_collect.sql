/*
Navicat MySQL Data Transfer

Source Server         : 9dcj
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-27 00:06:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmf_user_collect`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_collect`;
CREATE TABLE `cmf_user_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `article_id` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '取消收藏时间',
  `iscollect` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否收藏 1 收藏 -1 取消收藏',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_collect
-- ----------------------------
INSERT INTO `cmf_user_collect` VALUES ('3', '7', '3', '1532617270', '1532621053', '1');
