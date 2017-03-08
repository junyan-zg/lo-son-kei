/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : losonkei

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-03-09 02:22:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('073cd076cb0d42b6a7476b27a1e02758', '生产订单', 'curd', 'com.zjy.losonkei.modules', 'product', '', '生产订单', '生产订单', 'zjy', 'c7a69b94ce6344658de84973dbb1964a', '1', '2016-11-21 23:05:11', '1', '2016-11-21 23:05:26', '', '0');
INSERT INTO `gen_scheme` VALUES ('0b6f6f0fe86f43a6b2281fd3011d740c', '会员资金流动表', 'curd', 'com.zjy.losonkei.modules', 'member', '', '会员资金流动表', '会员资金流动', 'zjy', 'ce7425386dcc46938c007a1bd45e1ba5', '1', '2017-02-08 22:13:19', '1', '2017-02-08 22:13:19', '', '0');
INSERT INTO `gen_scheme` VALUES ('18b82fa30514487380814c03e0ffeabd', '会员表', 'curd', 'com.zjy.losonkei.modules', 'member', '', '会员', '会员', 'zjy', 'a50f6b41e4ba41638beb800cef1cd0b8', '1', '2016-12-29 21:47:37', '1', '2016-12-29 21:47:37', '', '0');
INSERT INTO `gen_scheme` VALUES ('1b0d56c3b8614ac3a397bebe08e3f0ce', '商品规格表', 'curd', 'com.zjy.losonkei.modules', 'goods', '', '商品规格', '商品规格', 'zjy', 'cb937f6e792a432db6efa3bfd75cf162', '1', '2016-10-03 16:07:19', '1', '2016-10-03 16:07:19', '', '0');
INSERT INTO `gen_scheme` VALUES ('2bb192a16091431497c6b48d53fd8dbc', '生产订单详情表', 'dao', 'com.zjy.losonkei.modules', 'product', '', '生产订单详情', '生产订单详情', 'zjy', 'fba17b0288734b82a02264e977aeb26d', '1', '2016-11-23 21:15:38', '1', '2016-11-23 21:15:38', '', '0');
INSERT INTO `gen_scheme` VALUES ('41ca3c16cca94dc0a748f230dc7dfd73', '商品属性值表', 'curd_many', 'com.zjy.losonkei.modules', 'goods', '', '商品属性值表', '商品属性值', 'zjy', '741696b7c2114d4b8973134f672d48d0', '1', '2016-10-03 16:00:22', '1', '2016-10-03 16:00:22', '', '0');
INSERT INTO `gen_scheme` VALUES ('49004124b6b947e48f9acdadd34ec68f', '所有商品表', 'curd', 'com.zjy.losonkei.modules', 'goods', '', '所有商品', '所有商品表', 'zjy', '12aadc7881fe497c9f986caecd35febd', '1', '2016-10-09 20:15:15', '1', '2016-10-09 20:15:15', '', '0');
INSERT INTO `gen_scheme` VALUES ('49a2bfb66c3547db9d9ff36f841a29fc', '商品表', 'curd_many', 'com.zjy.losonkei.modules', 'goods', '', '商品', '商品', 'zjy', '9a5bdb1d32714a9190061bc82fa8a05e', '1', '2016-09-29 21:39:08', '1', '2016-10-03 12:42:17', '', '0');
INSERT INTO `gen_scheme` VALUES ('53e80d97dd7a43d4ba39773337353a5c', '商品属性表', 'curd', 'com.zjy.losonkei.modules', 'goods', '', '商品属性', '商品属性', 'zjy', '741696b7c2114d4b8973134f672d48d0', '1', '2016-09-29 20:03:51', '1', '2016-09-29 20:05:26', '', '0');
INSERT INTO `gen_scheme` VALUES ('595973a9053648c6b8d8ae2c601396a0', '商品文章表', 'curd', 'com.zjy.losonkei.modules', 'goods', '', '商品文章', '商品文章', 'zjy', 'eef5b211d04a40a9b3f513f2c4fea409', '1', '2017-03-05 00:40:07', '1', '2017-03-05 00:40:07', '', '0');
INSERT INTO `gen_scheme` VALUES ('5a9c316a92df46ee91b266dafe075cef', '商品分类表', 'treeTable', 'com.zjy.losonkei.modules', 'goods', '', '商品分类', '商品分类', 'zjy', '9a5bdb1d32714a9190061bc82fa8a05e', '1', '2016-09-28 20:19:36', '1', '2016-09-28 21:12:26', '', '0');
INSERT INTO `gen_scheme` VALUES ('6f46e203eda44537b5fe4b5b9ac41b3a', '订单表', 'curd_many', 'com.zjy.losonkei.modules', 'orders', '', '订单', '订单', 'zjy', 'b0c68ad41a1344ffb8650cd39578ff79', '1', '2017-02-11 01:02:50', '1', '2017-02-11 01:02:50', '', '0');
INSERT INTO `gen_scheme` VALUES ('75b4d0b14f044ca3aafa25757142e3fe', '国家地区表', 'dao', 'com.zjy.losonkei.modules', 'sys', '', '国家地区', '国家地区表', 'zjy', 'a69d969eb8524cbb809bb5ed980b10d4', '1', '2017-01-01 20:01:42', '1', '2017-01-01 20:01:42', '', '0');
INSERT INTO `gen_scheme` VALUES ('7b67fdae18034ad1947e3f44cc96b4a8', '会员收货地址表', 'service', 'com.zjy.losonkei.modules', 'member', '', '会员收货地址', '会员收货地址', 'zjy', 'd4f6aaa510e4432a81c4726c116cd67a', '1', '2017-01-01 20:39:07', '1', '2017-01-01 20:39:07', '', '0');
INSERT INTO `gen_scheme` VALUES ('8be2dec693144b05948128fa3201dd5d', '生产日志表', 'curd', 'com.zjy.losonkei.modules', 'product', '', '生产日志表', '生产日志', 'zjy', '702d9426b6464af78aa78d980dab37b5', '1', '2016-12-07 20:25:39', '1', '2016-12-07 20:25:39', '', '0');
INSERT INTO `gen_scheme` VALUES ('a3211dbdd8ad4c7ab4067ed7fd83f6b1', '会员详细信息表', 'dao', 'com.zjy.losonkei.modules', 'member', '', '会员详细', '会员', 'zjy', 'ff7056d6c260421b9b7e16d435039374', '1', '2017-01-01 19:09:35', '1', '2017-01-01 19:09:35', '', '0');
INSERT INTO `gen_scheme` VALUES ('b1934d61f6954978a194257dd5170e49', '搜索记录表', 'service', 'com.zjy.losonkei.modules', 'goods', '', '搜索记录', '搜索记录', 'zjy', 'be253de9f2be48138abe7b94f99ff7ee', '1', '2017-03-02 23:58:57', '1', '2017-03-02 23:58:57', '', '0');
INSERT INTO `gen_scheme` VALUES ('b21f25afc30b4d2e9db1be85af44504c', '购物车', 'service', 'com.zjy.losonkei.modules', 'orders', '', '购物车', '购物车', 'zjy', '804a765a1e4d4112bf53d1385a338597', '1', '2017-02-09 23:18:32', '1', '2017-02-09 23:21:28', '', '0');
INSERT INTO `gen_scheme` VALUES ('cfc9d702794f4badbdb326fc9ec00436', '商品规格值表(参与购买)', 'curd_many', 'com.zjy.losonkei.modules', 'goods', '', '商品规格值表(参与购买)', '商品规格值', 'zjy', 'cb937f6e792a432db6efa3bfd75cf162', '1', '2016-10-03 16:10:25', '1', '2016-10-03 16:10:25', '', '0');
INSERT INTO `gen_scheme` VALUES ('f8dd519e05ff4d84821fe81e2fd1752a', '会员消息表', 'service', 'com.zjy.losonkei.modules', 'member', '', '会员消息', '会员消息', 'zjy', '29d2beafae674ca89367fac2b8ecaa0a', '1', '2017-02-18 14:08:36', '1', '2017-02-18 14:08:36', '', '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('12aadc7881fe497c9f986caecd35febd', 'goods_all', '所有商品表', 'GoodsAll', '', '', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', '', '0');
INSERT INTO `gen_table` VALUES ('22f6e7add1b343e1ad1fa2cf7d2c389e', 'goods_attr_value', '商品属性值表', 'GoodsAttrValue', 'goods_attr', 'attr_id', '1', '2016-10-03 15:59:08', '1', '2016-10-04 01:01:28', '', '0');
INSERT INTO `gen_table` VALUES ('23aee2de3b284ca9a2c2f38afdd103a3', 'goods', '商品表', 'Goods', 'goods_category', 'goods_category_id', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', '', '0');
INSERT INTO `gen_table` VALUES ('29d2beafae674ca89367fac2b8ecaa0a', 'member_note', '会员消息', 'MemberNote', '', '', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', '', '0');
INSERT INTO `gen_table` VALUES ('66eb520f22c44585b8b576df1aec23ed', 'orders_details', '订单详情表', 'OrdersDetails', 'orders', 'orders_id', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', '', '0');
INSERT INTO `gen_table` VALUES ('702d9426b6464af78aa78d980dab37b5', 'product_log', '生产日志表', 'ProductLog', '', '', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', '', '0');
INSERT INTO `gen_table` VALUES ('741696b7c2114d4b8973134f672d48d0', 'goods_attr', '商品属性表', 'GoodsAttr', '', '', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', '', '0');
INSERT INTO `gen_table` VALUES ('804a765a1e4d4112bf53d1385a338597', 'shopping_cart', '购物车表', 'ShoppingCart', '', '', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', '', '0');
INSERT INTO `gen_table` VALUES ('94152e7bc2c6421984f83fd46958bcd5', 'goods_specification_value', '商品规格值表(参与购买)', 'GoodsSpecificationValue', 'goods_specification', 'specification_id', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', '', '0');
INSERT INTO `gen_table` VALUES ('9a5bdb1d32714a9190061bc82fa8a05e', 'goods_category', '商品分类表', 'GoodsCategory', '', '', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', '', '0');
INSERT INTO `gen_table` VALUES ('a50f6b41e4ba41638beb800cef1cd0b8', 'member', '会员表', 'Member', '', '', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', '', '0');
INSERT INTO `gen_table` VALUES ('a69d969eb8524cbb809bb5ed980b10d4', 'sys_dict_area', '国家地区表', 'CountryArea', '', '', '1', '2017-01-01 19:55:09', '1', '2017-01-01 20:00:22', '', '0');
INSERT INTO `gen_table` VALUES ('b0c68ad41a1344ffb8650cd39578ff79', 'orders', '订单表', 'Orders', '', '', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', '', '0');
INSERT INTO `gen_table` VALUES ('be253de9f2be48138abe7b94f99ff7ee', 'search_record', '商品搜索记录', 'SearchRecord', '', '', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', '', '0');
INSERT INTO `gen_table` VALUES ('c7a69b94ce6344658de84973dbb1964a', 'product_order', '生产订单表', 'ProductOrder', '', '', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', '', '0');
INSERT INTO `gen_table` VALUES ('cb937f6e792a432db6efa3bfd75cf162', 'goods_specification', '商品规格表', 'GoodsSpecification', '', '', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:40', '', '0');
INSERT INTO `gen_table` VALUES ('ce7425386dcc46938c007a1bd45e1ba5', 'member_account', '会员资金流动表', 'MemberAccount', '', '', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', '', '0');
INSERT INTO `gen_table` VALUES ('d4f6aaa510e4432a81c4726c116cd67a', 'member_address', '会员收货地址表', 'MemberAddress', '', '', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', '', '0');
INSERT INTO `gen_table` VALUES ('eef5b211d04a40a9b3f513f2c4fea409', 'goods_article', '商品文章表', 'GoodsArticle', '', '', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', '', '0');
INSERT INTO `gen_table` VALUES ('fba17b0288734b82a02264e977aeb26d', 'product_order_details', '生产订单详情表', 'ProductOrderDetails', '', '', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', '', '0');
INSERT INTO `gen_table` VALUES ('ff7056d6c260421b9b7e16d435039374', 'member_details', '会员详细信息表', 'MemberDetails', '', '', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', '', '0');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('00f0fce5770d4fb1a46aa4fabcac32b7', 'eef5b211d04a40a9b3f513f2c4fea409', 'content', 'content', 'text', 'String', 'content', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '30', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('0146324dc93e40db90d7eef36ddb12dc', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_account', '会员账号', 'varchar(64)', 'String', 'memberAccount', '0', '0', '1', '0', '1', '1', '=', 'input', '', null, '20', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('01db71a8e6f2439d8ce09a8de851cb3d', '804a765a1e4d4112bf53d1385a338597', 'member_id', '会员id', 'varchar(64)', 'String', 'memberId', '0', '0', '1', '1', '0', '1', '=', 'input', '', null, '20', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('02f80af82ba44577b9631a70987f7a94', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_name', '会员名称', 'varchar(64)', 'String', 'memberName', '0', '0', '1', '1', '1', '1', 'like', 'input', '', null, '30', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('0308567fe43b411596872345ed212370', '66eb520f22c44585b8b576df1aec23ed', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '120', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('03e0dd4572b44799976e30b199195094', 'fba17b0288734b82a02264e977aeb26d', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '60', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('04c98d5c06ee4cfeb4b77b23d8e4e7bb', '9a5bdb1d32714a9190061bc82fa8a05e', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '100', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('0576ddbabec244d182e19ed118546184', '94152e7bc2c6421984f83fd46958bcd5', 'specification_value', '规格值', 'varchar(64)', 'String', 'specificationValue', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '30', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('059a5b21d27d4bf59d8ac4dd0eced20e', '29d2beafae674ca89367fac2b8ecaa0a', 'orders_id', '订单id，有时填写', 'varchar(64)', 'String', 'ordersId', '0', '1', '1', '0', '0', '1', '=', 'input', '', null, '40', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('07040c039d664844b48f3ff3f4931f85', 'eef5b211d04a40a9b3f513f2c4fea409', 'goods_id', '商品id', 'varchar(64)', 'String', 'goodsId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '20', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('0758a95e2998427a9ef9214163b07606', '9a5bdb1d32714a9190061bc82fa8a05e', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '80', '1', '2016-10-04 01:01:31', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('07c5dcd936384795b5d0acb1dbbfcab4', 'cb937f6e792a432db6efa3bfd75cf162', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '90', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('08931bcfeda34a80a27fb3043e0c24a2', '804a765a1e4d4112bf53d1385a338597', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '60', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('0a4d4409ace14588a3dd7c8900cad9c9', '66eb520f22c44585b8b576df1aec23ed', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '130', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('0aa22b7a5e1949e98a4c17b44a5cecbb', 'b0c68ad41a1344ffb8650cd39578ff79', 'refund', '退款', 'decimal(10,2)', 'Double', 'refund', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '220', '1', '2017-02-11 00:38:24', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('0b01552663ba4f47a71dcb55e4f11597', 'c7a69b94ce6344658de84973dbb1964a', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '140', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('0bc9ab624b9e4e73b3da4534b6859ae6', 'b0c68ad41a1344ffb8650cd39578ff79', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '170', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('0d4ced100c0b43929dcc56f02481b8a9', '9a5bdb1d32714a9190061bc82fa8a05e', 'parent_ids', '商品分类id所有上级', 'varchar(2000)', 'String', 'parentIds', '0', '1', '1', '1', '1', '0', 'like', 'input', '', null, '40', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('0e5e4a10ddfb41cca5dfbab98f8656e2', '23aee2de3b284ca9a2c2f38afdd103a3', 'goods_name', '商品名称', 'varchar(128)', 'String', 'goodsName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '20', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('0e62c51def4b40608953c41f1b4e839e', 'ff7056d6c260421b9b7e16d435039374', 'member_email', '邮箱', 'varchar(100)', 'String', 'memberEmail', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('0efe6e7104f746a18a754c8540ed0b4e', 'be253de9f2be48138abe7b94f99ff7ee', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('0f482180ab88463586096eb657e56bce', '741696b7c2114d4b8973134f672d48d0', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '60', '1', '2016-10-04 01:01:16', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('10cc1847644b46e193691d80ae462524', 'c7a69b94ce6344658de84973dbb1964a', 'process_state', '当前流程状态', 'varchar(32)', 'String', 'processState', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '60', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('12a627d0fd4f43cfbbdc85cd64b69563', '23aee2de3b284ca9a2c2f38afdd103a3', 'keywords', '关键词', 'varchar(50)', 'String', 'keywords', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '60', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('1331d96d7f6c4a168ea2e0cfd6c30385', '66eb520f22c44585b8b576df1aec23ed', 'price', '单个售价，直接等于商品售价', 'decimal(10,2)', 'Double', 'price', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('141f0d8a94584f70aacaeaba8f31de77', 'ce7425386dcc46938c007a1bd45e1ba5', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '1', '0', '=', 'dateselect', '', null, '80', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('146095bfa92b450faa8a0e28f9192e59', 'fba17b0288734b82a02264e977aeb26d', 'success_amount', '状态0待生产1进行中2成功3失败', 'int(11)', 'Integer', 'successAmount', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2016-12-04 00:18:45', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('151f623845bd453a88706d213fb80a4d', '12aadc7881fe497c9f986caecd35febd', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('1589757afb6d406b949b3ad83caa8cd6', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('162197faed7e48aaafeebca1351713b0', 'c7a69b94ce6344658de84973dbb1964a', 'order_name', '生产订单名称', 'varchar(128)', 'String', 'orderName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '20', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('166db0bbc7ae416ea69df6929ed6e101', 'ff7056d6c260421b9b7e16d435039374', 'member_mobile', '移动电话', 'varchar(20)', 'String', 'memberMobile', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('16b126d2bd29418ca2429b9bc13c3219', '12aadc7881fe497c9f986caecd35febd', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '130', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('1716fec85b534e83b028a35b1a919ada', 'cb937f6e792a432db6efa3bfd75cf162', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '50', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('173f083a8d7244cc9fa10b659bf18c8e', '702d9426b6464af78aa78d980dab37b5', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('17d822e93074446a98e84cde153ea15c', 'b0c68ad41a1344ffb8650cd39578ff79', 'address', '地址', 'varchar(64)', 'String', 'address', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('182403e6bf28402a84c26f7344dcf22b', 'be253de9f2be48138abe7b94f99ff7ee', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '90', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('1a201127eb1b409186e7006490a58fbb', 'b0c68ad41a1344ffb8650cd39578ff79', 'area_id', '所在地区id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'area.id', '0', '1', '1', '1', '0', '1', '=', 'areaselect', '', null, '80', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('1d7fa0b26d0a4feb9cb4a51b90366412', 'be253de9f2be48138abe7b94f99ff7ee', 'search_time', '搜索日期', 'date', 'java.util.Date', 'searchTime', '0', '1', '1', '1', '0', '1', 'between', 'dateselect', '', null, '20', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('1dbcb60c27554e79b524e7f9746405e7', '23aee2de3b284ca9a2c2f38afdd103a3', 'img_url', '由ckfinder生成', 'text', 'String', 'imgUrl', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '120', '1', '2016-12-31 23:43:40', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('1dd12b686f82428a9cabcb45d5b2a9f3', 'cb937f6e792a432db6efa3bfd75cf162', 'specification_name', '规格名称', 'varchar(32)', 'String', 'specificationName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '20', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('1e0ef00393304a17ae0f016d3a9a1f5e', '702d9426b6464af78aa78d980dab37b5', 'id', '生产日志id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('208878712eee4c0abf8d45dd4a92d021', 'fba17b0288734b82a02264e977aeb26d', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '70', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('236344da916341f6b8ade456b0492eb9', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_state', '启用状态', 'tinyint(4)', 'String', 'memberState', '0', '0', '1', '1', '1', '1', '=', 'select', 'member_state', null, '100', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('23dab619148d4f588b4d21fef53defa6', '702d9426b6464af78aa78d980dab37b5', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '90', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('24780934a4f2429da681b5c5dc911c04', 'b0c68ad41a1344ffb8650cd39578ff79', 'order_state', '1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单，与order_action同步更新', 'char(1)', 'String', 'orderState', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '120', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:43:46', null, '1');
INSERT INTO `gen_table_column` VALUES ('252886b322a646d0b7b19087ee219e09', '23aee2de3b284ca9a2c2f38afdd103a3', 'state', '状态', 'char(1)', 'String', 'state', '0', '1', '1', '1', '1', '1', '=', 'select', 'goods_state', null, '110', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('255eea6742ae42c0aaac697719c029d7', '66eb520f22c44585b8b576df1aec23ed', 'cost', '单个成本', 'decimal(10,2)', 'Double', 'cost', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('2832d293de7f4cf18327df0ba8658be4', 'd4f6aaa510e4432a81c4726c116cd67a', 'area_id', '所在地区id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'area.id', '0', '1', '1', '1', '0', '0', '=', 'areaselect', '', null, '20', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('28ee36f0d8bc459c95f60b8dfaabd5f4', 'fba17b0288734b82a02264e977aeb26d', 'product_amount', '生产数量', 'int(11)', 'String', 'productAmount', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('29742556d215457a90f85dcc7723cbd6', 'a50f6b41e4ba41638beb800cef1cd0b8', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '150', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('2bc32de919a3453d8bc432eb18d109f0', 'ce7425386dcc46938c007a1bd45e1ba5', 'member_id', '会员id', 'varchar(64)', 'String', 'memberId', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '20', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('2c25d13e2f044067b410f7073f776bc5', '12aadc7881fe497c9f986caecd35febd', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '120', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('2c4b5c101a8e42068cb9485b165c0ba9', 'be253de9f2be48138abe7b94f99ff7ee', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('2ca7d7fbe09445a5b78b15aa1adf62b6', '12aadc7881fe497c9f986caecd35febd', 'cost_price', '成本价', 'decimal(10,2)', 'Double', 'costPrice', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('2cd09cc4eed94c24bca152ec1d7fe2e0', 'ce7425386dcc46938c007a1bd45e1ba5', 'id', 'id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('2e96aa94970b4163b9c519a129730590', 'd4f6aaa510e4432a81c4726c116cd67a', 'address', '地址', 'varchar(128)', 'String', 'address', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('304a0452d4b54d949b65b44bba0ab7cf', '9a5bdb1d32714a9190061bc82fa8a05e', 'category_name', '分类名称', 'varchar(32)', 'String', 'categoryName', '0', '0', '1', '1', '1', '0', 'like', 'input', '', null, '20', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('30cf2cb281624a818ba1eb7b00c33b55', 'be253de9f2be48138abe7b94f99ff7ee', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '50', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('33f50dadcd0b48f193022479bc736dd2', '94152e7bc2c6421984f83fd46958bcd5', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '120', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('348bb985dd4c473682430ec54e5d2196', 'c7a69b94ce6344658de84973dbb1964a', 'cost_all', '实际花费：根据product_log更新', 'decimal(10,2)', 'Double', 'costAll', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '80', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('350363297a1346dcb7899112ea331877', '741696b7c2114d4b8973134f672d48d0', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '80', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('35aeac7203064fbe89e43b60e7ecf79e', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_balance', '会员余额', 'decimal(10,2)', 'String', 'memberBalance', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '120', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('3712ecd05ba14adea80986803db8a064', 'b0c68ad41a1344ffb8650cd39578ff79', 'pay_state', '1未付款，2已付款，3已退款，与order_action同步更新', 'char(1)', 'String', 'payState', '0', '1', '1', '1', '1', '1', '=', 'select', 'pay_state', null, '140', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('3720900870b44a6a987a8f88afec95fd', 'c7a69b94ce6344658de84973dbb1964a', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '160', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('37e26889b64f4a1998f0e71042bcf4cc', '23aee2de3b284ca9a2c2f38afdd103a3', 'price', '现价', 'decimal(10,2)', 'String', 'price', '0', '1', '1', '1', '1', '1', 'between', 'input', '', null, '90', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('395fbf4bd9974717a3870588cd1cd549', 'b0c68ad41a1344ffb8650cd39578ff79', 'process_instance_id', '流程实例id', 'varchar(64)', 'String', 'processInstanceId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '40', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('3a37e18f9ba7491da63b429f3087a7a1', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'goods_id', '商品id', 'varchar(64)', 'String', 'goodsId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '20', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('3ac49b2645024e2c8aaa62a9e30ce50d', '702d9426b6464af78aa78d980dab37b5', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('3bf7d6eda527463d8118ae321664e710', '702d9426b6464af78aa78d980dab37b5', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('3dab75eb463e43a1876ae9921c77a473', 'ff7056d6c260421b9b7e16d435039374', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '70', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('3dfc2cee4b184f77a9d9cdc4f9e2722e', 'ce7425386dcc46938c007a1bd45e1ba5', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '100', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('3f024c48c05942398e6aa86a9940e36a', '23aee2de3b284ca9a2c2f38afdd103a3', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '130', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('3f6c55e11cd343d0bd232f24c6ec14e5', 'cb937f6e792a432db6efa3bfd75cf162', 'required', '0非必须1必须', 'char(1)', 'String', 'required', '0', '0', '1', '1', '1', '0', '=', 'input', 'required', null, '30', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('3faf6525a26440919481a4372e48a1b6', 'fba17b0288734b82a02264e977aeb26d', 'id', '生产订单编号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '1', '=', 'input', '', null, '10', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('40111c239f4c4169a372e487b920b78d', '23aee2de3b284ca9a2c2f38afdd103a3', 'thumb_img_url', '缩略图url', 'varchar(512)', 'String', 'thumbImgUrl', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '120', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('41f86704a2824f58aee22a137a5330b2', '23aee2de3b284ca9a2c2f38afdd103a3', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '160', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('42a152ae915d45bf936f733d9f5fa480', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_addtime', '注册时间', 'datetime', 'java.util.Date', 'memberAddtime', '0', '0', '1', '0', '1', '1', 'between', 'dateselect', '', null, '80', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('43dedc3078d84954aeaf4da40be639c6', 'd4f6aaa510e4432a81c4726c116cd67a', 'id', '地址id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('45b07567d4444f0aa675efc4b479edd6', 'cb937f6e792a432db6efa3bfd75cf162', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2016-10-04 01:01:37', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('466ed7d9c0034b929a10055edbcf09d2', 'ff7056d6c260421b9b7e16d435039374', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '110', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('48299ed1dde24890babb1615c0b406bb', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'attr_value', '属性值', 'varchar(64)', 'String', 'attrValue', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('48d744e604754a12b119100fc6d721af', 'a50f6b41e4ba41638beb800cef1cd0b8', 'id', '会员id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('497cb0cdc1534992a003cfddfe240318', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '90', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('4c549037cfb04984827990ea08bf959f', 'b0c68ad41a1344ffb8650cd39578ff79', 'member_id', '会员id', 'varchar(64)', 'String', 'memberId', '0', '1', '1', '0', '0', '1', '=', 'input', '', null, '20', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('4d77151430db48f8948740ed1952d192', 'b0c68ad41a1344ffb8650cd39578ff79', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '210', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('4ebced22c1094d598591ed915c7a234c', 'c7a69b94ce6344658de84973dbb1964a', 'product_type', '0已有产品生产，1新产品生产', 'char(1)', 'String', 'productType', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '100', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('50d91cb000a24e75a698c8167f8ca551', 'b0c68ad41a1344ffb8650cd39578ff79', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '200', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('531749dd86cb4d479a14e51ad0e5194c', '9a5bdb1d32714a9190061bc82fa8a05e', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '90', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('560b6d1ba27744f697fcd877e4ffa7e8', 'a69d969eb8524cbb809bb5ed980b10d4', 'name', 'name', 'varchar(32)', 'String', 'name', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('564a4c105ded4be183194d4106e31bc0', 'cb937f6e792a432db6efa3bfd75cf162', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('58b75d668cbb4443b2e21607bb64121a', '29d2beafae674ca89367fac2b8ecaa0a', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '60', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('58d91f9e790e46b7a58e4d819794dc08', 'be253de9f2be48138abe7b94f99ff7ee', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('5970df0ba3fe46c7818b3ad26968bb53', 'b0c68ad41a1344ffb8650cd39578ff79', 'true_name', '真实姓名', 'varchar(64)', 'String', 'trueName', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '30', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('597b5c05375c4b53963290a08aff19d3', 'd4f6aaa510e4432a81c4726c116cd67a', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '90', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('59bb3731924e4ce8aa440b75079b7193', 'ce7425386dcc46938c007a1bd45e1ba5', 'payment', '支付方式', 'tinyint(4)', 'String', 'payment', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('59ffa142dae04b27813340443a03bc97', '741696b7c2114d4b8973134f672d48d0', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '40', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('5cf204d7317b454ea9e68839c2c3efe6', 'ff7056d6c260421b9b7e16d435039374', 'member_birthday', '生日', 'date', 'java.util.Date', 'memberBirthday', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '30', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('5d72c54ac1a64c98989924e6bcf40eb4', '702d9426b6464af78aa78d980dab37b5', 'cost', '花费', 'decimal(10,2)', 'Double', 'cost', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('5d9505a2c6e042cab2c99ad95e108bdb', '29d2beafae674ca89367fac2b8ecaa0a', 'content', '消息内容', 'text', 'String', 'content', '0', '1', '1', '0', '0', '0', '=', 'textarea', '', null, '20', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('5eb171a19202421c9b069163e842f588', 'b0c68ad41a1344ffb8650cd39578ff79', 'flag', '0进行中1交易成功2交易失败,待发货前全额退款都是失败', 'char(1)', 'String', 'flag', '0', '1', '1', '1', '1', '1', '=', 'select', 'orders_flag', null, '150', '1', '2017-02-11 00:43:46', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('5ec7084f67274c26aab4c5aa8e53b069', '804a765a1e4d4112bf53d1385a338597', 'goods_amount', '商品购买数量，在购物车时，不能减少实际库存', 'smallint(6)', 'Integer', 'goodsAmount', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('5fcee738caeb4cfd90204a37f4e8c065', 'd4f6aaa510e4432a81c4726c116cd67a', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '130', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('60ea95938ce1479dbf140d3530b07895', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '50', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('60f08170edef4e9d89c21c09c04133e8', '94152e7bc2c6421984f83fd46958bcd5', 'id', '商品规格值id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('61069c22e01a442985d7957d60cdb3cc', 'c7a69b94ce6344658de84973dbb1964a', 'success_rate', '成功率', 'decimal(7,4)', 'Double', 'successRate', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '90', '1', '2016-12-04 00:18:22', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('634f1a4215bc44c682a22fef8330dce9', 'ce7425386dcc46938c007a1bd45e1ba5', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '90', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('6489c3480a3a4b84a4d910518a93980f', '702d9426b6464af78aa78d980dab37b5', 'content', '内容', 'text', 'String', 'content', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '20', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('64a30ea9d570424cafd3175d5111d824', 'c7a69b94ce6344658de84973dbb1964a', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '150', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('65e75258c341466894be5f2ec8bdcc37', 'b0c68ad41a1344ffb8650cd39578ff79', 'process_state', '当前流程状态', 'varchar(32)', 'String', 'processState', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('6917046831114066a50aea7e730b004f', '702d9426b6464af78aa78d980dab37b5', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '1', '=', 'userselect', '', null, '60', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('696903c83fb941eda7c0edcf70730dab', 'c7a69b94ce6344658de84973dbb1964a', 'goods_id', '商品id', 'varchar(64)', 'String', 'goodsId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '40', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('69f0d1505e484b9caa12f1078eef000e', 'cb937f6e792a432db6efa3bfd75cf162', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('6a1b70736f5e4a1985e7e7c479d0b660', 'ce7425386dcc46938c007a1bd45e1ba5', 'process_type', '流动类型0充值1付款2退款', 'tinyint(4)', 'String', 'processType', '0', '1', '1', '1', '1', '1', '=', 'select', 'account_process_type', null, '30', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('6a985088ab9c4a93ad26fb8d10cdadb9', 'fba17b0288734b82a02264e977aeb26d', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '110', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('6b27ec2fe0ad461c8e5eb7913f90e24e', '741696b7c2114d4b8973134f672d48d0', 'sort', '排序', 'int(11)', 'Integer', 'sort', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '30', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('6bdf0b00c2b1458db4f8ae4b79739a6a', '804a765a1e4d4112bf53d1385a338597', 'goods_no', 'good_all	goods_no', 'varchar(64)', 'String', 'goodsNo', '0', '0', '1', '1', '0', '1', '=', 'input', '', null, '30', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('6c1c0785d3fa4ea3b6a100bba4672011', '23aee2de3b284ca9a2c2f38afdd103a3', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '150', '1', '2016-10-04 01:01:01', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('6dfbc78cfbe246159318a99788b009ec', 'fba17b0288734b82a02264e977aeb26d', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '90', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('6f3486b85ea94031b517ae5d96531ed5', '66eb520f22c44585b8b576df1aec23ed', 'price_all', 'amount个商品的总售价', 'decimal(10,2)', 'Double', 'priceAll', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('7015e7f47bd542cca0c62f55ecc24358', 'b0c68ad41a1344ffb8650cd39578ff79', 'province_id', '所在省份id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'province.id', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '100', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('70b1e3643416466e9207ceda5958fa20', 'ff7056d6c260421b9b7e16d435039374', 'member_sex', '会员性别：0为女，男为1', 'tinyint(4)', 'String', 'memberSex', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '20', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('70b8635361b748a887f40927fc1c21b1', 'be253de9f2be48138abe7b94f99ff7ee', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '60', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('71647ed7a9c6406ca702752b968ce277', 'b0c68ad41a1344ffb8650cd39578ff79', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '190', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('7271916c763346d0a618365d1d3d9d1a', 'c7a69b94ce6344658de84973dbb1964a', 'goods_name', '商品名称', 'varchar(128)', 'String', 'goodsName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '30', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('7371a516d170404e829b7b7127f20094', 'ce7425386dcc46938c007a1bd45e1ba5', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '70', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('74581edeb51d445d9ef34e75657f32f4', 'eef5b211d04a40a9b3f513f2c4fea409', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '80', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('76f84b761a8949409207cde2ce948a86', '23aee2de3b284ca9a2c2f38afdd103a3', 'on_shelf_time', '上架时间', 'datetime', 'java.util.Date', 'onShelfTime', '0', '1', '1', '1', '1', '1', 'between', 'dateselect', '', null, '30', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('76fb96afd2424aaab9ce04ee721cb9e0', 'eef5b211d04a40a9b3f513f2c4fea409', 'id', '文章id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('77fb626c9f1b495ba6fcff8f17905734', 'ce7425386dcc46938c007a1bd45e1ba5', 'amount', '资金变化数目，正为增，负为减', 'decimal(10,2)', 'Double', 'amount', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '40', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('79d00a7117234a51a2f1dfdc8301d8d5', '94152e7bc2c6421984f83fd46958bcd5', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '110', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('7a58ceaf98d04870882a751f8cb5870e', '804a765a1e4d4112bf53d1385a338597', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '90', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('7d05b0291bf14e96be73d38d15191559', '741696b7c2114d4b8973134f672d48d0', 'id', '商品属性id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('803e939a678d40f88a58a9824c943645', 'b0c68ad41a1344ffb8650cd39578ff79', 'income', '收益，交易成功时price_all-cost_all-refund', 'decimal(10,2)', 'Double', 'income', '0', '1', '1', '1', '1', '1', 'between', 'input', '', null, '230', '1', '2017-02-11 00:38:24', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('80bfae20066f4ad4a31ba951a88aecf9', '741696b7c2114d4b8973134f672d48d0', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('8332b2fa5a68429e9fb5e152ee290f8a', 'fba17b0288734b82a02264e977aeb26d', 'product_order_id', '生产订单表', 'varchar(64)', 'String', 'productOrderId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '40', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('83887bf217c84adfa1986a282fd08bb5', 'cb937f6e792a432db6efa3bfd75cf162', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '60', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('8389a9513afc4540938fa22a7126fb4f', '29d2beafae674ca89367fac2b8ecaa0a', 'id', '搜索记录id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('83ecee7bedeb47ef9903ac16b9d8f1ed', '29d2beafae674ca89367fac2b8ecaa0a', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('855a94ebc9234dc99cb4c7839c5037e9', 'a69d969eb8524cbb809bb5ed980b10d4', 'level', 'level', 'tinyint(4)', 'String', 'level', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '60', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('8570fa305c7b4aa3bbc99ccae976056c', 'd4f6aaa510e4432a81c4726c116cd67a', 'province_id', '所在省份id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'province.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('86ed16ae4a2d40b49bc269a15b26e237', '9a5bdb1d32714a9190061bc82fa8a05e', 'parent_id', '商品分类id上级', 'varchar(64)', 'This', 'parent.id|name', '0', '1', '1', '1', '1', '0', '=', 'treeselect', '', null, '30', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('87495698738548af98935ee4441a2570', '66eb520f22c44585b8b576df1aec23ed', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('89a373adff4b4e2b8705a6ebcf6f8cdb', 'fba17b0288734b82a02264e977aeb26d', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '100', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('89b760108a0b417f89c6a1db854318ed', 'eef5b211d04a40a9b3f513f2c4fea409', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '60', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('8ce765d6f1a24a4a9ea178dc3b2f39b3', '702d9426b6464af78aa78d980dab37b5', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '50', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('8d732bdac2e44335a92f484549285633', '23aee2de3b284ca9a2c2f38afdd103a3', 'parent_id', '父商品id,字段不为空时该商品作为配件', 'varchar(64)', 'This', 'parent.id|name', '0', '1', '1', '1', '0', '0', '=', 'treeselect', '', null, '80', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '1');
INSERT INTO `gen_table_column` VALUES ('8f17519f148248e5bccd6e556827c9d9', 'eef5b211d04a40a9b3f513f2c4fea409', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '40', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('92ac234bb33a4246b705bc1d5756929d', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2016-10-04 01:01:24', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('9485312512854f3cbc1ad7360acd209c', 'c7a69b94ce6344658de84973dbb1964a', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '1', '1', '=', 'input', '', null, '120', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('95db7cfb552e4c35b4e400947b58d6c8', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_pwd', '会员密码', 'varchar(64)', 'String', 'memberPwd', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('960266f34ea7468eb3a0815c63110c0c', 'd4f6aaa510e4432a81c4726c116cd67a', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '80', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('96f504c3795f4ed39b27666c87701e04', 'be253de9f2be48138abe7b94f99ff7ee', 'id', '搜索记录id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('97f1bd8092b54389936e6d6cc5316a24', 'b0c68ad41a1344ffb8650cd39578ff79', 'price_all', '总售价，该字段用于会员付款，付款前可以调整售价，例如打个折', 'decimal(10,2)', 'Double', 'priceAll', '0', '1', '1', '1', '0', '1', 'between', 'input', '', null, '60', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('98bcc5e859e94ad0bd80cff1cbb14547', 'a69d969eb8524cbb809bb5ed980b10d4', 'first_letter', 'first_letter', 'char(1)', 'String', 'firstLetter', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('99480c4f56fc4801a22b4848d08a1241', 'b0c68ad41a1344ffb8650cd39578ff79', 'city_id', '所在城市id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'city.id', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '90', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('9a5c35ccd1d540b2aa9cb627612fb3f5', '12aadc7881fe497c9f986caecd35febd', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '90', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('9b0648ed70ce4114ad9275d37b271f19', '23aee2de3b284ca9a2c2f38afdd103a3', 'id', '商品id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('9b1d182bb56b4f978840b51e33e3182e', '94152e7bc2c6421984f83fd46958bcd5', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '100', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('9b89231291204fcd8faebb3b8c1208ff', '66eb520f22c44585b8b576df1aec23ed', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '80', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('9b9c23a1781b4b1ebd43b29804fb6469', 'a69d969eb8524cbb809bb5ed980b10d4', 'id', 'id', 'varchar(32)', 'String', 'id', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('9c33b4f9a4d940918614cf5a9657b87b', '66eb520f22c44585b8b576df1aec23ed', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '90', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('9c7032e7b1ef48dbae892b3de1914687', 'cb937f6e792a432db6efa3bfd75cf162', 'id', '商品规格id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('9c777c6d47464612b5e2bc9bd8764e7d', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'attr_id', '属性id', 'varchar(64)', 'String', 'attrId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '30', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('9ca557516e214cb4ac2bddd0a5745007', 'ff7056d6c260421b9b7e16d435039374', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '120', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('9ddb6b528364487b86cc1d912c5f3733', '12aadc7881fe497c9f986caecd35febd', 'specification_group', '规格值分组，该值可以与goods_id唯一确定几个规格', 'int(11)', 'Integer', 'specificationGroup', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '70', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('9e3d459d35614f42a2d620c8f370cd99', '804a765a1e4d4112bf53d1385a338597', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '50', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('9e7767fda9864d7eba305b86b81956db', 'c7a69b94ce6344658de84973dbb1964a', 'id', '生产订单id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '1', '=', 'input', '', null, '10', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('9ef74f4951944c91b5163a13ada2cccc', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_avatar', '会员头像', 'varchar(50)', 'String', 'memberAvatar', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('9f41feedd3994490b64c03fe3f69c771', 'b0c68ad41a1344ffb8650cd39578ff79', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '160', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('a1127c42800049cfa7990d6c245ff6e8', 'c7a69b94ce6344658de84973dbb1964a', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '130', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('a19effbbb10548039f67becfd9d2f34a', '94152e7bc2c6421984f83fd46958bcd5', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '80', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('a2482a7be38a45a8b2503eda4ae4bf79', 'eef5b211d04a40a9b3f513f2c4fea409', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '90', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('a28d4441cb134dc287e76450167fa3d6', 'c7a69b94ce6344658de84973dbb1964a', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '110', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('a3ab1c6e619a4cfdb899baa76669c936', '23aee2de3b284ca9a2c2f38afdd103a3', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '140', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('a455c365dd3640a2aedac7e0edd38868', '12aadc7881fe497c9f986caecd35febd', 'goods_id', '商品id', 'varchar(64)', 'String', 'goodsId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '60', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('a4c3a3fbc7ce496eb9615b0b3ed68fc5', '23aee2de3b284ca9a2c2f38afdd103a3', 'src_price', '原价', 'decimal(10,2)', 'String', 'srcPrice', '0', '1', '1', '1', '1', '1', 'between', 'input', '', null, '100', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('a4ee38c8740e4d8882a195ad22012880', '23aee2de3b284ca9a2c2f38afdd103a3', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '170', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('abda5e234425499f981b9cf42d9046ca', '12aadc7881fe497c9f986caecd35febd', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '80', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('ae35c8ad12a043dd9b141e7e5f2fd411', 'fba17b0288734b82a02264e977aeb26d', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '80', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('af23752da1ac4c00b40b3d1e9f12d304', '94152e7bc2c6421984f83fd46958bcd5', 'specification_group', '多个规格值为一组，一个goods对应多个组', 'int(11)', 'Integer', 'specificationGroup', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '50', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('afd1c120bac747e6bad1a148a182e224', '66eb520f22c44585b8b576df1aec23ed', 'goods_amount', '购买数量', 'int(11)', 'Integer', 'goodsAmount', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('b12c8a8417f347ac8769367ed15f83a9', '66eb520f22c44585b8b576df1aec23ed', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '100', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('b2062c8ed7464a4fb213681b4a3145b9', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'id', '商品属性值id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('b33f728940d14d48a9c528c3134a2021', 'ce7425386dcc46938c007a1bd45e1ba5', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '0', '0', '0', '=', 'textarea', '', null, '60', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('b46b3cc8174b4eeeb0f700c08fedb60b', 'a50f6b41e4ba41638beb800cef1cd0b8', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '160', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('b5423abf21734dc7a95b6d6c5bf15ccc', '804a765a1e4d4112bf53d1385a338597', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('b548f004d64c46a78c7d3baa7770e765', '9a5bdb1d32714a9190061bc82fa8a05e', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '70', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('b7598e5954594841967a58cfc30a026d', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_loginnum', '登录次数', 'int(10) unsigned', 'String', 'memberLoginnum', '0', '1', '1', '1', '1', '1', 'between', 'input', '', null, '110', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('ba791b2ddf174144996b952f91ecc6dd', '29d2beafae674ca89367fac2b8ecaa0a', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '0', '0', '0', '=', 'textarea', '', null, '50', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('baf839e5b95549ca86d7c0667e30a1d4', '804a765a1e4d4112bf53d1385a338597', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('bb2d15145f2648f0b05e889430fc80d8', '9a5bdb1d32714a9190061bc82fa8a05e', 'id', '商品分类id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('bb6fbc13717d4b4c9fb4ac0dfd78170c', '9a5bdb1d32714a9190061bc82fa8a05e', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '110', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('bb75a52d4c8a47a39e77cd3b84124e66', '94152e7bc2c6421984f83fd46958bcd5', 'img_url', '图片url，点击某个规格后可以根据此url替换画册图片', 'varchar(512)', 'String', 'imgUrl', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '60', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('bc481b6f0ad5466fa225c8e1e3529f34', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_points', '会员积分', 'int(11)', 'Integer', 'memberPoints', '0', '0', '1', '1', '1', '1', 'between', 'input', '', null, '90', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('bcc28f157d3a447bb0c810d4a615b24b', '9a5bdb1d32714a9190061bc82fa8a05e', 'sort', '排序，根据分级排序', 'int(11)', 'Integer', 'sort', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '50', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('bdcede5d74f84b368d3a535bf02b1289', '741696b7c2114d4b8973134f672d48d0', 'attr_name', '属性名称', 'varchar(32)', 'String', 'attrName', '0', '1', '1', '1', '1', '1', 'like', 'input', '', null, '20', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('c153ec9971df4384b25cc8c98a84c771', '66eb520f22c44585b8b576df1aec23ed', 'id', '订单详情id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('c1c258fa22a74f89a85b9310a932671f', 'd4f6aaa510e4432a81c4726c116cd67a', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '100', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('c31d933fc98945d4b0777fdaebe30437', 'a50f6b41e4ba41638beb800cef1cd0b8', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '170', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('c33c9187c378460d836a809f4fedefef', '9a5bdb1d32714a9190061bc82fa8a05e', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '60', '1', '2016-09-28 20:15:25', '1', '2016-10-04 01:01:34', null, '0');
INSERT INTO `gen_table_column` VALUES ('c46e902dabfd4dbf9c155780d4457d10', 'a50f6b41e4ba41638beb800cef1cd0b8', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '180', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('c5db54fdef8b4b78b22bb2dbb39163f8', '12aadc7881fe497c9f986caecd35febd', 'src_price', '原价', 'decimal(10,2)', 'Double', 'srcPrice', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('c6b27c9791cd410dbd54a1efb7afb453', '12aadc7881fe497c9f986caecd35febd', 'stock', '库存', 'int(11)', 'Integer', 'stock', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '50', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('c6ef4359eead4e1c853f50be5df18d75', 'ff7056d6c260421b9b7e16d435039374', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '80', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('c7ae8b13fa1c491eb5763f8ef04e6190', 'be253de9f2be48138abe7b94f99ff7ee', 'content', '搜索内容', 'varchar(100)', 'String', 'content', '0', '1', '1', '0', '0', '1', '=', 'textarea', '', null, '30', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('cc32e2680c6d49bcaebc56d1fd6df568', '804a765a1e4d4112bf53d1385a338597', 'id', '购物车id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('cc394782267b4297ac89fb678388ff10', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '60', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('cd574e06d83346d297bafafb180dd58c', '702d9426b6464af78aa78d980dab37b5', 'product_order_id', '生产订单id', 'varchar(64)', 'String', 'productOrderId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '40', '1', '2016-12-07 20:23:48', '1', '2016-12-07 20:23:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('cec41c895ef94ff2901c5ccb1a242376', 'd4f6aaa510e4432a81c4726c116cd67a', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('d139f6ec8ec94be4a9ca9466739317b5', 'eef5b211d04a40a9b3f513f2c4fea409', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '50', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('d2e13c97c1b647b18fe24d6d15e04226', 'eef5b211d04a40a9b3f513f2c4fea409', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2017-03-05 00:39:12', '1', '2017-03-05 00:39:12', null, '0');
INSERT INTO `gen_table_column` VALUES ('d50fa09f2f9c4481aab94ca593559c12', 'ff7056d6c260421b9b7e16d435039374', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '100', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('d513206538c94819ae553f621467e989', '12aadc7881fe497c9f986caecd35febd', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '100', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('d5c1631d420f490d961f4eeb144b7993', 'd4f6aaa510e4432a81c4726c116cd67a', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '1', '0', '=', 'dateselect', '', null, '120', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('d6cd22fcbbb5407688593b1c4aaf0046', '12aadc7881fe497c9f986caecd35febd', 'id', '唯一商品id,也是货号', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('d72a4cf8032d48f9ad512079390f3e0d', '66eb520f22c44585b8b576df1aec23ed', 'orders_id', '订单id', 'varchar(64)', 'String', 'ordersId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '20', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('d74e839c7ead4f40998bb2329bf82790', 'd4f6aaa510e4432a81c4726c116cd67a', 'city_id', '所在城市id', 'varchar(32)', 'com.zjy.losonkei.modules.sys.entity.CountryArea', 'city.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('d787ca7f709247ccb84b98488e18fc15', '29d2beafae674ca89367fac2b8ecaa0a', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', null, '90', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('d92313c753e34bf7ab2b6ac514ab2c2c', 'b0c68ad41a1344ffb8650cd39578ff79', 'goods_state', '1待发货，2已发货，3已取消，4已退回，5无货，与order_action同步更新', 'char(1)', 'String', 'goodsState', '0', '1', '1', '1', '1', '1', '=', 'select', 'goods_send_state', null, '130', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('dac0dcb2a75c480dbf4a5acb7236825f', 'c7a69b94ce6344658de84973dbb1964a', 'process_instance_id', '流程实例id', 'varchar(64)', 'String', 'processInstanceId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '50', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('db4c71013f1f40f6bea01e108a8ce383', '94152e7bc2c6421984f83fd46958bcd5', 'goods_id', '商品id', 'varchar(64)', 'String', 'goodsId', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '40', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('dbaa29ea7ced4243bf2280d572e8ff00', 'be253de9f2be48138abe7b94f99ff7ee', 'amount', '日搜索次数', 'int(11)', 'String', 'amount', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2017-03-02 23:57:48', '1', '2017-03-02 23:57:48', null, '0');
INSERT INTO `gen_table_column` VALUES ('dc15ba8548694564968d4ccf09115cbd', '29d2beafae674ca89367fac2b8ecaa0a', 'member_id', '会员id', 'varchar(64)', 'com.zjy.losonkei.modules.member.entity.Member', 'member.id', '0', '1', '1', '0', '0', '1', '=', 'input', '', null, '30', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('dc624371cd8e41679f1ed3e98bccdcc4', 'fba17b0288734b82a02264e977aeb26d', 'state', '状态0进行中1成功2失败', 'char(1)', 'String', 'state', '0', '1', '1', '1', '1', '1', '=', 'select', 'product_order_state', null, '50', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:45', null, '1');
INSERT INTO `gen_table_column` VALUES ('dd4308b2d09e413c8bb6a1c9585bfad9', '23aee2de3b284ca9a2c2f38afdd103a3', 'season', '季节', 'varchar(2)', 'String', 'season', '0', '1', '1', '1', '1', '1', '=', 'select', 'season', null, '40', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('de04253405894f65b645c9dc17de32c2', '29d2beafae674ca89367fac2b8ecaa0a', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('dff658d2e2484cbe971803e8a9d02b84', 'b0c68ad41a1344ffb8650cd39578ff79', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '180', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('e0a62c7cf4d74310a5cec22d36d734d6', '804a765a1e4d4112bf53d1385a338597', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '70', '1', '2017-02-09 23:17:09', '1', '2017-02-09 23:21:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('e0f1ff192eb14fc4942e9ffcf42cf4ed', 'd4f6aaa510e4432a81c4726c116cd67a', 'default_flag', '是否默认地址，0默认，1非默认', 'char(1)', 'String', 'defaultFlag', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('e415aaa7c0fe4fe09dce4796dbb25c22', 'a69d969eb8524cbb809bb5ed980b10d4', 'code', 'code', 'varchar(32)', 'String', 'code', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('e51e1e213770443fb1d9b7e8d9797032', 'a50f6b41e4ba41638beb800cef1cd0b8', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', null, '130', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('e52c69b625264f62ae50136477f10b4b', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_paypwd', '支付密码', 'varchar(64)', 'String', 'memberPaypwd', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('e7782d266dab445f8ed7afba6035f082', 'a69d969eb8524cbb809bb5ed980b10d4', 'parent_id', 'parent_id', 'varchar(32)', 'String', 'parentId', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '40', '1', '2017-01-01 19:55:10', '1', '2017-01-01 20:00:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('e8274a453cf44ddfaf82d35a18a846fc', 'cb937f6e792a432db6efa3bfd75cf162', 'sort', '排序', 'int(11)', 'Integer', 'sort', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '40', '1', '2016-10-03 16:06:31', '1', '2016-10-04 01:01:41', null, '0');
INSERT INTO `gen_table_column` VALUES ('e86c52e4fb454070bc71852d433d549d', '66eb520f22c44585b8b576df1aec23ed', 'goods_no', 'goods_all goods_no', 'varchar(64)', 'String', 'goodsNo', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2017-02-11 01:01:57', '1', '2017-02-11 01:01:57', null, '0');
INSERT INTO `gen_table_column` VALUES ('ea3c9e32bf17402e85a3f3443f3d52da', 'fba17b0288734b82a02264e977aeb26d', 'goods_no', 'goods_all的goods_no', 'varchar(64)', 'String', 'goodsNo', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '30', '1', '2016-11-23 21:13:03', '1', '2016-12-04 00:18:55', null, '0');
INSERT INTO `gen_table_column` VALUES ('eb67e18737584cec92eff065c1465534', 'ff7056d6c260421b9b7e16d435039374', 'id', '会员id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '1', '=', 'input', '', null, '10', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('ecff0365e7f04a96a35ca141dd3b9a49', 'a50f6b41e4ba41638beb800cef1cd0b8', 'member_truename', '真实姓名', 'varchar(20)', 'String', 'memberTruename', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '40', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('edd4a86e2bcb4b41885b27518c9b07e7', '94152e7bc2c6421984f83fd46958bcd5', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '70', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('ee5d7bce96e64fb29c5f68c27eec59c9', '23aee2de3b284ca9a2c2f38afdd103a3', 'goods_category_id', '商品分类', 'smallint(6)', 'String', 'goodsCategory.id', '0', '1', '1', '1', '1', '1', 'left_like', 'treeselect', '', null, '70', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('ef8003f5c6e74f60b7280621d22996a8', 'b0c68ad41a1344ffb8650cd39578ff79', 'state', '0进行中1交易成功2交易失败', 'char(1)', 'String', 'state', '0', '1', '1', '1', '0', '1', '=', 'input', '', null, '150', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:43:46', null, '1');
INSERT INTO `gen_table_column` VALUES ('f2d51cc19dc849bf98e2030c04789dfb', 'ce7425386dcc46938c007a1bd45e1ba5', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '110', '1', '2017-02-08 22:09:13', '1', '2017-02-08 22:09:13', null, '0');
INSERT INTO `gen_table_column` VALUES ('f2e924be3b2d42968ebe8d76985e0a52', '741696b7c2114d4b8973134f672d48d0', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '50', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('f31430f3d15d400e920164a9c2280024', '741696b7c2114d4b8973134f672d48d0', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '90', '1', '2016-09-29 20:01:42', '1', '2016-10-04 01:01:20', null, '0');
INSERT INTO `gen_table_column` VALUES ('f44a13c501094ca1ae6e4ee6b9744739', 'b0c68ad41a1344ffb8650cd39578ff79', 'id', '订单id', 'varchar(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', '', null, '10', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('f54862842cae47948d887cd09a500871', '29d2beafae674ca89367fac2b8ecaa0a', 'update_by', '更新者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'updateBy.id', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2017-02-18 14:07:42', '1', '2017-02-18 14:07:42', null, '0');
INSERT INTO `gen_table_column` VALUES ('f61c44cc99e741329fa59cf9c309dcbc', '22f6e7add1b343e1ad1fa2cf7d2c389e', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '100', '1', '2016-10-03 15:59:10', '1', '2016-10-04 01:01:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('f8bcb45b76994879b587bd008afdbbf5', 'b0c68ad41a1344ffb8650cd39578ff79', 'cost_all', '总成本价', 'decimal(10,0)', 'Double', 'costAll', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2017-02-09 23:26:01', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('fa6439f414144fa9a661dd97b713bd00', 'c7a69b94ce6344658de84973dbb1964a', 'state', '状态0进行中1成功2失败', 'char(1)', 'String', 'state', '0', '1', '1', '1', '1', '1', '=', 'input', 'product_order_state', null, '90', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('fa7fe92638124f1b837c8590b28fc14a', 'ff7056d6c260421b9b7e16d435039374', 'member_qq', 'QQ号码', 'varchar(50)', 'String', 'memberQq', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');
INSERT INTO `gen_table_column` VALUES ('fb48f040bfc149c0a684b58046e26dea', 'b0c68ad41a1344ffb8650cd39578ff79', 'orders_state', '1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单', 'char(1)', 'String', 'ordersState', '0', '1', '1', '1', '1', '1', '=', 'select', 'orders_state', null, '120', '1', '2017-02-11 00:43:46', '1', '2017-02-11 00:59:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('fb94f81a2a224d16bf392a7ba41ee41d', '12aadc7881fe497c9f986caecd35febd', 'price', '当前价格', 'decimal(10,2)', 'Double', 'price', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2016-10-09 20:14:02', '1', '2016-10-09 20:14:02', null, '0');
INSERT INTO `gen_table_column` VALUES ('fbf994df1b844320aa458149be727df4', '23aee2de3b284ca9a2c2f38afdd103a3', 'sex', '推荐人群', 'tinyint(4)', 'String', 'sex', '0', '1', '1', '1', '1', '1', '=', 'select', 'sex', null, '50', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('fccc113a326f480087db9ab147e81808', 'a50f6b41e4ba41638beb800cef1cd0b8', 'create_by', '创建者', 'varchar(64)', 'com.zjy.losonkei.modules.sys.entity.User', 'createBy.id', '0', '1', '1', '0', '0', '0', '=', 'input', '', null, '140', '1', '2016-12-29 21:35:34', '1', '2016-12-29 21:45:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('fd50a0db173c4698acfd4ea954ad99aa', 'c7a69b94ce6344658de84973dbb1964a', 'budget', '预算', 'decimal(10,2)', 'Double', 'budget', '0', '1', '1', '1', '1', '0', '=', 'input', '', null, '70', '1', '2016-11-21 22:56:21', '1', '2016-12-04 00:18:22', null, '0');
INSERT INTO `gen_table_column` VALUES ('fd687eefeec24568b4f10671bea1e954', '94152e7bc2c6421984f83fd46958bcd5', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '90', '1', '2016-10-04 01:01:44', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('ff1cb9b4a3d54ebbaf3f4a4add4c4a3c', 'd4f6aaa510e4432a81c4726c116cd67a', 'member_id', '会员id', 'varchar(64)', 'String', 'memberId', '0', '1', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2017-01-01 20:37:45', '1', '2017-01-01 20:38:15', null, '0');
INSERT INTO `gen_table_column` VALUES ('ff84530ba7d242f0881c94a3452b04cf', '94152e7bc2c6421984f83fd46958bcd5', 'specification_id', '规格id', 'varchar(64)', 'String', 'specificationId', '0', '1', '1', '1', '1', '1', '=', 'input', '', null, '20', '1', '2016-10-03 16:09:54', '1', '2016-10-04 01:01:47', null, '0');
INSERT INTO `gen_table_column` VALUES ('ffa40e6348094cd8a73a6f5fb4dfcd82', '23aee2de3b284ca9a2c2f38afdd103a3', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '180', '1', '2016-09-29 21:36:50', '1', '2016-12-31 23:43:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('ffdde0dce0f74b9aac11ee3910f624fd', 'ff7056d6c260421b9b7e16d435039374', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '1', '1', '0', '0', '0', '=', 'dateselect', '', null, '90', '1', '2017-01-01 19:07:00', '1', '2017-01-01 19:07:00', null, '0');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '生成文件名',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='代码模板表';

-- ----------------------------
-- Records of gen_template
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(64) NOT NULL COMMENT '商品id',
  `goods_name` varchar(128) DEFAULT NULL COMMENT '商品名称',
  `season` varchar(2) DEFAULT NULL COMMENT '季节：春、夏、秋、冬',
  `sex` tinyint(4) DEFAULT '2' COMMENT '推荐人群：0为女，男为1，都适合为2',
  `keywords` varchar(50) DEFAULT NULL COMMENT '搜索使用的关键词',
  `goods_category_id` varchar(64) DEFAULT NULL COMMENT '商品分类id',
  `price` decimal(10,2) DEFAULT NULL COMMENT '当前价格，取决于goods_all第一组的商品的价格',
  `src_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `state` char(1) DEFAULT NULL COMMENT '状态：0在线,1下架,2未上架,3暂不供货,4待研发',
  `thumb_img_url` varchar(512) DEFAULT NULL COMMENT '缩略图url',
  `img_url` text COMMENT '由ckfinder生成',
  `flag` char(1) DEFAULT NULL COMMENT '1新品2热销3优惠',
  `sales_amount` bigint(20) DEFAULT '0' COMMENT '总销售',
  `sort` int(11) DEFAULT NULL COMMENT '商品排序',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `visit_amount` bigint(20) DEFAULT '0' COMMENT '总销售',
  PRIMARY KEY (`id`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '牛奶222', '1', '2', '', '80efdba9d25f4430a7c534161ebef4d6', null, '22.00', '4', '/losonkei/userfiles/1/_thumbs/images/goods/1/QQ%E6%88%AA%E5%9B%BE20161110201104.jpg', '|/losonkei/userfiles/1/images/goods/1/QQ%E6%88%AA%E5%9B%BE20161110201104.jpg|/losonkei/userfiles/1/images/goods/1/42692b45d688d43fc0d6ae1d751ed21b0ff43b48.jpg', null, '0', null, '安安心', null, null, 'f801b18217cb4d6c9ee665e6d7024e26', '2016-12-09 02:02:23', '0', '0');
INSERT INTO `goods` VALUES ('b40f9a17d53b43cfbc4fcd5e24776b4f', 'asd', '', '2', '', '25840e6bccdb4a419ffdd09d4a15733a', null, null, '0', '', '|/losonkei/userfiles/1/images/goods/1/42692b45d688d43fc0d6ae1d751ed21b0ff43b48.jpg|/losonkei/userfiles/1/images/goods/1/QQ%E6%88%AA%E5%9B%BE20161110201104.jpg', null, '0', null, '', '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '0', '1');
INSERT INTO `goods` VALUES ('GD161122233029614136', '奶茶', '', '2', '', '4623262cb3504f2198b4281d91c77d24', null, null, '0', '/losonkei/photos/images/goods/GD161122233029614136/1f410718367adab45538abd188d4b31c8601e415.jpg', '|/losonkei/photos/images/goods/GD161122233029614136/1f410718367adab45538abd188d4b31c8601e415.jpg', '', '0', null, '', '1', '2016-11-22 23:30:30', '1', '2017-02-16 20:56:51', '0', '1');
INSERT INTO `goods` VALUES ('GD161122234125265126', '奶糕', '', '2', '', '93027bf4100d4301af59ae3b8e83f501', null, null, '2', '/losonkei/photos/images/goods/GD170128223724368888/2.jpg', '|/losonkei/photos/images/goods/GD170128223724368888/4.jpg', '', '0', null, '', '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0', '0');
INSERT INTO `goods` VALUES ('GD161209021826755624', '雪碧', '', '2', '阿阿斯顿', '4623262cb3504f2198b4281d91c77d24', '1121.00', null, '0', '', '', '', '0', '33', 'qsdadq', '1', '2016-12-09 02:18:27', '1', '2017-03-05 01:22:20', '0', '9');
INSERT INTO `goods` VALUES ('GD170128223724368888', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食', '', '2', '话梅,蜜饯,果脯', '4623262cb3504f2198b4281d91c77d24', '13.80', '22.80', '0', '/losonkei/photos/images/goods/GD170128223724368888/1.jpg', '|/losonkei/photos/images/goods/GD170128223724368888/1.jpg|/losonkei/photos/images/goods/GD170128223724368888/2.jpg|/losonkei/photos/images/goods/GD170128223724368888/3.jpg|/losonkei/photos/images/goods/GD170128223724368888/4.jpg|/losonkei/photos/images/goods/GD170128223724368888/5.jpg', '1', '0', null, '赠小叉叉 酸甜滋味 品质保证 易拉罐装 颗粒饱满', '1', '2017-01-28 22:37:24', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:22:10', '0', '32');

-- ----------------------------
-- Table structure for goods_all
-- ----------------------------
DROP TABLE IF EXISTS `goods_all`;
CREATE TABLE `goods_all` (
  `id` varchar(64) NOT NULL COMMENT '唯一商品id,也是货号',
  `price` decimal(10,2) DEFAULT NULL COMMENT '当前价格',
  `cost_price` decimal(10,2) DEFAULT NULL COMMENT '成本价',
  `src_price` decimal(10,2) DEFAULT NULL COMMENT '原价',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `goods_id` varchar(64) DEFAULT NULL COMMENT '商品id',
  `specification_group` int(11) DEFAULT NULL COMMENT '规格值分组，该值可以与goods_id唯一确定几个规格',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记，''3''为真正删除',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所有商品表';

-- ----------------------------
-- Records of goods_all
-- ----------------------------
INSERT INTO `goods_all` VALUES ('0eb846b726f440eda6183a6e0bf3dad7', '1213.00', '21.00', null, null, 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '0');
INSERT INTO `goods_all` VALUES ('1', '30.00', null, null, '0', '1', '113', null, null, null, 'f801b18217cb4d6c9ee665e6d7024e26', '2016-12-09 02:02:23', '0');
INSERT INTO `goods_all` VALUES ('51702a6e56904e36821ea5ba48db367a', null, null, null, null, '1', '322', null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_all` VALUES ('692cc59bffd84de28f404f4a03148998', null, null, null, null, '1', '221', null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_all` VALUES ('f2314560964e4a1ca062951bb6c5bc99', null, null, null, '0', '1', '32', null, '1', '2016-11-12 02:30:52', 'f801b18217cb4d6c9ee665e6d7024e26', '2016-12-09 02:02:23', '0');
INSERT INTO `goods_all` VALUES ('GA161122233225937815', '22.00', '2.00', '33.00', '44', 'GD161122233029614136', '10', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_all` VALUES ('GA161122234125330893', '1213.00', null, '33.00', '212', 'GD161122234125265126', '10', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_all` VALUES ('GA161209021826792145', null, null, null, '113', 'GD161209021826755624', '10', null, '1', '2016-12-09 02:18:27', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_all` VALUES ('GA161209021828526725', null, null, null, '132', 'GD161209021826755624', '20', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_all` VALUES ('GA170128223724438417', '22.80', '10.00', '13.80', '3765', 'GD170128223724368888', '5', null, '1', '2017-01-28 22:37:24', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:36', '0');
INSERT INTO `goods_all` VALUES ('GA170202234120771013', '32.00', '10.00', null, '99', 'GD170128223724368888', '10', null, '1', '2017-02-02 23:41:21', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_all` VALUES ('GA170203003937060326', '44.00', '10.00', null, '0', 'GD170128223724368888', '15', null, '1', '2017-02-03 00:39:37', '1', '2017-02-25 20:56:50', '0');

-- ----------------------------
-- Table structure for goods_article
-- ----------------------------
DROP TABLE IF EXISTS `goods_article`;
CREATE TABLE `goods_article` (
  `id` varchar(64) NOT NULL COMMENT '文章id',
  `goods_id` varchar(64) DEFAULT NULL COMMENT '商品id',
  `content` text,
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品文章表';

-- ----------------------------
-- Records of goods_article
-- ----------------------------
INSERT INTO `goods_article` VALUES ('5d4676c08b3143619ba03d9679f0f3f8', 'GD170128223724368888', '&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;/losonkei/photos/images/goods/GD170128223724368888/article/2017/03/TB274JieB4lpuFjy1zjXXcAKpXa-277227205.jpg&quot; style=&quot;width: 750px; height: 518px;&quot; /&gt;&lt;/p&gt;', '', '1', '2017-03-05 01:35:59', '1', '2017-03-05 01:35:59', '0');
INSERT INTO `goods_article` VALUES ('92f791a09c9c46b2bf7a4ca28c85cd39', 'GD161209021826755624', '&lt;p style=&quot;text-align: center;&quot;&gt;\r\n	&lt;img alt=&quot;&quot; src=&quot;/losonkei/photos/images/goods/GD161209021826755624/article/2017/03/test.jpg&quot; style=&quot;width: 750px; height: 518px;&quot; /&gt;&lt;/p&gt;', '', '1', '2017-03-05 01:16:02', '1', '2017-03-05 01:30:44', '0');

-- ----------------------------
-- Table structure for goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr` (
  `id` varchar(64) NOT NULL COMMENT '商品属性id',
  `attr_name` varchar(32) DEFAULT NULL COMMENT '属性名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性表';

-- ----------------------------
-- Records of goods_attr
-- ----------------------------
INSERT INTO `goods_attr` VALUES ('2bb48938f6ba49dd8b432639d38e3bf1', '包装方式', '50', '包装/散装', '1', '2016-10-04 22:29:44', '1', '2017-01-28 22:21:24', '0');
INSERT INTO `goods_attr` VALUES ('50ad0bdf37c94e6f8cdbb63eb76201c7', '是否含糖', '30', '含糖/不含糖', '1', '2016-10-04 22:29:20', '1', '2017-01-28 22:20:45', '0');
INSERT INTO `goods_attr` VALUES ('94dd84dba35a44e686aebe2a852aa574', '保质期', '10', '如：180天', '1', null, '1', '2017-01-28 22:20:26', '0');
INSERT INTO `goods_attr` VALUES ('9dad4bdbd8e8409db1e7259bcdd8438c', '配料表', '20', '', '1', null, '1', '2017-01-28 22:17:09', '0');
INSERT INTO `goods_attr` VALUES ('a4c3f5e312864a68995b6633d99b09ac', '食品添加剂', '40', '', '1', '2016-10-04 22:29:26', '1', '2017-01-28 22:18:33', '0');

-- ----------------------------
-- Table structure for goods_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr_value`;
CREATE TABLE `goods_attr_value` (
  `id` varchar(64) NOT NULL COMMENT '商品属性值id',
  `goods_id` varchar(64) DEFAULT NULL COMMENT '商品id',
  `attr_id` varchar(64) DEFAULT NULL COMMENT '属性id',
  `attr_value` varchar(64) DEFAULT NULL COMMENT '属性值',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品属性值表(不参与购买)';

-- ----------------------------
-- Records of goods_attr_value
-- ----------------------------
INSERT INTO `goods_attr_value` VALUES ('0770270136e349ab8cac8ba755198991', 'GD161122233029614136', '9dad4bdbd8e8409db1e7259bcdd8438c', '糖精', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_attr_value` VALUES ('0b83e55aa7c04c37a5beea072a4d041e', '1', '94dd84dba35a44e686aebe2a852aa574', '', null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_attr_value` VALUES ('11411aa68afe496e8f61d9f6ea1dee61', 'b40f9a17d53b43cfbc4fcd5e24776b4f', 'a4c3f5e312864a68995b6633d99b09ac', '', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:18', '0');
INSERT INTO `goods_attr_value` VALUES ('13c5123c16a44c78b050753cd47a1d79', 'GD161122234125265126', '2bb48938f6ba49dd8b432639d38e3bf1', '', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_attr_value` VALUES ('200d7f2e0ffa47d7bf27ca29cbbc8874', 'GD161209021826755624', '94dd84dba35a44e686aebe2a852aa574', '的', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_attr_value` VALUES ('2370a640ebbe48658e18a4b5857b4a74', '1', '9dad4bdbd8e8409db1e7259bcdd8438c', '', null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_attr_value` VALUES ('33d7a7e60320488dbfc07c7961b955ae', 'GD161209021826755624', '50ad0bdf37c94e6f8cdbb63eb76201c7', '的', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_attr_value` VALUES ('3432fc13012248f0a986c56dabc0b5c1', '1', '2bb48938f6ba49dd8b432639d38e3bf1', '属性3', null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_attr_value` VALUES ('39f1fa10c783476a88a80d90f3a794e2', 'GD161209021826755624', '9dad4bdbd8e8409db1e7259bcdd8438c', '的', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_attr_value` VALUES ('48c94f502d68493e9a79bd8ab09c3468', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '9dad4bdbd8e8409db1e7259bcdd8438c', '', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:18', '0');
INSERT INTO `goods_attr_value` VALUES ('5792f49269af4033b19e722f0409a7a5', 'GD170128223724368888', 'a4c3f5e312864a68995b6633d99b09ac', '见外包装', null, '1', '2017-01-28 22:37:26', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_attr_value` VALUES ('6570ddcd1ff2475781d8f1622ac316dd', 'GD161122233029614136', '50ad0bdf37c94e6f8cdbb63eb76201c7', '', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_attr_value` VALUES ('6a15e3544524486eb12df4c2b70eefed', 'GD170128223724368888', '50ad0bdf37c94e6f8cdbb63eb76201c7', '含糖', null, '1', '2017-01-28 22:37:26', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_attr_value` VALUES ('73063423ad1c4f8e94b746e744063142', 'GD161209021826755624', 'a4c3f5e312864a68995b6633d99b09ac', '的', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_attr_value` VALUES ('7ced8bbfe8da4ce58af0608df6d77d0c', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '50ad0bdf37c94e6f8cdbb63eb76201c7', '', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:18', '0');
INSERT INTO `goods_attr_value` VALUES ('841a140ed7e44200a8dc2f0ddee49045', '1', 'a4c3f5e312864a68995b6633d99b09ac', '', null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_attr_value` VALUES ('84452ccdaffb496cb6785c9d98a81eb2', 'GD161122234125265126', '9dad4bdbd8e8409db1e7259bcdd8438c', '鸡蛋', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_attr_value` VALUES ('89608433f36e4ecead48affa9e4f16e0', 'GD170128223724368888', '9dad4bdbd8e8409db1e7259bcdd8438c', '李梅，白砂糖，食用盐，甘草，食用香精', null, '1', '2017-01-28 22:37:26', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_attr_value` VALUES ('937d512f7be04218b7f766fe03a5bde8', 'GD161122233029614136', 'a4c3f5e312864a68995b6633d99b09ac', '', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_attr_value` VALUES ('a2a82fc8feb34f41b7de9359ad728a39', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '2bb48938f6ba49dd8b432639d38e3bf1', '', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:18', '0');
INSERT INTO `goods_attr_value` VALUES ('a618eecda62243c4932788be8c0872db', 'GD161122233029614136', '94dd84dba35a44e686aebe2a852aa574', '16个月', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_attr_value` VALUES ('b382b2538af24485bce6f40a80cb1f4a', '1', '50ad0bdf37c94e6f8cdbb63eb76201c7', '属性1', null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_attr_value` VALUES ('c50fafa276784915960fdcb011815156', 'GD170128223724368888', '94dd84dba35a44e686aebe2a852aa574', '360 天', null, '1', '2017-01-28 22:37:26', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_attr_value` VALUES ('c53e5647b7cd4e4b85740b6ad02e46ea', 'GD170128223724368888', '2bb48938f6ba49dd8b432639d38e3bf1', '包装', null, '1', '2017-01-28 22:37:26', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_attr_value` VALUES ('cc712f2e55f941b892aeb31c07f4cbd1', 'GD161122233029614136', '2bb48938f6ba49dd8b432639d38e3bf1', '', null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_attr_value` VALUES ('d14b4f3d583f418cbd6550211dc94f7b', 'GD161122234125265126', '94dd84dba35a44e686aebe2a852aa574', '32个月', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_attr_value` VALUES ('df3fc242067a4b348e5be37c396c731a', 'GD161209021826755624', '2bb48938f6ba49dd8b432639d38e3bf1', '', null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_attr_value` VALUES ('f23a9806ca864d828fa42722f1b41e1d', 'GD161122234125265126', '50ad0bdf37c94e6f8cdbb63eb76201c7', '', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_attr_value` VALUES ('f7fccd1548144575806f4295d2be70dd', 'GD161122234125265126', 'a4c3f5e312864a68995b6633d99b09ac', '', null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_attr_value` VALUES ('fde788a0715f4abb9378d5b0e0ddf50b', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '94dd84dba35a44e686aebe2a852aa574', '', null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:18', '0');

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` varchar(64) NOT NULL COMMENT '商品分类id',
  `category_name` varchar(32) DEFAULT NULL COMMENT '分类名称',
  `parent_id` varchar(64) NOT NULL DEFAULT '' COMMENT '商品分类id上级',
  `parent_ids` varchar(2000) NOT NULL DEFAULT '' COMMENT '商品分类id所有上级',
  `sort` int(11) DEFAULT NULL COMMENT '排序，根据分级排序',
  `thumb_img_url` varchar(512) DEFAULT NULL COMMENT '缩略图url',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('238a6cfaaafa4da2a53f229c9fb620c5', '巧克力', '0', '0,', '60', null, '', '1', null, '1', '2017-01-28 22:15:16', '0');
INSERT INTO `goods_category` VALUES ('25840e6bccdb4a419ffdd09d4a15733a', '德芙', '238a6cfaaafa4da2a53f229c9fb620c5', '0,238a6cfaaafa4da2a53f229c9fb620c5,', '30', null, '', '1', null, '1', '2017-01-28 22:15:26', '0');
INSERT INTO `goods_category` VALUES ('3747ef77510142e183c3294922d586f8', '葡萄干', 'f07dadbf553e4fc59ef9b7372b37f619', '0,f07dadbf553e4fc59ef9b7372b37f619,', '60', null, '', '1', '2017-01-28 22:15:45', '1', '2017-01-28 22:15:45', '0');
INSERT INTO `goods_category` VALUES ('4623262cb3504f2198b4281d91c77d24', '话梅', 'f07dadbf553e4fc59ef9b7372b37f619', '0,f07dadbf553e4fc59ef9b7372b37f619,', '30', null, '', '1', null, '1', '2017-01-28 22:30:12', '0');
INSERT INTO `goods_category` VALUES ('80efdba9d25f4430a7c534161ebef4d6', 'A-1-1-1', 'dfb3dfb97b32424bbeef116e41e81ca3', '0,b500f1fe3fef4bb7a86e9b29ab5779af,e261279b266d4921add360a19c0d1b86,dfb3dfb97b32424bbeef116e41e81ca3,', '30', null, '', '1', null, '1', '2016-09-28 22:39:22', '1');
INSERT INTO `goods_category` VALUES ('93027bf4100d4301af59ae3b8e83f501', '夏威夷果', 'b500f1fe3fef4bb7a86e9b29ab5779af', '0,b500f1fe3fef4bb7a86e9b29ab5779af,', '20', null, '', '1', null, '1', '2017-01-28 22:14:44', '0');
INSERT INTO `goods_category` VALUES ('b500f1fe3fef4bb7a86e9b29ab5779af', '坚果炒货', '0', '0,', '30', null, '', '1', null, '1', '2017-01-28 22:14:34', '0');
INSERT INTO `goods_category` VALUES ('dfb3dfb97b32424bbeef116e41e81ca3', 'A-1-1', 'e261279b266d4921add360a19c0d1b86', '0,b500f1fe3fef4bb7a86e9b29ab5779af,e261279b266d4921add360a19c0d1b86,', '30', null, '', '1', null, '1', '2016-09-28 22:39:13', '1');
INSERT INTO `goods_category` VALUES ('e261279b266d4921add360a19c0d1b86', '杏仁', 'b500f1fe3fef4bb7a86e9b29ab5779af', '0,b500f1fe3fef4bb7a86e9b29ab5779af,', '30', null, '', '1', null, '1', '2017-01-28 22:14:54', '0');
INSERT INTO `goods_category` VALUES ('f07dadbf553e4fc59ef9b7372b37f619', '蜜饯果脯', '0', '0,', '10', '/losonkei/photos/images/goods/GD170128223724368888/4.jpg', '', '1', null, '1', '2017-03-04 21:39:33', '0');

-- ----------------------------
-- Table structure for goods_specification
-- ----------------------------
DROP TABLE IF EXISTS `goods_specification`;
CREATE TABLE `goods_specification` (
  `id` varchar(64) NOT NULL COMMENT '商品规格id',
  `specification_name` varchar(32) DEFAULT NULL COMMENT '规格名称',
  `required` char(1) NOT NULL DEFAULT '0' COMMENT '0非必须1必须',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Records of goods_specification
-- ----------------------------
INSERT INTO `goods_specification` VALUES ('360bc8a508b34349aa3d6d63ef0c7e37', '分量', '0', '20', '', '1', '2016-10-04 01:48:19', '1', '2017-02-03 16:45:56', '0');
INSERT INTO `goods_specification` VALUES ('714053c7a6f747ce83a469fe8f64eced', '规格1', '0', '30', '', '1', '2016-10-06 00:32:06', '1', '2016-10-06 00:32:06', '1');
INSERT INTO `goods_specification` VALUES ('a918c6b27212481e810e09fe40a65732', '规格2', '1', '40', '', '1', '2016-10-06 00:32:19', '1', '2016-10-06 00:32:19', '1');
INSERT INTO `goods_specification` VALUES ('b3ac3f772bed49f1b4eb7c7443bd2c7b', '规格3', '0', '90', '', '1', '2016-11-12 19:40:14', '1', '2016-11-12 19:40:14', '1');
INSERT INTO `goods_specification` VALUES ('c2a3e6ee3e0c4d7ca658543549926bcb', '口味', '0', '10', '', '1', '2016-10-04 01:44:49', '1', '2017-01-28 22:33:05', '0');
INSERT INTO `goods_specification` VALUES ('d35fdcc7471940b193bf3f0fddeed2fa', 'test', '0', '30', '', '1', '2017-02-03 00:40:22', '1', '2017-02-03 00:40:22', '0');

-- ----------------------------
-- Table structure for goods_specification_value
-- ----------------------------
DROP TABLE IF EXISTS `goods_specification_value`;
CREATE TABLE `goods_specification_value` (
  `id` varchar(64) NOT NULL COMMENT '商品规格值id',
  `specification_id` varchar(64) DEFAULT NULL COMMENT '规格id',
  `specification_value` varchar(64) DEFAULT NULL COMMENT '规格值',
  `goods_id` varchar(64) DEFAULT NULL COMMENT '商品id',
  `specification_group` int(11) DEFAULT NULL COMMENT '多个规格值为一组，一个goods对应多个组',
  `img_url` varchar(512) DEFAULT NULL COMMENT '图片url，点击某个规格后可以根据此url替换画册图片',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品规格值表(参与购买)';

-- ----------------------------
-- Records of goods_specification_value
-- ----------------------------
INSERT INTO `goods_specification_value` VALUES ('01f8bbe0d9f6418b908f5d3c30e4f089', 'c2a3e6ee3e0c4d7ca658543549926bcb', '阿斯顿', '1', '322', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_specification_value` VALUES ('0278a8b589794620be0bac4a305db8aa', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', '1', '32', null, null, '1', '2016-11-14 00:09:36', '1', '2016-11-22 22:27:11', '1');
INSERT INTO `goods_specification_value` VALUES ('02e0533a633e4d7e8bc1c77c41399a31', '360bc8a508b34349aa3d6d63ef0c7e37', '阿斯顿', '1', '32', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:11', '0');
INSERT INTO `goods_specification_value` VALUES ('05c31c8b2171429bb5103158fbad7b78', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD161209021826755624', '10', null, null, '1', '2017-03-05 01:22:20', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('1', '360bc8a508b34349aa3d6d63ef0c7e37', '', '1', '113', null, null, null, null, '1', '2016-11-22 22:27:11', '0');
INSERT INTO `goods_specification_value` VALUES ('15f443dcc1df418798cb157ae75ebf77', 'a918c6b27212481e810e09fe40a65732', 'c', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '1');
INSERT INTO `goods_specification_value` VALUES ('1cff0fb274bd4961afaf511f4cf71c68', 'c2a3e6ee3e0c4d7ca658543549926bcb', '啥', 'GD161209021826755624', '20', null, null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('1e33668f17364d6f8883056f0106078b', 'a918c6b27212481e810e09fe40a65732', '呵呵', '1', '113', null, null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('2', '714053c7a6f747ce83a469fe8f64eced', '王', '1', '113', null, null, null, null, '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('24f31ae9fea84ae28fa6ac4bb5536149', 'a918c6b27212481e810e09fe40a65732', '啊', 'GD161209021826755624', '10', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('27c6cbaa9713419eb01e1bf4b7330144', '714053c7a6f747ce83a469fe8f64eced', '大青蛙', '1', '221', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('2a5d88c966834a648ad1fc14aa67dfdd', 'c2a3e6ee3e0c4d7ca658543549926bcb', '天', 'GD161209021826755624', '10', null, null, '1', '2016-12-09 02:18:27', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('357b52037af948d3930f93135e769b13', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'GD161209021826755624', '20', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('35defef76c734c83951dd95122a24ee3', '360bc8a508b34349aa3d6d63ef0c7e37', '', 'GD161209021826755624', '10', null, null, '1', '2016-12-09 02:18:27', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('365fc0b02f194de39034f6235a75cdb6', 'c2a3e6ee3e0c4d7ca658543549926bcb', '苦', 'GD170128223724368888', '15', null, null, '1', '2017-02-03 00:39:37', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('437002fc5e4d4e289404264464a829c4', '714053c7a6f747ce83a469fe8f64eced', '', 'GD161209021826755624', '10', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('49f1e0c9773946bfabf40c7903f34714', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD161122234125265126', '10', null, null, '1', '2017-02-03 15:40:55', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_specification_value` VALUES ('4bd859e2ac8c46a98cc50d757fc41c49', '714053c7a6f747ce83a469fe8f64eced', '', 'GD161122234125265126', '10', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');
INSERT INTO `goods_specification_value` VALUES ('5321ff1cf1474b8c8592ae2d879a4158', '714053c7a6f747ce83a469fe8f64eced', '', '1', '322', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('540d954e01024f0c926681ee7db99b7e', '360bc8a508b34349aa3d6d63ef0c7e37', '400g', 'GD170128223724368888', '10', null, null, '1', '2017-01-28 22:37:24', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('57f498e2fa27465b9029f75e4c624c68', 'a918c6b27212481e810e09fe40a65732', '大', 'GD161122234125265126', '10', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');
INSERT INTO `goods_specification_value` VALUES ('5896dad1b96444b8b75532c246269615', 'c2a3e6ee3e0c4d7ca658543549926bcb', '甜', 'GD170128223724368888', '10', null, null, '1', '2017-02-02 23:41:21', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('5bfde4e426ad409e889c88c7e67efddb', '360bc8a508b34349aa3d6d63ef0c7e37', '200g', 'GD161122234125265126', '10', null, null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_specification_value` VALUES ('66b3525c4b6542f7ac4cbbdd9236bac8', '360bc8a508b34349aa3d6d63ef0c7e37', '200g', 'GD170128223724368888', '5', null, null, '1', '2017-02-02 23:41:21', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('721f609272fa48039d89ff4faf212eda', 'a918c6b27212481e810e09fe40a65732', '逼', 'GD161209021826755624', '20', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('7577004bb7494aba85f64ebbb77afa7c', 'c2a3e6ee3e0c4d7ca658543549926bcb', '撒', '1', '32', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:11', '0');
INSERT INTO `goods_specification_value` VALUES ('7707c23080e64aeebcc549cb525842fb', '714053c7a6f747ce83a469fe8f64eced', '', 'GD161209021826755624', '20', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('7a4461ec6a8e42069f9053f95adc09f0', 'c2a3e6ee3e0c4d7ca658543549926bcb', '', 'GD161122233029614136', '10', null, null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_specification_value` VALUES ('81916386ea194f8384d3b55829fa9d67', '360bc8a508b34349aa3d6d63ef0c7e37', '', 'GD161209021826755624', '20', null, null, '1', '2016-12-09 02:18:29', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('820e03fa74bf4805abb3025a680dd125', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD170128223724368888', '15', null, null, '1', '2017-02-03 00:40:44', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('838f299b05a7458d9fd90b88cb69e290', '360bc8a508b34349aa3d6d63ef0c7e37', '', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '0');
INSERT INTO `goods_specification_value` VALUES ('880d31e4474d47f5bafa543136990744', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, null, '1', '2016-11-23 20:37:33', '1', '2016-12-03 16:43:18', '1');
INSERT INTO `goods_specification_value` VALUES ('8df3e801abf14d3b84edf6458524e156', 'c2a3e6ee3e0c4d7ca658543549926bcb', '哈哈', '1', '113', null, null, '1', '2016-11-12 02:11:14', '1', '2016-11-22 22:27:11', '0');
INSERT INTO `goods_specification_value` VALUES ('914d7b30705b4d0d9007174f829636d7', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', '1', '113', null, null, '1', '2016-11-14 00:09:36', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('921231d40dcc47ec9ad66985eac2ac0b', 'c2a3e6ee3e0c4d7ca658543549926bcb', '暗示1', '1', '221', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_specification_value` VALUES ('942abd7f1e9e425fa1d79a5ca1141064', '714053c7a6f747ce83a469fe8f64eced', '', '1', '32', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:11', '1');
INSERT INTO `goods_specification_value` VALUES ('966869a8bbc44283a98aac354628109b', 'a918c6b27212481e810e09fe40a65732', '小', 'GD161122233029614136', '10', null, null, '1', '2016-11-22 23:32:26', '1', '2017-01-28 18:10:41', '1');
INSERT INTO `goods_specification_value` VALUES ('99af0f9378c04b17bcb4502186b343ea', 'a918c6b27212481e810e09fe40a65732', '苦', 'GD161122234125265126', '20', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');
INSERT INTO `goods_specification_value` VALUES ('99c4e577547c43e08f73fbfe4f9dece0', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD170128223724368888', '5', null, null, '1', '2017-02-03 00:40:44', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('a0fdc417382d467e9b0658632acb756f', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'GD161122233029614136', '10', null, null, '1', '2016-11-22 23:32:26', '1', '2017-01-28 18:10:41', '1');
INSERT INTO `goods_specification_value` VALUES ('a55d0bf45d46404882b4080ed9a62b86', 'c2a3e6ee3e0c4d7ca658543549926bcb', 'asd', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '0');
INSERT INTO `goods_specification_value` VALUES ('adee83ac49f14a9eab51368455bc9a6a', 'c2a3e6ee3e0c4d7ca658543549926bcb', '甜', 'GD170128223724368888', '5', null, null, '1', '2017-01-28 22:37:24', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('aef4746aa24e45bb92b80f55c7d5f1a8', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD161209021826755624', '20', null, null, '1', '2017-03-05 01:22:20', '1', '2017-03-05 01:22:20', '0');
INSERT INTO `goods_specification_value` VALUES ('ba98f57d4afc43bbb4c1a9a3b07d0d47', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'GD161209021826755624', '10', null, null, '1', '2016-12-09 02:18:29', '1', '2017-01-28 18:13:02', '1');
INSERT INTO `goods_specification_value` VALUES ('bba04492988a47cd9ce25beb30fbab2f', '360bc8a508b34349aa3d6d63ef0c7e37', '', 'GD161122233029614136', '10', null, null, '1', '2016-11-22 23:32:26', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_specification_value` VALUES ('be542329cca24e9ea8fed1202b3bbae2', '714053c7a6f747ce83a469fe8f64eced', '', 'b40f9a17d53b43cfbc4fcd5e24776b4f', '32', null, null, '1', '2016-11-12 02:34:31', '1', '2016-12-03 16:43:17', '1');
INSERT INTO `goods_specification_value` VALUES ('c2aff97fcbab456cb633f53fe717385e', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD161122233029614136', '10', null, null, '1', '2017-02-03 16:46:03', '1', '2017-02-16 20:56:51', '0');
INSERT INTO `goods_specification_value` VALUES ('c459f8d661bb4c1fb1bda829e4feee2f', 'a918c6b27212481e810e09fe40a65732', '菜单', '1', '32', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:11', '1');
INSERT INTO `goods_specification_value` VALUES ('d1960c1d168f41ecaa7ee8f9af4c871d', 'a918c6b27212481e810e09fe40a65732', '长度', '1', '221', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('d5952be196954c719378a9fcee2d9966', '714053c7a6f747ce83a469fe8f64eced', '', 'GD161122234125265126', '20', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');
INSERT INTO `goods_specification_value` VALUES ('d98dded91448478cac01b59509d4c094', '360bc8a508b34349aa3d6d63ef0c7e37', '', '1', '221', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_specification_value` VALUES ('da5b006936e648619a7c71e0377b5f60', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', '1', '322', null, null, '1', '2016-11-14 00:09:37', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('db05ade46b7e4dd5a42375cbd25f75cf', 'a918c6b27212481e810e09fe40a65732', '传递', '1', '322', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('db5a299bf7e34cb9b1aa769c6b8d5b6d', '714053c7a6f747ce83a469fe8f64eced', '', 'GD161122233029614136', '10', null, null, '1', '2016-11-22 23:32:26', '1', '2017-01-28 18:10:41', '1');
INSERT INTO `goods_specification_value` VALUES ('e365f0da6e0541359976631bd35d9f8f', '360bc8a508b34349aa3d6d63ef0c7e37', '查', '1', '322', null, null, '1', '2016-11-12 02:30:52', '1', '2016-11-22 22:27:12', '0');
INSERT INTO `goods_specification_value` VALUES ('ec3e3ea877504406b74ab99b5a3944ee', '360bc8a508b34349aa3d6d63ef0c7e37', '400g', 'GD170128223724368888', '15', null, null, '1', '2017-02-03 00:39:37', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('f07be0c2bd224e7b985edc8a58a77186', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'GD161122234125265126', '20', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');
INSERT INTO `goods_specification_value` VALUES ('f21c87e233ca4579af5bab6de040a0c9', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', '1', '221', null, null, '1', '2016-11-14 00:09:36', '1', '2016-11-22 22:27:12', '1');
INSERT INTO `goods_specification_value` VALUES ('f8832d51e0a44083b127f254c2870313', 'd35fdcc7471940b193bf3f0fddeed2fa', '', 'GD170128223724368888', '10', null, null, '1', '2017-02-03 00:40:44', '1', '2017-02-25 20:56:50', '0');
INSERT INTO `goods_specification_value` VALUES ('fd7f22ec3d6a4cd683606eb8bb36f749', 'c2a3e6ee3e0c4d7ca658543549926bcb', '', 'GD161122234125265126', '10', null, null, '1', '2016-11-22 23:41:25', '1', '2017-02-18 15:09:30', '0');
INSERT INTO `goods_specification_value` VALUES ('fdcfab96bf2741d899387cf771cdcbd8', 'b3ac3f772bed49f1b4eb7c7443bd2c7b', '', 'GD161122234125265126', '10', null, null, '1', '2016-11-22 23:41:25', '1', '2017-01-28 18:08:59', '1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(64) NOT NULL COMMENT '会员id',
  `member_account` varchar(64) NOT NULL COMMENT '会员账号',
  `member_name` varchar(64) NOT NULL COMMENT '会员名称',
  `member_truename` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `member_pwd` varchar(64) NOT NULL COMMENT '会员密码',
  `member_paypwd` varchar(64) DEFAULT NULL COMMENT '支付密码',
  `member_addtime` datetime NOT NULL COMMENT '注册时间',
  `member_points` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  `member_state` tinyint(4) NOT NULL DEFAULT '1' COMMENT '启用状态： 0为禁用，1为启用',
  `member_loginnum` int(10) unsigned DEFAULT '0' COMMENT '登录次数',
  `member_balance` decimal(10,2) DEFAULT '0.00' COMMENT '会员余额',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_account` (`member_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员信息表';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('051abfc12fbd44dd8ab7a9ddda338f28', 'admin', '哈哈', null, 'c836913e924b1803f6174aefcea75fa8ce2dd0634f92057867955d90', null, '2017-01-02 21:17:02', '0', '0', '0', '0.00', null, null, null, null, null, '0');
INSERT INTO `member` VALUES ('098496860f344131a1e12b637e79bc55', 'admin5', 'admin', '', '4808d3a0d6eb1bd5a3fdeb2b8261f56ed1d8205bc0e86c430f0a2c74', 'a66201d7468529cdf5511ff78010ca48353dc34c8cf037f6052d0965', '2017-01-06 01:26:58', '0', '1', '0', '2000.00', null, null, '2017-01-06 01:26:58', null, '2017-01-06 01:26:58', '0');
INSERT INTO `member` VALUES ('6208d210898143e6a6939c321084fecc', 'admin2', '超级会员', '彦', '347c0643145d287f589c4b374502190692f735a9b3363542192615b6', '96542946cad4bb37a6753356c6bb85cd33dd0bb53dcd16515b034089', '2017-01-05 01:10:01', '1587', '1', '62', '409.60', '666', null, '2017-01-05 01:10:01', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:20', '0');
INSERT INTO `member` VALUES ('8592201f3e7940d8bedaf05c4f42f3cc', 'admin3', 'admin', '', '82958f986810b0d12da61dfad96625f0e9698d6a7140eb5f79667010', '098d50f4063e8d747d0a9dc3d8c2e849e51a1e84755c7f4d42096e09', '2017-01-06 01:23:27', '437', '1', '19', '1562.00', null, null, '2017-01-06 01:23:27', '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-26 00:05:14', '0');
INSERT INTO `member` VALUES ('a8a8aeb84f6f4090b5fc4f4190790ea1', 'admin4', 'admin', '', 'c4cf69762d92c229dbffea2b881ed9c705d483da375b6f8546a188ac', '178f3d3ee4b02ba8ccc8a8187460d2e17bdb2c3b4109d4d684ebc4c3', '2017-01-06 01:25:08', '0', '1', '2', '2000.00', null, null, '2017-01-06 01:25:08', null, '2017-01-06 01:25:08', '0');
INSERT INTO `member` VALUES ('aaaa1a37ea4f4092aca5725943e3d196', 'Yan', 'Yan', '', 'aa70b99363b6e0e9075f4193b064952334040bf915fc729a595b39b1', 'ccf3fb7dbcd0440391407776d239f17c4ba9529d05012815e637e78f', '2017-03-07 00:33:53', '0', '1', '1', '2000.00', null, 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:33:53', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:33:53', '0');

-- ----------------------------
-- Table structure for member_account
-- ----------------------------
DROP TABLE IF EXISTS `member_account`;
CREATE TABLE `member_account` (
  `id` varchar(64) NOT NULL COMMENT '资金流动id',
  `member_id` varchar(64) DEFAULT NULL COMMENT '会员id',
  `process_type` tinyint(4) DEFAULT NULL COMMENT '操作类型:0充值，1付款，2退款',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '资金变化数目，正为增，负为减',
  `payment` tinyint(4) DEFAULT NULL COMMENT '支付方式',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员资金流动表';

-- ----------------------------
-- Records of member_account
-- ----------------------------
INSERT INTO `member_account` VALUES ('086f222aed72499db2d768016d4bf2db', '6208d210898143e6a6939c321084fecc', '2', '22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:21', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:21', '0');
INSERT INTO `member_account` VALUES ('0fc61513f61e4b0b8e81a62b47032886', '6208d210898143e6a6939c321084fecc', '1', '-45.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:11:18', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:11:18', '0');
INSERT INTO `member_account` VALUES ('437c8f0cc4d64495b7c16bed61d6c93b', '6208d210898143e6a6939c321084fecc', '1', '-22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:27', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:27', '0');
INSERT INTO `member_account` VALUES ('591553c175454bfea22f98a0e516bb53', '6208d210898143e6a6939c321084fecc', '1', '-68.40', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:10', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:10', '0');
INSERT INTO `member_account` VALUES ('61029ffd4ed548d9891b1a35102d341c', '6208d210898143e6a6939c321084fecc', '1', '-22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:25', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:25', '0');
INSERT INTO `member_account` VALUES ('66119083266a4e2cb46e092436d03fd5', '6208d210898143e6a6939c321084fecc', '1', '-22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:21', '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:21', '0');
INSERT INTO `member_account` VALUES ('6bf98ce36a0449fe9c9cc5cf23906121', '6208d210898143e6a6939c321084fecc', '2', '109.60', '0', null, 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:57', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:57', '0');
INSERT INTO `member_account` VALUES ('73b4e627e32642d2b1779ad478b8376d', '8592201f3e7940d8bedaf05c4f42f3cc', '1', '-273.60', '0', null, '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-25 23:50:41', '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-25 23:50:41', '0');
INSERT INTO `member_account` VALUES ('75685acdb6b54d5ea65504f403fd0486', '6208d210898143e6a6939c321084fecc', '1', '-22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:20', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:20', '0');
INSERT INTO `member_account` VALUES ('7fcdca3babea4dbcab4615ebc75dfbe4', '6208d210898143e6a6939c321084fecc', '1', '-1408.00', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:58:21', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:58:21', '0');
INSERT INTO `member_account` VALUES ('8b1c708fc14e43b9a8854b73901780bc', '6208d210898143e6a6939c321084fecc', '2', '22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:46', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:46', '0');
INSERT INTO `member_account` VALUES ('9e78db98fc784aec9e283e11baac250d', '6208d210898143e6a6939c321084fecc', '1', '-109.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:39', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:39', '0');
INSERT INTO `member_account` VALUES ('a33b89d250d04275b7ea6a3b7352e255', '8592201f3e7940d8bedaf05c4f42f3cc', '1', '-164.40', '0', null, '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-26 00:05:14', '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-26 00:05:14', '0');
INSERT INTO `member_account` VALUES ('a6fca6912c644e9ea0dc45b1b1167f51', '6208d210898143e6a6939c321084fecc', '2', '45.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '0');
INSERT INTO `member_account` VALUES ('af29ad52411241259ee5f137ee0b97d0', '6208d210898143e6a6939c321084fecc', '1', '-45.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:20', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:20', '0');
INSERT INTO `member_account` VALUES ('af8a8ee5eb6d489a8ddcbc5533424ee5', '6208d210898143e6a6939c321084fecc', '1', '-22.80', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:16', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:16', '0');
INSERT INTO `member_account` VALUES ('b5e9659925d44d079d571f226ab4f1bf', '6208d210898143e6a6939c321084fecc', '1', '-45.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:17', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:17', '0');
INSERT INTO `member_account` VALUES ('b85ed03eb41049d88576b136ba3e74e5', '6208d210898143e6a6939c321084fecc', '2', '45.60', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:58', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:58', '0');
INSERT INTO `member_account` VALUES ('dsad211', '6208d210898143e6a6939c321084fecc', '0', '99.00', '0', null, '6208d210898143e6a6939c321084fecc', '2017-02-09 00:35:14', '6208d210898143e6a6939c321084fecc', '2017-02-09 00:35:18', '0');
INSERT INTO `member_account` VALUES ('e5ec4d7a6f294fc8b88748530384bf33', '6208d210898143e6a6939c321084fecc', '2', '68.40', '0', null, 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:08', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:08', '0');

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address` (
  `id` varchar(64) NOT NULL COMMENT '地址id',
  `area_id` varchar(32) DEFAULT NULL COMMENT '所在地区id',
  `city_id` varchar(32) DEFAULT NULL COMMENT '所在城市id',
  `province_id` varchar(32) DEFAULT NULL COMMENT '所在省份id',
  `address` varchar(128) DEFAULT NULL COMMENT '地址',
  `default_flag` char(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址，0否，1是',
  `member_id` varchar(64) DEFAULT NULL COMMENT '会员id',
  `true_name` varchar(64) DEFAULT NULL COMMENT '收件人',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

-- ----------------------------
-- Records of member_address
-- ----------------------------
INSERT INTO `member_address` VALUES ('940d55308179499991a230c28ac280c3', '2071', '234', '19', '广东药科大学中山校区', '1', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', null, '6208d210898143e6a6939c321084fecc', '2017-02-08 00:07:33', '6208d210898143e6a6939c321084fecc', '2017-02-18 13:53:43', '0');
INSERT INTO `member_address` VALUES ('a6e5a5a254f1407f91cbdda3d104a9cb', '1080', '111', '10', '非诚勿扰', '0', '6208d210898143e6a6939c321084fecc', '张俊彦', '10086', null, '6208d210898143e6a6939c321084fecc', '2017-02-16 00:13:00', '6208d210898143e6a6939c321084fecc', '2017-02-18 13:53:43', '0');
INSERT INTO `member_address` VALUES ('bf362d9f19004dbdb01a170b0a3b9bf3', '2069', '234', '19', '测试', '1', '6208d210898143e6a6939c321084fecc', null, null, null, '6208d210898143e6a6939c321084fecc', '2017-02-08 00:02:04', '6208d210898143e6a6939c321084fecc', '2017-02-08 00:02:04', '1');
INSERT INTO `member_address` VALUES ('c40562876b9f48468cba48545bc470f5', '1200', '126', '11', '广药', '1', '8592201f3e7940d8bedaf05c4f42f3cc', 'zjy', '133213', null, '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-19 23:04:47', '8592201f3e7940d8bedaf05c4f42f3cc', '2017-02-19 23:04:47', '0');
INSERT INTO `member_address` VALUES ('f6e0345041c34567a41162fb9e391339', null, '251', '19', '广东药科大学', '1', 'a8a8aeb84f6f4090b5fc4f4190790ea1', '张俊彦', '10086', null, 'a8a8aeb84f6f4090b5fc4f4190790ea1', '2017-02-25 20:52:18', 'a8a8aeb84f6f4090b5fc4f4190790ea1', '2017-02-25 20:52:18', '0');

-- ----------------------------
-- Table structure for member_details
-- ----------------------------
DROP TABLE IF EXISTS `member_details`;
CREATE TABLE `member_details` (
  `id` varchar(64) NOT NULL COMMENT '会员id',
  `member_sex` tinyint(4) DEFAULT NULL COMMENT '会员性别：0为女，男为1',
  `member_birthday` date DEFAULT NULL COMMENT '生日',
  `member_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `member_mobile` varchar(20) DEFAULT NULL COMMENT '移动电话',
  `member_qq` varchar(20) DEFAULT NULL COMMENT 'QQ号码',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员详细信息表';

-- ----------------------------
-- Records of member_details
-- ----------------------------
INSERT INTO `member_details` VALUES ('098496860f344131a1e12b637e79bc55', null, '2017-01-06', '666', 'qwe', 'qdq', null, null, '2017-01-06 01:26:58', null, '2017-01-06 01:26:58', '0');
INSERT INTO `member_details` VALUES ('6208d210898143e6a6939c321084fecc', '0', '2017-02-16', '222222222@qq.com', '13533333333', '222222228', null, null, '2017-01-05 01:10:01', '6208d210898143e6a6939c321084fecc', '2017-02-07 00:20:56', '0');
INSERT INTO `member_details` VALUES ('8592201f3e7940d8bedaf05c4f42f3cc', null, null, '', '', '', null, null, '2017-01-06 01:23:27', null, '2017-01-06 01:23:27', '0');
INSERT INTO `member_details` VALUES ('a8a8aeb84f6f4090b5fc4f4190790ea1', null, null, '666', '', '', null, null, '2017-01-06 01:25:08', null, '2017-01-06 01:25:08', '0');
INSERT INTO `member_details` VALUES ('aaaa1a37ea4f4092aca5725943e3d196', null, null, '', '', '', null, 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:33:53', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:33:53', '0');

-- ----------------------------
-- Table structure for member_note
-- ----------------------------
DROP TABLE IF EXISTS `member_note`;
CREATE TABLE `member_note` (
  `id` varchar(64) NOT NULL COMMENT '搜索记录id',
  `content` text COMMENT '消息内容',
  `member_id` varchar(64) DEFAULT NULL COMMENT '会员id',
  `orders_id` varchar(64) DEFAULT NULL COMMENT '订单id，有时填写',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) CHARACTER SET swe7 NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员消息';

-- ----------------------------
-- Records of member_note
-- ----------------------------
INSERT INTO `member_note` VALUES ('0073b3f597f4463f8c3ecbde95f6a58d', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306011811869847', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:17', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:17', '0');
INSERT INTO `member_note` VALUES ('035024d3cf484ac48fb1fcba3cab1598', '您的退款已到账，请查收！', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:08', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:08', '0');
INSERT INTO `member_note` VALUES ('05190f56761047f788c942462a777100', '您退款已到账，请查收！。', '6208d210898143e6a6939c321084fecc', 'OD170306011321128230', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:21', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:21', '0');
INSERT INTO `member_note` VALUES ('14b576b5fe1449f1a38b8865594a07be', '抱歉，您的退货请求审核不通过，请联系客服人员。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 00:57:30', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 00:57:30', '0');
INSERT INTO `member_note` VALUES ('21b99b4be6c845ad85f8332de2c32f4b', '您退款已到账，请查收！。', '6208d210898143e6a6939c321084fecc', 'OD170302013817825471', null, 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:57', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:57', '0');
INSERT INTO `member_note` VALUES ('26ab8a090d6642bdaa53897eee3230e3', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170303002907011214', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-05 22:52:49', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-05 22:52:49', '0');
INSERT INTO `member_note` VALUES ('27b8ee4db4884f9fb8e8c6b073ca199f', '您已确认收货！如需退货，请在7个工作日内进行申请。', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:32:28', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:32:28', '0');
INSERT INTO `member_note` VALUES ('28184a1bd3d8493c8d206c9f1b3b4e27', '抱歉，您的订单被确认为无效，稍后将会退款。', '6208d210898143e6a6939c321084fecc', 'OD170302013817825471', null, 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:56', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-02 01:41:56', '0');
INSERT INTO `member_note` VALUES ('29d090e7743943bbbccfa186e54fdd47', '您已确认收货！如需退货，请在7个工作日内进行申请。', '6208d210898143e6a6939c321084fecc', 'OD170306011811869847', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:20:10', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:20:10', '0');
INSERT INTO `member_note` VALUES ('33d9bc2ebe2a407c9e6819e2e26535f6', '您退款已到账，请查收！。', '6208d210898143e6a6939c321084fecc', 'OD170306002110243839', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:58', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:58', '0');
INSERT INTO `member_note` VALUES ('367b6babacac4d9e99b6fb9da48f7825', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170308014106891953', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:20', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:20', '0');
INSERT INTO `member_note` VALUES ('3de11968f8754aa1b976cc4ccb9db0d7', '您已确认收货！如需退货，请在7个工作日内进行申请。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:54:45', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:54:45', '0');
INSERT INTO `member_note` VALUES ('43f75f65aad64c3fb00519bde1ce3038', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306002110243839', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:17', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:17', '0');
INSERT INTO `member_note` VALUES ('4ac4b3e60861471f833a79182db0e9c3', '您退款已到账，请查收！。', '6208d210898143e6a6939c321084fecc', 'OD170306011717196662', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:46', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:46', '0');
INSERT INTO `member_note` VALUES ('4f4b63942e9340c9b41da75af0ce5188', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:05', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:05', '0');
INSERT INTO `member_note` VALUES ('5098256bb0074844a3430cf9bc2344f0', '您的退货请求已提交，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:33:02', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:33:02', '0');
INSERT INTO `member_note` VALUES ('5142cd875b9a48fba954bd47e3393aab', '您的退货请求已审核通过，请于7天内寄回，预期作废', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:36:33', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:36:33', '0');
INSERT INTO `member_note` VALUES ('56e2c31b71bb45719c8c75144ee0eece', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170302015729140087', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:57:29', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:57:29', '0');
INSERT INTO `member_note` VALUES ('58331882db1d4fea996f1536dafc3c9c', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306002110243839', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 00:25:54', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 00:25:54', '0');
INSERT INTO `member_note` VALUES ('5b6ef08851ee4540a0177e7fec851d49', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170305231057850534', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:11:19', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:11:19', '0');
INSERT INTO `member_note` VALUES ('65637972add74c1eb6f2df0acd20c99c', '您已取消订单成功！稍后将进行退款。', '6208d210898143e6a6939c321084fecc', 'OD170306011321128230', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:11', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:11', '0');
INSERT INTO `member_note` VALUES ('667fc8813921436cbfe6684f038d71b3', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170302013817825471', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:18', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:18', '0');
INSERT INTO `member_note` VALUES ('6689b233490547c29af3ddefa8967d06', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:56', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:56', '0');
INSERT INTO `member_note` VALUES ('6fc9d8af3e6a43fe8c45d9215836193b', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170308014106891953', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:08', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:08', '0');
INSERT INTO `member_note` VALUES ('70cf0a1999a247148c764fc6879622a0', '您的退货请求已提交，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:54:54', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:54:54', '0');
INSERT INTO `member_note` VALUES ('78d233ef04334236a5e785cd1443d978', '您已确认收货！如需退货，请在7个自然日内进行申请。', '6208d210898143e6a6939c321084fecc', 'OD170308014106891953', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:49:35', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:49:35', '0');
INSERT INTO `member_note` VALUES ('79045d679cf94b309b1b1047a3f403bc', '您退款已到账，请查收！。', '6208d210898143e6a6939c321084fecc', 'OD170305231057850534', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '0');
INSERT INTO `member_note` VALUES ('7a97ebf38a124db0bf7917ed3ce517b5', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170303002907011214', null, '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:21', '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:21', '0');
INSERT INTO `member_note` VALUES ('80a8518ad6974d9c9bbb30c509471ece', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170302015729140087', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:58:21', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:58:21', '0');
INSERT INTO `member_note` VALUES ('80aceae0031d4058b61abeb6a44cc06d', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:21', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:21', '0');
INSERT INTO `member_note` VALUES ('82d7562f067d4e5a9271673782d8d04d', '您已取消订单成功！稍后将进行退款。', '6208d210898143e6a6939c321084fecc', 'OD170306002110243839', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:48', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:36:48', '0');
INSERT INTO `member_note` VALUES ('96075ac609b846519b8d1835182baa81', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:15', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:41:15', '0');
INSERT INTO `member_note` VALUES ('a2429f2bd6fe4302a5fb7a935db9a4d6', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170308014106891953', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:36', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:36', '0');
INSERT INTO `member_note` VALUES ('a2d9b880bc9a4881b2e990ff114e1d93', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306011321128230', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:22', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:22', '0');
INSERT INTO `member_note` VALUES ('ab2b43ff3b024ea8965a2e2fd791213b', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306011321128230', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:27', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:27', '0');
INSERT INTO `member_note` VALUES ('b8014cb7304e429d80b6ae195eda78c0', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306011717196662', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:25', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:25', '0');
INSERT INTO `member_note` VALUES ('bbc9a766d59243e79b2c36c4f8381beb', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306012504990362', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:11', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:11', '0');
INSERT INTO `member_note` VALUES ('be213e0806464b3daf83f153f595cb7b', '您的退货请求已提交，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170308014106891953', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:53:50', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:53:50', '0');
INSERT INTO `member_note` VALUES ('d9ad8e43b7a945ae8762a8d202ccfb58', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306004114878990', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 00:43:01', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 00:43:01', '0');
INSERT INTO `member_note` VALUES ('d9cfa7f52fd84344b991f5212bce25a4', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306011811869847', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:12', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:12', '0');
INSERT INTO `member_note` VALUES ('dfa5fc196c35479eae3987017e43c67d', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170303002907011214', null, '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:08', '6208d210898143e6a6939c321084fecc', '2017-03-03 00:29:08', '0');
INSERT INTO `member_note` VALUES ('f1a8d5e9000f4617b0f7b6024bf41f7b', '支付成功，您的订单已被受理，请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170302013817825471', null, '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:39', '6208d210898143e6a6939c321084fecc', '2017-03-02 01:38:39', '0');
INSERT INTO `member_note` VALUES ('f3f4c8c654be4b679fbeb20c69a0466d', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306002110243839', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:10', '6208d210898143e6a6939c321084fecc', '2017-03-06 00:21:10', '0');
INSERT INTO `member_note` VALUES ('f57ba48424b942eb83c881f44e12b39f', '您已取消订单成功！稍后将进行退款。', '6208d210898143e6a6939c321084fecc', 'OD170305231057850534', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:22:36', '0');
INSERT INTO `member_note` VALUES ('f5992df4eca841ab984f9aa4c6e84681', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170305231057850534', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-05 23:13:47', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-05 23:13:47', '0');
INSERT INTO `member_note` VALUES ('f91b4387e4394a7991ad60648523bc25', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170306011717196662', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:18', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:18', '0');
INSERT INTO `member_note` VALUES ('fb64258e8813461bad5608979bdc17d4', '您的订单发货啦！请耐心等待。', '6208d210898143e6a6939c321084fecc', 'OD170306011811869847', null, 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:55', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:55', '0');
INSERT INTO `member_note` VALUES ('fb947d5d224a4634bbb85bf60ed6c4b1', '您刚下了一个订单，请在15分钟内完成支付。', '6208d210898143e6a6939c321084fecc', 'OD170305231057850534', null, '6208d210898143e6a6939c321084fecc', '2017-03-05 23:10:58', '6208d210898143e6a6939c321084fecc', '2017-03-05 23:10:58', '0');
INSERT INTO `member_note` VALUES ('fc0a4cec06a548a9a10cd270d381e5d7', '您已取消订单成功！稍后将进行退款。', '6208d210898143e6a6939c321084fecc', 'OD170306011717196662', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:36', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:36', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL COMMENT '订单id',
  `member_id` varchar(64) DEFAULT NULL COMMENT '会员id',
  `true_name` varchar(64) DEFAULT NULL COMMENT '会员名',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话号码',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例id',
  `process_state` varchar(32) DEFAULT NULL COMMENT '当前流程状态',
  `price_all` decimal(10,2) DEFAULT NULL COMMENT '总售价，该字段用于会员付款，付款前可以调整售价，例如打个折',
  `cost_all` decimal(10,0) DEFAULT NULL COMMENT '总成本价',
  `area_id` varchar(32) DEFAULT NULL COMMENT '所在地区id',
  `city_id` varchar(32) DEFAULT NULL COMMENT '所在城市id',
  `province_id` varchar(32) DEFAULT NULL COMMENT '所在省份id',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `orders_state` char(1) DEFAULT NULL COMMENT '1有效，2无效，3用户于待发货时取消，4用户收货后退单，5商家缺货退单',
  `goods_state` char(1) DEFAULT NULL COMMENT '1待发货，2已发货，3已取消，4已退回，5无货，6已收货，7退回中，8逾期退回',
  `pay_state` char(1) DEFAULT NULL COMMENT '1未付款，2已付款，3已退款',
  `flag` char(1) DEFAULT '0' COMMENT '0进行中1交易成功2交易失败,没有盈利都是失败',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `refund` decimal(10,2) DEFAULT NULL COMMENT '退款',
  `income` decimal(10,2) DEFAULT NULL COMMENT '收益，交易成功时price_all-cost_all-refund',
  `reason` text COMMENT '退款理由',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('OD170306011321128230', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', '101', '结束订单', '22.80', '10', '2071', '234', '19', '广东药科大学中山校区', '', '', '3', '2', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:21', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:14:21', '0', null, null, null);
INSERT INTO `orders` VALUES ('OD170306011717196662', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', '201', 'endevent1', '22.80', '10', '2071', '234', '19', '广东药科大学中山校区', '', '', '3', '2', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:17', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:46', '0', null, null, null);
INSERT INTO `orders` VALUES ('OD170306011811869847', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', '231', '完成订单', '22.80', '10', '2071', '234', '19', '广东药科大学中山校区', '1', '2', '2', '1', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:12', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:22:10', '0', null, '12.80', null);
INSERT INTO `orders` VALUES ('OD170306012504990362', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', '288', '完成订单', '68.40', '30', '2071', '234', '19', '广东药科大学中山校区', '1', '4', '3', '2', null, '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:05', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:08', '0', '68.40', '-30.00', null);
INSERT INTO `orders` VALUES ('OD170308014106891953', '6208d210898143e6a6939c321084fecc', '张俊彦', '13922222222', '701', '审核退货', '22.80', '10', '2071', '234', '19', '广东药科大学中山校区', '4', '6', '2', '0', null, '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:07', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:53:50', '0', null, null, '不想要了');

-- ----------------------------
-- Table structure for orders_details
-- ----------------------------
DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE `orders_details` (
  `id` varchar(64) NOT NULL COMMENT '订单详情id',
  `orders_id` varchar(64) DEFAULT NULL COMMENT '订单id',
  `goods_no` varchar(64) DEFAULT NULL COMMENT 'goods_all goods_no',
  `goods_amount` int(11) DEFAULT '1' COMMENT '购买数量',
  `cost` decimal(10,2) DEFAULT NULL COMMENT '单个成本',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单个售价，直接等于商品售价',
  `price_all` decimal(10,2) DEFAULT NULL COMMENT 'amount个商品的总售价',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `back_amount` int(11) DEFAULT NULL COMMENT '退货数量',
  `back_qualified_amount` int(11) DEFAULT NULL COMMENT '退货数量',
  PRIMARY KEY (`id`),
  KEY `orders_id` (`orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of orders_details
-- ----------------------------
INSERT INTO `orders_details` VALUES ('218a33ea40f948c7a7daef7ab38944b1', 'OD170306011811869847', 'GA170128223724438417', '1', '10.00', '22.80', '22.80', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食  200g 甜 ', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:12', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:18:12', '0', null, null);
INSERT INTO `orders_details` VALUES ('2361906bd7cc4ccf912048f144129b8f', 'OD170306011321128230', 'GA170128223724438417', '1', '10.00', '22.80', '22.80', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食  200g 甜 ', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:21', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:13:21', '0', null, null);
INSERT INTO `orders_details` VALUES ('4f6576538e5e4c76acdac2e067d22cd2', 'OD170308014106891953', 'GA170128223724438417', '1', '10.00', '22.80', '22.80', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食  200g 甜 ', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:07', '6208d210898143e6a6939c321084fecc', '2017-03-08 01:41:07', '0', null, null);
INSERT INTO `orders_details` VALUES ('79a54292ed084c68b13d5eaa1a85a03d', 'OD170306012504990362', 'GA170128223724438417', '3', '10.00', '22.80', '68.40', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食  200g 甜 ', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:25:05', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:32', '0', '3', '3');
INSERT INTO `orders_details` VALUES ('8b2b36fb0642461da251814099e5a837', 'OD170306011717196662', 'GA170128223724438417', '1', '10.00', '22.80', '22.80', '雪海梅乡_韩话梅200g瓶装 雪花梅蜜饯果脯青梅子果干酸甜休闲零食  200g 甜 ', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:17', '6208d210898143e6a6939c321084fecc', '2017-03-06 01:17:17', '0', null, null);

-- ----------------------------
-- Table structure for product_log
-- ----------------------------
DROP TABLE IF EXISTS `product_log`;
CREATE TABLE `product_log` (
  `id` varchar(64) NOT NULL COMMENT '生产日志id',
  `content` text COMMENT '内容',
  `cost` decimal(10,2) DEFAULT '0.00' COMMENT '花费',
  `product_order_id` varchar(64) DEFAULT NULL COMMENT '生产订单id',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `product_order_id` (`product_order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产日志表';

-- ----------------------------
-- Records of product_log
-- ----------------------------

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order` (
  `id` varchar(64) NOT NULL COMMENT '生产订单id',
  `order_name` varchar(128) DEFAULT NULL COMMENT '生产订单名称',
  `goods_name` varchar(128) DEFAULT NULL COMMENT '商品名称',
  `goods_id` varchar(64) DEFAULT NULL COMMENT '商品id',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例id',
  `process_state` varchar(32) DEFAULT NULL COMMENT '当前流程状态',
  `budget` decimal(10,2) DEFAULT NULL COMMENT '预算',
  `cost_all` decimal(10,2) DEFAULT NULL COMMENT '实际花费：根据product_log更新',
  `success_rate` decimal(7,4) DEFAULT NULL COMMENT '成功率',
  `state` char(1) DEFAULT '0' COMMENT '状态0待发布1生产中2审核中3已完成',
  `product_type` char(1) DEFAULT NULL COMMENT '0已有产品生产，1新产品生产',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产订单表';

-- ----------------------------
-- Records of product_order
-- ----------------------------

-- ----------------------------
-- Table structure for product_order_details
-- ----------------------------
DROP TABLE IF EXISTS `product_order_details`;
CREATE TABLE `product_order_details` (
  `id` varchar(64) NOT NULL COMMENT '生产订单id',
  `product_amount` int(11) DEFAULT NULL COMMENT '生产数量',
  `goods_no` varchar(64) DEFAULT NULL COMMENT 'goods_all的goods_no',
  `product_order_id` varchar(64) DEFAULT NULL COMMENT '生产订单表',
  `success_amount` int(11) DEFAULT '0' COMMENT '状态0待生产1进行中2成功3失败',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `product_order_id` (`product_order_id`) USING BTREE,
  KEY `goods_no` (`goods_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产订单详情表';

-- ----------------------------
-- Records of product_order_details
-- ----------------------------

-- ----------------------------
-- Table structure for search_record
-- ----------------------------
DROP TABLE IF EXISTS `search_record`;
CREATE TABLE `search_record` (
  `id` varchar(64) NOT NULL COMMENT '搜索记录id',
  `search_time` date DEFAULT NULL COMMENT '搜索日期',
  `content` varchar(100) DEFAULT NULL COMMENT '搜索内容',
  `amount` int(11) DEFAULT NULL COMMENT '日搜索次数',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  UNIQUE KEY `search_time` (`search_time`,`content`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品搜索记录';

-- ----------------------------
-- Records of search_record
-- ----------------------------
INSERT INTO `search_record` VALUES ('00e5d92de5384f96ba976c6e012aacb2', '2017-03-03', '200', '4', null, '1', '2017-03-03 00:20:10', '1', '2017-03-03 00:20:12', '0');
INSERT INTO `search_record` VALUES ('4ddadbf59aac4468927d57dc42e35b84', '2017-03-03', 'e', '2', null, '1', '2017-03-03 00:20:15', '1', '2017-03-03 00:21:26', '0');
INSERT INTO `search_record` VALUES ('d2c4bcb8a38749c2bb9de4ac2f0474e9', '2017-03-03', '我们', '26', null, '1', '2017-03-03 00:15:34', '1', '2017-03-03 00:19:48', '0');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` varchar(64) NOT NULL COMMENT '购物车id',
  `member_id` varchar(64) NOT NULL COMMENT '会员id',
  `goods_no` varchar(64) NOT NULL COMMENT 'good_all	goods_no',
  `goods_amount` smallint(6) DEFAULT '1' COMMENT '商品购买数量，在购物车时，不能减少实际库存',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '457', '1', '1', '2013-05-27 08:00:00', '1', '2016-09-28 23:47:32', '', '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '广东省', '20', '440000', '2', '1', '2013-05-27 08:00:00', '1', '2016-09-28 23:48:32', '', '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '中山市', '30', '442000', '3', '1', '2013-05-27 08:00:00', '1', '2016-09-28 23:49:25', '', '0');
INSERT INTO `sys_area` VALUES ('9d3f2b3321aa423eb04cbbbd99ebadb2', '1', '0,1,', '澳门', '30', '853', '4', '1', '2016-09-28 23:56:07', '1', '2016-09-28 23:56:07', '', '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `value` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '数据值',
  `label` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '标签名',
  `type` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '类型',
  `description` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) COLLATE utf8_bin DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('017bca4404074ac78fd0a773a02eef69', '0', '女', 'sex', '性别', '10', '0', '1', '2016-09-29 21:28:16', '1', '2016-09-29 21:28:16', '', '0');
INSERT INTO `sys_dict` VALUES ('022ed5e216b744bcbe741c18ddf4f702', '0', '春', 'season', '季节', '10', '0', '1', '2016-09-29 21:31:22', '1', '2016-09-29 21:31:22', '', '0');
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('244d7caba65c46fa894aa3cfe167a453', '7', '退回中', 'goods_send_state', '发货状态', '70', '0', '1', '2017-03-05 21:23:32', '1', '2017-03-05 21:23:32', '', '0');
INSERT INTO `sys_dict` VALUES ('24fac0ecc879481f973d47da66eda2cb', '3', '冬', 'season', '季节', '40', '0', '1', '2016-09-29 21:32:22', '1', '2016-09-29 21:32:32', '', '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2a4639bbf53944a5a6547e40177455c6', '2', '无效', 'orders_state', '订单状态', '20', '0', '1', '2017-02-11 00:46:13', '1', '2017-02-11 00:46:13', '', '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33d9abdc201e4f7aa3f89ca55585b678', '4', '已退回入库', 'goods_send_state', '发货状态', '40', '0', '1', '2017-02-11 00:51:16', '1', '2017-02-11 00:51:16', '', '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3a4054707b09454394874329ed99e063', '1', '付款', 'account_process_type', '账户资金流动类型', '20', '0', '1', '2017-02-08 22:05:04', '1', '2017-02-08 22:05:04', '', '0');
INSERT INTO `sys_dict` VALUES ('3dfea51f0025439dbce1b1219e430b02', '0', '已有产品生产', 'product_type', '生产类型', '10', '0', '1', '2016-11-21 23:00:31', '1', '2016-11-21 23:00:31', '', '0');
INSERT INTO `sys_dict` VALUES ('3ed39a7ef86447998587a4f7bec90a80', '1', '下架', 'goods_state', '商品状态', '30', '0', '1', '2016-09-29 21:35:21', '1', '2017-01-28 22:07:34', '', '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('4498716fba2a4c60a0efbcc0c5829f56', '0', '在售', 'goods_state', '商品状态', '20', '0', '1', '2016-09-29 21:34:55', '1', '2017-01-28 22:07:31', '', '0');
INSERT INTO `sys_dict` VALUES ('47cba094ca804c98988315530a72b7ce', '3', '暂不供货', 'goods_state', '商品状态', '40', '0', '1', '2016-11-13 07:44:14', '1', '2016-11-13 22:12:04', '', '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('52b6f64527a848e3a3563a8643fdeecb', '2', '已发货', 'goods_send_state', '发货状态', '20', '0', '1', '2017-02-11 00:50:53', '1', '2017-02-11 00:50:53', '', '0');
INSERT INTO `sys_dict` VALUES ('537444cf43b24cfea80728802d9ca07d', '2', '交易失败', 'orders_flag', '订单标记', '30', '0', '1', '2017-02-11 00:54:27', '1', '2017-02-11 00:54:27', '', '0');
INSERT INTO `sys_dict` VALUES ('53af386a1ece4876806d68d8641fe2b2', '1', '生产中', 'product_order_state', '生产订单状态', '20', '0', '1', '2016-11-21 22:58:43', '1', '2016-11-25 20:07:50', '', '0');
INSERT INTO `sys_dict` VALUES ('541e67f4acf7480f8cd89cc17a6ba9bc', '1', '新产品生产', 'product_type', '生产类型', '20', '0', '1', '2016-11-21 23:00:47', '1', '2016-11-21 23:00:47', '', '0');
INSERT INTO `sys_dict` VALUES ('5fb3055a66844e94b2fd8288c2a7ce54', '0', '否', 'required', '是否必需', '20', '0', '1', '2016-10-03 16:04:05', '1', '2016-10-04 01:26:40', '', '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60fc727c86ac48a28c5673351f406bab', '3', '优惠', 'goods_flag', '商品标记', '30', '0', '1', '2017-01-28 17:45:34', '1', '2017-01-28 17:45:34', '', '0');
INSERT INTO `sys_dict` VALUES ('65c444ac463440c085688538d4265204', '2', '未上市', 'goods_state', '商品状态', '10', '0', '1', '2016-09-29 21:35:41', '1', '2017-01-28 22:07:25', '', '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('69', 'product', '生产流程', 'act_type', '流程类型', '10', '0', '1', '2013-06-03 08:00:00', '1', '2016-12-04 01:35:07', '', '0');
INSERT INTO `sys_dict` VALUES ('6d6b0fa3f86e4623a8938b6764a7a145', '2', '退款', 'account_process_type', '账户资金流动类型', '30', '0', '1', '2017-02-08 22:05:10', '1', '2017-02-08 22:05:10', '', '0');
INSERT INTO `sys_dict` VALUES ('6e0316c7bb444c1684fc16b0174fe352', '2', '热销', 'goods_flag', '商品标记', '20', '0', '1', '2017-01-28 17:45:26', '1', '2017-01-28 17:45:26', '', '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('70', 'sale', '销售流程', 'act_type', '流程类型', '20', '0', '1', '2013-06-03 08:00:00', '1', '2016-12-04 01:35:18', '', '0');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('7abc1eb1487b4fbe8e464c7c4512ac9c', '0', '待发布', 'product_order_state', '生产订单状态', '10', '0', '1', '2016-11-21 22:58:04', '1', '2016-11-25 20:07:38', '', '0');
INSERT INTO `sys_dict` VALUES ('7c9c66c882b441afb1a752ccf061a014', '1', '新品', 'goods_flag', '商品标记', '10', '0', '1', '2017-01-28 17:45:18', '1', '2017-01-28 17:45:18', '', '0');
INSERT INTO `sys_dict` VALUES ('7d9beddeddee4346a058a0d39756c6b1', '3', '会员发货前取消订单', 'orders_state', '订单状态', '30', '0', '1', '2017-02-11 00:46:45', '1', '2017-02-11 00:47:41', '', '0');
INSERT INTO `sys_dict` VALUES ('7f9499c1824c4225ac05b53cc003e1ad', '4', '会员发货后退货', 'orders_state', '订单状态', '40', '0', '1', '2017-02-11 00:47:07', '1', '2017-02-11 00:47:56', '', '0');
INSERT INTO `sys_dict` VALUES ('7fd18318b5204592b93abf6b4e8faa7c', '1', '有效', 'orders_state', '订单状态', '10', '0', '1', '2017-02-11 00:44:04', '1', '2017-02-11 00:44:04', '', '0');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('8c51be7b9d6c4eb9a62ad5fbfd11a7ff', '8', '逾期退回', 'goods_send_state', '发货状态', '80', '0', '1', '2017-03-05 21:23:45', '1', '2017-03-05 21:23:56', '', '0');
INSERT INTO `sys_dict` VALUES ('8de12979add348d39c052e347f16b810', '0', '充值', 'account_process_type', '账户资金流动类型', '10', '0', '1', '2017-02-08 22:04:56', '1', '2017-02-08 22:04:56', '', '0');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('90f22ee968cf41ac8ac598e56bb9ba3f', '6', '已收货', 'goods_send_state', '发货状态', '60', '0', '1', '2017-02-25 17:00:59', '1', '2017-02-25 17:00:59', '', '0');
INSERT INTO `sys_dict` VALUES ('92f05d9e95d5411ca9f4f215b09bf606', '1', '未付款', 'pay_state', '支付状态', '10', '0', '1', '2017-02-11 00:52:16', '1', '2017-02-11 00:52:16', '', '0');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2016-09-29 21:28:37', '', '0');
INSERT INTO `sys_dict` VALUES ('9c7f5211045a4c5b8de294aa7b234d3a', '3', '已退款', 'pay_state', '支付状态', '30', '0', '1', '2017-02-11 00:52:30', '1', '2017-02-11 00:52:30', '', '0');
INSERT INTO `sys_dict` VALUES ('9d36409119314b43acde22ec84fd9bfe', '1', '启用', 'member_state', '会员状态', '20', '0', '1', '2016-12-29 21:43:20', '1', '2016-12-29 21:43:20', '', '0');
INSERT INTO `sys_dict` VALUES ('9f6d6020cd6040fc850217d31eb259a8', '5', '缺货', 'goods_send_state', '发货状态', '50', '0', '1', '2017-02-11 00:51:30', '1', '2017-02-11 00:51:30', '', '0');
INSERT INTO `sys_dict` VALUES ('a519dde5d26341acabe4ec221e396a04', '1', '夏', 'season', '季节', '20', '0', '1', '2016-09-29 21:31:37', '1', '2016-09-29 21:31:37', '', '0');
INSERT INTO `sys_dict` VALUES ('a55b50d713b646c59bca52f64a9e640a', '2', '审核中', 'product_order_state', '生产订单状态', '30', '0', '1', '2016-11-21 22:59:12', '1', '2016-11-25 20:08:04', '', '0');
INSERT INTO `sys_dict` VALUES ('afdf6ea5b1864cda9b65fb955427b604', '0', '进行中', 'orders_flag', '订单标记', '10', '0', '1', '2017-02-11 00:53:25', '1', '2017-02-11 00:53:25', '', '0');
INSERT INTO `sys_dict` VALUES ('bff206f3d39a48a49575ce5f3d6154ec', '5', '缺货退单', 'orders_state', '订单状态', '50', '0', '1', '2017-02-11 00:48:22', '1', '2017-02-11 00:48:22', '', '0');
INSERT INTO `sys_dict` VALUES ('cb9168d606904a22a8dc76db5d6cdb15', '1', '交易成功', 'orders_flag', '订单标记', '20', '0', '1', '2017-02-11 00:53:47', '1', '2017-02-11 00:53:47', '', '0');
INSERT INTO `sys_dict` VALUES ('db6a16fa53a647999dcc85873a7edd94', '1', '是', 'required', '是否必需', '10', '0', '1', '2016-10-03 16:04:42', '1', '2016-10-04 01:26:55', '', '0');
INSERT INTO `sys_dict` VALUES ('df792cab37b54c249a9a017a4a20731d', '1', '待发货', 'goods_send_state', '发货状态', '10', '0', '1', '2017-02-11 00:49:45', '1', '2017-02-11 00:50:33', '', '0');
INSERT INTO `sys_dict` VALUES ('e2d0638e06db4543b16f374bfd5a09c5', '0', '禁用', 'member_state', '会员状态', '10', '0', '1', '2016-12-29 21:43:12', '1', '2016-12-29 21:43:12', '', '0');
INSERT INTO `sys_dict` VALUES ('e454d4fbafca4bef9648db18b567a386', '3', '已完成', 'product_order_state', '生产订单状态', '40', '0', '1', '2016-11-25 20:41:29', '1', '2016-11-25 20:41:29', '', '0');
INSERT INTO `sys_dict` VALUES ('e9c31fa2b824489fa6b7d6e4b001f572', '3', '已取消', 'goods_send_state', '发货状态', '30', '0', '1', '2017-02-11 00:50:42', '1', '2017-02-11 00:50:42', '', '0');
INSERT INTO `sys_dict` VALUES ('ed41492e8b944dfeaa2a1681ea811d57', '2', '秋', 'season', '季节', '30', '0', '1', '2016-09-29 21:31:59', '1', '2016-09-29 21:31:59', '', '0');
INSERT INTO `sys_dict` VALUES ('f4a11281787e44a1b96666515e21c57c', '2', '已付款', 'pay_state', '支付状态', '20', '0', '1', '2017-02-11 00:52:24', '1', '2017-02-11 00:52:24', '', '0');

-- ----------------------------
-- Table structure for sys_dict_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_area`;
CREATE TABLE `sys_dict_area` (
  `id` varchar(32) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `parent_id` varchar(32) DEFAULT NULL,
  `first_letter` char(1) DEFAULT NULL,
  `level` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国家地区表';

-- ----------------------------
-- Records of sys_dict_area
-- ----------------------------
INSERT INTO `sys_dict_area` VALUES ('1', '110000', '北京市', '0', 'B', '0');
INSERT INTO `sys_dict_area` VALUES ('10', '320000', '江苏省', '0', 'J', '0');
INSERT INTO `sys_dict_area` VALUES ('100', '230500', '双鸭山市', '8', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1000', '230604', '让胡路区', '101', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1001', '230605', '红岗区', '101', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1002', '230606', '大同区', '101', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1003', '230621', '肇州县', '101', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1004', '230622', '肇源县', '101', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1005', '230623', '林甸县', '101', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1006', '230624', '杜尔伯特蒙古族自治县', '101', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1007', '230702', '伊春区', '102', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1008', '230703', '南岔区', '102', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1009', '230704', '友好区', '102', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('101', '230600', '大庆市', '8', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('1010', '230705', '西林区', '102', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1011', '230706', '翠峦区', '102', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1012', '230707', '新青区', '102', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1013', '230708', '美溪区', '102', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1014', '230709', '金山屯区', '102', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1015', '230710', '五营区', '102', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1016', '230711', '乌马河区', '102', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1017', '230712', '汤旺河区', '102', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1018', '230713', '带岭区', '102', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1019', '230714', '乌伊岭区', '102', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('102', '230700', '伊春市', '8', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1020', '230715', '红星区', '102', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1021', '230716', '上甘岭区', '102', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1022', '230722', '嘉荫县', '102', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1023', '230781', '铁力市', '102', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1024', '230804', '前进区', '103', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1025', '230805', '东风区', '103', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1026', '230822', '桦南县', '103', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1027', '230826', '桦川县', '103', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1028', '230828', '汤原县', '103', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1029', '230833', '抚远县', '103', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('103', '230800', '佳木斯市', '8', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1030', '230881', '同江市', '103', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1031', '230882', '富锦市', '103', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1032', '230902', '新兴区', '104', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1033', '230903', '桃山区', '104', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1034', '230904', '茄子河区', '104', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1035', '230921', '勃利县', '104', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1036', '231002', '东安区', '105', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1037', '231003', '阳明区', '105', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1038', '231004', '爱民区', '105', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1039', '231024', '东宁县', '105', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('104', '230900', '七台河市', '8', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('1040', '231025', '林口县', '105', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1041', '231081', '绥芬河市', '105', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1042', '231083', '海林市', '105', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1043', '231084', '宁安市', '105', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1044', '231085', '穆棱市', '105', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1045', '231102', '爱辉区', '106', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1046', '231121', '嫩江县', '106', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1047', '231123', '逊克县', '106', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1048', '231124', '孙吴县', '106', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1049', '231181', '北安市', '106', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('105', '231000', '牡丹江市', '8', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('1050', '231182', '五大连池市', '106', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1051', '231202', '北林区', '107', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1052', '231221', '望奎县', '107', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1053', '231222', '兰西县', '107', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1054', '231223', '青冈县', '107', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1055', '231224', '庆安县', '107', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1056', '231225', '明水县', '107', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1057', '231226', '绥棱县', '107', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1058', '231281', '安达市', '107', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1059', '231282', '肇东市', '107', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('106', '231100', '黑河市', '8', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1060', '231283', '海伦市', '107', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1061', '232721', '呼玛县', '108', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1062', '232722', '塔河县', '108', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1063', '232723', '漠河县', '108', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1064', '310101', '黄浦区', '109', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1065', '310104', '徐汇区', '109', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1066', '310105', '长宁区', '109', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1067', '310106', '静安区', '109', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1068', '310107', '普陀区', '109', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1069', '310108', '闸北区', '109', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('107', '231200', '绥化市', '8', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1070', '310109', '虹口区', '109', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1071', '310110', '杨浦区', '109', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1072', '310112', '闵行区', '109', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1073', '310114', '嘉定区', '109', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1074', '310115', '浦东新区', '109', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1075', '310116', '金山区', '109', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1076', '310117', '松江区', '109', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1077', '310118', '青浦区', '109', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1078', '310120', '奉贤区', '109', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1079', '310230', '崇明县', '110', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('108', '232700', '大兴安岭地区', '8', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('1080', '320102', '玄武区', '111', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1081', '320104', '秦淮区', '111', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1082', '320105', '建邺区', '111', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1083', '320106', '鼓楼区', '111', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1084', '320111', '浦口区', '111', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1085', '320113', '栖霞区', '111', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1086', '320114', '雨花台区', '111', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1087', '320115', '江宁区', '111', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1088', '320116', '六合区', '111', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1089', '320117', '溧水区', '111', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('109', '310100', '上海市', '9', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1090', '320118', '高淳区', '111', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1091', '320202', '崇安区', '112', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1092', '320203', '南长区', '112', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1093', '320204', '北塘区', '112', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1094', '320205', '锡山区', '112', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1095', '320206', '惠山区', '112', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1096', '320211', '滨湖区', '112', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1097', '320281', '江阴市', '112', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1098', '320282', '宜兴市', '112', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1099', '320303', '云龙区', '113', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('11', '330000', '浙江省', '0', 'Z', '0');
INSERT INTO `sys_dict_area` VALUES ('110', '310200', '上海县', '9', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1100', '320305', '贾汪区', '113', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1101', '320311', '泉山区', '113', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1102', '320312', '铜山区', '113', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1103', '320321', '丰县', '113', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1104', '320322', '沛县', '113', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1105', '320324', '睢宁县', '113', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1106', '320381', '新沂市', '113', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1107', '320382', '邳州市', '113', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1108', '320402', '天宁区', '114', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1109', '320404', '钟楼区', '114', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('111', '320100', '南京市', '10', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1110', '320405', '戚墅堰区', '114', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1111', '320411', '新北区', '114', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1112', '320412', '武进区', '114', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1113', '320481', '溧阳市', '114', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1114', '320482', '金坛市', '114', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1115', '320505', '虎丘区', '115', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1116', '320506', '吴中区', '115', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1117', '320507', '相城区', '115', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1118', '320508', '姑苏区', '115', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1119', '320509', '吴江区', '115', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('112', '320200', '无锡市', '10', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('1120', '320581', '常熟市', '115', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1121', '320582', '张家港市', '115', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1122', '320583', '昆山市', '115', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1123', '320585', '太仓市', '115', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1124', '320602', '崇川区', '116', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1125', '320611', '港闸区', '116', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1126', '320612', '通州区', '116', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1127', '320621', '海安县', '116', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1128', '320623', '如东县', '116', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1129', '320681', '启东市', '116', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('113', '320300', '徐州市', '10', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1130', '320682', '如皋市', '116', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1131', '320684', '海门市', '116', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1132', '320703', '连云区', '117', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1133', '320707', '赣榆区', '117', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1134', '320722', '东海县', '117', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1135', '320723', '灌云县', '117', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1136', '320724', '灌南县', '117', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1137', '320803', '淮安区', '118', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1138', '320804', '淮阴区', '118', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1139', '320811', '清浦区', '118', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('114', '320400', '常州市', '10', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('1140', '320826', '涟水县', '118', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1141', '320829', '洪泽县', '118', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1142', '320830', '盱眙县', '118', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1143', '320831', '金湖县', '118', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1144', '320902', '亭湖区', '119', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1145', '320903', '盐都区', '119', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1146', '320921', '响水县', '119', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1147', '320922', '滨海县', '119', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1148', '320923', '阜宁县', '119', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1149', '320924', '射阳县', '119', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('115', '320500', '苏州市', '10', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1150', '320925', '建湖县', '119', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1151', '320981', '东台市', '119', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1152', '320982', '大丰市', '119', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1153', '321002', '广陵区', '120', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1154', '321003', '邗江区', '120', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1155', '321012', '江都区', '120', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1156', '321023', '宝应县', '120', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1157', '321081', '仪征市', '120', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1158', '321084', '高邮市', '120', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1159', '321102', '京口区', '121', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('116', '320600', '南通市', '10', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1160', '321111', '润州区', '121', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1161', '321112', '丹徒区', '121', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1162', '321181', '丹阳市', '121', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1163', '321182', '扬中市', '121', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1164', '321183', '句容市', '121', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1165', '321202', '海陵区', '122', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1166', '321203', '高港区', '122', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1167', '321204', '姜堰区', '122', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1168', '321281', '兴化市', '122', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1169', '321282', '靖江市', '122', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('117', '320700', '连云港市', '10', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1170', '321283', '泰兴市', '122', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1171', '321302', '宿城区', '123', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1172', '321311', '宿豫区', '123', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1173', '321322', '沭阳县', '123', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1174', '321323', '泗阳县', '123', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1175', '321324', '泗洪县', '123', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1176', '330102', '上城区', '124', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1177', '330103', '下城区', '124', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1178', '330104', '江干区', '124', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1179', '330105', '拱墅区', '124', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('118', '320800', '淮安市', '10', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1180', '330106', '西湖区', '124', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1181', '330108', '滨江区', '124', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1182', '330109', '萧山区', '124', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1183', '330110', '余杭区', '124', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1184', '330122', '桐庐县', '124', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1185', '330127', '淳安县', '124', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1186', '330182', '建德市', '124', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1187', '330183', '富阳市', '124', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1188', '330185', '临安市', '124', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1189', '330203', '海曙区', '125', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('119', '320900', '盐城市', '10', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1190', '330204', '江东区', '125', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1191', '330205', '江北区', '125', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1192', '330206', '北仑区', '125', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1193', '330211', '镇海区', '125', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1194', '330212', '鄞州区', '125', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1195', '330225', '象山县', '125', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1196', '330226', '宁海县', '125', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1197', '330281', '余姚市', '125', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1198', '330282', '慈溪市', '125', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1199', '330283', '奉化市', '125', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('12', '340000', '安徽省', '0', 'A', '0');
INSERT INTO `sys_dict_area` VALUES ('120', '321000', '扬州市', '10', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1200', '330302', '鹿城区', '126', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1201', '330303', '龙湾区', '126', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1202', '330304', '瓯海区', '126', 'O', '2');
INSERT INTO `sys_dict_area` VALUES ('1203', '330322', '洞头县', '126', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1204', '330324', '永嘉县', '126', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1205', '330326', '平阳县', '126', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1206', '330327', '苍南县', '126', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1207', '330328', '文成县', '126', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1208', '330329', '泰顺县', '126', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1209', '330381', '瑞安市', '126', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('121', '321100', '镇江市', '10', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1210', '330382', '乐清市', '126', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1211', '330402', '南湖区', '127', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1212', '330411', '秀洲区', '127', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1213', '330421', '嘉善县', '127', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1214', '330424', '海盐县', '127', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1215', '330481', '海宁市', '127', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1216', '330482', '平湖市', '127', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1217', '330483', '桐乡市', '127', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1218', '330502', '吴兴区', '128', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1219', '330503', '南浔区', '128', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('122', '321200', '泰州市', '10', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('1220', '330521', '德清县', '128', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1221', '330522', '长兴县', '128', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1222', '330523', '安吉县', '128', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1223', '330602', '越城区', '129', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1224', '330603', '柯桥区', '129', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1225', '330604', '上虞区', '129', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1226', '330624', '新昌县', '129', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1227', '330681', '诸暨市', '129', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1228', '330683', '嵊州市', '129', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1229', '330702', '婺城区', '130', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('123', '321300', '宿迁市', '10', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1230', '330703', '金东区', '130', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1231', '330723', '武义县', '130', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1232', '330726', '浦江县', '130', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1233', '330727', '磐安县', '130', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1234', '330781', '兰溪市', '130', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1235', '330782', '义乌市', '130', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1236', '330783', '东阳市', '130', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1237', '330784', '永康市', '130', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1238', '330802', '柯城区', '131', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1239', '330803', '衢江区', '131', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('124', '330100', '杭州市', '11', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1240', '330822', '常山县', '131', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1241', '330824', '开化县', '131', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1242', '330825', '龙游县', '131', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1243', '330881', '江山市', '131', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1244', '330902', '定海区', '132', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1245', '330921', '岱山县', '132', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1246', '330922', '嵊泗县', '132', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1247', '331002', '椒江区', '133', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1248', '331003', '黄岩区', '133', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1249', '331004', '路桥区', '133', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('125', '330200', '宁波市', '11', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1250', '331021', '玉环县', '133', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1251', '331022', '三门县', '133', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1252', '331023', '天台县', '133', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1253', '331024', '仙居县', '133', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1254', '331081', '温岭市', '133', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1255', '331082', '临海市', '133', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1256', '331102', '莲都区', '134', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1257', '331121', '青田县', '134', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1258', '331122', '缙云县', '134', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1259', '331123', '遂昌县', '134', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('126', '330300', '温州市', '11', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('1260', '331124', '松阳县', '134', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1261', '331125', '云和县', '134', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1262', '331126', '庆元县', '134', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1263', '331127', '景宁畲族自治县', '134', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1264', '331181', '龙泉市', '134', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1265', '340102', '瑶海区', '135', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1266', '340103', '庐阳区', '135', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1267', '340104', '蜀山区', '135', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1268', '340111', '包河区', '135', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1269', '340121', '长丰县', '135', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('127', '330400', '嘉兴市', '11', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1270', '340122', '肥东县', '135', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1271', '340123', '肥西县', '135', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1272', '340124', '庐江县', '135', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1273', '340181', '巢湖市', '135', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1274', '340202', '镜湖区', '136', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1275', '340203', '弋江区', '136', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1276', '340207', '鸠江区', '136', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1277', '340208', '三山区', '136', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1278', '340221', '芜湖县', '136', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1279', '340222', '繁昌县', '136', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('128', '330500', '湖州市', '11', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1280', '340223', '南陵县', '136', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1281', '340225', '无为县', '136', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1282', '340302', '龙子湖区', '137', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1283', '340303', '蚌山区', '137', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1284', '340304', '禹会区', '137', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1285', '340311', '淮上区', '137', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1286', '340321', '怀远县', '137', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1287', '340322', '五河县', '137', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1288', '340323', '固镇县', '137', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1289', '340402', '大通区', '138', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('129', '330600', '绍兴市', '11', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1290', '340403', '田家庵区', '138', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1291', '340404', '谢家集区', '138', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1292', '340405', '八公山区', '138', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1293', '340406', '潘集区', '138', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1294', '340421', '凤台县', '138', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1295', '340503', '花山区', '139', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1296', '340504', '雨山区', '139', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1297', '340506', '博望区', '139', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1298', '340521', '当涂县', '139', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1299', '340522', '含山县', '139', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('13', '350000', '福建省', '0', 'F', '0');
INSERT INTO `sys_dict_area` VALUES ('130', '330700', '金华市', '11', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1300', '340523', '和县', '139', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1301', '340602', '杜集区', '140', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1302', '340603', '相山区', '140', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1303', '340604', '烈山区', '140', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1304', '340621', '濉溪县', '140', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1305', '340702', '铜官山区', '141', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1306', '340703', '狮子山区', '141', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1307', '340721', '铜陵县', '141', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1308', '340802', '迎江区', '142', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1309', '340803', '大观区', '142', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('131', '330800', '衢州市', '11', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('1310', '340811', '宜秀区', '142', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1311', '340822', '怀宁县', '142', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1312', '340823', '枞阳县', '142', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1313', '340824', '潜山县', '142', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1314', '340825', '太湖县', '142', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1315', '340826', '宿松县', '142', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1316', '340827', '望江县', '142', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1317', '340828', '岳西县', '142', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1318', '340881', '桐城市', '142', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1319', '341002', '屯溪区', '143', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('132', '330900', '舟山市', '11', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1320', '341003', '黄山区', '143', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1321', '341004', '徽州区', '143', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1322', '341021', '歙县', '143', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1323', '341022', '休宁县', '143', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1324', '341023', '黟县', '143', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1325', '341024', '祁门县', '143', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1326', '341102', '琅琊区', '144', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1327', '341103', '南谯区', '144', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1328', '341122', '来安县', '144', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1329', '341124', '全椒县', '144', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('133', '331000', '台州市', '11', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('1330', '341125', '定远县', '144', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1331', '341126', '凤阳县', '144', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1332', '341181', '天长市', '144', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1333', '341182', '明光市', '144', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1334', '341202', '颍州区', '145', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1335', '341203', '颍东区', '145', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1336', '341204', '颍泉区', '145', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1337', '341221', '临泉县', '145', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1338', '341222', '太和县', '145', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1339', '341225', '阜南县', '145', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('134', '331100', '丽水市', '11', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1340', '341226', '颍上县', '145', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1341', '341282', '界首市', '145', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1342', '341302', '埇桥区', '146', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1343', '341321', '砀山县', '146', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1344', '341322', '萧县', '146', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1345', '341323', '灵璧县', '146', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1346', '341324', '泗县', '146', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1347', '341502', '金安区', '147', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1348', '341503', '裕安区', '147', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1349', '341521', '寿县', '147', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('135', '340100', '合肥市', '12', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1350', '341522', '霍邱县', '147', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1351', '341523', '舒城县', '147', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1352', '341524', '金寨县', '147', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1353', '341525', '霍山县', '147', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1354', '341602', '谯城区', '148', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1355', '341621', '涡阳县', '148', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1356', '341622', '蒙城县', '148', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1357', '341623', '利辛县', '148', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1358', '341702', '贵池区', '149', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1359', '341721', '东至县', '149', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('136', '340200', '芜湖市', '12', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('1360', '341722', '石台县', '149', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1361', '341723', '青阳县', '149', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1362', '341802', '宣州区', '150', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1363', '341821', '郎溪县', '150', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1364', '341822', '广德县', '150', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1365', '341823', '泾县', '150', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1366', '341824', '绩溪县', '150', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1367', '341825', '旌德县', '150', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1368', '341881', '宁国市', '150', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1369', '350103', '台江区', '151', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('137', '340300', '蚌埠市', '12', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('1370', '350104', '仓山区', '151', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1371', '350105', '马尾区', '151', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1372', '350111', '晋安区', '151', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1373', '350121', '闽侯县', '151', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1374', '350122', '连江县', '151', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1375', '350123', '罗源县', '151', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1376', '350124', '闽清县', '151', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1377', '350125', '永泰县', '151', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1378', '350128', '平潭县', '151', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1379', '350181', '福清市', '151', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('138', '340400', '淮南市', '12', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1380', '350182', '长乐市', '151', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1381', '350203', '思明区', '152', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1382', '350205', '海沧区', '152', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1383', '350206', '湖里区', '152', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1384', '350211', '集美区', '152', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1385', '350212', '同安区', '152', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1386', '350213', '翔安区', '152', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1387', '350302', '城厢区', '153', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1388', '350303', '涵江区', '153', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1389', '350304', '荔城区', '153', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('139', '340500', '马鞍山市', '12', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('1390', '350305', '秀屿区', '153', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1391', '350322', '仙游县', '153', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1392', '350402', '梅列区', '154', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1393', '350403', '三元区', '154', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1394', '350421', '明溪县', '154', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1395', '350423', '清流县', '154', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1396', '350424', '宁化县', '154', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1397', '350425', '大田县', '154', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1398', '350426', '尤溪县', '154', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1399', '350427', '沙县', '154', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('14', '360000', '江西省', '0', 'J', '0');
INSERT INTO `sys_dict_area` VALUES ('140', '340600', '淮北市', '12', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1400', '350428', '将乐县', '154', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1401', '350429', '泰宁县', '154', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1402', '350430', '建宁县', '154', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1403', '350481', '永安市', '154', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1404', '350502', '鲤城区', '155', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1405', '350503', '丰泽区', '155', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1406', '350504', '洛江区', '155', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1407', '350505', '泉港区', '155', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1408', '350521', '惠安县', '155', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1409', '350524', '安溪县', '155', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('141', '340700', '铜陵市', '12', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('1410', '350525', '永春县', '155', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1411', '350526', '德化县', '155', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1412', '350527', '金门县', '155', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1413', '350581', '石狮市', '155', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1414', '350582', '晋江市', '155', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1415', '350583', '南安市', '155', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1416', '350602', '芗城区', '156', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1417', '350603', '龙文区', '156', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1418', '350622', '云霄县', '156', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1419', '350623', '漳浦县', '156', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('142', '340800', '安庆市', '12', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('1420', '350624', '诏安县', '156', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1421', '350625', '长泰县', '156', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1422', '350626', '东山县', '156', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1423', '350627', '南靖县', '156', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1424', '350628', '平和县', '156', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1425', '350629', '华安县', '156', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1426', '350681', '龙海市', '156', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1427', '350702', '延平区', '157', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1428', '350721', '顺昌县', '157', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1429', '350722', '浦城县', '157', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('143', '341000', '黄山市', '12', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1430', '350723', '光泽县', '157', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1431', '350724', '松溪县', '157', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1432', '350725', '政和县', '157', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1433', '350781', '邵武市', '157', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1434', '350782', '武夷山市', '157', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1435', '350783', '建瓯市', '157', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1436', '350784', '建阳市', '157', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1437', '350802', '新罗区', '158', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1438', '350821', '长汀县', '158', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1439', '350822', '永定县', '158', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('144', '341100', '滁州市', '12', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('1440', '350823', '上杭县', '158', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1441', '350824', '武平县', '158', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1442', '350825', '连城县', '158', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1443', '350881', '漳平市', '158', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1444', '350902', '蕉城区', '159', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1445', '350921', '霞浦县', '159', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1446', '350922', '古田县', '159', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1447', '350923', '屏南县', '159', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1448', '350924', '寿宁县', '159', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1449', '350925', '周宁县', '159', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('145', '341200', '阜阳市', '12', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('1450', '350926', '柘荣县', '159', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1451', '350981', '福安市', '159', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1452', '350982', '福鼎市', '159', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1453', '360102', '东湖区', '160', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1454', '360104', '青云谱区', '160', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1455', '360105', '湾里区', '160', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1456', '360111', '青山湖区', '160', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1457', '360121', '南昌县', '160', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1458', '360122', '新建县', '160', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1459', '360123', '安义县', '160', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('146', '341300', '宿州市', '12', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1460', '360124', '进贤县', '160', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1461', '360202', '昌江区', '161', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1462', '360203', '珠山区', '161', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1463', '360222', '浮梁县', '161', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1464', '360281', '乐平市', '161', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1465', '360302', '安源区', '162', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1466', '360313', '湘东区', '162', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1467', '360321', '莲花县', '162', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1468', '360322', '上栗县', '162', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1469', '360323', '芦溪县', '162', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('147', '341500', '六安市', '12', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1470', '360402', '庐山区', '163', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1471', '360403', '浔阳区', '163', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1472', '360421', '九江县', '163', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1473', '360423', '武宁县', '163', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1474', '360424', '修水县', '163', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1475', '360425', '永修县', '163', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1476', '360426', '德安县', '163', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1477', '360427', '星子县', '163', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1478', '360428', '都昌县', '163', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1479', '360429', '湖口县', '163', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('148', '341600', '亳州市', '12', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('1480', '360430', '彭泽县', '163', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1481', '360481', '瑞昌市', '163', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1482', '360482', '共青城市', '163', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1483', '360502', '渝水区', '164', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1484', '360521', '分宜县', '164', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1485', '360602', '月湖区', '165', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1486', '360622', '余江县', '165', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1487', '360681', '贵溪市', '165', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1488', '360702', '章贡区', '166', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1489', '360703', '南康区', '166', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('149', '341700', '池州市', '12', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('1490', '360721', '赣县', '166', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1491', '360722', '信丰县', '166', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1492', '360723', '大余县', '166', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1493', '360724', '上犹县', '166', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1494', '360725', '崇义县', '166', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1495', '360726', '安远县', '166', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1496', '360727', '龙南县', '166', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1497', '360728', '定南县', '166', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1498', '360729', '全南县', '166', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1499', '360730', '宁都县', '166', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('15', '370000', '山东省', '0', 'S', '0');
INSERT INTO `sys_dict_area` VALUES ('150', '341800', '宣城市', '12', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1500', '360731', '于都县', '166', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1501', '360732', '兴国县', '166', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1502', '360733', '会昌县', '166', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1503', '360734', '寻乌县', '166', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1504', '360735', '石城县', '166', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1505', '360781', '瑞金市', '166', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1506', '360802', '吉州区', '167', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1507', '360803', '青原区', '167', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1508', '360821', '吉安县', '167', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1509', '360822', '吉水县', '167', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('151', '350100', '福州市', '13', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('1510', '360823', '峡江县', '167', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1511', '360824', '新干县', '167', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1512', '360825', '永丰县', '167', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1513', '360826', '泰和县', '167', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1514', '360827', '遂川县', '167', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1515', '360828', '万安县', '167', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1516', '360829', '安福县', '167', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1517', '360830', '永新县', '167', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1518', '360881', '井冈山市', '167', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1519', '360902', '袁州区', '168', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('152', '350200', '厦门市', '13', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1520', '360921', '奉新县', '168', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1521', '360922', '万载县', '168', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1522', '360923', '上高县', '168', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1523', '360924', '宜丰县', '168', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1524', '360925', '靖安县', '168', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1525', '360926', '铜鼓县', '168', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1526', '360981', '丰城市', '168', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1527', '360982', '樟树市', '168', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1528', '360983', '高安市', '168', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1529', '361002', '临川区', '169', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('153', '350300', '莆田市', '13', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('1530', '361021', '南城县', '169', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1531', '361022', '黎川县', '169', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1532', '361023', '南丰县', '169', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1533', '361024', '崇仁县', '169', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1534', '361025', '乐安县', '169', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1535', '361026', '宜黄县', '169', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1536', '361027', '金溪县', '169', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1537', '361028', '资溪县', '169', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1538', '361029', '东乡县', '169', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1539', '361030', '广昌县', '169', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('154', '350400', '三明市', '13', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1540', '361102', '信州区', '170', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1541', '361121', '上饶县', '170', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1542', '361122', '广丰县', '170', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1543', '361123', '玉山县', '170', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1544', '361124', '铅山县', '170', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1545', '361125', '横峰县', '170', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1546', '361126', '弋阳县', '170', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1547', '361127', '余干县', '170', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1548', '361128', '鄱阳县', '170', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1549', '361129', '万年县', '170', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('155', '350500', '泉州市', '13', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('1550', '361130', '婺源县', '170', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1551', '361181', '德兴市', '170', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1552', '370102', '历下区', '171', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1553', '370103', '市中区', '171', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1554', '370104', '槐荫区', '171', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1555', '370105', '天桥区', '171', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1556', '370112', '历城区', '171', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1557', '370113', '长清区', '171', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1558', '370124', '平阴县', '171', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1559', '370125', '济阳县', '171', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('156', '350600', '漳州市', '13', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1560', '370126', '商河县', '171', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1561', '370181', '章丘市', '171', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1562', '370202', '市南区', '172', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1563', '370203', '市北区', '172', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1564', '370211', '黄岛区', '172', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1565', '370212', '崂山区', '172', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1566', '370213', '李沧区', '172', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1567', '370214', '城阳区', '172', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1568', '370281', '胶州市', '172', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1569', '370282', '即墨市', '172', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('157', '350700', '南平市', '13', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1570', '370283', '平度市', '172', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1571', '370285', '莱西市', '172', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1572', '370302', '淄川区', '173', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1573', '370303', '张店区', '173', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1574', '370304', '博山区', '173', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1575', '370305', '临淄区', '173', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1576', '370306', '周村区', '173', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1577', '370321', '桓台县', '173', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1578', '370322', '高青县', '173', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1579', '370323', '沂源县', '173', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('158', '350800', '龙岩市', '13', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1580', '370403', '薛城区', '174', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1581', '370404', '峄城区', '174', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1582', '370405', '台儿庄区', '174', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1583', '370406', '山亭区', '174', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1584', '370481', '滕州市', '174', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1585', '370502', '东营区', '175', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1586', '370503', '河口区', '175', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1587', '370521', '垦利县', '175', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1588', '370522', '利津县', '175', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1589', '370523', '广饶县', '175', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('159', '350900', '宁德市', '13', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1590', '370602', '芝罘区', '176', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1591', '370611', '福山区', '176', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1592', '370612', '牟平区', '176', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1593', '370613', '莱山区', '176', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1594', '370634', '长岛县', '176', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1595', '370681', '龙口市', '176', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1596', '370682', '莱阳市', '176', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1597', '370683', '莱州市', '176', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1598', '370684', '蓬莱市', '176', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1599', '370685', '招远市', '176', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('16', '410000', '河南省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('160', '360100', '南昌市', '14', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('1600', '370686', '栖霞市', '176', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1601', '370687', '海阳市', '176', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1602', '370702', '潍城区', '177', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1603', '370703', '寒亭区', '177', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1604', '370704', '坊子区', '177', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1605', '370705', '奎文区', '177', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1606', '370724', '临朐县', '177', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1607', '370725', '昌乐县', '177', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1608', '370781', '青州市', '177', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1609', '370782', '诸城市', '177', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('161', '360200', '景德镇市', '14', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1610', '370783', '寿光市', '177', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1611', '370784', '安丘市', '177', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1612', '370785', '高密市', '177', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1613', '370786', '昌邑市', '177', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1614', '370811', '任城区', '178', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1615', '370812', '兖州区', '178', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1616', '370826', '微山县', '178', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1617', '370827', '鱼台县', '178', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1618', '370828', '金乡县', '178', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1619', '370829', '嘉祥县', '178', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('162', '360300', '萍乡市', '14', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('1620', '370830', '汶上县', '178', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1621', '370831', '泗水县', '178', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1622', '370832', '梁山县', '178', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1623', '370881', '曲阜市', '178', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1624', '370883', '邹城市', '178', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1625', '370902', '泰山区', '179', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1626', '370911', '岱岳区', '179', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1627', '370921', '宁阳县', '179', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1628', '370923', '东平县', '179', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1629', '370982', '新泰市', '179', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('163', '360400', '九江市', '14', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1630', '370983', '肥城市', '179', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1631', '371002', '环翠区', '180', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1632', '371003', '文登区', '180', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1633', '371082', '荣成市', '180', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1634', '371083', '乳山市', '180', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1635', '371102', '东港区', '181', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1636', '371103', '岚山区', '181', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1637', '371121', '五莲县', '181', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1638', '371122', '莒县', '181', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1639', '371202', '莱城区', '182', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('164', '360500', '新余市', '14', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1640', '371203', '钢城区', '182', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1641', '371302', '兰山区', '183', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1642', '371311', '罗庄区', '183', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1643', '371321', '沂南县', '183', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1644', '371322', '郯城县', '183', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1645', '371323', '沂水县', '183', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1646', '371324', '兰陵县', '183', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1647', '371325', '费县', '183', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1648', '371326', '平邑县', '183', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1649', '371327', '莒南县', '183', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('165', '360600', '鹰潭市', '14', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1650', '371328', '蒙阴县', '183', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1651', '371329', '临沭县', '183', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1652', '371402', '德城区', '184', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1653', '371403', '陵城区', '184', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1654', '371422', '宁津县', '184', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1655', '371423', '庆云县', '184', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1656', '371424', '临邑县', '184', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1657', '371425', '齐河县', '184', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1658', '371426', '平原县', '184', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1659', '371427', '夏津县', '184', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('166', '360700', '赣州市', '14', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('1660', '371428', '武城县', '184', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1661', '371481', '乐陵市', '184', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1662', '371482', '禹城市', '184', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1663', '371502', '东昌府区', '185', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1664', '371521', '阳谷县', '185', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1665', '371522', '莘县', '185', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1666', '371523', '茌平县', '185', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1667', '371524', '东阿县', '185', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1668', '371525', '冠县', '185', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1669', '371526', '高唐县', '185', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('167', '360800', '吉安市', '14', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1670', '371581', '临清市', '185', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1671', '371602', '滨城区', '186', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1672', '371603', '沾化区', '186', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1673', '371621', '惠民县', '186', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1674', '371622', '阳信县', '186', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1675', '371623', '无棣县', '186', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1676', '371625', '博兴县', '186', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1677', '371626', '邹平县', '186', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1678', '371702', '牡丹区', '187', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1679', '371721', '曹县', '187', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('168', '360900', '宜春市', '14', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1680', '371722', '单县', '187', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1681', '371723', '成武县', '187', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1682', '371724', '巨野县', '187', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1683', '371725', '郓城县', '187', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1684', '371726', '鄄城县', '187', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1685', '371727', '定陶县', '187', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1686', '371728', '东明县', '187', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1687', '410102', '中原区', '188', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1688', '410103', '二七区', '188', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('1689', '410104', '管城回族区', '188', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('169', '361000', '抚州市', '14', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('1690', '410105', '金水区', '188', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1691', '410106', '上街区', '188', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1692', '410108', '惠济区', '188', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1693', '410122', '中牟县', '188', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1694', '410181', '巩义市', '188', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1695', '410182', '荥阳市', '188', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1696', '410183', '新密市', '188', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1697', '410184', '新郑市', '188', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1698', '410185', '登封市', '188', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1699', '410202', '龙亭区', '189', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('17', '420000', '湖北省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('170', '361100', '上饶市', '14', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1700', '410203', '顺河回族区', '189', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1701', '410205', '禹王台区', '189', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1702', '410211', '金明区', '189', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1703', '410221', '杞县', '189', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1704', '410222', '通许县', '189', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1705', '410223', '尉氏县', '189', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1706', '410224', '开封县', '189', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1707', '410225', '兰考县', '189', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1708', '410302', '老城区', '190', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1709', '410303', '西工区', '190', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('171', '370100', '济南市', '15', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1710', '410304', '瀍河回族区', '190', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1711', '410305', '涧西区', '190', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1712', '410306', '吉利区', '190', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1713', '410311', '洛龙区', '190', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1714', '410322', '孟津县', '190', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1715', '410323', '新安县', '190', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1716', '410324', '栾川县', '190', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1717', '410325', '嵩县', '190', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1718', '410326', '汝阳县', '190', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1719', '410327', '宜阳县', '190', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('172', '370200', '青岛市', '15', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('1720', '410328', '洛宁县', '190', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1721', '410329', '伊川县', '190', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1722', '410381', '偃师市', '190', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1723', '410403', '卫东区', '191', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1724', '410404', '石龙区', '191', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1725', '410411', '湛河区', '191', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1726', '410421', '宝丰县', '191', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1727', '410422', '叶县', '191', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1728', '410423', '鲁山县', '191', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1729', '410425', '郏县', '191', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('173', '370300', '淄博市', '15', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1730', '410481', '舞钢市', '191', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1731', '410482', '汝州市', '191', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1732', '410502', '文峰区', '192', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1733', '410503', '北关区', '192', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1734', '410505', '殷都区', '192', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1735', '410506', '龙安区', '192', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1736', '410522', '安阳县', '192', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1737', '410523', '汤阴县', '192', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1738', '410526', '滑县', '192', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1739', '410527', '内黄县', '192', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('174', '370400', '枣庄市', '15', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1740', '410581', '林州市', '192', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1741', '410602', '鹤山区', '193', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1742', '410603', '山城区', '193', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1743', '410611', '淇滨区', '193', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1744', '410621', '浚县', '193', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1745', '410622', '淇县', '193', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1746', '410702', '红旗区', '194', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1747', '410703', '卫滨区', '194', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1748', '410704', '凤泉区', '194', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1749', '410711', '牧野区', '194', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('175', '370500', '东营市', '15', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('1750', '410721', '新乡县', '194', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1751', '410724', '获嘉县', '194', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1752', '410725', '原阳县', '194', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1753', '410726', '延津县', '194', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1754', '410727', '封丘县', '194', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1755', '410728', '长垣县', '194', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1756', '410781', '卫辉市', '194', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1757', '410782', '辉县市', '194', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1758', '410802', '解放区', '195', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1759', '410803', '中站区', '195', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('176', '370600', '烟台市', '15', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('1760', '410804', '马村区', '195', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1761', '410811', '山阳区', '195', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1762', '410821', '修武县', '195', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1763', '410822', '博爱县', '195', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1764', '410823', '武陟县', '195', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1765', '410825', '温县', '195', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1766', '410882', '沁阳市', '195', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1767', '410883', '孟州市', '195', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1768', '410902', '华龙区', '196', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1769', '410922', '清丰县', '196', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('177', '370700', '潍坊市', '15', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('1770', '410923', '南乐县', '196', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1771', '410926', '范县', '196', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1772', '410927', '台前县', '196', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1773', '410928', '濮阳县', '196', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1774', '411002', '魏都区', '197', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1775', '411023', '许昌县', '197', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1776', '411024', '鄢陵县', '197', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1777', '411025', '襄城县', '197', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1778', '411081', '禹州市', '197', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1779', '411082', '长葛市', '197', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('178', '370800', '济宁市', '15', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1781', '411102', '源汇区', '198', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1782', '411103', '郾城区', '198', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1783', '411104', '召陵区', '198', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1784', '411121', '舞阳县', '198', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1785', '411122', '临颍县', '198', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1786', '411202', '湖滨区', '199', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1787', '411221', '渑池县', '199', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1788', '411222', '陕县', '199', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1789', '411224', '卢氏县', '199', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('179', '370900', '泰安市', '15', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('1790', '411281', '义马市', '199', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1791', '411282', '灵宝市', '199', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1792', '411302', '宛城区', '200', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1793', '411303', '卧龙区', '200', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1794', '411321', '南召县', '200', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1795', '411322', '方城县', '200', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1796', '411323', '西峡县', '200', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1797', '411324', '镇平县', '200', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1798', '411325', '内乡县', '200', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1799', '411326', '淅川县', '200', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('18', '430000', '湖南省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('180', '371000', '威海市', '15', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('1800', '411327', '社旗县', '200', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1801', '411328', '唐河县', '200', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1802', '411329', '新野县', '200', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1803', '411330', '桐柏县', '200', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1804', '411381', '邓州市', '200', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1805', '411402', '梁园区', '201', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1806', '411403', '睢阳区', '201', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1807', '411421', '民权县', '201', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1808', '411422', '睢县', '201', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1809', '411423', '宁陵县', '201', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('181', '371100', '日照市', '15', 'R', '1');
INSERT INTO `sys_dict_area` VALUES ('1810', '411424', '柘城县', '201', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1811', '411425', '虞城县', '201', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1812', '411426', '夏邑县', '201', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1813', '411481', '永城市', '201', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1814', '411502', '浉河区', '202', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1815', '411503', '平桥区', '202', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1816', '411521', '罗山县', '202', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1817', '411522', '光山县', '202', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1818', '411523', '新县', '202', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1819', '411524', '商城县', '202', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('182', '371200', '莱芜市', '15', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1820', '411525', '固始县', '202', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1821', '411526', '潢川县', '202', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1822', '411527', '淮滨县', '202', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1823', '411528', '息县', '202', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1824', '411602', '川汇区', '203', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1825', '411621', '扶沟县', '203', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1826', '411622', '西华县', '203', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1827', '411623', '商水县', '203', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1828', '411624', '沈丘县', '203', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1829', '411625', '郸城县', '203', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('183', '371300', '临沂市', '15', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1830', '411626', '淮阳县', '203', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1831', '411627', '太康县', '203', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1832', '411628', '鹿邑县', '203', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1833', '411681', '项城市', '203', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1834', '411702', '驿城区', '204', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1835', '411721', '西平县', '204', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1836', '411722', '上蔡县', '204', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1837', '411723', '平舆县', '204', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('1838', '411724', '正阳县', '204', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1839', '411725', '确山县', '204', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('184', '371400', '德州市', '15', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('1840', '411726', '泌阳县', '204', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1841', '411727', '汝南县', '204', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('1842', '411728', '遂平县', '204', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1843', '411729', '新蔡县', '204', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1844', '419001', '济源市', '205', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1845', '420102', '江岸区', '206', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1846', '420103', '江汉区', '206', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1847', '420104', '硚口区', '206', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1848', '420105', '汉阳区', '206', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1849', '420106', '武昌区', '206', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('185', '371500', '聊城市', '15', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1850', '420111', '洪山区', '206', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1851', '420112', '东西湖区', '206', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1852', '420113', '汉南区', '206', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1853', '420114', '蔡甸区', '206', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1854', '420115', '江夏区', '206', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1855', '420116', '黄陂区', '206', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1856', '420117', '新洲区', '206', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1857', '420202', '黄石港区', '207', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1858', '420203', '西塞山区', '207', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1859', '420204', '下陆区', '207', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('186', '371600', '滨州市', '15', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('1860', '420205', '铁山区', '207', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1861', '420222', '阳新县', '207', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1862', '420281', '大冶市', '207', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1863', '420302', '茅箭区', '208', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1864', '420303', '张湾区', '208', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1865', '420304', '郧阳区', '208', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1866', '420322', '郧西县', '208', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1867', '420323', '竹山县', '208', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1868', '420324', '竹溪县', '208', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1869', '420325', '房县', '208', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('187', '371700', '菏泽市', '15', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1870', '420381', '丹江口市', '208', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1871', '420502', '西陵区', '209', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1872', '420503', '伍家岗区', '209', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1873', '420504', '点军区', '209', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1874', '420505', '猇亭区', '209', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1875', '420506', '夷陵区', '209', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1876', '420525', '远安县', '209', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1877', '420526', '兴山县', '209', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1878', '420527', '秭归县', '209', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1879', '420528', '长阳土家族自治县', '209', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('188', '410100', '郑州市', '16', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('1880', '420529', '五峰土家族自治县', '209', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1881', '420581', '宜都市', '209', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1882', '420582', '当阳市', '209', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1883', '420583', '枝江市', '209', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1884', '420602', '襄城区', '210', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1885', '420606', '樊城区', '210', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1886', '420607', '襄州区', '210', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1887', '420624', '南漳县', '210', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1888', '420625', '谷城县', '210', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1889', '420626', '保康县', '210', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('189', '410200', '开封市', '16', 'K', '1');
INSERT INTO `sys_dict_area` VALUES ('1890', '420682', '老河口市', '210', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1891', '420683', '枣阳市', '210', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1892', '420684', '宜城市', '210', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1893', '420702', '梁子湖区', '211', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1894', '420703', '华容区', '211', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1895', '420704', '鄂城区', '211', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('1896', '420802', '东宝区', '212', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1897', '420804', '掇刀区', '212', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1898', '420821', '京山县', '212', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1899', '420822', '沙洋县', '212', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('19', '440000', '广东省', '0', 'G', '0');
INSERT INTO `sys_dict_area` VALUES ('190', '410300', '洛阳市', '16', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1900', '420881', '钟祥市', '212', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1901', '420902', '孝南区', '213', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1902', '420921', '孝昌县', '213', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1903', '420922', '大悟县', '213', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1904', '420923', '云梦县', '213', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1905', '420981', '应城市', '213', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1906', '420982', '安陆市', '213', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('1907', '420984', '汉川市', '213', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1908', '421002', '沙市区', '214', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1909', '421003', '荆州区', '214', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('191', '410400', '平顶山市', '16', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('1910', '421022', '公安县', '214', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1911', '421023', '监利县', '214', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1912', '421024', '江陵县', '214', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1913', '421081', '石首市', '214', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1914', '421083', '洪湖市', '214', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1915', '421087', '松滋市', '214', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1916', '421102', '黄州区', '215', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1917', '421121', '团风县', '215', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1918', '421122', '红安县', '215', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1919', '421123', '罗田县', '215', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('192', '410500', '安阳市', '16', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('1920', '421124', '英山县', '215', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1921', '421125', '浠水县', '215', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1922', '421126', '蕲春县', '215', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1923', '421127', '黄梅县', '215', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1924', '421181', '麻城市', '215', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('1925', '421182', '武穴市', '215', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1926', '421202', '咸安区', '216', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1927', '421221', '嘉鱼县', '216', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1928', '421222', '通城县', '216', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1929', '421223', '崇阳县', '216', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('193', '410600', '鹤壁市', '16', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('1930', '421224', '通山县', '216', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1931', '421281', '赤壁市', '216', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1932', '421303', '曾都区', '217', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1933', '421321', '随县', '217', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1934', '421381', '广水市', '217', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('1935', '422801', '恩施市', '218', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('1936', '422802', '利川市', '218', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1937', '422822', '建始县', '218', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1938', '422823', '巴东县', '218', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1939', '422825', '宣恩县', '218', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('194', '410700', '新乡市', '16', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1940', '422826', '咸丰县', '218', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1941', '422827', '来凤县', '218', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1942', '422828', '鹤峰县', '218', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1943', '429004', '仙桃市', '219', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1944', '429005', '潜江市', '219', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('1945', '429006', '天门市', '219', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1946', '429021', '神农架林区', '219', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1947', '430102', '芙蓉区', '220', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('1948', '430103', '天心区', '220', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('1949', '430104', '岳麓区', '220', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('195', '410800', '焦作市', '16', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('1950', '430105', '开福区', '220', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('1951', '430111', '雨花区', '220', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1952', '430112', '望城区', '220', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1953', '430121', '长沙县', '220', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1954', '430124', '宁乡县', '220', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1955', '430181', '浏阳市', '220', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1956', '430202', '荷塘区', '221', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1957', '430203', '芦淞区', '221', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1958', '430204', '石峰区', '221', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1959', '430211', '天元区', '221', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('196', '410900', '濮阳市', '16', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('1960', '430221', '株洲县', '221', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1961', '430223', '攸县', '221', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1962', '430224', '茶陵县', '221', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1963', '430225', '炎陵县', '221', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1964', '430281', '醴陵市', '221', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1965', '430302', '雨湖区', '222', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1966', '430304', '岳塘区', '222', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1967', '430321', '湘潭县', '222', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1968', '430381', '湘乡市', '222', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1969', '430382', '韶山市', '222', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('197', '411000', '许昌市', '16', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('1970', '430405', '珠晖区', '223', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1971', '430406', '雁峰区', '223', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1972', '430407', '石鼓区', '223', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1973', '430408', '蒸湘区', '223', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('1974', '430412', '南岳区', '223', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('1975', '430421', '衡阳县', '223', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1976', '430422', '衡南县', '223', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1977', '430423', '衡山县', '223', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1978', '430424', '衡东县', '223', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1979', '430426', '祁东县', '223', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('198', '411100', '漯河市', '16', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('1980', '430481', '耒阳市', '223', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1981', '430482', '常宁市', '223', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1982', '430502', '双清区', '224', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1983', '430503', '大祥区', '224', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('1984', '430511', '北塔区', '224', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('1985', '430521', '邵东县', '224', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1986', '430522', '新邵县', '224', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1987', '430523', '邵阳县', '224', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1988', '430524', '隆回县', '224', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('1989', '430525', '洞口县', '224', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('199', '411200', '三门峡市', '16', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('1990', '430527', '绥宁县', '224', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('1991', '430528', '新宁县', '224', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('1992', '430529', '城步苗族自治县', '224', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('1993', '430581', '武冈市', '224', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('1994', '430602', '岳阳楼区', '225', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1995', '430603', '云溪区', '225', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1996', '430611', '君山区', '225', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('1997', '430621', '岳阳县', '225', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('1998', '430623', '华容县', '225', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('1999', '430624', '湘阴县', '225', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2', '120000', '天津市', '0', 'T', '0');
INSERT INTO `sys_dict_area` VALUES ('20', '450000', '广西壮族自治区', '0', 'G', '0');
INSERT INTO `sys_dict_area` VALUES ('200', '411300', '南阳市', '16', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('2000', '430626', '平江县', '225', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2001', '430681', '汨罗市', '225', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2002', '430682', '临湘市', '225', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2003', '430702', '武陵区', '226', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2004', '430703', '鼎城区', '226', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2005', '430721', '安乡县', '226', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2006', '430722', '汉寿县', '226', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2007', '430723', '澧县', '226', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2008', '430724', '临澧县', '226', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2009', '430725', '桃源县', '226', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('201', '411400', '商丘市', '16', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2010', '430726', '石门县', '226', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2011', '430781', '津市市', '226', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2012', '430802', '永定区', '227', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2013', '430811', '武陵源区', '227', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2014', '430821', '慈利县', '227', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2015', '430822', '桑植县', '227', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2016', '430902', '资阳区', '228', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2017', '430903', '赫山区', '228', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2018', '430921', '南县', '228', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2019', '430922', '桃江县', '228', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('202', '411500', '信阳市', '16', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2020', '430923', '安化县', '228', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2021', '430981', '沅江市', '228', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2022', '431002', '北湖区', '229', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2023', '431003', '苏仙区', '229', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2024', '431021', '桂阳县', '229', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2025', '431022', '宜章县', '229', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2026', '431023', '永兴县', '229', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2027', '431024', '嘉禾县', '229', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2028', '431025', '临武县', '229', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2029', '431026', '汝城县', '229', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('203', '411600', '周口市', '16', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2030', '431027', '桂东县', '229', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2031', '431028', '安仁县', '229', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2032', '431081', '资兴市', '229', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2033', '431102', '零陵区', '230', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2034', '431103', '冷水滩区', '230', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2035', '431121', '祁阳县', '230', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2036', '431122', '东安县', '230', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2037', '431123', '双牌县', '230', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2038', '431124', '道县', '230', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2039', '431125', '江永县', '230', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('204', '411700', '驻马店市', '16', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2040', '431126', '宁远县', '230', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2041', '431127', '蓝山县', '230', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2042', '431128', '新田县', '230', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2043', '431129', '江华瑶族自治县', '230', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2044', '431202', '鹤城区', '231', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2045', '431221', '中方县', '231', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2046', '431222', '沅陵县', '231', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2047', '431223', '辰溪县', '231', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2048', '431224', '溆浦县', '231', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2049', '431225', '会同县', '231', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('205', '419000', '省直辖县级行政区划', '16', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2050', '431226', '麻阳苗族自治县', '231', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2051', '431227', '新晃侗族自治县', '231', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2052', '431228', '芷江侗族自治县', '231', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2053', '431229', '靖州苗族侗族自治县', '231', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2054', '431230', '通道侗族自治县', '231', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2055', '431281', '洪江市', '231', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2056', '431302', '娄星区', '232', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2057', '431321', '双峰县', '232', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2058', '431322', '新化县', '232', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2059', '431381', '冷水江市', '232', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('206', '420100', '武汉市', '17', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('2060', '431382', '涟源市', '232', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2061', '433101', '吉首市', '233', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2062', '433122', '泸溪县', '233', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2063', '433123', '凤凰县', '233', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2064', '433124', '花垣县', '233', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2065', '433125', '保靖县', '233', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2066', '433126', '古丈县', '233', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2067', '433127', '永顺县', '233', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2068', '433130', '龙山县', '233', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2069', '440103', '荔湾区', '234', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('207', '420200', '黄石市', '17', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2070', '440104', '越秀区', '234', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2071', '440105', '海珠区', '234', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2072', '440106', '天河区', '234', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2073', '440111', '白云区', '234', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2074', '440112', '黄埔区', '234', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2075', '440113', '番禺区', '234', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2076', '440114', '花都区', '234', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2077', '440115', '南沙区', '234', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2078', '440116', '萝岗区', '234', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2079', '440117', '从化区', '234', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('208', '420300', '十堰市', '17', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2080', '440118', '增城区', '234', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2081', '440203', '武江区', '235', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2082', '440204', '浈江区', '235', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2083', '440205', '曲江区', '235', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2084', '440222', '始兴县', '235', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2085', '440224', '仁化县', '235', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2086', '440229', '翁源县', '235', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2087', '440232', '乳源瑶族自治县', '235', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2088', '440233', '新丰县', '235', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2089', '440281', '乐昌市', '235', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('209', '420500', '宜昌市', '17', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2090', '440282', '南雄市', '235', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2091', '440303', '罗湖区', '236', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2092', '440304', '福田区', '236', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2093', '440306', '宝安区', '236', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2094', '440307', '龙岗区', '236', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2095', '440308', '盐田区', '236', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2096', '440402', '香洲区', '237', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2097', '440403', '斗门区', '237', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2098', '440404', '金湾区', '237', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2099', '440507', '龙湖区', '238', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('21', '460000', '海南省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('210', '420600', '襄阳市', '17', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2100', '440511', '金平区', '238', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2101', '440512', '濠江区', '238', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2102', '440513', '潮阳区', '238', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2103', '440514', '潮南区', '238', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2104', '440515', '澄海区', '238', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2105', '440523', '南澳县', '238', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2106', '440604', '禅城区', '239', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2107', '440605', '南海区', '239', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2108', '440606', '顺德区', '239', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2109', '440607', '三水区', '239', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('211', '420700', '鄂州市', '17', 'E', '1');
INSERT INTO `sys_dict_area` VALUES ('2110', '440608', '高明区', '239', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2111', '440703', '蓬江区', '240', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2112', '440704', '江海区', '240', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2113', '440705', '新会区', '240', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2114', '440781', '台山市', '240', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2115', '440783', '开平市', '240', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2116', '440784', '鹤山市', '240', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2117', '440785', '恩平市', '240', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2118', '440802', '赤坎区', '241', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2119', '440803', '霞山区', '241', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('212', '420800', '荆门市', '17', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('2120', '440804', '坡头区', '241', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2121', '440811', '麻章区', '241', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2122', '440823', '遂溪县', '241', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2123', '440825', '徐闻县', '241', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2124', '440881', '廉江市', '241', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2125', '440882', '雷州市', '241', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2126', '440883', '吴川市', '241', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2127', '440902', '茂南区', '242', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2128', '440904', '电白区', '242', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2129', '440981', '高州市', '242', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('213', '420900', '孝感市', '17', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2130', '440982', '化州市', '242', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2131', '440983', '信宜市', '242', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2132', '441202', '端州区', '243', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2133', '441203', '鼎湖区', '243', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2134', '441223', '广宁县', '243', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2135', '441224', '怀集县', '243', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2136', '441225', '封开县', '243', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2137', '441226', '德庆县', '243', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2138', '441283', '高要市', '243', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2139', '441284', '四会市', '243', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('214', '421000', '荆州市', '17', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('2140', '441302', '惠城区', '244', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2141', '441303', '惠阳区', '244', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2142', '441322', '博罗县', '244', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2143', '441323', '惠东县', '244', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2144', '441324', '龙门县', '244', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2145', '441402', '梅江区', '245', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2146', '441403', '梅县区', '245', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2147', '441422', '大埔县', '245', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2148', '441423', '丰顺县', '245', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2149', '441424', '五华县', '245', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('215', '421100', '黄冈市', '17', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2150', '441426', '平远县', '245', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2151', '441427', '蕉岭县', '245', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2152', '441481', '兴宁市', '245', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2153', '441521', '海丰县', '246', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2154', '441523', '陆河县', '246', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2155', '441581', '陆丰市', '246', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2156', '441602', '源城区', '247', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2157', '441621', '紫金县', '247', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2158', '441622', '龙川县', '247', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2159', '441623', '连平县', '247', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('216', '421200', '咸宁市', '17', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2160', '441624', '和平县', '247', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2161', '441625', '东源县', '247', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2162', '441702', '江城区', '248', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2163', '441721', '阳西县', '248', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2164', '441723', '阳东县', '248', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2165', '441781', '阳春市', '248', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2166', '441802', '清城区', '249', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2167', '441803', '清新区', '249', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2168', '441821', '佛冈县', '249', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2169', '441823', '阳山县', '249', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('217', '421300', '随州市', '17', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2170', '441825', '连山壮族瑶族自治县', '249', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2171', '441826', '连南瑶族自治县', '249', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2172', '441881', '英德市', '249', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2173', '441882', '连州市', '249', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2174', '445102', '湘桥区', '252', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2175', '445103', '潮安区', '252', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2176', '445122', '饶平县', '252', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2177', '445202', '榕城区', '253', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2178', '445203', '揭东区', '253', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2179', '445222', '揭西县', '253', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('218', '422800', '恩施土家族苗族自治州', '17', 'E', '1');
INSERT INTO `sys_dict_area` VALUES ('2180', '445224', '惠来县', '253', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2181', '445281', '普宁市', '253', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2182', '445302', '云城区', '254', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2183', '445303', '云安区', '254', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2184', '445321', '新兴县', '254', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2185', '445322', '郁南县', '254', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2186', '445381', '罗定市', '254', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2187', '450102', '兴宁区', '255', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2188', '450103', '青秀区', '255', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2189', '450105', '江南区', '255', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('219', '429000', '省直辖县级行政区划', '17', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2190', '450107', '西乡塘区', '255', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2191', '450108', '良庆区', '255', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2192', '450109', '邕宁区', '255', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2193', '450122', '武鸣县', '255', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2194', '450123', '隆安县', '255', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2195', '450124', '马山县', '255', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2196', '450125', '上林县', '255', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2197', '450126', '宾阳县', '255', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2198', '450127', '横县', '255', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2199', '450202', '城中区', '256', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('22', '500000', '重庆市', '0', 'Z', '0');
INSERT INTO `sys_dict_area` VALUES ('220', '430100', '长沙市', '18', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2200', '450203', '鱼峰区', '256', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2201', '450204', '柳南区', '256', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2202', '450205', '柳北区', '256', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2203', '450221', '柳江县', '256', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2204', '450222', '柳城县', '256', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2205', '450223', '鹿寨县', '256', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2206', '450224', '融安县', '256', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2207', '450225', '融水苗族自治县', '256', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2208', '450226', '三江侗族自治县', '256', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2209', '450302', '秀峰区', '257', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('221', '430200', '株洲市', '18', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2210', '450303', '叠彩区', '257', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2211', '450304', '象山区', '257', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2212', '450305', '七星区', '257', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2213', '450311', '雁山区', '257', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2214', '450312', '临桂区', '257', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2215', '450321', '阳朔县', '257', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2216', '450323', '灵川县', '257', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2217', '450324', '全州县', '257', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2218', '450325', '兴安县', '257', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2219', '450326', '永福县', '257', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('222', '430300', '湘潭市', '18', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2220', '450327', '灌阳县', '257', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2221', '450328', '龙胜各族自治县', '257', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2222', '450329', '资源县', '257', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2223', '450330', '平乐县', '257', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2224', '450331', '荔浦县', '257', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2225', '450332', '恭城瑶族自治县', '257', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2226', '450403', '万秀区', '258', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2227', '450405', '长洲区', '258', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2228', '450406', '龙圩区', '258', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2229', '450421', '苍梧县', '258', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('223', '430400', '衡阳市', '18', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2230', '450422', '藤县', '258', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2231', '450423', '蒙山县', '258', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2232', '450481', '岑溪市', '258', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2233', '450502', '海城区', '259', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2234', '450503', '银海区', '259', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2235', '450512', '铁山港区', '259', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2236', '450521', '合浦县', '259', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2237', '450602', '港口区', '260', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2238', '450603', '防城区', '260', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2239', '450621', '上思县', '260', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('224', '430500', '邵阳市', '18', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2240', '450681', '东兴市', '260', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2241', '450702', '钦南区', '261', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2242', '450703', '钦北区', '261', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2243', '450721', '灵山县', '261', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2244', '450722', '浦北县', '261', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2245', '450802', '港北区', '262', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2246', '450803', '港南区', '262', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2247', '450804', '覃塘区', '262', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2248', '450821', '平南县', '262', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2249', '450881', '桂平市', '262', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('225', '430600', '岳阳市', '18', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2250', '450902', '玉州区', '263', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2251', '450903', '福绵区', '263', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2252', '450921', '容县', '263', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2253', '450922', '陆川县', '263', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2254', '450923', '博白县', '263', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2255', '450924', '兴业县', '263', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2256', '450981', '北流市', '263', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2257', '451002', '右江区', '264', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2258', '451021', '田阳县', '264', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2259', '451022', '田东县', '264', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('226', '430700', '常德市', '18', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2260', '451023', '平果县', '264', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2261', '451024', '德保县', '264', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2262', '451025', '靖西县', '264', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2263', '451026', '那坡县', '264', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2264', '451027', '凌云县', '264', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2265', '451028', '乐业县', '264', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2266', '451029', '田林县', '264', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2267', '451030', '西林县', '264', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2268', '451031', '隆林各族自治县', '264', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2269', '451102', '八步区', '265', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('227', '430800', '张家界市', '18', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2270', '451121', '昭平县', '265', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2271', '451122', '钟山县', '265', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2272', '451123', '富川瑶族自治县', '265', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2273', '451202', '金城江区', '266', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2274', '451221', '南丹县', '266', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2275', '451222', '天峨县', '266', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2276', '451223', '凤山县', '266', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2277', '451224', '东兰县', '266', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2278', '451225', '罗城仫佬族自治县', '266', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2279', '451226', '环江毛南族自治县', '266', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('228', '430900', '益阳市', '18', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2280', '451227', '巴马瑶族自治县', '266', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2281', '451228', '都安瑶族自治县', '266', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2282', '451229', '大化瑶族自治县', '266', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2283', '451281', '宜州市', '266', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2284', '451302', '兴宾区', '267', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2285', '451321', '忻城县', '267', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2286', '451322', '象州县', '267', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2287', '451323', '武宣县', '267', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2288', '451324', '金秀瑶族自治县', '267', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2289', '451381', '合山市', '267', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('229', '431000', '郴州市', '18', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2290', '451402', '江州区', '268', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2291', '451421', '扶绥县', '268', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2292', '451422', '宁明县', '268', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2293', '451423', '龙州县', '268', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2294', '451424', '大新县', '268', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2295', '451425', '天等县', '268', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2296', '451481', '凭祥市', '268', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2297', '460105', '秀英区', '269', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2298', '460106', '龙华区', '269', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2299', '460107', '琼山区', '269', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('23', '510000', '四川省', '0', 'S', '0');
INSERT INTO `sys_dict_area` VALUES ('230', '431100', '永州市', '18', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2300', '460108', '美兰区', '269', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2301', '460202', '海棠区', '270', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2302', '460203', '吉阳区', '270', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2303', '460204', '天涯区', '270', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2304', '460205', '崖州区', '270', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2305', '469001', '五指山市', '272', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2306', '469002', '琼海市', '272', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2307', '469003', '儋州市', '272', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2308', '469005', '文昌市', '272', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2309', '469006', '万宁市', '272', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('231', '431200', '怀化市', '18', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2310', '469007', '东方市', '272', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2311', '469021', '定安县', '272', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2312', '469022', '屯昌县', '272', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2313', '469023', '澄迈县', '272', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2314', '469024', '临高县', '272', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2315', '469025', '白沙黎族自治县', '272', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2316', '469026', '昌江黎族自治县', '272', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2317', '469027', '乐东黎族自治县', '272', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2318', '469028', '陵水黎族自治县', '272', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2319', '469029', '保亭黎族苗族自治县', '272', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('232', '431300', '娄底市', '18', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2320', '469030', '琼中黎族苗族自治县', '272', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2321', '500101', '万州区', '273', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2322', '500102', '涪陵区', '273', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2323', '500103', '渝中区', '273', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2324', '500104', '大渡口区', '273', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2325', '500106', '沙坪坝区', '273', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2326', '500107', '九龙坡区', '273', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2327', '500108', '南岸区', '273', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2328', '500109', '北碚区', '273', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2329', '500110', '綦江区', '273', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('233', '433100', '湘西土家族苗族自治州', '18', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('2330', '500111', '大足区', '273', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2331', '500112', '渝北区', '273', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2332', '500113', '巴南区', '273', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2333', '500114', '黔江区', '273', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2334', '500115', '长寿区', '273', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2335', '500116', '江津区', '273', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2336', '500117', '合川区', '273', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2337', '500118', '永川区', '273', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2338', '500119', '南川区', '273', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2339', '500120', '璧山区', '273', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('234', '440100', '广州市', '19', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2340', '500151', '铜梁区', '273', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2341', '500223', '潼南县', '274', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2342', '500226', '荣昌县', '274', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2343', '500228', '梁平县', '274', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2344', '500229', '城口县', '274', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2345', '500230', '丰都县', '274', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2346', '500231', '垫江县', '274', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2347', '500232', '武隆县', '274', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2348', '500233', '忠县', '274', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2349', '500234', '开县', '274', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('235', '440200', '韶关市', '19', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2350', '500235', '云阳县', '274', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2351', '500236', '奉节县', '274', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2352', '500237', '巫山县', '274', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2353', '500238', '巫溪县', '274', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2354', '500240', '石柱土家族自治县', '274', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2355', '500241', '秀山土家族苗族自治县', '274', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2356', '500242', '酉阳土家族苗族自治县', '274', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2357', '500243', '彭水苗族土家族自治县', '274', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2358', '510104', '锦江区', '275', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2359', '510105', '青羊区', '275', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('236', '440300', '深圳市', '19', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2360', '510106', '金牛区', '275', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2361', '510107', '武侯区', '275', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2362', '510108', '成华区', '275', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2363', '510112', '龙泉驿区', '275', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2364', '510113', '青白江区', '275', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2365', '510114', '新都区', '275', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2366', '510115', '温江区', '275', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2367', '510121', '金堂县', '275', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2368', '510122', '双流县', '275', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2369', '510124', '郫县', '275', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('237', '440400', '珠海市', '19', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2370', '510129', '大邑县', '275', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2371', '510131', '蒲江县', '275', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2372', '510132', '新津县', '275', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2373', '510181', '都江堰市', '275', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2374', '510182', '彭州市', '275', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2375', '510183', '邛崃市', '275', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2376', '510184', '崇州市', '275', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2377', '510302', '自流井区', '276', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2378', '510303', '贡井区', '276', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2379', '510304', '大安区', '276', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('238', '440500', '汕头市', '19', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2380', '510311', '沿滩区', '276', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2381', '510321', '荣县', '276', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2382', '510322', '富顺县', '276', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2383', '510402', '东区', '277', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2384', '510403', '西区', '277', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2385', '510411', '仁和区', '277', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2386', '510421', '米易县', '277', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2387', '510422', '盐边县', '277', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2388', '510502', '江阳区', '278', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2389', '510503', '纳溪区', '278', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('239', '440600', '佛山市', '19', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('2390', '510504', '龙马潭区', '278', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2391', '510521', '泸县', '278', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2392', '510522', '合江县', '278', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2393', '510524', '叙永县', '278', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2394', '510525', '古蔺县', '278', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2395', '510603', '旌阳区', '279', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2396', '510623', '中江县', '279', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2397', '510626', '罗江县', '279', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2398', '510681', '广汉市', '279', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2399', '510682', '什邡市', '279', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('24', '520000', '贵州省', '0', 'G', '0');
INSERT INTO `sys_dict_area` VALUES ('240', '440700', '江门市', '19', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('2400', '510683', '绵竹市', '279', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2401', '510703', '涪城区', '280', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2402', '510704', '游仙区', '280', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2403', '510722', '三台县', '280', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2404', '510723', '盐亭县', '280', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2405', '510724', '安县', '280', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2406', '510725', '梓潼县', '280', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2407', '510726', '北川羌族自治县', '280', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2408', '510727', '平武县', '280', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2409', '510781', '江油市', '280', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('241', '440800', '湛江市', '19', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2410', '510802', '利州区', '281', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2411', '510811', '昭化区', '281', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2412', '510812', '朝天区', '281', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2413', '510821', '旺苍县', '281', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2414', '510822', '青川县', '281', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2415', '510823', '剑阁县', '281', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2416', '510824', '苍溪县', '281', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2417', '510903', '船山区', '282', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2418', '510904', '安居区', '282', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2419', '510921', '蓬溪县', '282', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('242', '440900', '茂名市', '19', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('2420', '510922', '射洪县', '282', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2421', '510923', '大英县', '282', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2422', '511011', '东兴区', '283', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2423', '511024', '威远县', '283', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2424', '511025', '资中县', '283', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2425', '511028', '隆昌县', '283', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2427', '511102', '市中区', '284', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2428', '511111', '沙湾区', '284', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2429', '511112', '五通桥区', '284', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('243', '441200', '肇庆市', '19', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2430', '511113', '金口河区', '284', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2431', '511123', '犍为县', '284', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2432', '511124', '井研县', '284', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2433', '511126', '夹江县', '284', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2434', '511129', '沐川县', '284', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2435', '511132', '峨边彝族自治县', '284', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2436', '511133', '马边彝族自治县', '284', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2437', '511181', '峨眉山市', '284', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2438', '511302', '顺庆区', '285', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2439', '511303', '高坪区', '285', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('244', '441300', '惠州市', '19', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2440', '511304', '嘉陵区', '285', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2441', '511321', '南部县', '285', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2442', '511322', '营山县', '285', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2443', '511323', '蓬安县', '285', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2444', '511324', '仪陇县', '285', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2445', '511325', '西充县', '285', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2446', '511381', '阆中市', '285', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2447', '511402', '东坡区', '286', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2448', '511421', '仁寿县', '286', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2449', '511422', '彭山县', '286', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('245', '441400', '梅州市', '19', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('2450', '511423', '洪雅县', '286', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2451', '511424', '丹棱县', '286', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2452', '511425', '青神县', '286', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2453', '511502', '翠屏区', '287', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2454', '511503', '南溪区', '287', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2455', '511521', '宜宾县', '287', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2456', '511523', '江安县', '287', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2457', '511524', '长宁县', '287', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2458', '511525', '高县', '287', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2459', '511526', '珙县', '287', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('246', '441500', '汕尾市', '19', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2460', '511527', '筠连县', '287', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2461', '511528', '兴文县', '287', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2462', '511529', '屏山县', '287', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2463', '511602', '广安区', '288', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2464', '511603', '前锋区', '288', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2465', '511621', '岳池县', '288', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2466', '511622', '武胜县', '288', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2467', '511623', '邻水县', '288', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2468', '511681', '华蓥市', '288', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2469', '511702', '通川区', '289', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('247', '441600', '河源市', '19', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2470', '511703', '达川区', '289', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2471', '511722', '宣汉县', '289', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2472', '511723', '开江县', '289', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2473', '511724', '大竹县', '289', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2474', '511725', '渠县', '289', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2475', '511781', '万源市', '289', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2476', '511802', '雨城区', '290', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2477', '511803', '名山区', '290', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2478', '511822', '荥经县', '290', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2479', '511823', '汉源县', '290', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('248', '441700', '阳江市', '19', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2480', '511824', '石棉县', '290', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2481', '511825', '天全县', '290', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2482', '511826', '芦山县', '290', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2483', '511827', '宝兴县', '290', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2484', '511902', '巴州区', '291', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2485', '511903', '恩阳区', '291', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2486', '511921', '通江县', '291', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2487', '511922', '南江县', '291', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2488', '511923', '平昌县', '291', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2489', '512002', '雁江区', '292', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('249', '441800', '清远市', '19', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('2490', '512021', '安岳县', '292', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2491', '512022', '乐至县', '292', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2492', '512081', '简阳市', '292', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2493', '513221', '汶川县', '293', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2494', '513222', '理县', '293', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2495', '513223', '茂县', '293', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2496', '513224', '松潘县', '293', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2497', '513225', '九寨沟县', '293', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2498', '513226', '金川县', '293', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2499', '513227', '小金县', '293', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('25', '530000', '云南省', '0', 'Y', '0');
INSERT INTO `sys_dict_area` VALUES ('250', '441900', '东莞市', '19', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('2500', '513228', '黑水县', '293', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2501', '513229', '马尔康县', '293', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2502', '513230', '壤塘县', '293', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2503', '513231', '阿坝县', '293', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2504', '513232', '若尔盖县', '293', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2505', '513233', '红原县', '293', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2506', '513321', '康定县', '294', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2507', '513322', '泸定县', '294', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2508', '513323', '丹巴县', '294', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2509', '513324', '九龙县', '294', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('251', '442000', '中山市', '19', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2510', '513325', '雅江县', '294', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2511', '513326', '道孚县', '294', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2512', '513327', '炉霍县', '294', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2513', '513328', '甘孜县', '294', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2514', '513329', '新龙县', '294', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2515', '513330', '德格县', '294', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2516', '513331', '白玉县', '294', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2517', '513332', '石渠县', '294', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2518', '513333', '色达县', '294', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2519', '513334', '理塘县', '294', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('252', '445100', '潮州市', '19', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2520', '513335', '巴塘县', '294', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2521', '513336', '乡城县', '294', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2522', '513337', '稻城县', '294', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2523', '513338', '得荣县', '294', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2524', '513401', '西昌市', '295', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2525', '513422', '木里藏族自治县', '295', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2526', '513423', '盐源县', '295', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2527', '513424', '德昌县', '295', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2528', '513425', '会理县', '295', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2529', '513426', '会东县', '295', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('253', '445200', '揭阳市', '19', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('2530', '513427', '宁南县', '295', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2531', '513428', '普格县', '295', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2532', '513429', '布拖县', '295', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2533', '513430', '金阳县', '295', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2534', '513431', '昭觉县', '295', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2535', '513432', '喜德县', '295', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2536', '513433', '冕宁县', '295', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2537', '513434', '越西县', '295', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2538', '513435', '甘洛县', '295', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2539', '513436', '美姑县', '295', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('254', '445300', '云浮市', '19', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2540', '513437', '雷波县', '295', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2541', '520102', '南明区', '296', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2542', '520103', '云岩区', '296', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2543', '520111', '花溪区', '296', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2544', '520112', '乌当区', '296', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2545', '520113', '白云区', '296', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2546', '520115', '观山湖区', '296', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2547', '520121', '开阳县', '296', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2548', '520122', '息烽县', '296', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2549', '520123', '修文县', '296', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('255', '450100', '南宁市', '20', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('2550', '520181', '清镇市', '296', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2551', '520201', '钟山区', '297', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2552', '520203', '六枝特区', '297', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2553', '520221', '水城县', '297', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2554', '520222', '盘县', '297', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2555', '520302', '红花岗区', '298', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2556', '520303', '汇川区', '298', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2557', '520321', '遵义县', '298', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2558', '520322', '桐梓县', '298', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2559', '520323', '绥阳县', '298', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('256', '450200', '柳州市', '20', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2560', '520324', '正安县', '298', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2561', '520325', '道真仡佬族苗族自治县', '298', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2562', '520326', '务川仡佬族苗族自治县', '298', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2563', '520327', '凤冈县', '298', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2564', '520328', '湄潭县', '298', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2565', '520329', '余庆县', '298', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2566', '520330', '习水县', '298', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2567', '520381', '赤水市', '298', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2568', '520382', '仁怀市', '298', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2569', '520402', '西秀区', '299', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('257', '450300', '桂林市', '20', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2570', '520421', '平坝县', '299', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2571', '520422', '普定县', '299', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2572', '520423', '镇宁布依族苗族自治县', '299', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2573', '520424', '关岭布依族苗族自治县', '299', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2574', '520425', '紫云苗族布依族自治县', '299', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2575', '520502', '七星关区', '300', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2576', '520521', '大方县', '300', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2577', '520522', '黔西县', '300', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2578', '520523', '金沙县', '300', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2579', '520524', '织金县', '300', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('258', '450400', '梧州市', '20', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('2580', '520525', '纳雍县', '300', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2581', '520526', '威宁彝族回族苗族自治县', '300', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2582', '520527', '赫章县', '300', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2583', '520602', '碧江区', '301', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2584', '520603', '万山区', '301', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2585', '520621', '江口县', '301', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2586', '520622', '玉屏侗族自治县', '301', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2587', '520623', '石阡县', '301', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2588', '520624', '思南县', '301', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2589', '520625', '印江土家族苗族自治县', '301', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('259', '450500', '北海市', '20', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('2590', '520626', '德江县', '301', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2591', '520627', '沿河土家族自治县', '301', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2592', '520628', '松桃苗族自治县', '301', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2593', '522301', '兴义市', '302', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2594', '522322', '兴仁县', '302', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2595', '522323', '普安县', '302', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2596', '522324', '晴隆县', '302', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2597', '522325', '贞丰县', '302', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2598', '522326', '望谟县', '302', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2599', '522327', '册亨县', '302', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('26', '540000', '西藏自治区', '0', 'X', '0');
INSERT INTO `sys_dict_area` VALUES ('260', '450600', '防城港市', '20', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('2600', '522328', '安龙县', '302', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2601', '522601', '凯里市', '303', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2602', '522622', '黄平县', '303', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2603', '522623', '施秉县', '303', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2604', '522624', '三穗县', '303', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2605', '522625', '镇远县', '303', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2606', '522626', '岑巩县', '303', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2607', '522627', '天柱县', '303', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2608', '522628', '锦屏县', '303', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2609', '522629', '剑河县', '303', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('261', '450700', '钦州市', '20', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('2610', '522630', '台江县', '303', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2611', '522631', '黎平县', '303', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2612', '522632', '榕江县', '303', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2613', '522633', '从江县', '303', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2614', '522634', '雷山县', '303', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2615', '522635', '麻江县', '303', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2616', '522636', '丹寨县', '303', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2617', '522701', '都匀市', '304', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2618', '522702', '福泉市', '304', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2619', '522722', '荔波县', '304', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('262', '450800', '贵港市', '20', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2620', '522723', '贵定县', '304', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2621', '522725', '瓮安县', '304', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2622', '522726', '独山县', '304', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2623', '522727', '平塘县', '304', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2624', '522728', '罗甸县', '304', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2625', '522729', '长顺县', '304', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2626', '522730', '龙里县', '304', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2627', '522731', '惠水县', '304', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2628', '522732', '三都水族自治县', '304', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2629', '530102', '五华区', '305', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('263', '450900', '玉林市', '20', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2630', '530103', '盘龙区', '305', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2631', '530111', '官渡区', '305', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2632', '530112', '西山区', '305', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2633', '530113', '东川区', '305', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2634', '530114', '呈贡区', '305', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2635', '530122', '晋宁县', '305', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2636', '530124', '富民县', '305', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2637', '530125', '宜良县', '305', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2638', '530126', '石林彝族自治县', '305', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2639', '530127', '嵩明县', '305', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('264', '451000', '百色市', '20', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('2640', '530128', '禄劝彝族苗族自治县', '305', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2641', '530129', '寻甸回族彝族自治县', '305', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2642', '530181', '安宁市', '305', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2643', '530302', '麒麟区', '306', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2644', '530321', '马龙县', '306', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2645', '530322', '陆良县', '306', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2646', '530323', '师宗县', '306', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2647', '530324', '罗平县', '306', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2648', '530325', '富源县', '306', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2649', '530326', '会泽县', '306', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('265', '451100', '贺州市', '20', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2650', '530328', '沾益县', '306', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2651', '530381', '宣威市', '306', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2652', '530402', '红塔区', '307', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2653', '530421', '江川县', '307', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2654', '530422', '澄江县', '307', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2655', '530423', '通海县', '307', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2656', '530424', '华宁县', '307', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2657', '530425', '易门县', '307', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2658', '530426', '峨山彝族自治县', '307', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2659', '530427', '新平彝族傣族自治县', '307', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('266', '451200', '河池市', '20', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2660', '530428', '元江哈尼族彝族傣族自治县', '307', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2661', '530502', '隆阳区', '308', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2662', '530521', '施甸县', '308', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2663', '530522', '腾冲县', '308', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2664', '530523', '龙陵县', '308', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2665', '530524', '昌宁县', '308', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2666', '530602', '昭阳区', '309', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2667', '530621', '鲁甸县', '309', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2668', '530622', '巧家县', '309', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2669', '530623', '盐津县', '309', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('267', '451300', '来宾市', '20', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2670', '530624', '大关县', '309', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2671', '530625', '永善县', '309', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2672', '530626', '绥江县', '309', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2673', '530627', '镇雄县', '309', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2674', '530628', '彝良县', '309', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2675', '530629', '威信县', '309', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2676', '530630', '水富县', '309', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2677', '530702', '古城区', '310', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2678', '530721', '玉龙纳西族自治县', '310', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2679', '530722', '永胜县', '310', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('268', '451400', '崇左市', '20', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2680', '530723', '华坪县', '310', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2681', '530724', '宁蒗彝族自治县', '310', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2682', '530802', '思茅区', '311', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2683', '530821', '宁洱哈尼族彝族自治县', '311', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2684', '530822', '墨江哈尼族自治县', '311', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2685', '530823', '景东彝族自治县', '311', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2686', '530824', '景谷傣族彝族自治县', '311', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2687', '530825', '镇沅彝族哈尼族拉祜族自治县', '311', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2688', '530826', '江城哈尼族彝族自治县', '311', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2689', '530827', '孟连傣族拉祜族佤族自治县', '311', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('269', '460100', '海口市', '21', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('2690', '530828', '澜沧拉祜族自治县', '311', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2691', '530829', '西盟佤族自治县', '311', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2692', '530902', '临翔区', '312', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2693', '530921', '凤庆县', '312', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2694', '530922', '云县', '312', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2695', '530923', '永德县', '312', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2696', '530924', '镇康县', '312', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2697', '530925', '双江拉祜族佤族布朗族傣族自治县', '312', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2698', '530926', '耿马傣族佤族自治县', '312', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2699', '530927', '沧源佤族自治县', '312', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('27', '610000', '陕西省', '0', 'S', '0');
INSERT INTO `sys_dict_area` VALUES ('270', '460200', '三亚市', '21', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2700', '532301', '楚雄市', '313', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2701', '532322', '双柏县', '313', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2702', '532323', '牟定县', '313', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2703', '532324', '南华县', '313', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2704', '532325', '姚安县', '313', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2705', '532326', '大姚县', '313', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2706', '532327', '永仁县', '313', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2707', '532328', '元谋县', '313', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2708', '532329', '武定县', '313', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2709', '532331', '禄丰县', '313', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('271', '460300', '三沙市', '21', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2710', '532501', '个旧市', '314', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2711', '532502', '开远市', '314', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2712', '532503', '蒙自市', '314', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2713', '532504', '弥勒市', '314', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2714', '532523', '屏边苗族自治县', '314', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2715', '532524', '建水县', '314', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2716', '532525', '石屏县', '314', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2717', '532527', '泸西县', '314', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2718', '532528', '元阳县', '314', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2719', '532529', '红河县', '314', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('272', '469000', '省直辖县级行政区划', '21', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2720', '532530', '金平苗族瑶族傣族自治县', '314', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2721', '532531', '绿春县', '314', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2722', '532532', '河口瑶族自治县', '314', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2723', '532601', '文山市', '315', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2724', '532622', '砚山县', '315', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2725', '532623', '西畴县', '315', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2726', '532624', '麻栗坡县', '315', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2727', '532625', '马关县', '315', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2728', '532626', '丘北县', '315', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2729', '532627', '广南县', '315', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('273', '500100', '重庆市', '22', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2730', '532628', '富宁县', '315', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2731', '532801', '景洪市', '316', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2732', '532822', '勐海县', '316', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2733', '532823', '勐腊县', '316', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2734', '532901', '大理市', '317', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2735', '532922', '漾濞彝族自治县', '317', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2736', '532923', '祥云县', '317', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2737', '532924', '宾川县', '317', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2738', '532925', '弥渡县', '317', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2739', '532926', '南涧彝族自治县', '317', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('274', '500200', '重庆县', '22', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2740', '532927', '巍山彝族回族自治县', '317', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2741', '532928', '永平县', '317', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2742', '532929', '云龙县', '317', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2743', '532930', '洱源县', '317', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('2744', '532931', '剑川县', '317', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2745', '532932', '鹤庆县', '317', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2746', '533102', '瑞丽市', '318', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2747', '533103', '芒市', '318', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2748', '533122', '梁河县', '318', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2749', '533123', '盈江县', '318', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('275', '510100', '成都市', '23', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('2750', '533124', '陇川县', '318', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2751', '533321', '泸水县', '319', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2752', '533323', '福贡县', '319', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2753', '533324', '贡山独龙族怒族自治县', '319', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2754', '533325', '兰坪白族普米族自治县', '319', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2755', '533421', '香格里拉县', '320', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2756', '533422', '德钦县', '320', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2757', '533423', '维西傈僳族自治县', '320', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2758', '540102', '城关区', '321', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2759', '540121', '林周县', '321', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('276', '510300', '自贡市', '23', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2760', '540122', '当雄县', '321', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2761', '540123', '尼木县', '321', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2762', '540124', '曲水县', '321', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2763', '540125', '堆龙德庆县', '321', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2764', '540126', '达孜县', '321', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2765', '540127', '墨竹工卡县', '321', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2766', '540202', '桑珠孜区', '322', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2767', '540221', '南木林县', '322', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2768', '540222', '江孜县', '322', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2769', '540223', '定日县', '322', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('277', '510400', '攀枝花市', '23', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('2770', '540224', '萨迦县', '322', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2771', '540225', '拉孜县', '322', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2772', '540226', '昂仁县', '322', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2773', '540227', '谢通门县', '322', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2774', '540228', '白朗县', '322', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2775', '540229', '仁布县', '322', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2776', '540230', '康马县', '322', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2777', '540231', '定结县', '322', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2778', '540232', '仲巴县', '322', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2779', '540233', '亚东县', '322', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('278', '510500', '泸州市', '23', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2780', '540234', '吉隆县', '322', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2781', '540235', '聂拉木县', '322', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2782', '540236', '萨嘎县', '322', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2783', '540237', '岗巴县', '322', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2784', '542121', '昌都县', '323', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2785', '542122', '江达县', '323', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2786', '542123', '贡觉县', '323', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2787', '542124', '类乌齐县', '323', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2788', '542125', '丁青县', '323', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2789', '542126', '察雅县', '323', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('279', '510600', '德阳市', '23', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('2790', '542127', '八宿县', '323', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2791', '542128', '左贡县', '323', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2792', '542129', '芒康县', '323', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2793', '542132', '洛隆县', '323', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2794', '542133', '边坝县', '323', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2795', '542221', '乃东县', '324', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2796', '542222', '扎囊县', '324', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2797', '542223', '贡嘎县', '324', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2798', '542224', '桑日县', '324', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2799', '542225', '琼结县', '324', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('28', '620000', '甘肃省', '0', 'G', '0');
INSERT INTO `sys_dict_area` VALUES ('280', '510700', '绵阳市', '23', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('2800', '542226', '曲松县', '324', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2801', '542227', '措美县', '324', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2802', '542228', '洛扎县', '324', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2803', '542229', '加查县', '324', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2804', '542231', '隆子县', '324', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2805', '542232', '错那县', '324', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2806', '542233', '浪卡子县', '324', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2807', '542421', '那曲县', '325', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2808', '542422', '嘉黎县', '325', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2809', '542423', '比如县', '325', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('281', '510800', '广元市', '23', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2810', '542424', '聂荣县', '325', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2811', '542425', '安多县', '325', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2812', '542426', '申扎县', '325', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2813', '542427', '索县', '325', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2814', '542428', '班戈县', '325', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2815', '542429', '巴青县', '325', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2816', '542430', '尼玛县', '325', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2817', '542431', '双湖县', '325', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2818', '542521', '普兰县', '326', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2819', '542522', '札达县', '326', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('282', '510900', '遂宁市', '23', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('2820', '542523', '噶尔县', '326', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2821', '542524', '日土县', '326', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('2822', '542525', '革吉县', '326', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2823', '542526', '改则县', '326', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2824', '542527', '措勤县', '326', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2825', '542621', '林芝县', '327', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2826', '542622', '工布江达县', '327', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2827', '542623', '米林县', '327', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2828', '542624', '墨脱县', '327', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2829', '542625', '波密县', '327', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('283', '511000', '内江市', '23', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('2830', '542626', '察隅县', '327', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2831', '542627', '朗县', '327', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2832', '610103', '碑林区', '328', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2833', '610104', '莲湖区', '328', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2834', '610111', '灞桥区', '328', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2835', '610112', '未央区', '328', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2836', '610113', '雁塔区', '328', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2837', '610114', '阎良区', '328', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2838', '610115', '临潼区', '328', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2839', '610122', '蓝田县', '328', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('284', '511100', '乐山市', '23', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2840', '610124', '周至县', '328', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2841', '610125', '户县', '328', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2842', '610126', '高陵县', '328', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2843', '610202', '王益区', '329', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2844', '610203', '印台区', '329', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2845', '610204', '耀州区', '329', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2846', '610222', '宜君县', '329', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2847', '610302', '渭滨区', '330', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2848', '610303', '金台区', '330', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2849', '610304', '陈仓区', '330', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('285', '511300', '南充市', '23', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('2850', '610322', '凤翔县', '330', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2851', '610323', '岐山县', '330', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2852', '610324', '扶风县', '330', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2853', '610326', '眉县', '330', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2854', '610327', '陇县', '330', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2855', '610328', '千阳县', '330', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2856', '610329', '麟游县', '330', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2857', '610330', '凤县', '330', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2858', '610331', '太白县', '330', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2859', '610402', '秦都区', '331', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('286', '511400', '眉山市', '23', 'M', '1');
INSERT INTO `sys_dict_area` VALUES ('2860', '610403', '杨陵区', '331', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2861', '610404', '渭城区', '331', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2862', '610422', '三原县', '331', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2863', '610423', '泾阳县', '331', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2864', '610424', '乾县', '331', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2865', '610425', '礼泉县', '331', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2866', '610426', '永寿县', '331', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2867', '610427', '彬县', '331', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2868', '610428', '长武县', '331', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2869', '610429', '旬邑县', '331', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('287', '511500', '宜宾市', '23', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2870', '610430', '淳化县', '331', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2871', '610431', '武功县', '331', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2872', '610481', '兴平市', '331', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2873', '610502', '临渭区', '332', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2874', '610521', '华县', '332', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2875', '610522', '潼关县', '332', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2876', '610523', '大荔县', '332', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2877', '610524', '合阳县', '332', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2878', '610525', '澄城县', '332', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2879', '610526', '蒲城县', '332', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('288', '511600', '广安市', '23', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2880', '610527', '白水县', '332', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2881', '610528', '富平县', '332', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2882', '610581', '韩城市', '332', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2883', '610582', '华阴市', '332', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2884', '610602', '宝塔区', '333', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2885', '610621', '延长县', '333', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2886', '610622', '延川县', '333', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2887', '610623', '子长县', '333', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2888', '610624', '安塞县', '333', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2889', '610625', '志丹县', '333', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('289', '511700', '达州市', '23', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('2890', '610626', '吴起县', '333', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2891', '610627', '甘泉县', '333', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2892', '610628', '富县', '333', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2893', '610629', '洛川县', '333', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2894', '610630', '宜川县', '333', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2895', '610631', '黄龙县', '333', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2896', '610632', '黄陵县', '333', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2897', '610702', '汉台区', '334', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2898', '610721', '南郑县', '334', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2899', '610722', '城固县', '334', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('29', '630000', '青海省', '0', 'Q', '0');
INSERT INTO `sys_dict_area` VALUES ('290', '511800', '雅安市', '23', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('2900', '610723', '洋县', '334', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2901', '610724', '西乡县', '334', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2902', '610725', '勉县', '334', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2903', '610726', '宁强县', '334', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2904', '610727', '略阳县', '334', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2905', '610728', '镇巴县', '334', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2906', '610729', '留坝县', '334', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2907', '610730', '佛坪县', '334', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2908', '610802', '榆阳区', '335', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2909', '610821', '神木县', '335', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('291', '511900', '巴中市', '23', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('2910', '610822', '府谷县', '335', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('2911', '610823', '横山县', '335', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2912', '610824', '靖边县', '335', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2913', '610825', '定边县', '335', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2914', '610826', '绥德县', '335', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2915', '610827', '米脂县', '335', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2916', '610828', '佳县', '335', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2917', '610829', '吴堡县', '335', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2918', '610830', '清涧县', '335', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2919', '610831', '子洲县', '335', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('292', '512000', '资阳市', '23', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2920', '610902', '汉滨区', '336', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2921', '610921', '汉阴县', '336', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2922', '610922', '石泉县', '336', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2923', '610923', '宁陕县', '336', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2924', '610924', '紫阳县', '336', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2925', '610925', '岚皋县', '336', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2926', '610926', '平利县', '336', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2927', '610927', '镇坪县', '336', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2928', '610928', '旬阳县', '336', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2929', '610929', '白河县', '336', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('293', '513200', '阿坝藏族羌族自治州', '23', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('2930', '611002', '商州区', '337', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2931', '611021', '洛南县', '337', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2932', '611022', '丹凤县', '337', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2933', '611023', '商南县', '337', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2934', '611024', '山阳县', '337', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2935', '611025', '镇安县', '337', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2936', '611026', '柞水县', '337', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2937', '620103', '七里河区', '338', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2938', '620104', '西固区', '338', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2939', '620105', '安宁区', '338', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('294', '513300', '甘孜藏族自治州', '23', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2940', '620111', '红古区', '338', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2941', '620121', '永登县', '338', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2942', '620122', '皋兰县', '338', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2943', '620123', '榆中县', '338', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2944', '620302', '金川区', '340', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2945', '620321', '永昌县', '340', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2946', '620402', '白银区', '341', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('2947', '620403', '平川区', '341', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('2948', '620421', '靖远县', '341', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2949', '620422', '会宁县', '341', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('295', '513400', '凉山彝族自治州', '23', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2950', '620423', '景泰县', '341', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2951', '620502', '秦州区', '342', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2952', '620503', '麦积区', '342', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2953', '620521', '清水县', '342', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2954', '620522', '秦安县', '342', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2955', '620523', '甘谷县', '342', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2956', '620524', '武山县', '342', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2957', '620525', '张家川回族自治县', '342', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2958', '620602', '凉州区', '343', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2959', '620621', '民勤县', '343', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('296', '520100', '贵阳市', '24', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('2960', '620622', '古浪县', '343', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2961', '620623', '天祝藏族自治县', '343', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2962', '620702', '甘州区', '344', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2963', '620721', '肃南裕固族自治县', '344', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2964', '620722', '民乐县', '344', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2965', '620723', '临泽县', '344', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2966', '620724', '高台县', '344', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2967', '620725', '山丹县', '344', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2968', '620802', '崆峒区', '345', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('2969', '620821', '泾川县', '345', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('297', '520200', '六盘水市', '24', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('2970', '620822', '灵台县', '345', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2971', '620823', '崇信县', '345', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2972', '620824', '华亭县', '345', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2973', '620825', '庄浪县', '345', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2974', '620826', '静宁县', '345', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2975', '620902', '肃州区', '346', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2976', '620921', '金塔县', '346', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('2977', '620922', '瓜州县', '346', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('2978', '620923', '肃北蒙古族自治县', '346', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('2979', '620924', '阿克塞哈萨克族自治县', '346', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('298', '520300', '遵义市', '24', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('2980', '620981', '玉门市', '346', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('2981', '620982', '敦煌市', '346', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('2982', '621002', '西峰区', '347', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('2983', '621021', '庆城县', '347', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('2984', '621022', '环县', '347', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2985', '621023', '华池县', '347', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2986', '621024', '合水县', '347', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('2987', '621025', '正宁县', '347', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2988', '621026', '宁县', '347', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('2989', '621027', '镇原县', '347', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('299', '520400', '安顺市', '24', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('2990', '621102', '安定区', '348', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('2991', '621121', '通渭县', '348', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('2992', '621122', '陇西县', '348', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2993', '621123', '渭源县', '348', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2994', '621124', '临洮县', '348', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('2995', '621125', '漳县', '348', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('2996', '621126', '岷县', '348', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('2997', '621202', '武都区', '349', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('2998', '621221', '成县', '349', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('2999', '621222', '文县', '349', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3', '130000', '河北省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('30', '640000', '宁夏回族自治区', '0', 'N', '0');
INSERT INTO `sys_dict_area` VALUES ('300', '520500', '毕节市', '24', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('3000', '621223', '宕昌县', '349', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3001', '621224', '康县', '349', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3002', '621225', '西和县', '349', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3003', '621226', '礼县', '349', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3004', '621227', '徽县', '349', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3005', '621228', '两当县', '349', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3006', '622901', '临夏市', '350', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3007', '622921', '临夏县', '350', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3008', '622922', '康乐县', '350', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3009', '622923', '永靖县', '350', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('301', '520600', '铜仁市', '24', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('3010', '622924', '广河县', '350', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3011', '622925', '和政县', '350', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3012', '622926', '东乡族自治县', '350', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3013', '622927', '积石山保安族东乡族撒拉族自治县', '350', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3014', '623001', '合作市', '351', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3015', '623021', '临潭县', '351', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3016', '623022', '卓尼县', '351', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3017', '623023', '舟曲县', '351', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3018', '623024', '迭部县', '351', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3019', '623025', '玛曲县', '351', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('302', '522300', '黔西南布依族苗族自治州', '24', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('3020', '623026', '碌曲县', '351', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3021', '623027', '夏河县', '351', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3022', '630102', '城东区', '352', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3023', '630104', '城西区', '352', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3024', '630105', '城北区', '352', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3025', '630121', '大通回族土族自治县', '352', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3026', '630122', '湟中县', '352', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3027', '630123', '湟源县', '352', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3028', '630202', '乐都区', '353', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3029', '630221', '平安县', '353', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('303', '522600', '黔东南苗族侗族自治州', '24', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('3030', '630222', '民和回族土族自治县', '353', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3031', '630223', '互助土族自治县', '353', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3032', '630224', '化隆回族自治县', '353', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3033', '630225', '循化撒拉族自治县', '353', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3034', '632221', '门源回族自治县', '354', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3035', '632222', '祁连县', '354', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3036', '632223', '海晏县', '354', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3037', '632224', '刚察县', '354', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3038', '632321', '同仁县', '355', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3039', '632322', '尖扎县', '355', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('304', '522700', '黔南布依族苗族自治州', '24', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('3040', '632323', '泽库县', '355', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3041', '632324', '河南蒙古族自治县', '355', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3042', '632521', '共和县', '356', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3043', '632522', '同德县', '356', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3044', '632523', '贵德县', '356', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3045', '632524', '兴海县', '356', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3046', '632525', '贵南县', '356', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3047', '632621', '玛沁县', '357', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3048', '632622', '班玛县', '357', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3049', '632623', '甘德县', '357', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('305', '530100', '昆明市', '25', 'K', '1');
INSERT INTO `sys_dict_area` VALUES ('3050', '632624', '达日县', '357', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3051', '632625', '久治县', '357', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3052', '632626', '玛多县', '357', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3053', '632701', '玉树市', '358', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3054', '632722', '杂多县', '358', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3055', '632723', '称多县', '358', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3056', '632724', '治多县', '358', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3057', '632725', '囊谦县', '358', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('3058', '632726', '曲麻莱县', '358', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3059', '632801', '格尔木市', '359', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('306', '530300', '曲靖市', '25', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('3060', '632802', '德令哈市', '359', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3061', '632821', '乌兰县', '359', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3062', '632822', '都兰县', '359', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3063', '632823', '天峻县', '359', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3064', '640104', '兴庆区', '360', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3065', '640105', '西夏区', '360', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3066', '640106', '金凤区', '360', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3067', '640121', '永宁县', '360', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3068', '640122', '贺兰县', '360', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3069', '640181', '灵武市', '360', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('307', '530400', '玉溪市', '25', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('3070', '640202', '大武口区', '361', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3071', '640205', '惠农区', '361', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3072', '640221', '平罗县', '361', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('3073', '640302', '利通区', '362', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3074', '640303', '红寺堡区', '362', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3075', '640323', '盐池县', '362', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3076', '640324', '同心县', '362', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3077', '640381', '青铜峡市', '362', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3078', '640402', '原州区', '363', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3079', '640422', '西吉县', '363', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('308', '530500', '保山市', '25', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('3080', '640423', '隆德县', '363', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3081', '640424', '泾源县', '363', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3082', '640425', '彭阳县', '363', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('3083', '640502', '沙坡头区', '364', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3084', '640521', '中宁县', '364', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3085', '640522', '海原县', '364', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3086', '650102', '天山区', '365', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3087', '650103', '沙依巴克区', '365', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3088', '650105', '水磨沟区', '365', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3089', '650106', '头屯河区', '365', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('309', '530600', '昭通市', '25', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('3090', '650107', '达坂城区', '365', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3091', '650109', '米东区', '365', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3092', '650121', '乌鲁木齐县', '365', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3093', '650202', '独山子区', '366', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('3094', '650203', '克拉玛依区', '366', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3095', '650204', '白碱滩区', '366', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3096', '650205', '乌尔禾区', '366', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3097', '652101', '吐鲁番市', '367', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3098', '652122', '鄯善县', '367', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3099', '652123', '托克逊县', '367', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('31', '650000', '新疆维吾尔自治区', '0', 'X', '0');
INSERT INTO `sys_dict_area` VALUES ('310', '530700', '丽江市', '25', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('3100', '652201', '哈密市', '368', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3101', '652222', '巴里坤哈萨克自治县', '368', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3102', '652223', '伊吾县', '368', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3103', '652301', '昌吉市', '369', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3104', '652302', '阜康市', '369', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('3105', '652323', '呼图壁县', '369', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3106', '652324', '玛纳斯县', '369', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3107', '652325', '奇台县', '369', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3108', '652327', '吉木萨尔县', '369', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3109', '652328', '木垒哈萨克自治县', '369', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('311', '530800', '普洱市', '25', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('3110', '652701', '博乐市', '370', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3111', '652702', '阿拉山口市', '370', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3112', '652722', '精河县', '370', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('3113', '652723', '温泉县', '370', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3114', '652801', '库尔勒市', '371', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3115', '652822', '轮台县', '371', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3116', '652823', '尉犁县', '371', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3117', '652824', '若羌县', '371', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('3118', '652825', '且末县', '371', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3119', '652826', '焉耆回族自治县', '371', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('312', '530900', '临沧市', '25', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('3120', '652827', '和静县', '371', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3121', '652828', '和硕县', '371', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3122', '652829', '博湖县', '371', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3123', '652901', '阿克苏市', '372', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3124', '652922', '温宿县', '372', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3125', '652923', '库车县', '372', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3126', '652924', '沙雅县', '372', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3127', '652925', '新和县', '372', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3128', '652926', '拜城县', '372', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3129', '652927', '乌什县', '372', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('313', '532300', '楚雄彝族自治州', '25', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('3130', '652928', '阿瓦提县', '372', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3131', '652929', '柯坪县', '372', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3132', '653001', '阿图什市', '373', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3133', '653022', '阿克陶县', '373', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3134', '653023', '阿合奇县', '373', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3135', '653024', '乌恰县', '373', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3136', '653101', '喀什市', '374', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3137', '653121', '疏附县', '374', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3138', '653122', '疏勒县', '374', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3139', '653123', '英吉沙县', '374', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('314', '532500', '红河哈尼族彝族自治州', '25', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('3140', '653124', '泽普县', '374', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3141', '653125', '莎车县', '374', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3142', '653126', '叶城县', '374', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3143', '653127', '麦盖提县', '374', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3144', '653128', '岳普湖县', '374', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3145', '653129', '伽师县', '374', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3146', '653130', '巴楚县', '374', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3147', '653131', '塔什库尔干塔吉克自治县', '374', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3148', '653201', '和田市', '375', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3149', '653221', '和田县', '375', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('315', '532600', '文山壮族苗族自治州', '25', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('3150', '653222', '墨玉县', '375', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3151', '653223', '皮山县', '375', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('3152', '653224', '洛浦县', '375', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('3153', '653225', '策勒县', '375', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('3154', '653226', '于田县', '375', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3155', '653227', '民丰县', '375', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('3156', '654002', '伊宁市', '376', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3157', '654003', '奎屯市', '376', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('3158', '654021', '伊宁县', '376', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3159', '654022', '察布查尔锡伯自治县', '376', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('316', '532800', '西双版纳傣族自治州', '25', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('3160', '654023', '霍城县', '376', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3161', '654024', '巩留县', '376', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('3162', '654025', '新源县', '376', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('3163', '654026', '昭苏县', '376', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('3164', '654027', '特克斯县', '376', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3165', '654028', '尼勒克县', '376', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('3166', '654201', '塔城市', '377', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3167', '654202', '乌苏市', '377', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3168', '654221', '额敏县', '377', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('3169', '654223', '沙湾县', '377', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('317', '532900', '大理白族自治州', '25', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('3170', '654224', '托里县', '377', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3171', '654225', '裕民县', '377', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('3172', '654226', '和布克赛尔蒙古自治县', '377', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3173', '654301', '阿勒泰市', '378', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3174', '654321', '布尔津县', '378', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('3175', '654322', '富蕴县', '378', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('3176', '654323', '福海县', '378', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('3177', '654324', '哈巴河县', '378', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('3178', '654325', '青河县', '378', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('3179', '654326', '吉木乃县', '378', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('318', '533100', '德宏傣族景颇族自治州', '25', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('3180', '659001', '石河子市', '379', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('3181', '659002', '阿拉尔市', '379', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('3182', '659003', '图木舒克市', '379', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('3183', '659004', '五家渠市', '379', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('3184', '440305', '南山区', '236', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('3185', '441502', '城区', '246', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('319', '533300', '怒江傈僳族自治州', '25', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('32', '710000', '台湾省', '0', 'T', '0');
INSERT INTO `sys_dict_area` VALUES ('320', '533400', '迪庆藏族自治州', '25', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('321', '540100', '拉萨市', '26', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('322', '540200', '日喀则市', '26', 'R', '1');
INSERT INTO `sys_dict_area` VALUES ('323', '542100', '昌都地区', '26', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('324', '542200', '山南地区', '26', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('325', '542400', '那曲地区', '26', 'N', '1');
INSERT INTO `sys_dict_area` VALUES ('326', '542500', '阿里地区', '26', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('327', '542600', '林芝地区', '26', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('328', '610100', '西安市', '27', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('329', '610200', '铜川市', '27', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('33', '810000', '香港特别行政区', '0', 'X', '0');
INSERT INTO `sys_dict_area` VALUES ('330', '610300', '宝鸡市', '27', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('331', '610400', '咸阳市', '27', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('332', '610500', '渭南市', '27', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('333', '610600', '延安市', '27', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('334', '610700', '汉中市', '27', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('335', '610800', '榆林市', '27', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('336', '610900', '安康市', '27', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('337', '611000', '商洛市', '27', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('338', '620100', '兰州市', '28', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('339', '620200', '嘉峪关市', '28', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('34', '820000', '澳门特别行政区', '0', 'A', '0');
INSERT INTO `sys_dict_area` VALUES ('340', '620300', '金昌市', '28', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('341', '620400', '白银市', '28', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('342', '620500', '天水市', '28', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('343', '620600', '武威市', '28', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('344', '620700', '张掖市', '28', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('345', '620800', '平凉市', '28', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('346', '620900', '酒泉市', '28', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('347', '621000', '庆阳市', '28', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('348', '621100', '定西市', '28', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('349', '621200', '陇南市', '28', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('35', '110100', '北京市', '1', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('350', '622900', '临夏回族自治州', '28', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('351', '623000', '甘南藏族自治州', '28', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('352', '630100', '西宁市', '29', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('353', '630200', '海东市', '29', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('354', '632200', '海北藏族自治州', '29', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('355', '632300', '黄南藏族自治州', '29', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('356', '632500', '海南藏族自治州', '29', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('357', '632600', '果洛藏族自治州', '29', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('358', '632700', '玉树藏族自治州', '29', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('359', '632800', '海西蒙古族藏族自治州', '29', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('36', '110200', '北京县', '1', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('360', '640100', '银川市', '30', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('361', '640200', '石嘴山市', '30', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('362', '640300', '吴忠市', '30', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('363', '640400', '固原市', '30', 'G', '1');
INSERT INTO `sys_dict_area` VALUES ('364', '640500', '中卫市', '30', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('365', '650100', '乌鲁木齐市', '31', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('366', '650200', '克拉玛依市', '31', 'K', '1');
INSERT INTO `sys_dict_area` VALUES ('367', '652100', '吐鲁番地区', '31', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('368', '652200', '哈密地区', '31', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('369', '652300', '昌吉回族自治州', '31', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('37', '120100', '天津市', '2', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('370', '652700', '博尔塔拉蒙古自治州', '31', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('371', '652800', '巴音郭楞蒙古自治州', '31', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('372', '652900', '阿克苏地区', '31', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('373', '653000', '克孜勒苏柯尔克孜自治州', '31', 'K', '1');
INSERT INTO `sys_dict_area` VALUES ('374', '653100', '喀什地区', '31', 'K', '1');
INSERT INTO `sys_dict_area` VALUES ('375', '653200', '和田地区', '31', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('376', '654000', '伊犁哈萨克自治州', '31', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('377', '654200', '塔城地区', '31', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('378', '654300', '阿勒泰地区', '31', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('379', '659000', '自治区直辖县级行政区划', '31', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('38', '120200', '天津县', '2', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('380', '110101', '东城区', '35', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('381', '110102', '西城区', '35', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('382', '110105', '朝阳区', '35', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('383', '110106', '丰台区', '35', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('384', '110107', '石景山区', '35', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('385', '110108', '海淀区', '35', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('386', '110109', '门头沟区', '35', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('387', '110111', '房山区', '35', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('388', '110112', '通州区', '35', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('389', '110113', '顺义区', '35', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('39', '130100', '石家庄市', '3', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('390', '110114', '昌平区', '35', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('391', '110115', '大兴区', '35', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('392', '110116', '怀柔区', '35', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('393', '110117', '平谷区', '35', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('394', '110228', '密云县', '36', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('395', '110229', '延庆县', '36', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('396', '120101', '和平区', '37', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('397', '120102', '河东区', '37', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('398', '120103', '河西区', '37', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('399', '120104', '南开区', '37', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('4', '140000', '山西省', '0', 'S', '0');
INSERT INTO `sys_dict_area` VALUES ('40', '130200', '唐山市', '3', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('400', '120105', '河北区', '37', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('401', '120106', '红桥区', '37', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('402', '120110', '东丽区', '37', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('403', '120111', '西青区', '37', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('404', '120112', '津南区', '37', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('405', '120113', '北辰区', '37', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('406', '120114', '武清区', '37', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('407', '120115', '宝坻区', '37', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('408', '120116', '滨海新区', '37', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('409', '120221', '宁河县', '38', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('41', '130300', '秦皇岛市', '3', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('410', '120223', '静海县', '38', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('411', '120225', '蓟县', '38', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('413', '130102', '长安区', '39', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('414', '130104', '桥西区', '39', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('415', '130123', '正定县', '39', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('416', '130125', '行唐县', '39', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('417', '130126', '灵寿县', '39', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('418', '130127', '高邑县', '39', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('419', '130181', '辛集市', '39', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('42', '130400', '邯郸市', '3', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('420', '130183', '晋州市', '39', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('421', '130184', '新乐市', '39', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('422', '130202', '路南区', '40', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('423', '130203', '路北区', '40', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('424', '130204', '古冶区', '40', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('425', '130205', '开平区', '40', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('426', '130207', '丰南区', '40', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('427', '130208', '丰润区', '40', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('428', '130209', '曹妃甸区', '40', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('429', '130223', '滦县', '40', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('43', '130500', '邢台市', '3', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('430', '130224', '滦南县', '40', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('431', '130225', '乐亭县', '40', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('432', '130227', '迁西县', '40', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('433', '130229', '玉田县', '40', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('434', '130281', '遵化市', '40', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('435', '130283', '迁安市', '40', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('436', '130302', '海港区', '41', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('437', '130303', '山海关区', '41', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('438', '130304', '北戴河区', '41', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('439', '130321', '青龙满族自治县', '41', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('44', '130600', '保定市', '3', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('440', '130322', '昌黎县', '41', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('441', '130323', '抚宁县', '41', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('442', '130324', '卢龙县', '41', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('443', '130402', '邯山区', '42', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('444', '130403', '丛台区', '42', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('445', '130404', '复兴区', '42', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('446', '130406', '峰峰矿区', '42', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('447', '130421', '邯郸县', '42', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('448', '130423', '临漳县', '42', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('449', '130424', '成安县', '42', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('45', '130700', '张家口市', '3', 'Z', '1');
INSERT INTO `sys_dict_area` VALUES ('450', '130425', '大名县', '42', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('451', '130426', '涉县', '42', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('452', '130427', '磁县', '42', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('453', '130428', '肥乡县', '42', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('454', '130429', '永年县', '42', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('455', '130430', '邱县', '42', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('456', '130431', '鸡泽县', '42', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('457', '130432', '广平县', '42', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('458', '130433', '馆陶县', '42', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('459', '130434', '魏县', '42', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('46', '130800', '承德市', '3', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('460', '130435', '曲周县', '42', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('461', '130481', '武安市', '42', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('462', '130502', '桥东区', '43', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('463', '130521', '邢台县', '43', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('464', '130522', '临城县', '43', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('465', '130523', '内丘县', '43', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('466', '130524', '柏乡县', '43', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('467', '130525', '隆尧县', '43', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('468', '130526', '任县', '43', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('469', '130527', '南和县', '43', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('47', '130900', '沧州市', '3', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('470', '130528', '宁晋县', '43', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('471', '130529', '巨鹿县', '43', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('472', '130530', '新河县', '43', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('473', '130531', '广宗县', '43', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('474', '130532', '平乡县', '43', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('475', '130533', '威县', '43', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('476', '130534', '清河县', '43', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('477', '130535', '临西县', '43', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('478', '130581', '南宫市', '43', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('479', '130582', '沙河市', '43', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('48', '131000', '廊坊市', '3', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('480', '130602', '新市区', '44', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('481', '130603', '北市区', '44', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('482', '130604', '南市区', '44', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('483', '130621', '满城县', '44', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('484', '130622', '清苑县', '44', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('485', '130623', '涞水县', '44', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('486', '130624', '阜平县', '44', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('487', '130625', '徐水县', '44', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('488', '130626', '定兴县', '44', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('489', '130627', '唐县', '44', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('49', '131100', '衡水市', '3', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('490', '130628', '高阳县', '44', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('491', '130629', '容城县', '44', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('492', '130630', '涞源县', '44', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('493', '130631', '望都县', '44', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('494', '130632', '安新县', '44', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('495', '130633', '易县', '44', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('496', '130634', '曲阳县', '44', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('497', '130635', '蠡县', '44', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('498', '130636', '顺平县', '44', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('499', '130637', '博野县', '44', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('5', '150000', '内蒙古自治区', '0', 'N', '0');
INSERT INTO `sys_dict_area` VALUES ('50', '140100', '太原市', '4', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('500', '130638', '雄县', '44', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('501', '130681', '涿州市', '44', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('502', '130682', '定州市', '44', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('503', '130683', '安国市', '44', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('504', '130684', '高碑店市', '44', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('505', '130705', '宣化区', '45', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('506', '130706', '下花园区', '45', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('507', '130721', '宣化县', '45', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('508', '130722', '张北县', '45', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('509', '130723', '康保县', '45', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('51', '140200', '大同市', '4', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('510', '130724', '沽源县', '45', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('511', '130725', '尚义县', '45', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('512', '130726', '蔚县', '45', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('513', '130727', '阳原县', '45', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('514', '130728', '怀安县', '45', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('515', '130729', '万全县', '45', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('516', '130730', '怀来县', '45', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('517', '130731', '涿鹿县', '45', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('518', '130732', '赤城县', '45', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('519', '130733', '崇礼县', '45', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('52', '140300', '阳泉市', '4', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('520', '130802', '双桥区', '46', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('521', '130803', '双滦区', '46', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('522', '130804', '鹰手营子矿区', '46', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('523', '130821', '承德县', '46', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('524', '130822', '兴隆县', '46', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('525', '130823', '平泉县', '46', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('526', '130824', '滦平县', '46', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('527', '130825', '隆化县', '46', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('528', '130826', '丰宁满族自治县', '46', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('529', '130827', '宽城满族自治县', '46', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('53', '140400', '长治市', '4', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('530', '130828', '围场满族蒙古族自治县', '46', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('531', '130903', '运河区', '47', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('532', '130921', '沧县', '47', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('533', '130922', '青县', '47', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('534', '130923', '东光县', '47', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('535', '130924', '海兴县', '47', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('536', '130925', '盐山县', '47', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('537', '130926', '肃宁县', '47', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('538', '130927', '南皮县', '47', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('539', '130928', '吴桥县', '47', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('54', '140500', '晋城市', '4', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('540', '130929', '献县', '47', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('541', '130930', '孟村回族自治县', '47', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('542', '130981', '泊头市', '47', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('543', '130982', '任丘市', '47', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('544', '130983', '黄骅市', '47', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('545', '130984', '河间市', '47', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('546', '131002', '安次区', '48', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('547', '131003', '广阳区', '48', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('548', '131022', '固安县', '48', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('549', '131023', '永清县', '48', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('55', '140600', '朔州市', '4', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('550', '131024', '香河县', '48', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('551', '131025', '大城县', '48', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('552', '131026', '文安县', '48', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('553', '131028', '大厂回族自治县', '48', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('554', '131081', '霸州市', '48', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('555', '131082', '三河市', '48', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('556', '131102', '桃城区', '49', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('557', '131121', '枣强县', '49', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('558', '131122', '武邑县', '49', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('559', '131123', '武强县', '49', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('56', '140700', '晋中市', '4', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('560', '131124', '饶阳县', '49', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('561', '131125', '安平县', '49', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('562', '131126', '故城县', '49', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('563', '131127', '景县', '49', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('564', '131128', '阜城县', '49', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('565', '131181', '冀州市', '49', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('566', '131182', '深州市', '49', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('567', '140105', '小店区', '50', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('568', '140106', '迎泽区', '50', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('569', '140107', '杏花岭区', '50', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('57', '140800', '运城市', '4', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('570', '140108', '尖草坪区', '50', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('571', '140109', '万柏林区', '50', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('572', '140110', '晋源区', '50', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('573', '140121', '清徐县', '50', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('574', '140122', '阳曲县', '50', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('575', '140123', '娄烦县', '50', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('576', '140181', '古交市', '50', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('577', '140202', '城区', '51', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('578', '140203', '矿区', '51', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('579', '140211', '南郊区', '51', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('58', '140900', '忻州市', '4', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('580', '140212', '新荣区', '51', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('581', '140221', '阳高县', '51', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('582', '140222', '天镇县', '51', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('583', '140223', '广灵县', '51', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('584', '140224', '灵丘县', '51', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('585', '140225', '浑源县', '51', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('586', '140226', '左云县', '51', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('587', '140227', '大同县', '51', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('588', '140311', '郊区', '52', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('589', '140321', '平定县', '52', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('59', '141000', '临汾市', '4', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('590', '140322', '盂县', '52', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('591', '140421', '长治县', '53', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('592', '140423', '襄垣县', '53', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('593', '140424', '屯留县', '53', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('594', '140425', '平顺县', '53', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('595', '140426', '黎城县', '53', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('596', '140427', '壶关县', '53', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('597', '140428', '长子县', '53', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('598', '140429', '武乡县', '53', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('599', '140430', '沁县', '53', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('6', '210000', '辽宁省', '0', 'L', '0');
INSERT INTO `sys_dict_area` VALUES ('60', '141100', '吕梁市', '4', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('600', '140431', '沁源县', '53', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('601', '140481', '潞城市', '53', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('602', '140521', '沁水县', '54', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('603', '140522', '阳城县', '54', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('604', '140524', '陵川县', '54', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('605', '140525', '泽州县', '54', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('606', '140581', '高平市', '54', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('607', '140602', '朔城区', '55', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('608', '140603', '平鲁区', '55', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('609', '140621', '山阴县', '55', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('61', '150100', '呼和浩特市', '5', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('610', '140622', '应县', '55', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('611', '140623', '右玉县', '55', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('612', '140624', '怀仁县', '55', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('613', '140702', '榆次区', '56', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('614', '140721', '榆社县', '56', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('615', '140722', '左权县', '56', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('616', '140723', '和顺县', '56', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('617', '140724', '昔阳县', '56', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('618', '140725', '寿阳县', '56', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('619', '140726', '太谷县', '56', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('62', '150200', '包头市', '5', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('620', '140727', '祁县', '56', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('621', '140728', '平遥县', '56', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('622', '140729', '灵石县', '56', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('623', '140781', '介休市', '56', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('624', '140802', '盐湖区', '57', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('625', '140821', '临猗县', '57', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('626', '140822', '万荣县', '57', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('627', '140823', '闻喜县', '57', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('628', '140824', '稷山县', '57', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('629', '140825', '新绛县', '57', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('63', '150300', '乌海市', '5', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('630', '140826', '绛县', '57', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('631', '140827', '垣曲县', '57', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('632', '140828', '夏县', '57', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('633', '140829', '平陆县', '57', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('634', '140830', '芮城县', '57', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('635', '140881', '永济市', '57', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('636', '140882', '河津市', '57', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('637', '140902', '忻府区', '58', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('638', '140921', '定襄县', '58', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('639', '140922', '五台县', '58', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('64', '150400', '赤峰市', '5', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('640', '140923', '代县', '58', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('641', '140924', '繁峙县', '58', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('642', '140925', '宁武县', '58', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('643', '140926', '静乐县', '58', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('644', '140927', '神池县', '58', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('645', '140928', '五寨县', '58', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('646', '140929', '岢岚县', '58', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('647', '140930', '河曲县', '58', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('648', '140931', '保德县', '58', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('649', '140932', '偏关县', '58', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('65', '150500', '通辽市', '5', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('650', '140981', '原平市', '58', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('651', '141002', '尧都区', '59', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('652', '141021', '曲沃县', '59', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('653', '141022', '翼城县', '59', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('654', '141023', '襄汾县', '59', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('655', '141024', '洪洞县', '59', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('656', '141025', '古县', '59', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('657', '141026', '安泽县', '59', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('658', '141027', '浮山县', '59', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('659', '141028', '吉县', '59', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('66', '150600', '鄂尔多斯市', '5', 'E', '1');
INSERT INTO `sys_dict_area` VALUES ('660', '141029', '乡宁县', '59', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('661', '141030', '大宁县', '59', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('662', '141031', '隰县', '59', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('663', '141032', '永和县', '59', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('664', '141033', '蒲县', '59', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('665', '141034', '汾西县', '59', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('666', '141081', '侯马市', '59', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('667', '141082', '霍州市', '59', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('668', '141102', '离石区', '60', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('669', '141121', '文水县', '60', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('67', '150700', '呼伦贝尔市', '5', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('670', '141122', '交城县', '60', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('671', '141123', '兴县', '60', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('672', '141124', '临县', '60', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('673', '141125', '柳林县', '60', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('674', '141126', '石楼县', '60', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('675', '141127', '岚县', '60', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('676', '141128', '方山县', '60', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('677', '141129', '中阳县', '60', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('678', '141130', '交口县', '60', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('679', '141181', '孝义市', '60', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('68', '150800', '巴彦淖尔市', '5', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('680', '141182', '汾阳市', '60', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('681', '150102', '新城区', '61', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('682', '150103', '回民区', '61', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('683', '150104', '玉泉区', '61', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('684', '150105', '赛罕区', '61', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('685', '150121', '土默特左旗', '61', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('686', '150122', '托克托县', '61', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('687', '150123', '和林格尔县', '61', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('688', '150124', '清水河县', '61', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('689', '150125', '武川县', '61', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('69', '150900', '乌兰察布市', '5', 'W', '1');
INSERT INTO `sys_dict_area` VALUES ('690', '150202', '东河区', '62', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('691', '150203', '昆都仑区', '62', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('692', '150204', '青山区', '62', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('693', '150205', '石拐区', '62', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('694', '150206', '白云鄂博矿区', '62', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('695', '150207', '九原区', '62', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('696', '150221', '土默特右旗', '62', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('697', '150222', '固阳县', '62', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('698', '150223', '达尔罕茂明安联合旗', '62', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('699', '150302', '海勃湾区', '63', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('7', '220000', '吉林省', '0', 'J', '0');
INSERT INTO `sys_dict_area` VALUES ('70', '152200', '兴安盟', '5', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('700', '150303', '海南区', '63', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('701', '150304', '乌达区', '63', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('702', '150402', '红山区', '64', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('703', '150403', '元宝山区', '64', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('704', '150404', '松山区', '64', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('705', '150421', '阿鲁科尔沁旗', '64', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('706', '150422', '巴林左旗', '64', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('707', '150423', '巴林右旗', '64', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('708', '150424', '林西县', '64', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('709', '150425', '克什克腾旗', '64', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('71', '152500', '锡林郭勒盟', '5', 'X', '1');
INSERT INTO `sys_dict_area` VALUES ('710', '150426', '翁牛特旗', '64', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('711', '150428', '喀喇沁旗', '64', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('712', '150429', '宁城县', '64', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('713', '150430', '敖汉旗', '64', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('714', '150502', '科尔沁区', '65', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('715', '150521', '科尔沁左翼中旗', '65', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('716', '150522', '科尔沁左翼后旗', '65', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('717', '150523', '开鲁县', '65', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('718', '150524', '库伦旗', '65', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('719', '150525', '奈曼旗', '65', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('72', '152900', '阿拉善盟', '5', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('720', '150526', '扎鲁特旗', '65', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('721', '150581', '霍林郭勒市', '65', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('722', '150602', '东胜区', '66', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('723', '150621', '达拉特旗', '66', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('724', '150622', '准格尔旗', '66', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('725', '150623', '鄂托克前旗', '66', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('726', '150624', '鄂托克旗', '66', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('727', '150625', '杭锦旗', '66', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('728', '150626', '乌审旗', '66', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('729', '150627', '伊金霍洛旗', '66', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('73', '210100', '沈阳市', '6', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('730', '150702', '海拉尔区', '67', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('731', '150703', '扎赉诺尔区', '67', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('732', '150721', '阿荣旗', '67', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('733', '150722', '莫力达瓦达斡尔族自治旗', '67', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('734', '150723', '鄂伦春自治旗', '67', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('735', '150724', '鄂温克族自治旗', '67', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('736', '150725', '陈巴尔虎旗', '67', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('737', '150726', '新巴尔虎左旗', '67', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('738', '150727', '新巴尔虎右旗', '67', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('739', '150781', '满洲里市', '67', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('74', '210200', '大连市', '6', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('740', '150782', '牙克石市', '67', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('741', '150783', '扎兰屯市', '67', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('742', '150784', '额尔古纳市', '67', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('743', '150785', '根河市', '67', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('744', '150802', '临河区', '68', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('745', '150821', '五原县', '68', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('746', '150822', '磴口县', '68', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('747', '150823', '乌拉特前旗', '68', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('748', '150824', '乌拉特中旗', '68', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('749', '150825', '乌拉特后旗', '68', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('75', '210300', '鞍山市', '6', 'A', '1');
INSERT INTO `sys_dict_area` VALUES ('750', '150826', '杭锦后旗', '68', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('751', '150902', '集宁区', '69', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('752', '150921', '卓资县', '69', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('753', '150922', '化德县', '69', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('754', '150923', '商都县', '69', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('755', '150924', '兴和县', '69', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('756', '150925', '凉城县', '69', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('757', '150926', '察哈尔右翼前旗', '69', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('758', '150927', '察哈尔右翼中旗', '69', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('759', '150928', '察哈尔右翼后旗', '69', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('76', '210400', '抚顺市', '6', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('760', '150929', '四子王旗', '69', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('761', '150981', '丰镇市', '69', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('762', '152201', '乌兰浩特市', '70', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('763', '152202', '阿尔山市', '70', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('764', '152221', '科尔沁右翼前旗', '70', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('765', '152222', '科尔沁右翼中旗', '70', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('766', '152223', '扎赉特旗', '70', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('767', '152224', '突泉县', '70', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('768', '152501', '二连浩特市', '71', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('769', '152502', '锡林浩特市', '71', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('77', '210500', '本溪市', '6', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('770', '152522', '阿巴嘎旗', '71', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('771', '152523', '苏尼特左旗', '71', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('772', '152524', '苏尼特右旗', '71', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('773', '152525', '东乌珠穆沁旗', '71', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('774', '152526', '西乌珠穆沁旗', '71', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('775', '152527', '太仆寺旗', '71', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('776', '152528', '镶黄旗', '71', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('777', '152529', '正镶白旗', '71', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('778', '152530', '正蓝旗', '71', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('779', '152531', '多伦县', '71', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('78', '210600', '丹东市', '6', 'D', '1');
INSERT INTO `sys_dict_area` VALUES ('780', '152921', '阿拉善左旗', '72', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('781', '152922', '阿拉善右旗', '72', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('782', '152923', '额济纳旗', '72', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('783', '210103', '沈河区', '73', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('784', '210104', '大东区', '73', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('785', '210105', '皇姑区', '73', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('786', '210106', '铁西区', '73', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('787', '210111', '苏家屯区', '73', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('788', '210112', '浑南区', '73', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('789', '210113', '沈北新区', '73', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('79', '210700', '锦州市', '6', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('790', '210114', '于洪区', '73', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('791', '210122', '辽中县', '73', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('792', '210123', '康平县', '73', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('793', '210124', '法库县', '73', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('794', '210181', '新民市', '73', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('795', '210202', '中山区', '74', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('796', '210203', '西岗区', '74', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('797', '210204', '沙河口区', '74', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('798', '210211', '甘井子区', '74', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('799', '210212', '旅顺口区', '74', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('8', '230000', '黑龙江省', '0', 'H', '0');
INSERT INTO `sys_dict_area` VALUES ('80', '210800', '营口市', '6', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('800', '210213', '金州区', '74', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('801', '210224', '长海县', '74', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('802', '210281', '瓦房店市', '74', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('803', '210282', '普兰店市', '74', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('804', '210283', '庄河市', '74', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('805', '210302', '铁东区', '75', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('806', '210304', '立山区', '75', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('807', '210311', '千山区', '75', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('808', '210321', '台安县', '75', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('809', '210323', '岫岩满族自治县', '75', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('81', '210900', '阜新市', '6', 'F', '1');
INSERT INTO `sys_dict_area` VALUES ('810', '210381', '海城市', '75', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('811', '210402', '新抚区', '76', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('812', '210403', '东洲区', '76', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('813', '210404', '望花区', '76', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('814', '210411', '顺城区', '76', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('815', '210421', '抚顺县', '76', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('816', '210422', '新宾满族自治县', '76', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('817', '210423', '清原满族自治县', '76', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('818', '210502', '平山区', '77', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('819', '210503', '溪湖区', '77', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('82', '211000', '辽阳市', '6', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('820', '210504', '明山区', '77', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('821', '210505', '南芬区', '77', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('822', '210521', '本溪满族自治县', '77', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('823', '210522', '桓仁满族自治县', '77', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('824', '210602', '元宝区', '78', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('825', '210603', '振兴区', '78', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('826', '210604', '振安区', '78', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('827', '210624', '宽甸满族自治县', '78', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('828', '210681', '东港市', '78', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('829', '210682', '凤城市', '78', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('83', '211100', '盘锦市', '6', 'P', '1');
INSERT INTO `sys_dict_area` VALUES ('830', '210702', '古塔区', '79', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('831', '210703', '凌河区', '79', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('832', '210711', '太和区', '79', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('833', '210726', '黑山县', '79', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('834', '210727', '义县', '79', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('835', '210781', '凌海市', '79', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('836', '210782', '北镇市', '79', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('837', '210802', '站前区', '80', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('838', '210803', '西市区', '80', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('839', '210804', '鲅鱼圈区', '80', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('84', '211200', '铁岭市', '6', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('840', '210811', '老边区', '80', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('841', '210881', '盖州市', '80', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('842', '210882', '大石桥市', '80', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('843', '210902', '海州区', '81', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('844', '210903', '新邱区', '81', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('845', '210904', '太平区', '81', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('846', '210905', '清河门区', '81', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('847', '210911', '细河区', '81', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('848', '210921', '阜新蒙古族自治县', '81', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('849', '210922', '彰武县', '81', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('85', '211300', '朝阳市', '6', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('850', '211002', '白塔区', '82', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('851', '211003', '文圣区', '82', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('852', '211004', '宏伟区', '82', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('853', '211005', '弓长岭区', '82', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('854', '211011', '太子河区', '82', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('855', '211021', '辽阳县', '82', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('856', '211081', '灯塔市', '82', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('858', '211102', '双台子区', '83', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('859', '211103', '兴隆台区', '83', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('86', '211400', '葫芦岛市', '6', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('860', '211121', '大洼县', '83', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('861', '211122', '盘山县', '83', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('862', '211202', '银州区', '84', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('863', '211204', '清河区', '84', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('864', '211221', '铁岭县', '84', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('865', '211223', '西丰县', '84', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('866', '211224', '昌图县', '84', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('867', '211281', '调兵山市', '84', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('868', '211282', '开原市', '84', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('869', '211302', '双塔区', '85', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('87', '220100', '长春市', '7', 'C', '1');
INSERT INTO `sys_dict_area` VALUES ('870', '211303', '龙城区', '85', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('871', '211321', '朝阳县', '85', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('872', '211322', '建平县', '85', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('873', '211324', '喀喇沁左翼蒙古族自治县', '85', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('874', '211381', '北票市', '85', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('875', '211382', '凌源市', '85', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('876', '211402', '连山区', '86', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('877', '211403', '龙港区', '86', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('878', '211404', '南票区', '86', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('879', '211421', '绥中县', '86', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('88', '220200', '吉林市', '7', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('880', '211422', '建昌县', '86', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('881', '211481', '兴城市', '86', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('882', '220102', '南关区', '87', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('883', '220103', '宽城区', '87', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('884', '220105', '二道区', '87', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('885', '220106', '绿园区', '87', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('886', '220112', '双阳区', '87', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('887', '220113', '九台区', '87', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('888', '220122', '农安县', '87', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('889', '220182', '榆树市', '87', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('89', '220300', '四平市', '7', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('890', '220183', '德惠市', '87', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('891', '220202', '昌邑区', '88', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('892', '220203', '龙潭区', '88', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('893', '220204', '船营区', '88', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('894', '220211', '丰满区', '88', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('895', '220221', '永吉县', '88', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('896', '220281', '蛟河市', '88', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('897', '220282', '桦甸市', '88', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('898', '220283', '舒兰市', '88', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('899', '220284', '磐石市', '88', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('9', '310000', '上海市', '0', 'S', '0');
INSERT INTO `sys_dict_area` VALUES ('90', '220400', '辽源市', '7', 'L', '1');
INSERT INTO `sys_dict_area` VALUES ('900', '220322', '梨树县', '89', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('901', '220323', '伊通满族自治县', '89', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('902', '220381', '公主岭市', '89', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('903', '220382', '双辽市', '89', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('904', '220402', '龙山区', '90', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('905', '220403', '西安区', '90', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('906', '220421', '东丰县', '90', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('907', '220422', '东辽县', '90', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('908', '220502', '东昌区', '91', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('909', '220503', '二道江区', '91', 'E', '2');
INSERT INTO `sys_dict_area` VALUES ('91', '220500', '通化市', '7', 'T', '1');
INSERT INTO `sys_dict_area` VALUES ('910', '220521', '通化县', '91', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('911', '220523', '辉南县', '91', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('912', '220524', '柳河县', '91', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('913', '220581', '梅河口市', '91', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('914', '220582', '集安市', '91', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('915', '220602', '浑江区', '92', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('916', '220605', '江源区', '92', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('917', '220621', '抚松县', '92', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('918', '220622', '靖宇县', '92', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('919', '220623', '长白朝鲜族自治县', '92', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('92', '220600', '白山市', '7', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('920', '220681', '临江市', '92', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('921', '220702', '宁江区', '93', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('922', '220721', '前郭尔罗斯蒙古族自治县', '93', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('923', '220722', '长岭县', '93', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('924', '220723', '乾安县', '93', 'Q', '2');
INSERT INTO `sys_dict_area` VALUES ('925', '220781', '扶余市', '93', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('926', '220802', '洮北区', '94', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('927', '220821', '镇赉县', '94', 'Z', '2');
INSERT INTO `sys_dict_area` VALUES ('928', '220822', '通榆县', '94', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('929', '220881', '洮南市', '94', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('93', '220700', '松原市', '7', 'S', '1');
INSERT INTO `sys_dict_area` VALUES ('930', '220882', '大安市', '94', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('931', '222401', '延吉市', '95', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('932', '222402', '图们市', '95', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('933', '222403', '敦化市', '95', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('934', '222404', '珲春市', '95', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('935', '222405', '龙井市', '95', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('936', '222406', '和龙市', '95', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('937', '222424', '汪清县', '95', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('938', '222426', '安图县', '95', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('939', '230102', '道里区', '96', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('94', '220800', '白城市', '7', 'B', '1');
INSERT INTO `sys_dict_area` VALUES ('940', '230103', '南岗区', '96', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('941', '230104', '道外区', '96', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('942', '230108', '平房区', '96', 'P', '2');
INSERT INTO `sys_dict_area` VALUES ('943', '230109', '松北区', '96', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('944', '230110', '香坊区', '96', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('945', '230111', '呼兰区', '96', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('946', '230112', '阿城区', '96', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('947', '230123', '依兰县', '96', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('948', '230124', '方正县', '96', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('949', '230125', '宾县', '96', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('95', '222400', '延边朝鲜族自治州', '7', 'Y', '1');
INSERT INTO `sys_dict_area` VALUES ('950', '230126', '巴彦县', '96', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('951', '230127', '木兰县', '96', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('952', '230128', '通河县', '96', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('953', '230129', '延寿县', '96', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('954', '230182', '双城市', '96', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('955', '230183', '尚志市', '96', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('956', '230184', '五常市', '96', 'W', '2');
INSERT INTO `sys_dict_area` VALUES ('957', '230202', '龙沙区', '97', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('958', '230203', '建华区', '97', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('959', '230204', '铁锋区', '97', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('96', '230100', '哈尔滨市', '8', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('960', '230205', '昂昂溪区', '97', 'A', '2');
INSERT INTO `sys_dict_area` VALUES ('961', '230206', '富拉尔基区', '97', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('962', '230207', '碾子山区', '97', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('963', '230208', '梅里斯达斡尔族区', '97', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('964', '230221', '龙江县', '97', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('965', '230223', '依安县', '97', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('966', '230224', '泰来县', '97', 'T', '2');
INSERT INTO `sys_dict_area` VALUES ('967', '230225', '甘南县', '97', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('968', '230227', '富裕县', '97', 'F', '2');
INSERT INTO `sys_dict_area` VALUES ('969', '230229', '克山县', '97', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('97', '230200', '齐齐哈尔市', '8', 'Q', '1');
INSERT INTO `sys_dict_area` VALUES ('970', '230230', '克东县', '97', 'K', '2');
INSERT INTO `sys_dict_area` VALUES ('971', '230231', '拜泉县', '97', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('972', '230281', '讷河市', '97', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('973', '230302', '鸡冠区', '98', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('974', '230303', '恒山区', '98', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('975', '230304', '滴道区', '98', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('976', '230305', '梨树区', '98', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('977', '230306', '城子河区', '98', 'C', '2');
INSERT INTO `sys_dict_area` VALUES ('978', '230307', '麻山区', '98', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('979', '230321', '鸡东县', '98', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('98', '230300', '鸡西市', '8', 'J', '1');
INSERT INTO `sys_dict_area` VALUES ('980', '230381', '虎林市', '98', 'H', '2');
INSERT INTO `sys_dict_area` VALUES ('981', '230382', '密山市', '98', 'M', '2');
INSERT INTO `sys_dict_area` VALUES ('982', '230402', '向阳区', '99', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('983', '230403', '工农区', '99', 'G', '2');
INSERT INTO `sys_dict_area` VALUES ('984', '230404', '南山区', '99', 'N', '2');
INSERT INTO `sys_dict_area` VALUES ('985', '230405', '兴安区', '99', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('986', '230406', '东山区', '99', 'D', '2');
INSERT INTO `sys_dict_area` VALUES ('987', '230407', '兴山区', '99', 'X', '2');
INSERT INTO `sys_dict_area` VALUES ('988', '230421', '萝北县', '99', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('989', '230422', '绥滨县', '99', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('99', '230400', '鹤岗市', '8', 'H', '1');
INSERT INTO `sys_dict_area` VALUES ('990', '230502', '尖山区', '100', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('991', '230503', '岭东区', '100', 'L', '2');
INSERT INTO `sys_dict_area` VALUES ('992', '230505', '四方台区', '100', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('993', '230506', '宝山区', '100', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('994', '230521', '集贤县', '100', 'J', '2');
INSERT INTO `sys_dict_area` VALUES ('995', '230522', '友谊县', '100', 'Y', '2');
INSERT INTO `sys_dict_area` VALUES ('996', '230523', '宝清县', '100', 'B', '2');
INSERT INTO `sys_dict_area` VALUES ('997', '230524', '饶河县', '100', 'R', '2');
INSERT INTO `sys_dict_area` VALUES ('998', '230602', '萨尔图区', '101', 'S', '2');
INSERT INTO `sys_dict_area` VALUES ('999', '230603', '龙凤区', '101', 'L', '2');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) COLLATE utf8_bin DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) COLLATE utf8_bin DEFAULT NULL COMMENT '操作方式',
  `params` text COLLATE utf8_bin COMMENT '操作提交的数据',
  `exception` text COLLATE utf8_bin COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0074f7ac640942a6a0b9f5594524b96e', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('00a35a424ac94ddb94e2a08b2d396c28', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:53:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00dc7931f9f64a9f8eb706b73fd657c2', '1', '系统登录', '1', '2017-03-09 01:54:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D3139313331356435383032363462666538653134323639616534613632633734, '');
INSERT INTO `sys_log` VALUES ('01531c2e90f848e48a3fb7d2c370e684', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F35, '');
INSERT INTO `sys_log` VALUES ('015529975f1b4dbdb56733ecb6ef9a62', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:36:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335333933373336, '');
INSERT INTO `sys_log` VALUES ('01cee5f07ab74aca9e9fcc60ecb0dbf9', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('01dcfc43a4f541269dec17842e660bf6', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:34:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('01e51bed39be494995cc99488555452a', '1', '我的面板-个人办公-我的任务', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('02200c3b22964b7391950cac4db88f8d', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 21:02:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('0228a65186dd42ab9ca0eeb4e3214ef5', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('02a8348dd6114c038af0eac9e9d7b18d', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('02b62b42f4c54a42897f0cff38eef279', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:51:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D333026706172656E742E69643D3063376439646262396363633462353461323136323165373661353135383461266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE587BAE5BA9326697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('0350935d79184972a84954f86487dce5', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:56:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734, '');
INSERT INTO `sys_log` VALUES ('035122b0e2744580a3b74e1a5ca6f748', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:57:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('03acb2d81aba48cbadcf8be264e933da', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D6664313430373031636538623461386562393862383665376535366634316135266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E587BAE5BA9326697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('04ff379aa8b0429a8f96f9c9db435552', '1', '生产管理-生产订单-新品生产', '1', '2017-03-09 02:20:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3630, '');
INSERT INTO `sys_log` VALUES ('06c104e0cf4548e9835b36a8d4630260', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:39:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('06c1edc158b2415db08834e0b85fa320', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D3226676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('090dbcc86ec6455ab0236f077289193e', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:33:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('090f7f4fab784b6091ea89508905892e', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('09167dc374844a66b28972fbff9bf1c7', '1', '仓库管理-退货入库-当前退货-查看', '1', '2017-03-09 02:11:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('0939a3c7fb2549f3a934a1f99f33f230', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:07:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('094e36f6a1eb4f9b87b23b8c47c240b9', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335323633323030, '');
INSERT INTO `sys_log` VALUES ('0b2922c40b54437eb549788779ed3679', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 02:13:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('0b5119a40e224b62b2cfa8094da50e11', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 19:52:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0c685227c9614bb1a6b861d34dd2b76b', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:08:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('0cb946e672d0411095c67f1408c33303', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:47:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/updateSort', 'POST', 0x6964733D323726736F7274733D313030, '');
INSERT INTO `sys_log` VALUES ('0dbe2eebdc3842fbbd0d8f034c8c07a0', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:33:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('0e6f23f55ba344f6abff66256307ca91', '1', '订单管理-订单管理-当前订单', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:38:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('0e7abe7a26d04c548ef8333d3f4d68fa', '1', '系统登录', '1', '2017-03-08 01:17:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/tree', 'GET', 0x706172656E7449643D3265616663626462643462373462313339633464336662663863333761386635, '');
INSERT INTO `sys_log` VALUES ('0ee40e85b7ec439390929e194c94fc36', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:57:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('0f50395fc2924b02aef1d6264dd01353', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:10:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f5604c45d0641e18f140871b5aa41e0', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:33:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0fb815b61b90419085a9e286de650e5f', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('0fdae6933ff64728b10a0144dff5a551', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:49:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('107260bc761f40ffa9cf6cce3c512957', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:26:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D33313626636F6D6D656E743D26656E6F7567683D31266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('10c63ada6368495ab6df37847935cd18', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:44:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('10edae65683740a8b5747114de984793', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:56:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D333026706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE98080E8B4A726697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('11486ca179464c38a649b7d3479f23f9', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:34:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11c8779a9885454988158cd125443096', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11de053fcb7347a99b7794f5fb225b9b', '1', '系统登录', '1', '2017-03-09 01:33:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11f1405b55d9414d9620246ee1a6457b', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:39:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('123a3ba0daad4770a16cafbd204c8acd', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3126747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('123bcc64b78449bcb24d418f7c61ec58', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:00:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12cbc29eee5445a28090d20904a38edd', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:38:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6362656366313465653730663435343362373932666465653361636533643534, '');
INSERT INTO `sys_log` VALUES ('1312e597c6d44a9eaad0a670a57db117', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:20:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('1335d5f9a74449978b0cee19681be114', '1', '我的面板-个人办公-我的任务', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:37:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('14bbe1625b9d459aac0af923def74e6a', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('150b687c862a4e058de18312864d4638', '1', '系统设置-机构用户-用户管理', '1', '2017-03-08 01:18:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3131, '');
INSERT INTO `sys_log` VALUES ('15fa19bbdca0466492ec241734e95036', '1', '系统设置-系统设置-角色管理', '1', '2017-03-06 22:55:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/role/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F35, '');
INSERT INTO `sys_log` VALUES ('163da923b07c4914a5a7a8f880305155', '2', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:45:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, 0x6F72672E6170616368652E6A61737065722E4A6173706572457863657074696F6E3A202F5745422D494E462F76696577732F6D6F64756C65732F6F72646572732F6F7264657273466F726D2E6A737020286C696E653A203235352C20636F6C756D6E3A2033292022247B27E98080E8B4A7E585A5E5BA9327206571207D2220636F6E7461696E7320696E76616C69642065787072657373696F6E2873293A206A617661782E656C2E454C457863657074696F6E3A204661696C656420746F207061727365207468652065787072657373696F6E205B247B27E98080E8B4A7E585A5E5BA9327206571207D5D0D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E44656661756C744572726F7248616E646C65722E6A73704572726F722844656661756C744572726F7248616E646C65722E6A6176613A3432290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6469737061746368284572726F72446973706174636865722E6A6176613A343433290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6A73704572726F72284572726F72446973706174636865722E6A6176613A313939290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E636865636B586D6C417474726962757465732856616C696461746F722E6A6176613A31323233290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383934290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974284E6F64652E6A6176613A32343334290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524526F6F742E616363657074284E6F64652E6A6176613A343735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722E76616C69646174654578446972656374697665732856616C696461746F722E6A6176613A31373935290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E67656E65726174654A61766128436F6D70696C65722E6A6176613A323137290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333733290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333533290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333430290D0A096174206F72672E6170616368652E6A61737065722E4A7370436F6D70696C6174696F6E436F6E746578742E636F6D70696C65284A7370436F6D70696C6174696F6E436F6E746578742E6A6176613A363436290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C6574577261707065722E73657276696365284A7370536572766C6574577261707065722E6A6176613A333537290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E736572766963654A737046696C65284A7370536572766C65742E6A6176613A333930290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E73657276696365284A7370536572766C65742E6A6176613A333334290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E696E766F6B65284170706C69636174696F6E446973706174636865722E6A6176613A373439290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E70726F6365737352657175657374284170706C69636174696F6E446973706174636865722E6A6176613A343837290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E646F466F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A343132290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E666F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A333339290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E496E7465726E616C5265736F75726365566965772E72656E6465724D65726765644F75747075744D6F64656C28496E7465726E616C5265736F75726365566965772E6A6176613A323039290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E4162737472616374566965772E72656E646572284162737472616374566965772E6A6176613A323637290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E72656E6465722844697370617463686572536572766C65742E6A6176613A31323231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E70726F636573734469737061746368526573756C742844697370617463686572536572766C65742E6A6176613A31303035290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F44697370617463682844697370617463686572536572766C65742E6A6176613A393532290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F536572766963652844697370617463686572536572766C65742E6A6176613A383730290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E70726F6365737352657175657374284672616D65776F726B536572766C65742E6A6176613A393631290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E646F476574284672616D65776F726B536572766C65742E6A6176613A383532290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A363231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E73657276696365284672616D65776F726B536572766C65742E6A6176613A383337290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E616C69626162612E64727569642E737570706F72742E687474702E5765625374617446696C7465722E646F46696C746572285765625374617446696C7465722E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E6F627461696E436F6E74656E7428536974654D65736846696C7465722E6A6176613A313239290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E646F46696C74657228536974654D65736846696C7465722E6A6176613A3737290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3631290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E65786563757465436861696E2841647669636546696C7465722E6A6176613A313038290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E646F46696C746572496E7465726E616C2841647669636546696C7465722E6A6176613A313337290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3636290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E65786563757465436861696E284162737472616374536869726F46696C7465722E6A6176613A343439290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C74657224312E63616C6C284162737472616374536869726F46696C7465722E6A6176613A333635290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E646F43616C6C285375626A65637443616C6C61626C652E6A6176613A3930290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E63616C6C285375626A65637443616C6C61626C652E6A6176613A3833290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E44656C65676174696E675375626A6563742E657865637574652844656C65676174696E675375626A6563742E6A6176613A333833290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E646F46696C746572496E7465726E616C284162737472616374536869726F46696C7465722E6A6176613A333632290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E696E766F6B6544656C65676174652844656C65676174696E6746696C74657250726F78792E6A6176613A333434290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E646F46696C7465722844656C65676174696E6746696C74657250726F78792E6A6176613A323631290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E436861726163746572456E636F64696E6746696C7465722E646F46696C746572496E7465726E616C28436861726163746572456E636F64696E6746696C7465722E6A6176613A3838290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313037290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E646172645772617070657256616C76652E696E766F6B65285374616E646172645772617070657256616C76652E6A6176613A323232290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264436F6E7465787456616C76652E696E766F6B65285374616E64617264436F6E7465787456616C76652E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E61757468656E74696361746F722E41757468656E74696361746F72426173652E696E766F6B652841757468656E74696361746F72426173652E6A6176613A343732290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264486F737456616C76652E696E766F6B65285374616E64617264486F737456616C76652E6A6176613A313731290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4572726F725265706F727456616C76652E696E766F6B65284572726F725265706F727456616C76652E6A6176613A3939290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4163636573734C6F6756616C76652E696E766F6B65284163636573734C6F6756616C76652E6A6176613A393533290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264456E67696E6556616C76652E696E766F6B65285374616E64617264456E67696E6556616C76652E6A6176613A313138290D0A096174206F72672E6170616368652E636174616C696E612E636F6E6E6563746F722E436F796F7465416461707465722E7365727669636528436F796F7465416461707465722E6A6176613A343038290D0A096174206F72672E6170616368652E636F796F74652E6874747031312E416273747261637448747470313150726F636573736F722E70726F6365737328416273747261637448747470313150726F636573736F722E6A6176613A31303038290D0A096174206F72672E6170616368652E636F796F74652E416273747261637450726F746F636F6C244162737472616374436F6E6E656374696F6E48616E646C65722E70726F6365737328416273747261637450726F746F636F6C2E6A6176613A353839290D0A096174206F72672E6170616368652E746F6D6361742E7574696C2E6E65742E417072456E64706F696E7424536F636B657450726F636573736F722E72756E28417072456E64706F696E742E6A6176613A31383532290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F722E72756E576F726B657228546872656164506F6F6C4578656375746F722E6A6176613A31313435290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F7224576F726B65722E72756E28546872656164506F6F6C4578656375746F722E6A6176613A363135290D0A096174206A6176612E6C616E672E5468726561642E72756E285468726561642E6A6176613A373434290D0A);
INSERT INTO `sys_log` VALUES ('164514bc22db446dbe74ba9366900b65', '1', '代码生成-代码生成-业务表配置', '1', '2017-03-08 01:07:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/gen/genTable', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('16b29636dc7547ed90ce145f7fea8d9c', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:56:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('17158ff42c2c43ec83a73d13e61f6d07', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:47:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6634353433376163346161383438333438316461646635366638313762623061, '');
INSERT INTO `sys_log` VALUES ('17db5dcec5ac4ec69d8609ccb01d973d', '1', '生产管理-生产订单-存货生产-查看', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:14:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303131333231313238323330, '');
INSERT INTO `sys_log` VALUES ('19ac2c4907154e3890f06b4cb71c4ab3', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:42:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('1a580e171a654e79b42225830be0aa29', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:40:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F33, '');
INSERT INTO `sys_log` VALUES ('1aecefbaa5c74bf3898d0505f27d6610', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1bdf3155afa04ff6ab5b366c9fce14cf', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:55:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('1c6d60a6f6474eb093f2893dd07a0c6f', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:39:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335353535303031, '');
INSERT INTO `sys_log` VALUES ('1c9c0eba42c7420ab1dec008e08530e7', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:32:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('1d5609cfa46c4c7493a316f0961e9346', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D33, '');
INSERT INTO `sys_log` VALUES ('1da640ebd5da46cf9e10552d0892bd23', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('1e1b5c7130914ff1ba0ce1ec28cd75fa', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:43:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('1ecf454251494b6c87cd11e80919d2aa', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:05:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x6D656D62657249643D32, '');
INSERT INTO `sys_log` VALUES ('2009032e05f548f0a0409a3cda05ce56', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:54:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734, '');
INSERT INTO `sys_log` VALUES ('205b181d9afd4c7c82a21c92e5903db1', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:11:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3238, '');
INSERT INTO `sys_log` VALUES ('20697225d65246de9f45ed52bad01672', '1', '我的面板-个人办公-我的任务', '1', '2017-03-06 22:54:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('2086ba9550974e73a76f7c5d955a3e07', '1', '订单管理-订单管理-当前订单-编辑', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:39:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D34343626636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('210fc044d4664c15a4a930e8fb3832ee', '1', '系统设置-机构用户-用户管理', '1', '2017-03-09 01:33:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('225e4f172fae463e9a3be8a9b7c7e21e', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:00:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('226d462361a14ca2a65d66506228c8be', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:03:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('239774ea928747408141d756bb7ffce0', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:58:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2438c105a01440b8b110adc8ddc90997', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('24ad5e16a23640ff8227d137c33b11e0', '1', '我的面板-个人办公-我的任务', '1', '2017-03-06 19:52:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('252e489b63fb41b0aa7c97939683c0f5', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:10:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('252f2f348b614bad9f569ec212bd9c83', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:56:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2562e9d16d98411a91a198b5b52318fc', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:52:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2681e246d48a4390a0420f8cc194bd6a', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:37:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('26abbfafcd434416a55204e2a1898945', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838383138333438373238, '');
INSERT INTO `sys_log` VALUES ('26c78a0770cb44e785ceed1e1f67e864', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-07 01:13:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('26d8a971044c49e488ac9524606e306e', '1', '系统登录', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:11:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('275c5e223ede45e28eee553e9176c5a6', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:33:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('27c6e1e2109f427695c8afdef821b0af', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:42:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/getStock', 'GET', 0x676F6F64734E6F3D4741313730313238323233373234343338343137, '');
INSERT INTO `sys_log` VALUES ('2844101f4317421b8f3dd4f1beba1408', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:57:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D37376238663935323330663034353639626137663736656334656534663062652669636F6E3D26736F72743D363026706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE98080E8B4A726697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('28637a1c4a9e4bf4a152ad138c5935f8', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:11:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('28701f714dcd421fbd4ab9bec430d7fa', '2', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:45:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, 0x6F72672E6170616368652E6A61737065722E4A6173706572457863657074696F6E3A202F5745422D494E462F76696577732F6D6F64756C65732F6F72646572732F6F7264657273466F726D2E6A737020286C696E653A203235352C20636F6C756D6E3A2033292022247B27E98080E8B4A7E585A5E5BA9327206571207D2220636F6E7461696E7320696E76616C69642065787072657373696F6E2873293A206A617661782E656C2E454C457863657074696F6E3A204661696C656420746F207061727365207468652065787072657373696F6E205B247B27E98080E8B4A7E585A5E5BA9327206571207D5D0D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E44656661756C744572726F7248616E646C65722E6A73704572726F722844656661756C744572726F7248616E646C65722E6A6176613A3432290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6469737061746368284572726F72446973706174636865722E6A6176613A343433290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6A73704572726F72284572726F72446973706174636865722E6A6176613A313939290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E636865636B586D6C417474726962757465732856616C696461746F722E6A6176613A31323233290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383934290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974284E6F64652E6A6176613A32343334290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524526F6F742E616363657074284E6F64652E6A6176613A343735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722E76616C69646174654578446972656374697665732856616C696461746F722E6A6176613A31373935290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E67656E65726174654A61766128436F6D70696C65722E6A6176613A323137290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333733290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333533290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333430290D0A096174206F72672E6170616368652E6A61737065722E4A7370436F6D70696C6174696F6E436F6E746578742E636F6D70696C65284A7370436F6D70696C6174696F6E436F6E746578742E6A6176613A363436290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C6574577261707065722E73657276696365284A7370536572766C6574577261707065722E6A6176613A333537290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E736572766963654A737046696C65284A7370536572766C65742E6A6176613A333930290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E73657276696365284A7370536572766C65742E6A6176613A333334290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E696E766F6B65284170706C69636174696F6E446973706174636865722E6A6176613A373439290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E70726F6365737352657175657374284170706C69636174696F6E446973706174636865722E6A6176613A343837290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E646F466F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A343132290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E666F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A333339290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E496E7465726E616C5265736F75726365566965772E72656E6465724D65726765644F75747075744D6F64656C28496E7465726E616C5265736F75726365566965772E6A6176613A323039290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E4162737472616374566965772E72656E646572284162737472616374566965772E6A6176613A323637290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E72656E6465722844697370617463686572536572766C65742E6A6176613A31323231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E70726F636573734469737061746368526573756C742844697370617463686572536572766C65742E6A6176613A31303035290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F44697370617463682844697370617463686572536572766C65742E6A6176613A393532290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F536572766963652844697370617463686572536572766C65742E6A6176613A383730290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E70726F6365737352657175657374284672616D65776F726B536572766C65742E6A6176613A393631290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E646F476574284672616D65776F726B536572766C65742E6A6176613A383532290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A363231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E73657276696365284672616D65776F726B536572766C65742E6A6176613A383337290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E616C69626162612E64727569642E737570706F72742E687474702E5765625374617446696C7465722E646F46696C746572285765625374617446696C7465722E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E6F627461696E436F6E74656E7428536974654D65736846696C7465722E6A6176613A313239290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E646F46696C74657228536974654D65736846696C7465722E6A6176613A3737290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3631290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E65786563757465436861696E2841647669636546696C7465722E6A6176613A313038290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E646F46696C746572496E7465726E616C2841647669636546696C7465722E6A6176613A313337290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3636290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E65786563757465436861696E284162737472616374536869726F46696C7465722E6A6176613A343439290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C74657224312E63616C6C284162737472616374536869726F46696C7465722E6A6176613A333635290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E646F43616C6C285375626A65637443616C6C61626C652E6A6176613A3930290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E63616C6C285375626A65637443616C6C61626C652E6A6176613A3833290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E44656C65676174696E675375626A6563742E657865637574652844656C65676174696E675375626A6563742E6A6176613A333833290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E646F46696C746572496E7465726E616C284162737472616374536869726F46696C7465722E6A6176613A333632290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E696E766F6B6544656C65676174652844656C65676174696E6746696C74657250726F78792E6A6176613A333434290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E646F46696C7465722844656C65676174696E6746696C74657250726F78792E6A6176613A323631290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E436861726163746572456E636F64696E6746696C7465722E646F46696C746572496E7465726E616C28436861726163746572456E636F64696E6746696C7465722E6A6176613A3838290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313037290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E646172645772617070657256616C76652E696E766F6B65285374616E646172645772617070657256616C76652E6A6176613A323232290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264436F6E7465787456616C76652E696E766F6B65285374616E64617264436F6E7465787456616C76652E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E61757468656E74696361746F722E41757468656E74696361746F72426173652E696E766F6B652841757468656E74696361746F72426173652E6A6176613A343732290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264486F737456616C76652E696E766F6B65285374616E64617264486F737456616C76652E6A6176613A313731290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4572726F725265706F727456616C76652E696E766F6B65284572726F725265706F727456616C76652E6A6176613A3939290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4163636573734C6F6756616C76652E696E766F6B65284163636573734C6F6756616C76652E6A6176613A393533290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264456E67696E6556616C76652E696E766F6B65285374616E64617264456E67696E6556616C76652E6A6176613A313138290D0A096174206F72672E6170616368652E636174616C696E612E636F6E6E6563746F722E436F796F7465416461707465722E7365727669636528436F796F7465416461707465722E6A6176613A343038290D0A096174206F72672E6170616368652E636F796F74652E6874747031312E416273747261637448747470313150726F636573736F722E70726F6365737328416273747261637448747470313150726F636573736F722E6A6176613A31303038290D0A096174206F72672E6170616368652E636F796F74652E416273747261637450726F746F636F6C244162737472616374436F6E6E656374696F6E48616E646C65722E70726F6365737328416273747261637450726F746F636F6C2E6A6176613A353839290D0A096174206F72672E6170616368652E746F6D6361742E7574696C2E6E65742E417072456E64706F696E7424536F636B657450726F636573736F722E72756E28417072456E64706F696E742E6A6176613A31383532290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F722E72756E576F726B657228546872656164506F6F6C4578656375746F722E6A6176613A31313435290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F7224576F726B65722E72756E28546872656164506F6F6C4578656375746F722E6A6176613A363135290D0A096174206A6176612E6C616E672E5468726561642E72756E285468726561642E6A6176613A373434290D0A);
INSERT INTO `sys_log` VALUES ('28ee466315814d2b93da8663acf52021', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:11:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('29051fb1d5854926934b6fffcf5f9349', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:42:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('2914d2d49ff7470e89c79e08a28b5afc', '1', '生产管理-生产订单-新品生产', '1', '2017-03-08 01:07:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F34, '');
INSERT INTO `sys_log` VALUES ('293716daae254ee1804189f4214a7c7b', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-07 01:13:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D36, '');
INSERT INTO `sys_log` VALUES ('2a48294e534c465c93a9b5c5a078d415', '1', '会员管理-会员管理-商城会员', '1', '2017-03-08 01:07:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F33, '');
INSERT INTO `sys_log` VALUES ('2af4e967a66a496485182e107474809a', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('2bc8877682f34dfabed6d735b2f10be5', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:06:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2bd0be2ad0cd421ea67cc3024a6abcf1', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:53:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('2bfc78bf253e4788a847fcd3e254214e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:53:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6664313430373031636538623461386562393862383665376535366634316135, '');
INSERT INTO `sys_log` VALUES ('2c24e1eb051942ce9715556b7ce4599e', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:11:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3332, '');
INSERT INTO `sys_log` VALUES ('2c93f88939fa4bfbba126c0ca391a213', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:40:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2cc6b00be3a74fe8a650464c5fe8a0dc', '1', '会员管理-会员管理-商城会员-查看', '1', '2017-03-07 01:11:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member/form', 'GET', 0x69643D3632303864323130383938313433653661363933396333323130383466656363, '');
INSERT INTO `sys_log` VALUES ('2d91fa00e43c4c518858041efeab0b5d', '1', '订单管理-订单管理-历史订单', '1', '2017-03-07 01:12:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/listOld', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D61646D696E3226616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('2dead9b280f242e4a3f469285fe5fe22', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:38:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('2e0d4e10715649a2a93f9c5cba6b3092', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 01:40:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F34, '');
INSERT INTO `sys_log` VALUES ('2e7a7369037449668b2b09e45c947569', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:37:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2ef21ab5a5494fc18d213a131252bc28', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335323732383333, '');
INSERT INTO `sys_log` VALUES ('2f06d62e98d34b5f8c4d031f652ac6a9', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:43:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3023d3f4b85545ea86dda9e216d6c507', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:39:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30585267eac24edd92b19467b5ec1e37', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:03:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30b877c4525b43bab376201bac38f119', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30d51f9f98904f3e9b4bc6ddd208775d', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:51:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D3063376439646262396363633462353461323136323165373661353135383461, '');
INSERT INTO `sys_log` VALUES ('31c3da8b960f4bdf9eed68f97b9b2e14', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:57:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('31f3b397f8eb4335933e492a313b7c47', '1', '系统登录', '1', '2017-03-08 01:40:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3237, '');
INSERT INTO `sys_log` VALUES ('31ff61b1f4254b9ea84741432f2cc8b5', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:04:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('32425af037b84bff96db309c22138a91', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:37:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('32ee2755b40744768d05390cf8d923ce', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:42:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('337a84fda9e14e019a49736c7abea329', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D3326676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('34b7cb5b5e4046c2b109be6eb0f0119f', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:54:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('34bd7a993be94db4b48d4cb5ac2a343e', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('37afa36486a842e6a73e96e300744dd4', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:04:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3133, '');
INSERT INTO `sys_log` VALUES ('37e79be6cad945c0982b0795e00d5231', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:03:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3130, '');
INSERT INTO `sys_log` VALUES ('3804dcf9f70e413bb15fd289dc7967df', '1', '生产管理-生产订单-新品生产', '1', '2017-03-07 01:12:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3130, '');
INSERT INTO `sys_log` VALUES ('38d43d29937d4b3198853b71b561f6b0', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:34:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3987aba2d3534769bcf13ae3ab85dced', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:26:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D3330392676616C69643D3126636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3993df8c49214b28adc00e7756890dc7', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('39a125f7d2224896893671e19f5ea3dd', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:54:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3ac37b052e674e358828d517a3591a4e', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3bd79ee263e642aeb8d6de26b2509016', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:42:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3cb6ae3ccf0948f7bb993d83e7ad2b0d', '1', '订单管理-订单管理-当前订单-编辑', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D32363726636F6D6D656E743D33266F726465727349643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('3d0c808e3eb14be0b108e019f9c25a5d', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:11:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('3eabb748cb04412e9eca32fc2d2cdb5e', '1', '订单管理-订单管理-当前订单-编辑', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D34323026723D3326636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3f0a9555d78f4362b71406975fbdee40', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:26:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373334373630363033, '');
INSERT INTO `sys_log` VALUES ('3f81358160494cfa8c815d0e884c6bd3', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:42:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('3fa4cdbd8a25453e9099a21139843327', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-07 01:12:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D61646D696E3226616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('413c6af7ced144a9b1fd03ec3d44e33f', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('417b4b17a0de4b3d88d328373c2af204', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('41977501ad734bf8a56c088dcbc24c72', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:13:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3431, '');
INSERT INTO `sys_log` VALUES ('41bb5ba9e0304498924f8b889cf5ad10', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:33:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6362656366313465653730663435343362373932666465653361636533643534, '');
INSERT INTO `sys_log` VALUES ('41e2956bc70246cc91e081545055a016', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:52:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D6664313430373031636538623461386562393862383665376535366634316135, '');
INSERT INTO `sys_log` VALUES ('41eba2aa3ee74eb9af0b061fb0bf9c74', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:49:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4352302fc5d1452bafc8a45651c6814d', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:13:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3436, '');
INSERT INTO `sys_log` VALUES ('43a4749ee33e44db8da1cf18dca5f436', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:42:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330383031343130363839313935332674696D653D31343838393038353233303538, '');
INSERT INTO `sys_log` VALUES ('43ca2f8317b54891bc4a8ae7bf800e53', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:10:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('43df21973fdf45f4a8b98b6323b243a4', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031313831313836393834372674696D653D31343838373334333935323831, '');
INSERT INTO `sys_log` VALUES ('45e13dbd0e7c4db99479c7e20b83456c', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:56:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('483a97fbaf594b8596d79448ecae8352', '1', '订单管理-订单管理-当前订单-编辑', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D34323026723D3326636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('4874f80599ad4b0cb0461bbe900f1f7d', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 01:03:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/tree', 'GET', 0x706172656E7449643D6161663264356134363761383436643739366236613932363266353361613039, '');
INSERT INTO `sys_log` VALUES ('49034f11944944cf8533b7f81b42d8ea', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:29:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4a278b30759b49ed87728a3c399c0dc8', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('4ba2ae88b70241adb0508df26bf3b2bc', '1', '订单管理-订单管理-当前订单-编辑', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:36:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D34323026723D3326636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('4bc5876def5f4947a95a68d4303be40e', '1', '系统登录', '1', '2017-03-09 01:42:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4c28f675b09b4ac68093ed65bae99187', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('4c357b324a28422f82073b18ee0794a2', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:17:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4c710d0b855043a1a277cbb5c6f88c37', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('4e25a494caa84cd692043497780125bf', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('4eb7b87512eb4d84959742f4afe9ae5b', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:11:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5027d36f9936472582df7eae2e34f758', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D35, '');
INSERT INTO `sys_log` VALUES ('508df16218d54f39b6a8ebdc80eaaf6e', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:55:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('50996f7b820149acb27bec9d251cd247', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-08 01:18:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('50d4824a041440e9a6ca79c8dd90a4de', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('51c4c52b59b246a99a06acd2268b64ce', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('52e9da3538b242529b9b8d98608ccb19', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:13:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3339, '');
INSERT INTO `sys_log` VALUES ('53373c3bc0134906a02f7693f5776f67', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D3235322676616C69643D3126636F6D6D656E743D266F726465727349643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('5365a60f748a4623affb43db30c0f82b', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('536f721c454d42b5b404d8678ebd28f1', '1', '订单管理-订单管理-当前订单', '1', '2017-03-07 01:10:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('53732ebe3ab2493b809b1c36c2315945', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D333026706172656E742E69643D6362656366313465653730663435343362373932666465653361636533643534266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE5AEA1E6A0B826697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('538a532af5b9495ab50d1583223b03ae', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:57:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('53e09ece79344aa99f758c2add499747', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('53e982934b9c40578d8f8f480abc07e1', '1', '系统登录', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:25:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55d7978fe805453aaa77b264c74f08ed', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:54:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('5822f07399174b9e9cb161c07bcb1b51', '1', '系统设置-系统设置-字典管理', '1', '2017-03-06 22:55:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/dict/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F34, '');
INSERT INTO `sys_log` VALUES ('5a3bcec36fb848efb50e1fbc6d3b17bd', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D3426676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('5ad63253b28b406e9bbae85796819276', '1', '订单管理-订单管理-当前订单', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:33:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('5b0fcdb255e64e58a8793f3e1f97bbd9', '1', '会员管理-会员管理-商城会员-查看', '1', '2017-03-07 01:11:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member/form', 'GET', 0x69643D3835393232303166336537393430643862656461663035633466343266336363, '');
INSERT INTO `sys_log` VALUES ('5b3351d6023845c3abd7391eb72887bf', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-09 01:33:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ba62a7caa9445aba712220807e5e4a9', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('5cdcad6b58cd45bb8ca1f2f2ff5366eb', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:15:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5cedd035b4694e9f87e88a1d50e5b2a0', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:56:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('5d29d15c1fee45f3bcc475045947e9e8', '1', '系统设置-机构用户-用户管理', '1', '2017-03-09 02:12:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3336, '');
INSERT INTO `sys_log` VALUES ('5d9d6a1276bf4711b0fa30cf8808f392', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-09 02:06:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5dd5eb4a40e242e7959397b9bc221587', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:57:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e14089a7d1444358fddf43b2f456da3', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:01:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('5e50516402104e62925859e2275a074d', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e9ab4c4b327495a8bbebf13c301bf08', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:30:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('5eccce25897f4f5999936be400e32ba2', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-09 01:59:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5fe6403cab3c488a943c9c33d8a052be', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:11:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3126747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('60afc26f5b6f404490343922de857310', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:40:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D66343534333761633461613834383334383164616466353666383137626230612669636F6E3D26736F72743D363026706172656E742E69643D3231343263636332383537613439653639646339306333373465666262336465266E616D653DE58E86E58FB2E5AEA1E6A0B8267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F61756469744F6C642F6C69737426706172656E742E6E616D653DE99480E594AEE8AEA2E58D9526697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('615e1f791fdb4538b64c1d45b42312c5', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:03:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F36, '');
INSERT INTO `sys_log` VALUES ('62032b361b0c4b94ae8a9b080550ae6e', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-07 01:12:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('623d98faaeb64ad7805faf9f4e7339b7', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:34:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D6362656366313465653730663435343362373932666465653361636533643534, '');
INSERT INTO `sys_log` VALUES ('630f97e9861a4c0789d205ccddbbf6c8', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:43:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64522f75425a46248eb8f02b78e4975f', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:10:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('65a9e1bd043642b39709b995f77d61c9', '1', '我的面板-个人办公-我的任务', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('66795705114042c08b909e5d481b855c', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D34, '');
INSERT INTO `sys_log` VALUES ('67870bdf3f86496a976257e32333c32d', '1', '我的面板-个人办公-我的任务', '1', '2017-03-07 01:11:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('6882aa8b2b88439b8a9d8dc4192cec0c', '1', '系统设置-系统设置-角色管理', '1', '2017-03-08 01:18:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/role/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3132, '');
INSERT INTO `sys_log` VALUES ('6883ed3da1d340c486ef848709b18fb3', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:49:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('68982f019b234aa59c610cb7818e0ccd', '1', '订单管理-订单管理-当前订单', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:14:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('68c08c8537784e70934ce9900daebbef', '1', '系统设置-日志查询-日志查询', '1', '2017-03-06 22:55:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/log', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F36, '');
INSERT INTO `sys_log` VALUES ('690d636774be43cf97b722cf0485422e', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:56:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('694e485bddb1479c9e301d0330bf1f0a', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:52:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('69b90b85135649f2b9f41583854d6286', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('6b791e5f92d340209001b71150094701', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:51:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6c41e6b6465c4d36b12c08acf317e356', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:11:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3330, '');
INSERT INTO `sys_log` VALUES ('6c4c26259d24439cb8e7d2a154758453', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:56:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE98080E8B4A726697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('6c9e858034bc4c13bbd2b47f973085f3', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:53:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6caaafaa9272434280261bc77b9f37eb', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:40:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('6d0015280f46475dabecf6af4e35c5a9', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:41:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6dbd556cbe644b16b294bdc0e8e3e973', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:52:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D3063376439646262396363633462353461323136323165373661353135383461266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE587BAE5BA9326697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('6e896d012798443d9b1ed843f03a4745', '1', '系统设置-流程管理-流程管理', '1', '2017-03-08 01:25:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/process', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3236, '');
INSERT INTO `sys_log` VALUES ('6ecb5aa67bda4963836faad5129b9f60', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:46:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D3434316439623536646434633431623462313633626365373136616137666531, '');
INSERT INTO `sys_log` VALUES ('6f7e642f97bc43f39cae77747dddb766', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:56:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D3139313331356435383032363462666538653134323639616534613632633734, '');
INSERT INTO `sys_log` VALUES ('6fb119f6d2d347c682ee9029a9eafeb0', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:11:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3331, '');
INSERT INTO `sys_log` VALUES ('71268695ec2f45b28f7fa34deefd4db2', '1', '公共权限-查看流程图', '1', '2017-03-08 01:53:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/process/resource/read', 'GET', 0x70726F6344656649643D73686F7070696E673A313A3726726573547970653D696D616765, '');
INSERT INTO `sys_log` VALUES ('71d2822ea2ba4a30a0540a48dc58280d', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('71f02432fe8747f9bd061e948094cdd4', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:26:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373334373637303137, '');
INSERT INTO `sys_log` VALUES ('72068c7f96924c68a9b4ebc113f847e6', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('723c6929e7ab4583b95c2cc8d57764a0', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7289edbede14490dbd53e85cf26b098a', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:41:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('731bb75bce324db3a8e1276a15ee21c5', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:13:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3432, '');
INSERT INTO `sys_log` VALUES ('731d5592bcd34684b6b5f8ea156f048e', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F33, '');
INSERT INTO `sys_log` VALUES ('733aab5fe8604796b46ffb3c048f6fa0', '1', '系统登录', '1', '2017-03-09 02:13:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/tree', 'GET', 0x706172656E7449643D3235313230346461393430663466393661333934396535623861373164303037, '');
INSERT INTO `sys_log` VALUES ('7455f07f376a40b5923ca368bfbf9cb2', '1', '会员管理-会员管理-商城会员-查看', '1', '2017-03-07 01:13:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member/form', 'GET', 0x69643D3632303864323130383938313433653661363933396333323130383466656363, '');
INSERT INTO `sys_log` VALUES ('7540c8052f884ccbb34d081be26f5433', '1', '订单管理-订单管理-当前订单-编辑', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D343439266261636B2D712D37396135343239326564303834633638623133643565616131613835613033643D33266261636B2D37396135343239326564303834633638623133643565616131613835613033643D3326636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('7546a98ee0d94daa98ab16e033dd3254', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:38:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('75748d283bd64df0b044c7610e5fa7e8', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('758c902ca9654444972b25b309e34915', '1', '我的面板-个人办公-我的任务', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('75c9412ba04f4e6c87c912640d3de8a7', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('763ede5245144f83aec14490247bf023', '1', '系统登录', '1', '2017-03-06 22:54:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7766a40ea4f44b158680dfaad29b0bf1', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:46:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D34343164396235366464346334316234623136336263653731366161376665312669636F6E3D26736F72743D393026706172656E742E69643D6634353433376163346161383438333438316461646635366638313762623061266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E5AEA1E6A0B826697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('781022c4a5bd430283a6f766569b6028', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('784b6374cf1842e9aa4a68de9f3a07b7', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('7890f5127af94185844f38eded842665', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:58:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D6565313263306539666139323465643239323635373236333065363331613862266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E98080E8B4A726697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('78bc9166e4c045a3a5aec2b54bb86228', '1', '系统登录', '1', '2017-03-09 02:03:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('79b05ddaa68b4d5ca6408f6578f5e244', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:41:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7b8f6dc55544452b8d726a21dd8cff2e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:39:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D6634353433376163346161383438333438316461646635366638313762623061, '');
INSERT INTO `sys_log` VALUES ('7d70fa6de2014b549fa4ca9d6f79dd39', '1', '系统登录', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:18:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e6fc1b6986c4ee7942d6a26cb2991b7', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:04:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8077d0c5f0014ccc9f03d4339540e39a', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('807b139f79c4418e9dbf61b846a4c40a', '1', '订单管理-订单管理-当前订单-编辑', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D33323426636F6D6D656E743DE5A5BDE79A84266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8130990957774d9981f0a3b984085462', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:33:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8146d77fb9f646fa8885df8ce62b9cc2', '1', '系统设置-机构用户-机构管理-查看', '1', '2017-03-07 01:12:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/office/list', 'GET', 0x69643D26706172656E744964733D, '');
INSERT INTO `sys_log` VALUES ('81af4b936c734f588b1235901089ad75', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:46:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('846e65c73dd84b89b2db4650eab4ff2c', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:42:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D37323926636F6D6D656E743D26656E6F7567683D31266F726465727349643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('85111f4160954604a2b69059f82686cb', '1', '我的面板-个人办公-我的任务', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:18:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('85478a513d2a46208c4f71f6988593d9', '1', '生产管理-生产订单-存货生产-查看', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:14:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303131333231313238323330, '');
INSERT INTO `sys_log` VALUES ('869e31aa648045e7b77994f3210de751', '1', '系统设置-流程管理-模型管理', '1', '2017-03-08 01:25:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/model', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3235, '');
INSERT INTO `sys_log` VALUES ('87643625b60b4ee98e308d4a70dfb231', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:57:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D3737623866393532333066303435363962613766373665633465653466306265, '');
INSERT INTO `sys_log` VALUES ('879ac50d5eaa409a98b1cdac0ce828e7', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:20:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('88b91c0f71eb4da5b74c8f1d135f4df8', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:46:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('88d877a1e71344af88ef1c1c3b9e2d69', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8915d59eb095412c844511115b8d669a', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:45:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8a2e378760f7427890f643570089c6a5', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:57:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D333026706172656E742E69643D6565313263306539666139323465643239323635373236333065363331613862266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E98080E8B4A726697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('8b01218819524cf49f55941bf4df46d5', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:51:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D30633764396462623963636334623534613231363231653736613531353834612669636F6E3D26736F72743D333026706172656E742E69643D3735366663653265663465363437346561396163343238643139303634623630266E616D653DE5BD93E5898DE587BAE5BA93267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F73656E642F6C69737426706172656E742E6E616D653DE99480E594AEE587BAE5BA9326697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('8bcb71420a134ac4b9d3f1e76ab88fcf', '1', '商品管理-商品设置-商品分类', '1', '2017-03-07 01:10:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/goods/goodsCategory', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('8bf69d5c815e42beb6af970ebe4ccfc7', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8c318d3a3a7b4df49a1b63669aa6f077', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8c562c6314df4ae89a37c3da21a2d1aa', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8e25981bfa2147d59b419f05e834cf48', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('8e8e6eb825f54e16bb4d0638220e20be', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3226747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('90105e6b212a40a3b8656a9f0c745694', '1', '系统设置-机构用户-用户管理', '1', '2017-03-08 01:25:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3234, '');
INSERT INTO `sys_log` VALUES ('9057f5cd1ab24cb4ab83b262b386014f', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('91d96795234f4c9aa7884250cf631545', '1', '系统设置-系统设置-字典管理', '1', '2017-03-08 01:18:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/dict/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3133, '');
INSERT INTO `sys_log` VALUES ('922e9cfa875c46418a057106c701757f', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 02:13:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9271b14c56074f8c9b0546744414f756', '1', '系统设置-机构用户-机构管理-查看', '1', '2017-03-06 22:55:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/office/list', 'GET', 0x69643D26706172656E744964733D, '');
INSERT INTO `sys_log` VALUES ('92b4955bffd3433cb0ffcdbca61db660', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:40:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('92d0923c09864f00a373c491eb4c21b1', '1', '系统设置-机构用户-用户管理', '1', '2017-03-06 22:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('943f2689c58e46ae833cd3acae001f4a', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('947a0d1d48204a748ee83e3044ccc665', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D3732322676616C69643D3126636F6D6D656E743D266F726465727349643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('94e86eeef0e84590a2d7798bffe6245c', '1', '系统设置-机构用户-用户管理', '1', '2017-03-07 01:13:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3139, '');
INSERT INTO `sys_log` VALUES ('95264c580f1944a6888abd00c978cce9', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:38:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('964a3d2904ab4343aacb0a0a5a291ead', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:06:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3232, '');
INSERT INTO `sys_log` VALUES ('9656ed2a75a54260b28df45a1ba56ca8', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373337353532363635, '');
INSERT INTO `sys_log` VALUES ('965a8aba8ba749d6925af7364da4aec2', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D35, '');
INSERT INTO `sys_log` VALUES ('974a5b9f7ea14c29b0944f630fcc33ae', '1', '会员管理-会员管理-商城会员-查看', '1', '2017-03-07 01:11:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member/form', 'GET', 0x69643D6161616131613337656134663430393261636135373235393433653364313936, '');
INSERT INTO `sys_log` VALUES ('97c9d838b35f4a9eaf5e30d0365d1fe0', '1', '生产管理-生产订单-新品生产', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 01:03:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('98e912d0c937414fa61d77b7d07ae158', '1', '订单管理-订单管理-当前订单', '1', '2017-03-07 01:12:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3136, '');
INSERT INTO `sys_log` VALUES ('99474affb1e240479cb59578160f86f0', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('99b4843c75904ce49453abca80395c72', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('99d3f563d58c415ab7d13d34e092c368', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:40:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3238, '');
INSERT INTO `sys_log` VALUES ('9a717c46f089449da2c21539cea4ee1d', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3236, '');
INSERT INTO `sys_log` VALUES ('9a9600d51fbb4f7b8efbe7abd3bf4911', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:11:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('9b3ed0006ba94a73811b912f97a599bd', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b86d05b439d4cb695ea2cee4c4dd3d7', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:54:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6664313430373031636538623461386562393862383665376535366634316135, '');
INSERT INTO `sys_log` VALUES ('9bb77fb1ac3d466999c3f1a2b01811cd', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('9c31ee2c31704fcb830d9ce22619d1bc', '1', '系统设置-系统设置-字典管理', '1', '2017-03-07 01:12:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/dict/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F36, '');
INSERT INTO `sys_log` VALUES ('9cb9e63f49d241999dbfce3dc244c3f8', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:33:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('9cc246b4321d40b78c5db83020c2adab', '1', '会员管理-会员管理-商城会员', '1', '2017-03-07 01:11:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3132, '');
INSERT INTO `sys_log` VALUES ('9cfc48ba2cd74fa895458ca6067b9aa6', '1', '生产管理-生产订单-新品生产', '1', '2017-03-09 01:59:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('9d3125c0de864b1c8482f4fb1b3a8afb', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:45:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('9d4df56a75bd4635900d266a98c70cd5', '1', '系统登录', '1', '2017-03-08 01:07:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9d53e888f2734f7e9931bc980d29e6e6', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('9d9987d2978b417b910d09a047a82327', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9e25b877be604b71af4804138687f76e', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:04:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3134, '');
INSERT INTO `sys_log` VALUES ('9ea4156285cd43559b9f6ab9e41d79f6', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:20:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a0276b84620d417781d99d14eecfc078', '1', '会员管理-会员管理-商城会员', '1', '2017-03-09 02:13:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3337, '');
INSERT INTO `sys_log` VALUES ('a04c3fdd7f0a4d4cabc90afd6a2e90f9', '1', '系统设置-机构用户-用户管理', '1', '2017-03-09 01:59:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('a0949ee746b44d218fe49a91a4d31650', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:13:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3430, '');
INSERT INTO `sys_log` VALUES ('a0bc0de7164f4152856d3741b70c7d5e', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-09 02:12:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a1406a9a22c24b349c8e35454761cf4d', '1', '仓库管理-退货入库-当前退货-查看', '1', '2017-03-09 02:03:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('a162d68888154b6ca7b665f69b53c216', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:17:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a16b958b7d35450e88948181e616880e', '1', '系统设置-机构用户-机构管理', '1', '2017-03-07 01:12:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/office/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F34, '');
INSERT INTO `sys_log` VALUES ('a199f3e2c96245b49e1023084d90f8b3', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:21:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('a21580a126594edcabc0d644f3aca4a6', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('a21ebbf170364e31bf30f63adf3718c4', '1', '系统登录', '1', '2017-03-09 01:58:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a2abf0a938c442e48a4a620586e4e054', '1', '系统登录', '1', '2017-03-06 19:52:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a2c957574d1745dd823fd4c3fc4696de', '1', '生产管理-生产订单-新品生产', '1', '2017-03-08 01:19:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3138, '');
INSERT INTO `sys_log` VALUES ('a30d94236e904c88ac5d802da0b96191', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('a46ce163631445969f868d9a1a04ec0e', '1', '系统登录', '1', '2017-03-09 01:04:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a4cf8f548772456c96e7c7494320fef7', '1', '系统设置-系统设置-角色管理', '1', '2017-03-07 01:12:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/role/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3132, '');
INSERT INTO `sys_log` VALUES ('a56f2a84596143bdbef178a352d00040', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('a5a74fde7d364817a561555b0e8b0d87', '1', '会员管理-会员管理-商城会员', '1', '2017-03-07 01:11:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('a884d05e7c014fb0a9dd5231d5febe5c', '1', '仓库管理-退货入库-当前退货-查看', '1', '2017-03-09 02:06:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('a8d5abbb8ada42bdaaf4d9f4a22b40be', '1', '订单管理-订单管理-当前订单-编辑', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:39:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D353032266261636B2D6D6F6E65793D36382E343026636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('a90d6fc175544ce6aa25618f9e68e87e', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-07 01:13:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D35, '');
INSERT INTO `sys_log` VALUES ('a9dabd0df8564a529ccdf557a8ee2a7b', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:57:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('aa0cab3c0a77419b923a532e166581f8', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031313831313836393834372674696D653D31343838373334333733333633, '');
INSERT INTO `sys_log` VALUES ('aa57da06eaa6469090b17d905cd416cf', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aacf79de1b384993b5eead664c822edf', '1', '我的面板-个人办公-我的任务', '1', '2017-03-09 01:33:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('ab2e2eccdf95406d8de55bd6ead364e4', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:57:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D6565313263306539666139323465643239323635373236333065363331613862, '');
INSERT INTO `sys_log` VALUES ('ab8d1e941d53453b99cd808b3e213167', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('abf9d51ebd1e4df3afc5a56b88016aa0', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:25:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('ac9a2f83bcd843d1a8f871c78255ebdb', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330383031343130363839313935332674696D653D31343838393038353039373536, '');
INSERT INTO `sys_log` VALUES ('acd57a1ca00e491591f398d4b2a63af2', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:47:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad70c9f51a2b4921aced4d4e0a17cb2f', '1', '订单管理-订单管理-当前订单', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('add5b5a0d08149cdb4944ca8c3a1101b', '1', '系统登录', '1', '2017-03-09 01:40:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae4662737a6e4efb99797f875566992b', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('aed88148cfde445d88fddb115ee649d1', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:58:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b05968f97e26460e8eac11f43a4b2190', '1', '仓库管理-存货管理-生产详情', '1', '2017-03-08 01:07:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listOld', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F35, '');
INSERT INTO `sys_log` VALUES ('b14e0583b15343a1b8ef397d1a8f8d53', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:11:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b1c784d77ccb41059c87d7d08b18eee0', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:21:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b1f11586a02c4511ab32e7352e6e41ea', '1', '会员管理-会员管理-商城会员', '1', '2017-03-08 01:18:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3130, '');
INSERT INTO `sys_log` VALUES ('b21a9e938eff4ab6a639d0e5233cc8a8', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:11:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b253151165bd448a805b370a95ee7b6d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:53:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D333026706172656E742E69643D6664313430373031636538623461386562393862383665376535366634316135266E616D653DE69FA5E79C8B267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A766965772672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E587BAE5BA9326697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('b259036438d64554941bf9020ccbd4c9', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 01:40:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b34a83e9394f4b9588b405b2a17556c4', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:04:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3b2fac1a8e64f2f8e7941b1e85a8d59', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:38:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b40048bb4e3a45f898078c911af3fe6c', '1', '生产管理-生产订单-新品生产', '1', '2017-03-09 01:40:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('b6797507090648ee82fdc2bcf1a1935b', '1', '系统设置-机构用户-区域管理', '1', '2017-03-07 01:12:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/area/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F35, '');
INSERT INTO `sys_log` VALUES ('b70e72e7319d47698f42c44cd7b610a5', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 02:13:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('b7766b2b9c2a435f831ee663dfe2851c', '1', '我的面板-个人办公-我的任务', '1', '2017-03-07 01:10:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('b7d5b484e5a34648b6063d21b211808c', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('b81db19169e7422badf728eded4c4852', '1', '订单管理-订单管理-当前订单', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:25:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('b88260b107ea4120addb2d962daf87aa', '1', '公共权限-查看流程图', '1', '2017-03-08 01:25:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/process/resource/read', 'GET', 0x70726F6344656649643D73686F7070696E673A313A3726726573547970653D696D616765, '');
INSERT INTO `sys_log` VALUES ('b8a430c8a35b46c086423343ad325a36', '1', '仓库管理-存货管理-添加生产', '1', '2017-03-07 01:11:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/formOld', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F35, '');
INSERT INTO `sys_log` VALUES ('b9a5a2d1421f44f4a2a6ba12f8320858', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('bb2f8d3b668d465aa650285bfb2c9dcf', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:38:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6362656366313465653730663435343362373932666465653361636533643534, '');
INSERT INTO `sys_log` VALUES ('bcdb64b13fc04fbe90a9316196b2458a', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bcf8821dc6dd47809a0168ac6e0c5cd8', '1', '生产管理-生产订单-新品生产', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 01:03:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bd4331b840f84218a2a8f67adb9ef151', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:08:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be08630f6a3f4796a37a5fd3db566ee9', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:08:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be5c69e68df6481b82da78032766a8ab', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('bf6bcf8a0a554980a203ff5b0a9b9c9f', '1', '我的面板-个人办公-我的任务', '13f6328d10574a73b0f480a3dccabcdd', '2017-03-06 01:11:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('bfcd4261748e4a8f8fba740606e973ab', '1', '订单管理-订单管理-当前订单', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 02:13:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('c0729601c51a43b1973d03c16892a5ff', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:55:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('c0a40284f75d4c33a51d81b760d1f10f', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:51:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D3063376439646262396363633462353461323136323165373661353135383461, '');
INSERT INTO `sys_log` VALUES ('c127b3a012bb4332a5047f935ad46aba', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:45:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('c2501038ee514378bcb1af99dd7e8c67', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:40:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3237, '');
INSERT INTO `sys_log` VALUES ('c4ad679da85f423db5e7f4daaaed7cd6', '1', '我的面板-个人办公-我的任务', '1', '2017-03-09 01:58:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('c58ce2f77aae4b6eb3fa3cf2b3dbd1e7', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('c6d73384355744b2b00b5130ea2c4b62', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('c76c0ecaf71249b58bec360a2db6e953', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:32:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('c7dc808ce58641bbb67c3bce88bb0703', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c82a3f213fbf448c91746339b45b645d', '1', '系统登录', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c8c0ce1628ae46519cf2221a75d8e8ab', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:39:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D6634353433376163346161383438333438316461646635366638313762623061, '');
INSERT INTO `sys_log` VALUES ('c975b4ae30064c92a5fa6977eea9b998', '1', '系统登录', '1', '2017-03-07 01:10:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9d23aea6b7947b59c36f5aba5557c69', '1', '生产管理-生产订单-新品生产', '1', '2017-03-08 01:24:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3233, '');
INSERT INTO `sys_log` VALUES ('ca118403746a4766bb1038b297e9515e', '1', '生产管理-生产订单-新品生产', '1', '2017-03-09 02:13:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3338, '');
INSERT INTO `sys_log` VALUES ('ca83ae2ddc5f4c93b7d17b0c32f22d5e', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:17:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ca9b3b5d703644a386b34a2dd1917d23', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:31:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335313138313435, '');
INSERT INTO `sys_log` VALUES ('caabf4ba3a574c9d865f26dc511a8b99', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:45:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cafbbf6a16f54d49b7558036e9dd9253', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:11:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3226747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('cc076eb2dee346cf9c8f421fb81144a5', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('cc73b552e4224346a528e87db7f8b472', '1', '订单管理-订单管理-当前订单', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:32:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('ccd15a2ece4c43a1acb968f4b0e5f05d', '1', '系统登录', '1', '2017-03-08 01:49:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cd3f6c955b9947f1bb3cd390224b285a', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:40:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('cd9d5f6899564e8c9ced05d47ba15241', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:50:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D3063376439646262396363633462353461323136323165373661353135383461, '');
INSERT INTO `sys_log` VALUES ('ce81e760b6704041aec7a26a0f90171a', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:18:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ce83337ac59c4994847e41f66d544c11', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:47:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('ce98bf9b3f2f44a68b9192f272404cab', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 02:10:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cf19dfe0320f46f2b38f53061b352568', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cf65085abd0a4949bb10270e6ace3f88', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:58:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6565313263306539666139323465643239323635373236333065363331613862, '');
INSERT INTO `sys_log` VALUES ('cfe83150922d45029f811b0523e5e0ee', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:45:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('d041caf2d5794241bbbb4f579efe8775', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-08 01:18:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3134, '');
INSERT INTO `sys_log` VALUES ('d1269463e07446e89b1fc60e0f05eef7', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:47:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1d6c5dc332e4fc9940c2652d4bc6706', '1', '会员管理-会员管理-商城会员-查看', '1', '2017-03-07 01:13:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1db9b116e404173ad04e4663037d412', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('d21166cf26c6415aa02adce7f64393c8', '1', '订单管理-订单管理-当前订单-编辑', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D37333726636F6D6D656E743D266F726465727349643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('d25e0747df4e42da8aab935c087a9474', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:49:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d27a04795c2f47f7b6e69fa4a1ad1eea', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d3a6c0fa4ca94ea09ba0d7467c92f39b', '1', '仓库管理-销售出库-当前出库', '1', '2017-03-09 02:11:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/send/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3239, '');
INSERT INTO `sys_log` VALUES ('d46a75f26e9a4f838a48ccb9252ed374', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:57:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d5152b6f05134dcd84140da9c98c265b', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:59:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('d5ac97c727c4449b8d6f767411262e0d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:52:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D66643134303730316365386234613865623938623836653765353666343161352669636F6E3D26736F72743D363026706172656E742E69643D3735366663653265663465363437346561396163343238643139303634623630266E616D653DE58E86E58FB2E587BAE5BA93267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F73656E644F6C642F6C69737426706172656E742E6E616D653DE99480E594AEE587BAE5BA9326697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('d5b7440cebec4784a266a8a9773580f1', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:47:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D6634353433376163346161383438333438316461646635366638313762623061266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE58E86E58FB2E5AEA1E6A0B826697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('d5e7a5fa13e843e4a90575745a46f0fc', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:49:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d5f28a5a0ee54ca7965f3df1c58b3b88', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330383031343130363839313935332674696D653D31343838393038353536313138, '');
INSERT INTO `sys_log` VALUES ('d5f8e28cfd834709b42cf3386365a8f8', '1', '我的面板-个人办公-我的任务', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('d618a114e68d406f8fb721848989d1ed', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:07:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('d63452760ea44fa6937a0b90a3bb0b13', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('d69eba5da628421ba99cd9939f0a25aa', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-08 01:25:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d81b37a316a5418484d81730364ce4cc', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 21:02:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d867c8d175384dcebc8fde5188f64d03', '2', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:45:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, 0x6F72672E6170616368652E6A61737065722E4A6173706572457863657074696F6E3A202F5745422D494E462F76696577732F6D6F64756C65732F6F72646572732F6F7264657273466F726D2E6A737020286C696E653A203235352C20636F6C756D6E3A2033292022247B27E98080E8B4A7E585A5E5BA9327206571207D2220636F6E7461696E7320696E76616C69642065787072657373696F6E2873293A206A617661782E656C2E454C457863657074696F6E3A204661696C656420746F207061727365207468652065787072657373696F6E205B247B27E98080E8B4A7E585A5E5BA9327206571207D5D0D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E44656661756C744572726F7248616E646C65722E6A73704572726F722844656661756C744572726F7248616E646C65722E6A6176613A3432290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6469737061746368284572726F72446973706174636865722E6A6176613A343433290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4572726F72446973706174636865722E6A73704572726F72284572726F72446973706174636865722E6A6176613A313939290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E636865636B586D6C417474726962757465732856616C696461746F722E6A6176613A31323233290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722456616C696461746556697369746F722E76697369742856616C696461746F722E6A6176613A383934290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524437573746F6D5461672E616363657074284E6F64652E6A6176613A31353339290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974426F6479284E6F64652E6A6176613A32343238290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F64652456697369746F722E7669736974284E6F64652E6A6176613A32343334290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F646524526F6F742E616363657074284E6F64652E6A6176613A343735290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E4E6F6465244E6F6465732E7669736974284E6F64652E6A6176613A32333736290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E56616C696461746F722E76616C69646174654578446972656374697665732856616C696461746F722E6A6176613A31373935290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E67656E65726174654A61766128436F6D70696C65722E6A6176613A323137290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333733290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333533290D0A096174206F72672E6170616368652E6A61737065722E636F6D70696C65722E436F6D70696C65722E636F6D70696C6528436F6D70696C65722E6A6176613A333430290D0A096174206F72672E6170616368652E6A61737065722E4A7370436F6D70696C6174696F6E436F6E746578742E636F6D70696C65284A7370436F6D70696C6174696F6E436F6E746578742E6A6176613A363436290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C6574577261707065722E73657276696365284A7370536572766C6574577261707065722E6A6176613A333537290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E736572766963654A737046696C65284A7370536572766C65742E6A6176613A333930290D0A096174206F72672E6170616368652E6A61737065722E736572766C65742E4A7370536572766C65742E73657276696365284A7370536572766C65742E6A6176613A333334290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E696E766F6B65284170706C69636174696F6E446973706174636865722E6A6176613A373439290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E70726F6365737352657175657374284170706C69636174696F6E446973706174636865722E6A6176613A343837290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E646F466F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A343132290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E446973706174636865722E666F7277617264284170706C69636174696F6E446973706174636865722E6A6176613A333339290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E496E7465726E616C5265736F75726365566965772E72656E6465724D65726765644F75747075744D6F64656C28496E7465726E616C5265736F75726365566965772E6A6176613A323039290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E766965772E4162737472616374566965772E72656E646572284162737472616374566965772E6A6176613A323637290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E72656E6465722844697370617463686572536572766C65742E6A6176613A31323231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E70726F636573734469737061746368526573756C742844697370617463686572536572766C65742E6A6176613A31303035290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F44697370617463682844697370617463686572536572766C65742E6A6176613A393532290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E44697370617463686572536572766C65742E646F536572766963652844697370617463686572536572766C65742E6A6176613A383730290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E70726F6365737352657175657374284672616D65776F726B536572766C65742E6A6176613A393631290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E646F476574284672616D65776F726B536572766C65742E6A6176613A383532290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A363231290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E736572766C65742E4672616D65776F726B536572766C65742E73657276696365284672616D65776F726B536572766C65742E6A6176613A383337290D0A096174206A617661782E736572766C65742E687474702E48747470536572766C65742E736572766963652848747470536572766C65742E6A6176613A373238290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A333035290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E616C69626162612E64727569642E737570706F72742E687474702E5765625374617446696C7465722E646F46696C746572285765625374617446696C7465722E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E6F627461696E436F6E74656E7428536974654D65736846696C7465722E6A6176613A313239290D0A09617420636F6D2E6F70656E73796D70686F6E792E736974656D6573682E7765626170702E536974654D65736846696C7465722E646F46696C74657228536974654D65736846696C7465722E6A6176613A3737290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3631290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E65786563757465436861696E2841647669636546696C7465722E6A6176613A313038290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E41647669636546696C7465722E646F46696C746572496E7465726E616C2841647669636546696C7465722E6A6176613A313337290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E50726F7869656446696C746572436861696E2E646F46696C7465722850726F7869656446696C746572436861696E2E6A6176613A3636290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E65786563757465436861696E284162737472616374536869726F46696C7465722E6A6176613A343439290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C74657224312E63616C6C284162737472616374536869726F46696C7465722E6A6176613A333635290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E646F43616C6C285375626A65637443616C6C61626C652E6A6176613A3930290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E5375626A65637443616C6C61626C652E63616C6C285375626A65637443616C6C61626C652E6A6176613A3833290D0A096174206F72672E6170616368652E736869726F2E7375626A6563742E737570706F72742E44656C65676174696E675375626A6563742E657865637574652844656C65676174696E675375626A6563742E6A6176613A333833290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4162737472616374536869726F46696C7465722E646F46696C746572496E7465726E616C284162737472616374536869726F46696C7465722E6A6176613A333632290D0A096174206F72672E6170616368652E736869726F2E7765622E736572766C65742E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313235290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E696E766F6B6544656C65676174652844656C65676174696E6746696C74657250726F78792E6A6176613A333434290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E44656C65676174696E6746696C74657250726F78792E646F46696C7465722844656C65676174696E6746696C74657250726F78792E6A6176613A323631290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E436861726163746572456E636F64696E6746696C7465722E646F46696C746572496E7465726E616C28436861726163746572456E636F64696E6746696C7465722E6A6176613A3838290D0A096174206F72672E737072696E676672616D65776F726B2E7765622E66696C7465722E4F6E63655065725265717565737446696C7465722E646F46696C746572284F6E63655065725265717565737446696C7465722E6A6176613A313037290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E696E7465726E616C446F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323433290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E4170706C69636174696F6E46696C746572436861696E2E646F46696C746572284170706C69636174696F6E46696C746572436861696E2E6A6176613A323130290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E646172645772617070657256616C76652E696E766F6B65285374616E646172645772617070657256616C76652E6A6176613A323232290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264436F6E7465787456616C76652E696E766F6B65285374616E64617264436F6E7465787456616C76652E6A6176613A313233290D0A096174206F72672E6170616368652E636174616C696E612E61757468656E74696361746F722E41757468656E74696361746F72426173652E696E766F6B652841757468656E74696361746F72426173652E6A6176613A343732290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264486F737456616C76652E696E766F6B65285374616E64617264486F737456616C76652E6A6176613A313731290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4572726F725265706F727456616C76652E696E766F6B65284572726F725265706F727456616C76652E6A6176613A3939290D0A096174206F72672E6170616368652E636174616C696E612E76616C7665732E4163636573734C6F6756616C76652E696E766F6B65284163636573734C6F6756616C76652E6A6176613A393533290D0A096174206F72672E6170616368652E636174616C696E612E636F72652E5374616E64617264456E67696E6556616C76652E696E766F6B65285374616E64617264456E67696E6556616C76652E6A6176613A313138290D0A096174206F72672E6170616368652E636174616C696E612E636F6E6E6563746F722E436F796F7465416461707465722E7365727669636528436F796F7465416461707465722E6A6176613A343038290D0A096174206F72672E6170616368652E636F796F74652E6874747031312E416273747261637448747470313150726F636573736F722E70726F6365737328416273747261637448747470313150726F636573736F722E6A6176613A31303038290D0A096174206F72672E6170616368652E636F796F74652E416273747261637450726F746F636F6C244162737472616374436F6E6E656374696F6E48616E646C65722E70726F6365737328416273747261637450726F746F636F6C2E6A6176613A353839290D0A096174206F72672E6170616368652E746F6D6361742E7574696C2E6E65742E417072456E64706F696E7424536F636B657450726F636573736F722E72756E28417072456E64706F696E742E6A6176613A31383532290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F722E72756E576F726B657228546872656164506F6F6C4578656375746F722E6A6176613A31313435290D0A096174206A6176612E7574696C2E636F6E63757272656E742E546872656164506F6F6C4578656375746F7224576F726B65722E72756E28546872656164506F6F6C4578656375746F722E6A6176613A363135290D0A096174206A6176612E6C616E672E5468726561642E72756E285468726561642E6A6176613A373434290D0A);
INSERT INTO `sys_log` VALUES ('d950ebda72bb46eb83841eadc51708d7', '1', '仓库管理-退货入库-当前退货', '1', '2017-03-09 02:11:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/back/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('d9a474a6f1534c98857125648708e0a4', '1', '系统登录', '1', '2017-03-08 01:24:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/404', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3232, '');
INSERT INTO `sys_log` VALUES ('d9ccfb431d10419db85f7f8da81e4359', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:53:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('da26cb5cd8eb47c3a6efc8211dd0cec8', '1', '系统登录', '1', '2017-03-09 01:44:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('daa426890f344d55aec31cd91b0c0fa4', '1', '仓库管理-销售出库-当前出库', '1', '2017-03-09 02:13:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/send/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3435, '');
INSERT INTO `sys_log` VALUES ('dad33f10fcbc40f1b7f74f820d4d1ff7', '1', '仓库管理-销售出库-当前出库', '1', '2017-03-09 02:03:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/send/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('db08160a03c343bdaa432117ed4725f3', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:51:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('db9c42601fd149f1919260f8a0c9ab5f', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dc13af69f1fd43149f0a3dce3d12eba5', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:42:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('dc1b874be5d3474f9523c965fc368069', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('dc6c52cbf44f48c0811385de89e89bee', '1', '我的面板-个人办公-我的任务', '1', '2017-03-06 19:52:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('dc82310e76bf4f91a745949488d7a5a4', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 01:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dc8541d035464734bbe9dd9b5cc765f6', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:42:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dcff2d8bb06e443a83a8f220bd68daf5', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:57:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x706172656E742E69643D6565313263306539666139323465643239323635373236333065363331613862, '');
INSERT INTO `sys_log` VALUES ('dd106ce363f04bc3a5ae9c5e4f90fab3', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:01:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('ddeab38bf60d4624ac2dda85bd4dfbd0', '1', '订单管理-订单管理-历史订单', '1', '2017-03-07 01:12:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/listOld', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3137, '');
INSERT INTO `sys_log` VALUES ('de9175eb0b694ad791ce9d6fb0af88e9', '1', '我的面板-个人办公-我的任务', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:25:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('dec3787cb8fd4068a5cd9c368733d3b6', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:21:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('defb7b5e2d2b443692b1dd59b9b77348', '1', '系统设置-机构用户-用户管理', '1', '2017-03-09 02:06:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3233, '');
INSERT INTO `sys_log` VALUES ('df336182f980427591b1f938faa4e5f3', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-07 01:12:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F38, '');
INSERT INTO `sys_log` VALUES ('df82d32071bb4feb8b5f59dc96671feb', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('dfc0e5655f794fd9a3e74f065365c248', '1', '我的面板-个人办公-我的任务', '1', '2017-03-09 01:40:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('e02d79136dec45bb9ddb06b2f6f49c19', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D3126676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('e083526d2db64afdb96178e9a2a5a395', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e0fb05ef51674a05b9ab73cfab465661', '1', '仓库管理-存货管理-生产详情', '1', '2017-03-07 01:10:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listOld', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F34, '');
INSERT INTO `sys_log` VALUES ('e1bc9e2e1bec45069f9df956e1a23ccd', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:32:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e2145ff6b2b947f4b4adbae8e30217d7', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-08 01:53:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e24707f30f264680afd636bbbb4c2393', '1', '我的面板-个人办公-我的任务', '1', '2017-03-08 01:07:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('e2ae87520ec44985a881267655035937', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:42:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e2c093ac3bb34ad3b18423e2fe245cbe', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:14:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3439, '');
INSERT INTO `sys_log` VALUES ('e3af4a0f5a7d43598c2ce6a88bd1576a', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e3c92b48097f4d459bf64642e1bde956', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:34:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D63626563663134656537306634353433623739326664656533616365336435342669636F6E3D26736F72743D333026706172656E742E69643D3231343263636332383537613439653639646339306333373465666262336465266E616D653DE5BD93E5898DE5AEA1E6A0B8267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F61756469742F6C69737426706172656E742E6E616D653DE99480E594AEE8AEA2E58D9526697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('e4198848b647459a9fd777765e770220', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D35, '');
INSERT INTO `sys_log` VALUES ('e44ec484649a4485a2da4ccfb5772d67', '1', '会员管理-会员管理-商城会员', '1', '2017-03-07 01:12:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/member/member', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3135, '');
INSERT INTO `sys_log` VALUES ('e45af283cee941b690f3e59796a7dca9', '1', '系统设置-机构用户-区域管理', '1', '2017-03-06 22:55:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/area/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F33, '');
INSERT INTO `sys_log` VALUES ('e4ec2349382f4a148233c0af0239c718', '1', '我的面板-个人办公-我的任务', '1', '2017-03-09 01:04:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('e6e4a8efaa154d2585e492a4e568fb74', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-08 01:42:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('e6ec64b4a59048d0ac55874073927c2d', '1', '系统设置-机构用户-用户管理', '1', '2017-03-08 01:10:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F36, '');
INSERT INTO `sys_log` VALUES ('e774a6e1f36d4eeebc828e8b61ff62cf', '1', '仓库管理-退货入库-历史退货', '1', '2017-03-09 02:07:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/backOld/list', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('e79ac285b6a34eaab12a8acf69912857', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:12:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e7c1fefc6d574933902f80228d36cc1b', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e7d41077b8854d17bdf580fa93242901', '1', '订单管理-订单管理-当前订单', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:19:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('e7ee235734a44812bb48be42224b2928', '1', '我的面板-个人办公-我的任务', '1', '2017-03-07 01:11:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('e82f68d2da9b463aa1691b265f023efb', '1', '系统登录', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:47:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('e83aadca725b42f788e2b09224700fed', '1', '系统设置-机构用户-用户管理', '1', '2017-03-07 01:12:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F33, '');
INSERT INTO `sys_log` VALUES ('e9525e6222024791a6b3a93317070993', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/getStock', 'GET', 0x676F6F64734E6F3D4741313730313238323233373234343338343137, '');
INSERT INTO `sys_log` VALUES ('eaab0a35e3954445a15bcbaf7440f0ad', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-08 01:10:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eb12dc23bac042209bdc3dfc0ddb7be1', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-09 01:04:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eb4646fa9576493eae641daa12056d5e', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 01:59:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D3026747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('ecc6598fe43b4415b100a94ec3d81484', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-09 01:58:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ed905cdae0084257b12e21a9e4da15cb', '1', '系统设置-机构用户-用户管理', '1', '2017-03-08 01:53:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/index', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3239, '');
INSERT INTO `sys_log` VALUES ('ed9a934b6e264a7788767694ed567591', '1', '订单管理-订单管理-当前订单-编辑', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D34323026723D3326636F6D6D656E743D266F726465727349643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('ee2c5f51cb2b47f8bafef2bbe15fef69', '1', '我的面板-个人办公-我的任务', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 19:52:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('ee3cb146946c4b04bdadf45bb0b5ed32', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:20:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D3526676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('eea3fb72edc54045bc330bbf578b0da4', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:17:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eeaa7f029f3f41d09c536c3f1f479f76', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:55:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D31393133313564353830323634626665386531343236396165346136326337342669636F6E3D26736F72743D333026706172656E742E69643D6430343765633936373930353438656562343333636165316232353633653236266E616D653DE5BD93E5898DE98080E8B4A7267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F6261636B2F6C69737426706172656E742E6E616D653DE98080E8B4A7E585A5E5BA9326697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('eeeeb079cae346d29d3b44c3ce1330a3', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-07 01:13:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D32, '');
INSERT INTO `sys_log` VALUES ('f038574157664eb1ac2b9d76d1af0ad2', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:18:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f0c93628488b47dd8ba7e39a95b8b3df', '1', '生产管理-生产订单-存货生产-查看', '1', '2017-03-08 01:50:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333038303134313036383931393533, '');
INSERT INTO `sys_log` VALUES ('f21939c18eb143e689b465cb16a3c5be', '1', '系统设置-系统设置-菜单管理', '1', '2017-03-07 01:12:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3134, '');
INSERT INTO `sys_log` VALUES ('f2dfc2dd57a0467b88f82bcd0bcfc89f', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 00:02:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('f43407354e1b4c978dd6511f7ee37efd', '1', '系统设置-系统设置-菜单管理-查看', '1', '2017-03-09 01:54:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/form', 'GET', 0x69643D3139313331356435383032363462666538653134323639616534613632633734, '');
INSERT INTO `sys_log` VALUES ('f44e9fea3dc14917933a11c79c5a563c', '1', '系统登录', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:37:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f4efe4e8bc9c4d8181cbae2c419320d9', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('f5bf5a9c71a44a35aaf1adc75fecc1aa', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:55:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D35, '');
INSERT INTO `sys_log` VALUES ('f6d64eeed23f423a886a606100fbb02e', '1', '系统设置-流程管理-流程管理', '1', '2017-03-08 01:53:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/act/process', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F3330, '');
INSERT INTO `sys_log` VALUES ('f6fb704f2b7a4fe688b1c25ee2b95511', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:17:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f72576ff6df142279cf302245bf3e66b', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f7b27025f98b4ad6bc41ffe0a68e8921', '1', '生产管理-生产订单-新品生产', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-07 01:03:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/product/productOrder/listNew', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('f7d82bf5ee6a45409d938926feb5a2e8', '1', '订单管理-订单管理-当前订单', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-08 01:41:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F31, '');
INSERT INTO `sys_log` VALUES ('f824f8cf56db4b11a98706183decc4f8', '1', '审核管理-销售订单-历史审核', '1', '2017-03-09 01:42:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/auditOld/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f9a3713e5b234d8997dfacd5b27b7e3f', '1', '我的面板-个人办公-我的任务', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 01:40:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/act/ready/todo/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F30, '');
INSERT INTO `sys_log` VALUES ('f9acc9454be44892b6b180f87f68e1a8', '1', '审核管理-销售订单-当前审核', '1', '2017-03-09 02:21:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/audit/list', 'POST', 0x69643D2670617953746174653D26666C61673D26747275654E616D653D266D656D6265722E6D656D6265724163636F756E743D26616464726573733D26706167654E6F3D31267061676553697A653D3330266F726465727353746174653D26676F6F647353746174653D, '');
INSERT INTO `sys_log` VALUES ('f9e7a59c945e4c8785dd30c304b47a07', '1', '系统设置-机构用户-用户管理-查看', '1', '2017-03-06 22:54:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/user/list', 'GET', 0x6F66666963652E69643D36, '');
INSERT INTO `sys_log` VALUES ('fa5bd7e223784f0c857cad91d6251e70', '1', '生产管理-生产订单-存货生产-查看', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031313831313836393834372674696D653D31343838373334333635383538, '');
INSERT INTO `sys_log` VALUES ('fa7287e7dd0d4860b984b5543adcb365', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 01:34:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F443137303330363031323530343939303336322674696D653D31343838373335323738373839, '');
INSERT INTO `sys_log` VALUES ('fac342a43e10465f9062586179ee32f6', '1', '系统设置-系统设置-角色管理', '1', '2017-03-07 01:12:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/role/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F37, '');
INSERT INTO `sys_log` VALUES ('fc05537524884fd1a2a949ba4129e2e4', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:39:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D2669636F6E3D26736F72743D363026706172656E742E69643D6362656366313465653730663435343362373932666465653361636533643534266E616D653DE7BC96E8BE91267461726765743D267065726D697373696F6E3D6F72646572733A6F72646572733A656469742672656D61726B733D26687265663D26706172656E742E6E616D653DE5BD93E5898DE5AEA1E6A0B826697353686F773D30, '');
INSERT INTO `sys_log` VALUES ('fc578a32b34548fb92cd687b0a833a19', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:36:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('fcd6e4ed9ca14f37b23b0105f4f4de5f', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:42:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fcf1338ec594476aac5050f8f127ee98', '1', '系统设置-机构用户-机构管理', '1', '2017-03-06 22:55:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/office/', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F32, '');
INSERT INTO `sys_log` VALUES ('fd0f241f59924d3fa72f8bc114237759', '1', '仓库管理-销售出库-当前出库', '1', '2017-03-09 02:18:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/send/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fd22d919d2c24257a364220978441b73', '1', '仓库管理-销售出库-当前出库', '1', '2017-03-09 02:03:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/send/list', 'GET', 0x7461625061676549643D6A65726963686F746162696672616D655F39, '');
INSERT INTO `sys_log` VALUES ('fd3d156957b6469586ec8c3576d23d33', '1', '系统设置-系统设置-菜单管理-修改', '1', '2017-03-09 01:58:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/sys/menu/save', 'POST', 0x69643D65653132633065396661393234656432393236353732363330653633316138622669636F6E3D26736F72743D363026706172656E742E69643D6430343765633936373930353438656562343333636165316232353633653236266E616D653DE58E86E58FB2E98080E8B4A7267461726765743D267065726D697373696F6E3D2672656D61726B733D26687265663D2F6F72646572732F6F72646572732F6261636B4F6C642F6C69737426706172656E742E6E616D653DE98080E8B4A7E585A5E5BA9326697353686F773D31, '');
INSERT INTO `sys_log` VALUES ('fd972989dcc44a69a7f9ae0c41811dba', '1', '生产管理-生产订单-存货生产-查看', 'f4b88dbb63574bb58b08638ab0344cf2', '2017-03-06 23:58:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('fdfaf2da60624413bab0e4bf515ccce3', '1', '订单管理-订单管理-当前订单-编辑', 'fe010bcc44e04ecc9af6bc351903dddf', '2017-03-06 01:19:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/doTask', 'POST', 0x7461736B49643D32353926636F6D6D656E743D26656E6F7567683D31266F726465727349643D4F44313730333036303131383131383639383437, '');
INSERT INTO `sys_log` VALUES ('ff5112b9cc1b485b8d86c15042ecd5f8', '1', '生产管理-生产订单-存货生产-查看', 'bf0ec85cb24545e5a97cd440a8ef0a2b', '2017-03-06 02:11:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36', '/losonkei/a/orders/orders/form', 'GET', 0x69643D4F44313730333036303132353034393930333632, '');
INSERT INTO `sys_log` VALUES ('ff70989c534042cc82c9f9498a4af21f', '1', '订单管理-订单管理-当前订单', '1', '2017-03-08 01:49:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ffad192f969e4380ae7a126a5939605f', '1', '仓库管理-销售出库-历史出库', '1', '2017-03-09 02:14:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', '/losonkei/a/orders/orders/sendOld/list', 'GET', '', '');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) COLLATE utf8_bin DEFAULT NULL COMMENT '链接',
  `target` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '图标',
  `is_show` char(1) COLLATE utf8_bin NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('05dfe36f7d764d8ba02032296838a7c4', '7f2cdf922f5c497bb2b6dfc7355945df', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,7f2cdf922f5c497bb2b6dfc7355945df,', '查看', '30', '', '', '', '0', 'goods:goodsAttr:view', '1', '2016-09-29 20:10:34', '1', '2016-09-29 20:10:34', '', '0');
INSERT INTO `sys_menu` VALUES ('081e3b9d51eb452db6938c5fdfe4d6d8', '40360aeae793427b840779907ee9534d', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,40360aeae793427b840779907ee9534d,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-05 22:04:39', '1', '2017-03-05 22:04:39', '', '0');
INSERT INTO `sys_menu` VALUES ('090649c76a304e93ba1b864dd97bf251', '65e1ed96163a46edaa4887aba0972fb1', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,', '当前订单', '30', '/orders/orders', '', '', '1', '', '1', '2017-02-19 15:40:25', '1', '2017-02-19 21:12:43', '', '0');
INSERT INTO `sys_menu` VALUES ('0c7d9dbb9ccc4b54a21621e76a51584a', '756fce2ef4e6474ea9ac428d19064b60', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,', '当前出库', '30', '/orders/orders/send/list', '', '', '1', '', '1', '2016-11-08 01:43:43', '1', '2017-03-09 01:51:03', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '60', '/sys/dict/', null, 'th-list', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', '970', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('134f0b3399224eafbab8c03932dd9b2e', 'e3af834983bc4704af0e93a94e095c99', '0,1,546691f43f7e49e2a62453a6eb58501c,e3af834983bc4704af0e93a94e095c99,', '编辑', '60', '', '', '', '0', 'product:productLog:edit', '1', '2016-12-07 20:52:38', '1', '2016-12-07 20:52:38', '', '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '50', '/sys/area/', null, 'th', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', '30', null, null, null, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', '40', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', '40', '/sys/office/', null, 'th-large', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', '30', null, null, null, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', '40', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('191315d580264bfe8e14269ae4a62c74', 'd047ec96790548eeb433cae1b2563e26', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,', '当前退货', '30', '/orders/orders/back/list', '', '', '1', '', '1', '2016-11-08 01:49:35', '1', '2017-03-09 01:55:49', '', '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', '900', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '30', '/sys/user/index', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', '30', null, null, null, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('2142ccc2857a49e69dc90c374efbb3de', 'aaf2d5a467a846d796b6a9262f53aa09', '0,1,aaf2d5a467a846d796b6a9262f53aa09,', '销售订单', '60', '', '', '', '1', '', '1', '2016-11-08 01:19:20', '1', '2016-11-08 01:19:20', '', '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', '40', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('222444eb4b3d4d8abf5faf8a4eac7f4d', '1', '0,1,', '生产管理', '120', '', '', '', '1', '', '1', '2016-11-08 01:03:12', '1', '2016-11-08 01:03:12', '', '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '官方首页', '30', 'http://jeesite.com', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('251204da940f4f96a3949e5b8a71d007', '1', '0,1,', '会员管理', '135', '', '', '', '1', '', '1', '2016-11-08 01:47:15', '1', '2016-11-08 01:47:15', '', '0');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '100', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '30', '/sys/user/info', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('29c0af9faba14e15a9d5a073196e4027', 'f62156a414fc435381e475d81618136b', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,f62156a414fc435381e475d81618136b,', '修改', '60', '', '', '', '0', 'product:productOrder:edit', '1', '2016-11-08 01:14:15', '1', '2016-11-24 22:05:08', '', '0');
INSERT INTO `sys_menu` VALUES ('2c3566401e994133b2378c44ea4ccd62', 'cbecf14ee70f4543b792fdee3ace3d54', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,cbecf14ee70f4543b792fdee3ace3d54,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-09 01:38:47', '1', '2017-03-09 01:38:47', '', '0');
INSERT INTO `sys_menu` VALUES ('2eafcbdbd4b74b139c4d3fbf8c37a8f5', '1', '0,1,', '仓库管理', '121', '', '', '', '1', '', '1', '2016-11-08 01:27:48', '1', '2016-11-24 22:05:32', '', '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', '980', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '40', '/sys/user/modifyPwd', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3161f642c74e4066921934c5329f8ada', '0c7d9dbb9ccc4b54a21621e76a51584a', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,0c7d9dbb9ccc4b54a21621e76a51584a,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:52:31', '1', '2017-03-09 01:52:31', '', '0');
INSERT INTO `sys_menu` VALUES ('3c38f62d07644131a8518ea552256a5b', 'd7331bcf3104424ab870caec2fb0f91e', '0,1,251204da940f4f96a3949e5b8a71d007,5b3aca0aebf1402b866504b36b42fb5d,d7331bcf3104424ab870caec2fb0f91e,', '账单', '90', '', '', '', '0', 'member:memberAccount:view,member:memberAccount:edit', '1', '2017-02-09 00:31:32', '1', '2017-02-09 00:31:32', '', '0');
INSERT INTO `sys_menu` VALUES ('3e8fbf25cc26497481664b3c88f60400', '090649c76a304e93ba1b864dd97bf251', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,090649c76a304e93ba1b864dd97bf251,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-02-19 15:43:29', '1', '2017-02-19 15:43:59', '', '0');
INSERT INTO `sys_menu` VALUES ('3ff5ac1106a04e268af7d9a30b396ee8', 'cd2f79a6477c404095fea33ecf9c7d67', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,cd2f79a6477c404095fea33ecf9c7d67,', '添加生产', '60', '/product/productOrder/formOld', '', '', '1', 'product:productOrder:viewOld,product:productOrder:edit,goods:goods:view', '1', '2016-11-08 01:39:05', '1', '2016-12-11 21:35:37', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '30', '/sys/menu/', null, 'list-alt', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('40360aeae793427b840779907ee9534d', '65e1ed96163a46edaa4887aba0972fb1', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,', '历史订单', '60', '/orders/orders/listOld', '', '', '1', '', '1', '2017-02-19 15:41:16', '1', '2017-02-19 21:40:20', '', '0');
INSERT INTO `sys_menu` VALUES ('405d1d21548a48b399e12266a70388be', '1', '0,1,', '订单管理', '111', '', '', '', '1', '', '1', '2016-11-08 01:26:34', '1', '2017-02-19 15:43:15', '', '0');
INSERT INTO `sys_menu` VALUES ('41f6695e68854e068a050aa28845517b', '0c7d9dbb9ccc4b54a21621e76a51584a', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,0c7d9dbb9ccc4b54a21621e76a51584a,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-09 01:51:37', '1', '2017-03-09 01:51:37', '', '0');
INSERT INTO `sys_menu` VALUES ('441d9b56dd4c41b4b163bce716aa7fe1', 'f45437ac4aa8483481dadf56f817bb0a', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,f45437ac4aa8483481dadf56f817bb0a,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-05 22:02:18', '1', '2017-03-09 01:46:48', '', '0');
INSERT INTO `sys_menu` VALUES ('4a3d3fc01918466c9923db22669e64f3', '40360aeae793427b840779907ee9534d', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,40360aeae793427b840779907ee9534d,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-05 22:04:19', '1', '2017-03-05 22:04:19', '', '0');
INSERT INTO `sys_menu` VALUES ('4cdbe14e09fa46258c3099f50e232cc6', 'ef96175815a04fdc9ddf03232de61148', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,', '商品规格', '90', '/goods/goodsSpecification', '', '', '1', '', '1', '2016-10-03 16:37:55', '1', '2016-10-03 16:37:55', '', '0');
INSERT INTO `sys_menu` VALUES ('4f4aa9a2be12432596420fbb1fe2fa89', '50317d52ec1a404ea79416a2283ce3f6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,50317d52ec1a404ea79416a2283ce3f6,', '文章查看', '90', '', '', '', '0', 'goods:goodsArticle:view', '1', '2017-03-05 00:52:19', '1', '2017-03-05 00:52:19', '', '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', '30', null, null, null, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('50317d52ec1a404ea79416a2283ce3f6', 'ef96175815a04fdc9ddf03232de61148', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,', '商品总览', '120', '/goods/goods', '', '', '1', '', '1', '2016-09-29 21:57:42', '1', '2016-10-03 15:51:12', '', '0');
INSERT INTO `sys_menu` VALUES ('53f2bfa1abc449bea454a09787ab158d', 'e3af834983bc4704af0e93a94e095c99', '0,1,546691f43f7e49e2a62453a6eb58501c,e3af834983bc4704af0e93a94e095c99,', '查看', '30', '', '', '', '0', 'product:productLog:view', '1', '2016-12-07 20:52:21', '1', '2016-12-07 20:52:21', '', '0');
INSERT INTO `sys_menu` VALUES ('546691f43f7e49e2a62453a6eb58501c', '1', '0,1,', '公共权限', '5030', '', '', '', '0', '', '1', '2016-12-07 20:50:59', '1', '2016-12-07 20:50:59', '', '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', '90', '/../static/ckfinder/ckfinder.html', null, 'folder-open', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', '30', null, null, null, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', '40', null, null, null, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', '50', null, null, null, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('5b3aca0aebf1402b866504b36b42fb5d', '251204da940f4f96a3949e5b8a71d007', '0,1,251204da940f4f96a3949e5b8a71d007,', '会员管理', '30', '', '', '', '1', '', '1', '2016-12-29 21:56:01', '1', '2016-12-29 21:56:01', '', '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('61cada1644a44ec19a09a7ec74939a42', 'a362f79f469c4aa49e7f355eab888304', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,a362f79f469c4aa49e7f355eab888304,', '查看', '30', '', '', '', '0', 'goods:goodsCategory:view', '1', '2016-09-28 20:52:32', '1', '2016-09-28 20:52:32', '', '0');
INSERT INTO `sys_menu` VALUES ('63', '27', '0,1,27,', '个人办公', '20', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2016-11-08 01:06:39', '', '0');
INSERT INTO `sys_menu` VALUES ('65e1ed96163a46edaa4887aba0972fb1', '405d1d21548a48b399e12266a70388be', '0,1,405d1d21548a48b399e12266a70388be,', '订单管理', '30', '', '', '', '1', '', '1', '2017-02-19 15:39:52', '1', '2017-02-19 15:39:52', '', '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', '985', null, null, null, '1', null, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('678182ac77e94cffbe034abb181a68d2', 'ccd14522070d470b9fcc5cce605f25cd', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,ccd14522070d470b9fcc5cce605f25cd,', '添加生产', '30', '/product/productOrder/formNew', '', '', '1', 'product:productOrder:viewNew,product:productOrder:edit,goods:goods:view', '1', '2016-11-08 01:09:09', '1', '2016-12-11 21:35:50', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', '30', '/sys/log', null, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('69', '2', '0,1,2,', '流程管理', '990', '', '', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2016-11-06 21:01:16', '', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '50', '/sys/role/', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,1,2,69,', '流程管理', '50', '/act/process', null, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', '90', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,1,2,69,', '模型管理', '100', '/act/model', null, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('7232cf59cb0f47eb9e83ab35a3dda29d', '4cdbe14e09fa46258c3099f50e232cc6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,4cdbe14e09fa46258c3099f50e232cc6,', '编辑', '60', '', '', '', '0', 'goods:goodsSpecification:edit', '1', '2016-10-03 16:38:55', '1', '2016-10-03 16:38:55', '', '0');
INSERT INTO `sys_menu` VALUES ('73', '63', '0,1,27,63,', '我的任务', '50', '/act/ready/todo/list', '', 'tasks', '1', '', '1', '2013-09-24 08:00:00', '1', '2016-12-13 20:08:26', '', '0');
INSERT INTO `sys_menu` VALUES ('756fce2ef4e6474ea9ac428d19064b60', '2eafcbdbd4b74b139c4d3fbf8c37a8f5', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,', '销售出库', '30', '', '', '', '1', '', '1', '2016-11-08 01:35:03', '1', '2016-11-08 01:35:03', '', '0');
INSERT INTO `sys_menu` VALUES ('77b8f95230f04569ba7f76ec4ee4f0be', '191315d580264bfe8e14269ae4a62c74', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,191315d580264bfe8e14269ae4a62c74,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:56:57', '1', '2017-03-09 01:57:47', '', '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', '5000', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('7f2cdf922f5c497bb2b6dfc7355945df', 'ef96175815a04fdc9ddf03232de61148', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,', '商品属性', '60', '/goods/goodsAttr', '', '', '1', '', '1', '2016-09-29 20:09:31', '1', '2016-09-29 20:09:31', '', '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', '50', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', '30', '/gen/genScheme', null, null, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('818ac90a847d4640be892b0661ee7175', 'bf62dfe1623f41dda3bdefadb8c820f5', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,ccd14522070d470b9fcc5cce605f25cd,bf62dfe1623f41dda3bdefadb8c820f5,', '查看', '30', '', '', '', '0', 'product:newGoodsSetting:view', '1', '2016-11-22 20:25:10', '1', '2016-11-22 20:27:52', '', '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', '20', '/gen/genTable', null, null, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('829a1516415f45acafe0b1287eed8b33', 'fd140701ce8b4a8eb98b86e7e56f41a5', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,fd140701ce8b4a8eb98b86e7e56f41a5,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-09 01:53:41', '1', '2017-03-09 01:53:41', '', '0');
INSERT INTO `sys_menu` VALUES ('8321aa6ece8642b3b8fe3f08b3797e96', 'cd2f79a6477c404095fea33ecf9c7d67', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,cd2f79a6477c404095fea33ecf9c7d67,', '生产详情', '150', '/product/productOrder/listOld', '', '', '1', 'product:productOrder:viewOld,product:productOrder:edit', '1', '2016-11-08 01:39:44', '1', '2016-12-11 21:10:14', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', '40', '/../druid', null, null, '1', null, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('84902f2d1c604476a67a1e6dc27b76a9', '7f2cdf922f5c497bb2b6dfc7355945df', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,7f2cdf922f5c497bb2b6dfc7355945df,', '编辑', '60', '', '', '', '0', 'goods:goodsAttr:edit', '1', '2016-09-29 20:11:11', '1', '2016-09-29 20:11:11', '', '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', '80', '/../static/map/map-city.html', null, null, '1', null, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('8ad5b3121f5c423886f8a92a2f32e22d', '50317d52ec1a404ea79416a2283ce3f6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,50317d52ec1a404ea79416a2283ce3f6,', '文章编辑', '120', '', '', '', '0', 'goods:goodsArticle:edit', '1', '2017-03-05 00:52:58', '1', '2017-03-05 00:52:58', '', '0');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('936a36a1da074758818828837bdb2777', 'cd2f79a6477c404095fea33ecf9c7d67', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,cd2f79a6477c404095fea33ecf9c7d67,', '存货详情', '30', '', '', '', '1', '', '1', '2016-11-08 01:38:40', '1', '2016-11-08 01:38:40', '', '0');
INSERT INTO `sys_menu` VALUES ('9388ab7cd8dd47c18dab443c74474210', 'f45437ac4aa8483481dadf56f817bb0a', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,f45437ac4aa8483481dadf56f817bb0a,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:47:26', '1', '2017-03-09 01:47:26', '', '0');
INSERT INTO `sys_menu` VALUES ('970c6dfcafcb48f1b81469a0ae735ecb', '50317d52ec1a404ea79416a2283ce3f6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,50317d52ec1a404ea79416a2283ce3f6,', '查看', '30', '', '', '', '0', 'goods:goods:view', '1', '2016-09-29 21:58:17', '1', '2016-09-29 21:58:17', '', '0');
INSERT INTO `sys_menu` VALUES ('99d19f4d5ac249738c079b82c6ffe5d9', '222444eb4b3d4d8abf5faf8a4eac7f4d', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,', '生产订单', '60', '', '', '', '1', '', '1', '2016-11-08 01:12:10', '1', '2016-11-08 01:12:10', '', '0');
INSERT INTO `sys_menu` VALUES ('9c2fa756b7c84e5d89241a8449493ce6', '99d19f4d5ac249738c079b82c6ffe5d9', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,', '存货生产', '60', '/product/productOrder/listOld', '', '', '1', '', '1', '2016-11-08 01:14:54', '1', '2016-12-11 20:29:22', '', '0');
INSERT INTO `sys_menu` VALUES ('9c3889025add4a32bc17aec3eedd57e1', '1', '0,1,', '销售分析', '140', '', '', '', '1', '', '1', '2016-11-08 01:26:40', '1', '2016-11-08 01:26:40', '', '0');
INSERT INTO `sys_menu` VALUES ('a362f79f469c4aa49e7f355eab888304', 'ef96175815a04fdc9ddf03232de61148', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,', '商品分类', '30', '/goods/goodsCategory', '', '', '1', '', '1', '2016-09-28 20:51:54', '1', '2016-09-28 21:01:29', '', '0');
INSERT INTO `sys_menu` VALUES ('aaf2d5a467a846d796b6a9262f53aa09', '1', '0,1,', '审核管理', '130', '', '', '', '1', '', '1', '2016-11-08 01:18:17', '1', '2016-11-08 01:18:17', '', '0');
INSERT INTO `sys_menu` VALUES ('ab63121494c24fc2b0d7566d5e55ad3d', 'c0fff5462dc842bfaefdfa76cb0e88af', '0,1,aaf2d5a467a846d796b6a9262f53aa09,c0fff5462dc842bfaefdfa76cb0e88af,', '新品生产', '30', '/product/productOrder/listNew', '', '', '1', 'product:productOrder:viewNew,product:productOrder:edit', '1', '2016-11-08 01:20:06', '1', '2016-12-11 21:20:30', '', '0');
INSERT INTO `sys_menu` VALUES ('ad92bbab22cd42e6b6db9bc14fb04c7d', '9c2fa756b7c84e5d89241a8449493ce6', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,9c2fa756b7c84e5d89241a8449493ce6,', '查看', '30', '', '', '', '0', 'product:productOrder:viewOld', '1', '2016-11-08 01:15:07', '1', '2016-12-11 20:30:28', '', '0');
INSERT INTO `sys_menu` VALUES ('b0f8b6ae25cd488e900399ebbddded7d', 'ee12c0e9fa924ed2926572630e631a8b', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,ee12c0e9fa924ed2926572630e631a8b,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:58:36', '1', '2017-03-09 01:58:36', '', '0');
INSERT INTO `sys_menu` VALUES ('b9d2a0b49a004a478015f207d4fb8ae6', 'a362f79f469c4aa49e7f355eab888304', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,a362f79f469c4aa49e7f355eab888304,', '编辑', '60', '', '', '', '0', 'goods:goodsCategory:edit', '1', '2016-09-28 20:52:49', '1', '2016-09-28 20:52:49', '', '0');
INSERT INTO `sys_menu` VALUES ('b9db4730a99741778880941b629b4119', 'ee12c0e9fa924ed2926572630e631a8b', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,ee12c0e9fa924ed2926572630e631a8b,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-09 01:57:31', '1', '2017-03-09 01:57:31', '', '0');
INSERT INTO `sys_menu` VALUES ('becacdc7551f433ab90d69f71c64fb20', '1', '0,1,', '商品管理', '110', '', '', '', '1', '', '1', '2016-09-28 20:50:35', '1', '2016-09-28 20:50:35', '', '0');
INSERT INTO `sys_menu` VALUES ('bf62dfe1623f41dda3bdefadb8c820f5', 'ccd14522070d470b9fcc5cce605f25cd', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,ccd14522070d470b9fcc5cce605f25cd,', '设置商品', '20', '/product/newGoodsSetting', '', '', '1', '', '1', '2016-11-22 20:23:56', '1', '2016-11-22 20:24:49', '', '0');
INSERT INTO `sys_menu` VALUES ('c090b5596f25489ca0146b3436cb1705', '50317d52ec1a404ea79416a2283ce3f6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,50317d52ec1a404ea79416a2283ce3f6,', '编辑', '60', '', '', '', '0', 'goods:goods:edit', '1', '2016-09-29 21:58:37', '1', '2016-09-29 21:58:37', '', '0');
INSERT INTO `sys_menu` VALUES ('c0fff5462dc842bfaefdfa76cb0e88af', 'aaf2d5a467a846d796b6a9262f53aa09', '0,1,aaf2d5a467a846d796b6a9262f53aa09,', '生产订单', '30', '', '', '', '1', '', '1', '2016-11-08 01:19:05', '1', '2016-11-08 01:19:05', '', '0');
INSERT INTO `sys_menu` VALUES ('c8e773be2fdb4c16a5d1be5bb2ce9eff', '9c2fa756b7c84e5d89241a8449493ce6', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,9c2fa756b7c84e5d89241a8449493ce6,', '修改', '60', '', '', '', '0', 'product:productOrder:edit', '1', '2016-11-08 01:15:15', '1', '2016-12-11 20:29:52', '', '0');
INSERT INTO `sys_menu` VALUES ('cbecf14ee70f4543b792fdee3ace3d54', '2142ccc2857a49e69dc90c374efbb3de', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,', '当前审核', '30', '/orders/orders/audit/list', '', '', '1', '', '1', '2016-11-08 01:21:14', '1', '2017-03-09 01:34:32', '', '0');
INSERT INTO `sys_menu` VALUES ('ccd14522070d470b9fcc5cce605f25cd', '222444eb4b3d4d8abf5faf8a4eac7f4d', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,', '商品研发', '30', '', '', '', '1', '', '1', '2016-11-08 01:08:15', '1', '2016-11-08 01:08:15', '', '0');
INSERT INTO `sys_menu` VALUES ('cceaf414425b4db8a33cfbec096d7a38', '546691f43f7e49e2a62453a6eb58501c', '0,1,546691f43f7e49e2a62453a6eb58501c,', '查看流程图', '60', '', '', '', '0', 'act:process:view', '1', '2017-02-26 00:37:14', '1', '2017-02-26 00:37:14', '', '0');
INSERT INTO `sys_menu` VALUES ('cd2f79a6477c404095fea33ecf9c7d67', '2eafcbdbd4b74b139c4d3fbf8c37a8f5', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,', '存货管理', '60', '', '', '', '1', '', '1', '2016-11-08 01:36:38', '1', '2016-11-08 01:36:38', '', '0');
INSERT INTO `sys_menu` VALUES ('ce9a33c89f744d9f8df20bde921e76df', '191315d580264bfe8e14269ae4a62c74', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,191315d580264bfe8e14269ae4a62c74,', '查看', '30', '', '', '', '0', 'orders:orders:view', '1', '2017-03-09 01:56:39', '1', '2017-03-09 01:56:39', '', '0');
INSERT INTO `sys_menu` VALUES ('d047ec96790548eeb433cae1b2563e26', '2eafcbdbd4b74b139c4d3fbf8c37a8f5', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,', '退货入库', '90', '', '', '', '1', '', '1', '2016-11-08 01:49:18', '1', '2016-11-08 01:49:18', '', '0');
INSERT INTO `sys_menu` VALUES ('d14017db70a74c528474d7b00856405d', 'bf62dfe1623f41dda3bdefadb8c820f5', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,ccd14522070d470b9fcc5cce605f25cd,bf62dfe1623f41dda3bdefadb8c820f5,', '编辑', '60', '', '', '', '0', 'product:newGoodsSetting:edit', '1', '2016-11-22 20:26:04', '1', '2016-11-22 20:26:04', '', '0');
INSERT INTO `sys_menu` VALUES ('d524be0343524a54a32b10fcd0ed7288', 'f62156a414fc435381e475d81618136b', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,f62156a414fc435381e475d81618136b,', '查看', '30', '', '', '', '0', 'product:productOrder:viewNew', '1', '2016-11-08 01:14:05', '1', '2016-11-24 22:06:29', '', '0');
INSERT INTO `sys_menu` VALUES ('d7331bcf3104424ab870caec2fb0f91e', '5b3aca0aebf1402b866504b36b42fb5d', '0,1,251204da940f4f96a3949e5b8a71d007,5b3aca0aebf1402b866504b36b42fb5d,', '商城会员', '30', '/member/member', '', '', '1', '', '1', '2016-12-29 21:58:20', '1', '2017-02-09 00:31:05', '', '0');
INSERT INTO `sys_menu` VALUES ('d98602044ae3472098aef4f16dd0da69', 'd7331bcf3104424ab870caec2fb0f91e', '0,1,251204da940f4f96a3949e5b8a71d007,5b3aca0aebf1402b866504b36b42fb5d,d7331bcf3104424ab870caec2fb0f91e,', '查看', '30', '', '', '', '0', 'member:member:view', '1', '2016-12-29 21:58:39', '1', '2016-12-29 21:58:39', '', '0');
INSERT INTO `sys_menu` VALUES ('dc6ffbcbb83a47eea7f4217a7c8ee20d', 'cbecf14ee70f4543b792fdee3ace3d54', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,cbecf14ee70f4543b792fdee3ace3d54,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:39:07', '1', '2017-03-09 01:39:07', '', '0');
INSERT INTO `sys_menu` VALUES ('e3af834983bc4704af0e93a94e095c99', '546691f43f7e49e2a62453a6eb58501c', '0,1,546691f43f7e49e2a62453a6eb58501c,', '生产日志', '30', '', '', '', '0', '', '1', '2016-12-07 20:51:50', '1', '2016-12-07 20:51:50', '', '0');
INSERT INTO `sys_menu` VALUES ('e857cfda735f4243890122bc9078e521', 'fd140701ce8b4a8eb98b86e7e56f41a5', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,fd140701ce8b4a8eb98b86e7e56f41a5,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-03-09 01:54:26', '1', '2017-03-09 01:54:26', '', '0');
INSERT INTO `sys_menu` VALUES ('e8734acf1ac74852990e5ecb3f1f65c9', 'd7331bcf3104424ab870caec2fb0f91e', '0,1,251204da940f4f96a3949e5b8a71d007,5b3aca0aebf1402b866504b36b42fb5d,d7331bcf3104424ab870caec2fb0f91e,', '编辑', '60', '', '', '', '0', 'member:member:edit', '1', '2016-12-29 21:59:01', '1', '2016-12-29 21:59:01', '', '0');
INSERT INTO `sys_menu` VALUES ('eb6153e81cad483cad646d95bc989425', 'c0fff5462dc842bfaefdfa76cb0e88af', '0,1,aaf2d5a467a846d796b6a9262f53aa09,c0fff5462dc842bfaefdfa76cb0e88af,', '存货生产', '60', '/product/productOrder/listOld', '', '', '1', 'product:productOrder:viewOld,product:productOrder:edit', '1', '2016-11-08 01:20:20', '1', '2016-12-11 21:21:21', '', '0');
INSERT INTO `sys_menu` VALUES ('ee12c0e9fa924ed2926572630e631a8b', 'd047ec96790548eeb433cae1b2563e26', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,d047ec96790548eeb433cae1b2563e26,', '历史退货', '60', '/orders/orders/backOld/list', '', '', '1', '', '1', '2016-11-08 01:49:47', '1', '2017-03-09 01:58:01', '', '0');
INSERT INTO `sys_menu` VALUES ('ef96175815a04fdc9ddf03232de61148', 'becacdc7551f433ab90d69f71c64fb20', '0,1,becacdc7551f433ab90d69f71c64fb20,', '商品设置', '30', '', '', '', '1', '', '1', '2016-09-28 21:01:16', '1', '2016-10-03 15:51:38', '', '0');
INSERT INTO `sys_menu` VALUES ('f09b8d18dded41eb8dac07a30033e1da', '090649c76a304e93ba1b864dd97bf251', '0,1,405d1d21548a48b399e12266a70388be,65e1ed96163a46edaa4887aba0972fb1,090649c76a304e93ba1b864dd97bf251,', '编辑', '60', '', '', '', '0', 'orders:orders:edit', '1', '2017-02-19 15:43:43', '1', '2017-02-19 15:43:43', '', '0');
INSERT INTO `sys_menu` VALUES ('f45437ac4aa8483481dadf56f817bb0a', '2142ccc2857a49e69dc90c374efbb3de', '0,1,aaf2d5a467a846d796b6a9262f53aa09,2142ccc2857a49e69dc90c374efbb3de,', '历史审核', '60', '/orders/orders/auditOld/list', '', '', '1', '', '1', '2016-11-08 01:21:28', '1', '2017-03-09 01:40:05', '', '0');
INSERT INTO `sys_menu` VALUES ('f62156a414fc435381e475d81618136b', '99d19f4d5ac249738c079b82c6ffe5d9', '0,1,222444eb4b3d4d8abf5faf8a4eac7f4d,99d19f4d5ac249738c079b82c6ffe5d9,', '新品生产', '30', '/product/productOrder/listNew', '', '', '1', '', '1', '2016-11-08 01:13:56', '1', '2016-12-11 20:28:47', '', '0');
INSERT INTO `sys_menu` VALUES ('f632241771e74029a2a89b5b66f98933', '4cdbe14e09fa46258c3099f50e232cc6', '0,1,becacdc7551f433ab90d69f71c64fb20,ef96175815a04fdc9ddf03232de61148,4cdbe14e09fa46258c3099f50e232cc6,', '查看', '30', '', '', '', '0', 'goods:goodsSpecification:view', '1', '2016-10-03 16:38:38', '1', '2016-10-03 16:38:38', '', '0');
INSERT INTO `sys_menu` VALUES ('fd140701ce8b4a8eb98b86e7e56f41a5', '756fce2ef4e6474ea9ac428d19064b60', '0,1,2eafcbdbd4b74b139c4d3fbf8c37a8f5,756fce2ef4e6474ea9ac428d19064b60,', '历史出库', '60', '/orders/orders/sendOld/list', '', '', '1', '', '1', '2016-11-08 01:43:52', '1', '2017-03-09 01:52:53', '', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属区域',
  `code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '区域编码',
  `type` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `grade` char(1) COLLATE utf8_bin NOT NULL COMMENT '机构等级',
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '传真',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '罗信记总公司', '10', '2', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-28 23:51:42', '', '0');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', '10', '9d3f2b3321aa423eb04cbbbd99ebadb2', '100001', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-29 00:49:33', '', '0');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '销售部', '20', '9d3f2b3321aa423eb04cbbbd99ebadb2', '100002', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-29 00:48:56', '', '0');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '仓库部', '30', '9d3f2b3321aa423eb04cbbbd99ebadb2', '100003', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-29 00:49:05', '', '0');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '生产部', '40', '9d3f2b3321aa423eb04cbbbd99ebadb2', '100004', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-29 00:49:14', '', '0');
INSERT INTO `sys_office` VALUES ('6', '1', '0,1,', '审核部', '50', '9d3f2b3321aa423eb04cbbbd99ebadb2', '100005', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2016-09-29 00:49:26', '', '0');
INSERT INTO `sys_office` VALUES ('c612040d8dd34d739831949d1e9f02b6', '1', '0,1,', '系统管理员', '30', '3', '100000', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2016-09-29 00:19:49', '1', '2016-09-29 00:49:44', '', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `office_id` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `enname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', 'c612040d8dd34d739831949d1e9f02b6', '系统管理员', 'role_admin', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2016-12-18 20:09:58', '', '0');
INSERT INTO `sys_role` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '4', '仓库部', 'role_store', 'assignment', '5', '1', '1', '1', '2016-09-29 00:31:22', '1', '2017-03-05 22:00:39', '', '0');
INSERT INTO `sys_role` VALUES ('483f568739c7475483a18f4c9355b562', '3', '销售部', 'role_sale', 'assignment', '5', '1', '1', '1', '2016-09-29 00:30:32', '1', '2017-03-05 22:05:32', '', '0');
INSERT INTO `sys_role` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '6', '审核部', 'role_audit', 'assignment', '5', '1', '1', '1', '2016-09-29 00:32:46', '1', '2017-03-05 22:07:03', '', '0');
INSERT INTO `sys_role` VALUES ('8c0dd76c83584865995838ce96a71afa', '2', '公司领导', 'role_manager', 'assignment', '1', '1', '1', '1', '2016-09-29 00:26:25', '1', '2016-12-18 20:10:26', '', '0');
INSERT INTO `sys_role` VALUES ('e00557398ce64b63a810d43aad97fbc6', '5', '生产部', 'role_product', 'assignment', '5', '1', '1', '1', '2016-09-29 00:31:50', '1', '2017-03-05 22:05:59', '', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '090649c76a304e93ba1b864dd97bf251');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '0c7d9dbb9ccc4b54a21621e76a51584a');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '1');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '134f0b3399224eafbab8c03932dd9b2e');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '191315d580264bfe8e14269ae4a62c74');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '27');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '28');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '29');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '2eafcbdbd4b74b139c4d3fbf8c37a8f5');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '30');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '3e8fbf25cc26497481664b3c88f60400');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '3ff5ac1106a04e268af7d9a30b396ee8');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '40360aeae793427b840779907ee9534d');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '405d1d21548a48b399e12266a70388be');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '53f2bfa1abc449bea454a09787ab158d');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '546691f43f7e49e2a62453a6eb58501c');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '56');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '57');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '58');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '59');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '63');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '65e1ed96163a46edaa4887aba0972fb1');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '71');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '73');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '756fce2ef4e6474ea9ac428d19064b60');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '8321aa6ece8642b3b8fe3f08b3797e96');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '936a36a1da074758818828837bdb2777');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'cceaf414425b4db8a33cfbec096d7a38');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'cd2f79a6477c404095fea33ecf9c7d67');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'd047ec96790548eeb433cae1b2563e26');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'e3af834983bc4704af0e93a94e095c99');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'ee12c0e9fa924ed2926572630e631a8b');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'f09b8d18dded41eb8dac07a30033e1da');
INSERT INTO `sys_role_menu` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'fd140701ce8b4a8eb98b86e7e56f41a5');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '05dfe36f7d764d8ba02032296838a7c4');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '090649c76a304e93ba1b864dd97bf251');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '1');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '251204da940f4f96a3949e5b8a71d007');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '27');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '28');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '29');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '30');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '3c38f62d07644131a8518ea552256a5b');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '3e8fbf25cc26497481664b3c88f60400');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '40360aeae793427b840779907ee9534d');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '405d1d21548a48b399e12266a70388be');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '4cdbe14e09fa46258c3099f50e232cc6');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '50317d52ec1a404ea79416a2283ce3f6');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '546691f43f7e49e2a62453a6eb58501c');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '5b3aca0aebf1402b866504b36b42fb5d');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '61cada1644a44ec19a09a7ec74939a42');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '63');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '65e1ed96163a46edaa4887aba0972fb1');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '73');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '7f2cdf922f5c497bb2b6dfc7355945df');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', '970c6dfcafcb48f1b81469a0ae735ecb');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'a362f79f469c4aa49e7f355eab888304');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'becacdc7551f433ab90d69f71c64fb20');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'cceaf414425b4db8a33cfbec096d7a38');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'd7331bcf3104424ab870caec2fb0f91e');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'd98602044ae3472098aef4f16dd0da69');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'e8734acf1ac74852990e5ecb3f1f65c9');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'ef96175815a04fdc9ddf03232de61148');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'f09b8d18dded41eb8dac07a30033e1da');
INSERT INTO `sys_role_menu` VALUES ('483f568739c7475483a18f4c9355b562', 'f632241771e74029a2a89b5b66f98933');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '081e3b9d51eb452db6938c5fdfe4d6d8');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '090649c76a304e93ba1b864dd97bf251');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '1');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '134f0b3399224eafbab8c03932dd9b2e');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '2142ccc2857a49e69dc90c374efbb3de');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '27');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '28');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '29');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '30');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '3e8fbf25cc26497481664b3c88f60400');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '40360aeae793427b840779907ee9534d');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '405d1d21548a48b399e12266a70388be');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '4a3d3fc01918466c9923db22669e64f3');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '53f2bfa1abc449bea454a09787ab158d');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '546691f43f7e49e2a62453a6eb58501c');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '56');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '57');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '58');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '59');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '63');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '65e1ed96163a46edaa4887aba0972fb1');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '71');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', '73');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'aaf2d5a467a846d796b6a9262f53aa09');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'ab63121494c24fc2b0d7566d5e55ad3d');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'c0fff5462dc842bfaefdfa76cb0e88af');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'cbecf14ee70f4543b792fdee3ace3d54');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'cceaf414425b4db8a33cfbec096d7a38');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'e3af834983bc4704af0e93a94e095c99');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'eb6153e81cad483cad646d95bc989425');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'f09b8d18dded41eb8dac07a30033e1da');
INSERT INTO `sys_role_menu` VALUES ('4ee27863495f4910ae1d3c543cbfe449', 'f45437ac4aa8483481dadf56f817bb0a');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '05dfe36f7d764d8ba02032296838a7c4');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '0c7d9dbb9ccc4b54a21621e76a51584a');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '1');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '134f0b3399224eafbab8c03932dd9b2e');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '191315d580264bfe8e14269ae4a62c74');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '2142ccc2857a49e69dc90c374efbb3de');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '222444eb4b3d4d8abf5faf8a4eac7f4d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '251204da940f4f96a3949e5b8a71d007');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '27');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '28');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '29');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '29c0af9faba14e15a9d5a073196e4027');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '2eafcbdbd4b74b139c4d3fbf8c37a8f5');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '30');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '3ff5ac1106a04e268af7d9a30b396ee8');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '405d1d21548a48b399e12266a70388be');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '4cdbe14e09fa46258c3099f50e232cc6');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '50317d52ec1a404ea79416a2283ce3f6');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '53f2bfa1abc449bea454a09787ab158d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '546691f43f7e49e2a62453a6eb58501c');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '56');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '57');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '58');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '59');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '61cada1644a44ec19a09a7ec74939a42');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '63');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '678182ac77e94cffbe034abb181a68d2');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '71');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '7232cf59cb0f47eb9e83ab35a3dda29d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '73');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '756fce2ef4e6474ea9ac428d19064b60');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '7f2cdf922f5c497bb2b6dfc7355945df');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '818ac90a847d4640be892b0661ee7175');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '8321aa6ece8642b3b8fe3f08b3797e96');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '84902f2d1c604476a67a1e6dc27b76a9');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '936a36a1da074758818828837bdb2777');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '970c6dfcafcb48f1b81469a0ae735ecb');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '99d19f4d5ac249738c079b82c6ffe5d9');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '9c2fa756b7c84e5d89241a8449493ce6');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', '9c3889025add4a32bc17aec3eedd57e1');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'a362f79f469c4aa49e7f355eab888304');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'aaf2d5a467a846d796b6a9262f53aa09');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'ab63121494c24fc2b0d7566d5e55ad3d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'ad92bbab22cd42e6b6db9bc14fb04c7d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'b9d2a0b49a004a478015f207d4fb8ae6');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'becacdc7551f433ab90d69f71c64fb20');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'bf62dfe1623f41dda3bdefadb8c820f5');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'c090b5596f25489ca0146b3436cb1705');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'c0fff5462dc842bfaefdfa76cb0e88af');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'c8e773be2fdb4c16a5d1be5bb2ce9eff');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'cbecf14ee70f4543b792fdee3ace3d54');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'ccd14522070d470b9fcc5cce605f25cd');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'cd2f79a6477c404095fea33ecf9c7d67');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'd047ec96790548eeb433cae1b2563e26');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'd14017db70a74c528474d7b00856405d');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'd524be0343524a54a32b10fcd0ed7288');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'e3af834983bc4704af0e93a94e095c99');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'eb6153e81cad483cad646d95bc989425');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'ee12c0e9fa924ed2926572630e631a8b');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'ef96175815a04fdc9ddf03232de61148');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'f45437ac4aa8483481dadf56f817bb0a');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'f62156a414fc435381e475d81618136b');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'f632241771e74029a2a89b5b66f98933');
INSERT INTO `sys_role_menu` VALUES ('8c0dd76c83584865995838ce96a71afa', 'fd140701ce8b4a8eb98b86e7e56f41a5');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '1');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '134f0b3399224eafbab8c03932dd9b2e');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '222444eb4b3d4d8abf5faf8a4eac7f4d');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '27');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '28');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '29');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '29c0af9faba14e15a9d5a073196e4027');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '30');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '53f2bfa1abc449bea454a09787ab158d');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '546691f43f7e49e2a62453a6eb58501c');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '56');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '57');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '58');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '59');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '63');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '71');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '73');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '99d19f4d5ac249738c079b82c6ffe5d9');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', '9c2fa756b7c84e5d89241a8449493ce6');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'ad92bbab22cd42e6b6db9bc14fb04c7d');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'c8e773be2fdb4c16a5d1be5bb2ce9eff');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'cceaf414425b4db8a33cfbec096d7a38');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'd524be0343524a54a32b10fcd0ed7288');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'e3af834983bc4704af0e93a94e095c99');
INSERT INTO `sys_role_menu` VALUES ('e00557398ce64b63a810d43aad97fbc6', 'f62156a414fc435381e475d81618136b');

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '1');
INSERT INTO `sys_role_office` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '2');
INSERT INTO `sys_role_office` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '5');
INSERT INTO `sys_role_office` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', '6');
INSERT INTO `sys_role_office` VALUES ('14d91f09aa9f45bfba23bacd905d95c0', 'c612040d8dd34d739831949d1e9f02b6');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '编号',
  `company_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '登录名',
  `password` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `no` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '工号',
  `name` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '手机',
  `user_type` char(1) COLLATE utf8_bin DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', 'c612040d8dd34d739831949d1e9f02b6', 'admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0001', 'zhangjunyan_admin', '', '', '', '', '', '127.0.0.1', '2017-03-09 02:13:38', '1', '1', '2013-05-27 08:00:00', '1', '2016-11-13 07:42:28', '最高管理员', '0');
INSERT INTO `sys_user` VALUES ('13f6328d10574a73b0f480a3dccabcdd', '1', '6', 'audit2', '1a4b2e7b083fe13076fb3e9aac530c3e5abc1fec1c04eca4c2ad87a8', '00072', 'zjy_audit2', '', '', '', '', '', '127.0.0.1', '2017-03-06 01:11:33', '1', '1', '2016-11-27 19:52:11', '1', '2016-11-27 20:02:19', '', '0');
INSERT INTO `sys_user` VALUES ('47fe0a8392c9415cac41a2b878eaa2a7', '1', '5', 'product2', '2911176273de7ba1ada5560d29b027a933896e67017fbda50dc60b2e', '00062', 'zjy_product2', '', '', '', '', '', '127.0.0.1', '2016-12-11 21:48:12', '1', '1', '2016-11-27 19:51:17', '1', '2016-11-27 20:02:06', '', '0');
INSERT INTO `sys_user` VALUES ('9d6e77cf644043da9bdccf9f934cfe87', '1', '2', 'manager', 'db71265778a7fbde859e4a2520e73dd6b6b9cb7583d7c0ecc7ca9bf4', '0002', 'zjy_manager', '', '', '', '', '', '127.0.0.1', '2017-02-27 00:37:49', '1', '1', '2016-09-29 00:35:16', '1', '2017-02-27 00:22:36', '', '0');
INSERT INTO `sys_user` VALUES ('ab0b959ba5be4e2fa037865e6350a553', '1', '2', 'manager2', 'c4fad63c329d292e9612a630336840d9a46e6fbf1b4dd7998c1c474a', '00022', 'zjy_manager2', '', '', '', '', '', null, null, '1', '1', '2016-11-27 19:49:36', '1', '2016-11-27 20:01:58', '', '0');
INSERT INTO `sys_user` VALUES ('bf0ec85cb24545e5a97cd440a8ef0a2b', '1', '4', 'store', '9e7134fa9a5b07e45b2071d10f7173370c513975f88ec7660b63d5d6', '0005', 'zjy_store', '', '', '', '', '', '127.0.0.1', '2017-03-08 01:42:24', '1', '1', '2016-09-29 00:37:11', '1', '2016-11-27 17:45:56', '', '0');
INSERT INTO `sys_user` VALUES ('f4b88dbb63574bb58b08638ab0344cf2', '1', '6', 'audit', '6da15d5eafb5a9ff73fc28b23f4ad0c1a51c7b08bbd7378edb51e8d6', '0007', 'zjy_audit', '', '', '', '', '', '127.0.0.1', '2017-03-07 01:03:42', '1', '1', '2016-09-29 00:39:01', '1', '2016-11-27 17:46:13', '', '0');
INSERT INTO `sys_user` VALUES ('f801b18217cb4d6c9ee665e6d7024e26', '1', '5', 'product', '33a1011c2028b3bc685174403d393164bada35d581c83d46de261ccd', '0006', 'zjy_product', '', '', '', '', '', '0:0:0:0:0:0:0:1', '2017-02-27 21:26:25', '1', '1', '2016-09-29 00:38:33', '1', '2016-11-27 17:46:06', '', '0');
INSERT INTO `sys_user` VALUES ('fe010bcc44e04ecc9af6bc351903dddf', '1', '3', 'sale', '068cecf98bcfef9c442dc58d8902bb55c0b785f2a605c6380697edd1', '0003', 'zjy_sale', '', '', '', '', '', '127.0.0.1', '2017-03-08 01:41:43', '1', '1', '2016-09-29 00:36:14', '1', '2016-11-27 17:45:47', '', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('13f6328d10574a73b0f480a3dccabcdd', '4ee27863495f4910ae1d3c543cbfe449');
INSERT INTO `sys_user_role` VALUES ('47fe0a8392c9415cac41a2b878eaa2a7', 'e00557398ce64b63a810d43aad97fbc6');
INSERT INTO `sys_user_role` VALUES ('9d6e77cf644043da9bdccf9f934cfe87', '8c0dd76c83584865995838ce96a71afa');
INSERT INTO `sys_user_role` VALUES ('ab0b959ba5be4e2fa037865e6350a553', '8c0dd76c83584865995838ce96a71afa');
INSERT INTO `sys_user_role` VALUES ('bf0ec85cb24545e5a97cd440a8ef0a2b', '14d91f09aa9f45bfba23bacd905d95c0');
INSERT INTO `sys_user_role` VALUES ('f4b88dbb63574bb58b08638ab0344cf2', '4ee27863495f4910ae1d3c543cbfe449');
INSERT INTO `sys_user_role` VALUES ('f801b18217cb4d6c9ee665e6d7024e26', 'e00557398ce64b63a810d43aad97fbc6');
INSERT INTO `sys_user_role` VALUES ('fe010bcc44e04ecc9af6bc351903dddf', '483f568739c7475483a18f4c9355b562');
