/*
Navicat MySQL Data Transfer

Source Server         : 9dcj
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-08-12 20:15:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cmf_userinfos`
-- ----------------------------
DROP TABLE IF EXISTS `cmf_userinfos`;
CREATE TABLE `cmf_userinfos` (
  `createtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) DEFAULT '0' COMMENT '更新时间',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(30) DEFAULT NULL COMMENT '用户邮件',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户密码',
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
  `flag` tinyint(2) unsigned DEFAULT '1' COMMENT '标志 1 前台 2后台',
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_userinfo_phone_20161219` (`phone`),
  KEY `IDX_userinfo_focusnum_20170208` (`focusnum`) USING BTREE,
  KEY `isdelete` (`isdelete`),
  KEY `gradeid` (`gradeid`),
  KEY `fromsource` (`fromsource`),
  KEY `nickname` (`nickname`),
  KEY `userpwd` (`password`),
  KEY `createtime` (`createtime`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_userinfos
-- ----------------------------
INSERT INTO `cmf_userinfos` VALUES ('1531191169', '1531216492', '1', 'admin123', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180702/9b43ac8c8845ef77e782490726d51cd0.jpg', '13469984690', '1', '0', '2', '流着泪的孩子', '0', '0', '420900', '420000', '127.0.0.1', '1531216492', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1531216127', '1531216127', '2', 'weixin', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/6192b606362f5d1f6ae6a026ec9ab42b.jpg', '13469984691', '1', '0', '1', '哈哈哈1314', '0', '0', '430100', '430000', '127.0.0.1', '1531216127', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1531216374', '1531216374', '3', 'qq123', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/fca27c5eea37a9f0c79303dfccc014a6.jpg', '13469984692', '1', '0', '1', '用户添加', '0', '0', '421200', '420000', '127.0.0.1', '1531216374', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1531216609', '1533804923', '4', 'sina', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180710/74fef40545e671a16006d4cd258a0762.jpg', '13469984693', '1', '0', '1', '新浪微博123456', '0', '0', '440100', '440000', '127.0.0.1', '1533804923', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1532598926', '1532598926', '5', '笙歌响起伊人亦离', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, '', '13469984698', '1', '0', '2', '笙歌响起伊人亦离', '0', '0', '0', '0', '127.0.0.1', '1532598926', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533804739', '1533804739', '6', '流氓也是一种气质', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180806/0e955f7a7bd17ca2ae10ed4e61fe8acc.jpg', '13469984699', '1', '0', '2', '流氓也是一种气质', '0', '0', '431300', '430000', '127.0.0.1', '1533804739', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533805052', '1533804739', '7', '青春喂了作业', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180809/c5261966d0724ac4c027df15ce5c2bda.jpg', '15807771234', '1', '0', '2', '青春喂了作业', '0', '0', '310200', '310000', '127.0.0.1', '1533805052', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533805135', '1533805135', '8', '坐在坟头调戏鬼', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180809/41dc8b54a395569c64a6f5bacc87c8db.jpg', '13312345678', '1', '0', '1', '坐在坟头调戏鬼', '0', '0', '430100', '430000', '127.0.0.1', '1533805135', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533805291', '1533805291', '9', '一觉睡到小时候', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180809/92b5a0215fe8fc36e794539664d8ddd7.jpg', '15512349876', '1', '0', '1', '一觉睡到小时候', '0', '0', '320700', '320000', '127.0.0.1', '1533805291', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533806225', '1533806225', '10', '逗比别闹快吃药', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180803/653268292c34ad2d31911e7b7fa990d0.jpg', '13150580932', '1', '0', '0', '逗比别闹快吃药', '0', '0', '431000', '430000', '127.0.0.1', '1533806225', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533806316', '1533806316', '11', '独闯寡妇村', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, 'admin/20180809/c891d24f22e8f070a25b7d5f1956b269.jpg', '13355551234', '1', '0', '2', '独闯寡妇村', '0', '0', '340800', '340000', '127.0.0.1', '1533806316', '0', '1', '2', null);
INSERT INTO `cmf_userinfos` VALUES ('1533996863', '1534045975', '19', 'yy12345', '13469984690@163.com', '$2y$10$PLNZvIHWFXdW0.kvzn5HgurM0NeYZdKqy1EMUvYWb1KDyarGRmfca', '1533945600', null, 'admin/20180803/62afbd965a25b765f4deca4c4ca21eb9.jpg', '13469989999', '1', '0', '1', '流泪的孩子一点也不好玩', '0', '0', '210100', '210000', '127.0.0.1', '1534043530', '0', '1', '2', 'jKbPKZkjP2gg0nOgcuFZNQeYhEZqvdM4woN3RAkxjYWMSm25AUl8Ew9VtO9K');
