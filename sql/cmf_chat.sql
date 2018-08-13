/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-08-13 18:47:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_chat
-- ----------------------------
DROP TABLE IF EXISTS `cmf_chat`;
CREATE TABLE `cmf_chat` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `from_userid` int(6) NOT NULL DEFAULT '0' COMMENT '发聊天信息用户',
  `to_userid` int(6) NOT NULL DEFAULT '0' COMMENT '发送的用户',
  `msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '聊天内容',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1 内容 2 图片',
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '前后台标志 1 前台 2后台',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0 不显示 1 显示',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cmf_chat
-- ----------------------------
INSERT INTO `cmf_chat` VALUES ('1', '1533881039', '1533881039', '1', '5', '3333', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('2', '1533881211', '1533881211', '1', '5', '测试发送信息', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('3', '1533881401', '1533881401', '1', '5', '发送', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('4', '1533881420', '1533881420', '1', '5', '发送数据', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('5', '1533881457', '1533881457', '1', '5', '数据', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('6', '1533881932', '1533881932', '1', '5', '嗯，适合做壁纸', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('7', '1533881969', '1533881969', '1', '5', '笙歌响起伊人亦离', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('8', '1533882221', '1533882221', '1', '5', '数据测试', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('9', '1533882368', '1533882368', '1', '5', '23333336', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('10', '1533882437', '1533882437', '1', '5', '哈哈哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('11', '1533882521', '1533882521', '1', '5', '。。。。。<br>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('12', '1533882649', '1533882649', '1', '5', '数据进行测试', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('13', '1533884284', '1533884284', '1', '5', '我想对你说', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('14', '1533884322', '1533884322', '1', '5', '说什么说', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('15', '1533888571', '1533888571', '10', '5', '哈哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('16', '1533888782', '1533888782', '10', '3', '&lt;script&gt;alert(111)&lt;/script&gt;', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('17', '1533889184', '1533889184', '9', '5', '&lt;script&gt;alert(111)&lt;/script', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('18', '1533889213', '1533889213', '9', '5', '&lt;script&gt;alert(111)&lt;/script&gt;', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('19', '1533889360', '1533889360', '9', '5', '？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('20', '1533889407', '1533889407', '4', '2', '发送消息', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('21', '1533889440', '1533889440', '9', '5', '？？？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('22', '1533897060', '1533897060', '9', '2', '哈哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('27', '1534147747', '1534147747', '19', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -102px -86px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('28', '1534147798', '1534147798', '19', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -164px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('29', '1534149125', '1534149125', '2', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('30', '1534150497', '1534150497', '2', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('31', '1534150612', '1534150612', '2', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -52px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('32', '1534150645', '1534150645', '19', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -164px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('33', '1534150761', '1534150761', '8', '2', '<span class=\"emoji-picker-image\" style=\"background-position: -40px -52px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('34', '1534150880', '1534150880', '20', '4', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('35', '1534150910', '1534150910', '8', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -164px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('36', '1534150919', '1534150919', '8', '5', '哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('37', '1534151046', '1534151046', '9', '5', '为什么你的没有图像<br>为什么你的没有图像<br>为什么你的没有图像<br>为什么你的没有图像<br>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('38', '1534151064', '1534151064', '9', '5', '、、、、、', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('39', '1534156491', '1534156491', '10', '5', 'default/20180813/56177578577b5e311017b707639080cd.jpg', '2', '2', '1', '0');
