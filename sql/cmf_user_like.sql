/*
Navicat MySQL Data Transfer

Source Server         : 9dcj
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-27 00:06:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmf_user_like`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `comment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论id cmf_comments',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '取消点赞时间',
  `islike` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否点赞 1 点赞 -1 取消点赞',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------
INSERT INTO `cmf_user_like` VALUES ('2', '7', '33', '1532619704', '1532621057', '1');
INSERT INTO `cmf_user_like` VALUES ('3', '7', '4', '1532619835', '0', '1');
INSERT INTO `cmf_user_like` VALUES ('4', '7', '7', '1532621006', '0', '1');
