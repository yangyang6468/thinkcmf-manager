/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-13 16:34:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES ('7', '6', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('15', '6', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES ('20', '0', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES ('29', '6', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES ('49', '109', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES ('61', '6', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES ('78', '6', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES ('95', '6', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES ('109', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES ('110', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES ('111', '110', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES ('112', '110', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES ('113', '110', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES ('114', '110', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES ('115', '110', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES ('116', '110', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES ('117', '110', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES ('118', '110', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('119', '110', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES ('120', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES ('121', '120', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES ('122', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES ('123', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('124', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES ('125', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES ('126', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES ('127', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES ('128', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES ('129', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES ('130', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES ('131', '120', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES ('132', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('133', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('134', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('135', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES ('136', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES ('137', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES ('138', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES ('139', '120', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES ('140', '139', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES ('141', '139', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('142', '139', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES ('143', '139', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES ('144', '139', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES ('145', '120', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('146', '145', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('147', '145', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES ('148', '145', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES ('149', '145', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES ('150', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES ('151', '150', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES ('152', '109', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES ('153', '152', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES ('154', '153', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES ('155', '153', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES ('158', '6', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES ('159', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('160', '158', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES ('161', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES ('162', '0', '1', '1', '10000', 'admin', 'Article', 'index', '', '文章管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('164', '0', '1', '1', '10000', 'admin', 'Category', 'index', '', '分类管理', '', '');
INSERT INTO `cmf_admin_menu` VALUES ('165', '0', '1', '1', '10000', 'admin', 'userinfo', 'index', '', '用户中心', '', '');

-- ----------------------------
-- Table structure for cmf_articles
-- ----------------------------
DROP TABLE IF EXISTS `cmf_articles`;
CREATE TABLE `cmf_articles` (
  `createtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(11) DEFAULT '0' COMMENT '更新时间',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增标识消息id',
  `category_id` tinyint(4) DEFAULT '0' COMMENT '分类',
  `title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `info` mediumtext COMMENT '消息内容',
  `photo` varchar(250) DEFAULT NULL COMMENT '封面图片路径地址',
  `collect_count` int(11) DEFAULT '0' COMMENT '收藏次数',
  `comment_count` int(11) unsigned DEFAULT '0' COMMENT '评论次数',
  `click_count` int(11) DEFAULT '0' COMMENT '点击数',
  `userid` int(11) DEFAULT '0' COMMENT '发表用户id',
  `sticky` int(11) DEFAULT '0' COMMENT '是否置顶0否1是',
  `recommend` tinyint(4) DEFAULT '0' COMMENT '是否推荐 0 否 1 是',
  `stickytime` int(11) DEFAULT '0' COMMENT '置顶时间',
  `status` int(11) DEFAULT '1' COMMENT '审核状态：0不发布 1发布',
  `isdelete` int(11) DEFAULT '0' COMMENT '是否删除',
  `rewardtotal` bigint(20) DEFAULT '0' COMMENT '打赏总金额',
  `rewardcount` bigint(20) DEFAULT '0' COMMENT '打赏总人数',
  PRIMARY KEY (`id`),
  KEY `idx_createtime` (`createtime`),
  KEY `idx_fcnid` (`id`),
  KEY `idx_classifyid` (`category_id`),
  KEY `idx_fcncollectnum` (`collect_count`),
  KEY `idx_fcncommentnum` (`comment_count`),
  KEY `idx_frmuserid` (`userid`),
  KEY `idx_sticky` (`sticky`),
  KEY `idx_shenhe` (`status`),
  KEY `idx_isdelete` (`isdelete`),
  KEY `fcnmesgtitle` (`title`),
  KEY `clickcount` (`click_count`),
  KEY `rewardtotal` (`rewardtotal`),
  KEY `rewardcount` (`rewardcount`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='财经圈文章表';

-- ----------------------------
-- Records of cmf_articles
-- ----------------------------
INSERT INTO `cmf_articles` VALUES ('1530871027', '1531449359', '1', '4', 'php语法错误---Data truncated for column \'updatetime\' ', '&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;h1 style=&quot;margin: 10px 0px 0px; font-size: 28px; font-weight: 500; line-height: 32px; color: rgb(51, 51, 51); font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Courier, Verdana, 微软雅黑; white-space: normal;&quot;&gt;1265 Data truncated for column &amp;#39;updatetime&amp;#39; at row&lt;/h1&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;h1 style=&quot;margin: 10px 0px 0px; font-size: 28px; font-weight: 500; line-height: 32px; color: rgb(51, 51, 51); font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Courier, Verdana, 微软雅黑; white-space: normal;&quot;&gt;1265 Data truncated for column &amp;#39;updatetime&amp;#39; at row&lt;/h1&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'admin/20180706/1463eba3997c703a8d6fb027eca23dc3.png', '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0');
INSERT INTO `cmf_articles` VALUES ('1531368067', '1531449370', '2', '3', 'thinkphp系统内置的验证规则', '&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;格式验证类&lt;/h2&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;require&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段必须，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;require&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;number 或者 integer&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为数字（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;number&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;float&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为浮点数字（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;float&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;boolean&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为布尔值（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;boolean&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;email&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为email地址（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;email&amp;#39;=&amp;gt;&amp;#39;email&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;array&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为数组，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;info&amp;#39;=&amp;gt;&amp;#39;array&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;accepted&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段是否为为 yes, on, 或是 1。这在确认&amp;quot;服务条款&amp;quot;是否同意时很有用，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;accept&amp;#39;=&amp;gt;&amp;#39;accepted&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;date&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证值是否为有效的日期，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;date&amp;#39;=&amp;gt;&amp;#39;date&amp;#39;&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;会对日期值进行&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;strtotime&lt;/code&gt;后进行判断。&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;alpha&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为字母，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;alpha&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;alphaNum&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为字母和数字，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;alphaNum&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;alphaDash&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为字母和数字，下划线&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;_&lt;/code&gt;及破折号&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;-&lt;/code&gt;，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;alphaDash&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;chs&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值只能是汉字，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;chs&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;chsAlpha&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值只能是汉字、字母，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;chsAlpha&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;chsAlphaNum&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值只能是汉字、字母和数字，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;chsAlphaNum&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;chsDash&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值只能是汉字、字母、数字和下划线_及破折号-，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;chsDash&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;activeUrl&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为有效的域名或者IP，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;host&amp;#39;=&amp;gt;&amp;#39;activeUrl&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;url&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为有效的URL地址（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;url&amp;#39;=&amp;gt;&amp;#39;url&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;ip&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为有效的IP地址（采用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;filter_var&lt;/code&gt;验证），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;ip&amp;#39;=&amp;gt;&amp;#39;ip&amp;#39;&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;支持验证ipv4和ipv6格式的IP地址。&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;dateFormat:format&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否为指定格式的日期，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;create_time&amp;#39;=&amp;gt;&amp;#39;dateFormat:y-m-d&amp;#39;&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;长度和区间验证类&lt;/h2&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;in&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否在某个范围，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;in:1,2,3&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;notIn&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值不在某个范围，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;notIn:1,2,3&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;between&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否在某个区间，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;between:1,10&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;notBetween&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值不在某个范围，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;notBetween:1,10&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;length:num1,num2&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值的长度是否在某个范围，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;length:4,25&amp;#39;&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;或者指定长度&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;length:4&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;default&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 8px 0px; line-height: 1.7em; padding: 8px 16px; color: rgb(91, 192, 222); border-left: 5px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 1.7em; padding: 0px;&quot;&gt;如果验证的数据是数组，则判断数组的长度。&lt;br/&gt;如果验证的数据是File对象，则判断文件的大小。&lt;/p&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;max:number&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值的最大长度，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;max:25&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;default&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 8px 0px; line-height: 1.7em; padding: 8px 16px; color: rgb(91, 192, 222); border-left: 5px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 1.7em; padding: 0px;&quot;&gt;如果验证的数据是数组，则判断数组的长度。&lt;br/&gt;如果验证的数据是File对象，则判断文件的大小。&lt;/p&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;min:number&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值的最小长度，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;min:5&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;default&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 8px 0px; line-height: 1.7em; padding: 8px 16px; color: rgb(91, 192, 222); border-left: 5px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 1.7em; padding: 0px;&quot;&gt;如果验证的数据是数组，则判断数组的长度。&lt;br/&gt;如果验证的数据是File对象，则判断文件的大小。&lt;/p&gt;&lt;/blockquote&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;after:日期&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否在某个日期之后，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;begin_time&amp;#39;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;after:2016-3-18&amp;#39;,&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;before:日期&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值是否在某个日期之前，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;end_time&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;before:2016-10-01&amp;#39;,&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;expire:开始时间,结束时间&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证当前操作（注意不是某个值）是否在某个有效日期之内，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;expire_time&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;expire:2016-2-1,2016-10-01&amp;#39;,&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;allowIp:allow1,allow2,...&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证当前请求的IP是否在某个范围，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;allowIp:114.45.4.55&amp;#39;,&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;该规则可以用于某个后台的访问权限&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;denyIp:allow1,allow2,...&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证当前请求的IP是否禁止访问，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;denyIp:114.45.4.55&amp;#39;,&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;字段比较类&lt;/h2&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;confirm&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段是否和另外一个字段的值一致，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;repassword&amp;#39;=&amp;gt;&amp;#39;require|confirm:password&amp;#39;&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;5.0.4+&lt;/code&gt;版本开始，增加了字段自动匹配验证规则，如password和password_confirm是自动相互验证的，只需要使用&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;password&amp;#39;=&amp;gt;&amp;#39;require|confirm&amp;#39;&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;会自动验证和password_confirm进行字段比较是否一致，反之亦然。&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;different&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段是否和另外一个字段的值不一致，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;name&amp;#39;=&amp;gt;&amp;#39;require|different:account&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;eq 或者 = 或者 same&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否等于某个值，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;score&amp;#39;=&amp;gt;&amp;#39;eq:100&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;=:100&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;same:100&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;egt 或者 &amp;gt;=&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否大于等于某个值，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;score&amp;#39;=&amp;gt;&amp;#39;egt:60&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;&amp;gt;=:100&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;gt 或者 &amp;gt;&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否大于某个值，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;score&amp;#39;=&amp;gt;&amp;#39;gt:60&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;&amp;gt;:100&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;elt 或者 &amp;lt;=&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否小于等于某个值，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;score&amp;#39;=&amp;gt;&amp;#39;elt:100&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;&amp;lt;=:100&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;lt 或者 &amp;lt;&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否小于某个值，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;score&amp;#39;=&amp;gt;&amp;#39;lt:100&amp;#39;&amp;#39;num&amp;#39;=&amp;gt;&amp;#39;&amp;lt;:100&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;验证字段比较支持对比其他字段（V5.0.8+）&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证对比其他字段大小（数值大小对比），例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;price&amp;#39;=&amp;gt;&amp;#39;lt:market_price&amp;#39;&amp;#39;price&amp;#39;=&amp;gt;&amp;#39;&amp;lt;:market_price&amp;#39;&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;filter验证&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;支持使用filter_var进行验证，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;ip&amp;#39;=&amp;gt;&amp;#39;filter:validate_ip&amp;#39;&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;正则验证&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;支持直接使用正则验证，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;zip&amp;#39;=&amp;gt;&amp;#39;\\d{6}&amp;#39;,//&amp;nbsp;或者&amp;#39;zip&amp;#39;=&amp;gt;&amp;#39;regex:\\d{6}&amp;#39;,&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如果你的正则表达式中包含有&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;|&lt;/code&gt;符号的话，必须使用数组方式定义。&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;accepted&amp;#39;=&amp;gt;[&amp;#39;regex&amp;#39;=&amp;gt;&amp;#39;/^(yes|on|1)$/i&amp;#39;],&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;也可以实现预定义正则表达式后直接调用，例如在验证器类中定义&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;regex&lt;/code&gt;属性&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;protected&amp;nbsp;$regex&amp;nbsp;=&amp;nbsp;[&amp;nbsp;&amp;#39;zip&amp;#39;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;\\d{6}&amp;#39;];&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;然后就可以使用&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;zip&amp;#39;	=&amp;gt;	&amp;#39;regex:zip&amp;#39;,&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;上传验证&lt;/h2&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;file&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否是一个上传文件&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;image:width,height,type&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证是否是一个图像文件，width height和type都是可选，width和height必须同时定义。&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;fileExt:允许的文件后缀&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证上传文件后缀&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;fileMime:允许的文件类型&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证上传文件类型&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;fileSize:允许的文件字节大小&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证上传文件大小&lt;/p&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;行为验证&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;使用行为验证数据，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;data&amp;#39;=&amp;gt;&amp;#39;behavior:\\app\\index\\behavior\\Check&amp;#39;&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;其它验证&lt;/h2&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;unique:table,field,except,pk&lt;/h3&gt;&lt;/blockquote&gt;&lt;table&gt;&lt;thead style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased;&quot;&gt;&lt;tr style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; break-inside: avoid;&quot; class=&quot;firstRow&quot;&gt;&lt;th style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; text-align: left; border-color: rgb(136, 136, 136); padding: 3px 12px;&quot;&gt;版本&lt;/th&gt;&lt;th style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; text-align: left; border-color: rgb(136, 136, 136); padding: 3px 12px;&quot;&gt;调整功能&lt;/th&gt;&lt;/tr&gt;&lt;/thead&gt;&lt;tbody style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased;&quot;&gt;&lt;tr style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; break-inside: avoid;&quot;&gt;&lt;td style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; border-color: rgb(136, 136, 136); padding: 3px 12px; border-top-left-radius: 3px;&quot;&gt;5.0.5&lt;/td&gt;&lt;td style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; border-color: rgb(136, 136, 136); padding: 3px 12px; border-top-right-radius: 3px; border-bottom-left-radius: 3px; border-bottom-right-radius: 3px;&quot;&gt;支持指定完整模型类 并且默认会优先检测模型类是否存在 不存在则检测数据表&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证当前请求的字段值是否为唯一的，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;表示验证name字段的值是否在user表（不包含前缀）中唯一&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user&amp;#39;,//&amp;nbsp;验证其他字段&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user,account&amp;#39;,//&amp;nbsp;排除某个主键值&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user,account,10&amp;#39;,//&amp;nbsp;指定某个主键值排除&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user,account,10,user_id&amp;#39;,&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;如果需要对复杂的条件验证唯一，可以使用下面的方式：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;多个字段验证唯一验证条件&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user,status^account&amp;#39;,//&amp;nbsp;复杂验证条件&amp;#39;name&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;unique:user,status=1&amp;amp;account=&amp;#39;.$data[&amp;#39;account&amp;#39;],&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;requireIf:field,value&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段的值等于某个值的时候必须，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;当account的值等于1的时候&amp;nbsp;password必须&amp;#39;password&amp;#39;=&amp;gt;&amp;#39;requireIf:account,1&amp;#39;&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h3 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.43; margin: 0px; font-weight: 200; font-size: 1.5em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;requireWith:field&lt;/h3&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;验证某个字段有值的时候必须，例如：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 0px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;当account有值的时候password字段必须&amp;#39;password&amp;#39;=&amp;gt;&amp;#39;requireWith:account&amp;#39;&lt;/pre&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', null, '0', '0', '0', '1', '1', '1', '0', '1', '0', '0', '0');
INSERT INTO `cmf_articles` VALUES ('1531373483', '1531448826', '3', '2', '异常处理接管', '&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;在调试模式下，系统默认展示的错误页面：&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/ueditor/php/upload/image/20180712/1531373459653179.png&quot;/&gt;&lt;/p&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 1.7em; padding: 0px;&quot;&gt;只有在调试模式下面才能显示具体的错误信息，如果在部署模式下面，你可能看到的是一个简单的提示文字，例如：&lt;/p&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/ueditor/php/upload/image/20180712/1531373459637774.png&quot;/&gt;&lt;/p&gt;&lt;blockquote class=&quot;danger&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(217, 83, 79); border-left: 4px solid rgb(217, 83, 79); background-color: rgb(253, 247, 247); border-top-color: rgb(217, 83, 79); border-right-color: rgb(217, 83, 79); border-bottom-color: rgb(217, 83, 79); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;h4 style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px; line-height: 1.7em; margin: 0px; font-weight: 200; font-size: 1.25em;&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;本着严谨的原则，5.0版本默认情况下会对任何错误（包括警告错误）抛出异常，如果不希望如此严谨的抛出异常，可以在应用公共函数文件中或者配置文件中使用&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;error_reporting&lt;/code&gt;方法设置错误报错级别（请注意，在入口文件中设置是无效的），例如：&lt;/h4&gt;&lt;/blockquote&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;异常错误报错级别,error_reporting(E_ERROR&amp;nbsp;|&amp;nbsp;E_PARSE&amp;nbsp;);&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;异常处理接管&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;框架支持异常页面由开发者自定义类进行处理，需要配置参数&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;exception_handle&lt;/code&gt;&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//&amp;nbsp;异常处理handle类&amp;nbsp;留空使用&amp;nbsp;\\think\\exception\\Handle\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;#39;exception_handle&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;#39;\\\\app\\\\common\\\\exception\\\\Http&amp;#39;,&lt;/pre&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;自定义类需要继承&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;Handle&lt;/code&gt;并且实现&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;render&lt;/code&gt;方法，可以参考如下代码：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;lt;?phpnamespace&amp;nbsp;app\\common\\exception;use&amp;nbsp;Exception;use&amp;nbsp;think\\exception\\Handle;use&amp;nbsp;think\\exception\\HttpException;class&amp;nbsp;Http&amp;nbsp;extends&amp;nbsp;Handle{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;public&amp;nbsp;function&amp;nbsp;render(Exception&amp;nbsp;$e)\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//&amp;nbsp;参数验证错误\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if&amp;nbsp;($e&amp;nbsp;instanceof&amp;nbsp;ValidateException)&amp;nbsp;{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return&amp;nbsp;json($e-&amp;gt;getError(),&amp;nbsp;422);\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//&amp;nbsp;请求异常\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if&amp;nbsp;($e&amp;nbsp;instanceof&amp;nbsp;HttpException&amp;nbsp;&amp;amp;&amp;amp;&amp;nbsp;request()-&amp;gt;isAjax())&amp;nbsp;{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return&amp;nbsp;response($e-&amp;gt;getMessage(),&amp;nbsp;$e-&amp;gt;getStatusCode());\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//TODO::开发者对异常的操作\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//可以在此交由系统处理\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return&amp;nbsp;parent::render($e);\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}\r\n\r\n}&lt;/pre&gt;&lt;blockquote class=&quot;info&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin: 0px 0px 14px; line-height: 1.7em; padding: 5px 5px 5px 15px; color: rgb(91, 192, 222); border-left: 4px solid rgb(91, 192, 222); background-color: rgb(244, 248, 250); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal;&quot;&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; line-height: 1.7em; padding: 0px;&quot;&gt;需要注意的是，如果配置了&amp;#39;exception_handle&amp;#39;，且没有再次调用系统&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;render&lt;/code&gt;的情况下，配置&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;http_exception_template&lt;/code&gt;就不再生效，具体可以参考&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;Handle&lt;/code&gt;类内实现的功能。&lt;/p&gt;&lt;/blockquote&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;V5.0.11&lt;/code&gt;版本开始，可以通过闭包定义的方式简化异常自定义处理，例如，上面的自定义异常类可以改为直接配置&lt;code style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 1em; display: inline-block; border-radius: 4px; padding: 2px 6px; background: rgb(249, 250, 250); word-break: break-all; white-space: pre; line-height: 1.3; border: 1px solid rgb(222, 217, 217); margin: 0px 5px;&quot;&gt;exception_handle&lt;/code&gt;参数：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;&amp;#39;exception_handle&amp;#39;	=&amp;gt;	function(Exception&amp;nbsp;$e){&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//&amp;nbsp;参数验证错误\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if&amp;nbsp;($e&amp;nbsp;instanceof&amp;nbsp;\\think\\exception\\ValidateException)&amp;nbsp;{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return&amp;nbsp;json($e-&amp;gt;getError(),&amp;nbsp;422);\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;//&amp;nbsp;请求异常\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;if&amp;nbsp;($e&amp;nbsp;instanceof&amp;nbsp;\\think\\exception\\HttpException&amp;nbsp;&amp;amp;&amp;amp;&amp;nbsp;request()-&amp;gt;isAjax())&amp;nbsp;{&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;return&amp;nbsp;response($e-&amp;gt;getMessage(),&amp;nbsp;$e-&amp;gt;getStatusCode());\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;}\r\n}&lt;/pre&gt;&lt;h2 class=&quot;line&quot; style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; padding: 0px 0px 0.3em; font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; line-height: 1.225; margin: 0px 0px 14px; font-weight: 200; font-size: 1.75em; border-bottom: 1px solid rgb(238, 238, 238); color: rgba(0, 0, 0, 0.87); white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;a style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; color: rgb(65, 131, 196); outline: 0px; background-color: transparent;&quot;&gt;&lt;/a&gt;部署模式异常&lt;/h2&gt;&lt;p style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 14px; line-height: 1.7em; padding: 0px; color: rgba(0, 0, 0, 0.87); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Arial, Helvetica, sans-serif; font-size: 15.96px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;一旦关闭调试模式，发生错误后不会提示具体的错误信息，如果你仍然希望看到具体的错误信息，那么可以如下设置：&lt;/p&gt;&lt;pre style=&quot;box-sizing: inherit; -webkit-tap-highlight-color: transparent; text-size-adjust: none; -webkit-font-smoothing: antialiased; font-family: Consolas, &amp;quot;Liberation Mono&amp;quot;, Menlo, Courier, monospace; font-size: 13.566px; margin-top: 0px; margin-bottom: 14px; line-height: 1.45; padding: 16px; overflow: auto; background-color: rgb(249, 250, 250); border: 1px solid rgb(222, 217, 217); border-radius: 3px; color: rgba(0, 0, 0, 0.87);&quot;&gt;//&amp;nbsp;显示错误信息&amp;#39;show_error_msg&amp;#39;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;=&amp;gt;&amp;nbsp;&amp;nbsp;true,&lt;/pre&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'admin/20180706/52827a9e95c56b00a391e64754e83245.jpg', '0', '0', '0', '2', '0', '1', '0', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------
INSERT INTO `cmf_asset` VALUES ('1', '1', '36264', '1530510340', '1', '0', 'a6781cc507df40f948bccee5e30502c49dad1405008009fffe53e89b1a21cc54', '1.png', 'admin/20180702/4db79dbe69d7583ebb72b8cd4617eca2.png', 'a6781cc507df40f948bccee5e30502c4', '22227bd55ac4c4b4faaf8c4a1d4f551fa9d3e117', 'png', null);
INSERT INTO `cmf_asset` VALUES ('2', '1', '22105', '1530511910', '1', '0', '02eabd21c680824f3f9b008e74404ab15bb6deca0f82e17eab6096fda3f4c637', '0.jpg', 'admin/20180702/9b43ac8c8845ef77e782490726d51cd0.jpg', '02eabd21c680824f3f9b008e74404ab1', 'b34411c3ef199a39c5c0dfc103ea639c407f1a30', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('3', '1', '666986', '1530512250', '1', '0', '433bb0c255a5be0bb7a6d41b2babaacd6bd0796dd64a51aacc619e401d26b207', '58b5311aeffc7.jpg', 'admin/20180702/6c1aebfd6acffe5a0390f8f93601a4b5.jpg', '433bb0c255a5be0bb7a6d41b2babaacd', '29b41f6fdb262891b3d2d0420e8a60e25d23dd7c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('4', '1', '345921', '1530863727', '1', '0', '08c1b59cad1645a67f924a34b6539c55846246e767427f32b5fd7883e6d309d2', '58ec7a74877c9.jpg', 'admin/20180706/52827a9e95c56b00a391e64754e83245.jpg', '08c1b59cad1645a67f924a34b6539c55', '92e56c95820a649258f606a0a8730b7af21f6d2b', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('5', '1', '25900', '1530868697', '1', '0', '7478e2e1729e42e561e93de32b155ec0bae6309a95e7c35ae85150be16eecff8', '16.9.png', 'admin/20180706/1463eba3997c703a8d6fb027eca23dc3.png', '7478e2e1729e42e561e93de32b155ec0', '049a431b70def3ec2334996c7519fb9706270d69', 'png', null);
INSERT INTO `cmf_asset` VALUES ('6', '1', '52405', '1531202065', '1', '0', '5be63676a56ad00594c8a9f6e9146b6743dafdb8b41fda5db27e7cea25bc4a82', 'Y8.jpg', 'admin/20180710/6192b606362f5d1f6ae6a026ec9ab42b.jpg', '5be63676a56ad00594c8a9f6e9146b67', '4e30465cc49f958fd08b20a16cfb3b53e231f742', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('7', '1', '47323', '1531216346', '1', '0', 'c79813c763dfa7d128b45391a51d3bc6ac993b2cf4f9fa5b04fd3e97d4ec1e4e', 'Y6.jpg', 'admin/20180710/fca27c5eea37a9f0c79303dfccc014a6.jpg', 'c79813c763dfa7d128b45391a51d3bc6', '82c7b6886a40a5f36ec2d6faaaabb2724fcfef43', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('8', '1', '65587', '1531216588', '1', '0', 'b0045ade7ead8513a71d3117e74e7a31113bf34551fe55be188ad6716f686713', 'Y12.jpg', 'admin/20180710/74fef40545e671a16006d4cd258a0762.jpg', 'b0045ade7ead8513a71d3117e74e7a31', 'b71b57c2fa933df73bdbf006381e0bfac61697b3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('9', '1', '8519093', '1531372311', '1', '0', '521affbb98044bb78f2798c4446eb5f07a4b8da52fe6d8a08f1ed78b97ea592d', '8e980379f2977a43df1d2803c71dc190.png', 'admin/20180712/b14bc38c6104f1266caf706e8f776d2f.png', '521affbb98044bb78f2798c4446eb5f0', '8ac4b18456470c1048d8ed5b41ca233b3abf4268', 'png', null);

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

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES ('148', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES ('149', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES ('158', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('159', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('160', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES ('161', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES ('162', '1', 'admin', 'admin_url', 'admin/Article/default', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('163', '1', 'admin', 'admin_url', 'admin/Article/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('164', '1', 'admin', 'admin_url', 'admin/Category/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES ('165', '1', 'admin', 'admin_url', 'admin/userinfo/index', '', '用户中心', '');

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
INSERT INTO `cmf_category` VALUES ('1', '0', '0', '1', '0', '1000', 'php', 'php', '1', '0');
INSERT INTO `cmf_category` VALUES ('2', '0', '0', '0', '0', '1001', 'java', '测试', '0', '1530517985');
INSERT INTO `cmf_category` VALUES ('3', '0', '0', '1', '0', '1000', 'mysql', 'mysql', '0', '1530698324');
INSERT INTO `cmf_category` VALUES ('4', '0', '0', '1', '0', '1000', 'php', '分类名称', '0', '1531448939');

-- ----------------------------
-- Table structure for cmf_city
-- ----------------------------
DROP TABLE IF EXISTS `cmf_city`;
CREATE TABLE `cmf_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityid` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `provinceid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 COMMENT='行政区域地州市信息表';

-- ----------------------------
-- Records of cmf_city
-- ----------------------------
INSERT INTO `cmf_city` VALUES ('1', '110100', '市辖区', '110000');
INSERT INTO `cmf_city` VALUES ('2', '110200', '县', '110000');
INSERT INTO `cmf_city` VALUES ('3', '120100', '市辖区', '120000');
INSERT INTO `cmf_city` VALUES ('4', '120200', '县', '120000');
INSERT INTO `cmf_city` VALUES ('5', '130100', '石家庄市', '130000');
INSERT INTO `cmf_city` VALUES ('6', '130200', '唐山市', '130000');
INSERT INTO `cmf_city` VALUES ('7', '130300', '秦皇岛市', '130000');
INSERT INTO `cmf_city` VALUES ('8', '130400', '邯郸市', '130000');
INSERT INTO `cmf_city` VALUES ('9', '130500', '邢台市', '130000');
INSERT INTO `cmf_city` VALUES ('10', '130600', '保定市', '130000');
INSERT INTO `cmf_city` VALUES ('11', '130700', '张家口市', '130000');
INSERT INTO `cmf_city` VALUES ('12', '130800', '承德市', '130000');
INSERT INTO `cmf_city` VALUES ('13', '130900', '沧州市', '130000');
INSERT INTO `cmf_city` VALUES ('14', '131000', '廊坊市', '130000');
INSERT INTO `cmf_city` VALUES ('15', '131100', '衡水市', '130000');
INSERT INTO `cmf_city` VALUES ('16', '140100', '太原市', '140000');
INSERT INTO `cmf_city` VALUES ('17', '140200', '大同市', '140000');
INSERT INTO `cmf_city` VALUES ('18', '140300', '阳泉市', '140000');
INSERT INTO `cmf_city` VALUES ('19', '140400', '长治市', '140000');
INSERT INTO `cmf_city` VALUES ('20', '140500', '晋城市', '140000');
INSERT INTO `cmf_city` VALUES ('21', '140600', '朔州市', '140000');
INSERT INTO `cmf_city` VALUES ('22', '140700', '晋中市', '140000');
INSERT INTO `cmf_city` VALUES ('23', '140800', '运城市', '140000');
INSERT INTO `cmf_city` VALUES ('24', '140900', '忻州市', '140000');
INSERT INTO `cmf_city` VALUES ('25', '141000', '临汾市', '140000');
INSERT INTO `cmf_city` VALUES ('26', '141100', '吕梁市', '140000');
INSERT INTO `cmf_city` VALUES ('27', '150100', '呼和浩特市', '150000');
INSERT INTO `cmf_city` VALUES ('28', '150200', '包头市', '150000');
INSERT INTO `cmf_city` VALUES ('29', '150300', '乌海市', '150000');
INSERT INTO `cmf_city` VALUES ('30', '150400', '赤峰市', '150000');
INSERT INTO `cmf_city` VALUES ('31', '150500', '通辽市', '150000');
INSERT INTO `cmf_city` VALUES ('32', '150600', '鄂尔多斯市', '150000');
INSERT INTO `cmf_city` VALUES ('33', '150700', '呼伦贝尔市', '150000');
INSERT INTO `cmf_city` VALUES ('34', '150800', '巴彦淖尔市', '150000');
INSERT INTO `cmf_city` VALUES ('35', '150900', '乌兰察布市', '150000');
INSERT INTO `cmf_city` VALUES ('36', '152200', '兴安盟', '150000');
INSERT INTO `cmf_city` VALUES ('37', '152500', '锡林郭勒盟', '150000');
INSERT INTO `cmf_city` VALUES ('38', '152900', '阿拉善盟', '150000');
INSERT INTO `cmf_city` VALUES ('39', '210100', '沈阳市', '210000');
INSERT INTO `cmf_city` VALUES ('40', '210200', '大连市', '210000');
INSERT INTO `cmf_city` VALUES ('41', '210300', '鞍山市', '210000');
INSERT INTO `cmf_city` VALUES ('42', '210400', '抚顺市', '210000');
INSERT INTO `cmf_city` VALUES ('43', '210500', '本溪市', '210000');
INSERT INTO `cmf_city` VALUES ('44', '210600', '丹东市', '210000');
INSERT INTO `cmf_city` VALUES ('45', '210700', '锦州市', '210000');
INSERT INTO `cmf_city` VALUES ('46', '210800', '营口市', '210000');
INSERT INTO `cmf_city` VALUES ('47', '210900', '阜新市', '210000');
INSERT INTO `cmf_city` VALUES ('48', '211000', '辽阳市', '210000');
INSERT INTO `cmf_city` VALUES ('49', '211100', '盘锦市', '210000');
INSERT INTO `cmf_city` VALUES ('50', '211200', '铁岭市', '210000');
INSERT INTO `cmf_city` VALUES ('51', '211300', '朝阳市', '210000');
INSERT INTO `cmf_city` VALUES ('52', '211400', '葫芦岛市', '210000');
INSERT INTO `cmf_city` VALUES ('53', '220100', '长春市', '220000');
INSERT INTO `cmf_city` VALUES ('54', '220200', '吉林市', '220000');
INSERT INTO `cmf_city` VALUES ('55', '220300', '四平市', '220000');
INSERT INTO `cmf_city` VALUES ('56', '220400', '辽源市', '220000');
INSERT INTO `cmf_city` VALUES ('57', '220500', '通化市', '220000');
INSERT INTO `cmf_city` VALUES ('58', '220600', '白山市', '220000');
INSERT INTO `cmf_city` VALUES ('59', '220700', '松原市', '220000');
INSERT INTO `cmf_city` VALUES ('60', '220800', '白城市', '220000');
INSERT INTO `cmf_city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `cmf_city` VALUES ('62', '230100', '哈尔滨市', '230000');
INSERT INTO `cmf_city` VALUES ('63', '230200', '齐齐哈尔市', '230000');
INSERT INTO `cmf_city` VALUES ('64', '230300', '鸡西市', '230000');
INSERT INTO `cmf_city` VALUES ('65', '230400', '鹤岗市', '230000');
INSERT INTO `cmf_city` VALUES ('66', '230500', '双鸭山市', '230000');
INSERT INTO `cmf_city` VALUES ('67', '230600', '大庆市', '230000');
INSERT INTO `cmf_city` VALUES ('68', '230700', '伊春市', '230000');
INSERT INTO `cmf_city` VALUES ('69', '230800', '佳木斯市', '230000');
INSERT INTO `cmf_city` VALUES ('70', '230900', '七台河市', '230000');
INSERT INTO `cmf_city` VALUES ('71', '231000', '牡丹江市', '230000');
INSERT INTO `cmf_city` VALUES ('72', '231100', '黑河市', '230000');
INSERT INTO `cmf_city` VALUES ('73', '231200', '绥化市', '230000');
INSERT INTO `cmf_city` VALUES ('74', '232700', '大兴安岭地区', '230000');
INSERT INTO `cmf_city` VALUES ('75', '310100', '市辖区', '310000');
INSERT INTO `cmf_city` VALUES ('76', '310200', '县', '310000');
INSERT INTO `cmf_city` VALUES ('77', '320100', '南京市', '320000');
INSERT INTO `cmf_city` VALUES ('78', '320200', '无锡市', '320000');
INSERT INTO `cmf_city` VALUES ('79', '320300', '徐州市', '320000');
INSERT INTO `cmf_city` VALUES ('80', '320400', '常州市', '320000');
INSERT INTO `cmf_city` VALUES ('81', '320500', '苏州市', '320000');
INSERT INTO `cmf_city` VALUES ('82', '320600', '南通市', '320000');
INSERT INTO `cmf_city` VALUES ('83', '320700', '连云港市', '320000');
INSERT INTO `cmf_city` VALUES ('84', '320800', '淮安市', '320000');
INSERT INTO `cmf_city` VALUES ('85', '320900', '盐城市', '320000');
INSERT INTO `cmf_city` VALUES ('86', '321000', '扬州市', '320000');
INSERT INTO `cmf_city` VALUES ('87', '321100', '镇江市', '320000');
INSERT INTO `cmf_city` VALUES ('88', '321200', '泰州市', '320000');
INSERT INTO `cmf_city` VALUES ('89', '321300', '宿迁市', '320000');
INSERT INTO `cmf_city` VALUES ('90', '330100', '杭州市', '330000');
INSERT INTO `cmf_city` VALUES ('91', '330200', '宁波市', '330000');
INSERT INTO `cmf_city` VALUES ('92', '330300', '温州市', '330000');
INSERT INTO `cmf_city` VALUES ('93', '330400', '嘉兴市', '330000');
INSERT INTO `cmf_city` VALUES ('94', '330500', '湖州市', '330000');
INSERT INTO `cmf_city` VALUES ('95', '330600', '绍兴市', '330000');
INSERT INTO `cmf_city` VALUES ('96', '330700', '金华市', '330000');
INSERT INTO `cmf_city` VALUES ('97', '330800', '衢州市', '330000');
INSERT INTO `cmf_city` VALUES ('98', '330900', '舟山市', '330000');
INSERT INTO `cmf_city` VALUES ('99', '331000', '台州市', '330000');
INSERT INTO `cmf_city` VALUES ('100', '331100', '丽水市', '330000');
INSERT INTO `cmf_city` VALUES ('101', '340100', '合肥市', '340000');
INSERT INTO `cmf_city` VALUES ('102', '340200', '芜湖市', '340000');
INSERT INTO `cmf_city` VALUES ('103', '340300', '蚌埠市', '340000');
INSERT INTO `cmf_city` VALUES ('104', '340400', '淮南市', '340000');
INSERT INTO `cmf_city` VALUES ('105', '340500', '马鞍山市', '340000');
INSERT INTO `cmf_city` VALUES ('106', '340600', '淮北市', '340000');
INSERT INTO `cmf_city` VALUES ('107', '340700', '铜陵市', '340000');
INSERT INTO `cmf_city` VALUES ('108', '340800', '安庆市', '340000');
INSERT INTO `cmf_city` VALUES ('109', '341000', '黄山市', '340000');
INSERT INTO `cmf_city` VALUES ('110', '341100', '滁州市', '340000');
INSERT INTO `cmf_city` VALUES ('111', '341200', '阜阳市', '340000');
INSERT INTO `cmf_city` VALUES ('112', '341300', '宿州市', '340000');
INSERT INTO `cmf_city` VALUES ('113', '341400', '巢湖市', '340000');
INSERT INTO `cmf_city` VALUES ('114', '341500', '六安市', '340000');
INSERT INTO `cmf_city` VALUES ('115', '341600', '亳州市', '340000');
INSERT INTO `cmf_city` VALUES ('116', '341700', '池州市', '340000');
INSERT INTO `cmf_city` VALUES ('117', '341800', '宣城市', '340000');
INSERT INTO `cmf_city` VALUES ('118', '350100', '福州市', '350000');
INSERT INTO `cmf_city` VALUES ('119', '350200', '厦门市', '350000');
INSERT INTO `cmf_city` VALUES ('120', '350300', '莆田市', '350000');
INSERT INTO `cmf_city` VALUES ('121', '350400', '三明市', '350000');
INSERT INTO `cmf_city` VALUES ('122', '350500', '泉州市', '350000');
INSERT INTO `cmf_city` VALUES ('123', '350600', '漳州市', '350000');
INSERT INTO `cmf_city` VALUES ('124', '350700', '南平市', '350000');
INSERT INTO `cmf_city` VALUES ('125', '350800', '龙岩市', '350000');
INSERT INTO `cmf_city` VALUES ('126', '350900', '宁德市', '350000');
INSERT INTO `cmf_city` VALUES ('127', '360100', '南昌市', '360000');
INSERT INTO `cmf_city` VALUES ('128', '360200', '景德镇市', '360000');
INSERT INTO `cmf_city` VALUES ('129', '360300', '萍乡市', '360000');
INSERT INTO `cmf_city` VALUES ('130', '360400', '九江市', '360000');
INSERT INTO `cmf_city` VALUES ('131', '360500', '新余市', '360000');
INSERT INTO `cmf_city` VALUES ('132', '360600', '鹰潭市', '360000');
INSERT INTO `cmf_city` VALUES ('133', '360700', '赣州市', '360000');
INSERT INTO `cmf_city` VALUES ('134', '360800', '吉安市', '360000');
INSERT INTO `cmf_city` VALUES ('135', '360900', '宜春市', '360000');
INSERT INTO `cmf_city` VALUES ('136', '361000', '抚州市', '360000');
INSERT INTO `cmf_city` VALUES ('137', '361100', '上饶市', '360000');
INSERT INTO `cmf_city` VALUES ('138', '370100', '济南市', '370000');
INSERT INTO `cmf_city` VALUES ('139', '370200', '青岛市', '370000');
INSERT INTO `cmf_city` VALUES ('140', '370300', '淄博市', '370000');
INSERT INTO `cmf_city` VALUES ('141', '370400', '枣庄市', '370000');
INSERT INTO `cmf_city` VALUES ('142', '370500', '东营市', '370000');
INSERT INTO `cmf_city` VALUES ('143', '370600', '烟台市', '370000');
INSERT INTO `cmf_city` VALUES ('144', '370700', '潍坊市', '370000');
INSERT INTO `cmf_city` VALUES ('145', '370800', '济宁市', '370000');
INSERT INTO `cmf_city` VALUES ('146', '370900', '泰安市', '370000');
INSERT INTO `cmf_city` VALUES ('147', '371000', '威海市', '370000');
INSERT INTO `cmf_city` VALUES ('148', '371100', '日照市', '370000');
INSERT INTO `cmf_city` VALUES ('149', '371200', '莱芜市', '370000');
INSERT INTO `cmf_city` VALUES ('150', '371300', '临沂市', '370000');
INSERT INTO `cmf_city` VALUES ('151', '371400', '德州市', '370000');
INSERT INTO `cmf_city` VALUES ('152', '371500', '聊城市', '370000');
INSERT INTO `cmf_city` VALUES ('153', '371600', '滨州市', '370000');
INSERT INTO `cmf_city` VALUES ('154', '371700', '荷泽市', '370000');
INSERT INTO `cmf_city` VALUES ('155', '410100', '郑州市', '410000');
INSERT INTO `cmf_city` VALUES ('156', '410200', '开封市', '410000');
INSERT INTO `cmf_city` VALUES ('157', '410300', '洛阳市', '410000');
INSERT INTO `cmf_city` VALUES ('158', '410400', '平顶山市', '410000');
INSERT INTO `cmf_city` VALUES ('159', '410500', '安阳市', '410000');
INSERT INTO `cmf_city` VALUES ('160', '410600', '鹤壁市', '410000');
INSERT INTO `cmf_city` VALUES ('161', '410700', '新乡市', '410000');
INSERT INTO `cmf_city` VALUES ('162', '410800', '焦作市', '410000');
INSERT INTO `cmf_city` VALUES ('163', '410900', '濮阳市', '410000');
INSERT INTO `cmf_city` VALUES ('164', '411000', '许昌市', '410000');
INSERT INTO `cmf_city` VALUES ('165', '411100', '漯河市', '410000');
INSERT INTO `cmf_city` VALUES ('166', '411200', '三门峡市', '410000');
INSERT INTO `cmf_city` VALUES ('167', '411300', '南阳市', '410000');
INSERT INTO `cmf_city` VALUES ('168', '411400', '商丘市', '410000');
INSERT INTO `cmf_city` VALUES ('169', '411500', '信阳市', '410000');
INSERT INTO `cmf_city` VALUES ('170', '411600', '周口市', '410000');
INSERT INTO `cmf_city` VALUES ('171', '411700', '驻马店市', '410000');
INSERT INTO `cmf_city` VALUES ('172', '420100', '武汉市', '420000');
INSERT INTO `cmf_city` VALUES ('173', '420200', '黄石市', '420000');
INSERT INTO `cmf_city` VALUES ('174', '420300', '十堰市', '420000');
INSERT INTO `cmf_city` VALUES ('175', '420500', '宜昌市', '420000');
INSERT INTO `cmf_city` VALUES ('176', '420600', '襄樊市', '420000');
INSERT INTO `cmf_city` VALUES ('177', '420700', '鄂州市', '420000');
INSERT INTO `cmf_city` VALUES ('178', '420800', '荆门市', '420000');
INSERT INTO `cmf_city` VALUES ('179', '420900', '孝感市', '420000');
INSERT INTO `cmf_city` VALUES ('180', '421000', '荆州市', '420000');
INSERT INTO `cmf_city` VALUES ('181', '421100', '黄冈市', '420000');
INSERT INTO `cmf_city` VALUES ('182', '421200', '咸宁市', '420000');
INSERT INTO `cmf_city` VALUES ('183', '421300', '随州市', '420000');
INSERT INTO `cmf_city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `cmf_city` VALUES ('185', '429000', '省直辖行政单位', '420000');
INSERT INTO `cmf_city` VALUES ('186', '430100', '长沙市', '430000');
INSERT INTO `cmf_city` VALUES ('187', '430200', '株洲市', '430000');
INSERT INTO `cmf_city` VALUES ('188', '430300', '湘潭市', '430000');
INSERT INTO `cmf_city` VALUES ('189', '430400', '衡阳市', '430000');
INSERT INTO `cmf_city` VALUES ('190', '430500', '邵阳市', '430000');
INSERT INTO `cmf_city` VALUES ('191', '430600', '岳阳市', '430000');
INSERT INTO `cmf_city` VALUES ('192', '430700', '常德市', '430000');
INSERT INTO `cmf_city` VALUES ('193', '430800', '张家界市', '430000');
INSERT INTO `cmf_city` VALUES ('194', '430900', '益阳市', '430000');
INSERT INTO `cmf_city` VALUES ('195', '431000', '郴州市', '430000');
INSERT INTO `cmf_city` VALUES ('196', '431100', '永州市', '430000');
INSERT INTO `cmf_city` VALUES ('197', '431200', '怀化市', '430000');
INSERT INTO `cmf_city` VALUES ('198', '431300', '娄底市', '430000');
INSERT INTO `cmf_city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `cmf_city` VALUES ('200', '440100', '广州市', '440000');
INSERT INTO `cmf_city` VALUES ('201', '440200', '韶关市', '440000');
INSERT INTO `cmf_city` VALUES ('202', '440300', '深圳市', '440000');
INSERT INTO `cmf_city` VALUES ('203', '440400', '珠海市', '440000');
INSERT INTO `cmf_city` VALUES ('204', '440500', '汕头市', '440000');
INSERT INTO `cmf_city` VALUES ('205', '440600', '佛山市', '440000');
INSERT INTO `cmf_city` VALUES ('206', '440700', '江门市', '440000');
INSERT INTO `cmf_city` VALUES ('207', '440800', '湛江市', '440000');
INSERT INTO `cmf_city` VALUES ('208', '440900', '茂名市', '440000');
INSERT INTO `cmf_city` VALUES ('209', '441200', '肇庆市', '440000');
INSERT INTO `cmf_city` VALUES ('210', '441300', '惠州市', '440000');
INSERT INTO `cmf_city` VALUES ('211', '441400', '梅州市', '440000');
INSERT INTO `cmf_city` VALUES ('212', '441500', '汕尾市', '440000');
INSERT INTO `cmf_city` VALUES ('213', '441600', '河源市', '440000');
INSERT INTO `cmf_city` VALUES ('214', '441700', '阳江市', '440000');
INSERT INTO `cmf_city` VALUES ('215', '441800', '清远市', '440000');
INSERT INTO `cmf_city` VALUES ('216', '441900', '东莞市', '440000');
INSERT INTO `cmf_city` VALUES ('217', '442000', '中山市', '440000');
INSERT INTO `cmf_city` VALUES ('218', '445100', '潮州市', '440000');
INSERT INTO `cmf_city` VALUES ('219', '445200', '揭阳市', '440000');
INSERT INTO `cmf_city` VALUES ('220', '445300', '云浮市', '440000');
INSERT INTO `cmf_city` VALUES ('221', '450100', '南宁市', '450000');
INSERT INTO `cmf_city` VALUES ('222', '450200', '柳州市', '450000');
INSERT INTO `cmf_city` VALUES ('223', '450300', '桂林市', '450000');
INSERT INTO `cmf_city` VALUES ('224', '450400', '梧州市', '450000');
INSERT INTO `cmf_city` VALUES ('225', '450500', '北海市', '450000');
INSERT INTO `cmf_city` VALUES ('226', '450600', '防城港市', '450000');
INSERT INTO `cmf_city` VALUES ('227', '450700', '钦州市', '450000');
INSERT INTO `cmf_city` VALUES ('228', '450800', '贵港市', '450000');
INSERT INTO `cmf_city` VALUES ('229', '450900', '玉林市', '450000');
INSERT INTO `cmf_city` VALUES ('230', '451000', '百色市', '450000');
INSERT INTO `cmf_city` VALUES ('231', '451100', '贺州市', '450000');
INSERT INTO `cmf_city` VALUES ('232', '451200', '河池市', '450000');
INSERT INTO `cmf_city` VALUES ('233', '451300', '来宾市', '450000');
INSERT INTO `cmf_city` VALUES ('234', '451400', '崇左市', '450000');
INSERT INTO `cmf_city` VALUES ('235', '460100', '海口市', '460000');
INSERT INTO `cmf_city` VALUES ('236', '460200', '三亚市', '460000');
INSERT INTO `cmf_city` VALUES ('237', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `cmf_city` VALUES ('238', '500100', '市辖区', '500000');
INSERT INTO `cmf_city` VALUES ('239', '500200', '县', '500000');
INSERT INTO `cmf_city` VALUES ('240', '500300', '市', '500000');
INSERT INTO `cmf_city` VALUES ('241', '510100', '成都市', '510000');
INSERT INTO `cmf_city` VALUES ('242', '510300', '自贡市', '510000');
INSERT INTO `cmf_city` VALUES ('243', '510400', '攀枝花市', '510000');
INSERT INTO `cmf_city` VALUES ('244', '510500', '泸州市', '510000');
INSERT INTO `cmf_city` VALUES ('245', '510600', '德阳市', '510000');
INSERT INTO `cmf_city` VALUES ('246', '510700', '绵阳市', '510000');
INSERT INTO `cmf_city` VALUES ('247', '510800', '广元市', '510000');
INSERT INTO `cmf_city` VALUES ('248', '510900', '遂宁市', '510000');
INSERT INTO `cmf_city` VALUES ('249', '511000', '内江市', '510000');
INSERT INTO `cmf_city` VALUES ('250', '511100', '乐山市', '510000');
INSERT INTO `cmf_city` VALUES ('251', '511300', '南充市', '510000');
INSERT INTO `cmf_city` VALUES ('252', '511400', '眉山市', '510000');
INSERT INTO `cmf_city` VALUES ('253', '511500', '宜宾市', '510000');
INSERT INTO `cmf_city` VALUES ('254', '511600', '广安市', '510000');
INSERT INTO `cmf_city` VALUES ('255', '511700', '达州市', '510000');
INSERT INTO `cmf_city` VALUES ('256', '511800', '雅安市', '510000');
INSERT INTO `cmf_city` VALUES ('257', '511900', '巴中市', '510000');
INSERT INTO `cmf_city` VALUES ('258', '512000', '资阳市', '510000');
INSERT INTO `cmf_city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `cmf_city` VALUES ('260', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `cmf_city` VALUES ('261', '513400', '凉山彝族自治州', '510000');
INSERT INTO `cmf_city` VALUES ('262', '520100', '贵阳市', '520000');
INSERT INTO `cmf_city` VALUES ('263', '520200', '六盘水市', '520000');
INSERT INTO `cmf_city` VALUES ('264', '520300', '遵义市', '520000');
INSERT INTO `cmf_city` VALUES ('265', '520400', '安顺市', '520000');
INSERT INTO `cmf_city` VALUES ('266', '522200', '铜仁地区', '520000');
INSERT INTO `cmf_city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `cmf_city` VALUES ('268', '522400', '毕节地区', '520000');
INSERT INTO `cmf_city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `cmf_city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `cmf_city` VALUES ('271', '530100', '昆明市', '530000');
INSERT INTO `cmf_city` VALUES ('272', '530300', '曲靖市', '530000');
INSERT INTO `cmf_city` VALUES ('273', '530400', '玉溪市', '530000');
INSERT INTO `cmf_city` VALUES ('274', '530500', '保山市', '530000');
INSERT INTO `cmf_city` VALUES ('275', '530600', '昭通市', '530000');
INSERT INTO `cmf_city` VALUES ('276', '530700', '丽江市', '530000');
INSERT INTO `cmf_city` VALUES ('277', '530800', '思茅市', '530000');
INSERT INTO `cmf_city` VALUES ('278', '530900', '临沧市', '530000');
INSERT INTO `cmf_city` VALUES ('279', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('283', '532900', '大理白族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('286', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `cmf_city` VALUES ('287', '540100', '拉萨市', '540000');
INSERT INTO `cmf_city` VALUES ('288', '542100', '昌都地区', '540000');
INSERT INTO `cmf_city` VALUES ('289', '542200', '山南地区', '540000');
INSERT INTO `cmf_city` VALUES ('290', '542300', '日喀则地区', '540000');
INSERT INTO `cmf_city` VALUES ('291', '542400', '那曲地区', '540000');
INSERT INTO `cmf_city` VALUES ('292', '542500', '阿里地区', '540000');
INSERT INTO `cmf_city` VALUES ('293', '542600', '林芝地区', '540000');
INSERT INTO `cmf_city` VALUES ('294', '610100', '西安市', '610000');
INSERT INTO `cmf_city` VALUES ('295', '610200', '铜川市', '610000');
INSERT INTO `cmf_city` VALUES ('296', '610300', '宝鸡市', '610000');
INSERT INTO `cmf_city` VALUES ('297', '610400', '咸阳市', '610000');
INSERT INTO `cmf_city` VALUES ('298', '610500', '渭南市', '610000');
INSERT INTO `cmf_city` VALUES ('299', '610600', '延安市', '610000');
INSERT INTO `cmf_city` VALUES ('300', '610700', '汉中市', '610000');
INSERT INTO `cmf_city` VALUES ('301', '610800', '榆林市', '610000');
INSERT INTO `cmf_city` VALUES ('302', '610900', '安康市', '610000');
INSERT INTO `cmf_city` VALUES ('303', '611000', '商洛市', '610000');
INSERT INTO `cmf_city` VALUES ('304', '620100', '兰州市', '620000');
INSERT INTO `cmf_city` VALUES ('305', '620200', '嘉峪关市', '620000');
INSERT INTO `cmf_city` VALUES ('306', '620300', '金昌市', '620000');
INSERT INTO `cmf_city` VALUES ('307', '620400', '白银市', '620000');
INSERT INTO `cmf_city` VALUES ('308', '620500', '天水市', '620000');
INSERT INTO `cmf_city` VALUES ('309', '620600', '武威市', '620000');
INSERT INTO `cmf_city` VALUES ('310', '620700', '张掖市', '620000');
INSERT INTO `cmf_city` VALUES ('311', '620800', '平凉市', '620000');
INSERT INTO `cmf_city` VALUES ('312', '620900', '酒泉市', '620000');
INSERT INTO `cmf_city` VALUES ('313', '621000', '庆阳市', '620000');
INSERT INTO `cmf_city` VALUES ('314', '621100', '定西市', '620000');
INSERT INTO `cmf_city` VALUES ('315', '621200', '陇南市', '620000');
INSERT INTO `cmf_city` VALUES ('316', '622900', '临夏回族自治州', '620000');
INSERT INTO `cmf_city` VALUES ('317', '623000', '甘南藏族自治州', '620000');
INSERT INTO `cmf_city` VALUES ('318', '630100', '西宁市', '630000');
INSERT INTO `cmf_city` VALUES ('319', '632100', '海东地区', '630000');
INSERT INTO `cmf_city` VALUES ('320', '632200', '海北藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('321', '632300', '黄南藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('322', '632500', '海南藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('323', '632600', '果洛藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('324', '632700', '玉树藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `cmf_city` VALUES ('326', '640100', '银川市', '640000');
INSERT INTO `cmf_city` VALUES ('327', '640200', '石嘴山市', '640000');
INSERT INTO `cmf_city` VALUES ('328', '640300', '吴忠市', '640000');
INSERT INTO `cmf_city` VALUES ('329', '640400', '固原市', '640000');
INSERT INTO `cmf_city` VALUES ('330', '640500', '中卫市', '640000');
INSERT INTO `cmf_city` VALUES ('331', '650100', '乌鲁木齐市', '650000');
INSERT INTO `cmf_city` VALUES ('332', '650200', '克拉玛依市', '650000');
INSERT INTO `cmf_city` VALUES ('333', '652100', '吐鲁番地区', '650000');
INSERT INTO `cmf_city` VALUES ('334', '652200', '哈密地区', '650000');
INSERT INTO `cmf_city` VALUES ('335', '652300', '昌吉回族自治州', '650000');
INSERT INTO `cmf_city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `cmf_city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `cmf_city` VALUES ('338', '652900', '阿克苏地区', '650000');
INSERT INTO `cmf_city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `cmf_city` VALUES ('340', '653100', '喀什地区', '650000');
INSERT INTO `cmf_city` VALUES ('341', '653200', '和田地区', '650000');
INSERT INTO `cmf_city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `cmf_city` VALUES ('343', '654200', '塔城地区', '650000');
INSERT INTO `cmf_city` VALUES ('344', '654300', '阿勒泰地区', '650000');
INSERT INTO `cmf_city` VALUES ('345', '659000', '省直辖行政单位', '650000');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `like_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `dislike_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '不喜欢数',
  `floor` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '楼层数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES ('30', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES ('31', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES ('32', '2', '1', '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES ('33', '3', '0', '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES ('34', '1', '0', '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES ('35', '1', '1', '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES ('1', '1', 'site_info', '{\"site_name\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of cmf_portal_category_post
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_favorites` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of cmf_portal_post
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of cmf_portal_tag
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of cmf_portal_tag_post
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_provinces
-- ----------------------------
DROP TABLE IF EXISTS `cmf_provinces`;
CREATE TABLE `cmf_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceid` varchar(20) NOT NULL,
  `province` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='省份信息表';

-- ----------------------------
-- Records of cmf_provinces
-- ----------------------------
INSERT INTO `cmf_provinces` VALUES ('1', '110000', '北京市');
INSERT INTO `cmf_provinces` VALUES ('2', '120000', '天津市');
INSERT INTO `cmf_provinces` VALUES ('3', '130000', '河北省');
INSERT INTO `cmf_provinces` VALUES ('4', '140000', '山西省');
INSERT INTO `cmf_provinces` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `cmf_provinces` VALUES ('6', '210000', '辽宁省');
INSERT INTO `cmf_provinces` VALUES ('7', '220000', '吉林省');
INSERT INTO `cmf_provinces` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `cmf_provinces` VALUES ('9', '310000', '上海市');
INSERT INTO `cmf_provinces` VALUES ('10', '320000', '江苏省');
INSERT INTO `cmf_provinces` VALUES ('11', '330000', '浙江省');
INSERT INTO `cmf_provinces` VALUES ('12', '340000', '安徽省');
INSERT INTO `cmf_provinces` VALUES ('13', '350000', '福建省');
INSERT INTO `cmf_provinces` VALUES ('14', '360000', '江西省');
INSERT INTO `cmf_provinces` VALUES ('15', '370000', '山东省');
INSERT INTO `cmf_provinces` VALUES ('16', '410000', '河南省');
INSERT INTO `cmf_provinces` VALUES ('17', '420000', '湖北省');
INSERT INTO `cmf_provinces` VALUES ('18', '430000', '湖南省');
INSERT INTO `cmf_provinces` VALUES ('19', '440000', '广东省');
INSERT INTO `cmf_provinces` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `cmf_provinces` VALUES ('21', '460000', '海南省');
INSERT INTO `cmf_provinces` VALUES ('22', '500000', '重庆市');
INSERT INTO `cmf_provinces` VALUES ('23', '510000', '四川省');
INSERT INTO `cmf_provinces` VALUES ('24', '520000', '贵州省');
INSERT INTO `cmf_provinces` VALUES ('25', '530000', '云南省');
INSERT INTO `cmf_provinces` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `cmf_provinces` VALUES ('27', '610000', '陕西省');
INSERT INTO `cmf_provinces` VALUES ('28', '620000', '甘肃省');
INSERT INTO `cmf_provinces` VALUES ('29', '630000', '青海省');
INSERT INTO `cmf_provinces` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `cmf_provinces` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `cmf_provinces` VALUES ('32', '710000', '台湾省');
INSERT INTO `cmf_provinces` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `cmf_provinces` VALUES ('34', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of cmf_route
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES ('1', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES ('1', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('2', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('3', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('4', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('5', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('6', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('7', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `cmf_theme_file` VALUES ('8', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES ('1', '1', '0', '0', '1531447663', '0', '0', '0.00', '1530501418', '1', 'admin', '###3b0cb953921789a5d42f998e1c9f6a48', 'admin', 'admin@163.com', '', '', '', '127.0.0.1', '', '', null);

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

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Records of cmf_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余额',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改后余额',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户余额变更日志表';

-- ----------------------------
-- Records of cmf_user_balance_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `url` varchar(255) DEFAULT NULL COMMENT '收藏内容的原文地址，JSON格式',
  `description` text COMMENT '收藏内容的描述',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of cmf_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_like`;
CREATE TABLE `cmf_user_like` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容原来的主键id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '内容以前所在表,不带前缀',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '内容的原文地址，不带域名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '内容的标题',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `description` text COMMENT '内容的描述',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户点赞表';

-- ----------------------------
-- Records of cmf_user_like
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of cmf_user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES ('1', '1', '1546053449', '1530501449', '0e7d613bd5be620b94161e88fc5e47d00e7d613bd5be620b94161e88fc5e47d0', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------
