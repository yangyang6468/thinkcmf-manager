/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-25 18:50:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_comments
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comments`;
CREATE TABLE `cmf_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `content` text CHARACTER SET utf8mb4 NOT NULL COMMENT '评论内容',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`article_id`,`status`),
  KEY `object_id` (`article_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comments
-- ----------------------------
INSERT INTO `cmf_comments` VALUES ('1', '0', '3', '0', '0', '1', '测试评论123', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('2', '0', '3', '0', '0', '1', '这是什么？？？', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('3', '0', '3', '0', '0', '1', '这是什么？？？', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('4', '0', '3', '0', '0', '2', '测试评论数据+1', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('5', '0', '3', '4', '0', '1', '测试子级评论数据+1', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('6', '0', '3', '4', '0', '1', '测试子级评论数据+2', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('7', '0', '3', '4', '0', '2', '测试子级评论数据+2', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('8', '2', '1', '0', '0', '2', '测试时间自动写入', '0', '0', '0');
INSERT INTO `cmf_comments` VALUES ('9', '4', '1', '0', '0', '1', '时间会自动写入吧？？？', '1532513260', '1532515368', '0');
INSERT INTO `cmf_comments` VALUES ('10', '2', '1', '9', '0', '1', '会自动加+1吗', '1532513947', '1532515368', '0');
INSERT INTO `cmf_comments` VALUES ('12', '4', '1', '9', '0', '1', '+1吧。。。', '1532514111', '1532515368', '0');
