/*
Navicat MySQL Data Transfer

Source Server         : me
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : yougou

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-08 13:02:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `timer` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data
-- ----------------------------
INSERT INTO `data` VALUES ('1', '张三', '123456', 'aaa', '1', '18819750126', '', '', '2018-10-07 19:05:43');
INSERT INTO `data` VALUES ('2', 'asd', '1234', 'bbb', '2', '18819750126', '123@qq.com', '', '2018-10-07 20:30:08');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sale` decimal(10,2) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `salenum` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN8', '799.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '122', '2018-10-04 15:00:17', '');
INSERT INTO `goods` VALUES ('2', 'Istbelle 冬季专柜同款人造革时尚包X3810DN7', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '540', '2018-09-29 16:45:11', 'true');
INSERT INTO `goods` VALUES ('3', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2667', '499.00', '499.00', '[128,134,140,146,152,158,164,170,176]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '171', '2018-09-30 18:46:31', 'true');
INSERT INTO `goods` VALUES ('4', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3513', '229.00', '135.00', '[128,140,152,164,176]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '322', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('5', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC1(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '278', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('6', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK31（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '913', '2018-09-29 16:45:15', 'true');
INSERT INTO `goods` VALUES ('8', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-657', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '84', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('9', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ8', '899.00', '409.00', '[34,35,36,37,38,39]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '244', '2018-09-29 16:45:16', 'true');
INSERT INTO `goods` VALUES ('10', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM8', '1398.00', '1198.00', '[35,36,37,38,39]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '599', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('11', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM7', '1199.00', '468.00', '[38,39,40,41,42]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '923', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('12', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM8', '1086.00', '428.00', '[39,40,41,42]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '418', '2018-09-29 16:45:17', 'true');
INSERT INTO `goods` VALUES ('13', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN8', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '615', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('14', 'Istbelle 冬季专柜同款人造革时尚包X3810DN7', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '401', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('15', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2667', '499.00', '180.00', '[128,134,140,146,152,158,164,170,177]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '455', '2018-09-29 16:45:18', 'true');
INSERT INTO `goods` VALUES ('16', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3513', '229.00', '100.00', '[128,140,152,164,177]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '605', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('17', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC1(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '820', '2018-09-29 16:45:19', 'true');
INSERT INTO `goods` VALUES ('18', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK31（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '933', '2018-09-29 16:45:26', 'true');
INSERT INTO `goods` VALUES ('19', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2196', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '271', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('20', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-657', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '407', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('21', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ8', '899.00', '500.00', '[34,35,36,37,38,40]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '109', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('22', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM8', '1398.00', '888.00', '[35,36,37,38,40]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '628', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('23', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM7', '1199.00', '444.00', '[38,39,40,41,43]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '476', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('24', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM8', '1086.00', '555.00', '[39,40,41,43]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '647', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('25', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN8', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '283', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('26', 'Istbelle 冬季专柜同款人造革时尚包X3810DN7', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '316', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('27', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2667', '499.00', '444.00', '[128,134,140,146,152,158,164,170,178]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '933', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('28', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3513', '229.00', '111.00', '[128,140,152,164,178]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '923', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('29', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC1(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '388', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('30', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK31（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '187', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('31', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2196', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '28', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('32', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-657', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '745', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('33', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ8', '899.00', '666.00', '[34,35,36,37,38,41]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '939', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('34', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM8', '1398.00', '909.00', '[35,36,37,38,41]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '276', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('35', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM7', '1199.00', '1002.00', '[38,39,40,41,44]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '998', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('36', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM8', '1086.00', '673.00', '[39,40,41,44]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '895', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('37', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN8', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '842', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('40', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3513', '229.00', '135.00', '[128,140,152,164,179]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '163', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('41', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC1(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '955', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('42', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK31（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '109', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('43', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2196', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '450', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('44', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-657', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '455', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('45', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ8', '899.00', '409.00', '[34,35,36,37,38,42]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '330', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('46', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM8', '1398.00', '1198.00', '[35,36,37,38,42]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '651', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('47', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM7', '1199.00', '468.00', '[38,39,40,41,45]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '61', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('48', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM8', '1086.00', '428.00', '[39,40,41,45]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '994', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('49', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN9', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '315', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('50', 'Istbelle 冬季专柜同款人造革时尚包X3810DN8', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '366', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('51', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2668', '499.00', '180.00', '[128,134,140,146,152,158,164,170,180]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '507', '2018-08-22 16:11:31', '');
INSERT INTO `goods` VALUES ('52', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3514', '229.00', '100.00', '[128,140,152,164,180]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '469', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('53', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC2(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '238', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('54', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK32（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '781', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('55', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2197', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '700', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('56', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-658', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '152', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('57', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ9', '899.00', '500.00', '[34,35,36,37,38,43]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '557', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('58', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM9', '1398.00', '888.00', '[35,36,37,38,43]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '898', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('59', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM8', '1199.00', '444.00', '[38,39,40,41,46]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '607', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('60', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM9', '1086.00', '555.00', '[39,40,41,46]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '476', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('61', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN10', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '636', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('62', 'Istbelle 冬季专柜同款人造革时尚包X3810DN9', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '719', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('63', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2669', '499.00', '444.00', '[128,134,140,146,152,158,164,170,181]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '224', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('64', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3515', '229.00', '111.00', '[128,140,152,164,181]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '428', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('65', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC3(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '276', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('66', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK33（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '328', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('67', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2198', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '405', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('68', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-659', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '15', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('69', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ10', '899.00', '666.00', '[34,35,36,37,38,44]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '853', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('70', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM10', '1398.00', '909.00', '[35,36,37,38,44]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '603', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('71', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM9', '1199.00', '1002.00', '[38,39,40,41,47]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '284', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('72', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM10', '1086.00', '673.00', '[39,40,41,47]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '330', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('73', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN11', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '682', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('74', 'Istbelle 冬季专柜同款人造革时尚包X3810DN10', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '432', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('75', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2670', '499.00', '499.00', '[128,134,140,146,152,158,164,170,182]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '402', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('76', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3516', '229.00', '135.00', '[128,140,152,164,182]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '960', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('77', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC4(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '483', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('78', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK34（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '260', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('79', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2199', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '600', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('80', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-660', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '554', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('81', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ11', '899.00', '409.00', '[34,35,36,37,38,45]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '95', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('82', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM11', '1398.00', '1198.00', '[35,36,37,38,45]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '634', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('83', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM10', '1199.00', '468.00', '[38,39,40,41,48]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '822', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('84', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM11', '1086.00', '428.00', '[39,40,41,48]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '299', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('85', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN12', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '965', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('86', 'Istbelle 冬季专柜同款人造革时尚包X3810DN11', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '796', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('87', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2671', '499.00', '180.00', '[128,134,140,146,152,158,164,170,183]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '972', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('88', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3517', '229.00', '100.00', '[128,140,152,164,183]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '566', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('89', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC5(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '343', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('90', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK35（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '900', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('91', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2200', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '637', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('92', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-661', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '400', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('93', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ12', '899.00', '500.00', '[34,35,36,37,38,46]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '265', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('94', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM12', '1398.00', '888.00', '[35,36,37,38,46]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '476', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('95', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM11', '1199.00', '444.00', '[38,39,40,41,49]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '926', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('96', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM12', '1086.00', '555.00', '[39,40,41,49]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '311', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('97', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN13', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '178', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('98', 'Istbelle 冬季专柜同款人造革时尚包X3810DN12', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '740', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('99', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2672', '499.00', '444.00', '[128,134,140,146,152,158,164,170,184]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '435', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('100', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3518', '229.00', '111.00', '[128,140,152,164,184]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '82', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('101', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC6(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '683', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('102', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK36（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '925', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('103', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2201', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '16', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('104', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-662', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '188', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('105', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ13', '899.00', '666.00', '[34,35,36,37,38,47]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '320', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('106', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM13', '1398.00', '909.00', '[35,36,37,38,47]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '766', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('107', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM12', '1199.00', '1002.00', '[38,39,40,41,50]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '370', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('108', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM13', '1086.00', '673.00', '[39,40,41,50]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '943', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('109', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN14', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '627', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('110', 'Istbelle 冬季专柜同款人造革时尚包X3810DN13', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '570', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('111', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2673', '499.00', '499.00', '[128,134,140,146,152,158,164,170,185]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '193', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('112', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3519', '229.00', '135.00', '[128,140,152,164,185]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '481', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('113', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC7(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '330', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('114', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK37（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '590', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('115', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2202', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '689', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('116', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-663', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '621', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('117', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ14', '899.00', '409.00', '[34,35,36,37,38,48]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '368', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('118', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM14', '1398.00', '1198.00', '[35,36,37,38,48]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '598', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('119', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM13', '1199.00', '468.00', '[38,39,40,41,51]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '600', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('120', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM14', '1086.00', '428.00', '[39,40,41,51]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '204', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('121', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN15', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '631', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('122', 'Istbelle 冬季专柜同款人造革时尚包X3810DN14', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '169', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('123', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2674', '499.00', '180.00', '[128,134,140,146,152,158,164,170,186]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '457', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('124', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3520', '229.00', '100.00', '[128,140,152,164,186]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '662', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('125', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC8(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '151', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('126', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK38（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '639', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('127', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2203', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '705', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('128', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-664', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '843', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('129', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ15', '899.00', '500.00', '[34,35,36,37,38,49]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '692', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('130', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM15', '1398.00', '888.00', '[35,36,37,38,49]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '642', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('131', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM14', '1199.00', '444.00', '[38,39,40,41,52]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '872', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('132', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM15', '1086.00', '555.00', '[39,40,41,52]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '44', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('133', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN16', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '579', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('134', 'Istbelle 冬季专柜同款人造革时尚包X3810DN15', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '597', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('135', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2675', '499.00', '444.00', '[128,134,140,146,152,158,164,170,187]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '401', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('136', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3521', '229.00', '111.00', '[128,140,152,164,187]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '854', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('137', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC9(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '664', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('138', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK39（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '635', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('139', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2204', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '190', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('140', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-665', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '56', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('141', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ16', '899.00', '666.00', '[34,35,36,37,38,50]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '55', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('142', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM16', '1398.00', '909.00', '[35,36,37,38,50]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '22', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('143', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM15', '1199.00', '1002.00', '[38,39,40,41,53]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '559', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('144', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM16', '1086.00', '673.00', '[39,40,41,53]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '361', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('145', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN17', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '832', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('146', 'Istbelle 冬季专柜同款人造革时尚包X3810DN16', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '92', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('147', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2676', '499.00', '499.00', '[128,134,140,146,152,158,164,170,188]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '342', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('148', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3522', '229.00', '135.00', '[128,140,152,164,188]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '633', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('149', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC10(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '244', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('150', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK40（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '693', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('151', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2205', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '277', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('152', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-666', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '916', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('153', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ17', '899.00', '409.00', '[34,35,36,37,38,51]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '332', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('154', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM17', '1398.00', '1198.00', '[35,36,37,38,51]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '245', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('155', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM16', '1199.00', '468.00', '[38,39,40,41,54]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '854', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('156', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM17', '1086.00', '428.00', '[39,40,41,54]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '157', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('157', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN18', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '192', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('158', 'Istbelle 冬季专柜同款人造革时尚包X3810DN17', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '249', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('159', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2677', '499.00', '180.00', '[128,134,140,146,152,158,164,170,189]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '205', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('160', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3523', '229.00', '100.00', '[128,140,152,164,189]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '931', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('161', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC11(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '722', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('162', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK41（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '101', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('163', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2206', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '419', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('164', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-667', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '414', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('165', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ18', '899.00', '500.00', '[34,35,36,37,38,52]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '446', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('166', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM18', '1398.00', '888.00', '[35,36,37,38,52]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '909', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('167', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM17', '1199.00', '444.00', '[38,39,40,41,55]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '667', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('168', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM18', '1086.00', '555.00', '[39,40,41,55]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '107', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('169', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN19', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '474', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('170', 'Istbelle 冬季专柜同款人造革时尚包X3810DN18', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '690', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('171', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2678', '499.00', '444.00', '[128,134,140,146,152,158,164,170,190]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '550', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('172', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3524', '229.00', '111.00', '[128,140,152,164,190]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '559', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('173', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC12(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '331', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('174', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK42（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '222', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('175', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2207', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '418', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('176', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-668', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '876', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('177', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ19', '899.00', '666.00', '[34,35,36,37,38,53]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '641', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('178', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM19', '1398.00', '909.00', '[35,36,37,38,53]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '27', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('179', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM18', '1199.00', '1002.00', '[38,39,40,41,56]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '584', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('180', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM19', '1086.00', '673.00', '[39,40,41,56]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '788', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('181', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN20', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '859', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('182', 'Istbelle 冬季专柜同款人造革时尚包X3810DN19', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '442', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('183', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2679', '499.00', '499.00', '[128,134,140,146,152,158,164,170,191]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '458', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('184', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3525', '229.00', '135.00', '[128,140,152,164,191]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '874', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('185', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC13(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '301', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('186', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK43（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '865', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('187', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2208', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '483', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('188', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-669', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '20', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('189', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ20', '899.00', '409.00', '[34,35,36,37,38,54]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '825', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('190', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM20', '1398.00', '1198.00', '[35,36,37,38,54]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '642', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('191', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM19', '1199.00', '468.00', '[38,39,40,41,57]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '509', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('192', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM20', '1086.00', '428.00', '[39,40,41,57]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '600', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('193', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN21', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '892', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('194', 'Istbelle 冬季专柜同款人造革时尚包X3810DN20', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '108', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('195', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2680', '499.00', '180.00', '[128,134,140,146,152,158,164,170,192]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '524', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('196', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3526', '229.00', '100.00', '[128,140,152,164,192]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '353', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('197', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC14(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '227', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('198', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK44（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '738', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('199', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2209', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '328', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('200', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-670', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '257', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('201', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ21', '899.00', '500.00', '[34,35,36,37,38,55]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '126', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('202', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM21', '1398.00', '888.00', '[35,36,37,38,55]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '802', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('203', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM20', '1199.00', '444.00', '[38,39,40,41,58]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '151', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('204', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM21', '1086.00', '555.00', '[39,40,41,58]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '839', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('205', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN22', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '420', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('206', 'Istbelle 冬季专柜同款人造革时尚包X3810DN21', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '761', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('207', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2681', '499.00', '444.00', '[128,134,140,146,152,158,164,170,193]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '686', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('208', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3527', '229.00', '111.00', '[128,140,152,164,193]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '81', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('209', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC15(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '959', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('210', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK45（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '876', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('211', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2210', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '952', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('212', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-671', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '113', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('213', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ22', '899.00', '666.00', '[34,35,36,37,38,56]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '229', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('214', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM22', '1398.00', '909.00', '[35,36,37,38,56]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '230', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('215', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM21', '1199.00', '1002.00', '[38,39,40,41,59]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '753', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('216', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM22', '1086.00', '673.00', '[39,40,41,59]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '622', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('217', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN23', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '295', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('218', 'Istbelle 冬季专柜同款人造革时尚包X3810DN22', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '249', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('219', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2682', '499.00', '499.00', '[128,134,140,146,152,158,164,170,194]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '509', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('220', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3528', '229.00', '135.00', '[128,140,152,164,194]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '368', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('221', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC16(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '465', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('222', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK46（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '651', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('223', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2211', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '303', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('224', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-672', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '380', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('225', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ23', '899.00', '409.00', '[34,35,36,37,38,57]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '90', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('226', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM23', '1398.00', '1198.00', '[35,36,37,38,57]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '22', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('227', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM22', '1199.00', '468.00', '[38,39,40,41,60]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '718', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('228', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM23', '1086.00', '428.00', '[39,40,41,60]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '45', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('229', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN24', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '895', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('230', 'Istbelle 冬季专柜同款人造革时尚包X3810DN23', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '649', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('231', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2683', '499.00', '180.00', '[128,134,140,146,152,158,164,170,195]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '490', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('232', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3529', '229.00', '100.00', '[128,140,152,164,195]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '53', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('233', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC17(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '261', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('234', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK47（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '500', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('235', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2212', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '51', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('236', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-673', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '977', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('237', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ24', '899.00', '500.00', '[34,35,36,37,38,58]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '975', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('238', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM24', '1398.00', '888.00', '[35,36,37,38,58]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '532', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('239', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM23', '1199.00', '444.00', '[38,39,40,41,61]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '377', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('240', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM24', '1086.00', '555.00', '[39,40,41,61]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '80', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('241', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN25', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '454', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('242', 'Istbelle 冬季专柜同款人造革时尚包X3810DN24', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '887', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('243', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2684', '499.00', '444.00', '[128,134,140,146,152,158,164,170,196]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '103', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('244', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3530', '229.00', '111.00', '[128,140,152,164,196]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '371', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('245', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC18(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '562', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('246', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK48（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '987', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('247', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2213', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '677', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('248', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-674', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '62', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('249', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ25', '899.00', '666.00', '[34,35,36,37,38,59]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '53', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('250', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM25', '1398.00', '909.00', '[35,36,37,38,59]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '700', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('251', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM24', '1199.00', '1002.00', '[38,39,40,41,62]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '261', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('252', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM25', '1086.00', '673.00', '[39,40,41,62]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '733', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('253', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN26', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '487', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('254', 'Istbelle 冬季专柜同款人造革时尚包X3810DN25', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '669', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('255', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2685', '499.00', '499.00', '[128,134,140,146,152,158,164,170,197]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '763', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('256', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3531', '229.00', '135.00', '[128,140,152,164,197]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '968', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('257', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC19(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '624', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('258', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK49（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '768', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('259', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2214', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '578', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('260', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-675', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '971', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('261', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ26', '899.00', '409.00', '[34,35,36,37,38,60]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '361', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('262', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM26', '1398.00', '1198.00', '[35,36,37,38,60]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '924', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('263', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM25', '1199.00', '468.00', '[38,39,40,41,63]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '147', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('264', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM26', '1086.00', '428.00', '[39,40,41,63]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '849', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('265', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN27', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '690', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('266', 'Istbelle 冬季专柜同款人造革时尚包X3810DN26', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '898', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('267', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2686', '499.00', '180.00', '[128,134,140,146,152,158,164,170,198]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '300', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('268', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3532', '229.00', '100.00', '[128,140,152,164,198]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '857', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('269', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC20(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '838', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('270', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK50（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '906', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('271', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2215', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '781', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('272', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-676', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '407', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('273', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ27', '899.00', '500.00', '[34,35,36,37,38,61]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '169', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('274', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM27', '1398.00', '888.00', '[35,36,37,38,61]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '239', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('275', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM26', '1199.00', '444.00', '[38,39,40,41,64]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '688', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('276', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM27', '1086.00', '555.00', '[39,40,41,64]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '523', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('277', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN28', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '302', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('278', 'Istbelle 冬季专柜同款人造革时尚包X3810DN27', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '150', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('279', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2687', '499.00', '444.00', '[128,134,140,146,152,158,164,170,199]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '553', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('280', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3533', '229.00', '111.00', '[128,140,152,164,199]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '505', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('281', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC21(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '793', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('282', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK51（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '162', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('283', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2216', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '273', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('284', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-677', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '870', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('285', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ28', '899.00', '666.00', '[34,35,36,37,38,62]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '400', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('286', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM28', '1398.00', '909.00', '[35,36,37,38,62]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '292', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('287', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM27', '1199.00', '1002.00', '[38,39,40,41,65]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '631', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('288', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM28', '1086.00', '673.00', '[39,40,41,65]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '249', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('289', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN29', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '937', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('290', 'Istbelle 冬季专柜同款人造革时尚包X3810DN28', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '293', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('291', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2688', '499.00', '499.00', '[128,134,140,146,152,158,164,170,200]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '912', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('292', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3534', '229.00', '135.00', '[128,140,152,164,200]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '886', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('293', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC22(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '231', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('294', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK52（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '461', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('295', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2217', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '434', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('296', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-678', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '637', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('297', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ29', '899.00', '409.00', '[34,35,36,37,38,63]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '961', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('298', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM29', '1398.00', '1198.00', '[35,36,37,38,63]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '493', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('299', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM28', '1199.00', '468.00', '[38,39,40,41,66]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '323', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('300', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM29', '1086.00', '428.00', '[39,40,41,66]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '82', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('301', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN30', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '984', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('302', 'Istbelle 冬季专柜同款人造革时尚包X3810DN29', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '1000', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('303', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2689', '499.00', '180.00', '[128,134,140,146,152,158,164,170,201]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '814', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('304', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3535', '229.00', '100.00', '[128,140,152,164,201]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '884', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('305', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC23(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '303', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('306', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK53（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '468', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('307', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2218', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '724', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('308', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-679', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '597', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('309', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ30', '899.00', '500.00', '[34,35,36,37,38,64]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '634', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('310', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM30', '1398.00', '888.00', '[35,36,37,38,64]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '948', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('311', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM29', '1199.00', '444.00', '[38,39,40,41,67]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '788', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('312', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM30', '1086.00', '555.00', '[39,40,41,67]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '641', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('313', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN31', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '98', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('314', 'Istbelle 冬季专柜同款人造革时尚包X3810DN30', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '61', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('315', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2690', '499.00', '444.00', '[128,134,140,146,152,158,164,170,202]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '979', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('316', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3536', '229.00', '111.00', '[128,140,152,164,202]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '300', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('317', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC24(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '571', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('318', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK54（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '491', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('319', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2219', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '317', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('320', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-680', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '59', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('321', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ31', '899.00', '666.00', '[34,35,36,37,38,65]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '183', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('322', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM31', '1398.00', '909.00', '[35,36,37,38,65]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '528', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('323', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM30', '1199.00', '1002.00', '[38,39,40,41,68]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '417', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('324', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM31', '1086.00', '673.00', '[39,40,41,68]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '813', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('325', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN32', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '981', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('326', 'Istbelle 冬季专柜同款人造革时尚包X3810DN31', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '101', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('327', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2691', '499.00', '499.00', '[128,134,140,146,152,158,164,170,203]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '958', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('328', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3537', '229.00', '135.00', '[128,140,152,164,203]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '235', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('329', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC25(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '252', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('330', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK55（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '312', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('331', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2220', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '977', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('332', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-681', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '710', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('333', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ32', '899.00', '409.00', '[34,35,36,37,38,66]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '908', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('334', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM32', '1398.00', '1198.00', '[35,36,37,38,66]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '724', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('335', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM31', '1199.00', '468.00', '[38,39,40,41,69]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '598', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('336', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM32', '1086.00', '428.00', '[39,40,41,69]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '436', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('337', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN33', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '222', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('338', 'Istbelle 冬季专柜同款人造革时尚包X3810DN32', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '527', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('339', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2692', '499.00', '180.00', '[128,134,140,146,152,158,164,170,204]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '586', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('340', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3538', '229.00', '100.00', '[128,140,152,164,204]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '274', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('341', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC26(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '421', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('342', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK56（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '768', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('343', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2221', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '210', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('344', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-682', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '629', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('345', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ33', '899.00', '500.00', '[34,35,36,37,38,67]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '831', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('346', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM33', '1398.00', '888.00', '[35,36,37,38,67]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '912', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('347', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM32', '1199.00', '444.00', '[38,39,40,41,70]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '403', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('348', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM33', '1086.00', '555.00', '[39,40,41,70]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '457', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('349', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN34', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '71', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('350', 'Istbelle 冬季专柜同款人造革时尚包X3810DN33', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '259', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('351', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2693', '499.00', '444.00', '[128,134,140,146,152,158,164,170,205]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '393', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('352', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3539', '229.00', '111.00', '[128,140,152,164,205]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '814', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('353', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC27(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '492', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('354', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK57（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '951', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('355', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2222', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '505', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('356', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-683', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '521', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('357', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ34', '899.00', '666.00', '[34,35,36,37,38,68]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '13', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('358', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM34', '1398.00', '909.00', '[35,36,37,38,68]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '309', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('359', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM33', '1199.00', '1002.00', '[38,39,40,41,71]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '604', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('360', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM34', '1086.00', '673.00', '[39,40,41,71]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '205', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('361', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN35', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '353', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('362', 'Istbelle 冬季专柜同款人造革时尚包X3810DN34', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '85', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('363', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2694', '499.00', '499.00', '[128,134,140,146,152,158,164,170,206]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '674', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('364', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3540', '229.00', '135.00', '[128,140,152,164,206]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '460', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('365', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC28(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '194', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('366', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK58（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '670', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('367', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2223', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '228', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('368', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-684', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '833', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('369', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ35', '899.00', '409.00', '[34,35,36,37,38,69]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '986', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('370', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM35', '1398.00', '1198.00', '[35,36,37,38,69]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '231', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('371', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM34', '1199.00', '468.00', '[38,39,40,41,72]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '549', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('372', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM35', '1086.00', '428.00', '[39,40,41,72]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '309', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('373', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN36', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '156', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('374', 'Istbelle 冬季专柜同款人造革时尚包X3810DN35', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '931', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('375', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2695', '499.00', '180.00', '[128,134,140,146,152,158,164,170,207]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '537', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('376', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3541', '229.00', '100.00', '[128,140,152,164,207]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '34', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('377', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC29(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '704', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('378', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK59（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '253', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('379', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2224', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '392', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('380', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-685', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '595', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('381', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ36', '899.00', '500.00', '[34,35,36,37,38,70]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '923', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('382', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM36', '1398.00', '888.00', '[35,36,37,38,70]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '45', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('383', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM35', '1199.00', '444.00', '[38,39,40,41,73]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '275', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('384', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM36', '1086.00', '555.00', '[39,40,41,73]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '915', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('385', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN37', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '825', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('386', 'Istbelle 冬季专柜同款人造革时尚包X3810DN36', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '682', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('387', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2696', '499.00', '444.00', '[128,134,140,146,152,158,164,170,208]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '853', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('388', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3542', '229.00', '111.00', '[128,140,152,164,208]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '724', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('389', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC30(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '924', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('390', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK60（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '302', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('391', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2225', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '216', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('392', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-686', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '459', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('393', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ37', '899.00', '666.00', '[34,35,36,37,38,71]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '113', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('394', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM37', '1398.00', '909.00', '[35,36,37,38,71]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '446', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('395', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM36', '1199.00', '1002.00', '[38,39,40,41,74]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '302', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('396', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM37', '1086.00', '673.00', '[39,40,41,74]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '853', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('397', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN38', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '895', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('398', 'Istbelle 冬季专柜同款人造革时尚包X3810DN37', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '36', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('399', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2697', '499.00', '499.00', '[128,134,140,146,152,158,164,170,209]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '495', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('400', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3543', '229.00', '135.00', '[128,140,152,164,209]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '346', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('401', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC31(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '316', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('402', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK61（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '188', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('403', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2226', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '877', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('404', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-687', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '693', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('405', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ38', '899.00', '409.00', '[34,35,36,37,38,72]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '331', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('406', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM38', '1398.00', '1198.00', '[35,36,37,38,72]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '372', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('407', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM37', '1199.00', '468.00', '[38,39,40,41,75]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '111', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('408', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM38', '1086.00', '428.00', '[39,40,41,75]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '293', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('409', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN39', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '257', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('410', 'Istbelle 冬季专柜同款人造革时尚包X3810DN38', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '912', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('411', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2698', '499.00', '180.00', '[128,134,140,146,152,158,164,170,210]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '367', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('412', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3544', '229.00', '100.00', '[128,140,152,164,210]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '727', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('413', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC32(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '446', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('414', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK62（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '653', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('415', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2227', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '42', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('416', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-688', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '381', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('417', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ39', '899.00', '500.00', '[34,35,36,37,38,73]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '307', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('418', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM39', '1398.00', '888.00', '[35,36,37,38,73]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '271', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('419', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM38', '1199.00', '444.00', '[38,39,40,41,76]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '366', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('420', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM39', '1086.00', '555.00', '[39,40,41,76]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '707', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('421', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN40', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '834', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('422', 'Istbelle 冬季专柜同款人造革时尚包X3810DN39', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '946', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('423', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2699', '499.00', '444.00', '[128,134,140,146,152,158,164,170,211]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '450', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('424', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3545', '229.00', '111.00', '[128,140,152,164,211]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '230', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('425', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC33(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '486', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('426', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK63（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '472', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('427', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2228', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '62', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('428', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-689', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '453', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('429', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ40', '899.00', '666.00', '[34,35,36,37,38,74]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '538', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('430', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM40', '1398.00', '909.00', '[35,36,37,38,74]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '584', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('431', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM39', '1199.00', '1002.00', '[38,39,40,41,77]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '457', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('432', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM40', '1086.00', '673.00', '[39,40,41,77]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '629', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('433', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN41', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '325', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('434', 'Istbelle 冬季专柜同款人造革时尚包X3810DN40', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '471', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('435', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2700', '499.00', '499.00', '[128,134,140,146,152,158,164,170,212]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '543', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('436', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3546', '229.00', '135.00', '[128,140,152,164,212]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '111', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('437', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC34(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '830', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('438', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK64（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '503', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('439', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2229', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '518', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('440', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-690', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '876', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('441', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ41', '899.00', '409.00', '[34,35,36,37,38,75]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '173', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('442', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM41', '1398.00', '1198.00', '[35,36,37,38,75]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '981', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('443', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM40', '1199.00', '468.00', '[38,39,40,41,78]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '642', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('444', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM41', '1086.00', '428.00', '[39,40,41,78]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '78', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('445', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN42', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '947', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('446', 'Istbelle 冬季专柜同款人造革时尚包X3810DN41', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '626', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('447', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2701', '499.00', '180.00', '[128,134,140,146,152,158,164,170,213]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '202', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('448', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3547', '229.00', '100.00', '[128,140,152,164,213]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '427', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('449', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC35(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '684', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('450', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK65（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '292', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('451', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2230', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '213', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('452', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-691', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '185', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('453', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ42', '899.00', '500.00', '[34,35,36,37,38,76]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '802', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('454', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM42', '1398.00', '888.00', '[35,36,37,38,76]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '345', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('455', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM41', '1199.00', '444.00', '[38,39,40,41,79]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '963', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('456', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM42', '1086.00', '555.00', '[39,40,41,79]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '206', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('457', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN43', '799.00', '565.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '686', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('458', 'Istbelle 冬季专柜同款人造革时尚包X3810DN42', '799.00', '777.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '772', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('459', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2702', '499.00', '444.00', '[128,134,140,146,152,158,164,170,214]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '797', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('460', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3548', '229.00', '111.00', '[128,140,152,164,214]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '592', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('461', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC36(延续款)', '1998.00', '1333.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '146', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('462', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK66（延续款）', '693.00', '535.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '522', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('463', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2231', '299.00', '255.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '955', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('464', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-692', '449.00', '333.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '673', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('465', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ43', '899.00', '666.00', '[34,35,36,37,38,77]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '861', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('466', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM43', '1398.00', '909.00', '[35,36,37,38,77]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '724', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('467', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM42', '1199.00', '1002.00', '[38,39,40,41,80]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '746', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('468', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM43', '1086.00', '673.00', '[39,40,41,80]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '636', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('469', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN44', '799.00', '398.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '612', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('470', 'Istbelle 冬季专柜同款人造革时尚包X3810DN43', '799.00', '799.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '796', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('471', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2703', '499.00', '499.00', '[128,134,140,146,152,158,164,170,215]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '964', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('472', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3549', '229.00', '135.00', '[128,140,152,164,215]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '224', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('473', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC37(延续款)', '1998.00', '1129.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '357', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('474', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK67（延续款）', '693.00', '463.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '494', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('475', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2232', '299.00', '178.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '694', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('476', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-693', '449.00', '289.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '999', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('477', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ44', '899.00', '409.00', '[34,35,36,37,38,78]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '509', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('478', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM44', '1398.00', '1198.00', '[35,36,37,38,78]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '723', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('479', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM43', '1199.00', '468.00', '[38,39,40,41,81]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '345', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('480', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM44', '1086.00', '428.00', '[39,40,41,81]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '219', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('481', 'Ist belle2018秋专柜新款黑色亮片布配人造革流苏链条小包X4171CN45', '700.00', '300.00', '[F]', '{黑色:\"../img/bao1.jpg\",粉色:\"../img/bao11.jpg\"}', '1', '包', '../img/bao1.jpg', '79', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('482', 'Istbelle 冬季专柜同款人造革时尚包X3810DN44', '799.00', '600.00', '[F]', '{红色:\"../img/bao2.jpg\",黑色:\"../img/bao21.jpg\"}', '1', '包', '../img/bao2.jpg', '234', '2018-09-28 21:05:51', '');
INSERT INTO `goods` VALUES ('483', 'adidas Originals阿迪三叶草2018男大童J TRF HOODIE连帽卫衣DH2704', '499.00', '180.00', '[128,134,140,146,152,158,164,170,216]', '{白色:\"../img/kids1.jpg\",黑色:\"../img/kids11.jpg\"}', '1', 'kids', '../img/kids1.jpg', '269', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('484', 'adidas阿迪达斯2018男大童YB SS G TEE短袖T恤CX3550', '229.00', '100.00', '[128,140,152,164,216]', '{白色:\"../img/kids2.jpg\"}', '1', 'kids', '../img/kids2.jpg', '707', '2018-08-24 14:45:44', '');
INSERT INTO `goods` VALUES ('485', 'The North Face乐斯菲斯 专柜同款春男子冲锋衣 NF0A2UC9HDC38(延续款)', '1998.00', '999.00', '[S,M,L,XL,XXL]', '{黑色:\"../img/out1.jpg\",红色:\"../img/out11.jpg\",蓝色:\"../img/out12.jpg\"}', '1', '户外', '../img/out1.jpg', '204', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('486', 'The North Face乐斯菲斯 专柜同款男子休闲裤 NF00CNK9JK68（延续款）', '693.00', '457.00', '[L]', '{黑色:\"../img/out2.jpg\"}', '1', '户外', '../img/out2.jpg', '501', '2018-09-28 21:05:58', '');
INSERT INTO `goods` VALUES ('487', ' adidas阿迪达斯2018男子SN 37C TANK M背心CG2233', '299.00', '130.00', '[S,L,XXL]', '{白色:\"../img/spt1.jpg\"}', '1', '运动', '../img/spt1.jpg', '385', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('488', 'NIKE耐克2018年新款男子AS M NSW HOODIE PO FT JDI卫衣/套头衫AJ3315-694', '449.00', '250.00', '[M,L,XL,XXL]', '{黑色:\"../img/spt2.jpg\",红色:\"../img/spt21.jpg\"}', '1', '运动', '../img/spt2.jpg', '318', '2018-09-28 21:06:09', '');
INSERT INTO `goods` VALUES ('489', ' Teenmix/天美意2018春专柜同款酒红色漆皮蝴蝶结乐福鞋女单鞋CB702AQ45', '899.00', '500.00', '[34,35,36,37,38,79]', '{黑色:\"../img/nvx1.jpg\",酒红色:\"../img/nvx11.jpg\"}', '1', '女鞋', '../img/nvx1.jpg', '863', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('490', '暇步士2018秋季新款专柜同款灰色羊绒皮革/牛皮革绒面女休闲鞋乐福鞋HNX24CM45', '1398.00', '888.00', '[35,36,37,38,79]', '{灰色:\"../img/nvx2.jpg\",黑色:\"../img/nvx21.jpg\"}', '1', '女鞋', '../img/nvx2.jpg', '747', '2018-09-28 21:06:14', '');
INSERT INTO `goods` VALUES ('491', 'Belle/百丽春专柜同款黑色时尚正装牛皮男皮鞋4TU11AM44', '1199.00', '444.00', '[38,39,40,41,82]', '{黑色:\"../img/nanx1.jpg\"}', '1', '男鞋', '../img/nanx1.jpg', '107', '2018-09-28 21:06:04', '');
INSERT INTO `goods` VALUES ('492', 'Belle/百丽2018夏新品黑色摔纹小牛皮男休闲乐福鞋B9J15BM45', '1086.00', '555.00', '[39,40,41,82]', '{黑色:\"../img/nanx2.jpg\"}', '1', '男鞋', '../img/nanx2.jpg', '23', '2018-09-28 21:06:04', '');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '包', '2018-09-28 21:05:51');
INSERT INTO `type` VALUES ('2', 'kids', '2018-09-28 20:46:44');
INSERT INTO `type` VALUES ('3', '户外', '2018-09-28 21:05:58');
INSERT INTO `type` VALUES ('4', '运动', '2018-09-28 21:06:09');
INSERT INTO `type` VALUES ('5', '女鞋', '2018-09-28 21:06:14');
INSERT INTO `type` VALUES ('6', '男鞋', '2018-09-28 21:06:04');

-- ----------------------------
-- Table structure for username
-- ----------------------------
DROP TABLE IF EXISTS `username`;
CREATE TABLE `username` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of username
-- ----------------------------
INSERT INTO `username` VALUES ('1', '15570064784', '123456', '2018-08-21 11:48:40');
INSERT INTO `username` VALUES ('6', '13313313113', '123456', '2018-08-21 14:12:55');
INSERT INTO `username` VALUES ('5', '15570064780', '123456', '2018-08-21 14:11:57');
INSERT INTO `username` VALUES ('7', '16324234433', '123456', '2018-08-21 14:15:26');
INSERT INTO `username` VALUES ('9', '14688888888', '123456', '2018-08-22 15:23:48');
SET FOREIGN_KEY_CHECKS=1;
