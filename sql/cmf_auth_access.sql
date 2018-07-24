/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:48:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
INSERT INTO `cmf_auth_access` VALUES ('1', '2', 'admin/setting/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('2', '2', 'admin/setting/site', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('3', '2', 'admin/setting/sitepost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('4', '2', 'admin/mailer/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('5', '2', 'admin/mailer/indexpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('6', '2', 'admin/mailer/template', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('7', '2', 'admin/mailer/templatepost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('8', '2', 'admin/mailer/test', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('9', '2', 'admin/theme/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('10', '2', 'admin/theme/install', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('11', '2', 'admin/theme/uninstall', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('12', '2', 'admin/theme/installtheme', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('13', '2', 'admin/theme/update', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('14', '2', 'admin/theme/active', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('15', '2', 'admin/theme/files', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('16', '2', 'admin/theme/filesetting', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('17', '2', 'admin/theme/filearraydata', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('18', '2', 'admin/theme/filearraydataedit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('19', '2', 'admin/theme/filearraydataeditpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('20', '2', 'admin/theme/filearraydatadelete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('21', '2', 'admin/theme/settingpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('22', '2', 'admin/theme/datasource', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('23', '2', 'admin/nav/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('24', '2', 'admin/nav/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('25', '2', 'admin/nav/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('26', '2', 'admin/nav/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('27', '2', 'admin/nav/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('28', '2', 'admin/nav/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('29', '2', 'admin/navmenu/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('30', '2', 'admin/navmenu/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('31', '2', 'admin/navmenu/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('32', '2', 'admin/navmenu/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('33', '2', 'admin/navmenu/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('34', '2', 'admin/navmenu/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('35', '2', 'admin/navmenu/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('36', '2', 'admin/slide/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('37', '2', 'admin/slide/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('38', '2', 'admin/slide/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('39', '2', 'admin/slide/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('40', '2', 'admin/slide/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('41', '2', 'admin/slide/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('42', '2', 'admin/slideitem/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('43', '2', 'admin/slideitem/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('44', '2', 'admin/slideitem/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('45', '2', 'admin/slideitem/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('46', '2', 'admin/slideitem/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('47', '2', 'admin/slideitem/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('48', '2', 'admin/slideitem/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('49', '2', 'admin/slideitem/cancelban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('50', '2', 'admin/slideitem/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('51', '2', 'admin/link/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('52', '2', 'admin/link/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('53', '2', 'admin/link/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('54', '2', 'admin/link/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('55', '2', 'admin/link/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('56', '2', 'admin/link/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('57', '2', 'admin/link/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('58', '2', 'admin/link/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('59', '2', 'admin/route/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('60', '2', 'admin/route/add', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('61', '2', 'admin/route/addpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('62', '2', 'admin/route/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('63', '2', 'admin/route/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('64', '2', 'admin/route/delete', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('65', '2', 'admin/route/ban', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('66', '2', 'admin/route/open', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('67', '2', 'admin/route/listorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('68', '2', 'admin/route/select', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('69', '2', 'admin/setting/password', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('70', '2', 'admin/setting/passwordpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('71', '2', 'admin/setting/upload', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('72', '2', 'admin/setting/uploadpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('73', '2', 'admin/setting/clearcache', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('74', '2', 'admin/storage/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('75', '2', 'admin/storage/settingpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('76', '2', 'user/adminuseraction/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('77', '2', 'user/adminuseraction/edit', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('78', '2', 'user/adminuseraction/editpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES ('79', '2', 'user/adminuseraction/sync', 'admin_url');
