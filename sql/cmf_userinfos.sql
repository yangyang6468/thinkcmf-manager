/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:50:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_userinfos
-- ----------------------------
DROP TABLE IF EXISTS `cmf_userinfos`;
CREATE TABLE `cmf_userinfos` (
  `createtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) DEFAULT '0' COMMENT '更新时间',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(30) DEFAULT NULL COMMENT '用户邮件',
  `userpwd` varchar(100) NOT NULL DEFAULT '' COMMENT '用户密码',
  `birthday` int(11) DEFAULT NULL COMMENT '生日',
  `fromsource` tinyint(4) DEFAULT NULL COMMENT '用户来源',
  `headimage` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `phone` char(11) DEFAULT NULL COMMENT '用户手机号',
  `gradeid` tinyint(4) DEFAULT '1' COMMENT '等级id',
  `expervalue` int(11) DEFAULT '0' COMMENT '经验值',
  `gender` int(11) DEFAULT '0' COMMENT '性别 0 保密 1 男 2 女',
  `signature` varchar(50) DEFAULT NULL COMMENT '个性签名',
  `focusnumbymy` int(11) DEFAULT '0' COMMENT '关注我的人数',
  `focusnum` int(11) DEFAULT '0' COMMENT '我的关注数',
  `city` int(4) DEFAULT NULL,
  `province` int(4) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `lastlogindate` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `isdelete` int(11) DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态 0 禁用 1 启用',
  PRIMARY KEY (`id`),
  KEY `IDX_userinfo_phone_20161219` (`phone`),
  KEY `IDX_userinfo_focusnum_20170208` (`focusnum`) USING BTREE,
  KEY `isdelete` (`isdelete`),
  KEY `gradeid` (`gradeid`),
  KEY `fromsource` (`fromsource`),
  KEY `nickname` (`nickname`),
  KEY `userpwd` (`userpwd`),
  KEY `createtime` (`createtime`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_userinfos
-- ----------------------------
INSERT INTO `cmf_userinfos` VALUES ('1531191169', '1531216492', '1', 'admin123', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180702/9b43ac8c8845ef77e782490726d51cd0.jpg', '13469984690', '1', '0', '2', '流着泪的孩子', '0', '0', '420900', '420000', '127.0.0.1', '1531216492', '0', '1');
INSERT INTO `cmf_userinfos` VALUES ('1531216127', '1531216127', '2', 'weixin', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/6192b606362f5d1f6ae6a026ec9ab42b.jpg', '13469984691', '1', '0', '1', '哈哈哈1314', '0', '0', '430100', '430000', '127.0.0.1', '1531216127', '0', '1');
INSERT INTO `cmf_userinfos` VALUES ('1531216374', '1531216374', '3', 'qq123', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/fca27c5eea37a9f0c79303dfccc014a6.jpg', '13469984692', '1', '0', '1', '用户添加', '0', '0', '421200', '420000', '127.0.0.1', '1531216374', '0', '1');
INSERT INTO `cmf_userinfos` VALUES ('1531216609', '1531304473', '4', 'sina123', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/74fef40545e671a16006d4cd258a0762.jpg', '13469984693', '1', '0', '0', '新浪微博123456', '0', '0', '440100', '440000', '127.0.0.1', '1531304473', '0', '0');
