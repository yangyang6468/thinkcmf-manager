/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:49:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_category`;
CREATE TABLE `cmf_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:启用,0:不启用',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of cmf_category
-- ----------------------------
INSERT INTO `cmf_category` VALUES ('1', '0', '0', '1', '0', '1000', 'php', 'php', '0', '0');
INSERT INTO `cmf_category` VALUES ('2', '0', '0', '0', '0', '1001', 'java', '测试', '0', '1530517985');
INSERT INTO `cmf_category` VALUES ('3', '0', '0', '1', '0', '1000', 'mysql', 'mysql', '0', '1530698324');
INSERT INTO `cmf_category` VALUES ('4', '0', '0', '1', '0', '1000', 'php', '分类名称', '1', '1531448939');
