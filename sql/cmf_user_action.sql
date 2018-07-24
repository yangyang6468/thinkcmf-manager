/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:50:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用户登录', 'login', 'user', '');
