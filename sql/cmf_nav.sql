/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:49:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `href` varchar(100) DEFAULT '' COMMENT '链接',
  `flag` tinyint(1) NOT NULL DEFAULT '1' COMMENT '标志 1 首页导航 2 友情链接',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `isdelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1531825058', '1531825058', '6', '技术', '', '1', '0', '0', '10000', '0');
INSERT INTO `cmf_nav` VALUES ('1531819270', '1531819270', '7', '生活', '', '1', '0', '1', '10000', '0');
INSERT INTO `cmf_nav` VALUES ('1531822482', '1531822482', '8', 'php', '', '1', '6', '1', '10000', '0');
INSERT INTO `cmf_nav` VALUES ('1531824812', '1531824812', '9', 'java', '', '1', '6', '1', '10000', '0');
