/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-07-24 18:48:43
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

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
INSERT INTO `cmf_asset` VALUES ('10', '1', '426909', '1531478640', '1', '0', '73e86ecb54c8d087e5917c6ed1752bc90ff64970e87f0a378838f624211b608d', '1.jpg', 'admin/20180713/9224dd39effff6bae2b55b5f17937039.jpg', '73e86ecb54c8d087e5917c6ed1752bc9', '8f2a4389d3238242f0dbecdeb847f0f98b5079dc', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('11', '1', '415234', '1531479015', '1', '0', '15ca102f6c0f3d581d6e5693de1c6404bf7bad514d22ec51491ce069d494450f', '2.jpg', 'admin/20180713/1b721d5852370d9bd1679db14e830a34.jpg', '15ca102f6c0f3d581d6e5693de1c6404', '597bc344d67fdb4837c52b26327f778d3e8b8b7c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('12', '1', '312513', '1531479029', '1', '0', 'c894b8d34ee0a13033aa46648ed247e0fe5023391e033fe561189a8d43ece472', '3.jpg', 'admin/20180713/08c4028fe85c589875398033a7f74148.jpg', 'c894b8d34ee0a13033aa46648ed247e0', 'd2d4bce0a22d360d9d9a118a2f23d3b1d2538fb9', 'jpg', null);
