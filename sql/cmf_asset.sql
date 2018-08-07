/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-08-07 18:31:48
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

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
INSERT INTO `cmf_asset` VALUES ('13', '1', '55550', '1532599931', '1', '0', 'e0a6c9e91f68c29e8f99d43d806ba597effd707b1ab2a7288d5c3f00f4a93be1', '2.jpg', 'admin/20180726/752190980860edcf7425c95506b6ad57.jpg', 'e0a6c9e91f68c29e8f99d43d806ba597', '7d10f7a93ad7003c5e870278f810c8e1d1a89b09', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('14', '1', '58958', '1533286918', '1', '0', '524826cbacf535b131630037e3238a2819338d75e548a109fd85e6c5e6362f3f', 'Y1.jpg', 'admin/20180803/5a3e2be27e79987001d629c8ad4992cb.jpg', '524826cbacf535b131630037e3238a28', 'a0d9371e3f2444434833bee9a9101adc4abfcdf3', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('15', '1', '40640', '1533288054', '1', '0', '25ba428ae6e5b6804aff38f20d3b14486e240b6f1bc91806fd7cc574db873109', 'u=2749190246,3857616763&fm=21&gp=0.jpg.gif', 'admin/20180803/e9a9e0daabd189bd759bddadaa0d0dd6.gif', '25ba428ae6e5b6804aff38f20d3b1448', 'fadb216a7b40fa08c09c3370f66188c09f6c3bde', 'gif', null);
INSERT INTO `cmf_asset` VALUES ('16', '1', '55977', '1533288106', '1', '0', '749f7ebf01482f64aee17e242af7590ef190e041ee1c31c36297297a10c260e8', 'Y2.jpg', 'admin/20180803/7305a8a700ce47c71faadad34bdfb8ba.jpg', '749f7ebf01482f64aee17e242af7590e', '33fdb7bc6caa7a1d9f1e564eaf5a75d28bf6a339', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('17', '1', '59664', '1533288135', '1', '0', '2dfd4ca4637ac09d8eee7a4a5d65d710f6dae8c1553d11f91e7f54c6549d84b4', 'Y17.jpg', 'admin/20180803/653268292c34ad2d31911e7b7fa990d0.jpg', '2dfd4ca4637ac09d8eee7a4a5d65d710', 'a5d56ab62dbcbdf34df3bb05f093c766b0dd4d0d', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('18', '1', '45118', '1533288186', '1', '0', '7f6ae5cf8000a4524b70c9c2150255feca37bf258aa1e91b787a7e94d21e3a19', 'Y20.jpg', 'admin/20180803/62afbd965a25b765f4deca4c4ca21eb9.jpg', '7f6ae5cf8000a4524b70c9c2150255fe', 'bfd3039436a7e13652f567b88a7837f17d24f20c', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('19', '1', '76979', '1533288205', '1', '0', '91602d3fd69aabc55b3a51045034a13839095b3198cfeca986d88d776d2c674a', 'Y11.jpg', 'admin/20180803/3544272aa649d831bc9daebdf13dd5a5.jpg', '91602d3fd69aabc55b3a51045034a138', 'a7948091cbe968cd2c002b648ba512edce900319', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('20', '1', '101716', '1533538320', '1', '0', '11a1095b33d27fb397e758946d61aaf6a355ebb9f735cb3c1092cb7ee77177d4', 'gold.jpg', 'admin/20180806/72c7fea68edb0ceb1a960e4d9adba44a.jpg', '11a1095b33d27fb397e758946d61aaf6', 'f125ece993a537e83f580322ed1effb5f009cd41', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('21', '1', '49225', '1533538477', '1', '0', '112883d23dad7d50646595039bc952c11f3b49d378be0be66d73582d16985808', '4.jpg', 'admin/20180806/796845eb2f9db35b7f550e9c28978edd.jpg', '112883d23dad7d50646595039bc952c1', '99439800ce6c4d38df20790aaa18f774c807e612', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('22', '1', '55462', '1533540429', '1', '0', '0f3574b18fb5a39534bb100e438caf7669ffcca7f74e1c9a795b277d998d4a5e', 'Y5.jpg', 'admin/20180806/4dcef8585ca1885d3a4f2597e603af2e.jpg', '0f3574b18fb5a39534bb100e438caf76', 'bb54e902184dd8eb33a76494c487d22e0a690eb4', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('23', '1', '9122', '1533540453', '1', '0', '8aae68ded4aba63374b2150b41b97b50b094f673c8a5f6ba3cb1181f52782b35', 'QQ图片20170807152344.png', 'admin/20180806/79775c72bca91c6354c7b0e54950278c.png', '8aae68ded4aba63374b2150b41b97b50', 'e8478bbc263b0a7b0eef0e2d1788c3da54e2a5c6', 'png', null);
INSERT INTO `cmf_asset` VALUES ('24', '1', '89062', '1533540486', '1', '0', 'eab0e30abbefd85539e486b8dc0b8cbae6a0dfea0a46d3d799a16e8378800e7d', 'Y30.jpg', 'admin/20180806/0e955f7a7bd17ca2ae10ed4e61fe8acc.jpg', 'eab0e30abbefd85539e486b8dc0b8cba', '7e769ae47c989b515e2c801930d0e354dc486f49', 'jpg', null);
INSERT INTO `cmf_asset` VALUES ('25', '1', '36195', '1533540509', '1', '0', '9e3ee823c0fa29192de985209a96cc061fe2dc9f72e2ad5c3a48663c3a192a08', 'Y10.jpg', 'admin/20180806/b1167a65c5b43a1cae45d6f7c31e913a.jpg', '9e3ee823c0fa29192de985209a96cc06', 'ca9495b5f296847bae752e365c3e4d1ea6a89e22', 'jpg', null);
