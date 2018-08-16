/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-08-16 17:51:09
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `cmf_chat` VALUES ('40', '1534239805', '1534239805', '3', '19', '？？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('41', '1534389683', '1534389683', '4', '19', '????', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('42', '1534400322', '1534400322', '7', '19', '给你一个问候', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('43', '1534403147', '1534403147', '10', '19', '？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('44', '1534403214', '1534403214', '20', '19', '哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('45', '1534403277', '1534403277', '2', '19', '再来一句', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('46', '1534403320', '1534403320', '2', '19', '测试发送消息', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('47', '1534403364', '1534403364', '2', '19', '....', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('48', '1534403383', '1534403383', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('49', '1534403413', '1534403413', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('50', '1534403419', '1534403419', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -40px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('51', '1534403451', '1534403451', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -164px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('52', '1534403459', '1534403459', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -40px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('53', '1534403495', '1534403495', '2', '19', '包情报', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('54', '1534403876', '1534403876', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('55', '1534404058', '1534404058', '2', '11', '？？？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('56', '1534404080', '1534404080', '2', '19', '消息真的赴欧', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('57', '1534404159', '1534404159', '2', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('58', '1534404210', '1534404210', '6', '19', '33333', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('59', '1534404240', '1534404240', '6', '19', '333<br><br>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('60', '1534404319', '1534404319', '6', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -102px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('61', '1534404340', '1534404340', '6', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -9px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('62', '1534404349', '1534404349', '6', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -40px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('63', '1534404765', '1534404765', '9', '6', '<span class=\"emoji-picker-image\" style=\"background-position: -102px -52px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('64', '1534404804', '1534404804', '9', '19', '？？？？？？', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('65', '1534405955', '1534405955', '5', '5', 'default/20180813/56177578577b5e311017b707639080cd.jpg', '2', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('66', '1534405996', '1534405996', '5', '5', '<span class=\"emoji-picker-image\" style=\"background-position: -71px -18px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('67', '1534406054', '1534406054', '2', '2', '我有一颗少女心', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('68', '1534406106', '1534406106', '2', '19', '我有一颗少女心', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('69', '1534406691', '1534406691', '2', '19', '我的少女心', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('70', '1534406708', '1534406708', '19', '2', '我才不信', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('71', '1534406791', '1534406791', '10', '19', 'default/20180813/56177578577b5e311017b707639080cd.jpg', '2', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('72', '1534406947', '1534406947', '9', '19', 'default/20180816/296eeb12452bc2d3698ada7946cbedc5.jpg', '2', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('73', '1534407009', '1534407009', '7', '19', 'default/20180816/5db1ffa4de344769a549830226c66b8c.jpg', '2', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('74', '1534407191', '1534407191', '1', '19', 'default/20180816/5db1ffa4de344769a549830226c66b8c.jpg', '2', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('75', '1534408266', '1534408266', '5', '19', '消息真的多啊', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('76', '1534408328', '1534408328', '5', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -9px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('77', '1534411550', '1534411550', '19', '7', '图片怎么显示的这么慢啊', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('78', '1534411681', '1534411681', '19', '9', '睡你麻痹起来嗨', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('79', '1534411724', '1534411724', '19', '2', '你是逗比吧', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('80', '1534411760', '1534411760', '19', '7', '怎么又是你', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('81', '1534411784', '1534411784', '7', '7', '你是不是喜欢我啊', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('82', '1534411924', '1534411924', '20', '19', '你好啊', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('83', '1534411947', '1534411947', '20', '19', '你为什么不说话', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('84', '1534411962', '1534411962', '19', '20', '好啊 那我们来聊聊', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('85', '1534411985', '1534411985', '20', '19', '聊聊就聊聊 who怕who', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('86', '1534412004', '1534412004', '19', '20', '我要模仿你说话的样子了 哈哈', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('87', '1534412053', '1534412053', '19', '20', '<span class=\"emoji-picker-image\" style=\"background-position: -133px -120px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('88', '1534412087', '1534412087', '20', '19', '<span class=\"emoji-picker-image\" style=\"background-position: -9px -154px;\"></span>', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('89', '1534412171', '1534412171', '20', '19', '还想不想我i离你啦', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('90', '1534412189', '1534412189', '19', '20', '死滚', '1', '2', '1', '0');
INSERT INTO `cmf_chat` VALUES ('91', '1534412257', '1534412257', '19', '6', '子级', '1', '2', '1', '0');
