/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:50:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES ('1', '1531478709', '幻灯片123', 'admin/20180713/9224dd39effff6bae2b55b5f17937039.jpg', 'http://www.think.cn', '1', '10000', '0');
INSERT INTO `cmf_slide` VALUES ('2', '1531479019', '幻灯片456', 'admin/20180713/1b721d5852370d9bd1679db14e830a34.jpg', 'http://club.xywy.com/static/20131022/29626193.htm', '1', '10000', '0');
INSERT INTO `cmf_slide` VALUES ('3', '1531479036', 'Highcharts Demo', 'admin/20180713/08c4028fe85c589875398033a7f74148.jpg', 'http://club.xywy.com/static/20160710/112311299.htm', '1', '10000', '0');
